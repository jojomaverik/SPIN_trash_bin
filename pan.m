#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - trash_bin.pml:249 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - trash_bin.pml:251 - [((proc<1))] (14:0:11 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!((((int)((P5 *)_this)->proc)<1)))
			continue;
		/* merge: bin_status.out_door = 2(14, 3, 14) */
		reached[5][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = now.bin_status.out_door;
		now.bin_status.out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.out_door", now.bin_status.out_door);
#endif
		;
		/* merge: bin_status.lock_out_door = 2(14, 4, 14) */
		reached[5][4] = 1;
		(trpt+1)->bup.ovals[1] = now.bin_status.lock_out_door;
		now.bin_status.lock_out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.lock_out_door", now.bin_status.lock_out_door);
#endif
		;
		/* merge: bin_status.trap_door = 2(14, 5, 14) */
		reached[5][5] = 1;
		(trpt+1)->bup.ovals[2] = now.bin_status.trap_door;
		now.bin_status.trap_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.trap_door", now.bin_status.trap_door);
#endif
		;
		/* merge: bin_status.ram = 2(14, 6, 14) */
		reached[5][6] = 1;
		(trpt+1)->bup.ovals[3] = now.bin_status.ram;
		now.bin_status.ram = 2;
#ifdef VAR_RANGES
		logval("bin_status.ram", now.bin_status.ram);
#endif
		;
		/* merge: bin_status.trash_in_outer_door = 0(14, 7, 14) */
		reached[5][7] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		/* merge: bin_status.trash_on_trap_door = 0(14, 8, 14) */
		reached[5][8] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.bin_status.trash_on_trap_door);
		now.bin_status.trash_on_trap_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		/* merge: bin_status.trash_compressed = 0(14, 9, 14) */
		reached[5][9] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.bin_status.trash_compressed);
		now.bin_status.trash_compressed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_compressed", ((int)now.bin_status.trash_compressed));
#endif
		;
		/* merge: bin_status.trash_uncompressed = 0(14, 10, 14) */
		reached[5][10] = 1;
		(trpt+1)->bup.ovals[7] = ((int)now.bin_status.trash_uncompressed);
		now.bin_status.trash_uncompressed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_uncompressed", ((int)now.bin_status.trash_uncompressed));
#endif
		;
		/* merge: bin_status.full_capacity = 0(14, 11, 14) */
		reached[5][11] = 1;
		(trpt+1)->bup.ovals[8] = ((int)now.bin_status.full_capacity);
		now.bin_status.full_capacity = 0;
#ifdef VAR_RANGES
		logval("bin_status.full_capacity", ((int)now.bin_status.full_capacity));
#endif
		;
		/* merge: bin_status.trap_destroyed = 0(14, 12, 14) */
		reached[5][12] = 1;
		(trpt+1)->bup.ovals[9] = ((int)now.bin_status.trap_destroyed);
		now.bin_status.trap_destroyed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trap_destroyed", ((int)now.bin_status.trap_destroyed));
#endif
		;
		/* merge: max_capacity = 2(14, 13, 14) */
		reached[5][13] = 1;
		(trpt+1)->bup.ovals[10] = ((int)now.max_capacity);
		now.max_capacity = 2;
#ifdef VAR_RANGES
		logval("max_capacity", ((int)now.max_capacity));
#endif
		;
		_m = 3; goto P999; /* 11 */
	case 5: // STATE 14 - trash_bin.pml:263 - [(run bin(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][14] = 1;
		if (!(addproc(II, 1, 0, ((int)((P5 *)_this)->proc), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - trash_bin.pml:264 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[5][15] = 1;
		(trpt+1)->bup.oval = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = (((int)((P5 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 16 - trash_bin.pml:265 - [((proc==1))] (24:0:4 - 1)
		IfNotBlocked
		reached[5][16] = 1;
		if (!((((int)((P5 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->proc = 0;
		/* merge: goto :b5(24, 17, 24) */
		reached[5][17] = 1;
		;
		/* merge: proc = 0(24, 21, 24) */
		reached[5][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		/* merge: trash_size = 2(24, 22, 24) */
		reached[5][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)_this)->_26_2_trash_size);
		((P5 *)_this)->_26_2_trash_size = 2;
#ifdef VAR_RANGES
		logval(":init::trash_size", ((int)((P5 *)_this)->_26_2_trash_size));
#endif
		;
		/* merge: has_trash = 1(24, 23, 24) */
		reached[5][23] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.has_trash);
		now.has_trash = 1;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 8: // STATE 21 - trash_bin.pml:269 - [proc = 0] (0:24:3 - 3)
		IfNotBlocked
		reached[5][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		/* merge: trash_size = 2(24, 22, 24) */
		reached[5][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)_this)->_26_2_trash_size);
		((P5 *)_this)->_26_2_trash_size = 2;
#ifdef VAR_RANGES
		logval(":init::trash_size", ((int)((P5 *)_this)->_26_2_trash_size));
#endif
		;
		/* merge: has_trash = 1(24, 23, 24) */
		reached[5][23] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.has_trash);
		now.has_trash = 1;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 24 - trash_bin.pml:272 - [(run user(proc,trash_size))] (0:0:2 - 1)
		IfNotBlocked
		reached[5][24] = 1;
		if (!(addproc(II, 1, 3, ((int)((P5 *)_this)->proc), ((int)((P5 *)_this)->_26_2_trash_size))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->proc = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _26_2_trash_size */  (trpt+1)->bup.ovals[1] = ((P5 *)_this)->_26_2_trash_size;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->_26_2_trash_size = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 25 - trash_bin.pml:275 - [(run server())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][25] = 1;
		if (!(addproc(II, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 26 - trash_bin.pml:278 - [(run truck())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][26] = 1;
		if (!(addproc(II, 1, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 27 - trash_bin.pml:281 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][27] = 1;
		if (!(addproc(II, 1, 4, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 29 - trash_bin.pml:283 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 14: // STATE 1 - trash_bin.pml:194 - [scan_card_user?user_id] (0:0:1 - 1)
		reached[4][1] = 1;
		if (q_zero(now.scan_card_user))
		{	if (boq != now.scan_card_user) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.scan_card_user) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->user_id);
		;
		((P4 *)_this)->user_id = qrecv(now.scan_card_user, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("main_control:user_id", ((int)((P4 *)_this)->user_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.scan_card_user);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->user_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.scan_card_user))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 2 - trash_bin.pml:195 - [printf('Main Control: Received user card scan, user_id: %d\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		Printf("Main Control: Received user card scan, user_id: %d\n", ((int)((P4 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - trash_bin.pml:196 - [check_user!user_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (q_full(now.check_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.check_user);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->user_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.check_user, 0, ((int)((P4 *)_this)->user_id), 0, 1);
		if (q_zero(now.check_user)) { boq = now.check_user; };
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 4 - trash_bin.pml:197 - [user_valid?user_id,1] (0:0:1 - 1)
		reached[4][4] = 1;
		if (q_zero(now.user_valid))
		{	if (boq != now.user_valid) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.user_valid) == 0) continue;

		XX=1;
		if (1 != qrecv(now.user_valid, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->user_id);
		;
		((P4 *)_this)->user_id = qrecv(now.user_valid, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("main_control:user_id", ((int)((P4 *)_this)->user_id));
#endif
		;
		qrecv(now.user_valid, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.user_valid);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.user_valid))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 5 - trash_bin.pml:198 - [printf('Main Control: User_id %d is valid, checking bin capacity.\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		Printf("Main Control: User_id %d is valid, checking bin capacity.\n", ((int)((P4 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - trash_bin.pml:200 - [((bin_status.full_capacity==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		if (!((((int)now.bin_status.full_capacity)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 7 - trash_bin.pml:201 - [printf('Main Control: Bin not full, allowing trash deposit for user_id: %d\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][7] = 1;
		Printf("Main Control: Bin not full, allowing trash deposit for user_id: %d\n", ((int)((P4 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 8 - trash_bin.pml:202 - [can_deposit_trash!user_id,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		if (q_full(now.can_deposit_trash))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.can_deposit_trash);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.can_deposit_trash, 0, ((int)((P4 *)_this)->user_id), 1, 2);
		if (q_zero(now.can_deposit_trash)) { boq = now.can_deposit_trash; };
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 9 - trash_bin.pml:203 - [change_bin!2,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 2, 1, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 11 - trash_bin.pml:205 - [printf('Main Control: Bin is full, denying trash deposit for user_id: %d\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		Printf("Main Control: Bin is full, denying trash deposit for user_id: %d\n", ((int)((P4 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 12 - trash_bin.pml:206 - [can_deposit_trash!user_id,0] (0:0:0 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		if (q_full(now.can_deposit_trash))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.can_deposit_trash);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.can_deposit_trash, 0, ((int)((P4 *)_this)->user_id), 0, 2);
		if (q_zero(now.can_deposit_trash)) { boq = now.can_deposit_trash; };
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 15 - trash_bin.pml:210 - [((bin_status.trash_uncompressed==max_capacity))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][15] = 1;
		if (!((((int)now.bin_status.trash_uncompressed)==((int)now.max_capacity))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 16 - trash_bin.pml:211 - [printf('Main Control: Bin reached max capacity, requesting truck.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		Printf("Main Control: Bin reached max capacity, requesting truck.\n");
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 17 - trash_bin.pml:212 - [bin_status.full_capacity = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][17] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.full_capacity);
		now.bin_status.full_capacity = 1;
#ifdef VAR_RANGES
		logval("bin_status.full_capacity", ((int)now.bin_status.full_capacity));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 18 - trash_bin.pml:213 - [request_truck!bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		if (q_full(now.request_truck))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_truck);
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_truck, 0, ((int)((P4 *)_this)->bin_id), 0, 1);
		if (q_zero(now.request_truck)) { boq = now.request_truck; };
		_m = 2; goto P999; /* 0 */
	case 29: // STATE 19 - trash_bin.pml:215 - [change_truck?3,bin_id] (0:0:1 - 1)
		reached[4][19] = 1;
		if (q_zero(now.change_truck))
		{	if (boq != now.change_truck) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_truck) == 0) continue;

		XX=1;
		if (3 != qrecv(now.change_truck, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->bin_id);
		;
		((P4 *)_this)->bin_id = qrecv(now.change_truck, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:bin_id", ((int)((P4 *)_this)->bin_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_truck);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_truck))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 20 - trash_bin.pml:216 - [printf('Main Control: Truck arrived for bin_id: %d, starting emptying process.\\n',bin_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][20] = 1;
		Printf("Main Control: Truck arrived for bin_id: %d, starting emptying process.\n", ((int)((P4 *)_this)->bin_id));
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 21 - trash_bin.pml:217 - [change_truck!2,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		if (q_full(now.change_truck))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_truck);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_truck, 0, 2, ((int)((P4 *)_this)->bin_id), 2);
		if (q_zero(now.change_truck)) { boq = now.change_truck; };
		_m = 2; goto P999; /* 0 */
	case 32: // STATE 22 - trash_bin.pml:219 - [change_truck?1,bin_id] (0:0:1 - 1)
		reached[4][22] = 1;
		if (q_zero(now.change_truck))
		{	if (boq != now.change_truck) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_truck) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_truck, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->bin_id);
		;
		((P4 *)_this)->bin_id = qrecv(now.change_truck, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:bin_id", ((int)((P4 *)_this)->bin_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_truck);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_truck))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 23 - trash_bin.pml:220 - [printf('Main Control: Truck finished emptying bin_id: %d.\\n',bin_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		Printf("Main Control: Truck finished emptying bin_id: %d.\n", ((int)((P4 *)_this)->bin_id));
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 24 - trash_bin.pml:221 - [bin_status.full_capacity = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.full_capacity);
		now.bin_status.full_capacity = 0;
#ifdef VAR_RANGES
		logval("bin_status.full_capacity", ((int)now.bin_status.full_capacity));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 25 - trash_bin.pml:222 - [change_truck!1,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][25] = 1;
		if (q_full(now.change_truck))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_truck);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_truck, 0, 1, ((int)((P4 *)_this)->bin_id), 2);
		if (q_zero(now.change_truck)) { boq = now.change_truck; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 26 - trash_bin.pml:224 - [user_closed_outer_door?1] (0:0:0 - 1)
		reached[4][26] = 1;
		if (q_zero(now.user_closed_outer_door))
		{	if (boq != now.user_closed_outer_door) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.user_closed_outer_door) == 0) continue;

		XX=1;
		if (1 != qrecv(now.user_closed_outer_door, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.user_closed_outer_door-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.user_closed_outer_door, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.user_closed_outer_door);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.user_closed_outer_door))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 37: // STATE 27 - trash_bin.pml:225 - [printf('Main Control: User closed the outer door, starting trash weighing process.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[4][27] = 1;
		Printf("Main Control: User closed the outer door, starting trash weighing process.\n");
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 28 - trash_bin.pml:226 - [change_bin!2,2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][28] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 2, 2, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 29 - trash_bin.pml:227 - [weigh_trash!1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][29] = 1;
		if (q_full(now.weigh_trash))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.weigh_trash);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.weigh_trash, 0, 1, 0, 1);
		if (q_zero(now.weigh_trash)) { boq = now.weigh_trash; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 30 - trash_bin.pml:229 - [trash_weighted?bin_status.trash_on_trap_door] (0:0:1 - 1)
		reached[4][30] = 1;
		if (q_zero(now.trash_weighted))
		{	if (boq != now.trash_weighted) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.trash_weighted) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_on_trap_door);
		;
		now.bin_status.trash_on_trap_door = qrecv(now.trash_weighted, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.trash_weighted);
		sprintf(simtmp, "%d", ((int)now.bin_status.trash_on_trap_door)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.trash_weighted))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 41: // STATE 31 - trash_bin.pml:230 - [printf('Main Control: Trash weighing completed, weight: %d. Opening trap door and compressing trash.\\n',bin_status.trash_on_trap_door)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		Printf("Main Control: Trash weighing completed, weight: %d. Opening trap door and compressing trash.\n", ((int)now.bin_status.trash_on_trap_door));
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 32 - trash_bin.pml:232 - [change_bin!1,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 1, 1, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 33 - trash_bin.pml:233 - [bin_changed?1,1] (0:0:0 - 1)
		reached[4][33] = 1;
		if (q_zero(now.bin_changed))
		{	if (boq != now.bin_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.bin_changed, 0, 0, 0)) continue;
		if (1 != qrecv(now.bin_changed, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_changed-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_changed, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 44: // STATE 34 - trash_bin.pml:234 - [change_ram!1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		if (q_full(now.change_ram))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_ram);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_ram, 0, 1, 0, 1);
		if (q_zero(now.change_ram)) { boq = now.change_ram; };
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 35 - trash_bin.pml:235 - [ram_changed?1] (0:0:0 - 1)
		reached[4][35] = 1;
		if (q_zero(now.ram_changed))
		{	if (boq != now.ram_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ram_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ram_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.ram_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.ram_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ram_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ram_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 46: // STATE 36 - trash_bin.pml:236 - [change_ram!2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		if (q_full(now.change_ram))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_ram);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_ram, 0, 2, 0, 1);
		if (q_zero(now.change_ram)) { boq = now.change_ram; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 37 - trash_bin.pml:237 - [ram_changed?1] (0:0:0 - 1)
		reached[4][37] = 1;
		if (q_zero(now.ram_changed))
		{	if (boq != now.ram_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ram_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ram_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.ram_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.ram_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ram_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ram_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 48: // STATE 38 - trash_bin.pml:238 - [change_bin!2,2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][38] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 2, 2, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 39 - trash_bin.pml:239 - [bin_changed?2,1] (0:0:0 - 1)
		reached[4][39] = 1;
		if (q_zero(now.bin_changed))
		{	if (boq != now.bin_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_changed) == 0) continue;

		XX=1;
		if (2 != qrecv(now.bin_changed, 0, 0, 0)) continue;
		if (1 != qrecv(now.bin_changed, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_changed-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_changed, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_changed);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 50: // STATE 44 - trash_bin.pml:242 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC user */
	case 51: // STATE 1 - trash_bin.pml:156 - [(!(has_trash))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!( !(((int)now.has_trash))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 2 - trash_bin.pml:157 - [has_trash = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.has_trash);
		now.has_trash = 1;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 3 - trash_bin.pml:158 - [(has_trash)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((int)now.has_trash)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 4 - trash_bin.pml:159 - [printf('User: Scanning card with user_id: %d\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		Printf("User: Scanning card with user_id: %d\n", ((int)((P3 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 5 - trash_bin.pml:160 - [scan_card_user!user_id] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (q_full(now.scan_card_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.scan_card_user);
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->user_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.scan_card_user, 0, ((int)((P3 *)_this)->user_id), 0, 1);
		if (q_zero(now.scan_card_user)) { boq = now.scan_card_user; };
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 6 - trash_bin.pml:162 - [can_deposit_trash?user_id,1] (0:0:1 - 1)
		reached[3][6] = 1;
		if (q_zero(now.can_deposit_trash))
		{	if (boq != now.can_deposit_trash) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.can_deposit_trash) == 0) continue;

		XX=1;
		if (1 != qrecv(now.can_deposit_trash, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->user_id);
		;
		((P3 *)_this)->user_id = qrecv(now.can_deposit_trash, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("user:user_id", ((int)((P3 *)_this)->user_id));
#endif
		;
		qrecv(now.can_deposit_trash, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.can_deposit_trash);
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.can_deposit_trash))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 57: // STATE 7 - trash_bin.pml:163 - [printf('User: Allowed to deposit trash. Opening outer door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		Printf("User: Allowed to deposit trash. Opening outer door.\n");
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 8 - trash_bin.pml:164 - [bin_changed?2,1] (0:0:0 - 1)
		reached[3][8] = 1;
		if (q_zero(now.bin_changed))
		{	if (boq != now.bin_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_changed) == 0) continue;

		XX=1;
		if (2 != qrecv(now.bin_changed, 0, 0, 0)) continue;
		if (1 != qrecv(now.bin_changed, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_changed-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_changed, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_changed);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 59: // STATE 9 - trash_bin.pml:165 - [change_bin!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 3, 1, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 10 - trash_bin.pml:166 - [bin_changed?3,1] (0:0:0 - 1)
		reached[3][10] = 1;
		if (q_zero(now.bin_changed))
		{	if (boq != now.bin_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_changed) == 0) continue;

		XX=1;
		if (3 != qrecv(now.bin_changed, 0, 0, 0)) continue;
		if (1 != qrecv(now.bin_changed, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_changed-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_changed, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_changed);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 11 - trash_bin.pml:169 - [((bin_status.trash_in_outer_door==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((((int)now.bin_status.trash_in_outer_door)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 12 - trash_bin.pml:170 - [printf('User: Depositing trash of size: %d.\\n',trash_size)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		Printf("User: Depositing trash of size: %d.\n", ((int)((P3 *)_this)->trash_size));
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 13 - trash_bin.pml:171 - [bin_status.trash_in_outer_door = trash_size] (0:0:1 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = ((int)((P3 *)_this)->trash_size);
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 14 - trash_bin.pml:172 - [has_trash = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		(trpt+1)->bup.oval = ((int)now.has_trash);
		now.has_trash = 0;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 15 - trash_bin.pml:173 - [((bin_status.trash_in_outer_door>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		if (!((((int)now.bin_status.trash_in_outer_door)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 16 - trash_bin.pml:174 - [printf('User: Trash in outer door, cannot deposit more trash.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		Printf("User: Trash in outer door, cannot deposit more trash.\n");
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 17 - trash_bin.pml:175 - [(1)] (21:0:0 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(21, 19, 21) */
		reached[3][19] = 1;
		;
		/* merge: printf('User: Closing outer door after trash deposit.\\n')(21, 20, 21) */
		reached[3][20] = 1;
		Printf("User: Closing outer door after trash deposit.\n");
		_m = 3; goto P999; /* 2 */
	case 68: // STATE 20 - trash_bin.pml:178 - [printf('User: Closing outer door after trash deposit.\\n')] (0:21:0 - 3)
		IfNotBlocked
		reached[3][20] = 1;
		Printf("User: Closing outer door after trash deposit.\n");
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 21 - trash_bin.pml:179 - [change_bin!3,2] (0:0:0 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (q_full(now.change_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_bin);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_bin, 0, 3, 2, 2);
		if (q_zero(now.change_bin)) { boq = now.change_bin; };
		_m = 2; goto P999; /* 0 */
	case 70: // STATE 22 - trash_bin.pml:180 - [bin_changed?3,1] (0:0:0 - 1)
		reached[3][22] = 1;
		if (q_zero(now.bin_changed))
		{	if (boq != now.bin_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_changed) == 0) continue;

		XX=1;
		if (3 != qrecv(now.bin_changed, 0, 0, 0)) continue;
		if (1 != qrecv(now.bin_changed, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_changed-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_changed, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_changed);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 71: // STATE 23 - trash_bin.pml:181 - [can_deposit_trash?user_id,0] (0:0:1 - 1)
		reached[3][23] = 1;
		if (q_zero(now.can_deposit_trash))
		{	if (boq != now.can_deposit_trash) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.can_deposit_trash) == 0) continue;

		XX=1;
		if (0 != qrecv(now.can_deposit_trash, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->user_id);
		;
		((P3 *)_this)->user_id = qrecv(now.can_deposit_trash, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("user:user_id", ((int)((P3 *)_this)->user_id));
#endif
		;
		qrecv(now.can_deposit_trash, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.can_deposit_trash);
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.can_deposit_trash))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 72: // STATE 24 - trash_bin.pml:182 - [printf('User: Deposit denied, bin is full.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][24] = 1;
		Printf("User: Deposit denied, bin is full.\n");
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 31 - trash_bin.pml:186 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC truck */
	case 74: // STATE 1 - trash_bin.pml:141 - [request_truck?bin_id] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_truck))
		{	if (boq != now.request_truck) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_truck) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->bin_id);
		;
		((P2 *)_this)->bin_id = qrecv(now.request_truck, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("truck:bin_id", ((int)((P2 *)_this)->bin_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_truck);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_truck))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 75: // STATE 2 - trash_bin.pml:142 - [printf('Truck: Received request to empty bin_id: %d\\n',bin_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		Printf("Truck: Received request to empty bin_id: %d\n", ((int)((P2 *)_this)->bin_id));
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 3 - trash_bin.pml:143 - [change_truck!3,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.change_truck))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_truck);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_truck, 0, 3, ((int)((P2 *)_this)->bin_id), 2);
		if (q_zero(now.change_truck)) { boq = now.change_truck; };
		_m = 2; goto P999; /* 0 */
	case 77: // STATE 4 - trash_bin.pml:144 - [change_truck?2,bin_id] (0:0:1 - 1)
		reached[2][4] = 1;
		if (q_zero(now.change_truck))
		{	if (boq != now.change_truck) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_truck) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_truck, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->bin_id);
		;
		((P2 *)_this)->bin_id = qrecv(now.change_truck, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("truck:bin_id", ((int)((P2 *)_this)->bin_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_truck);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_truck))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 78: // STATE 5 - trash_bin.pml:145 - [printf('Truck: Starting to empty bin_id: %d.\\n',bin_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		Printf("Truck: Starting to empty bin_id: %d.\n", ((int)((P2 *)_this)->bin_id));
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 6 - trash_bin.pml:146 - [empty_bin!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (q_full(now.empty_bin))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.empty_bin);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.empty_bin, 0, 1, 0, 1);
		if (q_zero(now.empty_bin)) { boq = now.empty_bin; };
		_m = 2; goto P999; /* 0 */
	case 80: // STATE 7 - trash_bin.pml:147 - [bin_emptied?1] (0:0:0 - 1)
		reached[2][7] = 1;
		if (q_zero(now.bin_emptied))
		{	if (boq != now.bin_emptied) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.bin_emptied) == 0) continue;

		XX=1;
		if (1 != qrecv(now.bin_emptied, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.bin_emptied-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.bin_emptied, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.bin_emptied);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.bin_emptied))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 81: // STATE 8 - trash_bin.pml:148 - [printf('Truck: Finished emptying bin_id: %d.\\n',bin_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		Printf("Truck: Finished emptying bin_id: %d.\n", ((int)((P2 *)_this)->bin_id));
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 9 - trash_bin.pml:149 - [change_truck!1,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (q_full(now.change_truck))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_truck);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->bin_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_truck, 0, 1, ((int)((P2 *)_this)->bin_id), 2);
		if (q_zero(now.change_truck)) { boq = now.change_truck; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 13 - trash_bin.pml:151 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC server */
	case 84: // STATE 1 - trash_bin.pml:124 - [check_user?user_id] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_zero(now.check_user))
		{	if (boq != now.check_user) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.check_user) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->user_id);
		;
		((P1 *)_this)->user_id = qrecv(now.check_user, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("server:user_id", ((int)((P1 *)_this)->user_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.check_user);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->user_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.check_user))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 85: // STATE 2 - trash_bin.pml:125 - [printf('Server: Checking user_id: %d\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Server: Checking user_id: %d\n", ((int)((P1 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 3 - trash_bin.pml:127 - [((user_id!=42))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)((P1 *)_this)->user_id)!=42)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 4 - trash_bin.pml:128 - [user_valid!user_id,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.user_valid))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.user_valid);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.user_valid, 0, ((int)((P1 *)_this)->user_id), 1, 2);
		if (q_zero(now.user_valid)) { boq = now.user_valid; };
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 5 - trash_bin.pml:129 - [printf('Server: User_id %d is valid.\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("Server: User_id %d is valid.\n", ((int)((P1 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 6 - trash_bin.pml:130 - [((user_id==42))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!((((int)((P1 *)_this)->user_id)==42)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 7 - trash_bin.pml:131 - [user_valid!user_id,0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (q_full(now.user_valid))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.user_valid);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->user_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.user_valid, 0, ((int)((P1 *)_this)->user_id), 0, 2);
		if (q_zero(now.user_valid)) { boq = now.user_valid; };
		_m = 2; goto P999; /* 0 */
	case 91: // STATE 8 - trash_bin.pml:132 - [printf('Server: User_id %d is invalid.\\n',user_id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("Server: User_id %d is invalid.\n", ((int)((P1 *)_this)->user_id));
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 14 - trash_bin.pml:135 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC bin */
	case 93: // STATE 1 - trash_bin.pml:57 - [change_bin?3,2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (3 != qrecv(now.change_bin, 0, 0, 0)) continue;
		if (2 != qrecv(now.change_bin, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_bin-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_bin, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_bin);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_bin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 94: // STATE 2 - trash_bin.pml:59 - [((bin_status.out_door==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.bin_status.out_door==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 3 - trash_bin.pml:60 - [printf('Bin: Closing outer door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		Printf("Bin: Closing outer door.\n");
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 4 - trash_bin.pml:61 - [bin_status.out_door = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.bin_status.out_door;
		now.bin_status.out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.out_door", now.bin_status.out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 5 - trash_bin.pml:62 - [bin_changed!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 3, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 6 - trash_bin.pml:63 - [user_closed_outer_door!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (q_full(now.user_closed_outer_door))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.user_closed_outer_door);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.user_closed_outer_door, 0, 1, 0, 1);
		if (q_zero(now.user_closed_outer_door)) { boq = now.user_closed_outer_door; };
		_m = 2; goto P999; /* 0 */
	case 99: // STATE 9 - trash_bin.pml:65 - [change_bin?3,1] (0:0:0 - 1)
		reached[0][9] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (3 != qrecv(now.change_bin, 0, 0, 0)) continue;
		if (1 != qrecv(now.change_bin, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_bin-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_bin, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_bin);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_bin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 100: // STATE 10 - trash_bin.pml:67 - [(((bin_status.out_door==2)&&(bin_status.lock_out_door==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(((now.bin_status.out_door==2)&&(now.bin_status.lock_out_door==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 11 - trash_bin.pml:68 - [printf('Bin: Opening outer door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		Printf("Bin: Opening outer door.\n");
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 12 - trash_bin.pml:69 - [bin_status.out_door = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.bin_status.out_door;
		now.bin_status.out_door = 1;
#ifdef VAR_RANGES
		logval("bin_status.out_door", now.bin_status.out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 13 - trash_bin.pml:70 - [bin_changed!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 3, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 16 - trash_bin.pml:74 - [change_bin?2,2] (0:0:0 - 1)
		reached[0][16] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_bin, 0, 0, 0)) continue;
		if (2 != qrecv(now.change_bin, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_bin-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_bin, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_bin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_bin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 105: // STATE 17 - trash_bin.pml:76 - [(((bin_status.lock_out_door==1)&&(bin_status.out_door==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!(((now.bin_status.lock_out_door==1)&&(now.bin_status.out_door==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 18 - trash_bin.pml:77 - [printf('Bin: Locking outer door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		Printf("Bin: Locking outer door.\n");
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 19 - trash_bin.pml:78 - [bin_status.lock_out_door = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.bin_status.lock_out_door;
		now.bin_status.lock_out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.lock_out_door", now.bin_status.lock_out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 20 - trash_bin.pml:82 - [((((bin_status.trash_in_outer_door>0)&&(bin_status.trap_door==2))&&(bin_status.trash_on_trap_door==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((((int)now.bin_status.trash_in_outer_door)>0)&&(now.bin_status.trap_door==2))&&(((int)now.bin_status.trash_on_trap_door)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 21 - trash_bin.pml:83 - [printf('Bin: Trash moved from outer door to trap door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		Printf("Bin: Trash moved from outer door to trap door.\n");
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 22 - trash_bin.pml:84 - [bin_status.trash_on_trap_door = bin_status.trash_in_outer_door] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_on_trap_door);
		now.bin_status.trash_on_trap_door = ((int)now.bin_status.trash_in_outer_door);
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 23 - trash_bin.pml:85 - [bin_status.trash_in_outer_door = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 26 - trash_bin.pml:88 - [bin_changed!2,1] (0:0:0 - 2)
		IfNotBlocked
		reached[0][26] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 2, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 113: // STATE 29 - trash_bin.pml:92 - [change_bin?2,1] (0:0:0 - 1)
		reached[0][29] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_bin, 0, 0, 0)) continue;
		if (1 != qrecv(now.change_bin, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_bin-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_bin, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_bin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_bin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 114: // STATE 30 - trash_bin.pml:94 - [((bin_status.lock_out_door==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((now.bin_status.lock_out_door==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 31 - trash_bin.pml:95 - [printf('Bin: Unlocking outer door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("Bin: Unlocking outer door.\n");
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 32 - trash_bin.pml:96 - [bin_status.lock_out_door = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.bin_status.lock_out_door;
		now.bin_status.lock_out_door = 1;
#ifdef VAR_RANGES
		logval("bin_status.lock_out_door", now.bin_status.lock_out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 33 - trash_bin.pml:97 - [bin_changed!2,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 2, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 118: // STATE 36 - trash_bin.pml:101 - [weigh_trash?1] (0:0:0 - 1)
		reached[0][36] = 1;
		if (q_zero(now.weigh_trash))
		{	if (boq != now.weigh_trash) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.weigh_trash) == 0) continue;

		XX=1;
		if (1 != qrecv(now.weigh_trash, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.weigh_trash-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.weigh_trash, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.weigh_trash);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.weigh_trash))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 119: // STATE 37 - trash_bin.pml:102 - [printf('Bin: Weighing trash on trap door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		Printf("Bin: Weighing trash on trap door.\n");
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 38 - trash_bin.pml:104 - [((bin_status.trap_door==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.bin_status.trap_door==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 39 - trash_bin.pml:105 - [trash_weighted!bin_status.trash_on_trap_door] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (q_full(now.trash_weighted))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.trash_weighted);
		sprintf(simtmp, "%d", ((int)now.bin_status.trash_on_trap_door)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.trash_weighted, 0, ((int)now.bin_status.trash_on_trap_door), 0, 1);
		if (q_zero(now.trash_weighted)) { boq = now.trash_weighted; };
		_m = 2; goto P999; /* 0 */
	case 122: // STATE 42 - trash_bin.pml:109 - [(((bin_status.lock_out_door==2)&&(bin_status.trash_in_outer_door>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!(((now.bin_status.lock_out_door==2)&&(((int)now.bin_status.trash_in_outer_door)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 43 - trash_bin.pml:111 - [(((bin_status.trap_door==2)&&(bin_status.trash_on_trap_door==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((now.bin_status.trap_door==2)&&(((int)now.bin_status.trash_on_trap_door)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 44 - trash_bin.pml:112 - [printf('Bin: Transferring trash from outer door to trap door.\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		Printf("Bin: Transferring trash from outer door to trap door.\n");
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 45 - trash_bin.pml:113 - [bin_status.trash_on_trap_door = bin_status.trash_in_outer_door] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_on_trap_door);
		now.bin_status.trash_on_trap_door = ((int)now.bin_status.trash_in_outer_door);
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 46 - trash_bin.pml:114 - [bin_status.trash_in_outer_door = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 52 - trash_bin.pml:118 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

