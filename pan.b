	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		((P5 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 13
		;
		now.max_capacity = trpt->bup.ovals[10];
		now.bin_status.trap_destroyed = trpt->bup.ovals[9];
		now.bin_status.full_capacity = trpt->bup.ovals[8];
		now.bin_status.trash_uncompressed = trpt->bup.ovals[7];
		now.bin_status.trash_compressed = trpt->bup.ovals[6];
		now.bin_status.trash_on_trap_door = trpt->bup.ovals[5];
		now.bin_status.trash_in_outer_door = trpt->bup.ovals[4];
		now.bin_status.ram = trpt->bup.ovals[3];
		now.bin_status.trap_door = trpt->bup.ovals[2];
		now.bin_status.lock_out_door = trpt->bup.ovals[1];
		now.bin_status.out_door = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 5: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 15
		;
		((P5 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 23
		;
		now.has_trash = trpt->bup.ovals[3];
		((P5 *)_this)->_26_2_trash_size = trpt->bup.ovals[2];
		((P5 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P5 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 8: // STATE 23
		;
		now.has_trash = trpt->bup.ovals[2];
		((P5 *)_this)->_26_2_trash_size = trpt->bup.ovals[1];
		((P5 *)_this)->proc = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 9: // STATE 24
		;
	/* 1 */	((P5 *)_this)->_26_2_trash_size = trpt->bup.ovals[1];
	/* 0 */	((P5 *)_this)->proc = trpt->bup.ovals[0];
		;
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 25
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 26
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 27
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 29
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 14: // STATE 1
		;
		XX = 1;
		unrecv(now.scan_card_user, XX-1, 0, ((int)((P4 *)_this)->user_id), 1);
		((P4 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 16: // STATE 3
		;
		_m = unsend(now.check_user);
		;
		goto R999;

	case 17: // STATE 4
		;
		XX = 1;
		unrecv(now.user_valid, XX-1, 0, ((int)((P4 *)_this)->user_id), 1);
		unrecv(now.user_valid, XX-1, 1, 1, 0);
		((P4 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 21: // STATE 8
		;
		_m = unsend(now.can_deposit_trash);
		;
		goto R999;

	case 22: // STATE 9
		;
		_m = unsend(now.change_bin);
		;
		goto R999;
;
		;
		
	case 24: // STATE 12
		;
		_m = unsend(now.can_deposit_trash);
		;
		goto R999;
;
		;
		;
		;
		
	case 27: // STATE 17
		;
		now.bin_status.full_capacity = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 18
		;
		_m = unsend(now.request_truck);
		;
		goto R999;

	case 29: // STATE 19
		;
		XX = 1;
		unrecv(now.change_truck, XX-1, 0, 3, 1);
		unrecv(now.change_truck, XX-1, 1, ((int)((P4 *)_this)->bin_id), 0);
		((P4 *)_this)->bin_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 31: // STATE 21
		;
		_m = unsend(now.change_truck);
		;
		goto R999;

	case 32: // STATE 22
		;
		XX = 1;
		unrecv(now.change_truck, XX-1, 0, 1, 1);
		unrecv(now.change_truck, XX-1, 1, ((int)((P4 *)_this)->bin_id), 0);
		((P4 *)_this)->bin_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 34: // STATE 24
		;
		now.bin_status.full_capacity = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 25
		;
		_m = unsend(now.change_truck);
		;
		goto R999;

	case 36: // STATE 26
		;
		XX = 1;
		unrecv(now.user_closed_outer_door, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 38: // STATE 28
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 39: // STATE 29
		;
		_m = unsend(now.weigh_trash);
		;
		goto R999;

	case 40: // STATE 30
		;
		XX = 1;
		unrecv(now.trash_weighted, XX-1, 0, ((int)now.bin_status.trash_on_trap_door), 1);
		now.bin_status.trash_on_trap_door = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 42: // STATE 32
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 43: // STATE 33
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 1, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 44: // STATE 34
		;
		_m = unsend(now.change_ram);
		;
		goto R999;

	case 45: // STATE 35
		;
		XX = 1;
		unrecv(now.ram_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 46: // STATE 36
		;
		_m = unsend(now.change_ram);
		;
		goto R999;

	case 47: // STATE 37
		;
		XX = 1;
		unrecv(now.ram_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 48: // STATE 38
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 49: // STATE 39
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 2, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 50: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC user */
;
		;
		
	case 52: // STATE 2
		;
		now.has_trash = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 55: // STATE 5
		;
		_m = unsend(now.scan_card_user);
		;
		goto R999;

	case 56: // STATE 6
		;
		XX = 1;
		unrecv(now.can_deposit_trash, XX-1, 0, ((int)((P3 *)_this)->user_id), 1);
		unrecv(now.can_deposit_trash, XX-1, 1, 1, 0);
		((P3 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 58: // STATE 8
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 2, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 59: // STATE 9
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 60: // STATE 10
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 3, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 63: // STATE 13
		;
		now.bin_status.trash_in_outer_door = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 14
		;
		now.has_trash = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 67: // STATE 17
		goto R999;
;
		
	case 68: // STATE 20
		goto R999;

	case 69: // STATE 21
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 70: // STATE 22
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 3, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 71: // STATE 23
		;
		XX = 1;
		unrecv(now.can_deposit_trash, XX-1, 0, ((int)((P3 *)_this)->user_id), 1);
		unrecv(now.can_deposit_trash, XX-1, 1, 0, 0);
		((P3 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 73: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC truck */

	case 74: // STATE 1
		;
		XX = 1;
		unrecv(now.request_truck, XX-1, 0, ((int)((P2 *)_this)->bin_id), 1);
		((P2 *)_this)->bin_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 76: // STATE 3
		;
		_m = unsend(now.change_truck);
		;
		goto R999;

	case 77: // STATE 4
		;
		XX = 1;
		unrecv(now.change_truck, XX-1, 0, 2, 1);
		unrecv(now.change_truck, XX-1, 1, ((int)((P2 *)_this)->bin_id), 0);
		((P2 *)_this)->bin_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 79: // STATE 6
		;
		_m = unsend(now.empty_bin);
		;
		goto R999;

	case 80: // STATE 7
		;
		XX = 1;
		unrecv(now.bin_emptied, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 82: // STATE 9
		;
		_m = unsend(now.change_truck);
		;
		goto R999;

	case 83: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC server */

	case 84: // STATE 1
		;
		XX = 1;
		unrecv(now.check_user, XX-1, 0, ((int)((P1 *)_this)->user_id), 1);
		((P1 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 87: // STATE 4
		;
		_m = unsend(now.user_valid);
		;
		goto R999;
;
		;
		;
		;
		
	case 90: // STATE 7
		;
		_m = unsend(now.user_valid);
		;
		goto R999;
;
		;
		
	case 92: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC bin */

	case 93: // STATE 1
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 3, 1);
		unrecv(now.change_bin, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 96: // STATE 4
		;
		now.bin_status.out_door = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 5
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 98: // STATE 6
		;
		_m = unsend(now.user_closed_outer_door);
		;
		goto R999;

	case 99: // STATE 9
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 3, 1);
		unrecv(now.change_bin, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 102: // STATE 12
		;
		now.bin_status.out_door = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 13
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 104: // STATE 16
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 2, 1);
		unrecv(now.change_bin, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 107: // STATE 19
		;
		now.bin_status.lock_out_door = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 110: // STATE 22
		;
		now.bin_status.trash_on_trap_door = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 23
		;
		now.bin_status.trash_in_outer_door = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 26
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 113: // STATE 29
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 2, 1);
		unrecv(now.change_bin, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 116: // STATE 32
		;
		now.bin_status.lock_out_door = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 33
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 118: // STATE 36
		;
		XX = 1;
		unrecv(now.weigh_trash, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 121: // STATE 39
		;
		_m = unsend(now.trash_weighted);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 125: // STATE 45
		;
		now.bin_status.trash_on_trap_door = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 46
		;
		now.bin_status.trash_in_outer_door = trpt->bup.oval;
		;
		goto R999;

	case 127: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;
	}

