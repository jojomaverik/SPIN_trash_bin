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
	case 3: // STATE 1 - trash_bin.pml:342 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - trash_bin.pml:344 - [((proc<1))] (14:0:11 - 1)
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
	case 5: // STATE 14 - trash_bin.pml:357 - [(run bin(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][14] = 1;
		if (!(addproc(II, 1, 0, ((int)((P5 *)_this)->proc), 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - trash_bin.pml:358 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[5][15] = 1;
		(trpt+1)->bup.oval = ((int)((P5 *)_this)->proc);
		((P5 *)_this)->proc = (((int)((P5 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P5 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 16 - trash_bin.pml:359 - [((proc==1))] (24:0:4 - 1)
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
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)_this)->_26_7_trash_size);
		((P5 *)_this)->_26_7_trash_size = 2;
#ifdef VAR_RANGES
		logval(":init::trash_size", ((int)((P5 *)_this)->_26_7_trash_size));
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
	case 8: // STATE 21 - trash_bin.pml:364 - [proc = 0] (0:24:3 - 3)
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
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)_this)->_26_7_trash_size);
		((P5 *)_this)->_26_7_trash_size = 2;
#ifdef VAR_RANGES
		logval(":init::trash_size", ((int)((P5 *)_this)->_26_7_trash_size));
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
	case 9: // STATE 24 - trash_bin.pml:367 - [(run user(proc,trash_size))] (0:0:2 - 1)
		IfNotBlocked
		reached[5][24] = 1;
		if (!(addproc(II, 1, 3, ((int)((P5 *)_this)->proc), ((int)((P5 *)_this)->_26_7_trash_size))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->proc = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _26_7_trash_size */  (trpt+1)->bup.ovals[1] = ((P5 *)_this)->_26_7_trash_size;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->_26_7_trash_size = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 25 - trash_bin.pml:370 - [(run server())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][25] = 1;
		if (!(addproc(II, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 26 - trash_bin.pml:372 - [(run truck())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][26] = 1;
		if (!(addproc(II, 1, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 27 - trash_bin.pml:375 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][27] = 1;
		if (!(addproc(II, 1, 4, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 29 - trash_bin.pml:377 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 14: // STATE 1 - trash_bin.pml:294 - [scan_card_user?user_id] (0:0:2 - 1)
		reached[4][1] = 1;
		if (q_zero(now.scan_card_user))
		{	if (boq != now.scan_card_user) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.scan_card_user) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P4 *)_this)->user_id);
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
		if (TstOnly) return 1; /* TT */
		/* dead 2: user_id */  (trpt+1)->bup.ovals[1] = ((P4 *)_this)->user_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->user_id = 0;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 2 - trash_bin.pml:295 - [user_valid?user_id,1] (0:0:1 - 1)
		reached[4][2] = 1;
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
	case 16: // STATE 3 - trash_bin.pml:297 - [((bin_status.full_capacity==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((int)now.bin_status.full_capacity)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - trash_bin.pml:298 - [can_deposit_trash!user_id,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
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
	case 18: // STATE 5 - trash_bin.pml:299 - [change_bin!2,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][5] = 1;
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
	case 19: // STATE 7 - trash_bin.pml:301 - [can_deposit_trash!user_id,0] (0:0:0 - 1)
		IfNotBlocked
		reached[4][7] = 1;
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
	case 20: // STATE 10 - trash_bin.pml:305 - [((bin_status.trash_uncompressed==max_capacity))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		if (!((((int)now.bin_status.trash_uncompressed)==((int)now.max_capacity))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 11 - trash_bin.pml:306 - [bin_status.full_capacity = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.full_capacity);
		now.bin_status.full_capacity = 1;
#ifdef VAR_RANGES
		logval("bin_status.full_capacity", ((int)now.bin_status.full_capacity));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 12 - trash_bin.pml:307 - [request_truck!bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][12] = 1;
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
	case 23: // STATE 13 - trash_bin.pml:310 - [change_truck?3,bin_id] (0:0:1 - 1)
		reached[4][13] = 1;
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
	case 24: // STATE 14 - trash_bin.pml:311 - [change_truck!2,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[4][14] = 1;
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
	case 25: // STATE 15 - trash_bin.pml:312 - [change_truck?1,bin_id] (0:0:1 - 1)
		reached[4][15] = 1;
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
	case 26: // STATE 16 - trash_bin.pml:313 - [bin_status.full_capacity = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.full_capacity);
		now.bin_status.full_capacity = 0;
#ifdef VAR_RANGES
		logval("bin_status.full_capacity", ((int)now.bin_status.full_capacity));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 17 - trash_bin.pml:315 - [user_closed_outer_door?1] (0:0:0 - 1)
		reached[4][17] = 1;
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
	case 28: // STATE 18 - trash_bin.pml:316 - [change_bin!2,2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][18] = 1;
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
	case 29: // STATE 19 - trash_bin.pml:317 - [weigh_trash!1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][19] = 1;
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
	case 30: // STATE 20 - trash_bin.pml:319 - [trash_weighted?bin_status.trash_on_trap_door] (0:0:1 - 1)
		reached[4][20] = 1;
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
	case 31: // STATE 21 - trash_bin.pml:321 - [change_bin!1,1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][21] = 1;
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
	case 32: // STATE 22 - trash_bin.pml:322 - [bin_changed?1,1] (0:0:0 - 1)
		reached[4][22] = 1;
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
	case 33: // STATE 23 - trash_bin.pml:323 - [change_ram!1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][23] = 1;
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
	case 34: // STATE 24 - trash_bin.pml:324 - [ram_changed?1] (0:0:0 - 1)
		reached[4][24] = 1;
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
	case 35: // STATE 25 - trash_bin.pml:325 - [change_ram!2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][25] = 1;
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
	case 36: // STATE 26 - trash_bin.pml:326 - [ram_changed?1] (0:0:0 - 1)
		reached[4][26] = 1;
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
	case 37: // STATE 27 - trash_bin.pml:327 - [change_bin!2,2] (0:0:0 - 1)
		IfNotBlocked
		reached[4][27] = 1;
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
	case 38: // STATE 28 - trash_bin.pml:328 - [bin_changed?2,1] (0:0:0 - 1)
		reached[4][28] = 1;
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
	case 39: // STATE 33 - trash_bin.pml:331 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC user */
	case 40: // STATE 1 - trash_bin.pml:252 - [(!(has_trash))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!( !(((int)now.has_trash))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 2 - trash_bin.pml:253 - [has_trash = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.has_trash);
		now.has_trash = 1;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 3 - trash_bin.pml:255 - [(has_trash)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((int)now.has_trash)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 4 - trash_bin.pml:257 - [scan_card_user!user_id] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
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
	case 44: // STATE 5 - trash_bin.pml:259 - [can_deposit_trash?user_id,1] (0:0:1 - 1)
		reached[3][5] = 1;
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
	case 45: // STATE 6 - trash_bin.pml:260 - [bin_changed?2,1] (0:0:0 - 1)
		reached[3][6] = 1;
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
	case 46: // STATE 7 - trash_bin.pml:262 - [change_bin!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][7] = 1;
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
	case 47: // STATE 8 - trash_bin.pml:263 - [bin_changed?3,1] (0:0:0 - 1)
		reached[3][8] = 1;
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
	case 48: // STATE 9 - trash_bin.pml:267 - [((bin_status.trash_in_outer_door==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!((((int)now.bin_status.trash_in_outer_door)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 10 - trash_bin.pml:269 - [bin_status.trash_in_outer_door = trash_size] (0:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = ((int)((P3 *)_this)->trash_size);
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 11 - trash_bin.pml:270 - [has_trash = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)now.has_trash);
		now.has_trash = 0;
#ifdef VAR_RANGES
		logval("has_trash", ((int)now.has_trash));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 12 - trash_bin.pml:271 - [((bin_status.trash_in_outer_door>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)now.bin_status.trash_in_outer_door)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 17 - trash_bin.pml:277 - [change_bin!3,2] (0:0:0 - 3)
		IfNotBlocked
		reached[3][17] = 1;
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
	case 53: // STATE 18 - trash_bin.pml:278 - [bin_changed?3,1] (0:0:0 - 1)
		reached[3][18] = 1;
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
	case 54: // STATE 19 - trash_bin.pml:279 - [can_deposit_trash?user_id,0] (0:0:1 - 1)
		reached[3][19] = 1;
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
	case 55: // STATE 26 - trash_bin.pml:283 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC truck */
	case 56: // STATE 1 - trash_bin.pml:237 - [request_truck?bin_id] (0:0:1 - 1)
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
	case 57: // STATE 2 - trash_bin.pml:238 - [change_truck!3,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
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
	case 58: // STATE 3 - trash_bin.pml:239 - [change_truck?2,bin_id] (0:0:1 - 1)
		reached[2][3] = 1;
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
	case 59: // STATE 4 - trash_bin.pml:240 - [empty_bin!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
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
	case 60: // STATE 5 - trash_bin.pml:241 - [bin_emptied?1] (0:0:0 - 1)
		reached[2][5] = 1;
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
	case 61: // STATE 6 - trash_bin.pml:242 - [change_truck!1,bin_id] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
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
	case 62: // STATE 10 - trash_bin.pml:244 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC server */
	case 63: // STATE 1 - trash_bin.pml:221 - [check_user?user_id] (0:0:1 - 1)
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
	case 64: // STATE 2 - trash_bin.pml:224 - [((user_id!=42))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)_this)->user_id)!=42)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 3 - trash_bin.pml:225 - [user_valid!user_id,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
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
	case 66: // STATE 4 - trash_bin.pml:226 - [((user_id==42))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)((P1 *)_this)->user_id)==42)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 5 - trash_bin.pml:227 - [user_valid!user_id,0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
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
	case 68: // STATE 11 - trash_bin.pml:230 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC bin */
	case 69: // STATE 1 - trash_bin.pml:106 - [change_bin?3,2] (0:0:0 - 1)
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
	case 70: // STATE 2 - trash_bin.pml:108 - [((bin_status.out_door==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.bin_status.out_door==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 3 - trash_bin.pml:109 - [bin_status.out_door = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.bin_status.out_door;
		now.bin_status.out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.out_door", now.bin_status.out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 4 - trash_bin.pml:110 - [bin_changed!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
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
	case 73: // STATE 5 - trash_bin.pml:111 - [user_closed_outer_door!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
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
	case 74: // STATE 8 - trash_bin.pml:113 - [change_bin?3,1] (0:0:0 - 1)
		reached[0][8] = 1;
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
	case 75: // STATE 9 - trash_bin.pml:115 - [(((bin_status.out_door==2)&&(bin_status.lock_out_door==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((now.bin_status.out_door==2)&&(now.bin_status.lock_out_door==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 10 - trash_bin.pml:116 - [bin_status.out_door = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.bin_status.out_door;
		now.bin_status.out_door = 1;
#ifdef VAR_RANGES
		logval("bin_status.out_door", now.bin_status.out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 11 - trash_bin.pml:117 - [bin_changed!3,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
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
	case 78: // STATE 14 - trash_bin.pml:119 - [change_bin?2,2] (0:0:0 - 1)
		reached[0][14] = 1;
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
	case 79: // STATE 15 - trash_bin.pml:121 - [(((bin_status.lock_out_door==1)&&(bin_status.out_door==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((now.bin_status.lock_out_door==1)&&(now.bin_status.out_door==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 16 - trash_bin.pml:123 - [bin_status.lock_out_door = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.bin_status.lock_out_door;
		now.bin_status.lock_out_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.lock_out_door", now.bin_status.lock_out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 17 - trash_bin.pml:126 - [((((bin_status.trash_in_outer_door>0)&&(bin_status.trap_door==2))&&(bin_status.trash_on_trap_door==0)))] (28:0:2 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((((int)now.bin_status.trash_in_outer_door)>0)&&(now.bin_status.trap_door==2))&&(((int)now.bin_status.trash_on_trap_door)==0))))
			continue;
		/* merge: bin_status.trash_on_trap_door = bin_status.trash_in_outer_door(28, 18, 28) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.bin_status.trash_on_trap_door);
		now.bin_status.trash_on_trap_door = ((int)now.bin_status.trash_in_outer_door);
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		/* merge: bin_status.trash_in_outer_door = 0(28, 19, 28) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		/* merge: .(goto)(28, 26, 28) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 82: // STATE 26 - trash_bin.pml:138 - [.(goto)] (0:28:0 - 3)
		IfNotBlocked
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 20 - trash_bin.pml:130 - [((((bin_status.trash_in_outer_door>0)&&(bin_status.trap_door==2))&&(bin_status.trash_on_trap_door>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((((int)now.bin_status.trash_in_outer_door)>0)&&(now.bin_status.trap_door==2))&&(((int)now.bin_status.trash_on_trap_door)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 21 - trash_bin.pml:132 - [(1)] (28:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(28, 26, 28) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 22 - trash_bin.pml:133 - [(((bin_status.trash_in_outer_door>0)&&(bin_status.trap_door==1)))] (28:0:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((((int)now.bin_status.trash_in_outer_door)>0)&&(now.bin_status.trap_door==1))))
			continue;
		/* merge: bin_status.trash_uncompressed = (bin_status.trash_uncompressed+bin_status.trash_in_outer_door)(28, 23, 28) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.bin_status.trash_uncompressed);
		now.bin_status.trash_uncompressed = (((int)now.bin_status.trash_uncompressed)+((int)now.bin_status.trash_in_outer_door));
#ifdef VAR_RANGES
		logval("bin_status.trash_uncompressed", ((int)now.bin_status.trash_uncompressed));
#endif
		;
		/* merge: bin_status.trash_in_outer_door = 0(28, 24, 28) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bin_status.trash_in_outer_door);
		now.bin_status.trash_in_outer_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_in_outer_door", ((int)now.bin_status.trash_in_outer_door));
#endif
		;
		/* merge: .(goto)(28, 26, 28) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 86: // STATE 28 - trash_bin.pml:139 - [bin_changed!2,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
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
	case 87: // STATE 31 - trash_bin.pml:141 - [change_bin?2,1] (0:0:0 - 1)
		reached[0][31] = 1;
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
	case 88: // STATE 32 - trash_bin.pml:143 - [(((bin_status.lock_out_door==2)&&(bin_status.out_door==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(((now.bin_status.lock_out_door==2)&&(now.bin_status.out_door==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 33 - trash_bin.pml:144 - [bin_status.lock_out_door = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.bin_status.lock_out_door;
		now.bin_status.lock_out_door = 1;
#ifdef VAR_RANGES
		logval("bin_status.lock_out_door", now.bin_status.lock_out_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 34 - trash_bin.pml:145 - [bin_changed!2,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
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
	case 91: // STATE 37 - trash_bin.pml:148 - [weigh_trash?1] (0:0:0 - 1)
		reached[0][37] = 1;
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
	case 92: // STATE 38 - trash_bin.pml:150 - [((bin_status.trap_door==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.bin_status.trap_door==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 39 - trash_bin.pml:151 - [trash_weighted!bin_status.trash_on_trap_door] (0:0:0 - 1)
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
	case 94: // STATE 42 - trash_bin.pml:153 - [change_bin?1,2] (0:0:0 - 1)
		reached[0][42] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_bin, 0, 0, 0)) continue;
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
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
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
	case 95: // STATE 43 - trash_bin.pml:155 - [(((bin_status.trap_door==1)&&(bin_status.ram==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((now.bin_status.trap_door==1)&&(now.bin_status.ram==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 44 - trash_bin.pml:156 - [bin_status.trap_door = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.bin_status.trap_door;
		now.bin_status.trap_door = 2;
#ifdef VAR_RANGES
		logval("bin_status.trap_door", now.bin_status.trap_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 45 - trash_bin.pml:157 - [bin_changed!1,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 1, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 46 - trash_bin.pml:158 - [(((bin_status.trap_door==1)&&(bin_status.ram==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!(((now.bin_status.trap_door==1)&&(now.bin_status.ram==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 47 - trash_bin.pml:159 - [bin_status.trap_destroyed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trap_destroyed);
		now.bin_status.trap_destroyed = 1;
#ifdef VAR_RANGES
		logval("bin_status.trap_destroyed", ((int)now.bin_status.trap_destroyed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 48 - trash_bin.pml:160 - [bin_changed!1,0] (0:0:0 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 1, 0, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 101: // STATE 51 - trash_bin.pml:162 - [change_bin?1,1] (0:0:0 - 1)
		reached[0][51] = 1;
		if (q_zero(now.change_bin))
		{	if (boq != now.change_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_bin) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_bin, 0, 0, 0)) continue;
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
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
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
	case 102: // STATE 52 - trash_bin.pml:164 - [((bin_status.trap_door==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.bin_status.trap_door==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 53 - trash_bin.pml:166 - [bin_status.trap_door = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.bin_status.trap_door;
		now.bin_status.trap_door = 1;
#ifdef VAR_RANGES
		logval("bin_status.trap_door", now.bin_status.trap_door);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 54 - trash_bin.pml:169 - [((bin_status.trash_on_trap_door>0))] (62:0:2 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((int)now.bin_status.trash_on_trap_door)>0)))
			continue;
		/* merge: bin_status.trash_uncompressed = (bin_status.trash_uncompressed+bin_status.trash_on_trap_door)(62, 55, 62) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.bin_status.trash_uncompressed);
		now.bin_status.trash_uncompressed = (((int)now.bin_status.trash_uncompressed)+((int)now.bin_status.trash_on_trap_door));
#ifdef VAR_RANGES
		logval("bin_status.trash_uncompressed", ((int)now.bin_status.trash_uncompressed));
#endif
		;
		/* merge: bin_status.trash_on_trap_door = 0(62, 56, 62) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bin_status.trash_on_trap_door);
		now.bin_status.trash_on_trap_door = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_on_trap_door", ((int)now.bin_status.trash_on_trap_door));
#endif
		;
		/* merge: .(goto)(62, 60, 62) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 105: // STATE 60 - trash_bin.pml:175 - [.(goto)] (0:62:0 - 2)
		IfNotBlocked
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 58 - trash_bin.pml:173 - [(1)] (62:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(62, 60, 62) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 107: // STATE 62 - trash_bin.pml:176 - [bin_changed!1,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (q_full(now.bin_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_changed, 0, 1, 1, 2);
		if (q_zero(now.bin_changed)) { boq = now.bin_changed; };
		_m = 2; goto P999; /* 0 */
	case 108: // STATE 65 - trash_bin.pml:179 - [change_ram?1] (0:0:0 - 1)
		reached[0][65] = 1;
		if (q_zero(now.change_ram))
		{	if (boq != now.change_ram) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_ram) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_ram, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_ram-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_ram, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_ram);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_ram))
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
	case 109: // STATE 66 - trash_bin.pml:181 - [((bin_status.ram==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!((now.bin_status.ram==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 67 - trash_bin.pml:183 - [bin_status.ram = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.bin_status.ram;
		now.bin_status.ram = 1;
#ifdef VAR_RANGES
		logval("bin_status.ram", now.bin_status.ram);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 68 - trash_bin.pml:185 - [((bin_status.trap_door==1))] (76:0:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.bin_status.trap_door==1)))
			continue;
		/* merge: bin_status.trash_compressed = (bin_status.trash_compressed+(bin_status.trash_uncompressed/2))(76, 69, 76) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.bin_status.trash_compressed);
		now.bin_status.trash_compressed = (((int)now.bin_status.trash_compressed)+(((int)now.bin_status.trash_uncompressed)/2));
#ifdef VAR_RANGES
		logval("bin_status.trash_compressed", ((int)now.bin_status.trash_compressed));
#endif
		;
		/* merge: bin_status.trash_uncompressed = 0(76, 70, 76) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bin_status.trash_uncompressed);
		now.bin_status.trash_uncompressed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_uncompressed", ((int)now.bin_status.trash_uncompressed));
#endif
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 112: // STATE 74 - trash_bin.pml:193 - [.(goto)] (0:76:0 - 2)
		IfNotBlocked
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 71 - trash_bin.pml:189 - [((bin_status.trap_door==2))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((now.bin_status.trap_door==2)))
			continue;
		/* merge: bin_status.trap_destroyed = 1(76, 72, 76) */
		reached[0][72] = 1;
		(trpt+1)->bup.oval = ((int)now.bin_status.trap_destroyed);
		now.bin_status.trap_destroyed = 1;
#ifdef VAR_RANGES
		logval("bin_status.trap_destroyed", ((int)now.bin_status.trap_destroyed));
#endif
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 114: // STATE 76 - trash_bin.pml:194 - [ram_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		if (q_full(now.ram_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ram_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ram_changed, 0, 1, 0, 1);
		if (q_zero(now.ram_changed)) { boq = now.ram_changed; };
		_m = 2; goto P999; /* 0 */
	case 115: // STATE 79 - trash_bin.pml:196 - [change_ram?2] (0:0:0 - 1)
		reached[0][79] = 1;
		if (q_zero(now.change_ram))
		{	if (boq != now.change_ram) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_ram) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_ram, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_ram-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_ram, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_ram);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_ram))
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
	case 116: // STATE 80 - trash_bin.pml:198 - [((bin_status.ram==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		if (!((now.bin_status.ram==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 81 - trash_bin.pml:199 - [bin_status.ram = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.oval = now.bin_status.ram;
		now.bin_status.ram = 2;
#ifdef VAR_RANGES
		logval("bin_status.ram", now.bin_status.ram);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 82 - trash_bin.pml:200 - [ram_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (q_full(now.ram_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ram_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ram_changed, 0, 1, 0, 1);
		if (q_zero(now.ram_changed)) { boq = now.ram_changed; };
		_m = 2; goto P999; /* 0 */
	case 119: // STATE 85 - trash_bin.pml:203 - [empty_bin?1] (0:0:0 - 1)
		reached[0][85] = 1;
		if (q_zero(now.empty_bin))
		{	if (boq != now.empty_bin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.empty_bin) == 0) continue;

		XX=1;
		if (1 != qrecv(now.empty_bin, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.empty_bin-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.empty_bin, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.empty_bin);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.empty_bin))
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
	case 120: // STATE 86 - trash_bin.pml:205 - [((((bin_status.out_door==2)&&(bin_status.lock_out_door==2))&&(bin_status.ram==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		if (!((((now.bin_status.out_door==2)&&(now.bin_status.lock_out_door==2))&&(now.bin_status.ram==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 87 - trash_bin.pml:207 - [bin_status.trash_compressed = 0] (0:90:2 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.bin_status.trash_compressed);
		now.bin_status.trash_compressed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_compressed", ((int)now.bin_status.trash_compressed));
#endif
		;
		/* merge: bin_status.trash_uncompressed = 0(90, 88, 90) */
		reached[0][88] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bin_status.trash_uncompressed);
		now.bin_status.trash_uncompressed = 0;
#ifdef VAR_RANGES
		logval("bin_status.trash_uncompressed", ((int)now.bin_status.trash_uncompressed));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 122: // STATE 90 - trash_bin.pml:210 - [bin_emptied!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (q_full(now.bin_emptied))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.bin_emptied);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.bin_emptied, 0, 1, 0, 1);
		if (q_zero(now.bin_emptied)) { boq = now.bin_emptied; };
		_m = 2; goto P999; /* 0 */
	case 123: // STATE 96 - trash_bin.pml:213 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][96] = 1;
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

