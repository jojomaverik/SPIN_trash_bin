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
		max_capacity = trpt->bup.ovals[10];
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
		((P5 *)_this)->_26_6_trash_size = trpt->bup.ovals[2];
		((P5 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P5 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 8: // STATE 23
		;
		now.has_trash = trpt->bup.ovals[2];
		((P5 *)_this)->_26_6_trash_size = trpt->bup.ovals[1];
		((P5 *)_this)->proc = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 9: // STATE 24
		;
	/* 1 */	((P5 *)_this)->_26_6_trash_size = trpt->bup.ovals[1];
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
	/* 0 */	((P4 *)_this)->user_id = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.scan_card_user, XX-1, 0, ((int)((P4 *)_this)->user_id), 1);
		((P4 *)_this)->user_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC user */
;
		;
		
	case 17: // STATE 2
		;
		now.has_trash = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 4
		;
		_m = unsend(now.scan_card_user);
		;
		goto R999;

	case 20: // STATE 5
		;
		XX = 1;
		unrecv(now.can_deposit_trash, XX-1, 0, ((int)((P3 *)_this)->user_id), 1);
		unrecv(now.can_deposit_trash, XX-1, 1, 1, 0);
		((P3 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 6
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 2, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 22: // STATE 7
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 23: // STATE 8
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 3, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 24: // STATE 11
		;
		now.has_trash = trpt->bup.ovals[1];
		now.bin_status.trash_in_outer_door = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 25: // STATE 15
		goto R999;
;
		;
		;
		
	case 27: // STATE 13
		goto R999;

	case 28: // STATE 17
		;
		_m = unsend(now.change_bin);
		;
		goto R999;

	case 29: // STATE 18
		;
		XX = 1;
		unrecv(now.bin_changed, XX-1, 0, 3, 1);
		unrecv(now.bin_changed, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 30: // STATE 19
		;
		XX = 1;
		unrecv(now.can_deposit_trash, XX-1, 0, ((int)((P3 *)_this)->user_id), 1);
		unrecv(now.can_deposit_trash, XX-1, 1, 0, 0);
		((P3 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 31: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC truck */

	case 32: // STATE 1
		;
	/* 0 */	((P2 *)_this)->bin_id = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.request_truck, XX-1, 0, ((int)((P2 *)_this)->bin_id), 1);
		((P2 *)_this)->bin_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 33: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC server */

	case 34: // STATE 1
		;
		XX = 1;
		unrecv(now.check_user, XX-1, 0, ((int)((P1 *)_this)->user_id), 1);
		((P1 *)_this)->user_id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 36: // STATE 3
		;
		_m = unsend(now.user_valid);
		;
		goto R999;
;
		;
		
	case 38: // STATE 5
		;
		_m = unsend(now.user_valid);
		;
		goto R999;

	case 39: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC bin */

	case 40: // STATE 1
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 3, 1);
		unrecv(now.change_bin, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 42: // STATE 3
		;
		now.bin_status.out_door = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 4
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 44: // STATE 5
		;
		_m = unsend(now.user_closed_outer_door);
		;
		goto R999;

	case 45: // STATE 8
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 3, 1);
		unrecv(now.change_bin, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		
	case 47: // STATE 10
		;
		now.bin_status.out_door = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 11
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 49: // STATE 14
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 2, 1);
		unrecv(now.change_bin, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 51: // STATE 16
		;
		now.bin_status.lock_out_door = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 19
		;
		now.bin_status.trash_in_outer_door = trpt->bup.ovals[1];
		now.bin_status.trash_on_trap_door = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 53: // STATE 26
		goto R999;
;
		;
		;
		
	case 55: // STATE 21
		goto R999;

	case 56: // STATE 24
		;
		now.bin_status.trash_in_outer_door = trpt->bup.ovals[1];
		now.bin_status.trash_uncompressed = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 57: // STATE 28
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 58: // STATE 31
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 2, 1);
		unrecv(now.change_bin, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		
	case 60: // STATE 33
		;
		now.bin_status.lock_out_door = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 34
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 62: // STATE 37
		;
		XX = 1;
		unrecv(now.weigh_trash, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 64: // STATE 39
		;
		_m = unsend(now.trash_weighted);
		;
		goto R999;

	case 65: // STATE 42
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 1, 1);
		unrecv(now.change_bin, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 67: // STATE 44
		;
		now.bin_status.trap_door = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 45
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;
;
		;
		
	case 70: // STATE 47
		;
		now.bin_status.trap_destroyed = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 48
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 72: // STATE 51
		;
		XX = 1;
		unrecv(now.change_bin, XX-1, 0, 1, 1);
		unrecv(now.change_bin, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		
	case 74: // STATE 53
		;
		now.bin_status.trap_door = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 56
		;
		now.bin_status.trash_on_trap_door = trpt->bup.ovals[1];
		now.bin_status.trash_uncompressed = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 76: // STATE 60
		goto R999;
;
		
	case 77: // STATE 58
		goto R999;

	case 78: // STATE 62
		;
		_m = unsend(now.bin_changed);
		;
		goto R999;

	case 79: // STATE 65
		;
		XX = 1;
		unrecv(now.change_ram, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 81: // STATE 67
		;
		now.bin_status.ram = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 70
		;
		now.bin_status.trash_uncompressed = trpt->bup.ovals[1];
		now.bin_status.trash_compressed = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 83: // STATE 74
		goto R999;

	case 84: // STATE 72
		;
		now.bin_status.trap_destroyed = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 76
		;
		_m = unsend(now.ram_changed);
		;
		goto R999;

	case 86: // STATE 79
		;
		XX = 1;
		unrecv(now.change_ram, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 88: // STATE 81
		;
		now.bin_status.ram = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 82
		;
		_m = unsend(now.ram_changed);
		;
		goto R999;

	case 90: // STATE 85
		;
		XX = 1;
		unrecv(now.empty_bin, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 92: // STATE 88
		;
		now.bin_status.trash_uncompressed = trpt->bup.ovals[1];
		now.bin_status.trash_compressed = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 93: // STATE 90
		;
		_m = unsend(now.bin_emptied);
		;
		goto R999;

	case 94: // STATE 96
		;
		p_restor(II);
		;
		;
		goto R999;
	}

