// CONSTANTS
#define NO_BINS 1
#define NO_USERS 1

// FORMULAS
// Insert the LTL formulas here
// ltl door1 { ... }

// DATATYPES
mtype:comp = { OuterDoor, LockOuterDoor, TrapDoor }
mtype:pos = { closed, open };
mtype:ram_pos = { idle, compress };
mtype:truck_pos = { arrived, start_emptying, emptied };

// Datatype to store information on the trash bin
typedef bin_t {
	mtype:pos out_door;
	mtype:pos lock_out_door;
	mtype:pos trap_door;
	mtype:ram_pos ram;
	byte trash_in_outer_door;
	byte trash_on_trap_door;
	byte trash_compressed;
	byte trash_uncompressed;
	bool full_capacity;
	bool trap_destroyed;
}

// VARIABLES
bin_t bin_status;
byte max_capacity;
bool has_trash;

// CHANNELS
chan change_bin = [1] of { mtype:comp, mtype:pos };
chan bin_changed = [0] of { mtype:comp, bool };
chan user_closed_outer_door = [0] of { bool };
chan weigh_trash = [0] of { bool };
chan trash_weighted = [0] of { byte };
chan change_ram = [0] of { mtype:ram_pos };
chan ram_changed = [0] of { bool };
chan scan_card_user = [NO_USERS] of { byte };
chan can_deposit_trash = [NO_USERS] of { byte, bool };
chan check_user = [0] of { byte };
chan user_valid = [0] of { byte, bool };
chan request_truck = [NO_BINS] of { byte };
chan change_truck = [1] of { mtype:truck_pos, byte };
chan empty_bin = [0] of { bool };
chan bin_emptied = [0] of { bool };

// PROCESSES

// Trash bin process type
proctype bin(byte bin_id) {
	do
	:: change_bin?OuterDoor, closed ->
		if
		:: bin_status.out_door == open ->
			printf("Bin: Closing outer door.\n");
			bin_status.out_door = closed;
			bin_changed!OuterDoor, true;
			user_closed_outer_door!true;
		fi
	:: change_bin?OuterDoor, open ->
		if
		:: bin_status.out_door == closed && bin_status.lock_out_door == open ->
			printf("Bin: Opening outer door.\n");
			bin_status.out_door = open;
			bin_changed!OuterDoor, true;
		fi
	:: weigh_trash?true ->
		printf("Bin: Weighing trash on trap door.\n");
		if
		:: bin_status.trap_door == closed ->
			trash_weighted!bin_status.trash_on_trap_door;
		fi
	od
}

// Server process type
proctype server() {
	byte user_id;
	do
	:: check_user?user_id ->
		printf("Server: Checking user_id: %d\n", user_id);
		if
		:: user_id != 42 ->
			user_valid!user_id, true;
			printf("Server: User_id %d is valid.\n", user_id);
		:: user_id == 42 ->
			user_valid!user_id, false;
			printf("Server: User_id %d is invalid.\n", user_id);
		fi
	od
}

// Truck process type
proctype truck() {
	byte bin_id;
	do
	:: request_truck?bin_id ->
		printf("Truck: Received request to empty bin_id: %d\n", bin_id);
		change_truck!arrived, bin_id;
	:: change_truck?start_emptying, bin_id ->
		printf("Truck: Starting to empty bin_id: %d.\n", bin_id);
		empty_bin!true;
	:: bin_emptied?true ->
		printf("Truck: Finished emptying bin_id: %d.\n", bin_id);
		change_truck!emptied, bin_id;
	od
}

// User process type
proctype user(byte user_id; byte trash_size) {
	do
	:: !has_trash ->
		has_trash = true;
	:: has_trash ->
		printf("User: Scanning card with user_id: %d\n", user_id);
		scan_card_user!user_id;
		if
		:: can_deposit_trash?user_id, true ->
			printf("User: Allowed to deposit trash. Opening outer door.\n");
			bin_changed?LockOuterDoor, true;
			change_bin!OuterDoor, open;
			bin_changed?OuterDoor, true;

			if
			:: bin_status.trash_in_outer_door == 0 ->
				printf("User: Depositing trash of size: %d.\n", trash_size);
				bin_status.trash_in_outer_door = trash_size;
				has_trash = false;
			:: bin_status.trash_in_outer_door > 0 ->
				printf("User: Trash in outer door, cannot deposit more trash.\n");
				skip;
			fi

			printf("User: Closing outer door after trash deposit.\n");
			change_bin!OuterDoor, closed;
			bin_changed?OuterDoor, true;
		:: can_deposit_trash?user_id, false ->
			printf("User: Deposit denied, bin is full.\n");
			skip;
		fi
	od
}

// Main control process type
proctype main_control() {
	byte user_id;
	byte bin_id;

	do
	:: scan_card_user?user_id ->
		printf("Main Control: Received user card scan, user_id: %d\n", user_id);
		check_user!user_id;
		user_valid?user_id, true;  // Wait for the server to validate the user
		printf("Main Control: User_id %d is valid, checking bin capacity.\n", user_id);
		if
		:: bin_status.full_capacity == false ->
			printf("Main Control: Bin not full, allowing trash deposit for user_id: %d\n", user_id);
			can_deposit_trash!user_id, true;
			change_bin!LockOuterDoor, open;
		:: else ->
			printf("Main Control: Bin is full, denying trash deposit for user_id: %d\n", user_id);
			can_deposit_trash!user_id, false;
		fi

	// Call the Truck if the bin is full
	:: bin_status.trash_uncompressed == max_capacity ->
		printf("Main Control: Bin reached max capacity, requesting truck.\n");
		bin_status.full_capacity = true;
		request_truck!bin_id;

	:: change_truck?arrived, bin_id ->
		printf("Main Control: Truck arrived for bin_id: %d, starting emptying process.\n", bin_id);
		change_truck!start_emptying, bin_id;

	:: change_truck?emptied, bin_id ->
		printf("Main Control: Truck finished emptying bin_id: %d.\n", bin_id);
		bin_status.full_capacity = false;
		change_truck!emptied, bin_id;

	:: user_closed_outer_door?true ->
		printf("Main Control: User closed the outer door, starting trash weighing process.\n");
		change_bin!LockOuterDoor, closed;
		weigh_trash!true;

	:: trash_weighted?bin_status.trash_on_trap_door ->
		printf("Main Control: Trash weighing completed, weight: %d. Opening trap door and compressing trash.\n", bin_status.trash_on_trap_door);
		atomic {
			change_bin!TrapDoor, open;
			bin_changed?TrapDoor, true;
			change_ram!compress;
			ram_changed?true;
			change_ram!idle;
			ram_changed?true;
			change_bin!LockOuterDoor, closed;
			bin_changed?LockOuterDoor, true;
		}
	od
}

// Initial process to instantiate all other processes
init {
	byte proc;
	atomic {
		// Initialize one trash bin
		proc = 0;
		do
		:: proc < NO_BINS ->
			bin_status.out_door = closed;
			bin_status.lock_out_door = closed;
			bin_status.trap_door = closed;
			bin_status.ram = idle;
			bin_status.trash_in_outer_door = 0;
			bin_status.trash_on_trap_door = 0;
			bin_status.trash_compressed = 0;
			bin_status.trash_uncompressed = 0;
			bin_status.full_capacity = false;
			bin_status.trap_destroyed = false;
			max_capacity = 2;
			run bin(proc);
			proc++;
		:: proc == NO_BINS -> break;
		od;

		// Start the user process
		proc = 0;
		byte trash_size = 2;
		has_trash = true;
		run user(proc, trash_size);

		// Start the server process
		run server();

		// Start the trash truck process
		run truck();

		// Start the control process
		run main_control();
	}
}
