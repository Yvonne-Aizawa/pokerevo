	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

	.global lbl_80405D60
lbl_80405D60:
	.asciz "sound/pbr_sound.brsar"

	.balign 4, 0
	.global lbl_80405D78
lbl_80405D78:
	.asciz "main render"


	.balign 8, 0
	.global lbl_80405D88
lbl_80405D88:
	.asciz "2007-09-14 10:28:31 EU"

	.balign 4, 0
	.global lbl_80405DA0
lbl_80405DA0:
	.asciz "/homeBtn.arc"

	.balign 4, 0
	.global lbl_80405DB0
lbl_80405DB0:
	.asciz "/homeBtn_ENG.arc"

	.balign 4, 0
	.global lbl_80405DC4
lbl_80405DC4:
	.asciz "/homeBtn_GER.arc"

	.balign 4, 0
	.global lbl_80405DD8
lbl_80405DD8:
	.asciz "/homeBtn_FRA.arc"

	.balign 4, 0
	.global lbl_80405DEC
lbl_80405DEC:
	.asciz "/homeBtn_SPA.arc"

	.balign 4, 0
	.global lbl_80405E00
lbl_80405E00:
	.asciz "/homeBtn_ITA.arc"

	.balign 4, 0
	.global lbl_80405E14
lbl_80405E14:
	.asciz "/homeBtn_NED.arc"

	.balign 4, 0
	.global lbl_80405E28
lbl_80405E28:
	.asciz "/SpeakerSe.arc"

	.balign 4, 0
	.global lbl_80405E38
lbl_80405E38:
	.asciz "/home.csv"

	.balign 4, 0
	.global lbl_80405E44
lbl_80405E44:
	.asciz "/config.txt"

	.balign 4, 0
	.global lbl_80405E50
lbl_80405E50:
	.asciz "/homeBtnIcon.tpl"

	.balign 4, 0
	.global lbl_80405E64
lbl_80405E64: # jump table
	.4byte lbl_80009E6C, lbl_80009E7C, lbl_80009E8C, lbl_80009E9C
	.4byte lbl_80009EAC, lbl_80009EBC, lbl_80009ECC

	.global lbl_80405E80
lbl_80405E80:
	.asciz "/HomeButtonSe.brsar"

	.balign 8, 0
	.global lbl_80405E98
lbl_80405E98:
	.asciz "preprocess"

	.balign 4, 0
	.global lbl_80405EA4
lbl_80405EA4:
	.asciz "postprocess"

	.balign 4, 0
	.global lbl_80405EB0
lbl_80405EB0:
	.4byte lbl_8063D2E8

	.balign 8, 0
	.global lbl_80405EB8
lbl_80405EB8:
	.4byte func_8000A7D0, func_8000A810, func_8000A814, func_8000A91C
	.4byte func_8000A95C, func_8000A9B4, func_8000AA94, func_8000AA90
	.4byte func_8000AA88, func_8000AA80, func_8000AA98

	.balign 4, 0
	.global lbl_80405EE4
lbl_80405EE4:
	.asciz "FloorGlobalFuntion"

	.balign 4, 0
	.global lbl_80405EF8
lbl_80405EF8:
	.4byte lbl_8063D2F0

	.balign 8, 0
	.global lbl_80405F00
lbl_80405F00:
	.4byte 0x00000000

	.balign 4, 0
	.global lbl_80405F04
lbl_80405F04:
	.asciz "gsapi::FloorModuleInterface"

	.balign 4, 0
	.global lbl_80405F20
lbl_80405F20:
	.asciz "FloorGlobalFuntion"

	.balign 8, 0
	.global lbl_80405F38
lbl_80405F38:
	.4byte lbl_8063D2F8

	.balign 8, 0
	.global lbl_80405F40
lbl_80405F40:
	.4byte func_8000AC44

	.global lbl_80405F44
lbl_80405F44:
	.asciz "PBRFloorData"

	.balign 4, 0
	.global lbl_80405F54
lbl_80405F54:
	.4byte lbl_8063D308, 0x00000000

	.balign 8, 0
	.global lbl_80405F60
lbl_80405F60:
    .4byte lbl_8063D300

	.balign 8, 0
	.global lbl_80405F68
lbl_80405F68:
	.4byte func_8000AACC, func_8000AAD8, func_8000AAE4, DrawableCharacter_GetAnimController
	.4byte func_8000AAF0, func_8000AAFC, func_8000AB18

	.global lbl_80405F84
lbl_80405F84:
	.asciz "PBRFloor"

	.balign 4, 0
	.global lbl_80405F90
lbl_80405F90:
	.4byte lbl_8063D310, 0x00000000, 0x00000000

	.balign 4, 0
	.global lbl_80405F9C
lbl_80405F9C:
	.asciz "gsapi::GSfloorData"

	.balign 4, 0
	.global lbl_80405FB0
lbl_80405FB0:
	.asciz "gsapi::GSfloor"

	.balign 4, 0
	.global lbl_80405FC0
lbl_80405FC0:
	.asciz "## CHECK ## FLAGID_ColosseumXX_WL is not found.\n"

	.balign 4, 0
	.global lbl_80405FF4
lbl_80405FF4:
	.4byte lbl_8000C3B4, lbl_8000C3D0, lbl_8000C3EC, lbl_8000C408
	.4byte lbl_8000C424, lbl_8000C440, lbl_8000C470, lbl_8000C48C
	.4byte lbl_8000C4BC, lbl_8000C4D8

	.balign 4, 0
	.global lbl_8040601C
lbl_8040601C:
	.asciz "## CHECK ## FLAGID_ColosseumXX_second is not found.\n"

	.balign 4, 0
	.global lbl_80406054
lbl_80406054:
	.4byte lbl_8000C5C0, lbl_8000C5DC, lbl_8000C5F8, lbl_8000C614
	.4byte lbl_8000C630, lbl_8000C64C, lbl_8000C67C, lbl_8000C698
	.4byte lbl_8000C6C8, lbl_8000C6E4

	.balign 4, 0
	.global lbl_8040607C
lbl_8040607C:
	.asciz "[Jikkyo] SKIP BATTLE MSG [%d] : %cb_%03d(%d) (timing is bad, already turn-end phase.)\n"

	.global lbl_804060D3
lbl_804060D3:
	.asciz "[Jikkyo] PLAY BATTLE MSG [%d] : %cb_%03d(%d)\n"

	.global lbl_80406101
lbl_80406101:
	.asciz "[Jikkyo] SKIP BATTLE MSG (home button fade timing)\n"

	.global lbl_80406135
lbl_80406135:
	.asciz "[Jikkyo] SKIP BATTLE MSG [%d] : %cb_%03d(%d) (timing is bad)\n"

	.global lbl_80406173
lbl_80406173:
	.asciz "[Jikkyo] BATTLE MSG [%d] is not loaded. : %cb_%03d(%d)\n"

	.global lbl_804061AB
lbl_804061AB:
	.asciz "StartJikkyoPre"

	.global lbl_804061BA
lbl_804061BA:
	.asciz "[Jikkyo] Func : %s\n"

	.global lbl_804061CE
lbl_804061CE:
	.asciz "## WARNING ## Input Heap : %d, Battle Heap : %d\n"

	.global lbl_804061FF
lbl_804061FF:
	.asciz "[Jikkyo] INPUT HEAP  : [Used]%d(KByte) [Free]%d(KByte) [All]%d(KByte)\n"

	.global lbl_80406246
lbl_80406246:
	.asciz "[Jikkyo] BATTLE HEAP : [Used]%d(KByte) [Free]%d(KByte) [All]%d(KByte)\n"

	.global lbl_8040628D
lbl_8040628D:
	.asciz "StartJikkyo"

	.global lbl_80406299
lbl_80406299:
	.asciz "## ERROR ## StartJikkyo()\n"

	.global lbl_804062B4
lbl_804062B4:
	.asciz "EndJikkyo"

	.global lbl_804062BE
lbl_804062BE:
	.asciz "[Jikkyo] SKIP POKEMON RETURN MSG %cb_%03d(%d). battle msg with poke sound is left.\n"

	.global lbl_80406312
lbl_80406312:
	.asciz "[Jikkyo] SKIP INPUT MSG (home button fade timing)\n"

	.global lbl_80406345
lbl_80406345:
	.asciz "[Jikkyo] INPUT MSG : %u (SoundMsg Id) Return Pokemon\n"

	.global lbl_8040637B
lbl_8040637B:
	.asciz "## ERROR ## Play SoundMsg Id : %u\n"

	.global lbl_8040639E
lbl_8040639E:
	.asciz "[Jikkyo] FADE OUT INPUT MSG (home button fade timing)\n"

	.global lbl_804063D5
lbl_804063D5:
	.asciz "[Jikkyo] SKIP REQUEST_RETURN_POKEMON %cb_%03d(%d)\n"

	.global lbl_80406408
lbl_80406408:
	.asciz "[Jikkyo] INPUT MSG : JIKKYO_REQUEST_APPEAR_POKEMON\n"

	.global lbl_8040643C
lbl_8040643C:
	.asciz "## ERROR ## Can't play JIKKYO_REQUEST_APPEAR_POKEMON\n"

	.global lbl_80406472
lbl_80406472:
	.asciz "## ERROR ## pokemon sound message is empty. : %d (Pokemon ID)\n"

	.global lbl_804064B1
lbl_804064B1:
	.asciz "[Jikkyo] SKIP POKEMON APPEAR MSG. input msg is left.\n"

	.global lbl_804064E7
lbl_804064E7:
	.asciz "[Jikkyo] Request Count : %d -> %d\n"

	.balign 4, 0
	.global lbl_8040650C
lbl_8040650C:
	.4byte 0x8000DD98, 0x8000D940, 0x8000D95C, 0x8000DAB4
	.4byte 0x8000DC8C, 0x8000DCA8, 0x8000DCEC, 0x8000DD40
	.4byte 0x8000DD60, 0x8000DD88

	.global lbl_80406534
lbl_80406534:
	.ascii "[Jikkyo] <sound play count> %d(All), %d(Jikkyo)\n"
	.byte 0x00
	.ascii "[Jikkyo] ---- Parse Log ( turn : %d ) ----\n"
	.byte 0x00
	.ascii "[Jikkyo] BATTLE MSG [%d] is playing but next turn start. %cb_%03d(%d)\n"
	.byte 0x00
	.ascii "[Jikkyo] (BATTLE MSG is empty.)\n"
	.byte 0x00
	.ascii "## ERROR ## BATTLE_MSG_REQUEST_LOAD but empty msg.\n"
	.byte 0x00

	.global lbl_8040662D
lbl_8040662D:
	.ascii "## WARNING ## menuClientNo (%d) is invalid.\n"
	.byte 0x00

.global lbl_8040665A
lbl_8040665A:
	.ascii "## ERROR ## WAIT INPUT MSG will be setup, but INPUT MSG is still playing.\n"
	.byte 0x00
.global lbl_804066A5
lbl_804066A5:
	.ascii "## ERROR ## monsId is different in Change Pokemon.\n"
	.byte 0x00
	.ascii "## ERROR ## Pokemon server cannot be accessed.\n"
	.byte 0x00
	.ascii "## ERROR ## floor ID in League Battle is invalid.\n"
	.byte 0x00
	.ascii "## ERROR ## %d:mastersBattleSet (0-7)\n"
	.byte 0x00
	.ascii "BattleRule  : Unknown\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040677C
lbl_8040677C:
	.4byte 0x8000FAF4, 0x8000FB28, 0x8000FB5C, 0x8000FB90
	.4byte 0x8000FBC4, 0x8000FBF8, 0x8000FC2C, 0x8000FC60
.global lbl_8040679C
lbl_8040679C:
	.4byte 0x8000F930, 0x8000F964, 0x8000FA00, 0x8000FCB0
	.4byte 0x8000F998, 0x8000F9CC, 0x8000FA00, 0x8000FA34
	.4byte 0x8000FA68, 0x8000FA9C, 0x8000FA00, 0x8000FCB0
	.4byte 0x8000FCB0, 0x8000FAD0
.global lbl_804067D4
lbl_804067D4:
	.ascii "## ERROR ## RoundNum (%d) is bad.\n"
	.byte 0x00
.global lbl_804067F7
lbl_804067F7:
	.ascii "## ERROR ## Round %d : %d (0:W,1:L,2:D)\n"
	.byte 0x00
.global lbl_80406820
lbl_80406820:
	.ascii "## ERROR ## BattleNum (%d) is bad.\n"
	.byte 0x00
.global lbl_80406844
lbl_80406844:
	.ascii "## ERROR ## BattleNum (%d) : %d (0:W,1:L,2:D)\n"
	.byte 0x00
.global lbl_80406873
lbl_80406873:
	.ascii "## CHECK ## W:%d, L:%d, D:%d\n"
	.byte 0x00
.global lbl_80406891
lbl_80406891:
	.ascii "[Jikkyo] LEAGUE %d:SelfOrder, %d:SelfWinPnt, %d:LastWinPnt, %d:OthersWinPntHi\n"
	.byte 0x00
.global lbl_804068E0
lbl_804068E0:
	.ascii "[Jikkyo] %d:BattleNum %d:RecordWinNum, %d:result(0:Win,1:Lose,2:Draw)\n"
	.byte 0x00
	.ascii "## ERROR ## AppearTrainerSoundMsg is called by not-introduce stage.\n"
	.byte 0x00
	.ascii "[Jikkyo] MENU_BATTLE_ENTRY_DATA::MapNum(%d) is not set.\n"
	.byte 0x00
	.ascii "## CHECK ## if only debug menu encount, ok.\n"
	.byte 0x00
	.ascii "## ERROR ## WinLose Flag is bad.\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. MASTERS\n"
	.byte 0x00
	.ascii "## ERROR ## battleType and floor is mismatch.\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. RENTAL\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. TRADING\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. PRIME\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. TEAM\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. FORTUNE\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. TOUNAMENT\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. TOURNAMENT2\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. EGG\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. LEAGUE\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. SELECTION\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. LEGACY\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. SURVIVAL\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. GRANDPRIX\n"
	.byte 0x00
	.ascii "## ERROR ## Unknown Colosseum\n"
	.byte 0x00
	.ascii "[Jikkyo] rule and floor is mismatch. TOURNAMENT\n"
	.byte 0x00
	.ascii "## WARNING ## ba120 floorID is mismatch.\n"
	.byte 0x00
	.ascii "[Jikkyo] OPENING MESSAGE : %d(SoundDataID)\n"
	.byte 0x00
	.ascii "[Jikkyo] (OPENING MESSAGE is empty.)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80406D74
lbl_80406D74:
	.4byte 0x80011C10, 0x80011C10, 0x80011C10, 0x80011C80
	.4byte 0x80011D40, 0x80011DC8, 0x80011E50, 0x80011C10
	.4byte 0x80011ED8, 0x80011F60, 0x80011FE8, 0x80012070
	.4byte 0x80012690, 0x80012690
.global lbl_80406DAC
lbl_80406DAC:
	.4byte 0x80011930, 0x80011960, 0x80011990, 0x800119C0
	.4byte 0x800119F0, 0x80011A20, 0x80011A50, 0x80011A80
	.4byte 0x80011AB0, 0x80011AE0, 0x80011B10, 0x80011B40
	.4byte 0x80011BAC, 0x80011BE8
.global lbl_80406DE4
lbl_80406DE4:
	.incbin "baserom.dol", 0x402EE4, 0xE0
.global lbl_80406EC4
lbl_80406EC4:
	.incbin "baserom.dol", 0x402FC4, 0x304
.global lbl_804071C8
lbl_804071C8:
	.incbin "baserom.dol", 0x4032C8, 0xDA
.global lbl_804072A2
lbl_804072A2:
	.ascii "playing wait count error"
	.byte 0x00
.global lbl_804072BB
lbl_804072BB:
	.ascii "## ERROR ## input sound list is now playing. but next request is coming\n"
	.byte 0x00
.global lbl_80407304
lbl_80407304:
	.ascii "[Jikkyo] INTRO MESSAGE : %bb_%03d(%d)\n"
	.byte 0x00
	.ascii "## ERROR ## monsNo (%d) is invalid. (9011)\n"
	.byte 0x00
	.ascii "## ERROR ## monsNo (%d) is invalid. (9012)\n"
	.byte 0x00
	.ascii "## ERROR ## monsNo (%d) is invalid. (9013)\n"
	.byte 0x00
	.ascii "## ERROR ## monsNo (%d) is invalid. (9014)\n"
	.byte 0x00
	.ascii "## ERROR ## monsNo (%d) is invalid. (9015)\n"
	.byte 0x00
	.ascii "## ERROR ## sound id (%d) is under 19000.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80407434
lbl_80407434:
	.4byte 0x800159C0, 0x80015A28, 0x80015A90, 0x80015AF8
	.4byte 0x80015B60, 0x80015CD8, 0x80015CD8, 0x80015CD8
	.4byte 0x80015CD8, 0x80015CD8, 0x80015BC8, 0x80015CD8
	.4byte 0x80015CD8, 0x80015CD8, 0x80015CD8, 0x80015CD8
	.4byte 0x80015CD8, 0x80015CD8, 0x80015CD8, 0x80015CD8
	.4byte 0x80015BD8, 0x80015C18, 0x80015C58, 0x80015C98
.global lbl_80407494
lbl_80407494:
	.ascii "[Jikkyo] Battle Situation : to middle stage.\n"
	.byte 0x00
.global lbl_804074C2
lbl_804074C2:
	.ascii "[Jikkyo] Battle Situation : to closing stage.\n"
	.byte 0x00
	.ascii "## ERROR ## m_logBuf is lost. but error (dvd read error etc.) is recovery.\n"
	.byte 0x00
	.ascii "## WARNING ## Battle Log is Empty in LogSysGetLogInfo"
	.byte 0x00
	.ascii "## WARNING ## the offset of log is invalid.\n"
	.byte 0x00
	.ascii "## ERROR ## timing of getting log is bad.\n"
	.byte 0x00
	.ascii "## WARNING ## FightInfo cnt is over 6 (command %d).\n"
	.byte 0x00
	.ascii "[Jikkyo] logofs  : %d -> %d\n"
	.byte 0x00
	.ascii "[Jikkyo] logsize : %d\n"
	.byte 0x00
	.ascii "[Jikkyo] logtype : %d\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_TURN (%d:phase, %d:turn)\n"
	.byte 0x00
	.ascii "[Jikkyo] ## BTLDSP_PANELOUT (wipe out) ##\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_POKEAPPEAR\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_SCRIPT %d:actClient %d:wazaNo %d:result %d:effCnt\n"
	.byte 0x00
	.ascii "[Jikkyo] PRSQ_WAZA_NO_TURN_START\n"
	.byte 0x00
	.ascii "[Jikkyo] PRSQ_WAZA_NO_TURN_END\n"
	.byte 0x00
	.ascii "## WARNING ## hinshi cnt in blue is over 2.\n"
	.byte 0x00
	.ascii "## WARNING ## hinshi cnt in red is over 2.\n"
	.byte 0x00
	.ascii "## ERROR ## FightInfo - %d:clientNo %d:wazaNo\n"
	.byte 0x00
	.ascii "[Jikkyo] skip FightInfo by _fPOKE_APPEAR in POKEACT. %d:actClientNo, %d:wazaNo\n"
	.byte 0x00
	.ascii "[Jikkyo] battle script is over 2 in single battle\n"
	.byte 0x00
	.ascii "[Jikkyo] logofs  : %d\n"
	.byte 0x00
	.ascii "[Jikkyo] battle script is over 4 in double battle\n"
	.byte 0x00
	.ascii "[Jikkyo] ## BTLDSP_PANELOUT (wipe in) ##\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_ACTEND\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_TURNEND\n"
	.byte 0x00
	.ascii "[Jikkyo] BTLDSP_TERMINATE\n"
	.byte 0x00
	.ascii "## WARNING ## SetupBattleSoundMsgActHinshi() is called, but hinshi is zero.\n"
	.byte 0x00
	.ascii "no candidate tb_140 for still playing prev battle msg\n"
	.byte 0x00
	.ascii "## ERROR ## HUKURODATAKI HINSI\n"
	.byte 0x00
	.ascii "## ERROR ## Percent %d is invalid.\n"
	.byte 0x00
	.ascii "## ERROR ## add faint client cnt is over 4.\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_STATUS_EFF_UP/DOWN\n"
	.byte 0x00
	.ascii "## CHECK ## ItemHPKaifukuMineMsg hpFrom %d -> hpTo %d\n"
	.byte 0x00
	.ascii "[Jikkyo] HP_INC %d:actClient %d:dmgClient\n"
	.byte 0x00
	.ascii "## ERROR ## dmg client is unknown. %d:wazaNo.\n"
	.byte 0x00
	.ascii "## ERROR ## dmg client is empty. %d:wazaNo.\n"
	.byte 0x00
.global lbl_80407AE4
lbl_80407AE4:
	.ascii "[Jikkyo] tokusei in %d:clientNo is lost.\n"
	.byte 0x00
	.ascii "## CHECK ## Pokemon Action is nothing.\n"
	.byte 0x00
	.ascii "## ERROR ## hpDecRatio %.3f is invalid.\n"
	.byte 0x00
	.ascii "## WARNING ## not double hit in RANGE_DOUBLE (hitCnt=%d)\n"
	.byte 0x00
	.ascii "[Jikkyo] tb_130a check\n"
	.byte 0x00
	.ascii "[Jikkyo] tb_130b check\n"
	.byte 0x00
	.ascii "[Jikkyo] Pokemon Action is empty.\n"
	.byte 0x00
	.ascii "## ERROR ## battle msg order is invalid.\n"
	.byte 0x00
	.ascii "[Jikkyo] Turn Topic Action[%u] hinshi\n"
	.byte 0x00
	.ascii "## ERROR ## Cannot create a faint message.\n"
	.byte 0x00
	.ascii "[Jikkyo] Turn Topic Action[%u]\n"
	.byte 0x00
	.ascii "[Jikkyo] Turn Topic is empty. %d:Turn\n"
	.byte 0x00
	.ascii "[Jikkyo] Yokodori Flag On %d:actionId\n"
	.byte 0x00
	.ascii "## CHECK ## Dmg Client Cnt is zero. %d:wazaNo %d:seqtNo\n"
	.byte 0x00
	.ascii "[Jikkyo] no candidate tb_140 for still playing prev battle msg\n"
	.byte 0x00
	.ascii "[Jikkyo] tb_116/tb_117 skip group repeat in act[%d].\n"
	.byte 0x00
	.ascii "[Jikkyo] tb_116/tb_117 skip double turn repeat.\n"
	.byte 0x00
	.ascii "[Jikko] RANGE_DOBUE, dmg client cnt is 2, but hp dec is not two.\n"
	.byte 0x00
	.ascii "## WARING ## RANGE_DOBUE, dmg client cnt is %d over 2.\n"
	.byte 0x00
	.ascii "[Jikkyo] tb_241,242 check\n"
	.byte 0x00
	.ascii "[Jikkyo] SKIP MISS MSG in Poke Act[0]\n"
	.byte 0x00
	.ascii "## CHECK ## Tame Waza : %d in NOHIT\n"
	.byte 0x00
	.ascii "[Jikkyo] SKIP NOHIT MSG in Poke Act[0]\n"
	.byte 0x00
	.ascii "## CHECK ## WAZANO_HENSIN msg check.\n"
	.byte 0x00
	.ascii "## CHECK ## WAZANO_HAATOSUWAPPU msg check.\n"
	.byte 0x00
	.ascii "## CHECK ## WAZANO_TORIKKURUUMU msg check.\n"
	.byte 0x00
	.ascii "[Jikkyo] form change msg is skip. %d:monsNo\n"
	.byte 0x00
	.ascii "## ERROR ## WAZANO_TORIKKURUUMU msg check.\n"
	.byte 0x00
	.ascii "## WARNING ## %d:tryWazaNo is bad.\n"
	.byte 0x00
	.ascii "## CHECK ## nohit addMsgID[0] = %d\n"
	.byte 0x00
	.ascii "## CHECK ## KawashitaMineMsg in tryWazaNo = %d.\n"
	.byte 0x00
	.ascii "## CHECK ## NOHIT PRESEQ::addMsgID[0]=%d\n"
	.byte 0x00
.global lbl_8040803A
lbl_8040803A:
	.ascii "## CHECK ## Tame Waza : %d(msgId)\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_REDUP %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_GREENUP %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_BLUEUP %d:wazaNo\n"
	.byte 0x00
	.ascii "[Jikkyo] Status Up but No Msg. %d:effectNo %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_REDDOWN %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_GREENDOWN %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_BLUEDOWN %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## _SEF_GRAYDOWN %d:wazaNo\n"
	.byte 0x00
	.ascii "[Jikkyo] Status Down but No Msg. %d:effectNo %d:wazaNo\n"
	.byte 0x00
	.ascii "## CHECK ## SleepBeginMineMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## MahiMineMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## DokuMineMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## YakedoMinMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## YakedoMineMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## KonranMineMsg clientNo is not set\n"
	.byte 0x00
	.ascii "## CHECK ## KonranMineMsg %d:actWazaNo\n"
	.byte 0x00
	.ascii "## ERROR ## Turn End FightInfo is invalid %d:wazaNo\n"
	.byte 0x00
	.ascii "## WARNING ## horobi count (clientNo:%d) must be zero.\n"
	.byte 0x00
	.ascii "## ERROR ## horobi count is %d.\n"
	.byte 0x00
	.ascii "## ERROR ## horobi count is %d. but kizetsu is zero\n"
	.byte 0x00
	.ascii "## CHECK ## plural faint by weather damage.\n"
	.byte 0x00
	.ascii "## ERROR ## HP is zero but not kizetsu?\n"
	.byte 0x00
.global lbl_80408422
lbl_80408422:
	.ascii "[Jikkyo] waiting for pk%03d_%d playing\n"
	.byte 0x00
.global lbl_8040844A
lbl_8040844A:
	.ascii "## WARNING ## CLEAR BATTLE MSG [%d] : %cb_%03d(%d) (timing is bad)\n"
	.byte 0x00
.global lbl_8040848E
lbl_8040848E:
	.ascii "[Jikkyo] Battle message sound data is loaded.\n"
	.byte 0x00
.global lbl_804084BD
lbl_804084BD:
	.ascii "## ERROR ## Not Clear BATTLE SOUND LIST\n"
	.byte 0x00
.global lbl_804084E6
lbl_804084E6:
	.ascii "## ERROR ## BATTLE MSG is empty.\n"
	.byte 0x00
.global lbl_80408508
lbl_80408508:
	.ascii "## CHECK ## REPEAT BATTLE MSG : %cb_%03d(%d) (hinshi)\n"
	.byte 0x00
	.ascii "## ERROR ## poke snd msg 0 is empty. : %d (mons no)\n"
	.byte 0x00
	.ascii "[Jikkyo] monsNo(%d) snd is skip.\n"
	.byte 0x00
	.ascii "## ERROR ## poke snd msg 1 is empty. : %d (mons no)\n"
	.byte 0x00
	.ascii "## ERROR ## poke snd msg 2 is empty. : %d (mons no)\n"
	.byte 0x00
	.ascii "## ERROR ## poke snd msg 3 is empty. : %d (mons no)\n"
	.byte 0x00
	.ascii "## ERROR ## poke snd msg 4 is empty. : %d (mons no)\n"
	.byte 0x00
	.ascii "[Jikkyo] #### sound id (%d) is under 19000. ####\n"
	.byte 0x00
.global lbl_8040869C
lbl_8040869C:
	.4byte 0x80021424, 0x80021490, 0x800214FC, 0x80021568
	.4byte 0x800215D4, 0x80021774, 0x80021774, 0x80021774
	.4byte 0x80021774, 0x80021774, 0x80021640, 0x80021774
	.4byte 0x80021774, 0x80021774, 0x80021774, 0x80021774
	.4byte 0x80021774, 0x80021774, 0x80021774, 0x80021774
	.4byte 0x80021674, 0x800216B4, 0x800216F4, 0x80021734
.global lbl_804086FC
lbl_804086FC:
	.incbin "baserom.dol", 0x4047FC, 0x54
.global lbl_80408750
lbl_80408750:
	.ascii "[Jikkyo] WAIT for Creating Battle Message Count : %d\n"
	.byte 0x00
.global lbl_80408786
lbl_80408786:
	.ascii "[Jikkyo] Parse or Preload is a very long time.\n"
	.byte 0x00
.global lbl_804087B6
lbl_804087B6:
	.ascii "[Jikkyo] WAIT for Loading Battle Message Count : %d\n"
	.byte 0x00
.global lbl_804087EB
lbl_804087EB:
	.ascii "## WARNING ## Parsing Loading is a very long time.\n"
	.byte 0x00
	.ascii "[Jikkyo Script] ---- PreScriptRun %u:actClient, %u:wazaNo ----\n"
	.byte 0x00
	.ascii "[Jikkyo] WaitForCreatingBattleMsg() : TIME OUT.\n"
	.byte 0x00
	.ascii "[Jikkyo Script] REQUEST Play Sound [%d] : WazaStart\n"
	.byte 0x00
.global lbl_804088C5
lbl_804088C5:
	.ascii "## CHECK ## skip make msg by now loading.\n"
	.byte 0x00
.global lbl_804088F0
lbl_804088F0:
	.ascii "[Jikkyo] All Pokemon is changed ?\n"
	.byte 0x00
	.byte 0x00
.global lbl_80408914
lbl_80408914:
	.incbin "baserom.dol", 0x404A14, 0xA8
.global lbl_804089BC
lbl_804089BC:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_TRAINER ----\n"
	.byte 0x00
.global lbl_804089EA
lbl_804089EA:
	.ascii "[Jikkyo] Challenger : %s\n"
	.byte 0x00
.global lbl_80408A04
lbl_80408A04:
	.ascii "[Jikkyo Script] ---- TPC_MENU_SHOW_DYNAMIC_TEXT %u:actClient %u:wazaNo ----\n"
	.byte 0x00
.global lbl_80408A51
lbl_80408A51:
	.ascii "[Jikkyo Script] ---- TPC_MENU_START_TRAINER_MESSAGE %u:trainerId %u:clientNo %u:msgType %u:monsNo ----\n"
	.byte 0x00
	.ascii "[Jikkyo Script] REQUEST Play Sound [%d] : Miss\n"
	.byte 0x00
	.ascii "[Jikkyo Script] ---- TPC_MENU_SHOW_FIGHTINFO_MES for miss case ----\n"
	.byte 0x00
.global lbl_80408B2E
lbl_80408B2E:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_WAZA_START %u:actClient %u:wazaNo %d:count ----\n"
	.byte 0x00
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_DAMAGE [%d] %u:actClient %u:wazaNo ----\n"
	.byte 0x00
	.ascii "[Jikkyo] Damage Count (%d) is zero or over FightInfo having (%d). %d:wazaNo\n"
	.byte 0x00
	.ascii "[Jikkyo Script] REQUEST Play Sound [%d] : Damage\n"
	.byte 0x00
.global lbl_80408C47
lbl_80408C47:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_HINSHI [%d] %u:actClient %u:wazaNo ----\n"
	.byte 0x00
	.ascii "[Jikkyo Script] REQUEST Play Sound [%d] : hinshi\n"
	.byte 0x00
.global lbl_80408CC2
lbl_80408CC2:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_MISS %u:actClient %u:wazaNo ----\n"
	.byte 0x00
.global lbl_80408D04
lbl_80408D04:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_ITEM %u:actClient ----\n"
	.byte 0x00
.global lbl_80408D3C
lbl_80408D3C:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_NORMAL_CHANGE %u:actClient ----\n"
	.byte 0x00
.global lbl_80408D7D
lbl_80408D7D:
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_HINSHI_CHANGE %u:actClient ----\n"
	.byte 0x00
.global lbl_80408DBE
lbl_80408DBE:
	.incbin "baserom.dol", 0x404EBE, 0x3B2
.global lbl_80409170
lbl_80409170:
	.incbin "baserom.dol", 0x405270, 0xE8
.global lbl_80409258
lbl_80409258:
	.ascii "[Jikkyo] Setup Appear Weather.\n"
	.byte 0x00
.global lbl_80409278
lbl_80409278:
	.ascii "[Jikkyo] Appear Weather %d / %d\n"
	.byte 0x00
	.ascii "## ERROR ## can'not use PlaySoundMsgAndWait in JIKKYO Alive\n"
	.byte 0x00
.global lbl_804092D6
lbl_804092D6:
	.ascii "## ERROR ## Nakigoe Prelaod is failed.\n"
	.byte 0x00
	.ascii "[Jikkyo Script] ---- TPC_JIKKYO_NAKIGOE ID %u:actClient ----\n"
	.byte 0x00
.global lbl_8040933C
lbl_8040933C:
	.ascii "## ERROR ## MonsNo of Nakigoe sound is invalid. MonsNo = %d\n"
	.byte 0x00
	.ascii "## ERROR ## Nakigoe sound is null.\n"
	.byte 0x00
	.ascii "## ERROR ## Nakigoe sound is not still loaded.\n"
	.byte 0x00
.global lbl_804093CD
lbl_804093CD:
	.ascii "trainer num (%d) is invalid.\n"
	.byte 0x00
.global lbl_804093EB
lbl_804093EB:
	.ascii "## ERROR ## %d:clientNo %d:temochiNo %d:id (in GetPokeParaGetSub)\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80409430
lbl_80409430:
	.4byte 0x80025758, 0x800257B8, 0x800257E8, 0x800257E8
	.4byte 0x800257E8, 0x800257E8, 0x800257E8, 0x800257E8
	.4byte 0x800257E8, 0x800257E8, 0x800257E8, 0x800257E8
	.4byte 0x800257E8, 0x800257E8, 0x800257E8, 0x800257E8
	.4byte 0x800257E8, 0x80025708, 0x80025718, 0x80025728
	.4byte 0x80025738, 0x800257E8, 0x800257E8, 0x800257E8
	.4byte 0x80025748, 0x80025768, 0x80025788, 0x80025778
	.4byte 0x80025798, 0x800257A8, 0x800257C8, 0x800257D8
.global lbl_804094B0
lbl_804094B0:
	.ascii "fightcommon"
	.byte 0x00
.global lbl_804094BC
lbl_804094BC:
	.4byte 0x800265A4, 0x800265F4, 0x80026644, 0x80026668
	.4byte 0x8002668C, 0x800266B0, 0x800266D8, 0x800266FC
	.4byte 0x80026720
.global lbl_804094E0
lbl_804094E0:
	.4byte 0x800263A4, 0x800263C8, 0x800263EC, 0x80026410
	.4byte 0x80026434, 0x80026458, 0x8002647C, 0x800264A0
.global lbl_80409500
lbl_80409500:
	.incbin "baserom.dol", 0x405600, 0x1A4
.global lbl_804096A4
lbl_804096A4:
	.ascii "<%.3f,%.3f,%.3f>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804096B8
lbl_804096B8:
	.ascii "string convert error"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804096D0
lbl_804096D0:
	.incbin "baserom.dol", 0x4057D0, 0x50
.global lbl_80409720
lbl_80409720:
	.ascii "btlmodelipcallback"
	.byte 0x00
	.byte 0x00
.global lbl_80409734
lbl_80409734:
	.4byte 0x8002A260, 0x80029920, 0x8002993C, 0x80029958
	.4byte 0x80029974, 0x80029984, 0x80029994, 0x800299DC
	.4byte 0x80029A34, 0x80029A8C, 0x80029AE4, 0x80029AF4
.global lbl_80409764
lbl_80409764:
	.4byte 0x8002A260, 0x80028608, 0x8002863C, 0x8002A260
	.4byte 0x8002A260, 0x8002A260, 0x8002A260, 0x8002A260
	.4byte 0x8002A260, 0x8002A260, 0x8002A260, 0x8002A260
	.4byte 0x8002A260, 0x8002A260, 0x8002A260, 0x8002A260
	.4byte 0x80028660, 0x800286DC, 0x80028710, 0x80028748
	.4byte 0x8002A260, 0x800288A8, 0x800288C0, 0x80028900
	.4byte 0x80028934, 0x80028968, 0x8002899C, 0x800289CC
	.4byte 0x80028A30, 0x80028C88, 0x80028C40, 0x80028D88
	.4byte 0x80028D20, 0x80028EDC, 0x80028EF0, 0x80028F2C
	.4byte 0x80028FE0, 0x80029054, 0x80028A48, 0x80028A70
	.4byte 0x80028A98, 0x80028AC0, 0x80028AE8, 0x80028B18
	.4byte 0x80028B48, 0x80028B78, 0x80029028, 0x80029040
	.4byte 0x8002906C, 0x8002912C, 0x80029480, 0x80029648
	.4byte 0x80029660, 0x80029678, 0x80029690, 0x80029ED4
	.4byte 0x800290EC, 0x80028BC8, 0x80028CDC, 0x80028EA0
	.4byte 0x80028780, 0x80028798, 0x800287EC, 0x80028804
	.4byte 0x8002881C, 0x80028DC8, 0x80028E34, 0x80028834
	.4byte 0x800296D0, 0x800296E0, 0x80028BF0, 0x80028C18
	.4byte 0x800296F0, 0x80029704, 0x80028A18, 0x80028F5C
	.4byte 0x800294F0, 0x80029574, 0x800295E4, 0x80029CB4
	.4byte 0x80029738, 0x80029CCC, 0x80029CE0, 0x80029CF4
	.4byte 0x80029D08, 0x80029D1C, 0x80029D30, 0x80029D44
	.4byte 0x8002A260, 0x80029D58, 0x80029D6C, 0x800289B4
	.4byte 0x80029D94, 0x8002917C, 0x80029DD8, 0x80028894
	.4byte 0x80028F98, 0x80029F04, 0x80029FA0, 0x80029FB8
	.4byte 0x80029FE8, 0x8002A018, 0x80029FAC, 0x80029FDC
	.4byte 0x8002A000, 0x8002A024, 0x8002A260, 0x8002A260
	.4byte 0x8002A260, 0x8002A260, 0x8002A260, 0x8002A260
	.4byte 0x80029758, 0x800297AC, 0x80029818, 0x8002986C
	.4byte 0x80029B4C, 0x800298D8, 0x800298EC, 0x80029CA8
	.4byte 0x8002A260, 0x80029E30, 0x80029E94, 0x80029B58
	.4byte 0x80029B78, 0x80029B90, 0x80029BC8, 0x80029C00
	.4byte 0x80029C0C, 0x80029C40, 0x80029C74, 0x8002887C
	.4byte 0x8002922C, 0x8002A0D4, 0x8002A100, 0x800290AC
	.4byte 0x8002A1AC, 0x80028FFC, 0x8002A1C4, 0x8002A1F8
	.4byte 0x8002927C, 0x8002932C, 0x80029384, 0x80029254
	.4byte 0x800293B0, 0x8002A224, 0x800292BC, 0x800292E4
	.4byte 0x800293DC, 0x80029408, 0x8002884C, 0x80028864
	.4byte 0x8002A064, 0x8002A10C, 0x8002A14C, 0x8002A244
	.4byte 0x800291B0, 0x80029200, 0x80029F60, 0x80029460
	.4byte 0x800291D4, 0x8002929C, 0x80029358, 0x8002930C
	.4byte 0x80029434, 0x80028F04, 0x80028730
.global lbl_80409A00
lbl_80409A00:
	.4byte 0x8002AB94, 0x8002ABA4, 0x8002AB94, 0x8002AB94
	.4byte 0x8002AB94, 0x8002AB94, 0x8002AB94, 0x8002AB94
	.4byte 0x8002AB94, 0x8002AB94, 0x8002AB94, 0x8002AB94
	.4byte 0x8002AB94, 0x8002AB94, 0x8002AB94, 0x8002AB94
	.4byte 0x8002AB94, 0x8002A9B8, 0x8002A9CC, 0x8002A9E0
	.4byte 0x8002A9F4, 0x8002AA08, 0x8002AA1C, 0x8002AA30
	.4byte 0x8002AA44, 0x8002AA58, 0x8002AA6C, 0x8002AA80
	.4byte 0x8002AA9C, 0x8002AAB0, 0x8002AAC4, 0x8002AAD8
	.4byte 0x8002AAEC, 0x8002AB94, 0x8002AB94, 0x8002AB40
.global lbl_80409A90
lbl_80409A90:
	.float -2.4558035846985284e-40, -2.4568125195928423e-40, -2.45826986999574e-40, -2.45883038938147e-40
	.float -2.459503012644346e-40, -2.460063532030076e-40, -2.4607361552929518e-40, -2.4614087785558277e-40
	.float -2.4633145444673094e-40, -2.4647158429316342e-40, -2.465164258440218e-40, -2.465556622010229e-40
	.float -2.467238180167419e-40, -2.466565556904543e-40, -2.4686955305703167e-40, -2.466901868535981e-40
	.float -2.4694802577103386e-40, -2.4649400506859262e-40, -2.4702649848503605e-40, -2.4712739197446744e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40
	.float -2.504288511564167e-40, -2.504288511564167e-40, -2.504288511564167e-40, -2.475533867076222e-40
	.float -2.4759822825848058e-40, -2.4769912174791196e-40, -2.4774396329877036e-40, -2.4784485678820175e-40
	.float -2.4788969833906014e-40, -2.4792332950220394e-40, -2.481026957056375e-40, -2.481475372564959e-40
	.float -2.481755632257824e-40, -2.482091943889262e-40, -2.483212982660722e-40, -2.4839416578621707e-40
	.float -2.4847263850021926e-40, -2.4762625422776707e-40, -2.4852308524493496e-40, -2.4860716315279445e-40
	.float -2.4873047741765503e-40, -2.4878652935622802e-40, -2.488313709070864e-40, -2.4853429563264956e-40
	.float -2.4860716315279445e-40, -2.4873047741765503e-40, -2.4878652935622802e-40, -2.488313709070864e-40
	.float -2.4857353198965065e-40, -2.4860716315279445e-40, -2.4873047741765503e-40, -2.4878652935622802e-40
	.float -2.488874228456594e-40, -2.490499734675211e-40, -2.4915647215080977e-40, -2.4925176044638386e-40
	.float -2.4935825912967255e-40, -2.4952080975153423e-40, -2.496273084348229e-40, -2.49722596730397e-40
	.float -2.498290954136857e-40, -2.4999164603554737e-40, -2.5009814471883605e-40, -2.5019343301441014e-40
	.float -2.4824282555207e-40, -2.4722828546389883e-40, -2.473908360857605e-40, -2.5027190572841233e-40
	.float -2.4795696066534773e-40, -2.4800740741006342e-40, -2.4777198926805686e-40, 0.0
.global lbl_80409C10
lbl_80409C10:
	.float -2.5622462160486415e-40, -2.511070796131499e-40, -2.511687367455802e-40, -2.5622462160486415e-40
	.float -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40
	.float -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40
	.float -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40, -2.5622462160486415e-40
	.float -2.511967627148667e-40, -2.512303938780105e-40, -2.512640250411543e-40, -2.513424977551565e-40
	.float -2.513817341121576e-40, -2.5166759899887985e-40, -2.5184136000845612e-40, -2.5234582745561306e-40
	.float -2.5238506381261415e-40, -2.5248035210818824e-40, -2.5251958846518934e-40, -2.527550066071959e-40
	.float -2.527886377703397e-40, -2.528222689334835e-40, -2.5170683535588094e-40, -2.5622462160486415e-40
	.float -2.529007416474857e-40, -2.5315297537106415e-40, -2.5375833630765247e-40, -2.520879885381773e-40
	.float -2.521664612521795e-40, -2.5223932877232437e-40, -2.5260366637304882e-40, -2.52682139087051e-40
	.float -2.5379196747079627e-40, -2.5383120382779736e-40, -2.5386483499094116e-40, -2.5390967654179955e-40
	.float -2.5395451809265795e-40, -2.5404420119437474e-40, -2.5415630507152072e-40, -2.542684089486667e-40
	.float -2.54442169958243e-40, -2.5470561406953605e-40, -2.5484013872211123e-40, -2.549466374053999e-40
	.float -2.550531360886886e-40, -2.550867672518324e-40, -2.551091880272616e-40, -2.551988711289784e-40
	.float -2.5528294903683787e-40, -2.5544549965869955e-40, -2.5556320872970284e-40, -2.5558562950513204e-40
	.float -2.5564168144370503e-40, -2.5569212818842072e-40, -2.5606207098300247e-40, -2.558154424532813e-40
	.float -2.559387567181419e-40, -2.5302405591234627e-40, -2.536238116550773e-40, -2.519254379163156e-40
	.float -2.519646742733167e-40, -2.520599625688908e-40, -2.5157231070330576e-40, -2.5328189482978204e-40
	.float -2.5147702240773167e-40, -2.5536702694469736e-40, -2.5617417486014846e-40, -2.53450050645501e-40
	.float -2.543580920503835e-40, -2.5457669461081817e-40, -2.5548473601570065e-40, 0.0
.global lbl_80409D50
lbl_80409D50:
	.4byte 0x8002CB58, 0x8002CB70, 0x8002CB88, 0x8002CBA0
	.4byte 0x8002CBB8, 0x8002CBD0, 0x8002CC1C, 0x8002CC34
	.4byte 0x8002CC4C, 0x8002CC94, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002CD44, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002CE0C, 0x8002CF44, 0x8002D01C, 0x8002D09C
	.4byte 0x8002D104, 0x8002CD2C, 0x8002CDDC, 0x8002CDF4
	.4byte 0x8002CEA8, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002D8A8, 0x8002D944, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002D1E8, 0x8002D234, 0x8002D280, 0x8002D2CC
	.4byte 0x8002D318, 0x8002D364, 0x8002D3CC, 0x8002D418
	.4byte 0x8002D560, 0x8002D5AC, 0x8002D678, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002D744, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002D15C, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002D47C, 0x8002D464, 0x8002D3B0, 0x8002D9D8
	.4byte 0x8002DA2C, 0x8002DA40, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002D95C, 0x8002CC64, 0x8002CC7C, 0x8002DA54
	.4byte 0x8002DAE4, 0x8002D810, 0x8002D85C, 0x8002CBE8
	.4byte 0x8002DBE4, 0x8002DC34, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DDF0, 0x8002DDF0, 0x8002DDF0, 0x8002DDF0
	.4byte 0x8002DC48, 0x8002DC5C, 0x8002DC70, 0x8002DC84
	.4byte 0x8002DCD4, 0x8002DCFC, 0x8002DD98, 0x8002CC04
	.4byte 0x8002DB74, 0x8002D4C8, 0x8002D514, 0x8002DB88
.global lbl_80409F40
lbl_80409F40:
	.4byte 0x8002DEF4, 0x8002DF44, 0x8002E614, 0x8002F018
	.4byte 0x8002F0F0, 0x8002F20C, 0x8002DF80, 0x8002E060
	.4byte 0x8002F518, 0x8002F634, 0x8002F654, 0x8002F6DC
	.4byte 0x8002F6F0, 0x8002FC5C, 0x8002F730, 0x8002F788
	.4byte 0x8002F7C8, 0x8002FA5C, 0x8002FAA0, 0x8002E4E4
	.4byte 0x8002EAB0, 0x8002E300, 0x8002E848, 0x8002ED90
	.4byte 0x8002F770, 0x8002FB20, 0x8002E240, 0x8002FB48
	.4byte 0x8002FB70, 0x8002FB78, 0x8002FBA0, 0x8002FC04
	.4byte 0x8002F950, 0x8002FC1C
.global lbl_80409FC8
lbl_80409FC8:
	.float -2.7690218174444115e-40, -2.7700307523387254e-40, -2.7710957391716123e-40, -2.77311360896024e-40
	.float -2.7771493485374955e-40, -2.79559043632801e-40, -2.7780461795546633e-40, -2.781633503623335e-40
	.float -2.7825303346405028e-40, -2.7861176587091743e-40, -2.789704982777846e-40, -2.7907139176721597e-40
	.float -2.7920591641979115e-40, -2.7934044107236633e-40, -2.7937407223551013e-40, 0.0
.global lbl_8040A008
lbl_8040A008:
	.4byte 0x80030C58, 0x80030CA4, 0x80030CE4, 0x80030D74
	.4byte 0x80030E20, 0x80030FB4, 0x80030F2C, 0x80031094
	.4byte 0x80031094, 0x80031094, 0x80031094, 0x80031094
	.4byte 0x80031094, 0x80031094, 0x80031094, 0x80031048
.global lbl_8040A048
lbl_8040A048:
	.ascii "script/esq/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040A058
lbl_8040A058:
	.4byte 0x80031508, 0x8003115C, 0x80031180, 0x80031508
	.4byte 0x80031508, 0x80031508, 0x80031508, 0x80031508
	.4byte 0x80031508, 0x80031508, 0x80031508, 0x80031508
	.4byte 0x80031508, 0x80031508, 0x80031508, 0x80031508
	.4byte 0x80031508, 0x800311A8, 0x8003124C, 0x800312AC
	.4byte 0x80031508, 0x800312B8, 0x80031328, 0x8003133C
	.4byte 0x80031218, 0x80031350, 0x80031508, 0x80031508
	.4byte 0x80031508, 0x80031508, 0x80031508, 0x80031508
	.4byte 0x800313DC, 0x8003130C, 0x8003148C, 0x800312A0
	.4byte 0x800314CC, 0x800314FC
.global lbl_8040A0F0
lbl_8040A0F0:
	.float -2.8756886565488166e-40, -2.833537598741926e-40, -2.834042066189083e-40, -2.8756886565488166e-40
	.float -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40
	.float -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40
	.float -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40, -2.8756886565488166e-40
	.float -2.8756886565488166e-40, -2.83454653363624e-40, -2.8456448174736925e-40, -2.850633440006689e-40
	.float -2.8553418028468203e-40, -2.8617877757827144e-40, -2.8701395146300903e-40, -2.8703637223843823e-40
	.float -2.8708681898315392e-40, -2.858648867222627e-40, -2.840768298817842e-40, -2.84278616860647e-40
	.float -2.872157384418718e-40, -2.873166319313032e-40, -2.873334475128751e-40, -2.8528755175496086e-40
	.float -2.8467658562451524e-40, -2.8479989988937582e-40, -2.8597138540555137e-40, -2.8360599359777108e-40
	.float -2.873558682883043e-40, -2.8400956755549662e-40, -2.8454766616579735e-40, -2.864254061079926e-40
	.float -2.8667203463771378e-40, 0.0
.global lbl_8040A198
lbl_8040A198:
	.float -2.8902061086392217e-40, -2.889197173744908e-40, -2.8913831993492546e-40, -2.9003515095209334e-40
	.float -2.8978852242237217e-40, -2.8919997706735575e-40, -2.904163041343897e-40, -2.909880339078342e-40
	.float -2.8896455892534918e-40, -2.911169533665521e-40, -2.911169533665521e-40, -2.911169533665521e-40
	.float -2.911169533665521e-40, -2.911169533665521e-40, -2.911169533665521e-40, -2.8900940047620757e-40
	.float -2.894634211786488e-40, -2.895250783110791e-40, -2.888188238850594e-40, 0.0
.global lbl_8040A1E8
lbl_8040A1E8:
	.float -2.9128510918227107e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.9139721305941706e-40, -2.9154294809970684e-40, -2.9157097406899334e-40, -2.9159900003827983e-40
	.float -2.9162702600756633e-40, -2.9165505197685283e-40, -2.9168307794613932e-40, -2.917111039154258e-40
	.float -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40, -2.9204181035300648e-40
	.float -2.917391298847123e-40, -2.918512337618583e-40, -2.919465220574324e-40, 0.0
.global lbl_8040A278
lbl_8040A278:
	.4byte 0x80033730, 0x80033730, 0x800336FC, 0x8003370C
	.4byte 0x800336E0, 0x8003371C, 0x80033724, 0x8003372C
.global lbl_8040A298
lbl_8040A298:
	.4byte 0x80036348, 0x80036350, 0x80036358, 0x80036360
	.4byte 0x80036368, 0x80036370, 0x80036378, 0x80036380
	.4byte 0x80036388, 0x80036390, 0x80036398, 0x800363A0
	.4byte 0x800363A8, 0x800363B0, 0x800363B8, 0x800363C0
	.4byte 0x800363C8, 0x800363D0, 0x800363D8, 0x800363E0
	.4byte 0x800363E8, 0x80036400, 0x80036408, 0x80036410
	.4byte 0x800363F0, 0x800363F8
.global lbl_8040A300
lbl_8040A300:
	.4byte 0x80036464, 0x8003646C, 0x80036474, 0x80036484
	.4byte 0x8003648C, 0x80036494, 0x8003649C, 0x800364A4
	.4byte 0x800364AC, 0x8003647C
.global lbl_8040A328
lbl_8040A328:
	.4byte 0x80036504, 0x8003650C, 0x80036514, 0x80036524
	.4byte 0x8003652C, 0x80036534, 0x8003653C, 0x80036544
	.4byte 0x8003654C, 0x8003651C
.global lbl_8040A350
lbl_8040A350:
	.4byte 0x800367A0, 0x800367A8, 0x800367B0, 0x800367C0
	.4byte 0x80036828, 0x80036828, 0x80036828, 0x80036828
	.4byte 0x80036828, 0x80036828, 0x80036828, 0x80036828
	.4byte 0x80036828, 0x80036828, 0x80036828, 0x800367D4
	.4byte 0x800367B8, 0x800367C4, 0x800367CC, 0x80036810
	.4byte 0x80036818, 0x80036820
.global lbl_8040A3A8
lbl_8040A3A8:
	.4byte 0x80036A58, 0x80036A68, 0x80036A78, 0x80036AEC
	.4byte 0x80036AEC, 0x80036AEC, 0x80036AEC, 0x80036AEC
	.4byte 0x80036AEC, 0x80036AEC, 0x80036AEC, 0x80036AEC
	.4byte 0x80036AEC, 0x80036AEC, 0x80036AEC, 0x80036AB4
	.4byte 0x80036A94, 0x80036AA4
.global lbl_8040A3F0
lbl_8040A3F0:
	.float 9.183829875491986e-41, 3.6735319501967944e-40, 1.4694127800787178e-39, 5.877651120314871e-39
	.float 2.350988701644575e-38
.global lbl_8040A404
lbl_8040A404:
	.ascii "%ssdr/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040A410
lbl_8040A410:
	.float -3.300057883484944e-40, -3.30016998736209e-40, -3.300282091239236e-40, -3.300394195116382e-40
	.float -3.300506298993528e-40, -3.300618402870674e-40, -3.30073050674782e-40, 0.0
.global lbl_8040A430
lbl_8040A430:
	.float 4.40817247920833e-39, 4.591846274121241e-39, 4.775520069034152e-39, 4.9591167925315254e-39
	.float 4.49960580270706e-39, 0.0, -4.120770368070703e-40, -4.121162731640714e-40
	.float -4.121555095210725e-40, -4.121947458780736e-40, -4.122339822350747e-40, -4.122732185920758e-40
	.float -4.123124549490769e-40, 0.0
.global lbl_8040A468
lbl_8040A468:
	.incbin "baserom.dol", 0x406568, 0x28
.global lbl_8040A490
lbl_8040A490:
	.incbin "baserom.dol", 0x406590, 0x58
.global lbl_8040A4E8
lbl_8040A4E8:
	.4byte 0x8004A01C, 0x800499B4, 0x80049A00, 0x80049A78
	.4byte 0x80049B54, 0x80049C14, 0x80049D64, 0x80049E88
.global lbl_8040A508
lbl_8040A508:
	.ascii "effectseqcallback"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040A51C
lbl_8040A51C:
	.4byte 0x8004A874, 0x8004A884, 0x8004A894, 0x8004A8A8
	.4byte 0x8004A960, 0x8004A8BC, 0x8004A8D4, 0x8004A8EC
	.4byte 0x8004A960, 0x8004A8FC, 0x8004A918, 0x8004A90C
.global lbl_8040A54C
lbl_8040A54C:
	.ascii "attach_glf"
	.byte 0x00
	.byte 0x00
.global lbl_8040A558
lbl_8040A558:
	.incbin "baserom.dol", 0x406658, 0x50
.global lbl_8040A5A8
lbl_8040A5A8:
	.incbin "baserom.dol", 0x4066A8, 0x50
.global lbl_8040A5F8
lbl_8040A5F8:
	.incbin "baserom.dol", 0x4066F8, 0x50
.global lbl_8040A648
lbl_8040A648:
	.incbin "baserom.dol", 0x406748, 0x50
.global lbl_8040A698
lbl_8040A698:
	.incbin "baserom.dol", 0x406798, 0x50
.global lbl_8040A6E8
lbl_8040A6E8:
	.incbin "baserom.dol", 0x4067E8, 0x40
.global lbl_8040A728
lbl_8040A728:
	.4byte 0x8004AF74, 0x8004AF94, 0x8004B0D0, 0x8004B0D0
	.4byte 0x8004B0D0, 0x8004AFB4, 0x8004AFD4, 0x8004AFF4
	.4byte 0x8004B0D0, 0x8004B014, 0x8004B034, 0x8004B054
	.4byte 0x8004B074, 0x8004B094, 0x8004B0B4
.global lbl_8040A764
lbl_8040A764:
	.incbin "baserom.dol", 0x406864, 0x48
.global lbl_8040A7AC
lbl_8040A7AC:
	.incbin "baserom.dol", 0x4068AC, 0x44
.global lbl_8040A7F0
lbl_8040A7F0:
	.incbin "baserom.dol", 0x4068F0, 0x44
.global lbl_8040A834
lbl_8040A834:
	.incbin "baserom.dol", 0x406934, 0x48
.global lbl_8040A87C
lbl_8040A87C:
	.incbin "baserom.dol", 0x40697C, 0x48
.global lbl_8040A8C4
lbl_8040A8C4:
	.incbin "baserom.dol", 0x4069C4, 0x48
.global lbl_8040A90C
lbl_8040A90C:
	.incbin "baserom.dol", 0x406A0C, 0x48
.global lbl_8040A954
lbl_8040A954:
	.incbin "baserom.dol", 0x406A54, 0x44
.global lbl_8040A998
lbl_8040A998:
	.incbin "baserom.dol", 0x406A98, 0x4C
.global lbl_8040A9E4
lbl_8040A9E4:
	.incbin "baserom.dol", 0x406AE4, 0x48
.global lbl_8040AA2C
lbl_8040AA2C:
	.incbin "baserom.dol", 0x406B2C, 0x44
.global lbl_8040AA70
lbl_8040AA70:
	.incbin "baserom.dol", 0x406B70, 0x38
.global lbl_8040AAA8
lbl_8040AAA8:
	.incbin "baserom.dol", 0x406BA8, 0x50
.global lbl_8040AAF8
lbl_8040AAF8:
	.ascii "%sgpd/%s"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040AB08
lbl_8040AB08:
	.4byte 0x8005040C, 0x80050410, 0x80050424, 0x80050448
	.4byte 0x80050418, 0x80050434, 0x80050488, 0x800504D0
	.4byte 0x800504E0
.global lbl_8040AB2C
lbl_8040AB2C:
	.4byte 0x80050670, 0x80050674, 0x80050688, 0x800506AC
	.4byte 0x8005067C, 0x80050698, 0x800506EC, 0x80050734
	.4byte 0x80050744
.global lbl_8040AB50
lbl_8040AB50:
	.4byte 0x80050954, 0x80050958, 0x8005096C, 0x80050990
	.4byte 0x80050960, 0x8005097C, 0x800509D0, 0x80050A18
	.4byte 0x80050A28
.global lbl_8040AB74
lbl_8040AB74:
	.4byte 0x80050C90, 0x80050C94, 0x80050CA8, 0x80050CCC
	.4byte 0x80050C9C, 0x80050CB8, 0x80050D0C, 0x80050D54
	.4byte 0x80050D64
.global lbl_8040AB98
lbl_8040AB98:
	.incbin "baserom.dol", 0x406C98, 0x30
.global lbl_8040ABC8
lbl_8040ABC8:
	.incbin "baserom.dol", 0x406CC8, 0x38
.global lbl_8040AC00
lbl_8040AC00:
	.incbin "baserom.dol", 0x406D00, 0x28
.global lbl_8040AC28
lbl_8040AC28:
	.incbin "baserom.dol", 0x406D28, 0x30
.global lbl_8040AC58
lbl_8040AC58:
	.incbin "baserom.dol", 0x406D58, 0x30
.global lbl_8040AC88
lbl_8040AC88:
	.incbin "baserom.dol", 0x406D88, 0x28
.global lbl_8040ACB0
lbl_8040ACB0:
	.incbin "baserom.dol", 0x406DB0, 0x20
.global lbl_8040ACD0
lbl_8040ACD0:
	.4byte 0x800523E4, 0x80052474, 0x800524F4, 0x80052560
	.4byte 0x800525B0, 0x800525FC, 0x800528B8, 0x800526FC
	.4byte 0x80052770, 0x800527DC, 0x8005287C, 0x80052788
	.4byte 0x80053638, 0x800527C0, 0x80053638, 0x80053638
	.4byte 0x80052900, 0x80052934, 0x800529D4, 0x800529FC
	.4byte 0x80052A80, 0x80052AB8, 0x80052B3C, 0x80052B6C
	.4byte 0x80052C18, 0x80052C58, 0x80052CD4, 0x80052D08
	.4byte 0x80052EB4, 0x80052F30, 0x80052F68, 0x80053080
	.4byte 0x800530C4, 0x80053330, 0x80053400, 0x800534F8
	.4byte 0x80053540, 0x80053590, 0x800535AC, 0x800535F8
.global lbl_8040AD70
lbl_8040AD70:
	.4byte 0x80053B18, 0x80053B40, 0x80053B40, 0x80053B40
	.4byte 0x80053B40, 0x80053B2C, 0x80053C2C, 0x80053BD4
	.4byte 0x80053BE4, 0x80053C20, 0x80053C2C, 0x80053B7C
	.4byte 0x80053B7C, 0x80053B7C, 0x80053B50, 0x80053B50
	.4byte 0x80053B50, 0x80053B50, 0x80053B50, 0x80053B50
	.4byte 0x80053B60, 0x80053B60, 0x80053B60
.global lbl_8040ADCC
lbl_8040ADCC:
	.4byte 0x80053AF0, 0x800537CC, 0x800537DC, 0x80053810
	.4byte 0x80053874, 0x800538AC, 0x80053924, 0x80053990
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x800539D4, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053A20, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AEC, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AEC, 0x80053AF0, 0x80053AF0
	.4byte 0x80053AF0, 0x80053AF0, 0x80053AEC
.global lbl_8040AE88
lbl_8040AE88:
	.4byte 0x80053FB8, 0x80053F98, 0x80053F80, 0x80053F60
	.4byte 0x80053F28, 0x80053EF0, 0x80053ED0
.global lbl_8040AEA4
lbl_8040AEA4:
	.incbin "baserom.dol", 0x406FA4, 0x5C
.global lbl_8040AF00
lbl_8040AF00:
	.incbin "baserom.dol", 0x407000, 0x58
.global lbl_8040AF58
lbl_8040AF58:
	.incbin "baserom.dol", 0x407058, 0x130
.global lbl_8040B088
lbl_8040B088:
	.incbin "baserom.dol", 0x407188, 0x18
.global lbl_8040B0A0
lbl_8040B0A0:
	.float -5.1359830795047465e-40, -5.123819808834407e-40, -5.124324276281564e-40, -5.125669522807316e-40
	.float -5.126398198008765e-40, -5.1279116003502356e-40, -5.129368950753133e-40, -5.129761314323144e-40
	.float -5.130265781770301e-40, -5.131611028296053e-40, -5.132339703497502e-40, -5.133853105838973e-40
	.float -5.135310456241871e-40, -5.1357028198118816e-40, -5.1358709756276006e-40, 0.0
.global lbl_8040B0E0
lbl_8040B0E0:
	.float 2.8074764735208646e-13, 2.825240041914867e-13, 2.8430036103088696e-13, 2.860767178702872e-13
	.float 2.8785307470968746e-13, 2.896294315490877e-13, 2.9140578838848796e-13, 2.931821452278882e-13
	.float 2.9495850206728846e-13, 2.967348589066887e-13, 2.9851121574608896e-13, 3.002875725854892e-13
	.float 3.0206392942488947e-13, 3.038402862642897e-13, 3.0561664310368997e-13, 3.073929999430902e-13
	.float 3.109457136218907e-13, 3.1272207046129097e-13, 3.144984273006912e-13, 3.1627478414009147e-13
	.float 3.180511409794917e-13, 3.1982749781889197e-13, 3.216038546582922e-13, 3.0916935678249047e-13
	.float 1.0749057839367378e-38, 1.0473551350893404e-38, 1.0657222343209386e-38, 1.0565386847051395e-38
	.float 1.9381594478218551e-38, 1.928975898206056e-38, 1.9106087989744578e-38, 1.919792348590257e-38
	.float 1.1208235320157334e-38, 1.0840893335525369e-38, 1.093272883168336e-38, 1.1024564327841351e-38
	.float 2.8593565824426784e-21, 2.872591472243527e-21, 1.9488562144452215e-28, 1.9567448234974316e-28
	.float 1.9646334325496417e-28, 1.9409676053930114e-28, 4.766111291953976e-22, 4.799198516456097e-22
	.float 4.832285740958219e-22, 4.86537296546034e-22, 4.898460189962461e-22, 4.931547414464582e-22
	.float 4.964634638966703e-22, 4.997721863468824e-22, 5.030809087970945e-22, 5.063896312473066e-22
	.float 5.096983536975187e-22, 5.1300707614773085e-22, 5.16315798597943e-22, 5.196245210481551e-22
	.float 5.229332434983672e-22, 5.262419659485793e-22, 5.295506883987914e-22, 4.6599219808174814e-21
	.float 4.686391760419178e-21, 4.712861540020875e-21, 4.739331319622572e-21, 4.765801099224269e-21
	.float 4.792270878825966e-21, 2.720696931635125e-15, 2.7345747194429393e-15, 2.7484525072507537e-15
	.float 2.762330295058568e-15, 2.7762080828663827e-15, 2.790085870674197e-15, 2.8039636584820116e-15
	.float 2.817841446289826e-15, 2.665185780403867e-15, 2.6790635682116815e-15, 2.692941356019496e-15
	.float 2.7068191438273104e-15, 3.178663929293002e-15, 3.1647861414851874e-15, 0.0
	.float 3.660127756432985e-13, 3.6778913248269873e-13, 3.69565489322099e-13, 3.7134184616149923e-13
	.float 3.731182030008995e-13, 3.7489455984029973e-13, 3.766709166797e-13, 3.7844727351910024e-13
	.float 3.802236303585005e-13, 3.8199998719790074e-13, 3.83776344037301e-13, 3.8555270087670124e-13
	.float 3.873290577161015e-13, 3.8910541455550174e-13, 3.90881771394902e-13, 3.9265812823430224e-13
	.float 3.9621084191310274e-13, 3.97987198752503e-13, 3.9976355559190324e-13, 4.015399124313035e-13
	.float 4.0331626927070374e-13, 4.05092626110104e-13, 4.0686898294950424e-13, 3.944344850737025e-13
	.float 1.0749057839367378e-38, 1.0473551350893404e-38, 1.0657222343209386e-38, 1.0565386847051395e-38
	.float 1.9381594478218551e-38, 1.928975898206056e-38, 1.9106087989744578e-38, 1.919792348590257e-38
	.float 1.1208235320157334e-38, 1.0840893335525369e-38, 1.093272883168336e-38, 1.1024564327841351e-38
	.float 2.8593565824426784e-21, 2.872591472243527e-21, 1.9488562144452215e-28, 1.9567448234974316e-28
	.float 1.9646334325496417e-28, 1.9409676053930114e-28, 4.766111291953976e-22, 4.799198516456097e-22
	.float 4.832285740958219e-22, 4.86537296546034e-22, 4.898460189962461e-22, 4.931547414464582e-22
	.float 4.964634638966703e-22, 4.997721863468824e-22, 5.030809087970945e-22, 5.063896312473066e-22
	.float 5.096983536975187e-22, 5.1300707614773085e-22, 5.16315798597943e-22, 5.196245210481551e-22
	.float 5.229332434983672e-22, 5.262419659485793e-22, 5.295506883987914e-22, 4.6599219808174814e-21
	.float 4.686391760419178e-21, 4.712861540020875e-21, 4.739331319622572e-21, 4.765801099224269e-21
	.float 4.792270878825966e-21, 2.720696931635125e-15, 2.7345747194429393e-15, 2.7484525072507537e-15
	.float 2.762330295058568e-15, 2.7762080828663827e-15, 2.790085870674197e-15, 2.8039636584820116e-15
	.float 2.817841446289826e-15, 2.665185780403867e-15, 2.6790635682116815e-15, 2.692941356019496e-15
	.float 2.7068191438273104e-15, 3.178663929293002e-15, 3.1647861414851874e-15, 0.0
	.float 4.512779039345105e-13, 4.5305426077391076e-13, 4.549138843401579e-13, 4.584665980189584e-13
	.float 4.620193116977589e-13, 4.655720253765594e-13, 4.691247390553599e-13, 4.726774527341604e-13
	.float 4.762301664129609e-13, 4.797828800917614e-13, 4.833355937705619e-13, 4.868883074493624e-13
	.float 4.904410211281629e-13, 4.939937348069634e-13, 4.975464484857639e-13, 5.010991621645644e-13
	.float 5.082045895221654e-13, 5.117573032009659e-13, 5.153100168797664e-13, 5.188627305585669e-13
	.float 5.224154442373674e-13, 5.259681579161679e-13, 5.295208715949684e-13, 5.046518758433649e-13
	.float 1.0749057839367378e-38, 1.0473551350893404e-38, 1.0657222343209386e-38, 1.0565386847051395e-38
	.float 1.9381594478218551e-38, 1.928975898206056e-38, 1.9106087989744578e-38, 1.919792348590257e-38
	.float 1.1208235320157334e-38, 1.0840893335525369e-38, 1.093272883168336e-38, 1.1024564327841351e-38
	.float 2.8593565824426784e-21, 2.872591472243527e-21, 1.9488562144452215e-28, 1.9567448234974316e-28
	.float 1.9646334325496417e-28, 1.9409676053930114e-28, 4.766111291953976e-22, 4.799198516456097e-22
	.float 4.832285740958219e-22, 4.86537296546034e-22, 4.898460189962461e-22, 4.931547414464582e-22
	.float 4.964634638966703e-22, 4.997721863468824e-22, 5.030809087970945e-22, 5.063896312473066e-22
	.float 5.096983536975187e-22, 5.1300707614773085e-22, 5.16315798597943e-22, 5.196245210481551e-22
	.float 5.229332434983672e-22, 5.262419659485793e-22, 5.295506883987914e-22, 4.6599219808174814e-21
	.float 4.686391760419178e-21, 4.712861540020875e-21, 4.739331319622572e-21, 4.765801099224269e-21
	.float 4.792270878825966e-21, 2.720696931635125e-15, 2.7345747194429393e-15, 2.7484525072507537e-15
	.float 2.762330295058568e-15, 2.7762080828663827e-15, 2.790085870674197e-15, 2.8039636584820116e-15
	.float 2.817841446289826e-15, 2.665185780403867e-15, 2.6790635682116815e-15, 2.692941356019496e-15
	.float 2.7068191438273104e-15, 3.178663929293002e-15, 3.1647861414851874e-15, 0.0
	.float 3.2338021149769247e-13, 3.251565683370927e-13, 3.2693292517649297e-13, 3.287092820158932e-13
	.float 3.3048563885529347e-13, 3.322619956946937e-13, 3.3403835253409397e-13, 3.358147093734942e-13
	.float 3.375910662128945e-13, 3.3936742305229473e-13, 3.41143779891695e-13, 3.4292013673109523e-13
	.float 3.446964935704955e-13, 3.4647285040989573e-13, 3.48249207249296e-13, 3.5002556408869623e-13
	.float 3.5357827776749673e-13, 3.55354634606897e-13, 3.5713099144629723e-13, 3.589073482856975e-13
	.float 3.6068370512509773e-13, 3.62460061964498e-13, 3.6423641880389823e-13, 3.518019209280965e-13
	.float 1.0749057839367378e-38, 1.0473551350893404e-38, 1.0657222343209386e-38, 1.0565386847051395e-38
	.float 1.9381594478218551e-38, 1.928975898206056e-38, 1.9106087989744578e-38, 1.919792348590257e-38
	.float 1.1208235320157334e-38, 1.0840893335525369e-38, 1.093272883168336e-38, 1.1024564327841351e-38
	.float 2.8593565824426784e-21, 2.872591472243527e-21, 1.9488562144452215e-28, 1.9567448234974316e-28
	.float 1.9646334325496417e-28, 1.9409676053930114e-28, 4.766111291953976e-22, 4.799198516456097e-22
	.float 4.832285740958219e-22, 4.86537296546034e-22, 4.898460189962461e-22, 4.931547414464582e-22
	.float 4.964634638966703e-22, 4.997721863468824e-22, 5.030809087970945e-22, 5.063896312473066e-22
	.float 5.096983536975187e-22, 5.1300707614773085e-22, 5.16315798597943e-22, 5.196245210481551e-22
	.float 5.229332434983672e-22, 5.262419659485793e-22, 5.295506883987914e-22, 4.6599219808174814e-21
	.float 4.686391760419178e-21, 4.712861540020875e-21, 4.739331319622572e-21, 4.765801099224269e-21
	.float 4.792270878825966e-21, 2.720696931635125e-15, 2.7345747194429393e-15, 2.7484525072507537e-15
	.float 2.762330295058568e-15, 2.7762080828663827e-15, 2.790085870674197e-15, 2.8039636584820116e-15
	.float 2.817841446289826e-15, 2.665185780403867e-15, 2.6790635682116815e-15, 2.692941356019496e-15
	.float 2.7068191438273104e-15, 3.178663929293002e-15, 3.1647861414851874e-15, 0.0
	.float 4.086453397889045e-13, 4.1042169662830474e-13, 4.12198053467705e-13, 4.1397441030710525e-13
	.float 4.157507671465055e-13, 4.1752712398590575e-13, 4.19303480825306e-13, 4.2107983766470625e-13
	.float 4.228561945041065e-13, 4.2463255134350675e-13, 4.26408908182907e-13, 4.2818526502230725e-13
	.float 4.299616218617075e-13, 4.3173797870110775e-13, 4.33514335540508e-13, 4.3529069237990825e-13
	.float 4.3884340605870875e-13, 4.40619762898109e-13, 4.4239611973750925e-13, 4.441724765769095e-13
	.float 4.4594883341630975e-13, 4.4772519025571e-13, 4.4950154709511025e-13, 4.370670492193085e-13
	.float 1.0749057839367378e-38, 1.0473551350893404e-38, 1.0657222343209386e-38, 1.0565386847051395e-38
	.float 1.9381594478218551e-38, 1.928975898206056e-38, 1.9106087989744578e-38, 1.919792348590257e-38
	.float 1.1208235320157334e-38, 1.0840893335525369e-38, 1.093272883168336e-38, 1.1024564327841351e-38
	.float 2.8593565824426784e-21, 2.872591472243527e-21, 1.9488562144452215e-28, 1.9567448234974316e-28
	.float 1.9646334325496417e-28, 1.9409676053930114e-28, 4.766111291953976e-22, 4.799198516456097e-22
	.float 4.832285740958219e-22, 4.86537296546034e-22, 4.898460189962461e-22, 4.931547414464582e-22
	.float 4.964634638966703e-22, 4.997721863468824e-22, 5.030809087970945e-22, 5.063896312473066e-22
	.float 5.096983536975187e-22, 5.1300707614773085e-22, 5.16315798597943e-22, 5.196245210481551e-22
	.float 5.229332434983672e-22, 5.262419659485793e-22, 5.295506883987914e-22, 4.6599219808174814e-21
	.float 4.686391760419178e-21, 4.712861540020875e-21, 4.739331319622572e-21, 4.765801099224269e-21
	.float 4.792270878825966e-21, 2.720696931635125e-15, 2.7345747194429393e-15, 2.7484525072507537e-15
	.float 2.762330295058568e-15, 2.7762080828663827e-15, 2.790085870674197e-15, 2.8039636584820116e-15
	.float 2.817841446289826e-15, 2.665185780403867e-15, 2.6790635682116815e-15, 2.692941356019496e-15
	.float 2.7068191438273104e-15, 3.178663929293002e-15, 3.1647861414851874e-15, 0.0
.global lbl_8040B720
lbl_8040B720:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii ":"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "*"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "+"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii ","
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "-"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "0"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "1"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "2"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "3"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "4"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "5"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "6"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "7"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "8"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "9"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8040B768
lbl_8040B768:
	.incbin "baserom.dol", 0x407868, 0x40
.global lbl_8040B7A8
lbl_8040B7A8:
	.incbin "baserom.dol", 0x4078A8, 0xA
.global lbl_8040B7B2
lbl_8040B7B2:
	.incbin "baserom.dol", 0x4078B2, 0x16
.global lbl_8040B7C8
lbl_8040B7C8:
	.4byte 0x8005E5B0, 0x8005E6A4, 0x8005E730, 0x8005E8B4
	.4byte 0x8005E628, 0x8005EC08, 0x8005E7AC, 0x8005E838
	.4byte 0x8005E8B4, 0x8005EB58, 0x8005EBCC, 0x8005EB80
	.4byte 0x8005E99C
.global lbl_8040B7FC
lbl_8040B7FC:
	.4byte 0x8005E54C, 0x8005E58C, 0x8005E58C, 0x8005E58C
	.4byte 0x8005E54C, 0x8005E58C, 0x8005E58C, 0x8005E58C
	.4byte 0x8005E58C, 0x8005E488, 0x8005E4B8, 0x8005E500
.global lbl_8040B82C
lbl_8040B82C:
	.4byte 0x8005E12C, 0x8005E170, 0x8005E28C, 0x8005E1A0
	.4byte 0x8005E12C, 0x8005E58C, 0x8005E170, 0x8005E28C
	.4byte 0x8005E1A0, 0x8005E3EC, 0x8005E58C, 0x8005E41C
.global lbl_8040B85C
lbl_8040B85C:
	.4byte 0x8005DE24, 0x8005DE74, 0x8005DE84, 0x8005DEBC
	.4byte 0x8005DE4C, 0x8005E0F8, 0x8005DE98, 0x8005DEA8
	.4byte 0x8005DEBC, 0x8005E0F8, 0x8005E0F8, 0x8005E0F8
	.4byte 0x8005DEF8
.global lbl_8040B890
lbl_8040B890:
	.4byte 0x8005F108, 0x8005F118, 0x8005F128, 0x8005F138
	.4byte 0x8005F108, 0x8005F17C, 0x8005F118, 0x8005F128
	.4byte 0x8005F138, 0x8005F158, 0x8005F170, 0x8005F164
	.4byte 0x8005F148
.global lbl_8040B8C4
lbl_8040B8C4:
	.4byte 0x8005F09C, 0x8005F09C, 0x8005F09C, 0x8005F0D0
	.4byte 0x8005F09C, 0x8005F0D0, 0x8005F09C, 0x8005F09C
	.4byte 0x8005F0D0, 0x8005F0D0, 0x8005F0D0, 0x8005F0D0
	.4byte 0x8005F0D0, 0x8005F0A4, 0x8005F0A4, 0x8005F0B0
.global lbl_8040B904
lbl_8040B904:
	.4byte 0x8005EE54, 0x8005EE9C, 0x8005EEE4, 0x8005EF30
	.4byte 0x8005EE54, 0x8005F070, 0x8005EE9C, 0x8005EEE4
	.4byte 0x8005EF30, 0x8005EFA4, 0x8005F024, 0x8005EFD8
	.4byte 0x8005EF68
.global lbl_8040B938
lbl_8040B938:
	.4byte 0x8005F9A8, 0x8005F344, 0x8005F39C, 0x8005F514
	.4byte 0x8005F6E0, 0x8005F768, 0x8005F7E0, 0x8005F84C
	.4byte 0x8005F92C, 0x8005F964
.global lbl_8040B960
lbl_8040B960:
	.4byte 0x80060B68, 0x80060B98, 0x80060BF8, 0x80060C18
	.4byte 0x80060D84, 0x80060DB0, 0x80060DD4
.global lbl_8040B97C
lbl_8040B97C:
	.4byte 0x80060E2C, 0x80060E30, 0x80060E30, 0x80060E30
	.4byte 0x80060E2C, 0x80060E30, 0x80060E30, 0x80060E30
	.4byte 0x80060E2C, 0x80060E2C, 0x80060E30, 0x80060E30
	.4byte 0x80060E30, 0x80060E30, 0x80060E30, 0x80060E2C
	.4byte 0x80060E30, 0x80060E30, 0x80060E30, 0x80060E30
	.4byte 0x80060E30, 0x80060E2C
.global lbl_8040B9D4
lbl_8040B9D4:
	.4byte 0x80061B84, 0x800617E0, 0x8006180C, 0x80061838
	.4byte 0x80061864, 0x80061890, 0x800618BC, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x800618E8
.global lbl_8040BA50
lbl_8040BA50:
	.4byte 0x800612F0, 0x800612FC, 0x8006131C, 0x80061358
	.4byte 0x800613B0, 0x80061424, 0x800614B4
.global lbl_8040BA6C
lbl_8040BA6C:
	.4byte 0x80060FB8, 0x80060FC4, 0x80061000, 0x80061058
	.4byte 0x800610CC, 0x8006115C, 0x80061208
.global lbl_8040BA88
lbl_8040BA88:
	.4byte 0x80060EC0, 0x80060F28, 0x80061568, 0x80061914
	.4byte 0x8006196C, 0x800619C4, 0x80061A1C, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061B84, 0x80061B84
	.4byte 0x80061B84, 0x80061B84, 0x80061AA8
.global lbl_8040BAD4
lbl_8040BAD4:
	.4byte 0x80061D6C, 0x80061BC8, 0x80061D6C, 0x80061C08
	.4byte 0x80061D6C, 0x80061D6C, 0x80061D6C, 0x80061C64
	.4byte 0x80061D6C, 0x80061D6C, 0x80061D6C, 0x80061D6C
	.4byte 0x80061D6C, 0x80061D6C, 0x80061D6C, 0x80061CDC
.global lbl_8040BB14
lbl_8040BB14:
	.4byte 0x8006245C, 0x80061EC0, 0x80061F00, 0x80061F40
	.4byte 0x80061F9C, 0x80061FDC, 0x80062038, 0x80062094
	.4byte 0x8006210C, 0x8006214C, 0x800621A8, 0x80062204
	.4byte 0x8006227C, 0x800622D8, 0x80062350, 0x800623C8
.global lbl_8040BB54
lbl_8040BB54:
	.4byte 0x800633FC, 0x80063398, 0x800633C4, 0x8006336C
	.4byte 0x800634C4, 0x80063460, 0x8006348C, 0x80063434
.global lbl_8040BB74
lbl_8040BB74:
	.4byte 0x80063320, 0x800632C8, 0x800632F4, 0x8006329C
	.4byte 0x80063320, 0x800632C8, 0x800632F4, 0x8006329C
.global lbl_8040BB94
lbl_8040BB94:
	.4byte 0x80063278, 0x8006323C, 0x80063278, 0x800631FC
	.4byte 0x80063278, 0x8006325C, 0x80063278, 0x8006321C
.global lbl_8040BBB4
lbl_8040BBB4:
	.4byte 0x80063B08, 0x80063B08, 0x800636E4, 0x80063780
	.4byte 0x800639A4, 0x80063AC4, 0x80063AC4, 0x80063684
	.4byte 0x800636C4, 0x80063664, 0x800636A4, 0x80063AE8
	.4byte 0x80063AE8, 0x80063AE8, 0x80063AE8, 0x80063B08
	.4byte 0x80063B08, 0x80063844, 0x800638E0, 0x80063A34
	.4byte 0x80063AC4, 0x80063AC4, 0x80063AE8, 0x80063AE8
	.4byte 0x80063AE8, 0x80063AE8
.global lbl_8040BC1C
lbl_8040BC1C:
	.4byte 0x80064540, 0x80063D1C, 0x80064540, 0x80064540
	.4byte 0x80064540, 0x80064414, 0x80064314, 0x80064540
	.4byte 0x80064540, 0x80064540, 0x80064540, 0x80063E54
	.4byte 0x80063EEC, 0x80063F84, 0x8006401C, 0x80064540
	.4byte 0x80063DB8, 0x80064540, 0x80064540, 0x80064540
	.4byte 0x800644AC, 0x80064394, 0x800640B4, 0x8006414C
	.4byte 0x800641E4, 0x8006427C
.global lbl_8040BC84
lbl_8040BC84:
	.4byte 0x800648E8, 0x8006470C, 0x8006478C, 0x800647E4
	.4byte 0x800647B8, 0x80064810, 0x800648E8, 0x800648E8
	.4byte 0x8006483C, 0x80064868, 0x800648E8, 0x800648E8
	.4byte 0x80064894, 0x800648C0
.global lbl_8040BCBC
lbl_8040BCBC:
	.4byte 0x80064650, 0x80064668, 0x80064650, 0x80064668
	.4byte 0x80064650, 0x80064668, 0x80064650
.global lbl_8040BCD8
lbl_8040BCD8:
	.4byte 0x800654E4, 0x800654E4, 0x80064AB0, 0x80064B34
	.4byte 0x800651D0, 0x800654A0, 0x800654A0, 0x800654C4
	.4byte 0x800654C4, 0x800654C4, 0x800654C4, 0x800654E4
	.4byte 0x800654E4, 0x80064BE0, 0x80064C64, 0x80065248
	.4byte 0x800654A0, 0x800654A0, 0x800654C4, 0x800654C4
	.4byte 0x800654C4, 0x800654C4, 0x800654E4, 0x800654E4
	.4byte 0x80064D10, 0x80064D94, 0x800652C0, 0x800654A0
	.4byte 0x800654A0, 0x800654C4, 0x800654C4, 0x800654C4
	.4byte 0x800654C4, 0x800654E4, 0x800654E4, 0x80064E40
	.4byte 0x80064EC4, 0x80065338, 0x800654A0, 0x800654A0
	.4byte 0x800654C4, 0x800654C4, 0x800654C4, 0x800654C4
	.4byte 0x800654E4, 0x800654E4, 0x80064F70, 0x80064FF4
	.4byte 0x800653B0, 0x800654A0, 0x800654A0, 0x800654C4
	.4byte 0x800654C4, 0x800654C4, 0x800654C4, 0x800654E4
	.4byte 0x800654E4, 0x800650A0, 0x80065124, 0x80065428
	.4byte 0x800654A0, 0x800654A0, 0x800654C4, 0x800654C4
	.4byte 0x800654C4, 0x800654C4
.global lbl_8040BDE0
lbl_8040BDE0:
	.4byte 0x80066B28, 0x800656A4, 0x80066B28, 0x80066B28
	.4byte 0x80066B28, 0x8006682C, 0x800665BC, 0x800659BC
	.4byte 0x80065A3C, 0x80065ABC, 0x80065B3C, 0x80066B28
	.4byte 0x80065728, 0x80066B28, 0x80066B28, 0x80066B28
	.4byte 0x800668AC, 0x80066624, 0x80065BBC, 0x80065C3C
	.4byte 0x80065CBC, 0x80065D3C, 0x80066B28, 0x800657AC
	.4byte 0x80066B28, 0x80066B28, 0x80066B28, 0x8006692C
	.4byte 0x8006668C, 0x80065DBC, 0x80065E3C, 0x80065EBC
	.4byte 0x80065F3C, 0x80066B28, 0x80065830, 0x80066B28
	.4byte 0x80066B28, 0x80066B28, 0x800669AC, 0x800666F4
	.4byte 0x80065FBC, 0x8006603C, 0x800660BC, 0x8006613C
	.4byte 0x80066B28, 0x800658B4, 0x80066B28, 0x80066B28
	.4byte 0x80066B28, 0x80066A2C, 0x8006675C, 0x800661BC
	.4byte 0x8006623C, 0x800662BC, 0x8006633C, 0x80066B28
	.4byte 0x80065938, 0x80066B28, 0x80066B28, 0x80066B28
	.4byte 0x80066AAC, 0x800667C4, 0x800663BC, 0x8006643C
	.4byte 0x800664BC, 0x8006653C
.global lbl_8040BEE8
lbl_8040BEE8:
	.4byte 0x800655D0, 0x800655D0, 0x80065548, 0x80065548
	.4byte 0x80065558, 0x80065548, 0x80065548, 0x800655C4
	.4byte 0x800655C4, 0x800655C4, 0x800655C4, 0x800655D0
	.4byte 0x800655D0, 0x80065548, 0x80065548, 0x80065558
	.4byte 0x80065548, 0x80065548, 0x800655C4, 0x800655C4
	.4byte 0x800655C4, 0x800655C4, 0x800655D0, 0x800655D0
	.4byte 0x80065548, 0x80065548, 0x80065558, 0x80065548
	.4byte 0x80065548, 0x800655C4, 0x800655C4, 0x800655C4
	.4byte 0x800655C4, 0x800655D0, 0x800655D0, 0x80065548
	.4byte 0x80065548, 0x80065558, 0x80065548, 0x80065548
	.4byte 0x800655C4, 0x800655C4, 0x800655C4, 0x800655C4
	.4byte 0x800655D0, 0x800655D0, 0x80065548, 0x80065548
	.4byte 0x80065558, 0x80065548, 0x80065548, 0x800655C4
	.4byte 0x800655C4, 0x800655C4, 0x800655C4, 0x800655D0
	.4byte 0x800655D0, 0x80065548, 0x80065548, 0x80065558
	.4byte 0x80065548, 0x80065548, 0x800655C4, 0x800655C4
	.4byte 0x800655C4, 0x800655C4
.global lbl_8040BFF0
lbl_8040BFF0:
	.4byte 0x80066D84, 0x80066DA4, 0x80066DA4, 0x80066DA4
	.4byte 0x80066DA4, 0x80066DA4, 0x80066D84, 0x80066DA4
	.4byte 0x80066DA4, 0x80066DA4, 0x80066DA4, 0x80066DA4
	.4byte 0x80066D84, 0x80066DA4, 0x80066DA4, 0x80066DA4
	.4byte 0x80066DA4, 0x80066DA4, 0x80066D84, 0x80066DA4
	.4byte 0x80066DA4, 0x80066BBC, 0x80066DA4, 0x80066DA4
	.4byte 0x80066DA4, 0x80066C44, 0x80066DA4, 0x80066DA4
	.4byte 0x80066DA4, 0x80066CCC, 0x80066D60
.global lbl_8040C06C
lbl_8040C06C:
	.4byte 0x80067588, 0x80067588, 0x80066FA4, 0x800671B4
	.4byte 0x80067588, 0x80067588, 0x80067588, 0x80067588
	.4byte 0x80067028, 0x80067258, 0x80067588, 0x80067588
	.4byte 0x80067588, 0x80067588, 0x800670AC, 0x800672FC
	.4byte 0x80067588, 0x80067588, 0x80067588, 0x80067588
	.4byte 0x80067130, 0x800673A0, 0x80067588, 0x80067588
	.4byte 0x80067588, 0x80067588, 0x80067444, 0x80067588
	.4byte 0x80067588, 0x80067588, 0x800674E8, 0x80067588
	.4byte 0x80067588, 0x80067588, 0x80067588
.global lbl_8040C0F8
lbl_8040C0F8:
	.4byte 0x80067654, 0x80067B38, 0x80067B38, 0x80067B38
	.4byte 0x80067B38, 0x800676D4, 0x80067B38, 0x80067B38
	.4byte 0x80067B38, 0x80067B38, 0x80067754, 0x80067B38
	.4byte 0x80067B38, 0x80067B38, 0x80067B38, 0x800677D4
	.4byte 0x80067B38, 0x80067B38, 0x80067854, 0x800678DC
	.4byte 0x80067B38, 0x80067900, 0x800679AC, 0x80067A90
	.4byte 0x80067A34, 0x80067988, 0x80067B18
.global lbl_8040C164
lbl_8040C164:
	.4byte 0x80067FC0, 0x80067FC0, 0x80067C44, 0x80067FC0
	.4byte 0x80067E04, 0x80067FC0, 0x80067FC0, 0x80067CB4
	.4byte 0x80067FC0, 0x80067E74, 0x80067FC0, 0x80067FC0
	.4byte 0x80067D24, 0x80067FC0, 0x80067EE4, 0x80067FC0
	.4byte 0x80067FC0, 0x80067D94, 0x80067FC0, 0x80067F54
.global lbl_8040C1B4
lbl_8040C1B4:
	.4byte 0x800680F4, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x80068320, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x80068180, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x80068320, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x8006820C, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x80068320, 0x80068320, 0x80068320, 0x80068320
	.4byte 0x80068298
.global lbl_8040C218
lbl_8040C218:
	.4byte 0x80068F1C, 0x80068F1C, 0x80068D60, 0x80068480
	.4byte 0x80068640, 0x80068F1C, 0x80068800, 0x80068AB0
	.4byte 0x80068F1C, 0x80068F1C, 0x80068DD0, 0x800684F0
	.4byte 0x800686B0, 0x80068F1C, 0x800688AC, 0x80068B5C
	.4byte 0x80068F1C, 0x80068F1C, 0x80068E40, 0x80068560
	.4byte 0x80068720, 0x80068F1C, 0x80068958, 0x80068C08
	.4byte 0x80068F1C, 0x80068F1C, 0x80068EB0, 0x800685D0
	.4byte 0x80068790, 0x80068F1C, 0x80068A04, 0x80068CB4
.global lbl_8040C298
lbl_8040C298:
	.4byte 0x80068448, 0x80068448, 0x8006842C, 0x8006843C
	.4byte 0x8006843C, 0x80068448, 0x8006843C, 0x8006843C
	.4byte 0x80068448, 0x80068448, 0x8006842C, 0x8006843C
	.4byte 0x8006843C, 0x80068448, 0x8006843C, 0x8006843C
	.4byte 0x80068448, 0x80068448, 0x8006842C, 0x8006843C
	.4byte 0x8006843C, 0x80068448, 0x8006843C, 0x8006843C
	.4byte 0x80068448, 0x80068448, 0x8006842C, 0x8006843C
	.4byte 0x8006843C, 0x80068448, 0x8006843C, 0x8006843C
.global lbl_8040C318
lbl_8040C318:
	.4byte 0x8006A734, 0x80069764, 0x8006994C, 0x80069974
	.4byte 0x80069DA4, 0x80069E60, 0x8006A434, 0x8006A48C
	.4byte 0x8006A734, 0x8006A4DC, 0x8006A510, 0x8006A57C
	.4byte 0x8006A698, 0x8006A6D0, 0x8006A4A4
.global lbl_8040C354
lbl_8040C354:
	.float 7.60447260717001e-13, 7.639999743958015e-13, 7.67552688074602e-13, 8.17290679577809e-13
	.float 8.208433932566095e-13, 8.2439610693541e-13, 8.279488206142105e-13, 8.31501534293011e-13
	.float 7.81763542789804e-13, 7.853162564686045e-13, 7.88868970147405e-13, 1.3432588374939769e-12
	.float 1.350364264851578e-12, 1.357469692209179e-12, 1.36457511956678e-12, 1.2508882818451639e-12
	.float 8.03079824862607e-13, 8.066325385414075e-13, 8.10185252220208e-13, 1.3148371280635729e-12
	.float 1.3219425554211739e-12, 1.3290479827787749e-12, 1.3361534101363759e-12, 1.2437828544875629e-12
	.float 7.711054017534025e-13, 7.74658115432203e-13, 7.782108291110035e-13, 1.2579937092027649e-12
	.float 1.2650991365603659e-12, 1.2722045639179669e-12, 1.2793099912755679e-12, 1.2295719997723609e-12
	.float 7.924216838262055e-13, 7.95974397505006e-13, 7.995271111838065e-13, 1.2864154186331689e-12
	.float 1.2935208459907699e-12, 1.3006262733483709e-12, 1.3077317007059719e-12, 1.2366774271299619e-12
	.float 0.0
.global lbl_8040C3F8
lbl_8040C3F8:
	.4byte 0x8006AA94, 0x8006A8D8, 0x8006AA94, 0x8006A940
	.4byte 0x8006AA94, 0x8006A9A8, 0x8006AA10, 0x8006AA80
.global lbl_8040C418
lbl_8040C418:
	.4byte 0x8006AB0C, 0x8006AC5C, 0x8006B33C, 0x8006AF7C
	.4byte 0x8006AB60, 0x8006AD24, 0x8006B3DC, 0x8006B06C
	.4byte 0x8006ABB4, 0x8006ADEC, 0x8006B47C, 0x8006B15C
	.4byte 0x8006AC08, 0x8006AEB4, 0x8006B51C, 0x8006B24C
	.4byte 0x8006B5BC
.global lbl_8040C45C
lbl_8040C45C:
	.4byte 0x8006B648, 0x8006B898, 0x8006BC44, 0x8006BC44
	.4byte 0x8006B6DC, 0x8006B97C, 0x8006BC44, 0x8006BC44
	.4byte 0x8006BC44, 0x8006B770, 0x8006BA60, 0x8006BC44
	.4byte 0x8006B804, 0x8006BB44, 0x8006BC44, 0x8006BC44
	.4byte 0x8006BC28
.global lbl_8040C4A0
lbl_8040C4A0:
	.4byte 0x8006C624, 0x8006CE0C, 0x8006CBC4, 0x8006CE0C
	.4byte 0x8006CAB0, 0x8006CE0C, 0x8006C968, 0x8006CE0C
	.4byte 0x8006CE0C, 0x8006CDD0, 0x8006C5C4, 0x8006CE0C
	.4byte 0x8006CB94, 0x8006CE0C, 0x8006CA8C, 0x8006CE0C
	.4byte 0x8006C8D4, 0x8006CE0C, 0x8006CE0C, 0x8006CD90
	.4byte 0x8006C564, 0x8006CE0C, 0x8006CB64, 0x8006CE0C
	.4byte 0x8006CA68, 0x8006CE0C, 0x8006C840, 0x8006CE0C
	.4byte 0x8006CE0C, 0x8006CD50, 0x8006C504, 0x8006CE0C
	.4byte 0x8006CB34, 0x8006CE0C, 0x8006CA44, 0x8006CE0C
	.4byte 0x8006C7AC, 0x8006CE0C, 0x8006CE0C, 0x8006CD10
	.4byte 0x8006C4A4, 0x8006CE0C, 0x8006CB04, 0x8006CE0C
	.4byte 0x8006CA20, 0x8006CE0C, 0x8006C718, 0x8006CE0C
	.4byte 0x8006CE0C, 0x8006CC34, 0x8006C444, 0x8006CE0C
	.4byte 0x8006CAD4, 0x8006CE0C, 0x8006C9FC, 0x8006CE0C
	.4byte 0x8006C684, 0x8006CE0C, 0x8006CE0C, 0x8006CBF4
	.4byte 0x8006CCB0, 0x8006CCE0
.global lbl_8040C598
lbl_8040C598:
	.float -6.317950308193443e-40, -6.318791087272038e-40, -6.319631866350633e-40, -6.320472645429228e-40
	.float -6.317109529114848e-40, -6.3162687500362535e-40, -6.32125737256925e-40, -6.32125737256925e-40
	.float -6.32125737256925e-40, -6.315035607387648e-40, -6.32125737256925e-40, -6.305843089461677e-40
	.float -6.32125737256925e-40, -6.288074624934038e-40, -6.32125737256925e-40, -6.271202991423567e-40
	.float -6.253546630773075e-40, -6.32125737256925e-40, -6.32125737256925e-40, -6.313802464739042e-40
	.float -6.32125737256925e-40, -6.302816284778735e-40, -6.32125737256925e-40, -6.2854401838211075e-40
	.float -6.32125737256925e-40, -6.267783823170615e-40, -6.252986111387345e-40, -6.32125737256925e-40
	.float -6.32125737256925e-40, -6.312569322090436e-40, -6.32125737256925e-40, -6.299789480095794e-40
	.float -6.32125737256925e-40, -6.282805742708177e-40, -6.32125737256925e-40, -6.264364654917662e-40
	.float -6.252425592001615e-40, -6.32125737256925e-40, -6.32125737256925e-40, -6.31133617944183e-40
	.float -6.32125737256925e-40, -6.296762675412852e-40, -6.32125737256925e-40, -6.280171301595246e-40
	.float -6.32125737256925e-40, -6.26094548666471e-40, -6.251865072615885e-40, -6.32125737256925e-40
	.float -6.32125737256925e-40, -6.310103036793224e-40, -6.32125737256925e-40, -6.29373587072991e-40
	.float -6.32125737256925e-40, -6.2775368604823155e-40, -6.32125737256925e-40, -6.257526318411757e-40
	.float -6.251304553230155e-40, -6.32125737256925e-40, -6.32125737256925e-40, -6.3088698941446184e-40
	.float -6.32125737256925e-40, -6.290709066046969e-40, -6.32125737256925e-40, -6.27462215967652e-40
	.float -6.32125737256925e-40, -6.2541071501588046e-40, -6.250744033844425e-40, 0.0
.global lbl_8040C6A8
lbl_8040C6A8:
	.float 2.4638361593235146e-35, 2.445028249710358e-35, 0.0
.global lbl_8040C6B4
lbl_8040C6B4:
	.incbin "baserom.dol", 0x4087B4, 0x24
.global lbl_8040C6D8
lbl_8040C6D8:
	.4byte 0x8006FC28, 0x8006FA38, 0x80070090, 0x8006FFCC
	.4byte 0x8006FF08, 0x8006FE44, 0x8006FD80, 0x8006FCBC
	.4byte 0x80071008, 0x80071008, 0x80071008, 0x80071008
	.4byte 0x80071008, 0x80071008, 0x80071008, 0x8006FAB4
	.4byte 0x8007058C, 0x800704B4, 0x800703DC, 0x80070304
	.4byte 0x8007022C, 0x80070154, 0x80071008, 0x80071008
	.4byte 0x80071008, 0x80071008, 0x80071008, 0x80071008
	.4byte 0x8006FC5C, 0x8006FB30, 0x80070664, 0x80070728
	.4byte 0x800707EC, 0x800708B0, 0x80070974, 0x80070A38
	.4byte 0x80071008, 0x80071008, 0x80071008, 0x80071008
	.4byte 0x80071008, 0x80071008, 0x80071008, 0x8006FBAC
	.4byte 0x80070AFC, 0x80070BD4, 0x80070CAC, 0x80070D84
	.4byte 0x80070E5C, 0x80070F34
.global lbl_8040C7A0
lbl_8040C7A0:
	.4byte 0x80071C9C, 0x80071C9C, 0x80071BA0, 0x80071270
	.4byte 0x8007134C, 0x800713F0, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071BE0, 0x800714B0, 0x8007158C, 0x80071630
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C20, 0x80071888
	.4byte 0x800717E4, 0x800716F0, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C9C, 0x80071C9C, 0x80071C9C, 0x80071C9C
	.4byte 0x80071C60, 0x80071948, 0x80071A3C, 0x80071AE0
.global lbl_8040C860
lbl_8040C860:
	.4byte 0x80072254, 0x800722D0, 0x80072350, 0x80072350
	.4byte 0x80072254, 0x800722D0, 0x80072350, 0x80072350
	.4byte 0x80072254
.global lbl_8040C884
lbl_8040C884:
	.float -6.5683903697375745e-40, -6.5686145774918665e-40, -6.5688387852461585e-40, -6.5690629930004505e-40
	.float -6.5692872007547424e-40, -6.569511408509034e-40, -6.569735616263326e-40, -6.569959824017618e-40
	.float -6.57018403177191e-40, -6.570408239526202e-40, -6.570632447280494e-40, 8.800213568927948e-14
	.float 8.889032766150676e-14, 8.977851963373404e-14, 9.06667183822249e-14, 9.111081436833854e-14
	.float 9.237055564881302e-14, 1.0221320724491598e-13, 1.0310139921714326e-13, 1.0398959118937054e-13
	.float 1.0487778316159782e-13, 1.057659751338251e-13, 1.0665416710605238e-13, 1.0754235907827966e-13
	.float 1.0843054427424337e-13, 1.0843054427424337e-13, 1.0843054427424337e-13
.global lbl_8040C8F0
lbl_8040C8F0:
	.4byte 0x80076724, 0x800767E4, 0x800768A8, 0x80076B88
	.4byte 0x80076BD0, 0x80076C84, 0x80076DEC, 0x80076E30
	.4byte 0x80076E64, 0x80076ED0, 0x80076FBC, 0x80076FF4
	.4byte 0x80077068, 0x800770EC, 0x8007713C, 0x800771C0
	.4byte 0x800771F8, 0x80077274, 0x800772E0, 0x800773A8
	.4byte 0x800773D0, 0x80077418, 0x80077A3C, 0x8007746C
	.4byte 0x800774A0, 0x8007750C, 0x800775EC, 0x80077624
	.4byte 0x800776AC, 0x800776F0, 0x80077744, 0x80077A3C
	.4byte 0x80077A3C, 0x800777D8, 0x800779BC, 0x80077A34
	.4byte 0x80077A3C, 0x800766E0
.global lbl_8040C988
lbl_8040C988:
	.4byte 0x800754DC, 0x80075730, 0x8007579C, 0x800758F4
	.4byte 0x80075A00, 0x80075A88, 0x8007606C, 0x80076024
	.4byte 0x8007606C, 0x80075ACC, 0x80075B6C, 0x80075BE4
	.4byte 0x80075D3C, 0x80075DE8, 0x80075F9C, 0x80075FF4
	.4byte 0x80077BA4, 0x80077C24, 0x80077D4C, 0x80077DE0
	.4byte 0x80077E74, 0x80077EF4, 0x80077F74
.global lbl_8040C9E4
lbl_8040C9E4:
	.float 3.2341750805242597e-15, 3.2619306561398886e-15, 6.164434268080727e-23, 3.1925417171008164e-15
	.float 5.998998145570122e-23, 3.275808443947703e-15, 6.040357176197773e-23, 3.206419504908631e-15
	.float 6.123075237453076e-23, 3.248052868332074e-15, 3.2202972927164453e-15
.global lbl_8040CA10
lbl_8040CA10:
	.4byte 0x8007806C, 0x8007825C, 0x8007825C, 0x8007825C
	.4byte 0x800780D0, 0x8007825C, 0x8007825C, 0x8007825C
	.4byte 0x80078134, 0x8007825C, 0x8007825C, 0x8007825C
	.4byte 0x80078198, 0x8007825C, 0x8007825C, 0x8007825C
	.4byte 0x800781FC
.global lbl_8040CA54
lbl_8040CA54:
	.4byte 0x80078CEC, 0x80078CF4, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078E58, 0x80078E58
	.4byte 0x80078E58, 0x80078E58, 0x80078CFC, 0x80078D44
	.4byte 0x80078D78, 0x80078DAC, 0x80078DF4, 0x80078E28
.global lbl_8040CAD4
lbl_8040CAD4:
	.4byte 0x80078B44, 0x80078B4C, 0x80078CB0, 0x80078CB0
	.4byte 0x80078CB0, 0x80078CB0, 0x80078CB0, 0x80078CB0
	.4byte 0x80078CB0, 0x80078CB0, 0x80078CB0, 0x80078CB0
	.4byte 0x80078CB0, 0x80078CB0, 0x80078CB0, 0x80078CB0
	.4byte 0x80078CB0, 0x80078CB0, 0x80078CB0, 0x80078CB0
	.4byte 0x80078CB0, 0x80078CB0, 0x80078CB0, 0x80078CB0
	.4byte 0x80078B54, 0x80078B9C, 0x80078BD0, 0x80078C04
	.4byte 0x80078C4C, 0x80078C80
.global lbl_8040CB4C
lbl_8040CB4C:
	.4byte 0x8007899C, 0x800789A4, 0x80078B08, 0x80078B08
	.4byte 0x80078B08, 0x80078B08, 0x80078B08, 0x80078B08
	.4byte 0x80078B08, 0x80078B08, 0x80078B08, 0x80078B08
	.4byte 0x80078B08, 0x80078B08, 0x80078B08, 0x80078B08
	.4byte 0x80078B08, 0x80078B08, 0x80078B08, 0x80078B08
	.4byte 0x80078B08, 0x80078B08, 0x800789AC, 0x800789F4
	.4byte 0x80078A28, 0x80078A5C, 0x80078AA4, 0x80078AD8
.global lbl_8040CBBC
lbl_8040CBBC:
	.4byte 0x800787F4, 0x800787FC, 0x80078960, 0x80078960
	.4byte 0x80078960, 0x80078960, 0x80078960, 0x80078960
	.4byte 0x80078960, 0x80078960, 0x80078960, 0x80078960
	.4byte 0x80078960, 0x80078960, 0x80078960, 0x80078960
	.4byte 0x80078960, 0x80078960, 0x80078960, 0x80078960
	.4byte 0x80078804, 0x8007884C, 0x80078880, 0x800788B4
	.4byte 0x800788FC, 0x80078930
.global lbl_8040CC24
lbl_8040CC24:
	.4byte 0x8007864C, 0x80078654, 0x800787B8, 0x800787B8
	.4byte 0x800787B8, 0x800787B8, 0x800787B8, 0x800787B8
	.4byte 0x800787B8, 0x800787B8, 0x800787B8, 0x800787B8
	.4byte 0x800787B8, 0x800787B8, 0x800787B8, 0x800787B8
	.4byte 0x800787B8, 0x800787B8, 0x8007865C, 0x800786A4
	.4byte 0x800786D8, 0x8007870C, 0x80078754, 0x80078788
.global lbl_8040CC84
lbl_8040CC84:
	.4byte 0x80079B70, 0x80079B78, 0x80079B80, 0x80079BC8
	.4byte 0x80079BFC, 0x80079CE0, 0x80079D28, 0x80079D5C
	.4byte 0x80079C30, 0x80079C78, 0x80079CAC, 0x80079D90
	.4byte 0x80079DD8, 0x80079E0C
.global lbl_8040CCBC
lbl_8040CCBC:
	.4byte 0x80079868, 0x80079870, 0x80079878, 0x800798C0
	.4byte 0x800798F4, 0x800799D8, 0x80079A20, 0x80079A54
	.4byte 0x80079928, 0x80079970, 0x800799A4, 0x80079A88
	.4byte 0x80079AD0, 0x80079B04
.global lbl_8040CCF4
lbl_8040CCF4:
	.4byte 0x80079560, 0x80079568, 0x80079570, 0x800795B8
	.4byte 0x800795EC, 0x800796D0, 0x80079718, 0x8007974C
	.4byte 0x80079620, 0x80079668, 0x8007969C, 0x80079780
	.4byte 0x800797C8, 0x800797FC
.global lbl_8040CD2C
lbl_8040CD2C:
	.4byte 0x8007A02C, 0x8007A044, 0x8007A0B4, 0x8007A070
	.4byte 0x8007A0B4, 0x8007A088, 0x8007A0B4, 0x8007A0A0
.global lbl_8040CD4C
lbl_8040CD4C:
	.4byte 0x8007A1D4, 0x8007A264, 0x8007A1BC, 0x8007A264
	.4byte 0x8007A1F0, 0x8007A220, 0x8007A264, 0x8007A264
	.4byte 0x8007A208
.global lbl_8040CD70
lbl_8040CD70:
	.4byte 0x8007A4B4, 0x8007A514, 0x8007A454, 0x8007A514
	.4byte 0x8007A49C, 0x8007A484, 0x8007A46C
.global lbl_8040CD8C
lbl_8040CD8C:
	.4byte 0x8007A894, 0x8007A758, 0x8007A77C, 0x8007A894
	.4byte 0x8007A894, 0x8007A894, 0x8007A894, 0x8007A894
	.4byte 0x8007A894, 0x8007A894, 0x8007A6BC, 0x8007A618
	.4byte 0x8007A57C, 0x8007A894, 0x8007A7A0, 0x8007A894
	.4byte 0x8007A81C
.global lbl_8040CDD0
lbl_8040CDD0:
	.4byte 0x8007A8FC, 0x8007AA1C, 0x8007A914, 0x8007AA1C
	.4byte 0x8007AA1C, 0x8007A9A4, 0x8007AA1C, 0x8007A9BC
	.4byte 0x8007AA1C, 0x8007A9D4, 0x8007AA1C, 0x8007AA08
.global lbl_8040CE00
lbl_8040CE00:
	.4byte 0x8007AB90, 0x8007AC0C, 0x8007AB78, 0x8007AC0C
	.4byte 0x8007ABAC, 0x8007AC0C, 0x8007ABC4, 0x8007AC0C
	.4byte 0x8007ABF8
.global lbl_8040CE24
lbl_8040CE24:
	.4byte 0x8007AD40, 0x8007AE0C, 0x8007AD9C, 0x8007AE0C
	.4byte 0x8007ADE0, 0x8007AE0C, 0x8007ADF8
.global lbl_8040CE40
lbl_8040CE40:
	.float 2.862820401257744e-22, 2.8462767890066837e-22, 2.829733176755623e-22, 2.862820401257744e-22
.global lbl_8040CE50
lbl_8040CE50:
	.4byte 0x8007C420, 0x8007C45C, 0x8007C498, 0x8007C4D4
	.4byte 0x8007C510, 0x8007C54C, 0x8007C5AC, 0x8007C5E8
	.4byte 0x8007C644, 0x8007C680
.global lbl_8040CE78
lbl_8040CE78:
	.incbin "baserom.dol", 0x408F78, 0x10
.global lbl_8040CE88
lbl_8040CE88:
	.4byte 0x8007EA68, 0x8007D474, 0x8007D528, 0x8007D5B0
	.4byte 0x8007D794, 0x8007D808, 0x8007EA68, 0x8007EA68
	.4byte 0x8007EA68, 0x8007EA68, 0x8007EA68, 0x8007D94C
	.4byte 0x8007D9B4, 0x8007DA3C, 0x8007DC44, 0x8007DCB0
	.4byte 0x8007EA68, 0x8007DD04, 0x8007DDE0, 0x8007E1BC
	.4byte 0x8007E228, 0x8007E27C, 0x8007E2E4, 0x8007E398
	.4byte 0x8007E690, 0x8007E6FC, 0x8007E750, 0x8007E7BC
	.4byte 0x8007E828, 0x8007E93C, 0x8007E9D4, 0x8007EA68
.global lbl_8040CF08
lbl_8040CF08:
	.4byte 0x8007EAB4, 0x8007EACC, 0x8007EACC, 0x8007EACC
	.4byte 0x8007EACC, 0x8007EAB4, 0x8007EACC, 0x8007EACC
	.4byte 0x8007EACC, 0x8007EACC, 0x8007EAB4, 0x8007EACC
	.4byte 0x8007EACC, 0x8007EACC, 0x8007EACC, 0x8007EAB4
	.4byte 0x8007EACC, 0x8007EACC, 0x8007EACC, 0x8007EACC
	.4byte 0x8007EAB4, 0x8007EACC, 0x8007EACC, 0x8007EACC
	.4byte 0x8007EACC, 0x8007EAB4
.global lbl_8040CF70
lbl_8040CF70:
	.4byte 0x8007EE84, 0x8007EE84, 0x8007EE84, 0x8007EF9C
	.4byte 0x8007EE9C, 0x8007EEB4, 0x8007EF9C, 0x8007EF10
	.4byte 0x8007EF28, 0x8007EEF8, 0x8007EF9C, 0x8007EF9C
.global lbl_8040CFA0
lbl_8040CFA0:
	.4byte 0x8007F0FC, 0x8007F114, 0x8007F1C4, 0x8007F140
	.4byte 0x8007F158, 0x8007F1C4, 0x8007F184, 0x8007F19C
.global lbl_8040CFC0
lbl_8040CFC0:
	.float -7.306594400743888e-40, -7.3090606860411e-40, -7.3090606860411e-40, -7.307098868191045e-40
	.float -7.3090606860411e-40, -7.3090606860411e-40, -7.307603335638202e-40, -7.3090606860411e-40
	.float -7.3090606860411e-40, -7.308107803085359e-40, -7.3090606860411e-40, -7.3090606860411e-40
	.float -7.308612270532516e-40, 0.0
.global lbl_8040CFF8
lbl_8040CFF8:
	.float 1.723597111119525e-42, 1.7263997080481746e-42, 1.7292023049768243e-42, 1.7249984095838498e-42
	.float 1.7278010065124994e-42, 0.0
.global lbl_8040D010
lbl_8040D010:
	.float 1.6153286399512094e-21, 2.465190328815662e-32, 7.70763182274848e-32, 0.0
	.float 1.4300401827393312e-21, 6.162975822039155e-33, 1.2817510595644152e-27, 2.350988701644575e-38
	.float 1.2880619468061833e-27, 9.4039548065783e-38, 1.511394385531041e-25, 3.76158192263132e-37
	.float 1.519472321200504e-25, 1.504632769052528e-36, 1.5275502568699673e-25, 6.018531076210112e-36
	.float 1.5313342648601314e-23, 2.407412430484045e-35, 1.14980487425035e-17, 1.5407439555097887e-33
	.float 0.0, 0.0
.global lbl_8040D068
lbl_8040D068:
	.float 1.511394385531041e-25, 3.851859888774472e-34, 1.5275502568699673e-25, 9.62964972193618e-35
	.float 0.0, 0.0
.global lbl_8040D080
lbl_8040D080:
	.float 7.490185070153021e-23, 0.0, 3.4758387833419646e-22, 2.350988701644575e-38
	.float 7.861706218299459e-32, 9.4039548065783e-38, 5.430567775348022e-28, 3.76158192263132e-37
	.float 2.012226397037757e-25, 6.018531076210112e-36, 4.121039661133326e-22, 2.407412430484045e-35
	.float 4.1375832733843867e-22, 9.62964972193618e-35, 2.8463559634261948e-15, 9.860761315262648e-32
	.float 4.668659076037573e-22, 3.851859888774472e-34, 1.1443838633879225e-17, 1.5407439555097887e-33
	.float 7.784669020523969e-32, 6.162975822039155e-33, 3.304322961084072e-15, 1.0097419586828951e-28
	.float 3.63879933129585e-15, 4.0389678347315804e-28, 1.6219460848516336e-21, 2.465190328815662e-32
	.float 6.068196973689011e-19, 3.944304526105059e-31, 5.220867141386698e-15, 1.6155871338926322e-27
	.float 0.0, 0.0
.global lbl_8040D108
lbl_8040D108:
	.float 2.8463559634261948e-15, 1.5777218104420236e-30, 5.430567775348022e-28, 2.524354896707238e-29
	.float 0.0, 0.0
.global lbl_8040D120
lbl_8040D120:
	.4byte 0x80089BC8, 0x800892F8, 0x8008932C, 0x80089360
	.4byte 0x80089394, 0x800893C8, 0x800893FC, 0x80089430
	.4byte 0x80089464, 0x80089498, 0x800894CC, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089500
.global lbl_8040D19C
lbl_8040D19C:
	.4byte 0x80089BC8, 0x80083F0C, 0x80083F48, 0x80083F84
	.4byte 0x80083FD0, 0x8008401C, 0x80084068, 0x800840B4
	.4byte 0x80084100, 0x8008414C, 0x80084198, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x80089BC8, 0x80089BC8
	.4byte 0x80089BC8, 0x80089BC8, 0x800841E4
.global lbl_8040D218
lbl_8040D218:
	.float -7.905677520212034e-40, -7.539097841944662e-40, -7.539714413268965e-40, -7.543301737337636e-40
	.float -7.54391830866194e-40, -7.557146566165165e-40, -7.583883340864483e-40, -7.58590121065311e-40
	.float -7.588031184318884e-40, -7.591954820018994e-40, -7.593804533991903e-40, -7.607929622512297e-40
	.float -7.905677520212034e-40, -7.60574359690795e-40, -7.61022775199379e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.614151387693899e-40, -7.617066088499695e-40, -7.618915802472603e-40, -7.62558598316279e-40
	.float -7.627323593258552e-40, -7.62878094366145e-40, -7.631695644467246e-40, -7.633545358440154e-40
	.float -7.640439746884633e-40, -7.642177356980395e-40, -7.713755682538107e-40, -7.714035942230972e-40
	.float -7.718351941501092e-40, -7.72524632994557e-40, -7.735391730827282e-40, -7.737689860308775e-40
	.float -7.643634707383293e-40, -7.646325200434797e-40, -7.648287018284852e-40, -7.656246393562217e-40
	.float -7.658208211412271e-40, -7.65574192611506e-40, -7.905677520212034e-40, -7.66213184711238e-40
	.float -7.664654184348165e-40, -7.671828832485508e-40, -7.683599739585837e-40, -7.686346284575914e-40
	.float -7.687074959777363e-40, -7.695314594747592e-40, -7.696323529641906e-40, -7.675864572062764e-40
	.float -7.678499013175695e-40, -7.905677520212034e-40, -7.706188670830753e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.707141553786494e-40, -7.709215475513695e-40, -7.710504670100873e-40
	.float -7.711513604995187e-40, -7.712634643766647e-40, -7.784100865447213e-40, -7.905677520212034e-40
	.float -7.799851460186224e-40, -7.810165016883654e-40, -7.905677520212034e-40, -7.837630466784421e-40
	.float -7.83931202494161e-40, -7.84228277768598e-40, -7.905677520212034e-40, -7.853325009584859e-40
	.float -7.853661321216297e-40, -7.855342879373487e-40, -7.872046357068238e-40, -7.882079654072804e-40
	.float -7.883593056414275e-40, -7.746265806910443e-40, -7.75540227289784e-40, -7.905677520212034e-40
	.float -7.755626480652133e-40, -7.747779209251914e-40, -7.764258479192373e-40, -7.764426635008092e-40
	.float -7.905677520212034e-40, -7.771208919575425e-40, -7.77317073742548e-40, -7.781690632088574e-40
	.float -7.905677520212034e-40, -7.775132555275534e-40, -7.781914839842866e-40, -7.782587463105742e-40
	.float -7.783708501877202e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40, -7.905677520212034e-40
	.float -7.884714095185735e-40, -7.892841626278819e-40, -7.893570301480268e-40, -7.894803444128873e-40
	.float -7.895924482900333e-40, 0.0
.global lbl_8040D470
lbl_8040D470:
	.4byte 0x8008A57C, 0x8008A584, 0x8008A58C, 0x8008A594
	.4byte 0x8008A59C, 0x8008A5A4, 0x8008A5AC, 0x8008A5BC
	.4byte 0x8008A5B4, 0x8008A5C4, 0x8008A5CC
.global lbl_8040D49C
lbl_8040D49C:
	.4byte 0x8008A614, 0x8008A684, 0x8008A6C8, 0x8008A730
	.4byte 0x8008A798, 0x8008A7DC, 0x8008A86C, 0x8008A944
	.4byte 0x8008A8B0, 0x8008A8F4
.global lbl_8040D4C4
lbl_8040D4C4:
	.4byte 0x8008AB40, 0x8008AB60, 0x8008AB68, 0x8008AB70
	.4byte 0x8008AB78, 0x8008AB80, 0x8008ABA0, 0x8008ABD0
	.4byte 0x8008ABA8, 0x8008ABB0
.global lbl_8040D4EC
lbl_8040D4EC:
	.4byte 0x8008AC44, 0x8008AC78, 0x8008ACAC, 0x8008ACE0
	.4byte 0x8008AD14, 0x8008AD48, 0x8008AD7C, 0x8008AE54
	.4byte 0x8008ADA0, 0x8008ADD4
.global lbl_8040D514
lbl_8040D514:
	.4byte 0x8008B430, 0x8008B430, 0x8008B448, 0x8008B448
	.4byte 0x8008B448, 0x8008B478, 0x8008B478, 0x8008B4A8
	.4byte 0x8008B4A8, 0x8008B4C8, 0x8008B4E8, 0x8008B4E8
	.4byte 0x8008B508, 0x8008B508, 0x8008B430, 0x8008B430
	.4byte 0x8008B528, 0x8008B528, 0x8008B558, 0x8008B558
	.4byte 0x8008B558, 0x8008B588, 0x8008B588, 0x8008B5A8
	.4byte 0x8008B430
.global lbl_8040D578
lbl_8040D578:
	.4byte 0x8008D5C8, 0x8008D0C8, 0x8008D184, 0x8008D240
	.4byte 0x8008D2FC, 0x8008D3B8, 0x8008D424, 0x8008D490
	.4byte 0x8008D4FC, 0x8008D568, 0x8008D568, 0x8008D568
	.4byte 0x8008D568, 0x8008D570
.global lbl_8040D5B0
lbl_8040D5B0:
	.4byte 0x8008D0A0, 0x8008CB6C, 0x8008CDDC, 0x8008CF98
	.4byte 0x8008CA98, 0x8008CC3C, 0x8008CE70, 0x8008CFF0
	.4byte 0x8008CADC, 0x8008CD0C, 0x8008CF04, 0x8008D048
	.4byte 0x8008CB20, 0x8008CB64
.global lbl_8040D5E8
lbl_8040D5E8:
	.4byte 0x8008CA70, 0x8008C51C, 0x8008C5F0, 0x8008C6BC
	.4byte 0x8008C83C, 0x8008C560, 0x8008C634, 0x8008C73C
	.4byte 0x8008C8F8, 0x8008C5A4, 0x8008C678, 0x8008C7BC
	.4byte 0x8008C9B4, 0x8008C5E8
.global lbl_8040D620
lbl_8040D620:
	.4byte 0x8008C4F4, 0x8008BFF4, 0x8008BFF4, 0x8008BFF4
	.4byte 0x8008BFF4, 0x8008BFFC, 0x8008C054, 0x8008C0AC
	.4byte 0x8008C104, 0x8008C15C, 0x8008C204, 0x8008C2AC
	.4byte 0x8008C354, 0x8008C3FC
.global lbl_8040D658
lbl_8040D658:
	.4byte 0x8008D940, 0x8008D964, 0x8008D988, 0x8008D9BC
	.4byte 0x8008D9F0, 0x8008DA24, 0x8008DA58, 0x8008DA8C
	.4byte 0x8008DAC0, 0x8008DAF4, 0x8008DB28, 0x8008E0F8
	.4byte 0x8008DBD0, 0x8008E140, 0x8008DC58, 0x8008E188
	.4byte 0x8008DCE0, 0x8008E1D0, 0x8008DD68, 0x8008E218
	.4byte 0x8008DDF0, 0x8008E260, 0x8008DE98, 0x8008E2A8
	.4byte 0x8008DF20, 0x8008E2F0, 0x8008DFA8, 0x8008E338
	.4byte 0x8008E050, 0x8008E380
.global lbl_8040D6D0
lbl_8040D6D0:
	.4byte 0x8008E690, 0x8008E698, 0x8008E6A0, 0x8008E6A8
	.4byte 0x8008E6B0, 0x8008E6B8, 0x8008E6C0, 0x8008E6C8
	.4byte 0x8008E6D0, 0x8008E6D8, 0x8008E6E0, 0x8008E6E8
	.4byte 0x8008E6F0, 0x8008E6F8
.global lbl_8040D708
lbl_8040D708:
	.4byte 0x8008E5F0, 0x8008E5F8, 0x8008E600, 0x8008E608
	.4byte 0x8008E610, 0x8008E618, 0x8008E620, 0x8008E628
	.4byte 0x8008E630, 0x8008E638, 0x8008E640, 0x8008E648
	.4byte 0x8008E650, 0x8008E658
.global lbl_8040D740
lbl_8040D740:
	.4byte 0x8008E704, 0x8008E5C8, 0x8008E668, 0x8008E704
	.4byte 0x8008E704, 0x8008E704, 0x8008E704, 0x8008E5B8
	.4byte 0x8008E704, 0x8008E704, 0x8008E704, 0x8008E704
	.4byte 0x8008E570, 0x8008E704, 0x8008E594
.global lbl_8040D77C
lbl_8040D77C:
	.4byte 0x8008F79C, 0x8008FA50, 0x8008F7FC, 0x8008F7D8
	.4byte 0x8008FA50, 0x8008F7B8, 0x8008FA50, 0x8008FA50
	.4byte 0x8008F864, 0x8008F840, 0x8008FA50, 0x8008F820
	.4byte 0x8008FA50, 0x8008FA50, 0x8008F8CC, 0x8008F8A8
	.4byte 0x8008FA50, 0x8008F888, 0x8008FA50, 0x8008FA50
	.4byte 0x8008F934, 0x8008F910, 0x8008FA50, 0x8008F8F0
	.4byte 0x8008FA50, 0x8008FA50, 0x8008F99C, 0x8008F978
	.4byte 0x8008FA50, 0x8008F958, 0x8008FA50, 0x8008FA50
	.4byte 0x8008FA04, 0x8008F9E0, 0x8008FA50, 0x8008F9C0
	.4byte 0x8008FA50, 0x8008FA50, 0x8008FA50, 0x8008FA50
	.4byte 0x8008FA50, 0x8008FA50, 0x8008FA50, 0x8008FA50
	.4byte 0x8008FA50, 0x8008FA50, 0x8008FA50, 0x8008FA50
	.4byte 0x8008FA50, 0x8008FA50, 0x8008FA50, 0x8008FA50
	.4byte 0x8008FA50, 0x8008FA28
.global lbl_8040D854
lbl_8040D854:
	.4byte 0x8008F6F8, 0x8008F714, 0x8008F714, 0x8008F6A0
	.4byte 0x8008F714, 0x8008F714, 0x8008F6F8, 0x8008F714
	.4byte 0x8008F714, 0x8008F6A0, 0x8008F714, 0x8008F714
	.4byte 0x8008F6F8, 0x8008F714, 0x8008F714, 0x8008F6A0
	.4byte 0x8008F714, 0x8008F714, 0x8008F6F8, 0x8008F714
	.4byte 0x8008F714, 0x8008F6A0, 0x8008F714, 0x8008F714
	.4byte 0x8008F6F8, 0x8008F714, 0x8008F714, 0x8008F6A0
	.4byte 0x8008F714, 0x8008F714, 0x8008F6F8, 0x8008F714
	.4byte 0x8008F714, 0x8008F6A0
.global lbl_8040D8DC
lbl_8040D8DC:
	.4byte 0x8008FB5C, 0x8008FE2C, 0x8008FBBC, 0x8008FB98
	.4byte 0x8008FE2C, 0x8008FB78, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FC24, 0x8008FC00, 0x8008FE2C, 0x8008FBE0
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FC8C, 0x8008FC68
	.4byte 0x8008FE2C, 0x8008FC48, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FCF4, 0x8008FCD0, 0x8008FE2C, 0x8008FCB0
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FD5C, 0x8008FD38
	.4byte 0x8008FE2C, 0x8008FD18, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FDC4, 0x8008FDA0, 0x8008FE2C, 0x8008FD80
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FE2C, 0x8008FE2C, 0x8008FE2C, 0x8008FE2C
	.4byte 0x8008FE2C, 0x8008FDE8
.global lbl_8040D9B4
lbl_8040D9B4:
	.4byte 0x8008FB18, 0x8008FB34, 0x8008FB34, 0x8008FAC0
	.4byte 0x8008FB34, 0x8008FB34, 0x8008FB18, 0x8008FB34
	.4byte 0x8008FB34, 0x8008FAC0, 0x8008FB34, 0x8008FB34
	.4byte 0x8008FB18, 0x8008FB34, 0x8008FB34, 0x8008FAC0
	.4byte 0x8008FB34, 0x8008FB34, 0x8008FB18, 0x8008FB34
	.4byte 0x8008FB34, 0x8008FAC0, 0x8008FB34, 0x8008FB34
	.4byte 0x8008FB18, 0x8008FB34, 0x8008FB34, 0x8008FAC0
	.4byte 0x8008FB34, 0x8008FB34, 0x8008FB18, 0x8008FB34
	.4byte 0x8008FB34, 0x8008FAC0
.global lbl_8040DA3C
lbl_8040DA3C:
	.4byte 0x8008FF74, 0x8008FF98, 0x8008FFBC, 0x8008FFE0
	.4byte 0x80090004, 0x80090028, 0x8009004C, 0x80090070
	.4byte 0x80090094, 0x800900B8, 0x800900DC, 0x80090100
	.4byte 0x80090328, 0x80090140, 0x80090180, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090328, 0x80090328, 0x80090328, 0x80090328
	.4byte 0x80090124, 0x80090328, 0x80090124, 0x80090124
	.4byte 0x80090328, 0x80090124, 0x80090328, 0x80090328
	.4byte 0x80090124
.global lbl_8040DB30
lbl_8040DB30:
	.4byte 0x800908E0, 0x800908E8, 0x800908F0, 0x80090908
	.4byte 0x80090910, 0x80090918, 0x800909A4, 0x800909A4
	.4byte 0x80090920, 0x800909A4, 0x800909A4, 0x800909A4
	.4byte 0x80090938, 0x80090940, 0x80090948, 0x800909A4
	.4byte 0x800909A4, 0x800909A4, 0x80090950, 0x8009096C
	.4byte 0x80090974, 0x800909A4, 0x80090990
.global lbl_8040DB8C
lbl_8040DB8C:
	.4byte 0x8009108C, 0x80091098, 0x800910A4, 0x800910B0
	.4byte 0x800910BC, 0x800910C8, 0x800910D4, 0x800910EC
	.4byte 0x800910E0, 0x800910F8, 0x80091104
.global lbl_8040DBB8
lbl_8040DBB8:
	.4byte 0x800914B0, 0x8009167C, 0x8009167C, 0x800914BC
	.4byte 0x80091518, 0x80091554, 0x80091574, 0x8009167C
	.4byte 0x80091594, 0x8009167C, 0x8009167C, 0x800915E0
	.4byte 0x800915F4, 0x80091618, 0x8009162C, 0x8009167C
	.4byte 0x8009167C, 0x80091650, 0x8009162C
.global lbl_8040DC04
lbl_8040DC04:
	.4byte 0x80091708, 0x80091754, 0x8009177C, 0x80091864
	.4byte 0x800917B8, 0x80091804, 0x8009182C
.global lbl_8040DC20
lbl_8040DC20:
	.4byte 0x800918D0, 0x800918F8, 0x80091910, 0x80091978
	.4byte 0x800919A0, 0x800919B8, 0x80091A20, 0x80091A20
	.4byte 0x80091A00
.global lbl_8040DC44
lbl_8040DC44:
	.4byte 0x80091B90, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091B90, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091B90, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091C94, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091B90, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091B90, 0x80091C94, 0x80091C94, 0x80091C94
	.4byte 0x80091B90, 0x80091B2C, 0x80091B90, 0x80091B90
	.4byte 0x80091C94, 0x80091BB4, 0x80091BD0, 0x80091BEC
	.4byte 0x80091C08, 0x80091C24, 0x80091C40, 0x80091C5C
	.4byte 0x80091C78, 0x80091B40, 0x80091B90
.global lbl_8040DCE0
lbl_8040DCE0:
	.4byte 0x80091E90, 0x80091E90, 0x80092840, 0x80091EDC
	.4byte 0x80091EDC, 0x80091F28, 0x80091F28, 0x80092850
	.4byte 0x80091F74, 0x80091F74, 0x80091FC0, 0x80091FC0
	.4byte 0x80092860, 0x8009200C, 0x8009200C, 0x80092058
	.4byte 0x80092058, 0x80092870, 0x800920A4, 0x800920A4
	.4byte 0x800920F0, 0x800920F0, 0x80092880, 0x8009213C
	.4byte 0x8009213C, 0x80092188, 0x80092188, 0x80092890
	.4byte 0x800921D4, 0x800921D4, 0x80092220, 0x80092220
	.4byte 0x800928A0, 0x8009226C, 0x8009226C, 0x800922B8
	.4byte 0x800922B8, 0x800928B0, 0x80092304, 0x80092304
	.4byte 0x80092350, 0x800928C0, 0x800923A4, 0x800923F8
	.4byte 0x800928D0, 0x8009244C, 0x800924A0, 0x800928E0
	.4byte 0x800924F4, 0x80092548, 0x800928F0, 0x8009259C
	.4byte 0x800925F0, 0x80092654, 0x800926B8, 0x8009271C
	.4byte 0x80092780, 0x80092818, 0x800927CC
.global lbl_8040DDCC
lbl_8040DDCC:
	.4byte 0x80092C20, 0x800930E4, 0x80092E34, 0x80092E7C
	.4byte 0x80092EC4, 0x80092F0C, 0x80092F54, 0x80092F9C
	.4byte 0x800930E4, 0x800930E4, 0x800930E4, 0x800930E4
	.4byte 0x80092FE4, 0x800930E4, 0x8009305C, 0x800930E4
	.4byte 0x800930E4, 0x800930E4, 0x80092FF8, 0x800930E4
	.4byte 0x8009306C, 0x800930E4, 0x800930E4, 0x800930E4
	.4byte 0x8009300C, 0x800930E4, 0x80093080, 0x800930E4
	.4byte 0x800930E4, 0x800930E4, 0x80093020, 0x800930E4
	.4byte 0x80093094, 0x800930E4, 0x800930E4, 0x800930E4
	.4byte 0x80093034, 0x800930E4, 0x800930A8, 0x800930E4
	.4byte 0x800930E4, 0x800930E4, 0x80093048, 0x800930E4
	.4byte 0x800930BC, 0x80092D44, 0x80092D68, 0x80092D90
	.4byte 0x80092DB8, 0x80092DE0, 0x80092E08, 0x800930E4
	.4byte 0x800930E4, 0x800930E4, 0x800930E4, 0x800930E4
	.4byte 0x800930E4, 0x80092984, 0x80092C44, 0x80092BFC
	.4byte 0x80092CC4, 0x800930D0
.global lbl_8040DEC4
lbl_8040DEC4:
	.4byte 0x800933E0, 0x800933E0, 0x800931A4, 0x800931EC
	.4byte 0x80093234, 0x8009327C, 0x800932C4, 0x8009330C
	.4byte 0x800933E0, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x80093354, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x80093368, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x8009337C, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x80093390, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x800933A4, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x800933B8, 0x80093174, 0x80093174, 0x80093174
	.4byte 0x80093174, 0x80093174, 0x80093174, 0x800933E0
	.4byte 0x800933E0, 0x800933E0, 0x800933E0, 0x800933E0
	.4byte 0x800933E0, 0x8009318C, 0x800933E0, 0x800933E0
	.4byte 0x800933E0, 0x800933CC
.global lbl_8040DFBC
lbl_8040DFBC:
	.4byte 0x80093788, 0x80093724, 0x8009372C, 0x80093734
	.4byte 0x8009373C, 0x80093744, 0x8009374C, 0x80093754
	.4byte 0x8009375C, 0x80093764, 0x8009376C
.global lbl_8040DFE8
lbl_8040DFE8:
	.4byte 0x80093700, 0x80093788, 0x800936B0, 0x80093788
	.4byte 0x80093788, 0x800936B8, 0x80093788, 0x80093788
	.4byte 0x800936C0, 0x80093788, 0x80093788, 0x800936C8
	.4byte 0x80093788, 0x80093788, 0x800936D0, 0x80093788
	.4byte 0x80093788, 0x800936D8, 0x80093788, 0x80093788
	.4byte 0x800936E0, 0x80093788, 0x80093788, 0x800936E8
	.4byte 0x80093788, 0x80093788, 0x800936F0, 0x80093788
	.4byte 0x80093788, 0x800936F8, 0x80093788, 0x80093774
	.4byte 0x80093788, 0x80093788, 0x80093774, 0x80093788
	.4byte 0x80093788, 0x80093788, 0x80093788, 0x80093788
	.4byte 0x80093788, 0x80093788, 0x80093788, 0x80093788
	.4byte 0x80093788, 0x80093788, 0x80093788, 0x80093774
	.4byte 0x80093774
.global lbl_8040E0AC
lbl_8040E0AC:
	.4byte 0x80093E80, 0x80093EA4, 0x80093EBC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093838, 0x80093858
	.4byte 0x80093878, 0x80093898, 0x800938B8, 0x800938D8
	.4byte 0x800938F8, 0x80093918, 0x80093938, 0x80093958
	.4byte 0x80093978, 0x80093998, 0x800939B8, 0x800939D8
	.4byte 0x800939F8, 0x80093A18, 0x80093A38, 0x80093A58
	.4byte 0x80093A78, 0x80093A98, 0x80093AB8, 0x80093AD8
	.4byte 0x80093AF8, 0x80093B18, 0x80093B38, 0x80093B58
	.4byte 0x80093B78, 0x80093B98, 0x80093BB8, 0x80093BD8
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093EDC, 0x80093EDC
	.4byte 0x80093EDC, 0x80093EDC, 0x80093BF8, 0x80093C10
	.4byte 0x80093C34, 0x80093C58, 0x80093C7C, 0x80093CA0
	.4byte 0x80093CC4, 0x80093CE8, 0x80093D00, 0x80093D24
	.4byte 0x80093D48, 0x80093D6C, 0x80093D90, 0x80093DB4
	.4byte 0x80093EDC, 0x80093DD8, 0x80093DF0, 0x80093E08
	.4byte 0x80093E20, 0x80093E38, 0x80093E50, 0x80093E68
	.4byte 0x80093EDC, 0x80093EDC, 0x80093DF0, 0x80093EDC
	.4byte 0x80093EDC, 0x80093E08, 0x80093EDC, 0x80093EDC
	.4byte 0x80093E20, 0x80093EDC, 0x80093EDC, 0x80093E38
	.4byte 0x80093EDC, 0x80093EDC, 0x80093E50, 0x80093EDC
	.4byte 0x80093EDC, 0x80093E68
.global lbl_8040E254
lbl_8040E254:
	.4byte 0x80094078, 0x800940E8, 0x8009414C, 0x800941C0
	.4byte 0x80094208, 0x80094278, 0x80094374, 0x800944C0
	.4byte 0x800943F8, 0x800945D0, 0x800945D0, 0x80094544
	.4byte 0x8009455C, 0x80094574, 0x8009458C, 0x800945A4
	.4byte 0x800945BC
.global lbl_8040E298
lbl_8040E298:
	.4byte 0x800956D8, 0x8009560C, 0x80095624, 0x8009563C
	.4byte 0x80095654, 0x8009566C, 0x80095684, 0x8009569C
	.4byte 0x800956B4
.global lbl_8040E2BC
lbl_8040E2BC:
	.4byte 0x80095840, 0x800957A4, 0x800957B4, 0x800957C4
	.4byte 0x800957D4, 0x800957E4, 0x800957F4, 0x80095804
	.4byte 0x80095814
.global lbl_8040E2E0
lbl_8040E2E0:
	.float 5.828115767769759e-13, 5.863642904557764e-13, 5.899170041345769e-13, 5.934697178133774e-13
	.float 5.970224314921779e-13, 6.005751451709784e-13, 6.041278588497789e-13, 6.076805725285794e-13
	.float 6.112332862073799e-13, 6.147859998861804e-13, 6.538658503529859e-13, 6.574185640317864e-13
	.float 6.609712777105869e-13, 6.645239913893874e-13, 6.680767050681879e-13, 6.716294187469884e-13
	.float 6.75182132425789e-13, 6.787348461045895e-13, 6.8228755978339e-13, 6.858402734621905e-13
	.float 7.24920123928996e-13, 7.284728376077965e-13, 7.32025551286597e-13, 7.355782649653975e-13
	.float 7.39130978644198e-13, 7.426836923229985e-13, 7.46236406001799e-13, 7.497891196805995e-13
	.float 7.533418333594e-13, 7.568945470382005e-13, 6.183387135649809e-13, 6.218914272437814e-13
	.float 6.254441409225819e-13, 6.289968546013824e-13, 6.325495682801829e-13, 6.361022819589834e-13
	.float 6.396549956377839e-13, 6.432077093165844e-13, 6.467604229953849e-13, 6.503131366741854e-13
	.float 6.89392987140991e-13, 6.929457008197915e-13, 6.96498414498592e-13, 7.000511281773925e-13
	.float 7.03603841856193e-13, 7.071565555349935e-13, 7.10709269213794e-13, 7.142619828925945e-13
	.float 7.17814696571395e-13, 7.213674102501955e-13
.global lbl_8040E3A8
lbl_8040E3A8:
	.4byte 0x80095A7C, 0x80095C18, 0x80095CA8, 0x80097E3C
	.4byte 0x80095D40, 0x80095D8C, 0x80095ED4, 0x80095F7C
	.4byte 0x80095C80, 0x80096044, 0x80095FBC, 0x8009606C
	.4byte 0x800960CC, 0x800960EC, 0x8009611C, 0x80096160
	.4byte 0x8009622C, 0x80096304, 0x8009638C, 0x80096430
	.4byte 0x800968B8, 0x800968F8, 0x80096968, 0x800969BC
	.4byte 0x800971C4, 0x8009721C, 0x80097258, 0x80097E3C
	.4byte 0x80097340, 0x8009738C, 0x800975BC, 0x80097698
	.4byte 0x80097758, 0x800977A0, 0x800972A8, 0x80097E3C
	.4byte 0x800977E0, 0x80097D80
.global lbl_8040E440
lbl_8040E440:
	.4byte 0x800981FC, 0x80098228, 0x80098254, 0x80098280
	.4byte 0x800982AC, 0x800982D8, 0x80098300, 0x80098300
	.4byte 0x80098300, 0x80098300, 0x80098300, 0x80098300
	.4byte 0x80097F6C, 0x80097F84, 0x80097F9C, 0x80097FB4
	.4byte 0x80097FCC, 0x80097FE4, 0x8009813C, 0x8009815C
	.4byte 0x8009817C, 0x8009819C, 0x800981BC, 0x800981DC
	.4byte 0x80098300, 0x80097EC4, 0x80097FFC, 0x8009801C
	.4byte 0x8009803C, 0x8009805C, 0x8009807C, 0x8009809C
	.4byte 0x800980BC, 0x800980DC, 0x800980FC, 0x8009811C
	.4byte 0x80098300, 0x80097EDC, 0x80097EF4, 0x80097F0C
	.4byte 0x80097F24, 0x80097F3C, 0x80097F54
.global lbl_8040E4EC
lbl_8040E4EC:
	.4byte 0x80098424, 0x80098424, 0x80098440, 0x80098440
	.4byte 0x80098440, 0x80098468, 0x80098468, 0x8009848C
	.4byte 0x8009848C, 0x800984B4, 0x800984DC, 0x800984DC
	.4byte 0x80098504, 0x80098504, 0x8009852C, 0x8009852C
	.4byte 0x80098548, 0x80098548, 0x80098570, 0x80098570
	.4byte 0x80098570, 0x80098598, 0x80098598, 0x800985C0
	.4byte 0x80098424, 0x80098424, 0x80098440, 0x80098440
	.4byte 0x80098440, 0x80098468, 0x80098468, 0x8009848C
	.4byte 0x8009848C, 0x800984B4, 0x800984DC, 0x800984DC
	.4byte 0x80098504, 0x80098504, 0x8009852C, 0x8009852C
	.4byte 0x80098548, 0x80098548, 0x80098570, 0x80098570
	.4byte 0x80098570, 0x80098598, 0x80098598, 0x800985C0
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x800985E4, 0x800985E4, 0x800985E4
	.4byte 0x800985E4, 0x8009840C, 0x800985E4, 0x8009840C
	.4byte 0x8009840C, 0x800985E4, 0x8009840C, 0x800985E4
	.4byte 0x8009840C, 0x800985E4, 0x800985E4, 0x8009840C
	.4byte 0x800985E4, 0x8009840C, 0x800985E4, 0x8009840C
	.4byte 0x800985E4, 0x8009840C, 0x800985E4, 0x8009840C
	.4byte 0x8009840C, 0x800985E4, 0x8009840C
.global lbl_8040E728
lbl_8040E728:
	.4byte 0x800987D4, 0x8009873C, 0x80098800, 0x80098800
	.4byte 0x80098800, 0x80098800, 0x80098800, 0x80098800
	.4byte 0x80098800, 0x80098800, 0x80098800, 0x80098800
	.4byte 0x800987EC, 0x80098784, 0x800987EC, 0x800987EC
	.4byte 0x80098760
.global lbl_8040E76C
lbl_8040E76C:
	.4byte 0x800989F8, 0x80098A20, 0x80098A48, 0x80098A70
	.4byte 0x80098A98, 0x80098AC0, 0x80098AE8, 0x80098B10
	.4byte 0x80098B38, 0x80098B60, 0x80098B88, 0x80098BB0
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x80098BD4, 0x80098BD4, 0x80098BD4
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
	.4byte 0x80098BD4, 0x800989E0, 0x80098BD4, 0x800989E0
.global lbl_8040E8BC
lbl_8040E8BC:
	.4byte 0x80098C3C, 0x80098C60, 0x80098C88, 0x80098CB0
	.4byte 0x80098D70, 0x80098D70, 0x80098D70, 0x80098D70
	.4byte 0x80098D70, 0x80098D70, 0x80098D70, 0x80098D70
	.4byte 0x80098D70, 0x80098D70, 0x80098D70, 0x80098D70
	.4byte 0x80098D70, 0x80098D70, 0x80098D70, 0x80098D70
	.4byte 0x80098D70, 0x80098D70, 0x80098D70, 0x80098D70
	.4byte 0x80098D70, 0x80098D70, 0x80098CD8, 0x80098CFC
	.4byte 0x80098D24, 0x80098D4C
.global lbl_8040E934
lbl_8040E934:
	.float -8.786757942640906e-40, -8.78815924110523e-40, -8.789616591508129e-40, -8.791073941911026e-40
	.float -8.792531292313924e-40, -8.793988642716822e-40, -8.79544599311972e-40, -8.796903343522618e-40
	.float -8.798360693925515e-40, -8.799818044328413e-40, -8.801275394731311e-40, -8.802732745134209e-40
	.float 0.0
.global lbl_8040E968
lbl_8040E968:
	.4byte 0x8009A5EC, 0x8009A7F0, 0x8009B690, 0x8009A8F4
	.4byte 0x8009A96C, 0x8009A988, 0x8009A9BC, 0x8009A9E4
	.4byte 0x8009AB80, 0x8009B690, 0x8009B3CC, 0x8009B440
	.4byte 0x8009B4EC, 0x8009B690, 0x8009B678
.global lbl_8040E9A4
lbl_8040E9A4:
	.4byte 0x8009B988, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009B9A0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009B9BC, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009B9D8, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009B9F4, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BA10, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BA2C, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BA48, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BA64, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BA80, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BA9C, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAB8, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009B864
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009B704, 0x8009B888, 0x8009B818, 0x8009B908
	.4byte 0x8009B7E8, 0x8009BAD0, 0x8009BAD0, 0x8009BAD0
	.4byte 0x8009BAD0, 0x8009BAD0, 0x8009B7D0, 0x8009B800
.global lbl_8040EB44
lbl_8040EB44:
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BCF4, 0x8009BD90, 0x8009BD90, 0x8009BC9C
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BCF4, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BC9C, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD90, 0x8009BD90, 0x8009BD90
	.4byte 0x8009BD90, 0x8009BD14, 0x8009BD40
.global lbl_8040ECF0
lbl_8040ECF0:
	.4byte 0x8009C1E8, 0x8009C26C, 0x8009C304, 0x8009C4FC
	.4byte 0x8009C578, 0x8009C664, 0x8009C6D4, 0x8009C76C
	.4byte 0x8009C964, 0x8009CA14, 0x8009CAF0, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009CAFC
	.4byte 0x8009CB34, 0x8009CB7C, 0x8009CC58, 0x8009CC9C
	.4byte 0x8009CD00, 0x8009CD8C, 0x8009CF40, 0x8009CF8C
	.4byte 0x8009D024, 0x8009D068, 0x8009D0A8, 0x8009D10C
	.4byte 0x8009D198, 0x8009D34C, 0x8009D398, 0x8009D418
	.4byte 0x8009D458, 0x8009D478, 0x8009D4B8, 0x8009D504
	.4byte 0x8009D5CC, 0x8009D610, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D61C, 0x8009D7E8
	.4byte 0x8009D668, 0x8009D71C, 0x8009D740, 0x8009D764
	.4byte 0x8009D780, 0x8009D794, 0x8009D7B4, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8, 0x8009D7E8, 0x8009D7E8, 0x8009D7E8
	.4byte 0x8009D7E8
.global lbl_8040EE74
lbl_8040EE74:
	.4byte 0x8009DE28, 0x8009DFA4, 0x8009DE64, 0x8009DFD4
	.4byte 0x8009DEA4, 0x8009E008, 0x8009DEE4, 0x8009E03C
	.4byte 0x8009DF24, 0x8009E070, 0x8009DF64, 0x8009E0A4
.global lbl_8040EEA4
lbl_8040EEA4:
	.4byte 0x8009E380, 0x8009E4E8, 0x8009E5C0, 0x8009E5C0
	.4byte 0x8009E540, 0x8009E398, 0x8009E5C0, 0x8009E554
	.4byte 0x8009E3D0, 0x8009E5C0, 0x8009E560, 0x8009E408
	.4byte 0x8009E5C0, 0x8009E574, 0x8009E440, 0x8009E5C0
	.4byte 0x8009E588, 0x8009E478, 0x8009E5C0, 0x8009E59C
	.4byte 0x8009E4B0, 0x8009E5C0, 0x8009E5B0, 0x8009E5C0
	.4byte 0x8009E528
.global lbl_8040EF08
lbl_8040EF08:
	.4byte 0x8009E864, 0x8009E8E4, 0x8009E8E4, 0x8009E878
	.4byte 0x8009E8E4, 0x8009E8E4, 0x8009E884, 0x8009E8E4
	.4byte 0x8009E8E4, 0x8009E898, 0x8009E8E4, 0x8009E8E4
	.4byte 0x8009E8AC, 0x8009E8E4, 0x8009E8E4, 0x8009E8C0
	.4byte 0x8009E8E4, 0x8009E8E4, 0x8009E8D4, 0x8009E8E4
	.4byte 0x8009E8E4, 0x8009E8E4, 0x8009E8E4, 0x8009E78C
	.4byte 0x8009E7B0, 0x8009E7D4, 0x8009E7F8, 0x8009E81C
	.4byte 0x8009E840
.global lbl_8040EF7C
lbl_8040EF7C:
	.4byte 0x8009EC00, 0x8009EC28, 0x8009EDB4, 0x8009EDEC
	.4byte 0x8009EE98, 0x8009EE98, 0x8009EC54, 0x8009EE2C
	.4byte 0x8009EC9C
.global lbl_8040EFA0
lbl_8040EFA0:
	.float 2.382207389352189e-44, 1.401298464324817e-44, 2.5223372357846707e-44, 2.1019476964872256e-44
	.float 1.6815581571897805e-44, 8.407790785948902e-45, 2.802596928649634e-44, 1.8216880036222622e-44
	.float 2.942726775082116e-44, 1.5414283107572988e-44, 3.0828566215145976e-44, 1.1210387714598537e-44
	.float 1.961817850054744e-44, 2.2420775429197073e-44, 2.6624670822171524e-44, 9.80908925027372e-45
	.float 1.2611686178923354e-44
.global lbl_8040EFE4
lbl_8040EFE4:
	.4byte 0x8009F478, 0x8009F278, 0x8009F2DC, 0x8009F300
	.4byte 0x8009F324, 0x8009F348, 0x8009F478, 0x8009F36C
	.4byte 0x8009F374, 0x8009F37C, 0x8009F384, 0x8009F38C
	.4byte 0x8009F394, 0x8009F39C, 0x8009F3A4, 0x8009F3AC
	.4byte 0x8009F3B4, 0x8009F3BC, 0x8009F3C4, 0x8009F3CC
	.4byte 0x8009F3D4, 0x8009F3DC, 0x8009F3E4, 0x8009F3EC
	.4byte 0x8009F474, 0x8009F46C, 0x8009F464, 0x8009F45C
	.4byte 0x8009F454, 0x8009F44C, 0x8009F444, 0x8009F43C
	.4byte 0x8009F434, 0x8009F42C, 0x8009F424, 0x8009F41C
	.4byte 0x8009F414, 0x8009F40C, 0x8009F404, 0x8009F3FC
	.4byte 0x8009F3F4, 0x8009F2C4, 0x8009F290
.global lbl_8040F090
lbl_8040F090:
	.4byte 0x800A6928, 0x800A1830, 0x800A18B4, 0x800A1938
	.4byte 0x800A6928, 0x800A6928, 0x800A6928, 0x800A6928
	.4byte 0x800A6928, 0x800A6928, 0x800A19BC, 0x800A1A40
	.4byte 0x800A1AC4, 0x800A1B48, 0x800A1BB8, 0x800A1C3C
	.4byte 0x800A1CC0
.global lbl_8040F0D4
lbl_8040F0D4:
	.4byte 0x800A6928, 0x800A0870, 0x800A6928, 0x800A6928
	.4byte 0x800A6928, 0x800A6928, 0x800A6928, 0x800A6928
	.4byte 0x800A6928, 0x800A6928, 0x800A08A4, 0x800A08D8
	.4byte 0x800A090C, 0x800A0940, 0x800A0974
.global lbl_8040F110
lbl_8040F110:
	.4byte 0x800A053C, 0x800A0614, 0x800A09A8, 0x800A0AC8
	.4byte 0x800A0B38, 0x800A0D9C, 0x800A0F80, 0x800A6928
	.4byte 0x800A6928, 0x800A208C, 0x800A65E0, 0x800A6668
	.4byte 0x800A684C, 0x800A1D44, 0x800A6928, 0x800A5004
	.4byte 0x800A50B4, 0x800A516C, 0x800A3708, 0x800A37AC
	.4byte 0x800A3858, 0x800A3AEC, 0x800A3C64, 0x800A3D80
	.4byte 0x800A3E28, 0x800A3FEC, 0x800A4724, 0x800A47C4
	.4byte 0x800A6928, 0x800A48BC, 0x800A49D8, 0x800A4DDC
	.4byte 0x800A4E7C, 0x800A2168, 0x800A222C, 0x800A232C
	.4byte 0x800A27DC, 0x800A6928, 0x800A2888, 0x800A294C
	.4byte 0x800A2A4C, 0x800A2EA0, 0x800A6928, 0x800A2F4C
	.4byte 0x800A3010, 0x800A30D8, 0x800A34C8, 0x800A3574
	.4byte 0x800A53E0, 0x800A5490, 0x800A5A38, 0x800A5AAC
	.4byte 0x800A5C30, 0x800A5C7C, 0x800A5DFC, 0x800A5EC8
	.4byte 0x800A5F14, 0x800A52BC, 0x800A53A0, 0x800A5F60
	.4byte 0x800A5FFC, 0x800A60E8, 0x800A6178, 0x800A638C
	.4byte 0x800A6488
.global lbl_8040F214
lbl_8040F214:
	.4byte 0x800A6BF8, 0x800A6C3C, 0x800A6C10, 0x800A6C3C
	.4byte 0x800A6C28, 0x800A6C3C, 0x800A6C10, 0x800A6C3C
	.4byte 0x800A6C10
.global lbl_8040F238
lbl_8040F238:
	.4byte 0x800A6F1C, 0x800A6CC0, 0x800A6D10, 0x800A6F1C
	.4byte 0x800A6F1C, 0x800A6F1C, 0x800A6F1C, 0x800A6D38
	.4byte 0x800A6D8C, 0x800A6DD8, 0x800A6F1C, 0x800A6F1C
	.4byte 0x800A6E24, 0x800A6F1C, 0x800A6F1C, 0x800A6EF8
	.4byte 0x800A6F1C, 0x800A6EAC
.global lbl_8040F280
lbl_8040F280:
	.4byte 0x800A70FC, 0x800A712C, 0x800A7158, 0x800A71A4
	.4byte 0x800A7114, 0x800A71D8, 0x800A7204, 0x800A7250
.global lbl_8040F2A0
lbl_8040F2A0:
	.4byte 0x800A8050, 0x800A8050, 0x800A7FF4, 0x800A7FF0
	.4byte 0x800A7FEC, 0x800A7FE8, 0x800A7FE4, 0x800A8050
	.4byte 0x800A8050, 0x800A8050, 0x800A8018, 0x800A8050
	.4byte 0x800A8050, 0x800A8050, 0x800A802C, 0x800A8050
	.4byte 0x800A8040
.global lbl_8040F2E4
lbl_8040F2E4:
	.4byte 0x800A8BAC, 0x800A84D0, 0x800A8504, 0x800A8538
	.4byte 0x800A856C, 0x800A8BAC, 0x800A8BAC, 0x800A8BAC
	.4byte 0x800A85A0, 0x800A861C, 0x800A8980, 0x800A8BAC
	.4byte 0x800A8A2C, 0x800A8BAC, 0x800A8698, 0x800A8714
	.4byte 0x800A8BAC, 0x800A8AD0, 0x800A8BAC, 0x800A8790
	.4byte 0x800A880C, 0x800A8BAC, 0x800A8B40, 0x800A8BAC
	.4byte 0x800A8888, 0x800A8904
.global lbl_8040F34C
lbl_8040F34C:
	.4byte 0x800A8BAC, 0x800A818C, 0x800A81BC, 0x800A81EC
	.4byte 0x800A821C, 0x800A8BAC, 0x800A824C, 0x800A8BAC
	.4byte 0x800A8104, 0x800A8BAC, 0x800A8BAC, 0x800A8BAC
	.4byte 0x800A82B4, 0x800A812C, 0x800A8BAC, 0x800A8BAC
	.4byte 0x800A8BAC, 0x800A831C, 0x800A813C, 0x800A8BAC
	.4byte 0x800A8BAC, 0x800A8BAC, 0x800A8418, 0x800A816C
.global lbl_8040F3AC
lbl_8040F3AC:
	.4byte 0x800A911C, 0x800A8C40, 0x800A8C78, 0x800A8CB0
	.4byte 0x800A911C, 0x800A8FD0, 0x800A8CE8, 0x800A8D64
	.4byte 0x800A911C, 0x800A9040, 0x800A8DE0, 0x800A8E5C
	.4byte 0x800A911C, 0x800A90B0, 0x800A8ED8, 0x800A8F54
.global lbl_8040F3EC
lbl_8040F3EC:
	.4byte 0x800A9658, 0x800A93AC, 0x800A93C0, 0x800A9428
	.4byte 0x800A9440, 0x800A9454, 0x800A94BC, 0x800A94D4
	.4byte 0x800A9500, 0x800A9558, 0x800A9598, 0x800A95C4
	.4byte 0x800A961C, 0x800A9388, 0x800A9384, 0x800A9380
	.4byte 0x800A937C, 0x800A9378, 0x800A9374, 0x800A9370
	.4byte 0x800A936C, 0x800A9368, 0x800A9364, 0x800A9360
	.4byte 0x800A935C
.global lbl_8040F450
lbl_8040F450:
	.float 0.0, 1.9279074081270084e-38, 1.9279074081270084e-38, 2.526022650745845e-40
	.float 2.526022650745845e-40, 7.347386199040384e-40, 2.9387905276958274e-39, 7.462180569237873e-40
	.float 7.462180569237873e-40, 1.469422589167968e-39, 1.469422589167968e-39, 1.469422589167968e-39
	.float 4.203895392974451e-45, 4.203895392974451e-45, 1.837256429560911e-40, 4.362732573905669e-40
	.float 2.8580210855106093e-39, 2.808916784723739e-40, 2.8580421049875742e-39, 2.8667063333924945e-40
	.float 1.3829344479498403e-39, 2.8580252894060023e-39, 1.3886573508781429e-39, 2.8580210855106093e-39
	.float 1.3829176323682684e-39, 1.3829232375621257e-39, 2.8580210855106093e-39, 1.3829232375621257e-39
	.float 2.8469003808977276e-39, 2.7550648847397363e-40, 2.852281367000735e-39, 2.8469003808977276e-39
	.float 2.8469003808977276e-39, 2.8472591133045947e-39, 1.3775324423698682e-39, 1.3800435692179382e-39
	.float 9.186632472420636e-41, 2.1122500427969417e-39, 2.2959238377098527e-39, 2.479559797564227e-39
	.float 2.5714345300792193e-39, 9.187613381345663e-41, 4.591970989684566e-40, 1.1938684565462074e-39
	.float 4.592013028638496e-40, 1.0102156811102612e-39
.global lbl_8040F508
lbl_8040F508:
	.incbin "baserom.dol", 0x40B608, 0x3C
.global lbl_8040F544
lbl_8040F544:
	.incbin "baserom.dol", 0x40B644, 0x3C
.global lbl_8040F580
lbl_8040F580:
	.incbin "baserom.dol", 0x40B680, 0x258
.global lbl_8040F7D8
lbl_8040F7D8:
	.incbin "baserom.dol", 0x40B8D8, 0x3F78
.global lbl_80413750
lbl_80413750:
	.incbin "baserom.dol", 0x40F850, 0xA8
.global lbl_804137F8
lbl_804137F8:
	.float 0.0, 9.183829875491986e-41, 8.265208667203852e-40, 3.879706226395553e-37
	.float 2.5396581278248816e-35, 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977424160573e-28
	.float 1.2205255925579495e-25, 9.47828864543626e-38, 6.301941157072183e-36, 4.427976347732889e-25
	.float 1.086647549051262e-31, 2.861013168590649e-29, 7.52693481609375e-27, 9.291729857244997e-41
	.float 6.113677672483487e-36, 4.123874332507038e-34, 1.086647549051262e-31, 2.861013168590649e-29
	.float 7.526934045721773e-27, 1.6544123038496684e-24, 1.5636842486455404e-36, 4.123874332507038e-34
	.float 1.086647549051262e-31, 2.861013168590649e-29, 7.526934045721773e-27, 1.6802108164635638e-24
	.float 3.879706226395553e-37, 2.5396581278248816e-35, 6.694873056790824e-33, 1.7633846544255874e-30
	.float 4.640977424160573e-28, 1.2205255925579495e-25, 2.387939260590663e-38, 6.301935417353673e-36
	.float 2.387939260590663e-38, 6.301935417353673e-36, 1.5869638294567774e-36, 6.113672650229791e-36
	.float 1.5869638294567774e-36, 6.113672650229791e-36, 1.5869638294567774e-36, 6.113672650229791e-36
	.float 2.406378386563328e-38, 2.5396581278248816e-35, 6.694873056790824e-33, 1.7633846544255874e-30
	.float 4.641223943193455e-28, 6.567877170571305e-27, 7.967066002399779e-24, 2.406378386563328e-38
	.float 2.558392569041112e-35, 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977905643059e-28
	.float 2.627150868228522e-26, 7.967066002399779e-24, 2.406378386563328e-38, 2.5396581278248816e-35
	.float 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977905643059e-28, 2.627150868228522e-26
	.float 7.967066002399779e-24, 2.406378386563328e-38, 2.5396581278248816e-35, 6.694873056790824e-33
	.float 1.7633846544255874e-30, 4.640977905643059e-28, 2.627150868228522e-26, 7.967066002399779e-24
	.float 2.406378386563328e-38, 2.5396581278248816e-35, 6.694873056790824e-33, 1.7633846544255874e-30
	.float 4.640977905643059e-28, 2.627151176377313e-26, 1.9917665005999448e-24, 2.387939260590663e-38
	.float 6.301941157072183e-36, 1.6616339986002605e-33, 3.944425837122064e-31, 3.879708468473096e-37
	.float 2.55853979282089e-35, 2.6972799334420143e-32, 2.3884412057005844e-38, 9.932937595941647e-35
	.float 2.6966819006910335e-32, 2.407486472852822e-35, 6.308178027040509e-33, 4.123992341119601e-34
	.float 6.630890164591597e-36, 2.3884412057005844e-38, 4.062982806779482e-34, 2.6966798435759196e-32
	.float 3.944425837122064e-31, 3.879708020057588e-37, 1.023415917128356e-34, 2.697284047672242e-32
	.float 7.103035769589486e-30, 1.8690622405473362e-27, 4.914553149644196e-25, 1.291342582652726e-22
	.float 2.710589118627297e-20, 1.5636842486455404e-36, 4.123874332507038e-34, 1.0866480192490023e-31
	.float 7.103035769589486e-30, 6.567481199374739e-27, 4.914553149644196e-25, 1.2995820770355784e-22
	.float 2.71058879550987e-20, 3.879708020057588e-37, 1.023415917128356e-34, 2.697284047672242e-32
	.float 7.103035769589486e-30, 1.8690622405473362e-27, 4.914553149644196e-25, 1.291342582652726e-22
	.float 2.710589118627297e-20, 1.5636842486455404e-36, 4.123874332507038e-34, 1.086647549051262e-31
	.float 2.861013168590649e-29, 6.567481199374739e-27, 4.914553149644196e-25, 1.2995820770355784e-22
	.float 2.710589118627297e-20, 1.5636842486455404e-36, 4.123874332507038e-34, 1.086647549051262e-31
	.float 2.861013168590649e-29, 6.567481199374739e-27, 4.914553149644196e-25, 1.2995820770355784e-22
	.float 2.71058879550987e-20, 3.8797125042126736e-37, 2.5396581278248816e-35, 6.694873056790824e-33
	.float 1.7626112731822944e-30, 9.625513546253311e-38, 2.5396581278248816e-35, 6.694873056790824e-33
	.float 1.763381457080953e-30, 2.5164369284707847e-38, 1.5636842486455404e-36, 4.154085455678132e-34
	.float 1.7263584631656466e-30, 9.506689041672424e-41, 3.8797125042126736e-37, 2.539658414810807e-35
	.float 2.697284047672242e-32, 6.312048065949418e-30, 2.5164369284707847e-38, 1.5637766222403087e-36
	.float 2.697284047672242e-32, 7.099748899305491e-30, 9.626378988184878e-38, 4.154789833933664e-34
	.float 1.0170734473597081e-31, 4.3775207439593645e-31, 9.25571648671185e-41, 1.5639147342169525e-36
	.float 2.5396581278248816e-35, 6.935803113619329e-33, 7.149052705881804e-30, 9.626378988184878e-38
	.float 4.154789833933664e-34, 1.0170734473597081e-31, 4.3775207439593645e-31, 9.25571648671185e-41
	.float 1.0309096936148481e-34, 1.0968869182890149e-28, 2.7092980912575504e-35, 6.557407026966045e-30
	.float 9.625514667292083e-38, 1.0309096936148481e-34, 1.0968883627364731e-28, 4.3775207439593645e-31
	.float 9.291449597552132e-41, 6.207712198295574e-36, 2.387939540850356e-38, 1.575163147566679e-36
	.float 2.463910201692292e-35, 6.019270064968258e-36, 3.791201112219815e-37, 3.694985829685607e-40
	.float 2.3880816325146387e-38, 9.478584599671925e-38, 4.160733254594276e-31, 2.5243279802375926e-32
	.float 1.2041498262416928e-25, 1.721773024272298e-33, 1.824241031402686e-30, 1.658001993692849e-36
	.float 1.0006408288755444e-34, 3.93963606228678e-37, 1.881484103502645e-27, 1.6618694648124096e-33
	.float 6.462743736395117e-27, 1.646292967932705e-36, 1.0082521547971187e-34, 4.292744890260782e-37
	.float 1.637747586049567e-33, 1.1363935192382302e-28, 1.8403532991670688e-40, 1.0868873498988297e-31
	.float 2.5022609918737946e-35, 4.6410987577470695e-28, 4.124461620504968e-34, 2.8019969574901017e-29
	.float 9.698128832674623e-38, 4.623077282066477e-31, 6.536313235380327e-36, 4.703710258756612e-28
	.float 1.721773024272298e-33, 1.824241219481782e-30, 2.406378386563328e-38, 2.5396581278248816e-35
	.float 6.694863505899223e-33, 9.626086397065527e-38, 6.066842286907725e-36, 1.6616339986002605e-33
	.float 6.432212184974489e-40, 3.939169710157853e-37, 1.5637764428741053e-36, 9.861066943793861e-32
	.float 6.396347329657784e-36, 3.9381405965656526e-37, 6.740755540039295e-33, 6.308557123968649e-33
	.float 9.69927117118274e-38, 4.1241043804249135e-34, 2.387939260590663e-38, 6.301941157072183e-36
	.float 1.6616339986002605e-33, 4.377525916134508e-31, 1.1523248117382014e-28, 3.0713581358096827e-26
	.float 7.967088090505125e-24, 2.092721713319411e-21, 5.493405709638163e-19, 2.387939260590663e-38
	.float 6.301941157072183e-36, 1.6616339986002605e-33, 4.377525916134508e-31, 1.1523248117382014e-28
	.float 3.0713581358096827e-26, 7.967088090505125e-24, 2.092721713319411e-21, 5.493405709638163e-19
	.float 9.625547177416455e-38, 6.301941157072183e-36, 1.6616339986002605e-33, 4.375840257235429e-31
	.float 2.861013168590649e-29, 7.527327705802405e-27, 4.9469916031049495e-25, 5.198587306954716e-22
	.float 1.3648480107124957e-19, 9.625547177416455e-38, 6.301941157072183e-36, 1.6616339986002605e-33
	.float 4.375840257235429e-31, 2.861013168590649e-29, 7.527327705802405e-27, 4.946992096143015e-25
	.float 1.299646826738679e-22, 1.3648480107124957e-19, 9.625547177416455e-38, 6.301941157072183e-36
	.float 1.6616339986002605e-33, 4.375840257235429e-31, 2.861013168590649e-29, 7.527327705802405e-27
	.float 4.9469916031049495e-25, 5.198587306954716e-22, 1.3648480107124957e-19, 2.387939260590663e-38
	.float 6.301941157072183e-36, 1.6616339986002605e-33, 4.377525916134508e-31, 1.1523248117382014e-28
	.float 9.866962876850334e-41, 9.773022069879542e-38, 1.587286329890551e-36, 6.694873791474793e-33
	.float 7.103035769589486e-30, 6.462555765632545e-27, 9.625523635602254e-38, 6.301941157072183e-36
	.float 1.6616339986002605e-33, 7.103035769589486e-30, 1.8680228161563504e-27, 9.625513546253311e-38
	.float 2.5396581278248816e-35, 6.696000796683644e-33, 4.377525916134508e-31, 1.1602418282570913e-28
	.float 2.387939260590663e-38, 6.301941157072183e-36, 1.6616339986002605e-33, 4.377525916134508e-31
	.float 1.1523248117382014e-28, 2.3905997658550304e-39, 8.336420113884685e-30, 7.32100600022807e-33
	.float 9.69811874332568e-38, 2.9450957916383604e-20, 9.82919563070287e-15, 3.5721672148048e-11
	.float 5.499760646898721e-10, 5.526487753263256e-28, 9.108521933347539e-21, 8.296719978399761e-18
	.float 3.196360303479108e-29, 1.9991867523304808e-33, 2.8128227126291986e-23, 3.3121976569881056e-14
	.float 1.824250704084905e-24, 1.5165310261572943e-36, 2.850839462467333e-32, 2.112425345757174e-09
	.float 2.051779504172304e-21, 5.593979325788423e-25, 1.493351831083345e-10, 2.019503271208367e-12
	.float 7.241092299682081e-24, 1.9939703585522046e-18, 5.204184192215814e-16, 4.00410523348267e-34
	.float 3.454113755171709e-26, 5.084697675216312e-31, 2.4083172231185676e-38, 6.773197480454517e-27
	.float 1.2398113831682069e-28, 1.1182476936032555e-22, 9.098984586619618e-12, 3.8623153912689396e-17
	.float 1.9245383471549584e-30, 1.1105132582077016e-31, 2.032556744642302e-27, 1.034797167108846e-25
	.float 6.731373264149528e-36, 4.906082593132688e-13, 1.1277059170053833e-16, 4.673861750900937e-37
	.float 3.1633336452204355e-35, 1.5464402490766166e-13, 1.3247579117646064e-34, 1.2382278554338238e-19
	.float 9.206827300545228e-09, 5.396454826565278e-22, 2.0002486114250066e-15, 4.646781182811311e-19
	.float 2.3905997658550304e-39, 8.336420113884685e-30, 7.32100600022807e-33, 9.69811874332568e-38
	.float 2.9450957916383604e-20, 9.82919563070287e-15, 3.5721672148048e-11, 5.499760646898721e-10
	.float 5.526487753263256e-28, 9.108521933347539e-21, 8.296719978399761e-18, 3.196360303479108e-29
	.float 1.9991867523304808e-33, 2.387939260590663e-38, 6.301941157072183e-36, 6.598387745791361e-33
	.float 7.12145337746235e-27, 2.861013168590649e-29, 9.25571648671185e-41, 1.5636842486455404e-36
	.float 4.123874332507038e-34, 1.1405433772892884e-31, 7.103035769589486e-30, 1.6156368228851974e-27
	.float 3.879708020057588e-37, 1.023415917128356e-34, 2.697810375267823e-32, 1.7633846544255874e-30
	.float 4.6385026041820355e-28, 9.625513546253311e-38, 2.5396581278248816e-35, 6.694878199578609e-33
	.float 4.377525916134508e-31, 1.152322404325771e-28, 2.387939260590663e-38, 6.301941157072183e-36
	.float 1.6616339986002605e-33, 7.12145337746235e-27, 2.861013168590649e-29, 9.255996746404714e-41
	.float 3.879823262843294e-37, 4.123874332507038e-34, 1.086647549051262e-31, 2.525437931374402e-29
	.float 4.222361602221447e-31, 1.5635464954013034e-36, 2.498646043167717e-38, 1.109335765516483e-31
	.float 1.0507134309370027e-37, 3.968214479479852e-37, 1.6616347332842298e-33, 4.315768264128747e-31
	.float 1.5528778122751594e-33, 6.160330104531747e-36, 4.033596366363886e-34, 2.781663350249126e-29
	.float 9.25739804486904e-41, 6.160330104531747e-36, 4.033596366363886e-34, 2.7028536950716925e-29
	.float 1.5777703348488256e-30, 3.909210621613851e-37, 1.5047251426472963e-36, 6.301938287212928e-36
	.float 2.3510624099437985e-38, 6.1133074606396e-36, 2.407487046824673e-35, 9.857110174707696e-35
	.float 6.018719769456124e-36, 1.5753010801771194e-36, 9.404244034581337e-38, 3.879708020057588e-37
	.float 1.023415917128356e-34, 4.3775235651458065e-31, 2.861013168590649e-29, 7.072352178716187e-27
	.float 4.911385380071668e-25, 9.625513546253311e-38, 2.5396581278248816e-35, 6.694873056790824e-33
	.float 1.7633848425046835e-30, 1.8690622405473362e-27, 4.688231914164682e-25, 2.387939260590663e-38
	.float 6.865994057009751e-36, 4.123874332507038e-34, 1.086647549051262e-31, 2.8610905067149783e-29
	.float 3.03104765170168e-26, 9.25571648671185e-41, 4.621086539102598e-25, 2.5396581278248816e-35
	.float 6.694873056790824e-33, 1.7758072787250773e-30, 7.526929423489906e-27, 1.654412106634442e-24
	.float 3.879708020057588e-37, 1.023415917128356e-34, 2.697284047672242e-32, 7.103035769589486e-30
	.float 1.8690622405473362e-27, 4.911385380071668e-25, 9.625513546253311e-38, 2.5396581278248816e-35
	.float 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977424160573e-28, 1.2205286740458605e-25
	.float 3.2075958464169325e-23, 8.424034015427743e-21, 2.2109754019912036e-18, 5.799419125844237e-16
	.float 1.520317752983294e-13, 3.983319576961186e-11, 1.0419172191689086e-08, 9.625514667292083e-38
	.float 1.023415917128356e-34, 2.697284047672242e-32, 6.560500551939217e-30, 4.640977424160573e-28
	.float 1.2205286740458605e-25, 3.2075958464169325e-23, 8.42403482322131e-21, 5.527438504978009e-19
	.float 5.799419125844237e-16, 1.520317752983294e-13, 3.983319576961186e-11, 1.0419172191689086e-08
	.float 9.625513546253311e-38, 5.692859117852129e-19, 2.2908024670056335e-18, 6.694873056790824e-33
	.float 1.7633846544255874e-30, 4.640977424160573e-28, 1.2205286740458605e-25, 3.2075958464169325e-23
	.float 8.476768395065132e-21, 3.581098798419287e-17, 1.520317752983294e-13, 4.0287051472631674e-11
	.float 1.0419172191689086e-08, 9.625513546253311e-38, 5.692859117852129e-19, 2.2908024670056335e-18
	.float 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977424160573e-28, 1.2205286740458605e-25
	.float 3.2075958464169325e-23, 8.476768395065132e-21, 3.581098798419287e-17, 1.520317752983294e-13
	.float 4.0287051472631674e-11, 1.0419172191689086e-08, 9.625513546253311e-38, 2.5396581278248816e-35
	.float 6.694873056790824e-33, 1.7633846544255874e-30, 4.640977424160573e-28, 1.2205286740458605e-25
	.float 3.2075958464169325e-23, 8.424034015427743e-21, 2.2109754019912036e-18, 5.799419125844237e-16
	.float 1.520317752983294e-13, 3.983319576961186e-11, 1.0419171303510666e-08
.global lbl_80414024
lbl_80414024:
	.4byte 0x800AB744, 0x800AB75C, 0x800AB78C, 0x800AB7A4
	.4byte 0x800AB834, 0x800AB864, 0x800AB920, 0x800AB920
	.4byte 0x800AB920, 0x800AB920, 0x800AB920, 0x800AB8C4
	.4byte 0x800AB8F4, 0x800AB774, 0x800AB894, 0x800AB804
	.4byte 0x800AB7EC, 0x800AB7D4, 0x800AB7BC, 0x800AB920
	.4byte 0x800AB81C
.global lbl_80414078
lbl_80414078:
	.4byte 0x800AAED0, 0x800AAEFC, 0x800AB014, 0x800AB638
	.4byte 0x800AB664, 0x800AB6C4, 0x800AB6C4, 0x800AB6C4
	.4byte 0x800AB6C4, 0x800AB6C4, 0x800AB6C4, 0x800AB6C4
	.4byte 0x800AB6C4, 0x800AB690
.global lbl_804140B0
lbl_804140B0:
	.4byte 0x800ABDB0, 0x800ABDE8, 0x800ABE10, 0x800ACC08
	.4byte 0x800ACC08, 0x800AC1A8, 0x800AC1D0, 0x800AC24C
	.4byte 0x800AC2B4, 0x800ABE90, 0x800ABEB8, 0x800ABF3C
	.4byte 0x800ABF64, 0x800AC01C, 0x800AC044, 0x800AC09C
	.4byte 0x800AC130
.global lbl_804140F4
lbl_804140F4:
	.4byte 0x800ABB58, 0x800ABC54, 0x800ABC7C, 0x800ABCB0
	.4byte 0x800ABCE4, 0x800ABD38, 0x800ABD80
.global lbl_80414110
lbl_80414110:
	.4byte 0x800ACC08, 0x800ABB34, 0x800ABD8C, 0x800AC3B0
	.4byte 0x800AC5C4, 0x800AC7C0, 0x800AC7C0, 0x800AC7C0
	.4byte 0x800AC7C0, 0x800AC7C0, 0x800AC7C0, 0x800AC7C0
	.4byte 0x800ACA6C, 0x800ACAE4, 0x800AC7C0, 0x800ACB5C
.global lbl_80414150
lbl_80414150:
	.4byte 0x800AD1B0, 0x800AD1BC, 0x800AD1C8, 0x800AD1D4
	.4byte 0x800AD1E0, 0x800AD1EC, 0x800AD1F8, 0x800AD204
.global lbl_80414170
lbl_80414170:
	.4byte 0x800AD3B4, 0x800ACEA8, 0x800ACEE4, 0x800ACF20
	.4byte 0x800ACF5C, 0x800ACF98, 0x800ACFD4, 0x800AD00C
	.4byte 0x800AD048, 0x800AD084, 0x800AD0C0, 0x800AD0FC
	.4byte 0x800AD148, 0x800AD180, 0x800AD214, 0x800AD290
	.4byte 0x800AD310, 0x800AD330
.global lbl_804141B8
lbl_804141B8:
	.4byte 0x800ACDA4, 0x800ACDA8, 0x800ACE20, 0x800ACE48
	.4byte 0x800AD3EC, 0x800AD43C, 0x800AD48C, 0x800AD4EC
	.4byte 0x800AD578, 0x800AD600, 0x800AD634, 0x800ADD24
	.4byte 0x800ADDE0, 0x800ADE64, 0x800ADF18, 0x800ADF68
	.4byte 0x800AE03C, 0x800AE05C, 0x800AE0C8, 0x800AE154
	.4byte 0x800AE1BC, 0x800AE330, 0x800AE408, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AF040, 0x800AF040
	.4byte 0x800AF040, 0x800AF040, 0x800AE488, 0x800AE540
	.4byte 0x800AE5A8, 0x800AE9CC, 0x800AEA98, 0x800AEA34
	.4byte 0x800AEB2C, 0x800AEB5C, 0x800AEF4C, 0x800AEFAC
	.4byte 0x800AEFCC, 0x800AEA98
.global lbl_804142B0
lbl_804142B0:
	.4byte 0x800B0994, 0x800B05EC, 0x800B062C, 0x800B066C
	.4byte 0x800B06AC, 0x800B06EC, 0x800B072C, 0x800B076C
	.4byte 0x800B07AC, 0x800B0994, 0x800B0994, 0x800B0994
	.4byte 0x800B0994, 0x800B0994, 0x800B0994, 0x800B0994
	.4byte 0x800B0994, 0x800B0994, 0x800B0994, 0x800B0994
	.4byte 0x800B07EC, 0x800B0994, 0x800B0994, 0x800B0994
	.4byte 0x800B0994, 0x800B082C
.global lbl_80414318
lbl_80414318:
	.4byte 0x800B0F3C, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F3C
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F3C, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F3C, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F3C, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F3C, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F3C
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F3C, 0x800B0F40, 0x800B0F40
	.4byte 0x800B0F40, 0x800B0F40, 0x800B0F3C
.global lbl_804143F4
lbl_804143F4:
	.4byte 0x800B16DC, 0x800B16DC, 0x800B16DC, 0x800B1714
	.4byte 0x800B1714, 0x800B1714, 0x800B174C, 0x800B174C
	.4byte 0x800B174C, 0x800B1784, 0x800B1784, 0x800B1784
	.4byte 0x800B17BC, 0x800B17BC, 0x800B17BC, 0x800B17F4
	.4byte 0x800B17F4, 0x800B17F4, 0x800B182C, 0x800B182C
	.4byte 0x800B182C, 0x800B1864, 0x800B1864, 0x800B1864
.global lbl_80414454
lbl_80414454:
	.4byte 0x800B1390, 0x800B13A8, 0x800B16A4, 0x800B13C0
	.4byte 0x800B13D8, 0x800B16A4, 0x800B13F0, 0x800B1408
	.4byte 0x800B16A4, 0x800B1420, 0x800B1438, 0x800B16A4
	.4byte 0x800B1450, 0x800B1468, 0x800B16A4, 0x800B1480
	.4byte 0x800B1498, 0x800B16A4, 0x800B14B0, 0x800B14C8
	.4byte 0x800B16A4, 0x800B14E0, 0x800B14F8, 0x800B16A4
	.4byte 0x800B1510, 0x800B1528, 0x800B16A4, 0x800B1540
	.4byte 0x800B1558, 0x800B1274, 0x800B1274, 0x800B16A4
	.4byte 0x800B12E4, 0x800B16A4, 0x800B157C, 0x800B16A4
	.4byte 0x800B16A4, 0x800B16A4, 0x800B15D8, 0x800B1354
	.4byte 0x800B160C, 0x800B16A4, 0x800B16A4, 0x800B16A4
	.4byte 0x800B16A4, 0x800B16A4, 0x800B16A4, 0x800B16A4
	.4byte 0x800B16A4, 0x800B16A4, 0x800B16A4, 0x800B16A4
	.4byte 0x800B16A4, 0x800B16A4, 0x800B16A4, 0x800B16A4
	.4byte 0x800B16A4, 0x800B16A4, 0x800B11BC, 0x800B1200
	.4byte 0x800B1220
.global lbl_80414548
lbl_80414548:
	.4byte 0x800B1AF0, 0x800B1B14, 0x800B1B38, 0x800B1B5C
	.4byte 0x800B1B80, 0x800B1BA4, 0x800B1BC8, 0x800B1BEC
	.4byte 0x800B1C10, 0x800B1C34, 0x800B1C58, 0x800B1C8C
	.4byte 0x800B1CB0, 0x800B1D48, 0x800B1D84, 0x800B1DBC
	.4byte 0x800B1DF4, 0x800B1D18, 0x800B1CE8
.global lbl_80414594
lbl_80414594:
	.4byte 0x800B1A80, 0x800B1A8C, 0x800B1A8C, 0x800B1A80
	.4byte 0x800B1A8C, 0x800B1A8C, 0x800B1A80, 0x800B1A8C
	.4byte 0x800B1A8C, 0x800B1A80, 0x800B1A8C, 0x800B1A8C
	.4byte 0x800B1A80, 0x800B1A8C, 0x800B1A8C, 0x800B1A80
	.4byte 0x800B1A8C, 0x800B1A8C, 0x800B1A80, 0x800B1A8C
	.4byte 0x800B1A8C, 0x800B1A80, 0x800B1A8C, 0x800B1A8C
	.4byte 0x800B1A80, 0x800B1A8C, 0x800B1A8C, 0x800B1A80
	.4byte 0x800B1A8C, 0x800B1A8C, 0x800B1A8C, 0x800B1A8C
	.4byte 0x800B1A8C, 0x800B1A80
.global lbl_8041461C
lbl_8041461C:
	.4byte 0x800B1924, 0x800B1A54, 0x800B1A54, 0x800B1940
	.4byte 0x800B1A54, 0x800B1A54, 0x800B195C, 0x800B1A54
	.4byte 0x800B1A54, 0x800B1978, 0x800B1A54, 0x800B1A54
	.4byte 0x800B1994, 0x800B1A54, 0x800B1A54, 0x800B19B0
	.4byte 0x800B1A54, 0x800B1A54, 0x800B19CC, 0x800B1A54
	.4byte 0x800B1A54, 0x800B19E8, 0x800B1A54, 0x800B1A54
	.4byte 0x800B1A04, 0x800B1A54, 0x800B1A54, 0x800B1A20
	.4byte 0x800B1A54, 0x800B1A54, 0x800B1A54, 0x800B1A54
	.4byte 0x800B1A54, 0x800B1A3C
.global lbl_804146A4
lbl_804146A4:
	.4byte 0x800B25D8, 0x800B2378, 0x800B25D8, 0x800B25D8
	.4byte 0x800B25D8, 0x800B25D8, 0x800B23D0, 0x800B1FDC
	.4byte 0x800B23E4, 0x800B2004, 0x800B23F8, 0x800B202C
	.4byte 0x800B240C, 0x800B2054, 0x800B2420, 0x800B207C
	.4byte 0x800B2434, 0x800B20A4, 0x800B2448, 0x800B20CC
	.4byte 0x800B245C, 0x800B20F4, 0x800B2470, 0x800B211C
	.4byte 0x800B2484, 0x800B2144, 0x800B2498, 0x800B216C
	.4byte 0x800B24AC, 0x800B2194, 0x800B24C0, 0x800B21BC
	.4byte 0x800B24D4, 0x800B21E4, 0x800B24E8, 0x800B220C
	.4byte 0x800B25D8, 0x800B2234, 0x800B25D8, 0x800B25D8
	.4byte 0x800B25D8, 0x800B25D8, 0x800B25D8, 0x800B25D8
	.4byte 0x800B25D8, 0x800B25D8, 0x800B25D8, 0x800B25D8
	.4byte 0x800B25D8, 0x800B25D8, 0x800B25D8, 0x800B25D8
	.4byte 0x800B25D8, 0x800B25D8, 0x800B25D8, 0x800B25D8
	.4byte 0x800B2290, 0x800B24FC, 0x800B22E0, 0x800B25A4
	.4byte 0x800B1F90, 0x800B1E8C, 0x800B1EE0
.global lbl_804147A0
lbl_804147A0:
	.4byte 0x800B2C10, 0x800B2CE8, 0x800B2828, 0x800B285C
	.4byte 0x800B2890, 0x800B28C4, 0x800B28F8, 0x800B292C
	.4byte 0x800B2960, 0x800B2994, 0x800B29C8, 0x800B29FC
	.4byte 0x800B2A30, 0x800B2A64, 0x800B2A98, 0x800B2ACC
	.4byte 0x800B2B00, 0x800B2B34, 0x800B2B68, 0x800B2BD8
	.4byte 0x800B2CE8, 0x800B2CE8, 0x800B2CE8, 0x800B2CE8
	.4byte 0x800B2CB4, 0x800B2BA0
.global lbl_80414808
lbl_80414808:
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4, 0x800B2800, 0x800B27F4, 0x800B2800
	.4byte 0x800B27F4
.global lbl_8041487C
lbl_8041487C:
	.4byte 0x800B2664, 0x800B27C8, 0x800B267C, 0x800B27C8
	.4byte 0x800B2694, 0x800B27C8, 0x800B26AC, 0x800B27C8
	.4byte 0x800B26C4, 0x800B27C8, 0x800B26DC, 0x800B27C8
	.4byte 0x800B26F4, 0x800B27C8, 0x800B270C, 0x800B27C8
	.4byte 0x800B2724, 0x800B27C8, 0x800B273C, 0x800B27C8
	.4byte 0x800B2754, 0x800B27C8, 0x800B276C, 0x800B27C8
	.4byte 0x800B2784, 0x800B27C8, 0x800B279C, 0x800B27C8
	.4byte 0x800B27B4
.global lbl_804148F0
lbl_804148F0:
	.4byte 0x800B2F6C, 0x800B2F6C, 0x800B2F6C, 0x800B2F6C
	.4byte 0x800B2DF0, 0x800B2DF0, 0x800B3254, 0x800B3254
	.4byte 0x800B3254, 0x800B3254, 0x800B3254, 0x800B3254
	.4byte 0x800B3254, 0x800B2F6C, 0x800B2D60, 0x800B2F6C
	.4byte 0x800B2F6C, 0x800B2F6C, 0x800B2F6C, 0x800B3254
	.4byte 0x800B2F6C
.global lbl_80414944
lbl_80414944:
	.incbin "baserom.dol", 0x410A44, 0x10
.global lbl_80414954
lbl_80414954:
	.4byte 0x800B39F8, 0x800B39A8, 0x800B39F8, 0x800B39F8
	.4byte 0x800B34A8, 0x800B39F8, 0x800B39F8, 0x800B34D0
	.4byte 0x800B39F8, 0x800B39F8, 0x800B34F8, 0x800B39F8
	.4byte 0x800B39F8, 0x800B3520, 0x800B39F8, 0x800B39F8
	.4byte 0x800B3548, 0x800B39F8, 0x800B39F8, 0x800B3570
	.4byte 0x800B39F8, 0x800B39F8, 0x800B3598, 0x800B39F8
	.4byte 0x800B39F8, 0x800B35C0, 0x800B39F8, 0x800B39F8
	.4byte 0x800B35E8, 0x800B39F8, 0x800B39F8, 0x800B3610
	.4byte 0x800B39F8, 0x800B39F8, 0x800B3638, 0x800B39F8
	.4byte 0x800B39F8, 0x800B3660, 0x800B39F8, 0x800B39F8
	.4byte 0x800B3688, 0x800B39F8, 0x800B39F8, 0x800B36B0
	.4byte 0x800B39F8, 0x800B39F8, 0x800B36D8, 0x800B39F8
	.4byte 0x800B39F8, 0x800B3700, 0x800B39F8, 0x800B39F8
	.4byte 0x800B3728, 0x800B39F8, 0x800B39F8, 0x800B3750
	.4byte 0x800B39F8, 0x800B39F8, 0x800B3778, 0x800B39F8
	.4byte 0x800B39F8, 0x800B37A0, 0x800B39F8, 0x800B39F8
	.4byte 0x800B37C8, 0x800B39F8, 0x800B39F8, 0x800B37F0
	.4byte 0x800B39F8, 0x800B39F8, 0x800B3818, 0x800B39F8
	.4byte 0x800B39F8, 0x800B3840, 0x800B39F8, 0x800B39F8
	.4byte 0x800B3868, 0x800B39F8, 0x800B39F8, 0x800B3890
	.4byte 0x800B39F8, 0x800B39F8, 0x800B38B8, 0x800B39F8
	.4byte 0x800B39F8, 0x800B38E0, 0x800B39F8, 0x800B39F8
	.4byte 0x800B3908, 0x800B39F8, 0x800B39F8, 0x800B3930
	.4byte 0x800B39F8, 0x800B39F8, 0x800B3958, 0x800B39F8
	.4byte 0x800B39F8, 0x800B3980
.global lbl_80414ADC
lbl_80414ADC:
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3B60, 0x800B3A64
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3A6C, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3A74, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3A7C, 0x800B3B60, 0x800B3B60, 0x800B3A84
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3A8C, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3A94, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3A9C, 0x800B3B60, 0x800B3B60, 0x800B3AA4
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3AAC, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3AB4, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3ABC, 0x800B3B60, 0x800B3B60, 0x800B3AC4
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3ACC, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3AD4, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3ADC, 0x800B3B60, 0x800B3B60, 0x800B3AE4
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3AEC, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3AF4, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3AFC, 0x800B3B60, 0x800B3B60, 0x800B3B04
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3B0C, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3B14, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3B1C, 0x800B3B60, 0x800B3B60, 0x800B3B24
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3B2C, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3B34, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3B3C, 0x800B3B60, 0x800B3B60, 0x800B3B44
	.4byte 0x800B3B60, 0x800B3B60, 0x800B3B4C, 0x800B3B60
	.4byte 0x800B3B60, 0x800B3B54, 0x800B3B60, 0x800B3B60
	.4byte 0x800B3B5C
.global lbl_80414C60
lbl_80414C60:
	.4byte 0x800B3FB0, 0x800B3F74, 0x800B3FB0, 0x800B3FB0
	.4byte 0x800B3BF4, 0x800B3FB0, 0x800B3FB0, 0x800B3C2C
	.4byte 0x800B3FB0, 0x800B3FB0, 0x800B3C64, 0x800B3FB0
	.4byte 0x800B3FB0, 0x800B3C9C, 0x800B3FB0, 0x800B3FB0
	.4byte 0x800B3CD4, 0x800B3FB0, 0x800B3FB0, 0x800B3D0C
	.4byte 0x800B3FB0, 0x800B3FB0, 0x800B3D44, 0x800B3FB0
	.4byte 0x800B3FB0, 0x800B3D7C, 0x800B3FB0, 0x800B3FB0
	.4byte 0x800B3DB4, 0x800B3FB0, 0x800B3FB0, 0x800B3DEC
	.4byte 0x800B3FB0, 0x800B3FB0, 0x800B3E24, 0x800B3FB0
	.4byte 0x800B3FB0, 0x800B3E5C, 0x800B3FB0, 0x800B3FB0
	.4byte 0x800B3E94, 0x800B3FB0, 0x800B3FB0, 0x800B3ECC
	.4byte 0x800B3FB0, 0x800B3FB0, 0x800B3F04, 0x800B3FB0
	.4byte 0x800B3FB0, 0x800B3F3C
.global lbl_80414D28
lbl_80414D28:
	.4byte 0x800B4098, 0x800B4098, 0x800B4098, 0x800B401C
	.4byte 0x800B4098, 0x800B4098, 0x800B4024, 0x800B4098
	.4byte 0x800B4098, 0x800B402C, 0x800B4098, 0x800B4098
	.4byte 0x800B4034, 0x800B4098, 0x800B4098, 0x800B403C
	.4byte 0x800B4098, 0x800B4098, 0x800B4044, 0x800B4098
	.4byte 0x800B4098, 0x800B404C, 0x800B4098, 0x800B4098
	.4byte 0x800B4054, 0x800B4098, 0x800B4098, 0x800B405C
	.4byte 0x800B4098, 0x800B4098, 0x800B4064, 0x800B4098
	.4byte 0x800B4098, 0x800B406C, 0x800B4098, 0x800B4098
	.4byte 0x800B4074, 0x800B4098, 0x800B4098, 0x800B407C
	.4byte 0x800B4098, 0x800B4098, 0x800B4084, 0x800B4098
	.4byte 0x800B4098, 0x800B408C, 0x800B4098, 0x800B4098
	.4byte 0x800B4094
.global lbl_80414DEC
lbl_80414DEC:
	.4byte 0x800B43EC, 0x800B43B8, 0x800B43EC, 0x800B43EC
	.4byte 0x800B4188, 0x800B43EC, 0x800B43EC, 0x800B41C0
	.4byte 0x800B43EC, 0x800B43EC, 0x800B41F8, 0x800B43EC
	.4byte 0x800B43EC, 0x800B4230, 0x800B43EC, 0x800B43EC
	.4byte 0x800B4268, 0x800B43EC, 0x800B43EC, 0x800B42A0
	.4byte 0x800B43EC, 0x800B43EC, 0x800B42D8, 0x800B43EC
	.4byte 0x800B43EC, 0x800B4310, 0x800B43EC, 0x800B43EC
	.4byte 0x800B4348, 0x800B43EC, 0x800B43EC, 0x800B4380
.global lbl_80414E6C
lbl_80414E6C:
	.4byte 0x800B455C, 0x800B4474, 0x800B455C, 0x800B4510
	.4byte 0x800B455C, 0x800B455C, 0x800B4518, 0x800B455C
	.4byte 0x800B455C, 0x800B4520, 0x800B455C, 0x800B455C
	.4byte 0x800B4528, 0x800B455C, 0x800B455C, 0x800B4530
	.4byte 0x800B455C, 0x800B455C, 0x800B4538, 0x800B455C
	.4byte 0x800B455C, 0x800B4540, 0x800B455C, 0x800B455C
	.4byte 0x800B4548, 0x800B455C, 0x800B455C, 0x800B4550
	.4byte 0x800B455C, 0x800B455C, 0x800B4558
.global lbl_80414EE8
lbl_80414EE8:
	.4byte 0x800B48A4, 0x800B4890, 0x800B48A4, 0x800B48A4
	.4byte 0x800B45F0, 0x800B48A4, 0x800B48A4, 0x800B4628
	.4byte 0x800B48A4, 0x800B48A4, 0x800B4660, 0x800B48A4
	.4byte 0x800B48A4, 0x800B4698, 0x800B48A4, 0x800B48A4
	.4byte 0x800B46D0, 0x800B48A4, 0x800B48A4, 0x800B4708
	.4byte 0x800B48A4, 0x800B48A4, 0x800B4740, 0x800B48A4
	.4byte 0x800B48A4, 0x800B4778, 0x800B48A4, 0x800B48A4
	.4byte 0x800B47B0, 0x800B48A4, 0x800B48A4, 0x800B47E8
	.4byte 0x800B48A4, 0x800B48A4, 0x800B4820, 0x800B48A4
	.4byte 0x800B48A4, 0x800B4858
.global lbl_80414F80
lbl_80414F80:
	.4byte 0x800B496C, 0x800B496C, 0x800B496C, 0x800B4910
	.4byte 0x800B496C, 0x800B496C, 0x800B4918, 0x800B496C
	.4byte 0x800B496C, 0x800B4920, 0x800B496C, 0x800B496C
	.4byte 0x800B4928, 0x800B496C, 0x800B496C, 0x800B4930
	.4byte 0x800B496C, 0x800B496C, 0x800B4938, 0x800B496C
	.4byte 0x800B496C, 0x800B4940, 0x800B496C, 0x800B496C
	.4byte 0x800B4948, 0x800B496C, 0x800B496C, 0x800B4950
	.4byte 0x800B496C, 0x800B496C, 0x800B4958, 0x800B496C
	.4byte 0x800B496C, 0x800B4960, 0x800B496C, 0x800B496C
	.4byte 0x800B4968
.global lbl_80415014
lbl_80415014:
	.4byte 0x800B4CA8, 0x800B4C80, 0x800B4CA8, 0x800B4CA8
	.4byte 0x800B4A00, 0x800B4CA8, 0x800B4CA8, 0x800B4A28
	.4byte 0x800B4CA8, 0x800B4CA8, 0x800B4A50, 0x800B4CA8
	.4byte 0x800B4CA8, 0x800B4A78, 0x800B4CA8, 0x800B4CA8
	.4byte 0x800B4AA0, 0x800B4CA8, 0x800B4CA8, 0x800B4AC8
	.4byte 0x800B4CA8, 0x800B4CA8, 0x800B4AF0, 0x800B4CA8
	.4byte 0x800B4CA8, 0x800B4B18, 0x800B4CA8, 0x800B4CA8
	.4byte 0x800B4B40, 0x800B4CA8, 0x800B4CA8, 0x800B4B68
	.4byte 0x800B4CA8, 0x800B4CA8, 0x800B4B90, 0x800B4CA8
	.4byte 0x800B4CA8, 0x800B4BB8, 0x800B4CA8, 0x800B4CA8
	.4byte 0x800B4BE0, 0x800B4CA8, 0x800B4CA8, 0x800B4C08
	.4byte 0x800B4CA8, 0x800B4CA8, 0x800B4C30, 0x800B4CA8
	.4byte 0x800B4CA8, 0x800B4C58
.global lbl_804150DC
lbl_804150DC:
	.4byte 0x800B4D90, 0x800B4D90, 0x800B4D90, 0x800B4D14
	.4byte 0x800B4D90, 0x800B4D90, 0x800B4D1C, 0x800B4D90
	.4byte 0x800B4D90, 0x800B4D24, 0x800B4D90, 0x800B4D90
	.4byte 0x800B4D2C, 0x800B4D90, 0x800B4D90, 0x800B4D34
	.4byte 0x800B4D90, 0x800B4D90, 0x800B4D3C, 0x800B4D90
	.4byte 0x800B4D90, 0x800B4D44, 0x800B4D90, 0x800B4D90
	.4byte 0x800B4D4C, 0x800B4D90, 0x800B4D90, 0x800B4D54
	.4byte 0x800B4D90, 0x800B4D90, 0x800B4D5C, 0x800B4D90
	.4byte 0x800B4D90, 0x800B4D64, 0x800B4D90, 0x800B4D90
	.4byte 0x800B4D6C, 0x800B4D90, 0x800B4D90, 0x800B4D74
	.4byte 0x800B4D90, 0x800B4D90, 0x800B4D7C, 0x800B4D90
	.4byte 0x800B4D90, 0x800B4D84, 0x800B4D90, 0x800B4D90
	.4byte 0x800B4D8C
.global lbl_804151A0
lbl_804151A0:
	.4byte 0x800B4F44, 0x800B4EEC, 0x800B4F44, 0x800B4F44
	.4byte 0x800B4E24, 0x800B4F44, 0x800B4F44, 0x800B4E4C
	.4byte 0x800B4F44, 0x800B4F44, 0x800B4E74, 0x800B4F44
	.4byte 0x800B4F44, 0x800B4E9C, 0x800B4F44, 0x800B4F44
	.4byte 0x800B4EC4
.global lbl_804151E4
lbl_804151E4:
	.4byte 0x800B4FD4, 0x800B4FD4, 0x800B4FD4, 0x800B4FB0
	.4byte 0x800B4FD4, 0x800B4FD4, 0x800B4FB8, 0x800B4FD4
	.4byte 0x800B4FD4, 0x800B4FC0, 0x800B4FD4, 0x800B4FD4
	.4byte 0x800B4FC8, 0x800B4FD4, 0x800B4FD4, 0x800B4FD0
.global lbl_80415224
lbl_80415224:
	.4byte 0x800B52DC, 0x800B52DC, 0x800B52DC, 0x800B52D0
	.4byte 0x800B52DC, 0x800B52DC, 0x800B52D8, 0x800B52DC
	.4byte 0x800B52DC, 0x800B52DC, 0x800B52DC
.global lbl_80415250
lbl_80415250:
	.4byte 0x800B5758, 0x800B5730, 0x800B5758, 0x800B5758
	.4byte 0x800B5370, 0x800B5758, 0x800B5758, 0x800B5398
	.4byte 0x800B5758, 0x800B5758, 0x800B53C0, 0x800B5758
	.4byte 0x800B5758, 0x800B53E8, 0x800B5758, 0x800B5758
	.4byte 0x800B5410, 0x800B5758, 0x800B5758, 0x800B5438
	.4byte 0x800B5758, 0x800B5758, 0x800B5460, 0x800B5758
	.4byte 0x800B5758, 0x800B5488, 0x800B5758, 0x800B5758
	.4byte 0x800B54B0, 0x800B5758, 0x800B5758, 0x800B54D8
	.4byte 0x800B5758, 0x800B5758, 0x800B5500, 0x800B5758
	.4byte 0x800B5758, 0x800B5528, 0x800B5758, 0x800B5758
	.4byte 0x800B5550, 0x800B5758, 0x800B5758, 0x800B5578
	.4byte 0x800B5758, 0x800B5758, 0x800B55A0, 0x800B5758
	.4byte 0x800B5758, 0x800B55C8, 0x800B5758, 0x800B5758
	.4byte 0x800B55F0, 0x800B5758, 0x800B5758, 0x800B5618
	.4byte 0x800B5758, 0x800B5758, 0x800B5640, 0x800B5758
	.4byte 0x800B5758, 0x800B5668, 0x800B5758, 0x800B5758
	.4byte 0x800B5690, 0x800B5758, 0x800B5758, 0x800B56B8
	.4byte 0x800B5758, 0x800B5758, 0x800B56E0, 0x800B5758
	.4byte 0x800B5758, 0x800B5708
.global lbl_80415378
lbl_80415378:
	.4byte 0x800B5880, 0x800B5880, 0x800B5880, 0x800B57C4
	.4byte 0x800B5880, 0x800B5880, 0x800B57CC, 0x800B5880
	.4byte 0x800B5880, 0x800B57D4, 0x800B5880, 0x800B5880
	.4byte 0x800B57DC, 0x800B5880, 0x800B5880, 0x800B57E4
	.4byte 0x800B5880, 0x800B5880, 0x800B57EC, 0x800B5880
	.4byte 0x800B5880, 0x800B57F4, 0x800B5880, 0x800B5880
	.4byte 0x800B57FC, 0x800B5880, 0x800B5880, 0x800B5804
	.4byte 0x800B5880, 0x800B5880, 0x800B580C, 0x800B5880
	.4byte 0x800B5880, 0x800B5814, 0x800B5880, 0x800B5880
	.4byte 0x800B581C, 0x800B5880, 0x800B5880, 0x800B5824
	.4byte 0x800B5880, 0x800B5880, 0x800B582C, 0x800B5880
	.4byte 0x800B5880, 0x800B5834, 0x800B5880, 0x800B5880
	.4byte 0x800B583C, 0x800B5880, 0x800B5880, 0x800B5844
	.4byte 0x800B5880, 0x800B5880, 0x800B584C, 0x800B5880
	.4byte 0x800B5880, 0x800B5854, 0x800B5880, 0x800B5880
	.4byte 0x800B585C, 0x800B5880, 0x800B5880, 0x800B5864
	.4byte 0x800B5880, 0x800B5880, 0x800B586C, 0x800B5880
	.4byte 0x800B5880, 0x800B5874, 0x800B5880, 0x800B5880
	.4byte 0x800B587C
.global lbl_8041549C
lbl_8041549C:
	.4byte 0x800B5E90, 0x800B5E54, 0x800B5E90, 0x800B5E90
	.4byte 0x800B5914, 0x800B5E90, 0x800B5E90, 0x800B594C
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5984, 0x800B5E90
	.4byte 0x800B5E90, 0x800B59BC, 0x800B5E90, 0x800B5E90
	.4byte 0x800B59F4, 0x800B5E90, 0x800B5E90, 0x800B5A2C
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5A64, 0x800B5E90
	.4byte 0x800B5E90, 0x800B5A9C, 0x800B5E90, 0x800B5E90
	.4byte 0x800B5AD4, 0x800B5E90, 0x800B5E90, 0x800B5B0C
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5B44, 0x800B5E90
	.4byte 0x800B5E90, 0x800B5B7C, 0x800B5E90, 0x800B5E90
	.4byte 0x800B5BB4, 0x800B5E90, 0x800B5E90, 0x800B5BEC
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5C24, 0x800B5E90
	.4byte 0x800B5E90, 0x800B5C5C, 0x800B5E90, 0x800B5E90
	.4byte 0x800B5C94, 0x800B5E90, 0x800B5E90, 0x800B5CCC
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5D04, 0x800B5E90
	.4byte 0x800B5E90, 0x800B5D3C, 0x800B5E90, 0x800B5E90
	.4byte 0x800B5D74, 0x800B5E90, 0x800B5E90, 0x800B5DAC
	.4byte 0x800B5E90, 0x800B5E90, 0x800B5DE4, 0x800B5E90
	.4byte 0x800B5E90, 0x800B5E1C
.global lbl_804155C4
lbl_804155C4:
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5FB8, 0x800B5EFC
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5F04, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5F0C, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5F14, 0x800B5FB8, 0x800B5FB8, 0x800B5F1C
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5F24, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5F2C, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5F34, 0x800B5FB8, 0x800B5FB8, 0x800B5F3C
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5F44, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5F4C, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5F54, 0x800B5FB8, 0x800B5FB8, 0x800B5F5C
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5F64, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5F6C, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5F74, 0x800B5FB8, 0x800B5FB8, 0x800B5F7C
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5F84, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5F8C, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5F94, 0x800B5FB8, 0x800B5FB8, 0x800B5F9C
	.4byte 0x800B5FB8, 0x800B5FB8, 0x800B5FA4, 0x800B5FB8
	.4byte 0x800B5FB8, 0x800B5FAC, 0x800B5FB8, 0x800B5FB8
	.4byte 0x800B5FB4
.global lbl_804156E8
lbl_804156E8:
	.4byte 0x800B681C, 0x800B67CC, 0x800B681C, 0x800B681C
	.4byte 0x800B604C, 0x800B681C, 0x800B681C, 0x800B6074
	.4byte 0x800B681C, 0x800B681C, 0x800B609C, 0x800B681C
	.4byte 0x800B681C, 0x800B60C4, 0x800B681C, 0x800B681C
	.4byte 0x800B60EC, 0x800B681C, 0x800B681C, 0x800B6114
	.4byte 0x800B681C, 0x800B681C, 0x800B613C, 0x800B681C
	.4byte 0x800B681C, 0x800B6164, 0x800B681C, 0x800B681C
	.4byte 0x800B618C, 0x800B681C, 0x800B681C, 0x800B61B4
	.4byte 0x800B681C, 0x800B681C, 0x800B61DC, 0x800B681C
	.4byte 0x800B681C, 0x800B6204, 0x800B681C, 0x800B681C
	.4byte 0x800B622C, 0x800B681C, 0x800B681C, 0x800B6254
	.4byte 0x800B681C, 0x800B681C, 0x800B627C, 0x800B681C
	.4byte 0x800B681C, 0x800B62A4, 0x800B681C, 0x800B681C
	.4byte 0x800B62CC, 0x800B681C, 0x800B681C, 0x800B62F4
	.4byte 0x800B681C, 0x800B681C, 0x800B631C, 0x800B681C
	.4byte 0x800B681C, 0x800B6344, 0x800B681C, 0x800B681C
	.4byte 0x800B636C, 0x800B681C, 0x800B681C, 0x800B6394
	.4byte 0x800B681C, 0x800B681C, 0x800B63BC, 0x800B681C
	.4byte 0x800B681C, 0x800B63E4, 0x800B681C, 0x800B681C
	.4byte 0x800B640C, 0x800B681C, 0x800B681C, 0x800B6434
	.4byte 0x800B681C, 0x800B681C, 0x800B645C, 0x800B681C
	.4byte 0x800B681C, 0x800B6484, 0x800B681C, 0x800B681C
	.4byte 0x800B64AC, 0x800B681C, 0x800B681C, 0x800B64D4
	.4byte 0x800B681C, 0x800B681C, 0x800B64FC, 0x800B681C
	.4byte 0x800B681C, 0x800B6524, 0x800B681C, 0x800B681C
	.4byte 0x800B654C, 0x800B681C, 0x800B681C, 0x800B6574
	.4byte 0x800B681C, 0x800B681C, 0x800B659C, 0x800B681C
	.4byte 0x800B681C, 0x800B65C4, 0x800B681C, 0x800B681C
	.4byte 0x800B65EC, 0x800B681C, 0x800B681C, 0x800B6614
	.4byte 0x800B681C, 0x800B681C, 0x800B663C, 0x800B681C
	.4byte 0x800B681C, 0x800B6664, 0x800B681C, 0x800B681C
	.4byte 0x800B668C, 0x800B681C, 0x800B681C, 0x800B66B4
	.4byte 0x800B681C, 0x800B681C, 0x800B66DC, 0x800B681C
	.4byte 0x800B681C, 0x800B6704, 0x800B681C, 0x800B681C
	.4byte 0x800B672C, 0x800B681C, 0x800B681C, 0x800B6754
	.4byte 0x800B681C, 0x800B681C, 0x800B677C, 0x800B681C
	.4byte 0x800B681C, 0x800B67A4
.global lbl_80415930
lbl_80415930:
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6A04, 0x800B6888
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6890, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6898, 0x800B6A04, 0x800B6A04
	.4byte 0x800B68A0, 0x800B6A04, 0x800B6A04, 0x800B68A8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B68B0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B68B8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B68C0, 0x800B6A04, 0x800B6A04, 0x800B68C8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B68D0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B68D8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B68E0, 0x800B6A04, 0x800B6A04, 0x800B68E8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B68F0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B68F8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6900, 0x800B6A04, 0x800B6A04, 0x800B6908
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6910, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6918, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6920, 0x800B6A04, 0x800B6A04, 0x800B6928
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6930, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6938, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6940, 0x800B6A04, 0x800B6A04, 0x800B6948
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6950, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6958, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6960, 0x800B6A04, 0x800B6A04, 0x800B6968
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6970, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6978, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6980, 0x800B6A04, 0x800B6A04, 0x800B6988
	.4byte 0x800B6A04, 0x800B6A04, 0x800B6990, 0x800B6A04
	.4byte 0x800B6A04, 0x800B6998, 0x800B6A04, 0x800B6A04
	.4byte 0x800B69A0, 0x800B6A04, 0x800B6A04, 0x800B69A8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B69B0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B69B8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B69C0, 0x800B6A04, 0x800B6A04, 0x800B69C8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B69D0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B69D8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B69E0, 0x800B6A04, 0x800B6A04, 0x800B69E8
	.4byte 0x800B6A04, 0x800B6A04, 0x800B69F0, 0x800B6A04
	.4byte 0x800B6A04, 0x800B69F8, 0x800B6A04, 0x800B6A04
	.4byte 0x800B6A00
.global lbl_80415B74
lbl_80415B74:
	.4byte 0x800B6BC4, 0x800B6BB0, 0x800B6BC4, 0x800B6BC4
	.4byte 0x800B6A98, 0x800B6BC4, 0x800B6BC4, 0x800B6AC0
	.4byte 0x800B6BC4, 0x800B6BC4, 0x800B6AE8, 0x800B6BC4
	.4byte 0x800B6BC4, 0x800B6B10, 0x800B6BC4, 0x800B6BC4
	.4byte 0x800B6B38, 0x800B6BC4, 0x800B6BC4, 0x800B6B60
	.4byte 0x800B6BC4, 0x800B6BC4, 0x800B6B88
.global lbl_80415BD0
lbl_80415BD0:
	.4byte 0x800B6C64, 0x800B6C64, 0x800B6C64, 0x800B6C30
	.4byte 0x800B6C64, 0x800B6C64, 0x800B6C38, 0x800B6C64
	.4byte 0x800B6C64, 0x800B6C40, 0x800B6C64, 0x800B6C64
	.4byte 0x800B6C48, 0x800B6C64, 0x800B6C64, 0x800B6C50
	.4byte 0x800B6C64, 0x800B6C64, 0x800B6C58, 0x800B6C64
	.4byte 0x800B6C64, 0x800B6C60
.global lbl_80415C28
lbl_80415C28:
	.4byte 0x800B6E84, 0x800B6CF8, 0x800B6E84, 0x800B6E84
	.4byte 0x800B6E84, 0x800B6D38, 0x800B6E84, 0x800B6E84
	.4byte 0x800B6D70, 0x800B6E84, 0x800B6E84, 0x800B6DA8
	.4byte 0x800B6E84, 0x800B6E84, 0x800B6DE0, 0x800B6E84
	.4byte 0x800B6E84, 0x800B6E18, 0x800B6E84, 0x800B6E84
	.4byte 0x800B6E50
.global lbl_80415C7C
lbl_80415C7C:
	.4byte 0x800B7004, 0x800B7150, 0x800B7150, 0x800B7018
	.4byte 0x800B7150, 0x800B7150, 0x800B7024, 0x800B7150
	.4byte 0x800B7150, 0x800B7038, 0x800B7150, 0x800B7150
	.4byte 0x800B704C, 0x800B7150, 0x800B7150, 0x800B7060
	.4byte 0x800B7150, 0x800B7150, 0x800B7074, 0x800B7150
	.4byte 0x800B7150, 0x800B7150, 0x800B7088, 0x800B6F2C
	.4byte 0x800B6F50, 0x800B6F74, 0x800B6F98, 0x800B6FBC
	.4byte 0x800B6FE0
.global lbl_80415CF0
lbl_80415CF0:
	.4byte 0x800B79B0, 0x800B7A0C, 0x800B7A0C, 0x800B79C8
	.4byte 0x800B7A0C, 0x800B7A0C, 0x800B79E0, 0x800B7A0C
	.4byte 0x800B7A0C, 0x800B7A0C, 0x800B79F8
.global lbl_80415D1C
lbl_80415D1C:
	.4byte 0x800B7AB4, 0x800B7A84, 0x800B7A94, 0x800B7AA4
	.4byte 0x800B7E5C, 0x800B7AC4, 0x800B7E5C, 0x800B7E5C
	.4byte 0x800B7E5C, 0x800B7B48, 0x800B7E5C, 0x800B7E5C
	.4byte 0x800B7C94, 0x800B7E5C, 0x800B7E5C, 0x800B7DDC
.global lbl_80415D5C
lbl_80415D5C:
	.4byte 0x800B8828, 0x800B8850, 0x800B88A0, 0x800B88C8
	.4byte 0x800B88F0, 0x800B8918, 0x800B8A04, 0x800B8A04
	.4byte 0x800B8A04, 0x800B8A04, 0x800B8A04, 0x800B8A04
	.4byte 0x800B8A04, 0x800B8878, 0x800B8940, 0x800B8968
	.4byte 0x800B8990, 0x800B89B8, 0x800B89E0, 0x800B8A04
	.4byte 0x800B8878
.global lbl_80415DB0
lbl_80415DB0:
	.4byte 0x800B8A48, 0x800B8A74, 0x800B8ACC, 0x800B8AF8
	.4byte 0x800B8B24, 0x800B8B50, 0x800B8C54, 0x800B8C54
	.4byte 0x800B8C54, 0x800B8C54, 0x800B8C54, 0x800B8C54
	.4byte 0x800B8C54, 0x800B8AA0, 0x800B8B7C, 0x800B8BA8
	.4byte 0x800B8BD4, 0x800B8C00, 0x800B8C2C, 0x800B8C54
	.4byte 0x800B8AA0
.global lbl_80415E04
lbl_80415E04:
	.4byte 0x800B8C8C, 0x800B8C9C, 0x800B8CBC, 0x800B8CCC
	.4byte 0x800B8CDC, 0x800B8CEC, 0x800B8D4C, 0x800B8D4C
	.4byte 0x800B8D4C, 0x800B8D4C, 0x800B8D4C, 0x800B8D4C
	.4byte 0x800B8D4C, 0x800B8CAC, 0x800B8CFC, 0x800B8D0C
	.4byte 0x800B8D1C, 0x800B8D2C, 0x800B8D3C, 0x800B8D4C
	.4byte 0x800B8CAC
.global lbl_80415E58
lbl_80415E58:
	.4byte 0x800B8D78, 0x800B8D88, 0x800B8DA8, 0x800B8DB8
	.4byte 0x800B8DC8, 0x800B8DD8, 0x800B8E38, 0x800B8E38
	.4byte 0x800B8E38, 0x800B8E38, 0x800B8E38, 0x800B8E38
	.4byte 0x800B8E38, 0x800B8D98, 0x800B8DE8, 0x800B8DF8
	.4byte 0x800B8E08, 0x800B8E18, 0x800B8E28, 0x800B8E38
	.4byte 0x800B8D98
.global lbl_80415EAC
lbl_80415EAC:
	.4byte 0x800B8F4C, 0x800B8F38, 0x800B8F40, 0x800B8F38
	.4byte 0x800B8F48, 0x800B8F38, 0x800B8F48, 0x800B8F38
	.4byte 0x800B8F38, 0x800B8F48, 0x800B8F38, 0x800B8F48
	.4byte 0x800B8F38
.global lbl_80415EE0
lbl_80415EE0:
	.incbin "baserom.dol", 0x411FE0, 0x60
.global lbl_80415F40
lbl_80415F40:
	.byte 0x00
	.ascii "?"
	.byte 0x00
	.ascii "?"
	.byte 0x00
	.ascii "?"
	.byte 0x00
	.ascii "?"
	.byte 0x00
	.ascii "?"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80415F50
lbl_80415F50:
	.4byte 0x800BA63C, 0x800BA650, 0x800BA678, 0x800BA664
	.4byte 0x800BA68C, 0x800BA6F0, 0x800BA6A0, 0x800BA6B4
	.4byte 0x800BA6C8, 0x800BA6DC, 0x800BA72C, 0x800BA704
	.4byte 0x800BA718, 0x800BA740, 0x800BA74C, 0x800BA760
	.4byte 0x800BA774, 0x800BA7C4, 0x800BA788, 0x800BA79C
	.4byte 0x800BA7B0, 0x800BA7D8
.global lbl_80415FA8
lbl_80415FA8:
	.4byte 0x800BA80C, 0x800BA81C, 0x800BA82C, 0x800BA83C
	.4byte 0x800BA84C, 0x800BA89C, 0x800BA85C, 0x800BA86C
	.4byte 0x800BA87C, 0x800BA88C, 0x800BA8CC, 0x800BA8AC
	.4byte 0x800BA8BC, 0x800BA8DC, 0x800BA8E8, 0x800BA8F8
	.4byte 0x800BA908, 0x800BA948, 0x800BA918, 0x800BA928
	.4byte 0x800BA938, 0x800BA958
.global lbl_80416000
lbl_80416000:
	.4byte 0x800BBBC8, 0x800BBD44, 0x800BBD74, 0x800BBF98
	.4byte 0x800BCAC0, 0x800BCC10, 0x800BCDB8, 0x800BD6CC
	.4byte 0x800BD6CC, 0x800BCFA0, 0x800BD1A8, 0x800BD520
	.4byte 0x800BC824, 0x800BC94C
.global lbl_80416038
lbl_80416038:
	.4byte 0x800BD798, 0x800BD938, 0x800BDA70, 0x800BDD8C
	.4byte 0x800BDDE4, 0x800BDE80, 0x800BDF40
.global lbl_80416054
lbl_80416054:
	.4byte 0x800C2058, 0x800BF678, 0x800BF7C0, 0x800BF83C
	.4byte 0x800BF8B8, 0x800BF8B8, 0x800BF8B8, 0x800BF8B8
	.4byte 0x800BF8B8, 0x800BF6E8, 0x800BF6E8, 0x800C2058
	.4byte 0x800C2058, 0x800BFA14
.global lbl_8041608C
lbl_8041608C:
	.4byte 0x800C2058, 0x800C2058, 0x800BF240, 0x800BF23C
	.4byte 0x800BF238, 0x800BF234, 0x800BF230, 0x800BF240
	.4byte 0x800BF23C, 0x800BF238, 0x800BF234, 0x800BF230
.global lbl_804160BC
lbl_804160BC:
	.4byte 0x800BE050, 0x800BE37C, 0x800BE598, 0x800BEE18
	.4byte 0x800BEF40, 0x800BF1C0, 0x800BFE18, 0x800BFA94
	.4byte 0x800C004C, 0x800C0158, 0x800C04CC, 0x800C2058
	.4byte 0x800C0D80, 0x800C1EC0, 0x800C1F30, 0x800C1F88
	.4byte 0x800C1FF8, 0x800BE838, 0x800BEDD0
.global lbl_80416108
lbl_80416108:
	.4byte 0x800C2758, 0x800C2648, 0x800C255C, 0x800C2758
	.4byte 0x800C26AC, 0x800C26F0, 0x800C2758, 0x800C2720
.global lbl_80416128
lbl_80416128:
	.4byte 0x800C2BD8, 0x800C2BEC, 0x800C2B14, 0x800C2BEC
	.4byte 0x800C2B24, 0x800C2BEC, 0x800C2B48, 0x800C2BEC
	.4byte 0x800C2B6C, 0x800C2BEC, 0x800C2B90, 0x800C2BEC
	.4byte 0x800C2BB4
.global lbl_8041615C
lbl_8041615C:
	.4byte 0x800C3830, 0x800C3614, 0x800C3638, 0x800C365C
	.4byte 0x800C3680, 0x800C36A4, 0x800C36C8, 0x800C36EC
	.4byte 0x800C3710, 0x800C3734, 0x800C3758, 0x800C377C
	.4byte 0x800C3830, 0x800C37AC, 0x800C3830, 0x800C37B8
	.4byte 0x800C3830, 0x800C37C4, 0x800C3830, 0x800C37D0
	.4byte 0x800C3830, 0x800C37DC, 0x800C3830, 0x800C37E8
	.4byte 0x800C3830, 0x800C37F4, 0x800C3830, 0x800C3800
	.4byte 0x800C3830, 0x800C380C, 0x800C3830, 0x800C3818
	.4byte 0x800C3830, 0x800C3824
.global lbl_804161E4
lbl_804161E4:
	.4byte 0x800C39A0, 0x800C39C4, 0x800C39F0, 0x800C3A1C
	.4byte 0x800C3A48, 0x800C3B64, 0x800C3B64, 0x800C3B64
	.4byte 0x800C3B64, 0x800C3A74, 0x800C3B64, 0x800C3A74
	.4byte 0x800C3B64, 0x800C3A74, 0x800C3B64, 0x800C3A74
	.4byte 0x800C3B64, 0x800C3A74, 0x800C3B64, 0x800C3A74
.global lbl_80416234
lbl_80416234:
	.4byte 0x800C4148, 0x800C4158, 0x800C4168, 0x800C4178
	.4byte 0x800C4188, 0x800C4198, 0x800C41A8, 0x800C41B8
	.4byte 0x800C41C8, 0x800C41D8
.global lbl_8041625C
lbl_8041625C:
	.4byte 0x800C3BE0, 0x800C3C04, 0x800C3C28, 0x800C3F94
	.4byte 0x800C3F94, 0x800C3F94, 0x800C3C4C, 0x800C3F94
	.4byte 0x800C3F94, 0x800C3D8C, 0x800C3F94, 0x800C3F94
	.4byte 0x800C3EE8
.global lbl_80416290
lbl_80416290:
	.float 5.510241873356619e-40, 5.510241873356619e-40, 5.510241873356619e-40, 5.510241873356619e-40
	.float 5.510241873356619e-40, 5.510241873356619e-40
.global lbl_804162A8
lbl_804162A8:
	.float 3.2625999450683594, -4.457399845123291, -44.30149841308594, 4.557199954986572
	.float 7.506800174713135, -39.90340042114258, 2.8685998916625977, -2.913599967956543
	.float -42.060001373291016, 3.3838000297546387, -4.866099834442139, -44.13010025024414
	.float 3.56850004196167, 8.10260009765625, -42.42380142211914, 3.067500114440918
	.float -5.6992998123168945, -42.46839904785156, 2.2797000408172607, -6.852200031280518
	.float -50.01300048828125, 3.070499897003174, 6.745800018310547, -49.497398376464844
	.float 1.9349000453948975, -16.256099700927734, -39.894901275634766, 2.4444000720977783
	.float -7.262700080871582, -49.54710006713867, 2.4472999572753906, -9.906299591064453
	.float -42.282798767089844, 1.843999981880188, -12.848799705505371, -48.05609893798828
	.float 3.7797000408172607, 12.898799896240234, -45.41270065307617, 3.7797000408172607
	.float 14.881699562072754, -45.41270065307617, 3.039099931716919, 16.107099533081055
	.float -45.41270065307617, 3.7342000007629395, 12.455599784851074, -45.41270065307617
	.float 2.9500999450683594, 14.357099533081055, -45.41270065307617, 3.226599931716919
	.float 11.042699813842773, -45.41270065307617, 1.9577000141143799, 12.622300148010254
	.float -56.583099365234375, 2.5769999027252197, 15.480199813842773, -53.14550018310547
	.float 1.6603000164031982, 16.22640037536621, -54.11709976196289, 2.4463000297546387
	.float 12.675299644470215, -54.035701751708984, 1.9235999584197998, 14.180899620056152
	.float -52.937198638916016, 1.7360999584197998, 11.042699813842773, -54.9390983581543
	.float 4.105500221252441, 10.379899978637695, -43.57320022583008, 4.8109002113342285
	.float 13.004799842834473, -37.67179870605469, 4.571400165557861, 12.322999954223633
	.float -35.792999267578125, 3.766400098800659, 9.199899673461914, -43.57320022583008
	.float 4.2179999351501465, 11.92710018157959, -37.67169952392578, 3.6982998847961426
	.float 7.0142998695373535, -43.57320022583008, 2.3517000675201416, 9.775699615478516
	.float -53.620601654052734, 3.29010009765625, 11.944199562072754, -48.79669952392578
	.float 3.0144999027252197, 12.158300399780273, -46.85350036621094, 2.9558000564575195
	.float 9.093899726867676, -49.391300201416016, 2.1177000999450684, 12.08240032196045
	.float -51.83829879760742, 2.251300096511841, 8.279500007629395, -53.17539978027344
	.float 4.592199802398682, 8.180999755859375, -40.569698333740234, 4.348800182342529
	.float 9.014300346374512, -40.75529861450195, 6.662199974060059, 11.24530029296875
	.float -27.751399993896484, 4.4028000831604, 8.199899673461914, -40.56959915161133
	.float 4.882800102233887, 9.697999954223633, -40.75519943237305, 4.775899887084961
	.float 6.605199813842773, -40.72119903564453, 2.4860999584198, 8.180999755859375
	.float -52.19459915161133, 2.72760009765625, 9.086299896240234, -49.70600128173828
	.float 5.20959997177124, 11.65250015258789, -38.23820114135742, 3.0409998893737793
	.float 8.40820026397705, -49.49570083618164, 4.25600004196167, 9.737700462341309
	.float -47.20399856567383, 3.544800043106079, 6.654399871826172, -49.13970184326172
	.float 6.8024001121521, 4.949900150299072, -25.20829963684082, 6.547800064086914
	.float 5.133699893951416, -25.503400802612305, 6.8024001121521, 4.949900150299072
	.float -25.20829963684082, 5.698200225830078, 4.226399898529053, -30.24799919128418
	.float 6.547800064086914, 5.133600234985352, -25.503400802612305, 6.8024001121521
	.float 4.949900150299072, -25.20829963684082, 4.853600025177002, 4.197999954223633
	.float -37.9640007019043, 5.435999870300293, 5.196199893951416, -33.61709976196289
	.float 4.414100170135498, 6.194200038909912, -38.03779983520508, 4.55049991607666
	.float 3.8457000255584717, -39.1702995300293, 5.102700233459473, 5.9953999519348145
	.float -35.656898498535156, 4.853600025177002, 4.197999954223633, -37.9640007019043
	.float 6.8024001121521, 4.949900150299072, -25.20829963684082, 5.307199954986572
	.float 4.101500034332275, -33.61539840698242, 6.8024001121521, 4.949900150299072
	.float -25.20829963684082, 6.343999862670898, 4.82480001449585, -26.878700256347656
	.float 6.43779993057251, 3.684799909591675, -32.83689880371094, 4.679200172424316
	.float 3.461199998855591, -36.81060028076172, 5.760900020599365, -7.896399974822998
	.float -31.42340087890625, 5.004199981689453, -20.007400512695312, -29.058500289916992
	.float 7.635300159454346, -16.668500900268555, -23.863300323486328, 5.755000114440918
	.float -15.349900245666504, -28.050500869750977, 6.148099899291992, -14.897700309753418
	.float -31.439899444580078, 3.8496999740600586, -25.215900421142578, -35.11249923706055
	.float 10.228599548339844, 7.883699893951416, -3.1493000984191895, 11.769399642944336
	.float 9.071200370788574, 6.659599781036377, 11.661499977111816, 8.988100051879883
	.float 5.9730000495910645, 9.874199867248535, 7.610599994659424, -5.405300140380859
	.float 11.3996000289917, 8.786199569702148, 4.305500030517578, 8.8572998046875
	.float 6.8267998695373535, -11.878999710083008, 3.3232998847961426, 13.006699562072754
	.float -48.38589859008789, 5.028900146484375, 14.536999702453613, -37.35559844970703
	.float 4.492800235748291, 13.690699577331543, -35.382999420166016, 3.6677000522613525
	.float 11.890899658203125, -45.865699768066406, 3.5339999198913574, 13.590999603271484
	.float -42.118900299072266, 2.933000087738037, 10.758600234985352, -47.58539962768555
.global lbl_80416698
lbl_80416698:
	.float 3.2625999450683594, 21.940399169921875, 18.657800674438477, 4.557199954986572
	.float 20.332399368286133, 27.150999069213867, 2.8685998916625977, 26.26759910583496
	.float 19.65839958190918, 3.3838000297546387, 21.531600952148438, 18.829099655151367
	.float 3.56850004196167, 20.928199768066406, 24.63050079345703, 3.067500114440918
	.float 20.698400497436523, 20.490800857543945, 2.2797000408172607, 19.545700073242188
	.float 12.946200370788574, 3.070499897003174, 19.571300506591797, 17.55699920654297
	.float 1.9349000453948975, 27.692899703979492, 12.346699714660645, 2.4444000720977783
	.float 19.135000228881836, 13.412099838256836, 2.4472999572753906, 26.08880043029785
	.float 15.726799964904785, 1.843999981880188, 18.89590072631836, 12.38379955291748
	.float 3.7797000408172607, 12.898799896240234, 22.85700035095215, 3.7797000408172607
	.float 14.881699562072754, 22.85689926147461, 3.039099931716919, 16.107099533081055
	.float 22.85689926147461, 3.7342000007629395, 12.455599784851074, 22.85689926147461
	.float 2.9500999450683594, 14.357099533081055, 22.85689926147461, 3.226599931716919
	.float 11.042699813842773, 22.85689926147461, 1.9577000141143799, 12.622300148010254
	.float 11.686599731445312, 2.5769999027252197, 15.480199813842773, 15.124099731445312
	.float 1.6603000164031982, 16.22640037536621, 14.15250015258789, 2.4463000297546387
	.float 12.675299644470215, 14.23390007019043, 1.9235999584197998, 14.180899620056152
	.float 15.33240032196045, 1.7360999584197998, 11.042699813842773, 13.330499649047852
	.float 4.105500221252441, 10.379899978637695, 24.696500778198242, 4.8109002113342285
	.float 13.004799842834473, 30.59819984436035, 4.571400165557861, 12.322999954223633
	.float 32.476600646972656, 3.766400098800659, 9.199899673461914, 24.696399688720703
	.float 4.2179999351501465, 11.92710018157959, 30.598100662231445, 3.6982998847961426
	.float 7.0142998695373535, 24.696399688720703, 2.3517000675201416, 9.775699615478516
	.float 14.649100303649902, 3.29010009765625, 11.944199562072754, 19.47319984436035
	.float 3.0144999027252197, 12.158300399780273, 21.416099548339844, 2.9558000564575195
	.float 9.093899726867676, 18.878299713134766, 2.1177000999450684, 12.08240032196045
	.float 16.43160057067871, 2.251300096511841, 8.279500007629395, 15.094200134277344
	.float 4.592199802398682, 8.180999755859375, 27.700000762939453, 4.348800182342529
	.float 9.014300346374512, 27.51460075378418, 6.662199974060059, 11.24530029296875
	.float 40.5181999206543, 4.4028000831604, 8.199899673461914, 27.700000762939453
	.float 4.882800102233887, 9.697999954223633, 27.51449966430664, 4.775899887084961
	.float 6.605199813842773, 27.54840087890625, 2.4860999584198, 8.180999755859375
	.float 16.07509994506836, 2.72760009765625, 9.086299896240234, 18.563899993896484
	.float 5.20959997177124, 11.65250015258789, 30.031400680541992, 3.0409998893737793
	.float 8.40820026397705, 18.77389907836914, 4.25600004196167, 9.737700462341309
	.float 21.065799713134766, 3.544800043106079, 6.654399871826172, 19.129899978637695
	.float 6.8024001121521, 4.949900150299072, 43.0614013671875, 6.547800064086914
	.float 5.133699893951416, 42.76649856567383, 6.8024001121521, 4.949900150299072
	.float 43.0614013671875, 5.698200225830078, 4.226399898529053, 38.02159881591797
	.float 6.547800064086914, 5.133600234985352, 42.76639938354492, 6.8024001121521
	.float 4.949900150299072, 43.0614013671875, 4.853600025177002, 4.197999954223633
	.float 30.305700302124023, 5.435999870300293, 5.196199893951416, 34.652801513671875
	.float 4.414100170135498, 6.194200038909912, 30.231800079345703, 4.55049991607666
	.float 3.8457000255584717, 29.099300384521484, 5.102700233459473, 5.9953999519348145
	.float 32.61289978027344, 4.853600025177002, 4.197999954223633, 30.305700302124023
	.float 6.8024001121521, 4.949900150299072, 43.0614013671875, 5.307199954986572
	.float 4.101500034332275, 34.65449905395508, 6.8024001121521, 4.949900150299072
	.float 43.0614013671875, 6.343999862670898, 4.82480001449585, 41.390899658203125
	.float 6.43779993057251, 3.684799909591675, 35.43280029296875, 4.679200172424316
	.float 3.461199998855591, 31.458999633789062, 5.760900020599365, 10.99370002746582
	.float 34.18080139160156, 5.004199981689453, 19.838199615478516, 26.377099990844727
	.float 4.2393999099731445, 23.193300247192383, 31.456100463867188, 5.755000114440918
	.float 18.850099563598633, 31.03499984741211, 6.148099899291992, 16.703500747680664
	.float 29.075599670410156, 3.8496999740600586, 15.384699821472168, 19.772199630737305
	.float 10.228599548339844, 7.883699893951416, 65.12049865722656, 11.769399642944336
	.float 9.071200370788574, 74.92960357666016, 11.661499977111816, 8.988100051879883
	.float 74.2428970336914, 9.874199867248535, 7.610599994659424, 62.86439895629883
	.float 11.3996000289917, 8.786199569702148, 72.57540130615234, 8.8572998046875
	.float 6.8267998695373535, 56.39039993286133, 3.3232998847961426, 13.006699562072754
	.float 19.883800506591797, 5.028900146484375, 14.536999702453613, 30.9143009185791
	.float 4.492800235748291, 13.690699577331543, 32.88679885864258, 3.6677000522613525
	.float 11.890899658203125, 22.40399932861328, 3.5339999198913574, 13.590999603271484
	.float 26.15089988708496, 2.933000087738037, 10.758600234985352, 20.683900833129883
.global lbl_80416A88
lbl_80416A88:
	.float -1.1328601253048978e-39, -1.1328713356926124e-39, -1.1328713356926124e-39, -1.1328713356926124e-39
	.float -1.132882546080327e-39, -1.1328937564680416e-39, -1.1329049668557562e-39, -1.1329273876311854e-39
	.float -1.132882546080327e-39, -1.1328937564680416e-39, -1.1329161772434708e-39, 0.0
.global lbl_80416AB8
lbl_80416AB8:
	.incbin "baserom.dol", 0x412BB8, 0xA0
.global lbl_80416B58
lbl_80416B58:
	.float 5.0, 5.0, 5.0, 5.0
	.float 5.0, 5.0, 5.0, 5.0
.global lbl_80416B78
lbl_80416B78:
	.4byte 0x800CAA84, 0x800C8810, 0x800C8930, 0x800C89A0
	.4byte 0x800CAA84, 0x800CAA84, 0x800CAA84, 0x800CAA84
	.4byte 0x800CAA84, 0x800CAA84, 0x800CAA84, 0x800C8A10
	.4byte 0x800C8A68, 0x800C8AC0, 0x800C8B30, 0x800C8BA0
	.4byte 0x800CAA84, 0x800CAA84, 0x800CAA84, 0x800CAA84
	.4byte 0x800C8C10, 0x800C8D74, 0x800C8EC0, 0x800C900C
.global lbl_80416BD8
lbl_80416BD8:
	.4byte 0x800C5A00, 0x800C652C, 0x800C9210, 0x800C94E4
	.4byte 0x800CAA84, 0x800C6F50, 0x800C9F50, 0x800CAA84
	.4byte 0x800CA3B0, 0x800CAA84, 0x800CA3F8, 0x800CA618
	.4byte 0x800CA82C, 0x800CAA1C, 0x800C9158
.global lbl_80416C14
lbl_80416C14:
	.4byte 0x800CF554, 0x800CF5F0, 0x800CF670, 0x800CF69C
	.4byte 0x800CF744, 0x800D1398, 0x800CF7D4, 0x800D1398
	.4byte 0x800D1398, 0x800D1398, 0x800D1398, 0x800D1398
	.4byte 0x800D1398, 0x800D1398, 0x800D1398, 0x800D1398
	.4byte 0x800CF80C, 0x800CF870, 0x800CF870, 0x800CF870
	.4byte 0x800CF870, 0x800CF870, 0x800CF870
.global lbl_80416C70
lbl_80416C70:
	.4byte 0x800CE158, 0x800CD910, 0x800CD988, 0x800CD9E0
	.4byte 0x800CDA38, 0x800CDACC, 0x800CDD04, 0x800CDD5C
	.4byte 0x800CDDE4, 0x800CDE7C, 0x800CDF44, 0x800CE158
	.4byte 0x800CE158, 0x800CE158, 0x800CE158, 0x800CE158
	.4byte 0x800CE158, 0x800CE158, 0x800CE158, 0x800CE158
	.4byte 0x800CDF9C, 0x800CDFF4, 0x800CE030, 0x800CE06C
	.4byte 0x800CE0A8, 0x800CE0E4, 0x800CE120
.global lbl_80416CDC
lbl_80416CDC:
	.4byte 0x800CAD64, 0x800CB09C, 0x800CB798, 0x800CECC0
	.4byte 0x800D1398, 0x800D1398, 0x800CF16C, 0x800CF4F4
	.4byte 0x800D0B94, 0x800D1398, 0x800CFB18, 0x800CFBE0
	.4byte 0x800CE8DC, 0x800CF430, 0x800CFEE8, 0x800D0758
	.4byte 0x800D0890, 0x800CE34C, 0x800CE574, 0x800CE5E4
	.4byte 0x800D0E14, 0x800D0ECC, 0x800D0F60, 0x800D1034
	.4byte 0x800D109C, 0x800D12B4, 0x800CF928
.global lbl_80416D48
lbl_80416D48:
	.4byte 0x800D1498, 0x800D1420, 0x800D142C, 0x800D1438
	.4byte 0x800D1444, 0x800D1450, 0x800D145C, 0x800D1468
	.4byte 0x800D1474, 0x800D1480, 0x800D148C
.global lbl_80416D74
lbl_80416D74:
	.4byte 0x800D1FFC, 0x800D2020, 0x800D228C, 0x800D228C
	.4byte 0x800D228C, 0x800D228C, 0x800D228C, 0x800D1EA0
	.4byte 0x800D228C, 0x800D1EA0, 0x800D228C, 0x800D228C
	.4byte 0x800D228C, 0x800D1EB8, 0x800D1EDC, 0x800D228C
	.4byte 0x800D1F00, 0x800D1F24, 0x800D228C, 0x800D1F48
	.4byte 0x800D228C, 0x800D1F6C, 0x800D228C, 0x800D1F90
	.4byte 0x800D228C, 0x800D1FB4, 0x800D228C, 0x800D228C
	.4byte 0x800D1FD8
.global lbl_80416DE8
lbl_80416DE8:
	.4byte 0x800D2B84, 0x800D2BDC, 0x800D2BC4, 0x800D2BDC
	.4byte 0x800D2BDC, 0x800D2A70, 0x800D2BDC, 0x800D2AF8
.global lbl_80416E08
lbl_80416E08:
	.4byte 0x800D2D2C, 0x800D2DE4, 0x800D2E9C, 0x800D2ECC
	.4byte 0x800D3664, 0x800D3010, 0x800D3040, 0x800D3CB8
	.4byte 0x800D30FC, 0x800D3E24, 0x800D312C, 0x800D3EAC
	.4byte 0x800D31E8, 0x800D32B4, 0x800D34C8, 0x800D3AEC
	.4byte 0x800D357C, 0x800D354C, 0x800D3C30
.global lbl_80416E54
lbl_80416E54:
	.4byte 0x800D5BA0, 0x800D63FC, 0x800D63FC, 0x800D6038
	.4byte 0x800D51FC, 0x800D48D0, 0x800D63FC, 0x800D63FC
	.4byte 0x800D5B30, 0x800D5B68, 0x800D63FC, 0x800D62D4
	.4byte 0x800D62D0, 0x800D62CC, 0x800D62C8, 0x800D62C4
	.4byte 0x800D62C0, 0x800D6108, 0x800D63FC, 0x800D6104
	.4byte 0x800D63FC, 0x800D6100, 0x800D63FC, 0x800D60FC
	.4byte 0x800D63FC, 0x800D60F8, 0x800D63FC, 0x800D60F4
	.4byte 0x800D5CC8
.global lbl_80416EC8
lbl_80416EC8:
	.4byte 0x800D4740, 0x800D63FC, 0x800D63FC, 0x800D47F0
	.4byte 0x800D4728, 0x800D4728, 0x800D63FC, 0x800D63FC
	.4byte 0x800D4728, 0x800D4728, 0x800D63FC, 0x800D4728
	.4byte 0x800D4728, 0x800D4728, 0x800D4728, 0x800D4728
	.4byte 0x800D4728, 0x800D4728, 0x800D4728, 0x800D4728
	.4byte 0x800D4728, 0x800D4728, 0x800D4728, 0x800D4728
	.4byte 0x800D4728, 0x800D4728, 0x800D4728, 0x800D4728
	.4byte 0x800D4728
.global lbl_80416F3C
lbl_80416F3C:
	.4byte 0x800D6D90, 0x800D660C, 0x800D66BC, 0x800D6928
	.4byte 0x800D6738, 0x800D69AC, 0x800D6D90, 0x800D6830
	.4byte 0x800D6B7C, 0x800D67B4, 0x800D6C08, 0x800D6C8C
	.4byte 0x800D68AC, 0x800D6D10
.global lbl_80416F74
lbl_80416F74:
	.4byte 0x800D6FE0, 0x800D712C, 0x800D7034, 0x800D71D8
	.4byte 0x800D7088, 0x800D7284, 0x800D7380, 0x800D73A8
	.4byte 0x800D73D0
.global lbl_80416F98
lbl_80416F98:
	.4byte 0x800D8470, 0x800D855C, 0x800D8660, 0x800D889C
	.4byte 0x800D8970, 0x800D8A34, 0x800D8AE0, 0x800D8CDC
	.4byte 0x800D8D88, 0x800D8DE0, 0x800D8ECC, 0x800D8EE4
.global lbl_80416FC8
lbl_80416FC8:
	.4byte 0x800D9558, 0x800D9614, 0x800D974C, 0x800D9CE0
	.4byte 0x800D9D70, 0x800D9E28, 0x800D9EEC
.global lbl_80416FE4
lbl_80416FE4:
	.4byte 0x800DD7DC, 0x800DB3E8, 0x800DB460, 0x800DB4B8
	.4byte 0x800DD7DC, 0x800DD7DC, 0x800DD7DC, 0x800DD7DC
	.4byte 0x800DD7DC, 0x800DD7DC, 0x800DD7DC, 0x800DB510
	.4byte 0x800DD7DC, 0x800DD7DC, 0x800DD7DC, 0x800DD7DC
	.4byte 0x800DD7DC, 0x800DD7DC, 0x800DD7DC, 0x800DD7DC
	.4byte 0x800DB588, 0x800DB588, 0x800DB588, 0x800DB588
.global lbl_80417044
lbl_80417044:
	.4byte 0x800D9FDC, 0x800DA66C, 0x800DA5A0, 0x800DA5DC
	.4byte 0x800DAA34, 0x800DB63C, 0x800DB89C, 0x800DD7DC
	.4byte 0x800DBD04, 0x800DBEE8, 0x800DC24C, 0x800DC3C4
	.4byte 0x800DC394, 0x800DC4B4, 0x800DC55C, 0x800DCE70
	.4byte 0x800DD7DC, 0x800DD7DC, 0x800DD300, 0x800DD398
	.4byte 0x800DD55C, 0x800DD228, 0x800DC204, 0x800DD7DC
	.4byte 0x800DBFD4, 0x800DC100, 0x800DC1D0
.global lbl_804170B0
lbl_804170B0:
	.4byte 0x800DD840, 0x800DD970, 0x800DD9F4, 0x800DDB54
	.4byte 0x800DDC68, 0x800DE188, 0x800DE200, 0x800DE23C
	.4byte 0x800DE2D0, 0x800DE3AC, 0x800DE498, 0x800DE9C8
	.4byte 0x800DEC4C, 0x800DEC4C, 0x800DEC4C, 0x800DEC4C
	.4byte 0x800DEC4C, 0x800DEC4C, 0x800DEC4C, 0x800DEC4C
	.4byte 0x800DEC4C, 0x800DEC4C, 0x800DEC4C, 0x800DEC4C
	.4byte 0x800DEC4C, 0x800DEC4C, 0x800DEC4C, 0x800DEAB8
	.4byte 0x800DEBE8
.global lbl_80417124
lbl_80417124:
	.4byte 0x800DF154, 0x800DF0C0, 0x800DF140, 0x800DF18C
	.4byte 0x800DF180, 0x800DF174, 0x800DF168, 0x800DF0AC
	.4byte 0x800DF154
.global lbl_80417148
lbl_80417148:
	.4byte 0x800DECA8, 0x800DED44, 0x800DEDCC, 0x800DF070
	.4byte 0x800DF1A4, 0x800DF1B0, 0x800DF238, 0x800DF2A4
	.4byte 0x800DF398, 0x800DF3EC, 0x800DF470, 0x800DEFC8
	.4byte 0x800DF798, 0x800DF504, 0x800DF588, 0x800DF60C
	.4byte 0x800DF588, 0x800DF588, 0x800DF690, 0x800DF6FC
	.4byte 0x800DF754
.global lbl_8041719C
lbl_8041719C:
	.4byte 0x800E0334, 0x800E05E8, 0x800E0694, 0x800E0870
	.4byte 0x800E099C, 0x800E0A14, 0x800E0A74, 0x800E0B08
	.4byte 0x800E0BE0
.global lbl_804171C0
lbl_804171C0:
	.4byte 0x800E0DC8, 0x800E0E6C, 0x800E0E6C, 0x800E0DE0
	.4byte 0x800E0E6C, 0x800E0E6C, 0x800E0DF8, 0x800E0E6C
	.4byte 0x800E0E6C, 0x800E0E10, 0x800E0E6C, 0x800E0E6C
	.4byte 0x800E0E28, 0x800E0E6C, 0x800E0E6C, 0x800E0E40
	.4byte 0x800E0E6C, 0x800E0E6C, 0x800E0E6C, 0x800E0E6C
	.4byte 0x800E0E58
.global lbl_80417214
lbl_80417214:
	.4byte 0x800E0F48, 0x800E0F14, 0x800E0F1C, 0x800E0F24
	.4byte 0x800E0F2C, 0x800E0F34, 0x800E0F3C, 0x800E0F44
.global lbl_80417234
lbl_80417234:
	.4byte 0x800E0ED4, 0x800E0EEC, 0x800E1008, 0x800E1008
	.4byte 0x800E1008, 0x800E1008, 0x800E0F5C, 0x800E0FA4
	.4byte 0x800E1008, 0x800E0F74, 0x800E0FD8, 0x800E1008
	.4byte 0x800E0F8C
.global lbl_80417268
lbl_80417268:
	.4byte 0x800E10CC, 0x800E1130, 0x800E1130, 0x800E10E4
	.4byte 0x800E1130, 0x800E1130, 0x800E10EC, 0x800E1130
	.4byte 0x800E1130, 0x800E10F8, 0x800E1130, 0x800E1130
	.4byte 0x800E1104, 0x800E1130, 0x800E1130, 0x800E1110
	.4byte 0x800E1130, 0x800E1130, 0x800E111C, 0x800E1130
	.4byte 0x800E1130, 0x800E1128
.global lbl_804172C0
lbl_804172C0:
	.4byte 0x800E1304, 0x800E1360, 0x800E1360, 0x800E134C
	.4byte 0x800E1360, 0x800E1360, 0x800E131C, 0x800E1360
	.4byte 0x800E1360, 0x800E1334
.global lbl_804172E8
lbl_804172E8:
	.4byte 0x800E15F4, 0x800E1B04, 0x800E1B04, 0x800E16D8
	.4byte 0x800E1B04, 0x800E1B04, 0x800E17BC, 0x800E1B04
	.4byte 0x800E1B04, 0x800E18A0, 0x800E1B04, 0x800E1B04
	.4byte 0x800E1A24
.global lbl_8041731C
lbl_8041731C:
	.4byte 0x800E239C, 0x800E1C08, 0x800E1C2C, 0x800E1C50
	.4byte 0x800E1C74, 0x800E1C98, 0x800E1CBC, 0x800E239C
	.4byte 0x800E239C, 0x800E239C, 0x800E1CF8, 0x800E239C
	.4byte 0x800E239C, 0x800E1E14, 0x800E239C, 0x800E239C
	.4byte 0x800E1F30, 0x800E239C, 0x800E239C, 0x800E204C
	.4byte 0x800E239C, 0x800E239C, 0x800E2168, 0x800E239C
	.4byte 0x800E239C, 0x800E2284, 0x800E1CE0
.global lbl_80417388
lbl_80417388:
	.4byte 0x800E2470, 0x800E257C, 0x800E257C, 0x800E2404
	.4byte 0x800E257C, 0x800E257C, 0x800E2428, 0x800E257C
	.4byte 0x800E257C, 0x800E244C
.global lbl_804173B0
lbl_804173B0:
	.float -1.2994016451929737e-39, -1.2997603775998408e-39, -1.2997603775998408e-39, -1.2993960399991164e-39
	.float -1.2997603775998408e-39, -1.2997603775998408e-39, -1.299390434805259e-39, -1.2997603775998408e-39
	.float -1.2997603775998408e-39, -1.2993848296114018e-39, -1.2997603775998408e-39, -1.2997603775998408e-39
	.float -1.2993792244175445e-39, -1.2997603775998408e-39, -1.2997603775998408e-39, -1.2993736192236872e-39
	.float -1.2997603775998408e-39, -1.2997603775998408e-39, -1.2997603775998408e-39, -1.2997603775998408e-39
	.float -1.2994857231008332e-39, -1.2993231724789715e-39, -1.2993175672851142e-39, -1.2993119620912569e-39
	.float -1.2993063568973996e-39, -1.2993007517035423e-39, -1.299295146509685e-39, 0.0
.global lbl_80417420
lbl_80417420:
	.4byte 0x800E50D0, 0x800E4938, 0x800E4A80, 0x800E4BC8
	.4byte 0x800E49DC, 0x800E4B24, 0x800E4C6C, 0x800E4D10
	.4byte 0x800E4E70, 0x800E4FD0, 0x800E5010, 0x800E5050
	.4byte 0x800E5090
.global lbl_80417454
lbl_80417454:
	.4byte 0x800E5290, 0x800E52BC, 0x800E52C8, 0x800E52D4
	.4byte 0x800E52E0, 0x800E52EC, 0x800E5320, 0x800E5330
	.4byte 0x800E5310, 0x800E5300, 0x800E52F8, 0x800E53BC
	.4byte 0x800E5378, 0x800E53CC, 0x800E529C
.global lbl_80417490
lbl_80417490:
	.4byte 0x800E574C, 0x800E5754, 0x800E57A0, 0x800E57EC
	.4byte 0x800E5838, 0x800E5884, 0x800E58D0, 0x800E599C
	.4byte 0x800E591C, 0x800E5928, 0x800E5930, 0x800E5938
	.4byte 0x800E5940, 0x800E5960, 0x800E5994
.global lbl_804174CC
lbl_804174CC:
	.4byte 0x800E6F04, 0x800E6DE0, 0x800E6E04, 0x800E6E28
	.4byte 0x800E6E4C, 0x800E6E70, 0x800E6E94, 0x800E6F04
	.4byte 0x800E6F04, 0x800E6EB8, 0x800E6ECC, 0x800E6EE0
	.4byte 0x800E6EF4
.global lbl_80417500
lbl_80417500:
	.4byte 0x800E884C, 0x800E8A70, 0x800E8A70, 0x800E88E8
	.4byte 0x800E7FA0, 0x800E76FC, 0x800E8A70, 0x800E8A70
	.4byte 0x800E88B8, 0x800E88D0, 0x800E8A70, 0x800E8A70
	.4byte 0x800E8A70, 0x800E8A70, 0x800E8A70, 0x800E8A70
	.4byte 0x800E8A70, 0x800E8984, 0x800E8A70, 0x800E8980
	.4byte 0x800E8A70, 0x800E897C, 0x800E8A70, 0x800E8978
	.4byte 0x800E8A70, 0x800E8974, 0x800E8A70, 0x800E8970
.global lbl_80417570
lbl_80417570:
	.float 9.543823450977032e-41, 3.880629065512219e-37, 9.849085671561864e-38, 6.350620427219242e-36
	.float 3.851859888774472e-34
.global lbl_80417584
lbl_80417584:
	.4byte 0x800ECE28, 0x800ECE28, 0x800ECDF8, 0x800ECE00
	.4byte 0x800ECE28, 0x800ECE28, 0x800ECE28, 0x800ECE28
	.4byte 0x800ECE08, 0x800ECE10, 0x800ECE28, 0x800ECE28
	.4byte 0x800ECE28, 0x800ECE28, 0x800ECE18, 0x800ECE20
.global lbl_804175C4
lbl_804175C4:
	.4byte 0x800ECB20, 0x800ECB20, 0x800ECAF0, 0x800ECAF8
	.4byte 0x800ECB20, 0x800ECB20, 0x800ECB20, 0x800ECB20
	.4byte 0x800ECB00, 0x800ECB08, 0x800ECB20, 0x800ECB20
	.4byte 0x800ECB20, 0x800ECB20, 0x800ECB10, 0x800ECB18
.global lbl_80417604
lbl_80417604:
	.4byte 0x800EA6A0, 0x800EA748, 0x800EA9F8, 0x800EAC98
	.4byte 0x800EAD18, 0x800EB058, 0x800EB39C, 0x800EBDE4
	.4byte 0x800EBE00, 0x800EC030, 0x800EC0A0, 0x800EBE0C
	.4byte 0x800EBEF8, 0x800EBF60, 0x800EBF6C, 0x800EC410
	.4byte 0x800EC8EC, 0x800ECD88, 0x800ECDA4, 0x800ECFA8
	.4byte 0x800EC128, 0x800ED054, 0x800EC2B8, 0x800EAB84
	.4byte 0x800EAC04
.global lbl_80417668
lbl_80417668:
	.4byte 0x800EE4E4, 0x800EE4FC, 0x800EE718, 0x800EE718
	.4byte 0x800EE240, 0x800EE2A8, 0x800EE378, 0x800EE3C4
	.4byte 0x800EE424, 0x800EE350, 0x800EE488, 0x800EE718
	.4byte 0x800EE718, 0x800EE6CC, 0x800EE718, 0x800EE67C
	.4byte 0x800EE718, 0x800EE62C, 0x800EE718, 0x800EE5DC
	.4byte 0x800EE718, 0x800EE58C, 0x800EE718, 0x800EE53C
.global lbl_804176C8
lbl_804176C8:
	.4byte 0x800EE1D4, 0x800EE1D4, 0x800EE1A4, 0x800EE1AC
	.4byte 0x800EE1D4, 0x800EE1D4, 0x800EE1D4, 0x800EE1D4
	.4byte 0x800EE1B4, 0x800EE1BC, 0x800EE1D4, 0x800EE1D4
	.4byte 0x800EE1D4, 0x800EE1D4, 0x800EE1C4, 0x800EE1CC
.global lbl_80417708
lbl_80417708:
	.4byte 0x800EE144, 0x800EE12C, 0x800EE138, 0x800EE144
	.4byte 0x800EE144, 0x800EE144, 0x800EE0CC, 0x800EE0D8
	.4byte 0x800EE144, 0x800EE144, 0x800EE060, 0x800EE06C
	.4byte 0x800EE090, 0x800EE09C, 0x800EE0A8, 0x800EE078
	.4byte 0x800EE0C0, 0x800EE084, 0x800EE0B4, 0x800EE120
	.4byte 0x800EE144, 0x800EE114, 0x800EE144, 0x800EE108
	.4byte 0x800EE144, 0x800EE0FC, 0x800EE144, 0x800EE0F0
	.4byte 0x800EE144, 0x800EE0E4
.global lbl_80417780
lbl_80417780:
	.4byte 0x800EE970, 0x800EE7E8, 0x800EE80C, 0x800EE834
	.4byte 0x800EE85C, 0x800EE884, 0x800EE8AC, 0x800EE8D4
	.4byte 0x800EE8FC, 0x800EE924, 0x800EE94C, 0x800EE80C
	.4byte 0x800EE834, 0x800EE85C, 0x800EE884, 0x800EE8AC
	.4byte 0x800EE8D4, 0x800EE788, 0x800EE970, 0x800EE970
	.4byte 0x800EE970, 0x800EE970, 0x800EE970, 0x800EE970
	.4byte 0x800EE970, 0x800EE970, 0x800EE970, 0x800EE970
	.4byte 0x800EE970, 0x800EE970, 0x800EE970, 0x800EE970
	.4byte 0x800EE970, 0x800EE970, 0x800EE970, 0x800EE970
	.4byte 0x800EE970, 0x800EE970, 0x800EE7A0, 0x800EE7B8
	.4byte 0x800EE7D0, 0x800EE7E8
.global lbl_80417828
lbl_80417828:
	.4byte 0x800EEADC, 0x800EEADC, 0x800EEA20, 0x800EEADC
	.4byte 0x800EEA1C, 0x800EEADC, 0x800EEA18, 0x800EEADC
	.4byte 0x800EEA14, 0x800EEADC, 0x800EEA10, 0x800EEADC
	.4byte 0x800EEA0C, 0x800EEADC, 0x800EEA08, 0x800EEADC
	.4byte 0x800EEA04, 0x800EEADC, 0x800EEA00, 0x800EEADC
	.4byte 0x800EE9FC, 0x800EEADC, 0x800EE9F8, 0x800EEADC
	.4byte 0x800EE9F4, 0x800EEADC, 0x800EE9F0, 0x800EEADC
	.4byte 0x800EE9EC, 0x800EEADC, 0x800EE9E8, 0x800EEADC
	.4byte 0x800EE9E4, 0x800EEADC, 0x800EE9E0, 0x800EEADC
	.4byte 0x800EEADC, 0x800EEADC, 0x800EEADC, 0x800EEAA0
	.4byte 0x800EEA9C, 0x800EEA98, 0x800EEA94, 0x800EEA90
	.4byte 0x800EEA8C, 0x800EEA88, 0x800EEA84, 0x800EEA80
	.4byte 0x800EEA7C, 0x800EEA78, 0x800EEA74, 0x800EEA70
	.4byte 0x800EEA6C, 0x800EEA68, 0x800EEA64, 0x800EEA60
	.4byte 0x800EEA5C
.global lbl_8041790C
lbl_8041790C:
	.4byte 0x800EEF54, 0x800EEF54, 0x800EEEE0, 0x800EEF54
	.4byte 0x800EEEEC, 0x800EEF54, 0x800EEEF8, 0x800EEF54
	.4byte 0x800EEF04, 0x800EEF54, 0x800EEF10, 0x800EEF54
	.4byte 0x800EEF1C, 0x800EEF54, 0x800EEF28, 0x800EEF40
	.4byte 0x800EEF54, 0x800EEF40
.global lbl_80417954
lbl_80417954:
	.4byte 0x800EEEB0, 0x800EEEB0, 0x800EEE60, 0x800EEEB0
	.4byte 0x800EEE6C, 0x800EEEB0, 0x800EEE78, 0x800EEEB0
	.4byte 0x800EEE84, 0x800EEE9C, 0x800EEEB0, 0x800EEE9C
	.4byte 0x800EEEB0, 0x800EEE9C, 0x800EEEB0, 0x800EEE9C
	.4byte 0x800EEEB0, 0x800EEE9C
.global lbl_8041799C
lbl_8041799C:
	.4byte 0x800EECC0, 0x800EECE4, 0x800EED08, 0x800EED2C
	.4byte 0x800EED50, 0x800EED74, 0x800EED98
.global lbl_804179B8
lbl_804179B8:
	.4byte 0x800EEE1C, 0x800EEE1C, 0x800EEDC8, 0x800EEE1C
	.4byte 0x800EEDD0, 0x800EEE1C, 0x800EEDD8, 0x800EEE1C
	.4byte 0x800EEDE0, 0x800EEE1C, 0x800EEDE8, 0x800EEE1C
	.4byte 0x800EEDF0, 0x800EEE1C, 0x800EEDF8, 0x800EEE1C
	.4byte 0x800EEE00, 0x800EEE08, 0x800EEE1C, 0x800EEE1C
	.4byte 0x800EEE1C, 0x800EEE1C, 0x800EEC94
.global lbl_80417A14
lbl_80417A14:
	.4byte 0x800EEC4C, 0x800EEC4C, 0x800EEC04, 0x800EEC4C
	.4byte 0x800EEC0C, 0x800EEC4C, 0x800EEC14, 0x800EEC4C
	.4byte 0x800EEC1C, 0x800EEC4C, 0x800EEC24, 0x800EEC4C
	.4byte 0x800EEC2C, 0x800EEC4C, 0x800EEC34, 0x800EEC4C
	.4byte 0x800EEC3C, 0x800EEC4C, 0x800EEC44
.global lbl_80417A60
lbl_80417A60:
	.4byte 0x800EEBB4, 0x800EEBD4, 0x800EEB7C, 0x800EEB78
	.4byte 0x800EEB74, 0x800EEB68, 0x800EEB6C, 0x800EEB70
	.4byte 0x800EEB64, 0x800EEB60, 0x800EEB5C
.global lbl_80417A8C
lbl_80417A8C:
	.4byte 0x800EF16C, 0x800EF14C, 0x800EF16C, 0x800EF14C
	.4byte 0x800EF16C, 0x800EF14C, 0x800EF16C, 0x800EF14C
	.4byte 0x800EF16C, 0x800EF14C
.global lbl_80417AB4
lbl_80417AB4:
	.4byte 0x800F06C8, 0x800F0CAC, 0x800F0CAC, 0x800EF39C
	.4byte 0x800F06EC, 0x800F0CAC, 0x800EF5E8, 0x800F0998
	.4byte 0x800F0710, 0x800F0CAC, 0x800EF6D8, 0x800F09C4
	.4byte 0x800F0734, 0x800F0CAC, 0x800EF7C8, 0x800F09F0
	.4byte 0x800F0758, 0x800F0CAC, 0x800EF8B8, 0x800F0A1C
	.4byte 0x800F077C, 0x800F0CAC, 0x800EF9A8, 0x800F0A48
	.4byte 0x800F07A0, 0x800F0CAC, 0x800EFA98, 0x800F0A74
	.4byte 0x800F07C4, 0x800F0CAC, 0x800EFB88, 0x800F0AA0
	.4byte 0x800F07E8, 0x800F0CAC, 0x800EFC78, 0x800F0ACC
	.4byte 0x800F080C, 0x800F0CAC, 0x800EFD68, 0x800F0AF8
	.4byte 0x800F0830, 0x800F0CAC, 0x800EFE58, 0x800F0B24
	.4byte 0x800F0854, 0x800F0CAC, 0x800EFF48, 0x800F0B50
	.4byte 0x800F0878, 0x800F0CAC, 0x800F0038, 0x800F0B7C
	.4byte 0x800F089C, 0x800F0CAC, 0x800F0128, 0x800F0BA8
	.4byte 0x800F08C0, 0x800F0CAC, 0x800F0218, 0x800F0BD4
	.4byte 0x800F08E4, 0x800F0CAC, 0x800F0308, 0x800F0C00
	.4byte 0x800F0908, 0x800F0CAC, 0x800F03F8, 0x800F0C2C
	.4byte 0x800F092C, 0x800F0CAC, 0x800F04E8, 0x800F0C58
	.4byte 0x800F0950, 0x800F0CAC, 0x800F05D8, 0x800F0C84
	.4byte 0x800F0974
.global lbl_80417BE8
lbl_80417BE8:
	.4byte 0x800F1824, 0x800F1824, 0x800F1004, 0x800F1034
	.4byte 0x800F1064, 0x800F1094, 0x800F10C4, 0x800F10F4
	.4byte 0x800F1124, 0x800F1154, 0x800F1184, 0x800F11B4
	.4byte 0x800F11E4, 0x800F1214, 0x800F1244, 0x800F1274
	.4byte 0x800F12A4, 0x800F12C8, 0x800F12EC, 0x800F131C
	.4byte 0x800F134C, 0x800F137C, 0x800F13AC, 0x800F13D0
	.4byte 0x800F13F4, 0x800F1424, 0x800F1454, 0x800F1484
	.4byte 0x800F14B4, 0x800F14D8, 0x800F14FC, 0x800F152C
	.4byte 0x800F155C, 0x800F1574, 0x800F158C, 0x800F15A4
	.4byte 0x800F15BC, 0x800F15D4, 0x800F15EC, 0x800F1604
	.4byte 0x800F161C, 0x800F1634, 0x800F164C, 0x800F1664
	.4byte 0x800F167C, 0x800F1694, 0x800F16AC, 0x800F16C4
	.4byte 0x800F16DC, 0x800F16F4, 0x800F170C, 0x800F1724
	.4byte 0x800F173C, 0x800F1754, 0x800F176C, 0x800F1784
	.4byte 0x800F179C, 0x800F17B4, 0x800F17CC, 0x800F17E4
	.4byte 0x800F17FC, 0x800F1814
.global lbl_80417CE0
lbl_80417CE0:
	.4byte 0x800F0FCC, 0x800F0FCC, 0x800F0EB0, 0x800F0EBC
	.4byte 0x800F0EC0, 0x800F0EC4, 0x800F0EC8, 0x800F0ECC
	.4byte 0x800F0ED0, 0x800F0ED4, 0x800F0ED8, 0x800F0EDC
	.4byte 0x800F0EE0, 0x800F0EE4, 0x800F0EE8, 0x800F0EEC
	.4byte 0x800F0EF0, 0x800F0EF4, 0x800F0EF8, 0x800F0EFC
	.4byte 0x800F0F00, 0x800F0F04, 0x800F0F08, 0x800F0F0C
	.4byte 0x800F0F10, 0x800F0F14, 0x800F0F18, 0x800F0F1C
	.4byte 0x800F0F20, 0x800F0F24, 0x800F0F28, 0x800F0F2C
.global lbl_80417D60
lbl_80417D60:
	.4byte 0x800F0DDC, 0x800F0DE8, 0x800F0FCC, 0x800F0FCC
	.4byte 0x800F0FCC, 0x800F0FCC, 0x800F0DEC, 0x800F0DF0
	.4byte 0x800F0FCC, 0x800F0FCC, 0x800F0FCC, 0x800F0FCC
	.4byte 0x800F0DF4, 0x800F0DF8
.global lbl_80417D98
lbl_80417D98:
	.4byte 0x800F1B38, 0x800F19E4, 0x800F19E8, 0x800F19EC
	.4byte 0x800F19F0, 0x800F19F4, 0x800F19F8, 0x800F19FC
	.4byte 0x800F1A00, 0x800F1A04, 0x800F1A08, 0x800F1A0C
	.4byte 0x800F1A10, 0x800F1A14, 0x800F1A18, 0x800F1A1C
.global lbl_80417DD8
lbl_80417DD8:
	.4byte 0x800F211C, 0x800F1D28, 0x800F1D04, 0x800F211C
	.4byte 0x800F211C, 0x800F211C, 0x800F1C9C, 0x800F211C
	.4byte 0x800F20C8, 0x800F1D4C, 0x800F211C, 0x800F211C
	.4byte 0x800F211C, 0x800F211C, 0x800F211C, 0x800F211C
	.4byte 0x800F211C, 0x800F211C, 0x800F1EA8, 0x800F1F60
	.4byte 0x800F211C, 0x800F211C, 0x800F211C, 0x800F211C
	.4byte 0x800F211C, 0x800F211C, 0x800F211C, 0x800F211C
	.4byte 0x800F211C, 0x800F211C, 0x800F211C, 0x800F211C
	.4byte 0x800F2098, 0x800F211C, 0x800F1DA8
.global lbl_80417E64
lbl_80417E64:
	.4byte 0x800F1C04, 0x800F1C04, 0x800F1BD4, 0x800F1BDC
	.4byte 0x800F1C04, 0x800F1C04, 0x800F1C04, 0x800F1C04
	.4byte 0x800F1BE4, 0x800F1BEC, 0x800F1C04, 0x800F1C04
	.4byte 0x800F1C04, 0x800F1C04, 0x800F1BF4, 0x800F1BFC
.global lbl_80417EA4
lbl_80417EA4:
	.4byte 0x800F27AC, 0x800F22C4, 0x800F2304, 0x800F24BC
	.4byte 0x800F27AC, 0x800F225C, 0x800F27AC, 0x800F2538
	.4byte 0x800F2384, 0x800F27AC, 0x800F27AC, 0x800F27AC
	.4byte 0x800F27AC, 0x800F27AC, 0x800F27AC, 0x800F27AC
	.4byte 0x800F27AC, 0x800F2590, 0x800F2648, 0x800F27AC
	.4byte 0x800F27AC, 0x800F27AC, 0x800F27AC, 0x800F27AC
	.4byte 0x800F27AC, 0x800F27AC, 0x800F27AC, 0x800F27AC
	.4byte 0x800F27AC, 0x800F27AC, 0x800F27AC, 0x800F2780
	.4byte 0x800F27AC, 0x800F23E0
.global lbl_80417F2C
lbl_80417F2C:
	.4byte 0x800F28BC, 0x800F2AD8, 0x800F28B8, 0x800F2AD4
	.4byte 0x800F28B4, 0x800F2AD0, 0x800F28B0, 0x800F2ACC
	.4byte 0x800F28AC, 0x800F2AC8, 0x800F28A8, 0x800F2AC4
	.4byte 0x800F28A4, 0x800F2AC0, 0x800F2928, 0x800F2B94
	.4byte 0x800F286C, 0x800F2868, 0x800F2864, 0x800F2B94
	.4byte 0x800F2B94, 0x800F2B94, 0x800F2B94, 0x800F29B0
.global lbl_80417F8C
lbl_80417F8C:
	.4byte 0x800F2D64, 0x800F2C4C, 0x800F2D64, 0x800F2C48
	.4byte 0x800F2D64, 0x800F2C44, 0x800F2D64, 0x800F2C40
	.4byte 0x800F2D64, 0x800F2C3C, 0x800F2D64, 0x800F2C38
	.4byte 0x800F2D64, 0x800F2C34, 0x800F2D64, 0x800F2C30
	.4byte 0x800F2D64, 0x800F2C2C, 0x800F2D64, 0x800F2C28
	.4byte 0x800F2D64, 0x800F2C24, 0x800F2D64, 0x800F2C20
	.4byte 0x800F2D64, 0x800F2C1C, 0x800F2D64, 0x800F2C18
	.4byte 0x800F2D64, 0x800F2C14, 0x800F2D64, 0x800F2C10
	.4byte 0x800F2D64, 0x800F2C0C, 0x800F2D64, 0x800F2C08
	.4byte 0x800F2C70, 0x800F2D64, 0x800F2CEC
.global lbl_80418028
lbl_80418028:
	.4byte 0x800F2F20, 0x800F2E6C, 0x800F2F20, 0x800F2E64
	.4byte 0x800F2F20, 0x800F2E5C, 0x800F2F20, 0x800F2E54
	.4byte 0x800F2F20, 0x800F2E40, 0x800F2F20, 0x800F2E2C
	.4byte 0x800F2F20, 0x800F2E18, 0x800F2F20, 0x800F2E00
	.4byte 0x800F2F20, 0x800F2DF0, 0x800F2F20, 0x800F2F20
	.4byte 0x800F2EBC, 0x800F2F20
.global lbl_80418080
lbl_80418080:
	.4byte 0x800F3210, 0x800F3160, 0x800F3210, 0x800F3184
	.4byte 0x800F3210, 0x800F31A8, 0x800F3210, 0x800F31CC
	.4byte 0x800F3210, 0x800F31F0
.global lbl_804180A8
lbl_804180A8:
	.4byte 0x800F3864, 0x800F3890, 0x800F38BC, 0x800F3C6C
	.4byte 0x800F39E0, 0x800F3AE8, 0x800F3B80
.global lbl_804180C4
lbl_804180C4:
	.4byte 0x800F423C, 0x800F439C, 0x800F44FC, 0x800F4728
	.4byte 0x800F5094, 0x800F5168, 0x800F5294, 0x800F65D0
	.4byte 0x800F5ADC, 0x800F5B7C, 0x800F580C, 0x800F5980
	.4byte 0x800F5CAC, 0x800F5FC8, 0x800F6268, 0x800F6584
.global lbl_80418104
lbl_80418104:
	.4byte 0x800F798C, 0x800F7A6C, 0x800F79A4, 0x800F79C8
	.4byte 0x800F79F4, 0x800F7A20, 0x800F7A48
.global lbl_80418120
lbl_80418120:
	.incbin "baserom.dol", 0x414220, 0x150
.global lbl_80418270
lbl_80418270:
	.float 0.0, 0.0, 2.755092910709023e-40, 9.183970005338419e-41
	.float 1.8367379491291107e-40, 2.755092910709023e-40, 0.0, 0.0
	.float 0.0, 5.510129769479473e-40, 1.8367940010676837e-40, 9.183829875491986e-41
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 5.5101718084334024e-40, 0.0
	.float 0.0, 1.0101946616332963e-39, 1.8367099231598242e-40, 2.755092910709023e-40
	.float 9.183970005338419e-41, 1.8367379491291107e-40, 2.755092910709023e-40, 2.755106923693666e-40
	.float 1.8368220270369702e-40, 2.802596928649634e-45, 7.34685370562394e-40, 1.8367099231598242e-40
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 1.1210387714598537e-44, 2.7550648847397363e-40, 0.0
	.float 3.2593805432412637e-10, 3.295760886423693e-10, 3.3321412296061226e-10, 3.368521572788552e-10
	.float 3.4049019159709815e-10, 3.441282259153411e-10, 3.4776626023358403e-10, 3.51404294551827e-10
	.float 3.550423288700699e-10, 3.5868036318831287e-10, 3.623183975065558e-10, 3.6595643182479876e-10
	.float 3.695944661430417e-10, 3.7323250046128464e-10, 3.768705347795276e-10, 3.8050856909777053e-10
	.float 3.841466034160135e-10, 3.877846377342564e-10, 3.9142267205249937e-10, 3.950607063707423e-10
	.float 3.9869874068898525e-10, 4.023367750072282e-10, 4.0597480932547114e-10, 4.096128436437141e-10
	.float 4.1325087796195703e-10, 4.168889122802e-10, 4.205269465984429e-10, 4.2416498091668586e-10
	.float 4.278030152349288e-10, 4.3144104955317175e-10, 4.350790838714147e-10, 4.3871711818965764e-10
	.float 4.423551525079006e-10, 4.4599318682614353e-10, 4.4963122114438647e-10, 4.532692554626294e-10
	.float 4.5690728978087236e-10, 4.605453240991153e-10, 4.6418335841735825e-10, 4.699814981634631e-10
	.float 4.77257566799949e-10, 4.845336354364349e-10, 4.918228047046114e-10, 1.7840011690140045e-09
	.float 1.7985533062869763e-09, 1.813105443559948e-09, 1.8276575808329198e-09, 1.8422097181058916e-09
	.float 1.8567618553788634e-09, 1.8799828360727133e-09, 1.909087110618657e-09, 1.9381913851646004e-09
	.float 1.967295659710544e-09, 1.9963999342564875e-09, 2.025504208802431e-09, 2.0546084833483746e-09
	.float 3.095668998920331e-10, 3.1320493421027606e-10, 3.16842968528519e-10, 1.7548612563089705e-09
	.float 3.241278911936263e-10, 1.7680577002465725e-09, 2.440822821636601e-10, 2.4772031648190307e-10
	.float 2.51358350800146e-10, 2.5499638511838896e-10, 2.586431069317996e-10, 1.4638541490086254e-09
	.float 1.4784062862815972e-09, 1.4929230074400834e-09, 2.6227245375487485e-10, 2.659104880731178e-10
	.float 2.6954852239136073e-10, 1.5002344921910549e-09, 1.5147866294640266e-09, 1.5293387667369984e-09
	.float 2.731865567096037e-10, 2.768245910278466e-10, 2.8046262534608957e-10, 1.5438909040099702e-09
	.float 1.558443041282942e-09, 1.5729951785559138e-09, 2.841006596643325e-10, 2.8773869398257546e-10
	.float 2.913767283008184e-10, 1.5875473158288855e-09, 1.6020994531018573e-09, 1.616651590374829e-09
	.float 2.9501476261906134e-10, 2.986527969373043e-10, 3.0229083125554723e-10, 3.059288655737902e-10
	.float 1.6312037276478009e-09, 1.6457558649207726e-09, 1.6603080021937444e-09, 1.6748601394667162e-09
	.float 1.689412276739688e-09, 1.7039644140126597e-09, 1.7185165512856315e-09, 1.7330686885586033e-09
	.float 1.7462298274040222e-09, 0.0
.global lbl_80418508
lbl_80418508:
	.float -5.349999904632568, -3.0, 0.0, 1.0
	.float -6.0, -3.0, 0.0, 0.5199999809265137
	.float -6.0, -3.0, 0.0, 1.0700000524520874
	.float -5.5, -3.0, 0.0, 1.309999942779541
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 1.3700000047683716
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 0.38999998569488525
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -6.0, 0.0, 0.9100000262260437
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.5, 0.0, 0.6700000166893005
	.float -5.5, -5.0, 0.0, 0.9100000262260437
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.6700000166893005
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -6.0, -3.0, 0.0, 0.6000000238418579
	.float -6.0, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.5
	.float -4.5, -3.5, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 1.25
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -7.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 1.2100000381469727
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -5.5, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.6700000166893005
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -6.0, -3.0, 0.0, 0.6499999761581421
	.float -6.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.6399999856948853
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.2000000476837158
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -4.0, 0.0, 0.75
	.float -5.5, -6.5, 0.0, 1.0499999523162842
	.float -5.5, -5.5, 0.0, 0.6499999761581421
	.float -6.0, -5.5, 0.0, 1.0099999904632568
	.float -5.5, -5.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 0.8700000047683716
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.5, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -5.5, 0.0, 0.6000000238418579
	.float -5.5, -3.5, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.100000023841858
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -8.5, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 1.090000033378601
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.5, 0.0, 1.0199999809265137
	.float -5.5, -6.300000190734863, 0.0, 0.550000011920929
	.float -5.5, -4.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -6.5, -3.5, 0.0, 1.100000023841858
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 1.190000057220459
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.5, 0.0, 1.2200000286102295
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -6.5, 0.0, 0.550000011920929
	.float -5.5, -4.5, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -5.5, 0.0, 0.5
	.float -5.5, -7.0, 0.0, 0.7900000214576721
	.float -5.5, -6.5, 0.0, 0.699999988079071
	.float -5.5, -5.5, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.8700000047683716
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -6.0, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -2.5, 0.0, 0.75
	.float -5.5, -5.0, 0.0, 0.9900000095367432
	.float -5.5, -4.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -2.5, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -6.0, 0.0, 0.5199999809265137
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -4.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 1.2000000476837158
	.float -6.0, -3.0, 0.0, 1.2999999523162842
	.float -6.0, -4.0, 0.0, 0.949999988079071
	.float -6.0, -3.0, 0.0, 1.5499999523162842
	.float -4.0, -3.0, 0.0, 0.550000011920929
	.float -4.0, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.0
	.float -4.0, -3.0, 0.0, 1.0700000524520874
	.float -5.5, -5.5, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.9800000190734863
	.float -5.5, -3.0, 0.0, 0.38999998569488525
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.9300000071525574
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -4.0, 0.0, 0.75
	.float -5.5, -5.5, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.5, 0.0, 1.0199999809265137
	.float -5.5, -4.5, 0.0, 0.6000000238418579
	.float -5.5, -6.5, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.3499999940395355
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.4699999988079071
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -4.5, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -5.5, -4.5, 0.0, 1.1100000143051147
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.8600000143051147
	.float -5.5, -3.0, 0.0, 0.5899999737739563
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -4.0, 0.0, 0.6200000047683716
	.float -6.0, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -5.0, 0.0, 0.7400000095367432
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -5.0, 0.0, 0.7699999809265137
	.float -5.5, -4.0, 0.0, 1.0499999523162842
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -6.5, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.6700000166893005
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -5.5, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -5.0, 0.0, 1.25
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.6299999952316284
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -6.199999809265137, 0.0, 1.0
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -6.0, -3.0, 0.0, 1.1100000143051147
	.float -5.5, -4.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.8700000047683716
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 1.0
	.float -5.5, -3.0, 0.0, 1.0
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 1.1200000047683716
	.float -6.199999809265137, -3.0, 0.0, 1.2200000286102295
	.float -6.5, -3.0, 0.0, 1.4500000476837158
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.5899999737739563
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -4.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -5.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -7.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 1.1399999856948853
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.6399999856948853
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -4.5, -3.0, 0.0, 0.5
	.float -5.5, -5.5, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.0, -3.0, 0.0, 1.149999976158142
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -4.0, 0.0, 0.9900000095367432
	.float -5.5, -4.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 1.1200000047683716
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.8100000023841858
	.float -5.5, -3.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.9300000071525574
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.6600000262260437
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.5199999809265137
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -4.5, 0.0, 0.6700000166893005
	.float -5.5, -7.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -4.0, 0.0, 1.149999976158142
	.float -5.5, -3.0, 0.0, 0.5899999737739563
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.4699999988079071
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 1.2200000286102295
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -4.5, 0.0, 0.6000000238418579
	.float -5.5, -6.5, 0.0, 0.9399999976158142
	.float -5.5, -4.5, 0.0, 0.27000001072883606
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.5899999737739563
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.6399999856948853
	.float -5.5, -6.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 1.0700000524520874
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -6.5, -3.0, 0.0, 1.2400000095367432
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -6.0, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 0.8600000143051147
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 1.2000000476837158
	.float -5.5, -4.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -4.5, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 1.0499999523162842
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -7.0, 0.0, 0.75
	.float -5.5, -5.5, 0.0, 0.800000011920929
	.float -5.5, -8.5, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.5899999737739563
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 1.149999976158142
	.float -5.5, -4.5, 0.0, 0.4000000059604645
	.float -6.0, -3.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 1.190000057220459
	.float -5.5, -3.0, 0.0, 1.25
	.float -5.5, -3.0, 0.0, 1.149999976158142
	.float -6.0, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 1.1200000047683716
	.float -5.5, -3.0, 0.0, 1.100000023841858
	.float -6.0, -3.0, 0.0, 1.5
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -4.5, -5.5, 0.0, 1.100000023841858
	.float -5.5, -7.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -3.0, 0.0, 1.0399999618530273
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 1.1699999570846558
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.7400000095367432
	.float -5.5, -3.0, 0.0, 1.059999942779541
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.7799999713897705
	.float -5.5, -3.0, 0.0, 0.9599999785423279
	.float -5.5, -3.0, 0.0, 0.41999998688697815
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.9100000262260437
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.41999998688697815
	.float -5.5, -3.0, 0.0, 0.8100000023841858
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -6.0, 0.0, 0.5
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -5.5, -6.0, 0.0, 0.8999999761581421
	.float -5.5, -3.5, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -5.5, -3.0, 0.0, 0.7200000286102295
	.float -5.5, -3.0, 0.0, 1.0099999904632568
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.5600000023841858
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -6.0, -3.0, 0.0, 1.2100000381469727
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.9599999785423279
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.5, 0.0, 0.9300000071525574
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.6899999976158142
	.float -5.5, -3.0, 0.0, 0.8399999737739563
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -5.5, 0.0, 0.550000011920929
	.float -5.5, -4.0, 0.0, 1.1100000143051147
	.float -5.5, -3.0, 0.0, 0.6499999761581421
	.float -5.5, -3.0, 0.0, 0.699999988079071
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.5699999928474426
	.float -5.5, -3.0, 0.0, 0.8899999856948853
	.float -5.5, -3.0, 0.0, 0.5199999809265137
	.float -5.5, -3.0, 0.0, 0.7699999809265137
	.float -5.5, -3.0, 0.0, 0.9399999976158142
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.0, 0.0, 0.6000000238418579
	.float -5.5, -3.0, 0.0, 0.800000011920929
	.float -5.5, -3.0, 0.0, 0.6200000047683716
	.float -6.0, -3.0, 0.0, 1.090000033378601
	.float -5.5, -3.0, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -3.5, 0.0, 1.399999976158142
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.8600000143051147
	.float -5.5, -5.0, 0.0, 0.75
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.0, 0.0, 1.2000000476837158
	.float -5.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -6.0, 0.0, 1.100000023841858
	.float -5.5, -3.0, 0.0, 0.8600000143051147
	.float -5.5, -3.0, 0.0, 1.149999976158142
	.float -5.5, -3.0, 0.0, 1.340000033378601
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -3.0, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 1.2999999523162842
	.float -6.5, -5.5, 0.0, 1.4299999475479126
	.float -5.5, -3.0, 0.0, 0.8199999928474426
	.float -5.5, -3.0, 0.0, 0.75
	.float -5.5, -4.5, 0.0, 1.0199999809265137
	.float -6.5, -3.0, 0.0, 0.8500000238418579
	.float -5.5, -3.5, 0.0, 0.9200000166893005
	.float -5.5, -3.0, 0.0, 0.9900000095367432
	.float -5.5, -4.0, 0.0, 1.149999976158142
	.float -5.5, -3.0, 0.0, 1.0199999809265137
	.float -5.5, -3.0, 0.0, 0.8999999761581421
	.float -5.5, -4.0, 0.0, 0.6499999761581421
	.float -5.5, -6.5, 0.0, 0.550000011920929
	.float -5.5, -3.0, 0.0, 0.7900000214576721
	.float -5.5, -6.5, 0.0, 0.5400000214576721
	.float -5.5, -3.0, 0.0, 1.100000023841858
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 1.2000000476837158
	.float -6.0, -3.0, 0.0, 1.3700000047683716
	.float -5.5, -3.0, 0.0, 1.399999976158142
	.float -5.5, -3.0, 0.0, 0.9700000286102295
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -3.0, 0.0, 0.44999998807907104
	.float -5.5, -6.0, 0.0, 1.100000023841858
	.float -5.5, -3.0, 0.0, 0.4000000059604645
	.float -5.5, -3.0, 0.0, 0.949999988079071
	.float -5.5, -3.0, 0.0, 0.5
.global lbl_8041A3F8
lbl_8041A3F8:
	.4byte 0x800FBCA0, 0x800FBCE0, 0x800FBD20, 0x800FBD60
	.4byte 0x800FBDA0, 0x800FBDE0, 0x800FBE20
.global lbl_8041A414
lbl_8041A414:
	.4byte 0x800FB71C, 0x800FB840, 0x800FB964, 0x800FB9D0
	.4byte 0x800FBA64, 0x800FBAF4, 0x800FBB88
.global lbl_8041A430
lbl_8041A430:
	.4byte 0x800FA2D8, 0x800FA18C, 0x800FA1A0, 0x800FA1B4
	.4byte 0x800FA1C8, 0x800FA1DC, 0x800FA1F0, 0x800FA25C
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA2C8
.global lbl_8041A484
lbl_8041A484:
	.4byte 0x800FA2D8, 0x800F9F7C, 0x800F9FE4, 0x800F9FF8
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA00C, 0x800FA07C
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA2D8, 0x800FA2D8, 0x800FA2D8, 0x800FA2D8
	.4byte 0x800FA0EC
.global lbl_8041A4D8
lbl_8041A4D8:
	.4byte 0x800F9804, 0x800F9A6C, 0x800F9E5C, 0x800FA3A4
	.4byte 0x800FA858, 0x800FA968, 0x800FAA54, 0x800FB100
	.4byte 0x800FB174, 0x800FAB4C, 0x800FAF18, 0x800FAF64
	.4byte 0x800FB2DC, 0x800FB3EC, 0x800FB4D8, 0x800FC088
	.4byte 0x800FC0B4, 0x800FB6CC, 0x800FBEA0, 0x800FBEEC
	.4byte 0x800FC140, 0x800FC18C, 0x800FC210, 0x800FC2CC
	.4byte 0x800FC5E4, 0x800FC61C, 0x800FC6D0, 0x800FC728
	.4byte 0x800FC7C8, 0x800FCC98, 0x800FCCC4, 0x800FC8C0
	.4byte 0x800FCB94, 0x800FCBE0, 0x800FCDB4, 0x800FCE0C
	.4byte 0x800FCEAC, 0x800FD37C, 0x800FD3A8, 0x800FCFA4
	.4byte 0x800FD278, 0x800FD2C4, 0x800FA400, 0x800FA4FC
	.4byte 0x800FD430, 0x800FA62C, 0x800FA728
.global lbl_8041A594
lbl_8041A594:
	.4byte 0x800FD9EC, 0x800FDA78, 0x800FDA34, 0x800FDA78
	.4byte 0x800FDA78, 0x800FDA04, 0x800FDA78, 0x800FDA1C
.global lbl_8041A5B4
lbl_8041A5B4:
	.4byte 0x800FDF24, 0x800FDF24, 0x800FDEF4, 0x800FDEC0
	.4byte 0x800FDE8C, 0x800FDF24, 0x800FDBB8, 0x800FDC7C
	.4byte 0x800FDE44, 0x800FDF24, 0x800FDF24, 0x800FDD7C
	.4byte 0x800FDF24, 0x800FDADC
.global lbl_8041A5EC
lbl_8041A5EC:
	.4byte 0x800FE79C, 0x800FE79C, 0x800FE450, 0x800FE484
	.4byte 0x800FE4B8, 0x800FE4EC, 0x800FE41C, 0x800FE79C
	.4byte 0x800FE580, 0x800FE79C, 0x800FE79C, 0x800FE520
	.4byte 0x800FE79C, 0x800FE6C0, 0x800FE79C, 0x800FE704
	.4byte 0x800FE79C, 0x800FE738, 0x800FE79C, 0x800FE76C
	.4byte 0x800FE79C, 0x800FE5C8
.global lbl_8041A644
lbl_8041A644:
	.4byte 0x800FEC48, 0x800FEC78, 0x800FEC14, 0x800FEC78
	.4byte 0x800FEBE0, 0x800FEC78, 0x800FEBAC, 0x800FEC78
	.4byte 0x800FEB78, 0x800FEC78, 0x800FEB44
.global lbl_8041A670
lbl_8041A670:
	.4byte 0x800FF68C, 0x800FED44, 0x800FEE08, 0x800FF68C
	.4byte 0x800FEECC, 0x800FF68C, 0x800FEFCC, 0x800FF68C
	.4byte 0x800FF68C, 0x800FF014, 0x800FF0DC, 0x800FF158
	.4byte 0x800FF200, 0x800FF27C, 0x800FF324, 0x800FF3A0
	.4byte 0x800FF448, 0x800FF4C4, 0x800FF56C, 0x800FF5E8
.global lbl_8041A6C0
lbl_8041A6C0:
	.4byte 0x800FF8B4, 0x800FF9C0, 0x800FF6F4, 0x800FF9C0
	.4byte 0x800FF8F8, 0x800FF9C0, 0x800FF764, 0x800FF9C0
	.4byte 0x800FF93C, 0x800FF9C0, 0x800FF7D4, 0x800FF9C0
	.4byte 0x800FF980, 0x800FF9C0, 0x800FF844
.global lbl_8041A6FC
lbl_8041A6FC:
	.4byte 0x80100200, 0x800FFA24, 0x800FFA58, 0x800FFA8C
	.4byte 0x800FFAC0, 0x80100200, 0x80100200, 0x800FFAF4
	.4byte 0x80100200, 0x800FFE74, 0x80100200, 0x800FFBD4
	.4byte 0x80100200, 0x800FFF58, 0x80100200, 0x800FFCB4
	.4byte 0x80100200, 0x8010003C, 0x80100200, 0x800FFD94
	.4byte 0x80100200, 0x80100120
.global lbl_8041A754
lbl_8041A754:
	.4byte 0x80100790, 0x8010061C, 0x80100640, 0x80100658
	.4byte 0x80100670, 0x80100688, 0x801006A0, 0x801006B8
	.4byte 0x801006D0, 0x801006E8, 0x80100700, 0x80100718
	.4byte 0x80100730, 0x80100748, 0x80100760, 0x80100778
.global lbl_8041A794
lbl_8041A794:
	.4byte 0x801003F8, 0x80100410, 0x801004A0, 0x801005C4
	.4byte 0x801005C4, 0x8010037C, 0x801005C4, 0x801003C8
	.4byte 0x801005C4, 0x801005C4, 0x801003E0, 0x801005C4
	.4byte 0x80100540, 0x801005C4, 0x80100550, 0x801005C4
	.4byte 0x80100560, 0x801005C4, 0x80100570, 0x801005C4
	.4byte 0x80100580, 0x801005C4, 0x80100590, 0x801005C4
	.4byte 0x801005A0, 0x801005B0, 0x801005C4, 0x801005C4
	.4byte 0x801005C0, 0x801005C4, 0x80100548, 0x801005C4
	.4byte 0x80100558, 0x801005C4, 0x80100568, 0x801005C4
	.4byte 0x80100578, 0x801005C4, 0x80100588, 0x801005C4
	.4byte 0x80100598, 0x801005C4, 0x801005A8, 0x801005B8
	.4byte 0x801005C4, 0x801005C4, 0x8010026C, 0x801005C4
	.4byte 0x801002B0, 0x801005C4, 0x801002F4, 0x801005C4
	.4byte 0x80100338
.global lbl_8041A868
lbl_8041A868:
	.4byte 0x801018F4, 0x801014E8, 0x80101508, 0x80101528
	.4byte 0x80101548, 0x801008E4, 0x80100904, 0x80100924
	.4byte 0x80100944, 0x801018F4, 0x80100A00, 0x801018F4
	.4byte 0x801018F4, 0x801018F4, 0x80100964, 0x80100A9C
	.4byte 0x801018F4, 0x801018F4, 0x801018F4, 0x80100B34
	.4byte 0x80100BF0, 0x801018F4, 0x80100CAC, 0x801018F4
	.4byte 0x80100DA4, 0x801018F4, 0x80100E9C, 0x801018F4
	.4byte 0x80100F94, 0x801018F4, 0x8010108C, 0x801018F4
	.4byte 0x80101184, 0x801018F4, 0x8010127C, 0x801018F4
	.4byte 0x801018F4, 0x80101374, 0x8010146C, 0x801018F4
	.4byte 0x80100D28, 0x801018F4, 0x80100E20, 0x801018F4
	.4byte 0x80100F18, 0x801018F4, 0x80101010, 0x801018F4
	.4byte 0x80101108, 0x801018F4, 0x80101200, 0x801018F4
	.4byte 0x801012F8, 0x801018F4, 0x801018F4, 0x801013F0
	.4byte 0x80101568, 0x801018F4, 0x8010164C, 0x801018F4
	.4byte 0x80101730, 0x801018F4, 0x80101814
.global lbl_8041A964
lbl_8041A964:
	.4byte 0x80101B18, 0x801019C4, 0x80101B18, 0x80101B18
	.4byte 0x801019E4, 0x80101A04, 0x80101A3C, 0x80101A5C
	.4byte 0x80101AB4, 0x80101AD4
.global lbl_8041A98C
lbl_8041A98C:
	.float 5.281900472553502e-10, 5.354661158918361e-10, 5.42742184528322e-10, 5.500182531648079e-10
	.float 5.572943218012938e-10, 5.645703904377797e-10, 5.718464590742656e-10, 5.791225277107515e-10
	.float 5.863985963472373e-10, 5.936746649837232e-10, 6.009507336202091e-10, 6.08226802256695e-10
	.float 6.148184183984995e-10
.global lbl_8041A9C0
lbl_8041A9C0:
	.float 7.064537288492545e-10, 7.137297974857404e-10, 7.210058661222263e-10, 7.282819347587122e-10
	.float 7.355580033951981e-10, 7.428340720316839e-10, 7.501101406681698e-10, 7.573862093046557e-10
	.float 7.646622779411416e-10, 7.719383465776275e-10, 7.792144152141134e-10, 7.864904838505993e-10
	.float 7.937665524870852e-10, 8.010426211235711e-10, 8.083186897600569e-10
.global lbl_8041A9FC
lbl_8041A9FC:
	.float 6.846255229397968e-10, 6.919015915762827e-10, 6.991776602127686e-10
.global lbl_8041AA08
lbl_8041AA08:
	.4byte 0x80102858, 0x801028C0, 0x80102928, 0x80102990
	.4byte 0x801029F8, 0x80102A60, 0x80102AC8, 0x80102B30
	.4byte 0x80102B98, 0x80102C00, 0x80102C50, 0x80102CA0
	.4byte 0x80102CF0, 0x80102D40, 0x80102D90, 0x80102DE0
.global lbl_8041AA48
lbl_8041AA48:
	.4byte 0x80103D34, 0x80103D94, 0x80103D94, 0x80103D94
	.4byte 0x80103D54, 0x80103D54, 0x80103D34, 0x80103D74
	.4byte 0x80103D74, 0x80103D34, 0x80103DD4, 0x80103DD4
	.4byte 0x80103D34, 0x80103D34, 0x80103D34, 0x80103DB4
.global lbl_8041AA88
lbl_8041AA88:
	.4byte 0x80103024, 0x801030C0, 0x8010315C, 0x801031F8
	.4byte 0x801032D4, 0x801033B0, 0x8010348C, 0x80103568
	.4byte 0x80103604, 0x801036A0, 0x8010377C, 0x80103858
	.4byte 0x80103934, 0x80103A10, 0x80103AEC, 0x80103BC8
.global lbl_8041AAC8
lbl_8041AAC8:
	.incbin "baserom.dol", 0x416BC8, 0x78
.global lbl_8041AB40
lbl_8041AB40:
	.4byte 0x80105148, 0x80104F88, 0x80104FC8, 0x80104FE4
	.4byte 0x80104FF4, 0x80105004, 0x80105088, 0x801050AC
	.4byte 0x801050BC, 0x801050CC, 0x801050DC, 0x801050EC
	.4byte 0x801050FC, 0x801050FC
.global lbl_8041AB78
lbl_8041AB78:
	.4byte 0x80104468, 0x80104478, 0x80104468, 0x80104468
	.4byte 0x80104468, 0x80104438, 0x80104468, 0x80104468
	.4byte 0x80104468, 0x80104468, 0x80104478, 0x80104468
	.4byte 0x80104478, 0x80104478
.global lbl_8041ABB0
lbl_8041ABB0:
	.float 1.1523248117382014e-28, 3.031839594094812e-26, 8.898324302006516e-18, 2.593151471330657e-09
	.float 6.780028343200684e-07, 0.0
.global lbl_8041ABC8
lbl_8041ABC8:
	.4byte 0x80109124, 0x80108F88, 0x80108FB0, 0x80109034
	.4byte 0x8010904C, 0x801090D0, 0x801090F8, 0x80109110
.global lbl_8041ABE8
lbl_8041ABE8:
	.4byte 0x8011455C, 0x80108130, 0x80108148, 0x80108160
	.4byte 0x80108178, 0x80108190, 0x801081A8, 0x801081C0
.global lbl_8041AC08
lbl_8041AC08:
	.4byte 0x8011455C, 0x80107F4C, 0x80107F7C, 0x80107FAC
	.4byte 0x80107FDC, 0x8010800C, 0x8010803C, 0x8010806C
.global lbl_8041AC28
lbl_8041AC28:
	.4byte 0x8011455C, 0x80107DD8, 0x80107E08, 0x80107E38
	.4byte 0x80107E68, 0x80107E98, 0x80107EC8, 0x80107EF8
.global lbl_8041AC48
lbl_8041AC48:
	.4byte 0x8011455C, 0x80107B80, 0x80107B98, 0x80107BB0
	.4byte 0x80107BC8, 0x80107BE0, 0x80107BF8, 0x80107C10
.global lbl_8041AC68
lbl_8041AC68:
	.4byte 0x8011455C, 0x801061A0, 0x80106318, 0x80106418
	.4byte 0x80106608, 0x801066A8, 0x80106758, 0x80106780
	.4byte 0x8010681C, 0x801068F4, 0x80106C60, 0x80106D10
	.4byte 0x80106E68, 0x80106EA4, 0x80106ED8, 0x80106F50
	.4byte 0x80107044, 0x80107080, 0x80107180, 0x80107220
	.4byte 0x801072F0, 0x80107714, 0x801077C4, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8010790C
	.4byte 0x80107C28, 0x80107D88, 0x8010809C, 0x801080D8
	.4byte 0x801081D8, 0x80108354, 0x80108408, 0x8010866C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x80108708
	.4byte 0x80108848, 0x80108918, 0x80108C58, 0x80108CFC
	.4byte 0x80108E18, 0x80108EA0, 0x801091D0, 0x801092E4
	.4byte 0x801093BC, 0x80109710, 0x801097BC, 0x80109908
	.4byte 0x8011455C, 0x80109978, 0x80109B9C, 0x80109C58
	.4byte 0x80109E58, 0x80109EFC, 0x80109FD8, 0x8010A0A8
	.4byte 0x8010A164, 0x8010A364, 0x8010A414, 0x8010A548
	.4byte 0x8010A588, 0x8010A698, 0x8010A74C, 0x8010A968
	.4byte 0x8010AA04, 0x8010AA8C, 0x8010ABA4, 0x8010AD04
	.4byte 0x8010AD24, 0x8010AD50, 0x8010ADCC, 0x8010AE54
	.4byte 0x8010B130, 0x8010B1BC, 0x8010B1E8, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8010B250, 0x8010B2E0, 0x8010B398
	.4byte 0x8010B690, 0x8010B70C, 0x8011455C, 0x8010B748
	.4byte 0x8010B890, 0x8010BA80, 0x8010BFBC, 0x8010C040
	.4byte 0x8010C07C, 0x8010C0B8, 0x8010C1F4, 0x8010C378
	.4byte 0x8010CC48, 0x8010CD3C, 0x8010CDF8, 0x8010CE44
	.4byte 0x8010CE90, 0x8010CF08, 0x8010D174, 0x8010D348
	.4byte 0x8010D864, 0x8010D99C, 0x8010D8D8, 0x8010D924
	.4byte 0x8010DBF0, 0x8010DC24, 0x8010DC78, 0x8010DB7C
	.4byte 0x8010DA80, 0x8010DB18, 0x8010DB4C, 0x8010DCB0
	.4byte 0x8010DEEC, 0x8010DF7C, 0x8010E1D0, 0x8010E244
	.4byte 0x8010E2A4, 0x8010E304, 0x8010E38C, 0x8010E458
	.4byte 0x8010E48C, 0x8010E4EC, 0x8010E554, 0x8010E5A4
	.4byte 0x8010E60C, 0x8010E6E4, 0x8010E71C, 0x8010E7FC
	.4byte 0x8010E880, 0x8010E8E0, 0x8010E980, 0x8010EA2C
	.4byte 0x8010EA80, 0x8010EAE0, 0x8010EB48, 0x8010EB98
	.4byte 0x8010EC00, 0x8010ECD8, 0x8010ED10, 0x8010EDFC
	.4byte 0x8010EEDC, 0x8010EF40, 0x8010EFC4, 0x8010F020
	.4byte 0x8010F048, 0x8010F130, 0x8010F17C, 0x8010F1D0
	.4byte 0x8010F368, 0x8010F3C4, 0x8010F478, 0x8010F4D0
	.4byte 0x8010F508, 0x8010F530, 0x8010F5B0, 0x8010F5DC
	.4byte 0x8010F614, 0x8010F65C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8010F680, 0x8010F6D0
	.4byte 0x8010F708, 0x8010F748, 0x8010F798, 0x8010F7DC
	.4byte 0x8010F82C, 0x8010F894, 0x8010F988, 0x8010F9C0
	.4byte 0x8010FA28, 0x8010FA6C, 0x8010FABC, 0x8010FB34
	.4byte 0x8010FC1C, 0x8010FC54, 0x8010FCAC, 0x8010FCE4
	.4byte 0x8010FDF4, 0x8010FEC0, 0x8010FF54, 0x8010FF90
	.4byte 0x8010FFC8, 0x801100C8, 0x80110100, 0x80110138
	.4byte 0x801101A0, 0x801101E4, 0x80110234, 0x8011029C
	.4byte 0x80110384, 0x801103BC, 0x80110414, 0x8011044C
	.4byte 0x80110534, 0x80110570, 0x801105F4, 0x80110630
	.4byte 0x8011065C, 0x801106B8, 0x801106E8, 0x80110728
	.4byte 0x80110760, 0x801107B0, 0x801107FC, 0x80110844
	.4byte 0x80110894, 0x801108E0, 0x80110948, 0x801109C8
	.4byte 0x80110A08, 0x80110A40, 0x80110A90, 0x80110ADC
	.4byte 0x80110B24, 0x80110B74, 0x80110BC0, 0x80110C08
	.4byte 0x80110C58, 0x80110CA4, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x80110D0C, 0x80110D8C, 0x80110DCC
	.4byte 0x80110E04, 0x80110E54, 0x80110EA0, 0x80110EE8
	.4byte 0x80110F38, 0x80110F84, 0x80110FCC, 0x8011101C
	.4byte 0x80111068, 0x801110D0, 0x80111130, 0x80111170
	.4byte 0x801111A8, 0x801111F8, 0x80111244, 0x8011128C
	.4byte 0x801112DC, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x80111328, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x80111390, 0x801113F0, 0x80111430, 0x80111468
	.4byte 0x801114B8, 0x80111504, 0x8011154C, 0x8011159C
	.4byte 0x801115E8, 0x80111650, 0x801116B0, 0x801116F0
	.4byte 0x80111728, 0x80111778, 0x801117C4, 0x8011180C
	.4byte 0x8011185C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x801118A8, 0x80111910, 0x80111970, 0x801119B0
	.4byte 0x801119E8, 0x80111A38, 0x80111A84, 0x80111ACC
	.4byte 0x80111B1C, 0x80111B68, 0x80111BB0, 0x80111C00
	.4byte 0x80111C4C, 0x80111CB4, 0x80111D14, 0x80111D2C
	.4byte 0x80111D54, 0x80111DB4, 0x80111DE0, 0x80111E14
	.4byte 0x80111EA0, 0x80111EE0, 0x80111F5C, 0x80111F84
	.4byte 0x80111FA4, 0x80111FE8, 0x80112054, 0x80112080
	.4byte 0x8011213C, 0x80112170, 0x801121D4, 0x80112200
	.4byte 0x8011220C, 0x80112218, 0x80112224, 0x80112230
	.4byte 0x8011223C, 0x801122CC, 0x80112458, 0x80112498
	.4byte 0x801124C4, 0x801124F0, 0x80112544, 0x8011255C
	.4byte 0x80112584, 0x801125C4, 0x801125F0, 0x80112630
	.4byte 0x80112668, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x801126BC, 0x801126D4
	.4byte 0x801126FC, 0x8011273C, 0x80112768, 0x801127A8
	.4byte 0x801127E0, 0x80112808, 0x80112824, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011284C, 0x80112864
	.4byte 0x8011288C, 0x801128CC, 0x801128F8, 0x80112938
	.4byte 0x80112970, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x801129C4, 0x801129DC
	.4byte 0x80112A04, 0x80112A64, 0x80112A90, 0x80112AC4
	.4byte 0x80112B18, 0x80112B44, 0x80112BC0, 0x80112BE8
	.4byte 0x80112C08, 0x80112C4C, 0x80112CB8, 0x80112CE4
	.4byte 0x80112DA0, 0x80112DD4, 0x80112E14, 0x80112E40
	.4byte 0x80112E80, 0x80112EB8, 0x80112EEC, 0x80112FAC
	.4byte 0x80113020, 0x8011310C, 0x80113144, 0x80113194
	.4byte 0x801131B4, 0x801131E0, 0x80113264, 0x80113298
	.4byte 0x8011330C, 0x801133F4, 0x8011342C, 0x8011347C
	.4byte 0x801134B0, 0x801134C4, 0x801134DC, 0x80113504
	.4byte 0x80113564, 0x80113590, 0x801135C4, 0x80113618
	.4byte 0x80113644, 0x801136C0, 0x8011455C, 0x801136E8
	.4byte 0x80113708, 0x8011374C, 0x801137B8, 0x801137E4
	.4byte 0x801138A0, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x801138D4, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x8011455C
	.4byte 0x801138E0, 0x80113920, 0x8011455C, 0x8011394C
	.4byte 0x80113964, 0x8011398C, 0x801139EC, 0x80113A28
	.4byte 0x80113A40, 0x80113A68, 0x80113AA8, 0x80113AF8
	.4byte 0x80113B38, 0x80113B64, 0x8011455C, 0x8011455C
	.4byte 0x8011455C, 0x80113BB0, 0x80113BC8, 0x80113BF0
	.4byte 0x80113C30, 0x80113C80, 0x80113CC0, 0x80113CEC
	.4byte 0x8011455C, 0x8011455C, 0x8011455C, 0x80113D7C
	.4byte 0x80113DF0, 0x80113E58, 0x80113E98, 0x80113EE8
	.4byte 0x80113F50, 0x80114028, 0x80114060, 0x80114170
	.4byte 0x801141B4, 0x801141DC, 0x801141F8, 0x80114220
	.4byte 0x80114238, 0x80114260, 0x801142B8, 0x80114308
	.4byte 0x80114348, 0x80114374, 0x801143C0, 0x801143D8
	.4byte 0x80114400, 0x80114458, 0x801144A8, 0x801144E8
	.4byte 0x80114514, 0x801151A0, 0x801151C8, 0x801151F0
	.4byte 0x80115228, 0x80115250, 0x8011528C, 0x801152C8
	.4byte 0x80115304, 0x80115340, 0x80115368, 0x80115390
	.4byte 0x801153B8, 0x801153EC, 0x80115424, 0x8011545C
	.4byte 0x80115494, 0x801154CC, 0x80115504, 0x8011553C
	.4byte 0x801155AC, 0x80115574, 0x801155E4
.global lbl_8041B6C4
lbl_8041B6C4:
	.incbin "baserom.dol", 0x4177C4, 0xB4
.global lbl_8041B778
lbl_8041B778:
	.4byte 0x80115704, 0x80115704, 0x80115704, 0x80115714
	.4byte 0x80115724, 0x80115734, 0x80115744, 0x80115754
	.4byte 0x80115764, 0x80115774
.global lbl_8041B7A0
lbl_8041B7A0:
	.4byte 0x801156DC, 0x8011585C, 0x8011589C, 0x801158CC
	.4byte 0x801158FC, 0x8011592C, 0x8011595C, 0x8011598C
	.4byte 0x801159BC, 0x801159EC
.global lbl_8041B7C8
lbl_8041B7C8:
	.4byte 0x80115C34, 0x80115A88, 0x80115AB8, 0x80115AE8
	.4byte 0x80115B18, 0x80115B48, 0x80115B78, 0x80115BA8
	.4byte 0x80115BD8, 0x80115C08
.global lbl_8041B7F0
lbl_8041B7F0:
	.4byte 0x80115D7C, 0x80115C84, 0x80115CA0, 0x80115CBC
	.4byte 0x80115CD8, 0x80115CF4, 0x80115D10, 0x80115D2C
	.4byte 0x80115D48, 0x80115D64
.global lbl_8041B818
lbl_8041B818:
	.4byte 0x801165D8, 0x801165E0, 0x801165E8, 0x801165F0
	.4byte 0x801165F8, 0x80116600, 0x80116608, 0x80116610
	.4byte 0x80116618, 0x80116620, 0x80116628, 0x80116630
	.4byte 0x80116638, 0x80116640, 0x80116648, 0x80116648
	.4byte 0x80116648, 0x80116648, 0x80116648, 0x80116648
	.4byte 0x80116648
.global lbl_8041B86C
lbl_8041B86C:
	.4byte 0x80116564, 0x8011656C, 0x80116574, 0x8011657C
	.4byte 0x80116584, 0x8011658C, 0x80116594, 0x8011659C
	.4byte 0x801165A4, 0x801165AC
.global lbl_8041B894
lbl_8041B894:
	.incbin "baserom.dol", 0x417994, 0x54
.global lbl_8041B8E8
lbl_8041B8E8:
	.float 3.2100593017059253e-11, 3.255534730683962e-11, 3.301010159661999e-11, 3.346485588640036e-11
	.float 3.3919610176180726e-11, 3.4374364465961094e-11, 3.482911875574146e-11, 3.528387304552183e-11
	.float 3.57386273353022e-11, 3.619338509452952e-11, 3.64207622394197e-11
.global lbl_8041B914
lbl_8041B914:
	.4byte 0x80116DAC, 0x80116D70, 0x80116D80, 0x80116D90
	.4byte 0x80116DA0, 0x80116DAC, 0x801167C0, 0x801167E0
	.4byte 0x80116814, 0x80116848, 0x8011689C, 0x801168D0
	.4byte 0x80116DAC, 0x8011692C, 0x8011694C, 0x80116980
	.4byte 0x801169B4, 0x80116A08, 0x80116A3C, 0x80116DAC
	.4byte 0x80116A98, 0x80116AB8, 0x80116AEC, 0x80116B20
	.4byte 0x80116B74, 0x80116BA8, 0x80116DAC, 0x80116C04
	.4byte 0x80116C24, 0x80116C58, 0x80116C8C, 0x80116CE0
	.4byte 0x80116D14
.global lbl_8041B998
lbl_8041B998:
	.4byte 0x80116F8C, 0x80116F00, 0x80116EDC, 0x80116F6C
	.4byte 0x80116F48, 0x80116EB8, 0x80116E94, 0x80116F24
	.4byte 0x80116F8C, 0x80116E14
.global lbl_8041B9C0
lbl_8041B9C0:
	.4byte 0x8011700C, 0x8011709C, 0x8011709C, 0x8011709C
	.4byte 0x8011709C, 0x8011709C, 0x80117054, 0x8011709C
	.4byte 0x8011709C, 0x80116FF4, 0x8011709C, 0x8011709C
	.4byte 0x80116FF4
.global lbl_8041B9F4
lbl_8041B9F4:
	.4byte 0x801172DC, 0x80117274, 0x80117298, 0x801172BC
	.4byte 0x801172DC, 0x801172DC, 0x801172DC, 0x80117100
	.4byte 0x801172DC, 0x801172DC, 0x8011717C, 0x801172DC
	.4byte 0x801172DC, 0x801171F8
.global lbl_8041BA2C
lbl_8041BA2C:
	.4byte 0x80117618, 0x801175B0, 0x801175D4, 0x801175F8
	.4byte 0x80117618, 0x80117618, 0x80117618, 0x8011743C
	.4byte 0x80117618, 0x80117618, 0x801174B8, 0x80117618
	.4byte 0x80117618, 0x80117534
.global lbl_8041BA64
lbl_8041BA64:
	.4byte 0x80117AF4, 0x80117A8C, 0x80117AB0, 0x80117AF4
	.4byte 0x80117AF4, 0x80117AF4, 0x80117AF4, 0x80117918
	.4byte 0x80117AF4, 0x80117AF4, 0x80117994, 0x80117AD4
	.4byte 0x80117AF4, 0x80117A10
.global lbl_8041BA9C
lbl_8041BA9C:
	.4byte 0x80117DA4, 0x80117DC4, 0x80117DE0, 0x80117E04
	.4byte 0x80117E20, 0x80117E40, 0x80117E60, 0x80117E80
	.4byte 0x80117EA0, 0x80117EBC, 0x80117ED8, 0x80117EF4
	.4byte 0x80117F10, 0x80117F2C, 0x80117F48, 0x80117F64
	.4byte 0x80117F80, 0x80117F9C, 0x80117FB8, 0x80117FF0
	.4byte 0x80117FD4, 0x8011800C
.global lbl_8041BAF4
lbl_8041BAF4:
	.4byte 0x80117C38, 0x80117CB8, 0x80117C4C, 0x80117CB8
	.4byte 0x80117C58, 0x80117CB8, 0x80117C6C, 0x80117CB8
	.4byte 0x80117C80, 0x80117CB8, 0x80117C94, 0x80117CB8
	.4byte 0x80117CA8
.global lbl_8041BB28
lbl_8041BB28:
	.4byte 0x8011847C, 0x801183F4, 0x801183FC, 0x80118404
	.4byte 0x8011840C, 0x80118414, 0x8011841C, 0x80118424
	.4byte 0x8011842C, 0x80118434, 0x80118474, 0x80118454
	.4byte 0x8011845C, 0x80118464, 0x8011846C, 0x8011843C
	.4byte 0x80118444, 0x8011844C
.global lbl_8041BB70
lbl_8041BB70:
	.4byte 0x80118584, 0x801185C8, 0x801185C8, 0x8011856C
	.4byte 0x801185C8, 0x801185C8, 0x8011856C, 0x801185C8
	.4byte 0x801185C8, 0x8011856C
.global lbl_8041BB98
lbl_8041BB98:
	.4byte 0x80118C6C, 0x80118B70, 0x80118B94, 0x80118C6C
	.4byte 0x80118C6C, 0x80118C6C, 0x80118C6C, 0x80118A78
	.4byte 0x80118C6C, 0x80118C6C, 0x80118AF4, 0x80118C6C
	.4byte 0x80118C6C, 0x80118C6C, 0x80118C6C, 0x80118C6C
	.4byte 0x80118C6C, 0x80118C6C, 0x80118BB8
.global lbl_8041BBE4
lbl_8041BBE4:
	.4byte 0x80118E94, 0x80118F70, 0x80118F70, 0x80118F70
	.4byte 0x80118F70, 0x80118F70, 0x80118F70, 0x80118ECC
	.4byte 0x80118F70, 0x80118F70, 0x80118F70, 0x80118F70
	.4byte 0x80118F70, 0x80118F70, 0x80118F04, 0x80118F70
	.4byte 0x80118F70, 0x80118F70, 0x80118F70, 0x80118F70
	.4byte 0x80118F70, 0x80118F3C
.global lbl_8041BC3C
lbl_8041BC3C:
	.4byte 0x80119854, 0x80119818, 0x80119828, 0x80119838
	.4byte 0x80119848, 0x80119854, 0x80119038, 0x80119070
	.4byte 0x801190A8, 0x801190F4, 0x80119168, 0x801191B4
	.4byte 0x80119854, 0x80119230, 0x80119268, 0x801192A0
	.4byte 0x801192EC, 0x80119360, 0x801193AC, 0x80119854
	.4byte 0x80119428, 0x80119460, 0x80119498, 0x801194E4
	.4byte 0x80119558, 0x801195A4, 0x80119854, 0x80119620
	.4byte 0x80119658, 0x80119690, 0x801196DC, 0x80119750
	.4byte 0x8011979C
.global lbl_8041BCC0
lbl_8041BCC0:
	.4byte 0x80119920, 0x80119980, 0x801198C0, 0x80119980
	.4byte 0x80119908, 0x801198F0, 0x801198D8
.global lbl_8041BCDC
lbl_8041BCDC:
	.4byte 0x80119B50, 0x80119AF4, 0x80119B04, 0x80119B50
	.4byte 0x80119B50, 0x80119B50, 0x80119B50, 0x80119B50
	.4byte 0x80119B50, 0x80119B50, 0x80119AC0, 0x80119A84
	.4byte 0x80119A50, 0x80119B50, 0x80119B14, 0x80119B50
	.4byte 0x80119B34
.global lbl_8041BD20
lbl_8041BD20:
	.4byte 0x80119C1C, 0x80119C7C, 0x80119BBC, 0x80119C7C
	.4byte 0x80119C04, 0x80119BEC, 0x80119BD4
.global lbl_8041BD3C
lbl_8041BD3C:
	.4byte 0x80119D4C, 0x80119DAC, 0x80119CEC, 0x80119DAC
	.4byte 0x80119D34, 0x80119D1C, 0x80119D04
.global lbl_8041BD58
lbl_8041BD58:
	.4byte 0x80119F7C, 0x80119F20, 0x80119F30, 0x80119F7C
	.4byte 0x80119F7C, 0x80119F7C, 0x80119F7C, 0x80119F7C
	.4byte 0x80119F7C, 0x80119F7C, 0x80119EEC, 0x80119EB0
	.4byte 0x80119E7C, 0x80119F7C, 0x80119F40, 0x80119F7C
	.4byte 0x80119F60
.global lbl_8041BD9C
lbl_8041BD9C:
	.4byte 0x80119FFC, 0x8011A238, 0x8011A238, 0x8011A11C
	.4byte 0x80119FE4, 0x8011A238, 0x8011A238, 0x80119FE4
	.4byte 0x8011A238, 0x8011A238, 0x80119FE4
.global lbl_8041BDC8
lbl_8041BDC8:
	.4byte 0x8011A340, 0x8011A354, 0x8011A354, 0x8011A340
	.4byte 0x8011A354, 0x8011A354, 0x8011A340, 0x8011A354
	.4byte 0x8011A354, 0x8011A340, 0x8011A354, 0x8011A354
	.4byte 0x8011A354
.global lbl_8041BDFC
lbl_8041BDFC:
	.4byte 0x8011A5DC, 0x8011A4F0, 0x8011A5DC, 0x8011A504
	.4byte 0x8011A5DC, 0x8011A518, 0x8011A5DC, 0x8011A52C
	.4byte 0x8011A5DC, 0x8011A540, 0x8011A5DC, 0x8011A554
	.4byte 0x8011A5DC, 0x8011A568, 0x8011A4DC, 0x8011A57C
	.4byte 0x8011A5DC, 0x8011A590, 0x8011A5DC, 0x8011A5A4
	.4byte 0x8011A5DC, 0x8011A5B8, 0x8011A5DC, 0x8011A5CC
	.4byte 0x8011A5CC, 0x8011A5CC
.global lbl_8041BE64
lbl_8041BE64:
	.incbin "baserom.dol", 0x417F64, 0xC
.global lbl_8041BE70
lbl_8041BE70:
	.incbin "baserom.dol", 0x417F70, 0xC
.global lbl_8041BE7C
lbl_8041BE7C:
	.float 2.3498719636805276e-10, 2.386252306862957e-10, 2.419255906715989e-10
.global lbl_8041BE88
lbl_8041BE88:
	.4byte 0x8011A9B0, 0x8011A9CC, 0x8011AA00, 0x8011AA68
	.4byte 0x8011AAB8, 0x8011AB20, 0x8011AB78, 0x8011ABD0
	.4byte 0x8011AC38, 0x8011AC68, 0x8011ACD0, 0x8011AD00
	.4byte 0x8011AD68, 0x8011AD98, 0x8011AE00, 0x8011B0B4
	.4byte 0x8011AE30, 0x8011AE98, 0x8011AEF0, 0x8011AF28
	.4byte 0x8011AF90, 0x8011AFC0, 0x8011AFC8, 0x8011AFD0
	.4byte 0x8011AFD8, 0x8011AFE0, 0x8011AFE8, 0x8011AFF0
	.4byte 0x8011AFF8, 0x8011B000, 0x8011B028, 0x8011B060
.global lbl_8041BF08
lbl_8041BF08:
	.4byte 0x8011C354, 0x8011C344, 0x8011C334, 0x8011C364
	.4byte 0x8011C324, 0x8011C314, 0x8011C304, 0x8011C220
	.4byte 0x8011C248
.global lbl_8041BF2C
lbl_8041BF2C:
	.4byte 0x8011B1DC, 0x8011B46C, 0x8011B53C, 0x8011B7C0
	.4byte 0x8011B8C8, 0x8011B91C, 0x8011B994, 0x8011BAE8
	.4byte 0x8011BB8C, 0x8011BD30, 0x8011BC00, 0x8011BCEC
	.4byte 0x8011BD7C, 0x8011BD9C, 0x8011BDC8, 0x8011BE4C
	.4byte 0x8011BE60, 0x8011BEB0, 0x8011BF48, 0x8011C0F8
	.4byte 0x8011C1F0, 0x8011C180, 0x8011C380, 0x8011C390
	.4byte 0x8011C3CC, 0x8011C444, 0x8011C460, 0x8011C4F8
	.4byte 0x8011C534, 0x8011C580, 0x8011C5BC, 0x8011C5F8
	.4byte 0x8011C644, 0x8011C690, 0x8011C6DC, 0x8011C728
.global lbl_8041BFBC
lbl_8041BFBC:
	.4byte 0x8011C7D8, 0x8011C864, 0x8011C850, 0x8011C864
	.4byte 0x8011C864, 0x8011C7F0, 0x8011C864, 0x8011C864
	.4byte 0x8011C820
.global lbl_8041BFE0
lbl_8041BFE0:
	.float 2.382207389352189e-44, 1.401298464324817e-44, 1.6815581571897805e-44, 2.5223372357846707e-44
	.float 2.1019476964872256e-44, 2.802596928649634e-44, 8.407790785948902e-45, 1.8216880036222622e-44
	.float 2.942726775082116e-44, 3.2229864679470793e-44, 1.5414283107572988e-44, 3.0828566215145976e-44
	.float 1.961817850054744e-44, 1.1210387714598537e-44, 2.6624670822171524e-44, 2.2420775429197073e-44
	.float 9.80908925027372e-45, 1.2611686178923354e-44
.global lbl_8041C028
lbl_8041C028:
	.float 5.508428741123788e-24, 5.5601283182692575e-24, 5.611827895414727e-24, 5.6635274725601964e-24
	.float 5.715227049705666e-24, 5.766926626851135e-24, 5.818626203996605e-24, 5.870325781142074e-24
	.float 5.922025358287544e-24, 5.973724935433013e-24, 6.0254245125784826e-24, 6.077124089723952e-24
	.float 6.1288236668694215e-24, 6.180523244014891e-24, 6.23222282116036e-24, 6.28392239830583e-24
	.float 6.335621975451299e-24, 6.387321552596769e-24, 6.439021129742238e-24, 6.4907207068877076e-24
	.float 6.542420284033177e-24, 6.5941198611786465e-24, 6.67419397622401e-24, 6.77759313051495e-24
.global lbl_8041C088
lbl_8041C088:
	.4byte 0x8011E940, 0x8011E94C, 0x8011E98C, 0x8011EA20
	.4byte 0x8011EAA4, 0x8011EAE4, 0x8011EB24
.global lbl_8041C0A4
lbl_8041C0A4:
	.4byte 0x80124A64, 0x80124928, 0x80124938, 0x80124948
	.4byte 0x80124958, 0x80124968, 0x8012499C, 0x801249D0
.global lbl_8041C0C4
lbl_8041C0C4:
	.4byte 0x80123440, 0x80123450, 0x80123460, 0x80123470
	.4byte 0x80123480, 0x80123490, 0x801234A0, 0x801234B0
	.4byte 0x801234C0, 0x801234D0
.global lbl_8041C0EC
lbl_8041C0EC:
	.4byte 0x80125840, 0x8011F260, 0x8011F334, 0x8011F3C8
	.4byte 0x8011F494, 0x8011F8B0, 0x8011F95C, 0x8011FA10
	.4byte 0x8011FB94, 0x8011FC48, 0x8011FD94, 0x8011FE20
	.4byte 0x8011FEEC, 0x8011FF58, 0x8011FFCC, 0x80120230
	.4byte 0x801202C0, 0x80120344, 0x801204C4, 0x80120544
	.4byte 0x80120580, 0x80120604, 0x80120638, 0x801206F8
	.4byte 0x80120798, 0x801209AC, 0x80120A10, 0x80125840
	.4byte 0x80120C40, 0x80125840, 0x8012260C, 0x801226B8
	.4byte 0x8012282C, 0x801232F0, 0x801231FC, 0x8012338C
	.4byte 0x801234FC, 0x8012360C, 0x8012371C, 0x801239AC
	.4byte 0x80123A48, 0x80123AF8, 0x80123B9C, 0x80123C7C
	.4byte 0x80123ED0, 0x80123F6C, 0x801240B4, 0x801240E8
	.4byte 0x80124104, 0x80124250, 0x8012425C, 0x80124268
	.4byte 0x80124274, 0x80124280, 0x8012428C, 0x80124298
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x80121238, 0x80121370, 0x80121504
	.4byte 0x80121DF0, 0x80121E24, 0x80121E54, 0x80121EE8
	.4byte 0x8012207C, 0x801220B0, 0x801242A4, 0x80124348
	.4byte 0x80124394, 0x80124400, 0x80124478, 0x80124A74
	.4byte 0x80124AB8, 0x80124B0C, 0x80124B74, 0x80124BF8
	.4byte 0x80124D40, 0x80124E48, 0x801250A4, 0x80125180
	.4byte 0x801251A4, 0x801251D8, 0x801251F4, 0x8012521C
	.4byte 0x80125350, 0x80125388, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x801253D4, 0x8012555C, 0x801256EC
	.4byte 0x80125710, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x8012575C, 0x801253F8, 0x801254EC, 0x80125510
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80125840
	.4byte 0x80125768, 0x80125798, 0x801220FC, 0x80122110
	.4byte 0x80125840, 0x80125840, 0x80125840, 0x80120C8C
	.4byte 0x80120CE0, 0x80120D48, 0x80120E20, 0x80120E58
	.4byte 0x80120EA8, 0x80120EFC, 0x80120F64, 0x8012103C
	.4byte 0x80121074, 0x801210C4, 0x8012112C, 0x80121164
	.4byte 0x801211B4, 0x801211DC, 0x80122188, 0x80122280
	.4byte 0x801222E8, 0x801223C8, 0x801224AC, 0x80122504
	.4byte 0x801225D4, 0x80125840, 0x80125840, 0x80122228
	.4byte 0x8012224C
.global lbl_8041C360
lbl_8041C360:
	.4byte 0x80126898, 0x80126744, 0x8012674C, 0x80126754
	.4byte 0x80126898, 0x8012675C, 0x80126764, 0x8012676C
	.4byte 0x80126774, 0x8012677C, 0x80126784, 0x801267A0
	.4byte 0x801267A8, 0x801267B0, 0x801267B8, 0x801267C0
	.4byte 0x801267C8, 0x801267D8, 0x801267D0, 0x80126840
	.4byte 0x80126848, 0x80126850, 0x80126888, 0x80126890
.global lbl_8041C3C0
lbl_8041C3C0:
	.4byte 0x80127548, 0x801274EC, 0x801275F4, 0x801275F4
	.4byte 0x801275F4, 0x80126EEC, 0x8012707C, 0x801275F4
	.4byte 0x80126F50, 0x80127198, 0x801275F4, 0x80126FB4
	.4byte 0x801272B4, 0x801275F4, 0x80127018, 0x801273D0
	.4byte 0x801275F4, 0x801275F4, 0x801275F4, 0x801275F4
	.4byte 0x801275F4, 0x801275F4, 0x801275F4, 0x801275F4
	.4byte 0x801275F4, 0x801275F4, 0x801275F4, 0x801275F4
	.4byte 0x801275F4, 0x801275F4, 0x801275F4, 0x801275F4
	.4byte 0x801275F4, 0x8012756C
.global lbl_8041C448
lbl_8041C448:
	.4byte 0x80127738, 0x80127898, 0x80127750, 0x80127898
	.4byte 0x80127720, 0x80127898, 0x80127898, 0x80127768
	.4byte 0x80127898, 0x801277E4, 0x80127898, 0x80127780
.global lbl_8041C478
lbl_8041C478:
	.4byte 0x801279D8, 0x801279C0, 0x80127B80, 0x80127A94
	.4byte 0x80127D78, 0x80127D78, 0x80127D78, 0x80127B48
	.4byte 0x80127D78, 0x80127D78, 0x80127BFC
.global lbl_8041C4A4
lbl_8041C4A4:
	.4byte 0x80127FE8, 0x801280C4, 0x80127FE8, 0x80128020
	.4byte 0x801280C4, 0x80128020, 0x80128058, 0x801280C4
	.4byte 0x80128090
.global lbl_8041C4C8
lbl_8041C4C8:
	.4byte 0x8012829C, 0x8012829C, 0x80128180, 0x80128190
	.4byte 0x801281A0, 0x801281B0, 0x8012829C, 0x801281C0
	.4byte 0x8012829C, 0x8012829C, 0x801281F8, 0x8012829C
	.4byte 0x8012829C, 0x80128230, 0x8012829C, 0x80128268
.global lbl_8041C508
lbl_8041C508:
	.4byte 0x801283A8, 0x801283A8, 0x80128348, 0x801283A8
	.4byte 0x80128300, 0x80128300, 0x801283A8, 0x80128318
	.4byte 0x801283A8, 0x80128330
.global lbl_8041C530
lbl_8041C530:
	.4byte 0x80128654, 0x80128654, 0x80128654, 0x80128654
	.4byte 0x8012867C, 0x801289FC, 0x801289FC, 0x8012875C
	.4byte 0x801289FC, 0x801289FC, 0x8012883C, 0x801289FC
	.4byte 0x801289FC, 0x8012891C
.global lbl_8041C568
lbl_8041C568:
	.4byte 0x80128558, 0x80128530, 0x80128508, 0x801284E0
	.4byte 0x8012862C, 0x8012862C, 0x8012862C, 0x8012862C
	.4byte 0x8012862C, 0x8012862C, 0x8012862C, 0x8012862C
	.4byte 0x8012862C, 0x8012862C, 0x8012862C, 0x801285F8
	.4byte 0x801285A8, 0x80128580, 0x801285D0
.global lbl_8041C5B4
lbl_8041C5B4:
	.4byte 0x80129194, 0x80129170, 0x8012914C, 0x80129128
	.4byte 0x801290BC, 0x801293C0, 0x80128AB0, 0x801293C0
	.4byte 0x801293C0, 0x801293C0, 0x80129328, 0x801293C0
	.4byte 0x801291B8, 0x80128BDC, 0x801293C0, 0x80129214
	.4byte 0x80128D14, 0x801293C0, 0x80129270, 0x80128E4C
	.4byte 0x801293C0, 0x801292CC, 0x80128F84
.global lbl_8041C610
lbl_8041C610:
	.4byte 0x80129428, 0x80129484, 0x80129470, 0x80129470
	.4byte 0x80129484, 0x80129440, 0x80129484, 0x80129458
.global lbl_8041C630
lbl_8041C630:
	.4byte 0x801294EC, 0x80129548, 0x80129534, 0x80129534
	.4byte 0x80129548, 0x80129504, 0x80129548, 0x8012951C
.global lbl_8041C650
lbl_8041C650:
	.4byte 0x801297B0, 0x8012964C, 0x801297B0, 0x801297B0
	.4byte 0x801297B0, 0x80129664, 0x801297B0, 0x801297B0
	.4byte 0x8012969C, 0x801297B0, 0x801297B0, 0x801296D4
	.4byte 0x801297B0, 0x801297B0, 0x8012970C, 0x801297B0
	.4byte 0x801297B0, 0x80129744, 0x801297B0, 0x801297B0
	.4byte 0x8012977C, 0x801297B0, 0x801297B0
.global lbl_8041C6AC
lbl_8041C6AC:
	.4byte 0x80129930, 0x80129A60, 0x80129A60, 0x80129944
	.4byte 0x80129A60, 0x80129A60, 0x80129950, 0x80129A60
	.4byte 0x80129A60, 0x80129964, 0x80129A60, 0x80129A60
	.4byte 0x80129978, 0x80129A60, 0x80129A60, 0x8012998C
	.4byte 0x80129A60, 0x80129A60, 0x801299A0, 0x80129A60
	.4byte 0x80129A60, 0x80129A60, 0x801299B4, 0x80129858
	.4byte 0x8012987C, 0x801298A0, 0x801298C4, 0x801298E8
	.4byte 0x8012990C
.global lbl_8041C720
lbl_8041C720:
	.4byte 0x80129FCC, 0x8012A000, 0x8012A024, 0x8012A214
	.4byte 0x8012A214, 0x80129E7C, 0x8012A214, 0x8012A214
	.4byte 0x8012A214, 0x8012A14C, 0x8012A14C, 0x8012A16C
	.4byte 0x8012A214, 0x8012A214, 0x8012A048
.global lbl_8041C75C
lbl_8041C75C:
	.4byte 0x8012A6F8, 0x8012A7D4, 0x8012A7D4, 0x8012A7D4
	.4byte 0x8012A7D4, 0x8012A7D4, 0x8012A7D4, 0x8012A730
	.4byte 0x8012A7D4, 0x8012A7D4, 0x8012A7D4, 0x8012A7D4
	.4byte 0x8012A7D4, 0x8012A7D4, 0x8012A768, 0x8012A7D4
	.4byte 0x8012A7D4, 0x8012A7D4, 0x8012A7D4, 0x8012A7D4
	.4byte 0x8012A7D4, 0x8012A7A0
.global lbl_8041C7B4
lbl_8041C7B4:
	.4byte 0x8012B0B8, 0x8012B07C, 0x8012B08C, 0x8012B09C
	.4byte 0x8012B0AC, 0x8012B0B8, 0x8012A89C, 0x8012A8D4
	.4byte 0x8012A90C, 0x8012A958, 0x8012A9CC, 0x8012AA18
	.4byte 0x8012B0B8, 0x8012AA94, 0x8012AACC, 0x8012AB04
	.4byte 0x8012AB50, 0x8012ABC4, 0x8012AC10, 0x8012B0B8
	.4byte 0x8012AC8C, 0x8012ACC4, 0x8012ACFC, 0x8012AD48
	.4byte 0x8012ADBC, 0x8012AE08, 0x8012B0B8, 0x8012AE84
	.4byte 0x8012AEBC, 0x8012AEF4, 0x8012AF40, 0x8012AFB4
	.4byte 0x8012B000
.global lbl_8041C838
lbl_8041C838:
	.4byte 0x8012B3D4, 0x8012B4EC, 0x8012B4EC, 0x8012B4EC
	.4byte 0x8012B4EC, 0x8012B4EC, 0x8012B4EC, 0x8012B4EC
	.4byte 0x8012B440, 0x8012B414, 0x8012B440, 0x8012B414
	.4byte 0x8012B46C, 0x8012B3FC, 0x8012B498, 0x8012B414
	.4byte 0x8012B440, 0x8012B414, 0x8012B440, 0x8012B498
	.4byte 0x8012B4C4, 0x8012B46C
.global lbl_8041C890
lbl_8041C890:
	.4byte 0x8012B658, 0x8012B7C8, 0x8012B7C8, 0x8012B7C8
	.4byte 0x8012B7C8, 0x8012B7C8, 0x8012B7C8, 0x8012B7C8
	.4byte 0x8012B7C8, 0x8012B7C8, 0x8012B7C8, 0x8012B7C8
	.4byte 0x8012B698, 0x8012B6C4, 0x8012B6F0, 0x8012B71C
	.4byte 0x8012B698, 0x8012B6C4, 0x8012B6F0, 0x8012B71C
	.4byte 0x8012B748, 0x8012B680, 0x8012B774, 0x8012B6C4
	.4byte 0x8012B698, 0x8012B71C, 0x8012B6F0, 0x8012B6C4
	.4byte 0x8012B698, 0x8012B71C, 0x8012B6F0, 0x8012B774
	.4byte 0x8012B7A0, 0x8012B748
.global lbl_8041C918
lbl_8041C918:
	.4byte 0x8012B898, 0x8012B8E4, 0x8012B8AC, 0x8012B8E4
	.4byte 0x8012B8C0, 0x8012B8E4, 0x8012B8D4
.global lbl_8041C934
lbl_8041C934:
	.4byte 0x8012BCE4, 0x8012B9E8, 0x8012BA10, 0x8012BA38
	.4byte 0x8012BA60, 0x8012BA88, 0x8012BAB0, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BAD8, 0x8012BB00, 0x8012BB28
	.4byte 0x8012BB50, 0x8012BB78, 0x8012BBA0, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BBC8, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BBE0, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BBF8, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BC10
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BC28, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BC40, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BC58, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BC70
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BC88, 0x8012BCE4, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCA0, 0x8012BCE4, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCB8, 0x8012BCE4
	.4byte 0x8012BCE4, 0x8012BCE4, 0x8012BCE4, 0x8012BCD0
.global lbl_8041CA64
lbl_8041CA64:
	.4byte 0x8012BE30, 0x8012C25C, 0x8012C25C, 0x8012C25C
	.4byte 0x8012C25C, 0x8012C25C, 0x8012C25C, 0x8012C25C
	.4byte 0x8012C010, 0x8012C25C, 0x8012BE60, 0x8012BED8
	.4byte 0x8012BF68, 0x8012C25C, 0x8012C25C, 0x8012BE74
	.4byte 0x8012BEF0, 0x8012BF84, 0x8012C25C, 0x8012C25C
	.4byte 0x8012BE88, 0x8012BF08, 0x8012BFA0, 0x8012C25C
	.4byte 0x8012C25C, 0x8012BE9C, 0x8012BF20, 0x8012BFBC
	.4byte 0x8012C25C, 0x8012C25C, 0x8012BEB0, 0x8012BF38
	.4byte 0x8012BFD8, 0x8012C25C, 0x8012C25C, 0x8012BEC4
	.4byte 0x8012BF50, 0x8012BFF4, 0x8012C25C, 0x8012C25C
	.4byte 0x8012C040, 0x8012C0B8, 0x8012C148, 0x8012C25C
	.4byte 0x8012C25C, 0x8012C054, 0x8012C0D0, 0x8012C164
	.4byte 0x8012C25C, 0x8012C25C, 0x8012C068, 0x8012C0E8
	.4byte 0x8012C180, 0x8012C25C, 0x8012C25C, 0x8012C07C
	.4byte 0x8012C100, 0x8012C19C, 0x8012C25C, 0x8012C25C
	.4byte 0x8012C090, 0x8012C118, 0x8012C1B8, 0x8012C25C
	.4byte 0x8012C25C, 0x8012C0A4, 0x8012C130, 0x8012C1D4
	.4byte 0x8012C25C, 0x8012C1F0, 0x8012C228
.global lbl_8041CB80
lbl_8041CB80:
	.4byte 0x8012BD4C, 0x8012BDA0, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BD4C, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BD4C, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BDA0, 0x8012BD4C
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BD4C, 0x8012BDA0, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BD4C, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BD4C, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BDA0, 0x8012BD4C
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BD4C, 0x8012BDA0, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BD4C, 0x8012BDA0, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BD4C, 0x8012BDA0
	.4byte 0x8012BDA0, 0x8012BDA0, 0x8012BDA0, 0x8012BD4C
.global lbl_8041CC60
lbl_8041CC60:
	.float -1.7229132774689345e-39, -1.7231374852232265e-39, -1.7232832202635162e-39, -1.7237708721291013e-39
	.float -1.723950238332535e-39, -1.72408476298511e-39, -1.7242809447701155e-39, -1.7243874434534042e-39
	.float -1.724477126555121e-39, -1.7245387836875513e-39, -1.725637401683582e-39, -1.7257102692037268e-39
	.float -1.727212461157483e-39, -1.727212461157483e-39, -1.727212461157483e-39, -1.72618110548774e-39
	.float -1.7263380509157443e-39, -1.726483785956034e-39, -1.726797676812043e-39, -1.726876149526045e-39
	.float -1.7269546222400473e-39, -1.72582797827473e-39, -1.725996134090449e-39, -1.726069001610594e-39
	.float -1.726164289906168e-39, 0.0
.global lbl_8041CCC8
lbl_8041CCC8:
	.4byte 0x801302A8, 0x801302B8, 0x801302C8, 0x801302D8
	.4byte 0x801302E8, 0x801302F8, 0x80130308, 0x80130318
	.4byte 0x80130328, 0x80130338
.global lbl_8041CCF0
lbl_8041CCF0:
	.4byte 0x8012F6C4, 0x8012F734, 0x8012F8A8, 0x80130170
	.4byte 0x80130094, 0x80130210, 0x80130380, 0x80130414
	.4byte 0x801304B4, 0x801306F8, 0x80130780, 0x80130970
	.4byte 0x801309F0, 0x80130A9C, 0x80130C28, 0x80130CB0
	.4byte 0x80130848, 0x80130868, 0x80130884, 0x8013111C
	.4byte 0x8013111C, 0x8013111C, 0x8013111C, 0x8013111C
	.4byte 0x8013111C, 0x8013111C, 0x80130D34, 0x80130E04
	.4byte 0x80130E78, 0x8013111C, 0x8013111C, 0x80131028
	.4byte 0x80130F5C
.global lbl_8041CD74
lbl_8041CD74:
	.4byte 0x801317B0, 0x801317B0, 0x80131420, 0x801317B0
	.4byte 0x801317B0, 0x801314BC, 0x801317B0, 0x8013176C
	.4byte 0x801315CC, 0x80131790, 0x80131648, 0x801317B0
	.4byte 0x801316C4
.global lbl_8041CDA8
lbl_8041CDA8:
	.float 1.0, 2.0, 3.0, 4.0
	.float 5.0, 6.0, 7.0, 8.0
	.float 10.0, 10.0, 11.0, 12.0
	.float 13.0, 14.0, 15.0, 16.0
	.float 100.0, 150.0, 200.0, 250.0
	.float 300.0, 500.0, 550.0, 600.0
	.float 650.0, 700.0, 1000.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
.global lbl_8041CE28
lbl_8041CE28:
	.float 1.4139101505037404e-42, 1.5491541909469671e-21, 0.0, 0.0
.global lbl_8041CE38
lbl_8041CE38:
	.float 3.414698732107091e-11, 3.460174161085128e-11, 3.5056495900631646e-11, 3.5511250190412014e-11
	.float 3.596600448019238e-11, 3.664812897596903e-11, 3.6834535421803594e-11
.global lbl_8041CE54
lbl_8041CE54:
	.4byte 0x801329DC, 0x801329F0, 0x80132A04, 0x80132A18
	.4byte 0x80132A2C, 0x80132A40, 0x80132A54, 0x80132A68
	.4byte 0x80132A7C, 0x80132A90, 0x80132AB8, 0x80132AA4
	.4byte 0x80132ACC
.global lbl_8041CE88
lbl_8041CE88:
	.4byte 0x80132870, 0x801328F0, 0x80132884, 0x801328F0
	.4byte 0x80132890, 0x801328F0, 0x801328A4, 0x801328F0
	.4byte 0x801328B8, 0x801328F0, 0x801328CC, 0x801328F0
	.4byte 0x801328E0, 0x80132EA8, 0x80132ED0, 0x80132F04
	.4byte 0x80132F38, 0x80132F6C, 0x80132FA0, 0x80132FD4
	.4byte 0x80133008, 0x8013303C, 0x80133070, 0x801330D8
	.4byte 0x801330A4, 0x8013310C
.global lbl_8041CEF0
lbl_8041CEF0:
	.4byte 0x801333AC, 0x801333F8, 0x80133444, 0x80133490
	.4byte 0x801334DC, 0x80133540, 0x8013358C, 0x801335BC
	.4byte 0x8013363C, 0x80133688
.global lbl_8041CF18
lbl_8041CF18:
	.4byte 0x801337D8, 0x8013381C, 0x80133858, 0x80133894
	.4byte 0x801338D0, 0x8013390C, 0x80133970, 0x801339AC
	.4byte 0x80133AC0, 0x80133AFC
.global lbl_8041CF40
lbl_8041CF40:
	.4byte 0x801353B0, 0x801353E4, 0x80135418, 0x8013544C
	.4byte 0x80135480, 0x801354B4, 0x801354E8, 0x8013551C
.global lbl_8041CF60
lbl_8041CF60:
	.4byte 0x80133BF4, 0x80133CFC, 0x80133E04, 0x80133F0C
	.4byte 0x80134014, 0x8013411C, 0x80134284, 0x8013438C
	.4byte 0x801344D0, 0x801345D8
.global lbl_8041CF88
lbl_8041CF88:
	.4byte 0x80137190, 0x80136638, 0x80136654, 0x80136670
	.4byte 0x801366F0, 0x80136770, 0x801367F0, 0x8013680C
	.4byte 0x8013688C, 0x80136970, 0x8013698C, 0x80136A0C
	.4byte 0x80136B2C, 0x80136C74, 0x80136DBC, 0x80136F04
	.4byte 0x8013704C, 0x80137190, 0x80137190, 0x80137190
	.4byte 0x80137190, 0x80137190, 0x80137190, 0x80137190
	.4byte 0x80137190, 0x80137190, 0x80137190, 0x80137190
	.4byte 0x80137190, 0x80137190, 0x80137190, 0x80137190
	.4byte 0x80137190, 0x80137190, 0x80137190, 0x80137190
	.4byte 0x80137190, 0x80137190
.global lbl_8041D020
lbl_8041D020:
	.4byte 0x80137434, 0x801371D8, 0x801371E8, 0x801371F8
	.4byte 0x80137208, 0x80137218, 0x80137228, 0x80137238
	.4byte 0x80137248, 0x80137258, 0x80137268, 0x80137434
	.4byte 0x80137434, 0x80137434, 0x80137434, 0x80137434
	.4byte 0x80137434, 0x80137298, 0x801372A8, 0x801372B8
	.4byte 0x801372C8, 0x801372D8, 0x801372E8, 0x801372F8
	.4byte 0x80137308, 0x80137318, 0x80137328, 0x80137338
	.4byte 0x80137348, 0x80137358, 0x80137368, 0x80137378
	.4byte 0x80137388, 0x80137398, 0x801373A8, 0x801373B8
	.4byte 0x801373C8, 0x801373D8, 0x80137434, 0x80137434
	.4byte 0x80137434, 0x80137434, 0x80137434, 0x80137434
	.4byte 0x80137434, 0x80137434, 0x80137434, 0x80137434
	.4byte 0x80137434, 0x80137434, 0x801373E8, 0x801373F8
	.4byte 0x80137408, 0x80137418, 0x80137428
.global lbl_8041D0FC
lbl_8041D0FC:
	.float 1.92501638926526e-37, 1.9544041964513256e-37, 1.98364671701261e-37
.global lbl_8041D108
lbl_8041D108:
	.float 1.9984859072304243e-37, 2.02787371441649e-37, 2.057115113939003e-37, 0.0
.global lbl_8041D118
lbl_8041D118:
	.float 2.350988701644575e-38, 0.0, 9.4039548065783e-38, 0.0
	.float 3.76158192263132e-37, 0.0, 1.504632769052528e-36, 0.0
	.float 6.018531076210112e-36, 0.0, 2.407412430484045e-35, 0.0
	.float 9.62964972193618e-35, 0.0, 3.851859888774472e-34, 0.0
	.float 1.5407439555097887e-33, 0.0
.global lbl_8041D160
lbl_8041D160:
	.float 2.58861624560364e-26, 6.597745266789801e-11, 7.147805958229725e-11, 4.206410464397661e-25
	.float 6.689054865560706e-11, 7.238756816185798e-11, 6.781957109042632e-24, 6.780358219327098e-11
	.float 7.329707674141872e-11, 1.093385196007841e-22, 6.871662266982881e-11, 7.420658532097946e-11
	.float 1.8155911665135714e-21, 6.962968396306835e-11, 7.511609390054019e-11
.global lbl_8041D19C
lbl_8041D19C:
	.float 8.466601725265477e-11, 8.55755258322155e-11, 8.648503441177624e-11
.global lbl_8041D1A8
lbl_8041D1A8:
	.float 0.0, 0.0, 5.605193857299268e-45, 4.203895392974451e-45
	.float 3.363116314379561e-44, 3.2229864679470793e-44, 8.407790785948902e-45, 7.006492321624085e-45
	.float 2.802596928649634e-45, 1.401298464324817e-45, 1.961817850054744e-44, 1.8216880036222622e-44
	.float 2.802596928649634e-45, 1.401298464324817e-45, 5.605193857299268e-45, 4.203895392974451e-45
	.float 5.605193857299268e-45, 4.203895392974451e-45, 8.407790785948902e-45, 7.006492321624085e-45
	.float 5.605193857299268e-45, 4.203895392974451e-45, 5.605193857299268e-45, 4.203895392974451e-45
	.float 0.0, 0.0
.global lbl_8041D210
lbl_8041D210:
	.ascii "%02d.bin"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041D21C
lbl_8041D21C:
	.4byte 0x8013B90C, 0x8013B898, 0x8013B90C, 0x8013B8A4
	.4byte 0x8013B90C, 0x8013B8B0, 0x8013B90C, 0x8013B8BC
	.4byte 0x8013B90C, 0x8013B8C8, 0x8013B90C, 0x8013B8D4
	.4byte 0x8013B90C, 0x8013B8E0, 0x8013B90C, 0x8013B8EC
	.4byte 0x8013B90C, 0x8013B8F8, 0x8013B90C, 0x8013B904
	.4byte 0x8013B90C, 0x8013B874, 0x8013B874, 0x8013B874
	.4byte 0x8013B874, 0x8013B874, 0x8013B874, 0x8013B874
	.4byte 0x8013B874, 0x8013B874, 0x8013B874
.global lbl_8041D298
lbl_8041D298:
	.4byte 0x8013BC4C, 0x8013BCA0, 0x8013BC68, 0x8013BCA0
	.4byte 0x8013BCA0, 0x8013BCA0, 0x8013BC74, 0x8013BCA0
	.4byte 0x8013BCA0, 0x8013BC80, 0x8013BCA0, 0x8013BCA0
	.4byte 0x8013BC8C, 0x8013BCA0, 0x8013BCA0, 0x8013BC98
.global lbl_8041D2D8
lbl_8041D2D8:
	.4byte 0x8013BB8C, 0x8013BBC8, 0x8013BBA4, 0x8013BBC8
	.4byte 0x8013BBC8, 0x8013BBC8, 0x8013BBAC, 0x8013BBC8
	.4byte 0x8013BBC8, 0x8013BBB4, 0x8013BBC8, 0x8013BBC8
	.4byte 0x8013BBBC, 0x8013BBC8, 0x8013BBC8, 0x8013BBC4
.global lbl_8041D318
lbl_8041D318:
	.4byte 0x8013C03C, 0x8013C394, 0x8013C0C8, 0x8013C09C
	.4byte 0x8013C104, 0x8013C394, 0x8013C1A0, 0x8013C320
	.4byte 0x8013C394, 0x8013C214, 0x8013C150
.global lbl_8041D344
lbl_8041D344:
	.4byte 0x8013C928, 0x8013CABC, 0x8013C948, 0x8013CABC
	.4byte 0x8013C970, 0x8013CABC, 0x8013CABC, 0x8013C968
	.4byte 0x8013C9B8, 0x8013C990, 0x8013CA48
.global lbl_8041D370
lbl_8041D370:
	.float -1.8199840246896432e-39, -1.8201353649237903e-39, -1.8202923103517947e-39, -1.8207743570235224e-39
	.float -1.821346086796967e-39, -1.821441375092541e-39, -1.821514242612686e-39, -1.821592715326688e-39
	.float -1.821665582846833e-39, -1.8217888971116936e-39, -1.8221812606817045e-39, -1.8228146475875793e-39
	.float -1.8248717537332082e-39, -1.825039909548927e-39, -1.824905384896352e-39, -1.8251576186199304e-39
	.float -1.8252360913339326e-39, -1.8252529069155045e-39, -1.8255275614145122e-39, -1.826872807940264e-39
	.float -1.827097015694556e-39, -1.8272147247655593e-39, -1.8273324338365626e-39, -1.827472563682995e-39
	.float -1.8275230104277107e-39, -1.8277247974065735e-39, -1.8278369012837195e-39, -1.8279658207424374e-39
	.float -1.8282460804353023e-39, -1.828296527180018e-39, -1.8283301583431618e-39, -1.8283806050878775e-39
	.float -1.8303312125502177e-39, -1.828464682995737e-39, -1.8284871037711662e-39, -1.8286216284237414e-39
	.float -1.8287169167193155e-39, -1.828840230984176e-39, -1.8288906777288918e-39, -1.8289971764121804e-39
	.float -1.8290868595138972e-39, -1.8293783295944768e-39, -1.8294287763391925e-39, -1.8297706931644877e-39
	.float -1.8298771918477764e-39, -1.8299780853372078e-39, -1.8300509528573527e-39, -1.8301238203774976e-39
	.float -1.8303312125502177e-39, 0.0
.global lbl_8041D438
lbl_8041D438:
	.incbin "baserom.dol", 0x419538, 0x18
.global lbl_8041D450
lbl_8041D450:
	.incbin "baserom.dol", 0x419550, 0x18
.global lbl_8041D468
lbl_8041D468:
	.incbin "baserom.dol", 0x419568, 0x68
.global lbl_8041D4D0
lbl_8041D4D0:
	.4byte 0x8013FF5C, 0x8013FD2C, 0x8013FDB0, 0x8013FF5C
	.4byte 0x8013FF5C, 0x8013FDC0, 0x8013FDF0, 0x8013FE20
	.4byte 0x8013FE48, 0x8013FE88, 0x8013FEB8, 0x8013FEE8
	.4byte 0x8013FF18, 0x8013FF5C
.global lbl_8041D508
lbl_8041D508:
	.4byte 0x80149208, 0x80147A2C, 0x80147B24, 0x80147B8C
	.4byte 0x80147BB8, 0x80147C24, 0x80147EB0, 0x80147F90
	.4byte 0x80148420, 0x80149208, 0x8014847C, 0x801484A0
	.4byte 0x801484D4, 0x80149208, 0x80149208, 0x80148564
	.4byte 0x801485A8, 0x80148654, 0x80148AB0, 0x80149208
	.4byte 0x80148B34, 0x80148CC0, 0x80149144, 0x80149208
	.4byte 0x80149208, 0x801491C8
.global lbl_8041D570
lbl_8041D570:
	.4byte 0x801478EC, 0x801400A4, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x801478EC, 0x801478EC, 0x801400DC
	.4byte 0x80140100, 0x80140130, 0x80140178, 0x801401FC
	.4byte 0x80140370, 0x80140470, 0x801404C4, 0x8014048C
	.4byte 0x80140628, 0x8014067C, 0x801406B0, 0x801406F0
	.4byte 0x80140718, 0x80140758, 0x801407AC, 0x80140808
	.4byte 0x8014084C, 0x80140898, 0x8014091C, 0x80140B10
	.4byte 0x80140BA0, 0x80140C48, 0x80140CA0, 0x80140D24
	.4byte 0x80140EE8, 0x80140F58, 0x80140FD0, 0x80141050
	.4byte 0x801410DC, 0x80141260, 0x801412E0, 0x80141358
	.4byte 0x80141374, 0x801413EC, 0x80141580, 0x801415A4
	.4byte 0x801415B0, 0x801415F4, 0x8014165C, 0x8014171C
	.4byte 0x8014174C, 0x801478EC, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x801478EC, 0x80141A30, 0x80141A64
	.4byte 0x80141AA0, 0x80141AE0, 0x80141B04, 0x80141B20
	.4byte 0x80141B5C, 0x801478EC, 0x801478EC, 0x801478EC
	.4byte 0x80141B84, 0x801478EC, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x80141BB8, 0x80141C08, 0x80141C70
	.4byte 0x80141DB0, 0x80141D94, 0x80141DE8, 0x80141E38
	.4byte 0x80141E6C, 0x80141EA8, 0x80141EE8, 0x80141F18
	.4byte 0x80141F6C, 0x8014202C, 0x80142228, 0x8014283C
	.4byte 0x801428CC, 0x801429D4, 0x80142A40, 0x80142B2C
	.4byte 0x80142B74, 0x80142BDC, 0x80142CF4, 0x80142D28
	.4byte 0x80142D90, 0x80142E30, 0x80142ED4, 0x80143464
	.4byte 0x80143610, 0x80143658, 0x801436CC, 0x80143790
	.4byte 0x80143894, 0x801438E0, 0x801438EC, 0x80143938
	.4byte 0x801439A0, 0x80143A68, 0x80143A9C, 0x80143AF4
	.4byte 0x80143BE0, 0x80143C74, 0x80143DB4, 0x801478EC
	.4byte 0x80143DFC, 0x80143E7C, 0x80143F00, 0x80144084
	.4byte 0x80144104, 0x80144190, 0x801441AC, 0x80144224
	.4byte 0x801443B8, 0x801443DC, 0x80144458, 0x801444D8
	.4byte 0x8014455C, 0x801446E0, 0x80144760, 0x801447DC
	.4byte 0x801447F8, 0x80144870, 0x80144A04, 0x80144A28
	.4byte 0x80144AA4, 0x80144AD8, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x80144B14, 0x80144B20, 0x80144B2C
	.4byte 0x80144B38, 0x80144B7C, 0x80144BB8, 0x80144BF8
	.4byte 0x80144C1C, 0x801478EC, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x801478EC, 0x80144C38, 0x80144C6C
	.4byte 0x80144CA4, 0x80144CCC, 0x80144D28, 0x80144D58
	.4byte 0x80144EDC, 0x80144FDC, 0x80145524, 0x80145650
	.4byte 0x801478EC, 0x80145668, 0x80145724, 0x8014592C
	.4byte 0x801478EC, 0x801478EC, 0x80145A14, 0x80145A54
	.4byte 0x80145AF4, 0x80145CFC, 0x80145EBC, 0x80145ED8
	.4byte 0x80145EF4, 0x80145FB0, 0x80145FDC, 0x80146050
	.4byte 0x8014607C, 0x801460A0, 0x801460E0, 0x80146120
	.4byte 0x80146170, 0x801461A0, 0x801461E0, 0x80146210
	.4byte 0x80146240, 0x80146318, 0x8014648C, 0x80146C78
	.4byte 0x80146D54, 0x80146DE4, 0x801478EC, 0x801478EC
	.4byte 0x801478EC, 0x80146E4C, 0x80146E8C, 0x80146F2C
	.4byte 0x80147180, 0x80147200, 0x80147258, 0x80147290
	.4byte 0x801472F8, 0x801473D0, 0x80147408, 0x80147474
	.4byte 0x801474A8, 0x801474D4, 0x80147518, 0x80147554
	.4byte 0x80147594, 0x801475C4, 0x801476C8, 0x8014771C
	.4byte 0x80147748, 0x80147784, 0x801477E8, 0x80147810
	.4byte 0x8014787C, 0x8014788C
.global lbl_8041D8D8
lbl_8041D8D8:
	.4byte 0x80149470, 0x801493EC, 0x80149470, 0x80149470
	.4byte 0x80149470, 0x80149470, 0x80149470, 0x80149470
	.4byte 0x80149470, 0x80149444, 0x80149444, 0x80149470
	.4byte 0x80149470, 0x80149444, 0x80149444, 0x80149470
	.4byte 0x8014945C
.global lbl_8041D91C
lbl_8041D91C:
	.4byte 0x801494D8, 0x801494FC, 0x80149520, 0x80149590
	.4byte 0x80149590, 0x8014956C, 0x80149544, 0x80149590
	.4byte 0x80149590, 0x80149580, 0x80149558
.global lbl_8041D948
lbl_8041D948:
	.4byte 0x80149D10, 0x80149D68, 0x80149D68, 0x80149D68
	.4byte 0x80149D68, 0x80149D24, 0x80149C68, 0x80149D68
	.4byte 0x80149D68, 0x80149D68, 0x80149D30, 0x80149CA0
	.4byte 0x80149D68, 0x80149D68, 0x80149D68, 0x80149D44
	.4byte 0x80149CD8, 0x80149D68, 0x80149D68, 0x80149D68
	.4byte 0x80149D58
.global lbl_8041D99C
lbl_8041D99C:
	.4byte 0x8014A044, 0x80149EE0, 0x80149EF0, 0x80149F00
	.4byte 0x80149F10, 0x8014A044, 0x80149F7C, 0x80149F20
	.4byte 0x80149FEC, 0x8014A044, 0x8014A044, 0x80149F94
	.4byte 0x80149F34, 0x8014A000, 0x8014A044, 0x8014A044
	.4byte 0x80149FA4, 0x80149F40, 0x8014A00C, 0x8014A044
	.4byte 0x8014A044, 0x80149FBC, 0x80149F54, 0x8014A020
	.4byte 0x8014A044, 0x8014A044, 0x80149FD4, 0x80149F68
	.4byte 0x8014A034
.global lbl_8041DA10
lbl_8041DA10:
	.4byte 0x8014A4F8, 0x8014A374, 0x8014A4F8, 0x8014A3A4
	.4byte 0x8014A4F8, 0x8014A4F8, 0x8014A3E8, 0x8014A4F8
	.4byte 0x8014A4F8, 0x8014A3B4
.global lbl_8041DA38
lbl_8041DA38:
	.4byte 0x8014A560, 0x8014A704, 0x8014A704, 0x8014A664
	.4byte 0x8014A704, 0x8014A594, 0x8014A704, 0x8014A704
	.4byte 0x8014A6C4, 0x8014A704, 0x8014A6C4, 0x8014A6C4
.global lbl_8041DA68
lbl_8041DA68:
	.4byte 0x8014AA8C, 0x8014A858, 0x8014A8A8, 0x8014AA8C
	.4byte 0x8014A8F8, 0x8014A9C4, 0x8014AA8C, 0x8014AA28
	.4byte 0x8014AA8C, 0x8014AA8C, 0x8014AA8C, 0x8014AA8C
	.4byte 0x8014A7D0, 0x8014AA8C, 0x8014AA8C, 0x8014A814
.global lbl_8041DAA8
lbl_8041DAA8:
	.4byte 0x8014AD7C, 0x8014ADB4, 0x8014ADF0, 0x8014ACD4
	.4byte 0x8014ACEC, 0x8014ADF0, 0x8014AD04, 0x8014ADF0
	.4byte 0x8014AD1C, 0x8014ADF0, 0x8014AD34, 0x8014ADF0
	.4byte 0x8014AD4C, 0x8014ADF0, 0x8014AD64
.global lbl_8041DAE4
lbl_8041DAE4:
	.4byte 0x8014B404, 0x8014AEF4, 0x8014AF04, 0x8014AF14
	.4byte 0x8014B404, 0x8014B404, 0x8014B404, 0x8014B404
	.4byte 0x8014B404, 0x8014AEBC, 0x8014B404, 0x8014AF24
	.4byte 0x8014B404, 0x8014AF60, 0x8014B404, 0x8014AFC8
	.4byte 0x8014B404, 0x8014B0E8, 0x8014B404, 0x8014B178
	.4byte 0x8014B404, 0x8014B1E4
.global lbl_8041DB3C
lbl_8041DB3C:
	.4byte 0x8014B5E4, 0x8014B5E4, 0x8014B480, 0x8014B5E4
	.4byte 0x8014B468, 0x8014B5E4, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B498, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B4D0, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B508, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B540, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B578, 0x8014B5E4, 0x8014B5E4
	.4byte 0x8014B5E4, 0x8014B5B0
.global lbl_8041DBB4
lbl_8041DBB4:
	.4byte 0x8014B9BC, 0x8014B9BC, 0x8014B690, 0x8014B9BC
	.4byte 0x8014B9BC, 0x8014B9BC, 0x8014B834, 0x8014B8B8
	.4byte 0x8014B93C, 0x8014B9BC, 0x8014B848, 0x8014B8CC
	.4byte 0x8014B950, 0x8014B9BC, 0x8014B854, 0x8014B8D8
	.4byte 0x8014B95C, 0x8014B9BC, 0x8014B868, 0x8014B8EC
	.4byte 0x8014B970, 0x8014B9BC, 0x8014B87C, 0x8014B900
	.4byte 0x8014B984, 0x8014B9BC, 0x8014B890, 0x8014B914
	.4byte 0x8014B998, 0x8014B9BC, 0x8014B8A4, 0x8014B928
	.4byte 0x8014B9AC, 0x8014B75C, 0x8014B780, 0x8014B7A4
	.4byte 0x8014B7C8, 0x8014B7EC, 0x8014B810
.global lbl_8041DC50
lbl_8041DC50:
	.float -1.904880290852298e-39, -1.904936342790871e-39, -1.9049699739540147e-39, -1.9051549453513056e-39
	.float -1.9050036051171585e-39, -1.9050372362803023e-39, -1.9051549453513056e-39, -1.9051549453513056e-39
	.float -1.905126919382019e-39, 0.0
.global lbl_8041DC78
lbl_8041DC78:
	.float 4.997304653420187e-15, 5.025060229035816e-15, 5.052815804651445e-15, 5.080571380267074e-15
	.float 5.108326955882703e-15, 5.1360825314983316e-15
.global lbl_8041DC90
lbl_8041DC90:
	.4byte 0x8014CD14, 0x8014CD14, 0x8014C6EC, 0x8014C714
	.4byte 0x8014C73C, 0x8014C764, 0x8014C78C, 0x8014C7B4
	.4byte 0x8014CD14, 0x8014CD14, 0x8014CD14, 0x8014CD14
	.4byte 0x8014CAC0, 0x8014CD14, 0x8014CC88, 0x8014CD14
	.4byte 0x8014CD14, 0x8014CD14, 0x8014CB0C, 0x8014CD14
	.4byte 0x8014CCA0, 0x8014CD14, 0x8014CD14, 0x8014CD14
	.4byte 0x8014CB58, 0x8014CD14, 0x8014CCB8, 0x8014CD14
	.4byte 0x8014CD14, 0x8014CD14, 0x8014CBA4, 0x8014CD14
	.4byte 0x8014CCD0, 0x8014CD14, 0x8014CD14, 0x8014CD14
	.4byte 0x8014CBF0, 0x8014CD14, 0x8014CCE8, 0x8014CD14
	.4byte 0x8014CD14, 0x8014CD14, 0x8014CC3C, 0x8014CD14
	.4byte 0x8014CD00, 0x8014C7DC, 0x8014C80C, 0x8014C83C
	.4byte 0x8014C86C, 0x8014C89C, 0x8014C8CC, 0x8014CD14
	.4byte 0x8014CD14, 0x8014CD14, 0x8014CD14, 0x8014CD14
	.4byte 0x8014CD14, 0x8014C8FC, 0x8014C968, 0x8014CA0C
	.4byte 0x8014CA34
.global lbl_8041DD84
lbl_8041DD84:
	.4byte 0x8014CEC4, 0x8014D130, 0x8014CEF4, 0x8014CF84
	.4byte 0x8014D130, 0x8014D02C, 0x8014D130, 0x8014D130
	.4byte 0x8014CF0C, 0x8014CFA0, 0x8014D130, 0x8014D048
	.4byte 0x8014D130, 0x8014D130, 0x8014CF24, 0x8014CFBC
	.4byte 0x8014D130, 0x8014D064, 0x8014D130, 0x8014D130
	.4byte 0x8014CF3C, 0x8014CFD8, 0x8014D130, 0x8014D080
	.4byte 0x8014D130, 0x8014D130, 0x8014CF54, 0x8014CFF4
	.4byte 0x8014D130, 0x8014D09C, 0x8014D130, 0x8014D130
	.4byte 0x8014CF6C, 0x8014D010, 0x8014D130, 0x8014D0B8
	.4byte 0x8014D130, 0x8014D130, 0x8014D130, 0x8014D130
	.4byte 0x8014D130, 0x8014D130, 0x8014D130, 0x8014D0D4
	.4byte 0x8014D0E4, 0x8014D0F4, 0x8014D104, 0x8014D114
	.4byte 0x8014D124, 0x8014CE8C
.global lbl_8041DE4C
lbl_8041DE4C:
	.4byte 0x8014CD7C, 0x8014CDD0, 0x8014CDD0, 0x8014CDD0
	.4byte 0x8014CDD0, 0x8014CDD0, 0x8014CD7C, 0x8014CDD0
	.4byte 0x8014CDD0, 0x8014CDD0, 0x8014CDD0, 0x8014CDD0
	.4byte 0x8014CD7C, 0x8014CDD0, 0x8014CDD0, 0x8014CDD0
	.4byte 0x8014CDD0, 0x8014CDD0, 0x8014CD7C, 0x8014CDD0
	.4byte 0x8014CDD0, 0x8014CDD0, 0x8014CDD0, 0x8014CDD0
	.4byte 0x8014CD7C, 0x8014CDD0, 0x8014CDD0, 0x8014CDD0
	.4byte 0x8014CDD0, 0x8014CDD0, 0x8014CD7C
.global lbl_8041DEC8
lbl_8041DEC8:
	.4byte 0x8014D358, 0x8014D358, 0x8014D194, 0x8014D1BC
	.4byte 0x8014D1E4, 0x8014D20C, 0x8014D234, 0x8014D25C
	.4byte 0x8014D358, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D2CC, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D2E4, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D2FC, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D314, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D32C, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D344, 0x8014D284, 0x8014D284, 0x8014D284
	.4byte 0x8014D284, 0x8014D284, 0x8014D284, 0x8014D358
	.4byte 0x8014D358, 0x8014D358, 0x8014D358, 0x8014D358
	.4byte 0x8014D358, 0x8014D29C, 0x8014D358, 0x8014D358
	.4byte 0x8014D358, 0x8014D2B4
.global lbl_8041DFC0
lbl_8041DFC0:
	.4byte 0x8014D4AC, 0x8014D8CC, 0x8014D4DC, 0x8014D554
	.4byte 0x8014D8CC, 0x8014D5E4, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D4F0, 0x8014D56C, 0x8014D8CC, 0x8014D600
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D504, 0x8014D584
	.4byte 0x8014D8CC, 0x8014D61C, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D518, 0x8014D59C, 0x8014D8CC, 0x8014D638
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D52C, 0x8014D5B4
	.4byte 0x8014D8CC, 0x8014D654, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D540, 0x8014D5CC, 0x8014D8CC, 0x8014D670
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D8CC, 0x8014D8CC, 0x8014D8CC, 0x8014D8CC
	.4byte 0x8014D8CC, 0x8014D75C
.global lbl_8041E098
lbl_8041E098:
	.4byte 0x8014D3C8, 0x8014D41C, 0x8014D41C, 0x8014D41C
	.4byte 0x8014D41C, 0x8014D41C, 0x8014D3C8, 0x8014D41C
	.4byte 0x8014D41C, 0x8014D41C, 0x8014D41C, 0x8014D41C
	.4byte 0x8014D3C8, 0x8014D41C, 0x8014D41C, 0x8014D41C
	.4byte 0x8014D41C, 0x8014D41C, 0x8014D3C8, 0x8014D41C
	.4byte 0x8014D41C, 0x8014D41C, 0x8014D41C, 0x8014D41C
	.4byte 0x8014D3C8, 0x8014D41C, 0x8014D41C, 0x8014D41C
	.4byte 0x8014D41C, 0x8014D41C, 0x8014D3C8
.global lbl_8041E114
lbl_8041E114:
	.4byte 0x8014DBB0, 0x8014DC3C, 0x8014DAD4, 0x8014DC3C
	.4byte 0x8014DC3C, 0x8014DB48, 0x8014DC3C, 0x8014DB7C
.global lbl_8041E134
lbl_8041E134:
	.4byte 0x8014E038, 0x8014E024, 0x8014E038, 0x8014E024
	.4byte 0x8014E038, 0x8014E038, 0x8014E024, 0x8014E038
	.4byte 0x8014E024
.global lbl_8041E158
lbl_8041E158:
	.4byte 0x8014E038, 0x8014E038, 0x8014DFA4, 0x8014E038
	.4byte 0x8014DFBC, 0x8014DFBC, 0x8014E038, 0x8014E038
	.4byte 0x8014E038, 0x8014DFBC, 0x8014DFEC, 0x8014DFD4
.global lbl_8041E188
lbl_8041E188:
	.4byte 0x8014E038, 0x8014DE9C, 0x8014DE38, 0x8014DE50
	.4byte 0x8014DE6C, 0x8014DE84, 0x8014DEB4, 0x8014E038
	.4byte 0x8014DF00, 0x8014DECC, 0x8014DF6C, 0x8014DF28
.global lbl_8041E1B8
lbl_8041E1B8:
	.4byte 0x8014E038, 0x8014DDB8, 0x8014DDA0, 0x8014DDA0
	.4byte 0x8014DDA0, 0x8014DDA0, 0x8014DDD0, 0x8014E038
	.4byte 0x8014DDD0, 0x8014DDD0, 0x8014DE00, 0x8014DDE8
.global lbl_8041E1E8
lbl_8041E1E8:
	.4byte 0x8014F1A0, 0x8014F1A8, 0x8014F1B0, 0x8014F1B8
	.4byte 0x8014F1C0, 0x8014F1C8, 0x8014F1D0, 0x8014F1E0
	.4byte 0x8014F1D8, 0x8014F1E8
.global lbl_8041E210
lbl_8041E210:
	.float 1.401298464324817e-45, 2.802596928649634e-45, 5.605193857299268e-45, 1.1210387714598537e-44
	.float 2.2420775429197073e-44, 4.484155085839415e-44
.global lbl_8041E228
lbl_8041E228:
	.float 9.25571648671185e-41, 1.5636372547002408e-36, 9.625513546253311e-38, 7.216687091272808e-43
	.float 1.5634076659598458e-36, 2.406378386563328e-38, 9.255576356865417e-41, 1.5634076659598458e-36
	.float 9.625226560327817e-38, 9.25571648671185e-41, 1.5516529018178264e-36, 1.516526362636005e-36
	.float 6.113305308245159e-36, 3.908633959269812e-37, 1.5047255013797032e-36, 2.406305519043183e-38
	.float 3.908519613315123e-37, 1.5517911931606737e-36, 2.388009886033265e-38, 4.595404170922162e-40
	.float 1.504724963281093e-36
.global lbl_8041E27C
lbl_8041E27C:
	.4byte 0x80152FEC, 0x80151938, 0x80151DA4, 0x80151DEC
	.4byte 0x801520CC, 0x801520E4, 0x80152388, 0x80152918
	.4byte 0x80152FEC, 0x80152FEC, 0x80152930, 0x8015299C
	.4byte 0x80152C54, 0x80152D40, 0x80152DAC, 0x80152FBC
	.4byte 0x80152FEC, 0x80152FEC, 0x80152FEC, 0x80152FEC
	.4byte 0x80152FEC
.global lbl_8041E2D0
lbl_8041E2D0:
	.float 4.997304653420187e-15, 5.025060229035816e-15, 5.052815804651445e-15, 5.080571380267074e-15
	.float 5.108326955882703e-15, 5.1360825314983316e-15
.global lbl_8041E2E8
lbl_8041E2E8:
	.4byte 0x80153E60, 0x80153E60, 0x801536A0, 0x801536C8
	.4byte 0x801536F0, 0x80153718, 0x80153740, 0x80153768
	.4byte 0x80153E60, 0x80153E60, 0x80153E60, 0x80153E60
	.4byte 0x801539A0, 0x80153E60, 0x80153DD4, 0x80153E60
	.4byte 0x80153E60, 0x80153E60, 0x80153A24, 0x80153E60
	.4byte 0x80153DEC, 0x80153E60, 0x80153E60, 0x80153E60
	.4byte 0x80153AA8, 0x80153E60, 0x80153E04, 0x80153E60
	.4byte 0x80153E60, 0x80153E60, 0x80153B2C, 0x80153E60
	.4byte 0x80153E1C, 0x80153E60, 0x80153E60, 0x80153E60
	.4byte 0x80153BB0, 0x80153E60, 0x80153E34, 0x80153E60
	.4byte 0x80153E60, 0x80153E60, 0x80153C68, 0x80153E60
	.4byte 0x80153E4C, 0x80153790, 0x801537E8, 0x80153840
	.4byte 0x80153898, 0x801538F0, 0x80153948, 0x80153E60
	.4byte 0x80153E60, 0x80153E60, 0x80153E60, 0x80153E60
	.4byte 0x80153E60, 0x80153E60, 0x80153E60, 0x80153D20
	.4byte 0x80153D48
.global lbl_8041E3DC
lbl_8041E3DC:
	.4byte 0x80153510, 0x80153528, 0x80153528, 0x80153528
	.4byte 0x80153528, 0x80153528, 0x80153510, 0x80153528
	.4byte 0x80153528, 0x80153528, 0x80153528, 0x80153528
	.4byte 0x80153510, 0x80153528, 0x80153528, 0x80153528
	.4byte 0x80153528, 0x80153528, 0x80153510, 0x80153528
	.4byte 0x80153528, 0x80153528, 0x80153528, 0x80153528
	.4byte 0x80153510, 0x80153528, 0x80153528, 0x80153528
	.4byte 0x80153528, 0x80153528, 0x80153510
.global lbl_8041E458
lbl_8041E458:
	.4byte 0x80154064, 0x80154270, 0x80154094, 0x80154124
	.4byte 0x80154270, 0x801541CC, 0x80154270, 0x80154270
	.4byte 0x801540AC, 0x80154140, 0x80154270, 0x801541E8
	.4byte 0x80154270, 0x80154270, 0x801540C4, 0x8015415C
	.4byte 0x80154270, 0x80154204, 0x80154270, 0x80154270
	.4byte 0x801540DC, 0x80154178, 0x80154270, 0x80154220
	.4byte 0x80154270, 0x80154270, 0x801540F4, 0x80154194
	.4byte 0x80154270, 0x8015423C, 0x80154270, 0x80154270
	.4byte 0x8015410C, 0x801541B0, 0x80154270, 0x80154258
	.4byte 0x80154270, 0x80154270, 0x80154270, 0x80154270
	.4byte 0x80154270, 0x80154270, 0x80154270, 0x80154004
	.4byte 0x80154014, 0x80154024, 0x80154034, 0x80154044
	.4byte 0x80154054
.global lbl_8041E51C
lbl_8041E51C:
	.4byte 0x80153EC8, 0x80153F1C, 0x80153F1C, 0x80153F1C
	.4byte 0x80153F1C, 0x80153F1C, 0x80153EC8, 0x80153F1C
	.4byte 0x80153F1C, 0x80153F1C, 0x80153F1C, 0x80153F1C
	.4byte 0x80153EC8, 0x80153F1C, 0x80153F1C, 0x80153F1C
	.4byte 0x80153F1C, 0x80153F1C, 0x80153EC8, 0x80153F1C
	.4byte 0x80153F1C, 0x80153F1C, 0x80153F1C, 0x80153F1C
	.4byte 0x80153EC8, 0x80153F1C, 0x80153F1C, 0x80153F1C
	.4byte 0x80153F1C, 0x80153F1C, 0x80153EC8
.global lbl_8041E598
lbl_8041E598:
	.4byte 0x801548C0, 0x801548C0, 0x80154488, 0x801544B0
	.4byte 0x801544D8, 0x80154500, 0x80154528, 0x80154550
	.4byte 0x801548C0, 0x801548C0, 0x801548C0, 0x801548C0
	.4byte 0x80154590, 0x801548C0, 0x80154834, 0x801548C0
	.4byte 0x801548C0, 0x801548C0, 0x801545CC, 0x801548C0
	.4byte 0x8015484C, 0x801548C0, 0x801548C0, 0x801548C0
	.4byte 0x80154608, 0x801548C0, 0x80154864, 0x801548C0
	.4byte 0x801548C0, 0x801548C0, 0x80154644, 0x801548C0
	.4byte 0x8015487C, 0x801548C0, 0x801548C0, 0x801548C0
	.4byte 0x80154680, 0x801548C0, 0x80154894, 0x801548C0
	.4byte 0x801548C0, 0x801548C0, 0x801546F0, 0x801548C0
	.4byte 0x801548AC, 0x80154578, 0x80154578, 0x80154578
	.4byte 0x80154578, 0x80154578, 0x80154578, 0x801548C0
	.4byte 0x801548C0, 0x801548C0, 0x801548C0, 0x801548C0
	.4byte 0x801548C0, 0x801548C0, 0x801548C0, 0x80154760
	.4byte 0x80154798
.global lbl_8041E68C
lbl_8041E68C:
	.4byte 0x801542F8, 0x80154310, 0x80154310, 0x80154310
	.4byte 0x80154310, 0x80154310, 0x801542F8, 0x80154310
	.4byte 0x80154310, 0x80154310, 0x80154310, 0x80154310
	.4byte 0x801542F8, 0x80154310, 0x80154310, 0x80154310
	.4byte 0x80154310, 0x80154310, 0x801542F8, 0x80154310
	.4byte 0x80154310, 0x80154310, 0x80154310, 0x80154310
	.4byte 0x801542F8, 0x80154310, 0x80154310, 0x80154310
	.4byte 0x80154310, 0x80154310, 0x801542F8
.global lbl_8041E708
lbl_8041E708:
	.4byte 0x80154A0C, 0x80154CC0, 0x80154A3C, 0x80154AB4
	.4byte 0x80154CC0, 0x80154C1C, 0x80154CC0, 0x80154CC0
	.4byte 0x80154A50, 0x80154AF0, 0x80154CC0, 0x80154C38
	.4byte 0x80154CC0, 0x80154CC0, 0x80154A64, 0x80154B2C
	.4byte 0x80154CC0, 0x80154C54, 0x80154CC0, 0x80154CC0
	.4byte 0x80154A78, 0x80154B68, 0x80154CC0, 0x80154C70
	.4byte 0x80154CC0, 0x80154CC0, 0x80154A8C, 0x80154BA4
	.4byte 0x80154CC0, 0x80154C8C, 0x80154CC0, 0x80154CC0
	.4byte 0x80154AA0, 0x80154BE0, 0x80154CC0, 0x80154CA8
.global lbl_8041E798
lbl_8041E798:
	.float -1.9547889369576906e-39, -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39
	.float -1.954906646028694e-39, -1.954906646028694e-39, -1.9547889369576906e-39, -1.954906646028694e-39
	.float -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39
	.float -1.9547889369576906e-39, -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39
	.float -1.954906646028694e-39, -1.954906646028694e-39, -1.9547889369576906e-39, -1.954906646028694e-39
	.float -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39
	.float -1.9547889369576906e-39, -1.954906646028694e-39, -1.954906646028694e-39, -1.954906646028694e-39
	.float -1.954906646028694e-39, -1.954906646028694e-39, -1.9547889369576906e-39, 0.0
.global lbl_8041E818
lbl_8041E818:
	.float 10.0, 55.0, 10.0, 35.0
	.float 15.0, 0.0
.global lbl_8041E830
lbl_8041E830:
	.float 2.483378752905935e-35, 1.8449358834200302e-22, 1.8532076895455605e-22, 1.8862949140476816e-22
	.float 1.8780231079221513e-22, 1.9028385262987422e-22, 1.8118486589179091e-22, 1.8614794956710908e-22
	.float 1.9111103324242725e-22, 2.483378752905935e-35, 5.207714569623086e-28, 1.9193821385498027e-22
	.float 1.869751301796621e-22, 1.8283922711689697e-22, 1.894566720173212e-22, 5.239269005831926e-28
	.float 1.8201204650434394e-22, 1.8366640772945e-22
.global lbl_8041E878
lbl_8041E878:
	.float 7.917336323435216e-43, 8.015427215937954e-43, 8.141544077727187e-43, 8.127531093083939e-43
	.float 8.085492139154194e-43, 8.029440200581202e-43, 8.099505123797443e-43, 7.945362292721713e-43
	.float 8.04345318522445e-43, 7.973388262008209e-43, 8.001414231294705e-43, 8.057466169867698e-43
	.float 8.071479154510946e-43, 8.113518108440691e-43, 7.931349308078465e-43, 8.155557062370435e-43
	.float 7.959375277364961e-43, 7.987401246651457e-43
.global lbl_8041E8C0
lbl_8041E8C0:
	.4byte 0x80157FE8, 0x80157D60, 0x80157DFC, 0x80157EB0
	.4byte 0x80157EC8, 0x80157EF8, 0x80157F3C, 0x80157F68
	.4byte 0x80157F90
.global lbl_8041E8E4
lbl_8041E8E4:
	.incbin "baserom.dol", 0x41A9E4, 0x54
.global lbl_8041E938
lbl_8041E938:
	.float -1.976918242306308e-39, -1.978880060156363e-39, -1.977159265642172e-39, -1.977232133162317e-39
	.float -1.9774283149473224e-39, -1.97847088100478e-39, -1.977854309680477e-39, -1.9776244967323278e-39
	.float -1.9780897278224837e-39, -1.978880060156363e-39, -1.978880060156363e-39, -1.9788520341870764e-39
	.float -1.9788520341870764e-39, -1.9788520341870764e-39, -1.9788520341870764e-39, -1.9788520341870764e-39
	.float -1.9788520341870764e-39, 0.0
.global lbl_8041E980
lbl_8041E980:
	.float -1.9905949153181183e-39, -1.9910881723775607e-39, -1.9916150606001468e-39, -1.9918672943237253e-39
	.float -1.9919625826192994e-39, -1.9928425980548953e-39, -1.993341460308195e-39, -1.9905949153181183e-39
	.float -1.9910881723775607e-39, -1.9916150606001468e-39, -1.9918672943237253e-39, -1.9919625826192994e-39
	.float -1.9928425980548953e-39, 0.0
.global lbl_8041E9B8
lbl_8041E9B8:
	.float 3.6735319501967944e-40, 5.510311938279835e-40, 3.6734758982582215e-40, 5.510255886341262e-40
	.float 9.183689745645554e-41, 2.7551209366783093e-40, 3.6735319501967944e-40, 5.510311938279835e-40
	.float 3.6734758982582215e-40, 5.510255886341262e-40, 9.183689745645554e-41, 2.7551209366783093e-40
	.float 3.6734758982582215e-40, 5.510255886341262e-40, 9.183689745645554e-41, 2.7551209366783093e-40
	.float 3.6734758982582215e-40, 5.510255886341262e-40, 9.183689745645554e-41, 2.7551209366783093e-40
.global lbl_8041EA08
lbl_8041EA08:
	.float 5.605193857299268e-44, 5.465064010866787e-44, 5.324934164434305e-44, 5.605193857299268e-44
	.float 5.465064010866787e-44, 5.324934164434305e-44, 5.465064010866787e-44, 5.324934164434305e-44
.global lbl_8041EA28
lbl_8041EA28:
	.float 20.0, 24.0, 20.0, 16.0
	.float 19.0, 16.0, 11.0, 14.0
	.float 11.0, 20.0, 24.0, 20.0
	.float 16.0, 19.0, 16.0, 11.0
	.float 14.0, 11.0, 16.0, 19.0
	.float 16.0, 11.0, 14.0, 11.0
.global lbl_8041EA88
lbl_8041EA88:
	.float 1.3718711965739959e-42, 1.3732724950383207e-42, 1.3746737935026455e-42, 1.3760750919669704e-42
	.float 1.3774763904312952e-42, 1.37887768889562e-42, 1.3802789873599448e-42, 1.3816802858242696e-42
	.float 1.3830815842885944e-42, 1.3844828827529193e-42, 1.3858841812172441e-42, 1.3872854796815689e-42
	.float 1.3900880766102185e-42, 1.3914893750745434e-42, 1.3928906735388682e-42, 1.394291972003193e-42
	.float 1.3956932704675178e-42, 1.3970945689318426e-42, 1.3984958673961674e-42, 1.3998971658604923e-42
	.float 1.401298464324817e-42, 1.4026997627891419e-42, 1.4041010612534667e-42, 1.4055023597177915e-42
	.float 2.6624670822171524e-44, 2.802596928649634e-44, 6.905598832192699e-41, 6.905738962039131e-41
	.float 1.4433374182545616e-43, 1.8216880036222622e-44, 0.0, 1.4517452090405105e-42
	.float 1.4531465075048353e-42, 1.45454780596916e-42, 1.455949104433485e-42, 1.4573504028978098e-42
	.float 1.4587517013621346e-42, 1.4601529998264594e-42, 1.4615542982907842e-42, 1.462955596755109e-42
	.float 1.4643568952194338e-42, 1.4657581936837587e-42, 1.4671594921480835e-42, 0.0
	.float 0.0, 0.0, 4.90454462513686e-44, 5.044674471569341e-44
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
	.float 0.0, 0.0, 0.0, 0.0
.global lbl_8041EBC8
lbl_8041EBC8:
	.4byte 0x8015C538, 0x8015C574, 0x8015C5B0, 0x8015C5EC
	.4byte 0x8015C628, 0x8015C664, 0x8015C6A0, 0x8015C728
	.4byte 0x8015C728, 0x8015C6DC
.global lbl_8041EBF0
lbl_8041EBF0:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "D"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "C"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "B"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "A"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041EC10
lbl_8041EC10:
	.byte 0x00
	.ascii "P"
	.byte 0x00
	.ascii "b"
	.byte 0x00
	.ascii "r"
	.byte 0x00
	.ascii "P"
	.byte 0x00
	.ascii "a"
	.byte 0x00
	.ascii "s"
	.byte 0x00
	.ascii "s"
	.byte 0x00
	.ascii "D"
	.byte 0x00
	.ascii "a"
	.byte 0x00
	.ascii "t"
	.byte 0x00
	.ascii "a"
	.byte 0x00
	.byte 0x00
.global lbl_8041EC28
lbl_8041EC28:
	.ascii "/GeniusPbr"
	.byte 0x00
	.byte 0x00
.global lbl_8041EC34
lbl_8041EC34:
	.ascii "PbrSaveData"
	.byte 0x00
.global lbl_8041EC40
lbl_8041EC40:
	.4byte 0x8015DEA0, 0x8015DEC0, 0x8015DEC0, 0x8015DEC0
	.4byte 0x8015DEC0, 0x8015DEC0, 0x8015DEC0, 0x8015DEC0
	.4byte 0x8015DEC0, 0x8015DEC0, 0x8015DEA0, 0x8015DE70
	.4byte 0x8015DE64, 0x8015DEC0, 0x8015DEC0, 0x8015E5CC
.global lbl_8041EC80
lbl_8041EC80:
	.4byte 0x8015DC2C, 0x8015DC5C, 0x8015DC5C, 0x8015DC5C
	.4byte 0x8015DC5C, 0x8015DC5C, 0x8015DC5C, 0x8015DC5C
	.4byte 0x8015DC5C, 0x8015DC5C, 0x8015DC2C, 0x8015DBFC
	.4byte 0x8015DBF0, 0x8015DC5C, 0x8015DC5C, 0x8015E5CC
.global lbl_8041ECC0
lbl_8041ECC0:
	.4byte 0x8015DAD0, 0x8015DB00, 0x8015DB00, 0x8015DB00
	.4byte 0x8015DB00, 0x8015DB00, 0x8015DB00, 0x8015DB00
	.4byte 0x8015DB00, 0x8015DB00, 0x8015DAD0, 0x8015DAA0
	.4byte 0x8015DA94, 0x8015DB00, 0x8015DB00, 0x8015E5CC
.global lbl_8041ED00
lbl_8041ED00:
	.4byte 0x8015D650, 0x8015E5CC, 0x8015D7E0, 0x8015E5CC
	.4byte 0x8015D834, 0x8015D890, 0x8015D8B8, 0x8015E5CC
	.4byte 0x8015D91C, 0x8015E5CC, 0x8015D974, 0x8015E5CC
	.4byte 0x8015DA4C, 0x8015E5CC, 0x8015DB30, 0x8015E5CC
	.4byte 0x8015DBA8, 0x8015E5CC, 0x8015DC8C, 0x8015E5CC
	.4byte 0x8015DDB4, 0x8015E5CC, 0x8015DEE0, 0x8015E090
	.4byte 0x8015E5CC, 0x8015E11C, 0x8015E178, 0x8015E1C4
	.4byte 0x8015E204, 0x8015E244, 0x8015E284, 0x8015E2C4
	.4byte 0x8015E304, 0x8015E330, 0x8015E370, 0x8015E3B0
	.4byte 0x8015E3F0, 0x8015E41C, 0x8015E5CC, 0x8015E45C
	.4byte 0x8015E4A4, 0x8015E5CC, 0x8015E5CC, 0x8015E5CC
	.4byte 0x8015E5CC, 0x8015E5CC, 0x8015E518, 0x8015E53C
	.4byte 0x8015E5CC, 0x8015E5CC, 0x8015E5CC, 0x8015E5CC
	.4byte 0x8015E5CC, 0x8015E5A0
.global lbl_8041EDD8
lbl_8041EDD8:
	.ascii "banner.bin"
	.byte 0x00
	.byte 0x00
.global lbl_8041EDE4
lbl_8041EDE4:
	.4byte 0x8015EA14, 0x8015EA24, 0x8015F644, 0x8015EA70
	.4byte 0x8015F644, 0x8015EAD4, 0x8015F644, 0x8015EB34
	.4byte 0x8015F644, 0x8015EB90, 0x8015F644, 0x8015EBDC
	.4byte 0x8015EBEC, 0x8015F644, 0x8015EC40, 0x8015F644
	.4byte 0x8015EC8C, 0x8015F644, 0x8015ECE4, 0x8015F644
	.4byte 0x8015ED3C, 0x8015EE3C, 0x8015F644, 0x8015EEA4
	.4byte 0x8015EEC4, 0x8015F644, 0x8015EF10, 0x8015F644
	.4byte 0x8015EF5C, 0x8015EF78, 0x8015EF88, 0x8015F644
	.4byte 0x8015EFD4, 0x8015F644, 0x8015F038, 0x8015F644
	.4byte 0x8015F098, 0x8015F644, 0x8015F0F4, 0x8015F644
	.4byte 0x8015F140, 0x8015F150, 0x8015F644, 0x8015F19C
	.4byte 0x8015F644, 0x8015F1F4, 0x8015F644, 0x8015F258
	.4byte 0x8015F34C, 0x8015F360, 0x8015F644, 0x8015F3C8
	.4byte 0x8015F3E8, 0x8015F644, 0x8015F434, 0x8015F644
	.4byte 0x8015F480, 0x8015F49C, 0x8015F4F0, 0x8015F510
	.4byte 0x8015F5A0, 0x8015F644, 0x8015F644, 0x8015F644
	.4byte 0x8015F644, 0x8015F62C
.global lbl_8041EEEC
lbl_8041EEEC:
	.4byte 0x80160CAC, 0x80160954, 0x80160CAC, 0x80160990
	.4byte 0x80160CAC, 0x80160CAC, 0x80160CAC, 0x801609E4
	.4byte 0x80160CAC, 0x80160A20, 0x80160CAC, 0x80160A44
	.4byte 0x80160CAC, 0x80160A88, 0x80160CAC, 0x80160B00
	.4byte 0x80160CAC, 0x80160B44, 0x80160CAC, 0x80160BBC
	.4byte 0x80160CAC, 0x80160C00, 0x80160CAC, 0x80160CAC
	.4byte 0x80160C68
.global lbl_8041EF50
lbl_8041EF50:
	.4byte 0x80161094, 0x80161094, 0x80160CF0, 0x80161094
	.4byte 0x80160D14, 0x80161094, 0x80160D44, 0x80161094
	.4byte 0x80160D68, 0x80161094, 0x80160D9C, 0x80161094
	.4byte 0x80161094, 0x80160E90, 0x80161094, 0x80160EC0
	.4byte 0x80161094, 0x80160EE4, 0x80161094, 0x80160F14
	.4byte 0x80161094, 0x80161094, 0x80160F38, 0x80161094
	.4byte 0x80161094, 0x80160F6C, 0x80161094, 0x80160F90
	.4byte 0x80161094, 0x80161094, 0x80161094, 0x80160DC0
	.4byte 0x80161094, 0x80160DE4, 0x80161094, 0x80160E14
	.4byte 0x80161094, 0x80160E38, 0x80161094, 0x80160E6C
	.4byte 0x80161094, 0x80161094, 0x80160FB4, 0x80161094
	.4byte 0x80160FD8, 0x80161094, 0x80160FFC, 0x80161094
	.4byte 0x80161094, 0x80161094, 0x8016101C, 0x80161094
	.4byte 0x80161094, 0x80161050, 0x80161094, 0x80161074
.global lbl_8041F030
lbl_8041F030:
	.4byte 0x80162040, 0x80161624, 0x8016199C, 0x80162040
	.4byte 0x80161A24, 0x80161A4C, 0x80161AD4, 0x80162040
	.4byte 0x80161BB4, 0x80161D4C, 0x80161F00, 0x80161F28
	.4byte 0x80161F50, 0x80161F78, 0x80161FA0, 0x80161FC8
	.4byte 0x80161FF0, 0x80162018
.global lbl_8041F078
lbl_8041F078:
	.incbin "baserom.dol", 0x41B178, 0x100
.global lbl_8041F178
lbl_8041F178:
	.incbin "baserom.dol", 0x41B278, 0x30
.global lbl_8041F1A8
lbl_8041F1A8:
	.incbin "baserom.dol", 0x41B2A8, 0x50
.global lbl_8041F1F8
lbl_8041F1F8:
	.ascii "pseudo:battle/pbrcheck_result"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F218
lbl_8041F218:
	.ascii "pseudo:battle/battlepass"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:config/version"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:battle/params"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:config/protocol"
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:savedata/PLAYER_DATA"
	.byte 0x00
	.ascii "pseudo:savedata/TEMOTI_POKE"
	.byte 0x00
	.ascii "pseudo:savedata/TEMOTI_ITEM"
	.byte 0x00
.global lbl_8041F2D0
lbl_8041F2D0:
	.ascii "pseudo:savedata/BOXDATA"
	.byte 0x00
.global lbl_8041F2E8
lbl_8041F2E8:
	.4byte 0x801662B4, 0x801662EC, 0x8016630C, 0x80166614
	.4byte 0x80166614, 0x80166614, 0x80166614, 0x80166614
	.4byte 0x80166614, 0x80166614, 0x80166318, 0x801663B0
	.4byte 0x80166614, 0x80166614, 0x80166614, 0x80166614
	.4byte 0x80166614, 0x80166614, 0x80166614, 0x80166614
	.4byte 0x8016644C, 0x8016647C, 0x80166568, 0x8016660C
	.4byte 0x80166614, 0x80166614, 0x80166614, 0x80166614
	.4byte 0x80166614, 0x80166614, 0x80166614
.global lbl_8041F364
lbl_8041F364:
	.ascii "pseudo:init"
	.byte 0x00
.global lbl_8041F370
lbl_8041F370:
	.ascii "pseudo:exit"
	.byte 0x00
.global lbl_8041F37C
lbl_8041F37C:
	.ascii "pseudo:dataerror"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F390
lbl_8041F390:
	.ascii ";lang=%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F39C
lbl_8041F39C:
	.ascii ";sclang=%d"
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:fight/result"
	.byte 0x00
	.ascii "pseudo:fight/battleselect"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:fight/usermsg"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:fight/userstat"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "pseudo:fight/wcompack_chain"
	.byte 0x00
	.ascii "pseudo:battle/pbrcheck_result"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F444
lbl_8041F444:
	.incbin "baserom.dol", 0x41B544, 0xBC
.global lbl_8041F500
lbl_8041F500:
	.float -6.057050954911591e-39, -2.061500617612954e-39, -2.0617528513365326e-39, 0.0
	.float -6.057084586074735e-39, -2.061909796764537e-39, -2.0619378227338234e-39, 0.0
	.float -6.057118217237879e-39, -2.0621676356819727e-39, -2.0621956616512592e-39, 0.0
	.float -6.05715745359488e-39, -2.0620331110293975e-39, -2.062061136998684e-39, 0.0
	.float 0.0, 0.0, 0.0, 0.0
.global lbl_8041F550
lbl_8041F550:
	.4byte 0x80167AC0, 0x80167AC8, 0x80167AD0, 0x80167AD8
	.4byte 0x80167AE0, 0x80167AE8, 0x80167AF0, 0x80167AF8
	.4byte 0x80167B00, 0x80167B28, 0x80167B28, 0x80167B28
	.4byte 0x80167B08, 0x80167B10, 0x80167B18, 0x80167B20
.global lbl_8041F590
lbl_8041F590:
	.ascii "pseudo:fight/result"
	.byte 0x00
.global lbl_8041F5A4
lbl_8041F5A4:
	.ascii "pseudo:fight/command"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F5BC
lbl_8041F5BC:
	.ascii "pseudo:fight/init_pokeparty.lz"
	.byte 0x00
	.byte 0x00
.global lbl_8041F5DC
lbl_8041F5DC:
	.ascii "pseudo:fight/init_pokedata.lz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F5FC
lbl_8041F5FC:
	.ascii "pseudo:fight/turn_pokeparty.lz"
	.byte 0x00
	.byte 0x00
.global lbl_8041F61C
lbl_8041F61C:
	.ascii "pseudo:fight/turn_pokedata.lz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F63C
lbl_8041F63C:
	.ascii "pseudo:fight/main_message"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F658
lbl_8041F658:
	.ascii "pseudo:fight/waza_message"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F674
lbl_8041F674:
	.ascii "pseudo:fight/dir_message"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F690
lbl_8041F690:
	.ascii "pseudo:fight/pokeselect_end"
	.byte 0x00
.global lbl_8041F6AC
lbl_8041F6AC:
	.ascii "pseudo:fight/turn_end"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F6C8
lbl_8041F6C8:
	.ascii "pseudo:fight/time_limit"
	.byte 0x00
.global lbl_8041F6E0
lbl_8041F6E0:
	.ascii "pseudo:fight/battle_pokeparty.lz"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F704
lbl_8041F704:
	.ascii "pseudo:fight/battleselect"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F720
lbl_8041F720:
	.ascii "pseudo:fight/usermsg"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F738
lbl_8041F738:
	.ascii "pseudo:fight/wcompack_chain"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F758
lbl_8041F758:
	.ascii "battleInit"
	.byte 0x00
	.byte 0x00
.global lbl_8041F764
lbl_8041F764:
	.ascii "maincallback"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_8041F774
lbl_8041F774:
	.4byte 0x80169A30, 0x80169A3C, 0x80169A48, 0x80169A54
	.4byte 0x80169A60, 0x80169A6C, 0x80169A78, 0x80169A84
	.4byte 0x80169A90, 0x80169A9C, 0x80169AA8
.global lbl_8041F7A0
lbl_8041F7A0:
	.incbin "baserom.dol", 0x41B8A0, 0x58
.global lbl_8041F7F8
lbl_8041F7F8:
	.4byte 0x8016A300, 0x8016A310, 0x8016A320, 0x8016A330
	.4byte 0x8016A340, 0x8016A350, 0x8016A360, 0x8016A370
	.4byte 0x8016A380, 0x8016A390
.global lbl_8041F820
lbl_8041F820:
	.incbin "baserom.dol", 0x41B920, 0x48
.global lbl_8041F868
lbl_8041F868:
	.float -2.1124294090003752e-39, -2.1102938301407442e-39, -2.1103610924670318e-39, -2.1104171444056048e-39
	.float -2.1104844067318924e-39, -2.1105404586704654e-39, -2.110607720996753e-39, -2.110663772935326e-39
	.float -2.110663772935326e-39, -2.110663772935326e-39, -2.110663772935326e-39, -2.1114204741060614e-39
	.float -2.1111290040254818e-39, -2.111487736432349e-39, -2.111543788370922e-39, -2.1116446818603533e-39
	.float -2.111711944186641e-39, -2.1112186871271986e-39, -2.11131958061663e-39, -2.1124294090003752e-39
	.float -2.1118016272883577e-39, -2.1118688896146453e-39, -2.1119249415532183e-39, -2.1120034142672205e-39
	.float -2.1120594662057935e-39, -2.1123004895416574e-39, -2.1123789622556595e-39, -2.113791471107699e-39
	.float -2.1126424063669526e-39, -2.1126816427239537e-39, -2.1127208790809548e-39, -2.1127769310195278e-39
	.float -2.112816167376529e-39, -2.11285540373353e-39, -2.112894640090531e-39, -2.112894640090531e-39
	.float -2.112894640090531e-39, -2.112894640090531e-39, -2.1132029257526825e-39, -2.113023559549249e-39
	.float -2.113791471107699e-39, -2.1132589776912555e-39, -2.113326240017543e-39, -2.113382291956116e-39
	.float -2.1130908218755366e-39, -2.1131468738141095e-39, -2.113791471107699e-39, -2.113455159476261e-39
	.float -2.113511211414834e-39, -2.113550447771835e-39, -2.1137578399445552e-39, -2.113606499710408e-39
	.float -2.113662551648981e-39, -2.113718603587554e-39, -2.115288057867598e-39, -2.1139932580865617e-39
	.float -2.1140493100251347e-39, -2.1141053619637077e-39, -2.1141614139022807e-39, -2.1142174658408537e-39
	.float -2.1142735177794267e-39, -2.1143295697179997e-39, -2.1143295697179997e-39, -2.1143295697179997e-39
	.float -2.1143295697179997e-39, -2.1146770917371522e-39, -2.1145089359214333e-39, -2.115288057867598e-39
	.float -2.1147331436757252e-39, -2.1147891956142982e-39, -2.1148452475528712e-39, -2.1145649878600063e-39
	.float -2.1146210397985793e-39, -2.115288057867598e-39, -2.1149012994914442e-39, -2.1149573514300172e-39
	.float -2.1150134033685902e-39, -2.1152376111228822e-39, -2.1150694553071632e-39, -2.1151255072457362e-39
	.float -2.1151815591843092e-39, 0.0
.global lbl_8041F9B0
lbl_8041F9B0:
	.incbin "baserom.dol", 0x41BAB0, 0x168
.global lbl_8041FB18
lbl_8041FB18:
	.float 8.323712878089413e-43, 4.203895392974451e-45, 4.2319213622609476e-43, 4.203895392974451e-45
	.float 1.5974802493302915e-43, 4.203895392974451e-45, 1.639519203260036e-43, 4.203895392974451e-45
	.float 2.312142466135948e-43, 9.80908925027372e-45, 2.1019476964872256e-43, 4.203895392974451e-45
	.float 2.14398665041697e-43, 4.203895392974451e-45, 4.652310901558393e-43, 4.203895392974451e-45
	.float 4.694349855488137e-43, 4.203895392974451e-45, 1.753024378870346e-42, 4.203895392974451e-45
	.float 1.6815581571897805e-44, 4.203895392974451e-45, 1.1154335776025544e-42, 1.401298464324817e-45
	.float 1.4923828645059302e-42, 2.802596928649634e-45, 1.5120010430064776e-42, 4.203895392974451e-45
	.float 6.011570411953465e-43, 4.203895392974451e-45, 8.449829739878647e-43, 4.203895392974451e-45
	.float 1.4083049566464412e-42, 1.401298464324817e-45, 1.409706255110766e-42, 1.401298464324817e-45
	.float 8.04345318522445e-43, 4.203895392974451e-45, 2.1019476964872256e-44, 4.203895392974451e-45
	.float 2.5223372357846707e-44, 4.203895392974451e-45, 2.942726775082116e-44, 4.203895392974451e-45
	.float 3.363116314379561e-44, 4.203895392974451e-45, 3.783505853677006e-44, 4.203895392974451e-45
	.float 3.75547988439051e-43, 4.203895392974451e-45, 1.531619221507025e-42, 4.203895392974451e-45
	.float 6.291830104818429e-43, 4.203895392974451e-45, 5.479076995510035e-43, 9.80908925027372e-45
	.float 6.74024561340237e-43, 4.203895392974451e-45, 8.898245248462588e-43, 4.203895392974451e-45
	.float 4.273960316190692e-43, 4.203895392974451e-45, 1.6030854431875907e-42, 4.203895392974451e-45
	.float 1.7348074988341235e-42, 4.203895392974451e-45, 9.108440018111311e-43, 4.203895392974451e-45
	.float 6.2778171201751805e-43, 1.401298464324817e-45, 4.189882408331203e-43, 4.203895392974451e-45
	.float 4.9605965637098524e-43, 4.203895392974451e-45, 1.4727646860053827e-42, 4.203895392974451e-45
	.float 1.3928906735388682e-42, 4.203895392974451e-45, 1.4769685813983572e-42, 4.203895392974451e-45
	.float 8.407790785948902e-43, 4.203895392974451e-45, 0.0, 0.0
.global lbl_8041FC68
lbl_8041FC68:
	.float 1.0509738482436128e-42, 4.203895392974451e-45, 1.0551777436365873e-42, 4.203895392974451e-45
	.float 1.0677894298155106e-42, 4.203895392974451e-45, 1.071993325208485e-42, 4.203895392974451e-45
	.float 1.531619221507025e-42, 4.203895392974451e-45, 6.291830104818429e-43, 4.203895392974451e-45
	.float 0.0, 0.0
.global lbl_8041FCA0
lbl_8041FCA0:
	.float 1.401298464324817e-45, 5.605193857299268e-44, 8.407790785948902e-45, 4.624284932271896e-44
	.float 1.401298464324817e-44, 3.0828566215145976e-44, 1.6815581571897805e-44, 6.165713243029195e-44
	.float 4.203895392974451e-44, 3.783505853677006e-44, 4.344025239406933e-44, 3.6433760072445244e-44
	.float 4.484155085839415e-44, 3.2229864679470793e-44, 4.624284932271896e-44, 4.203895392974451e-44
	.float 4.764414778704378e-44, 4.203895392974451e-44, 4.90454462513686e-44, 4.203895392974451e-44
	.float 5.044674471569341e-44, 4.203895392974451e-44, 5.184804318001823e-44, 4.203895392974451e-44
	.float 5.324934164434305e-44, 4.203895392974451e-44, 5.465064010866787e-44, 4.203895392974451e-44
	.float 5.605193857299268e-44, 2.6624670822171524e-44, 0.0, 0.0
.global lbl_8041FD20
lbl_8041FD20:
	.float 1.401298464324817e-45, 1.5414283107572988e-43, 2.802596928649634e-45, 1.555441295400547e-43
	.float 4.203895392974451e-45, 1.5694542800437951e-43, 5.605193857299268e-45, 1.5834672646870433e-43
	.float 7.006492321624085e-45, 1.5974802493302915e-43, 8.407790785948902e-45, 1.6114932339735396e-43
	.float 1.1210387714598537e-44, 1.6255062186167878e-43, 1.401298464324817e-44, 1.639519203260036e-43
	.float 1.6815581571897805e-44, 1.6535321879032841e-43, 1.961817850054744e-44, 1.6675451725465323e-43
	.float 2.382207389352189e-44, 1.6955711418330287e-43, 2.5223372357846707e-44, 1.7095841264762768e-43
	.float 4.0637655465419695e-44, 1.7376100957627732e-43, 4.344025239406933e-44, 1.7516230804060213e-43
	.float 4.484155085839415e-44, 1.7656360650492695e-43, 4.764414778704378e-44, 1.7796490496925177e-43
	.float 4.90454462513686e-44, 1.793662034335766e-43, 5.044674471569341e-44, 1.807675018979014e-43
	.float 5.184804318001823e-44, 1.821688003622262e-43, 5.324934164434305e-44, 1.8357009882655104e-43
	.float 5.465064010866787e-44, 1.8497139729087585e-43, 0.0, 0.0
.global lbl_8041FDD0
lbl_8041FDD0:
	.float 5.605193857299268e-45, 3.6734758982582215e-40, 3.6734758982582215e-40, 3.6735319501967944e-40
	.float 7.346951796516443e-40, 7.34689574457787e-40, 7.346951796516443e-40, 7.34689574457787e-40
	.float 7.346951796516443e-40, 7.34689574457787e-40, 3.6734758982582215e-40, 3.6734758982582215e-40
	.float 3.6734758982582215e-40, 3.6734198463196485e-40
.global lbl_8041FE08
lbl_8041FE08:
	.4byte 0x80170CBC, 0x80170C5C, 0x80170C74, 0x80170C8C
	.4byte 0x80170C5C, 0x80170C74, 0x80170CA4, 0x80170C74
	.4byte 0x80171A74, 0x80171224, 0x80171A28, 0x8017128C
	.4byte 0x801719F4, 0x80171358, 0x801714BC, 0x8017160C
	.4byte 0x80171A74, 0x80171A74, 0x801712BC, 0x80171A74
	.4byte 0x80171A74, 0x80171A74, 0x80171854, 0x80171A74
	.4byte 0x80171A74, 0x80171A74, 0x80171A74, 0x80171A74
	.4byte 0x80171A74, 0x801715BC, 0x80171A74, 0x80171A58
	.4byte 0x801714E8, 0x80171400, 0x80172774, 0x80171D0C
	.4byte 0x80172790, 0x80172790, 0x80171FA0, 0x80172790
	.4byte 0x80171D2C, 0x80172790, 0x801724E8, 0x80172718
	.4byte 0x80172790, 0x80172790, 0x8017266C, 0x80172790
	.4byte 0x80171CC4, 0x80172790, 0x80172790, 0x8017277C
	.4byte 0x80172790, 0x8017264C, 0x80172754
.global lbl_8041FEE4
lbl_8041FEE4:
	.4byte 0x80173858, 0x80173688, 0x80173688, 0x80173688
	.4byte 0x80173688, 0x80173688, 0x80173688, 0x80173688
	.4byte 0x80173858, 0x80173858, 0x80173410, 0x80173858
	.4byte 0x801734B4, 0x801734B4, 0x801737C8, 0x80173844
	.4byte 0x80173844, 0x80173858, 0x801737DC, 0x801737DC
	.4byte 0x801737DC, 0x801737DC, 0x801737DC, 0x80173858
	.4byte 0x80173858, 0x80173858, 0x80173728, 0x80173858
	.4byte 0x80173858, 0x80173620, 0x80173A78, 0x801728CC
	.4byte 0x80173A9C, 0x80173A9C, 0x80172EE0, 0x80173A9C
	.4byte 0x8017397C, 0x80173A9C, 0x801733C4, 0x80173914
	.4byte 0x80173A9C, 0x80172AA4, 0x80172D9C, 0x80173A9C
	.4byte 0x80172904, 0x80173A9C, 0x8017386C, 0x80173A8C
	.4byte 0x80172894, 0x801728B8, 0x801733AC, 0x801744D4
	.4byte 0x8017449C, 0x801744D4, 0x801744D4, 0x801744A4
	.4byte 0x801744D4, 0x801744B8, 0x801744D4, 0x801744D4
	.4byte 0x801744D4, 0x801742A0, 0x801744D4, 0x801744D4
	.4byte 0x801744D4, 0x80174310, 0x801744D4, 0x801744D4
	.4byte 0x801744D4, 0x801744D4, 0x801744D4, 0x801744D4
	.4byte 0x801744D4, 0x8017446C, 0x801744CC
.global lbl_80420010
lbl_80420010:
	.4byte 0x80174D28, 0x8017482C, 0x80174D28, 0x80174D28
	.4byte 0x80174894, 0x801748B8, 0x80174894, 0x80174894
	.4byte 0x801748B8, 0x80174894, 0x80174894, 0x80174894
	.4byte 0x8017482C, 0x80174960, 0x80174960, 0x80174960
	.4byte 0x80174960, 0x80174960, 0x8017485C, 0x8017485C
	.4byte 0x8017485C, 0x8017485C, 0x8017485C, 0x8017485C
	.4byte 0x8017485C, 0x8017485C, 0x8017485C, 0x8017485C
	.4byte 0x8017485C, 0x8017485C, 0x8017485C, 0x8017485C
	.4byte 0x8017485C, 0x8017485C, 0x8017485C, 0x80174A64
	.4byte 0x80174A64, 0x80174A64, 0x80174A64, 0x80174A64
	.4byte 0x80174878, 0x80174A64, 0x8017482C, 0x80174878
	.4byte 0x80174D28, 0x80174C58, 0x80174C58, 0x80174D28
	.4byte 0x80174878, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174878, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174878, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174B04, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174B04
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D10, 0x80174D28, 0x80174B34
	.4byte 0x80174B34, 0x80174D28, 0x80174878, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174BCC
	.4byte 0x80174C94, 0x80174D28, 0x80174D28, 0x80174D28
	.4byte 0x80174D28, 0x80174D28, 0x80174D28, 0x80174C58
	.4byte 0x8017513C, 0x8017513C, 0x80174F88, 0x8017513C
	.4byte 0x8017513C, 0x8017513C, 0x8017513C, 0x8017513C
	.4byte 0x8017513C, 0x8017513C, 0x80174F90, 0x8017513C
	.4byte 0x8017513C, 0x8017513C, 0x80175138, 0x8017511C
	.4byte 0x8017513C, 0x80175034, 0x801750BC, 0x8017513C
	.4byte 0x8017513C, 0x8017513C, 0x8017513C, 0x80174F88
	.4byte 0x80174F88, 0x80175330, 0x80175368, 0x80175368
	.4byte 0x80175368, 0x801753F4, 0x801753F4, 0x801753F4
	.4byte 0x80175420, 0x801754E4, 0x80175514, 0x801754E4
	.4byte 0x80175548, 0x801754E4, 0x80175584, 0x801754E4
	.4byte 0x801755C0, 0x80175BC4, 0x801754E4, 0x801754E4
	.4byte 0x801755FC, 0x8017563C, 0x80175680, 0x801756B0
	.4byte 0x801756EC, 0x80175808, 0x80175808, 0x8017585C
	.4byte 0x8017585C, 0x801758AC, 0x801758F0, 0x8017585C
	.4byte 0x80175918, 0x80175918, 0x80175944, 0x80175980
	.4byte 0x80175980, 0x80175980, 0x80175980, 0x80175980
	.4byte 0x80175980, 0x801759AC, 0x801759E8, 0x80175B64
	.4byte 0x80175BFC, 0x80175C24
.global lbl_804202F8
lbl_804202F8:
	.ascii "fightcommon"
	.byte 0x00
.global lbl_80420304
lbl_80420304:
	.ascii "battleMain"
	.byte 0x00
	.byte 0x00
.global lbl_80420310
lbl_80420310:
	.ascii "battleCamera"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80420320
lbl_80420320:
	.float 6.24517247115027e-39, 7.146622168056567e-44, 2.350988981904268e-38, 3.398273491551006e-39
	.float 6.866362475191604e-44, 2.369356081135866e-38, 4.224792956972927e-39, 1.837718858054138e-40
	.float 2.369356641655252e-38, 6.979857841712664e-39, 4.5923913792238635e-40, 2.40608999933937e-38
	.float 5.877834690413698e-39, 9.193779094588692e-41, 2.4060905598587555e-38, 6.06150568272968e-39
	.float 2.75611585858798e-40, 2.4244582196097394e-38, 7.071698943064512e-39, 6.025583396596713e-44
	.float 2.442824478062259e-38, 5.0513180275887054e-39, 1.837592741192349e-40, 2.442825038581645e-38
	.float 4.408470955781231e-39, 5.74532370373175e-44, 2.4611915772938573e-38, 3.857457978833284e-39
	.float 1.837536689253776e-40, 2.461192137813243e-38, 5.1431577276420896e-39, 7.42688186092153e-44
	.float 2.497925775757054e-38, 4.775815743010125e-39, 1.8374666243305596e-40, 2.4979263362764395e-38
	.float 6.153349586678457e-39, 1.0930128021733573e-43, 2.5530270734518485e-38, 7.255379744469745e-39
	.float 1.8376908320848516e-40, 2.589760991655352e-38, 4.31664526871249e-39, 9.191677146892205e-41
	.float 2.589761552174738e-38, 5.602342214924367e-39, 2.7559757287415475e-40, 2.6081280908869504e-38
	.float 6.520698577802744e-39, 1.8377468840234246e-40, 2.608128931666029e-38, 4.5921545597833926e-39
	.float 9.19195740658507e-41, 2.6264957506379344e-38, 5.2350044341877954e-39, 1.8375787282077056e-40
	.float 2.663229949101131e-38, 3.490183256527607e-39, 2.3510189696914044e-38, 3.342812340410573e-38
	.float 6.337083637425334e-39, 1.8373405074687704e-40, 3.3428838066322535e-38, 9.734992791375616e-39
	.float 2.3510186894317116e-38, 3.2877107624560854e-38, 3.587324068671532e-43, 0.0
.global lbl_80420430
lbl_80420430:
	.incbin "baserom.dol", 0x41C530, 0xB50
.global lbl_80420F80
lbl_80420F80:
	.float -2.156043422404021e-39, -2.1545356252564073e-39, -2.1557127159664402e-39, -2.156043422404021e-39
	.float -2.156043422404021e-39, -2.1558248198435862e-39, -2.156043422404021e-39, -2.156043422404021e-39
	.float -2.1560041860470197e-39, -2.156043422404021e-39, -2.156026606822449e-39, 0.0
.global lbl_80420FB0
lbl_80420FB0:
	.float 2.369786279764414e-38, 1.401298464324817e-45, 6.300649720407461e-36, 7.300764999132297e-43
	.float 2.407412430484045e-35, 2.3886572859237833e-38, 3.60133705331478e-43, 1.0654639469879943e-37
	.float 2.3695001346179987e-38, 2.685913918245292e-26, 9.551779463138082e-38, 6.018716182132055e-36
	.float 3.852845240600358e-37, 9.25571648671185e-41
.global lbl_80420FE8
lbl_80420FE8:
	.4byte lbl_803FC4D8, 0x803FC508, 0x803FC538, 0x803FC568
	.4byte 0x803FC598, 0x803FC5C8
.global lbl_80421000
lbl_80421000:
	.float 8.674037494170618e-43, 1.8367099231598242e-40, 8.716076448100362e-43, 2.7550648847397363e-40
	.float 9.024362110251822e-43, 6.428484731059385e-40, 1.723597111119525e-43, 8.265194654219209e-40
	.float 8.898245248462588e-43, 9.183549615799121e-40, 9.066401064181566e-43, 1.1020259538958945e-39
	.float 4.610271947628648e-43, 1.3775324423698682e-39, 8.982323156322077e-43, 1.4693679385278594e-39
	.float 9.108440018111311e-43, 1.5612034346858506e-39, 9.1925179259708e-43, 1.6530389308438418e-39
	.float 9.150478972041055e-43, 1.8367099231598242e-39, 9.276595833830289e-43, 2.0203809154758067e-39
	.float 9.41672568026277e-43, 2.204051907791789e-39, 7.006492321624085e-44, 2.4795583962657627e-39
	.float 9.248569864543793e-44, 2.571393892423754e-39, 1.723597111119525e-43, 2.571393892423754e-39
	.float 1.233142648605839e-43, 2.571393892423754e-39, 9.514816572765508e-43, 3.3060778616876836e-39
	.float 9.248569864543793e-44, 3.489748854003666e-39, 9.612907465268245e-43, 3.76525534247764e-39
	.float 9.65494641919799e-43, 3.948926334793622e-39, 9.739024327057479e-43, 4.1325973271096045e-39
	.float 1.7348074988341235e-42, 4.224432823267596e-39, 1.233142648605839e-43, 4.4999393117415694e-39
	.float 9.907180142776457e-43, 5.142787784847508e-39, 1.0103361927781931e-42, 5.4182942733214815e-39
	.float 1.0047309989208938e-42, 5.601965265637464e-39, 9.781063280987223e-43, 6.428484731059385e-39
	.float 4.610271947628648e-43, 6.612155723375367e-39, 8.716076448100362e-43, 7.163168700323315e-39
	.float 1.5274153261140506e-42, 7.989688165745235e-39, 1.523211430721076e-42, 9.550891600431086e-39
	.float 1.540027012292974e-42, 9.734562592747068e-39, 1.5498361015432477e-42, 9.82639808890506e-39
	.float 1.554039996936222e-42, 9.918233585063051e-39, 1.5582438923291966e-42, 1.0285575569695016e-38
	.float 1.5666516831151455e-42, 1.0928424042800954e-38, 9.823102234916968e-43, 1.0744753050484972e-38
	.float 8.898245248462588e-43, 1.0101904577379033e-39, 3.783505853677006e-44, 2.3877229001077715e-39
	.float 2.942726775082116e-44, 2.3877229001077715e-39, 1.0145400881711676e-42, 1.0469246562010998e-38
	.float 1.0145400881711676e-42, 2.8469003808977276e-39, 8.800154355959851e-43, 5.510129769479473e-40
	.float 1.0047309989208938e-42, 8.540701142693183e-39, 9.865141188846712e-43, 4.775445800215543e-39
	.float 9.108440018111311e-43, 9.367220608115104e-39, 4.610271947628648e-43, 9.367220608115104e-39
	.float 9.612907465268245e-43, 9.367220608115104e-39, 9.024362110251822e-43, 9.367220608115104e-39
	.float 1.0285530728144157e-42, 9.367220608115104e-39, 9.108440018111311e-43, 9.367220608115104e-39
	.float 9.865141188846712e-43, 4.683610304057552e-39, 8.716076448100362e-43, 7.346839692639297e-39
	.float 8.758115402030107e-43, 4.5917748078995606e-40, 1.0089348943138683e-42, 5.877471754111438e-39
.global lbl_804211C0
lbl_804211C0:
	.4byte 0x80185E68, 0x80185DA8, 0x80185DC4, 0x80185DE0
	.4byte 0x80185DFC, 0x80185E18, 0x80185E34, 0x80185E50
.global lbl_804211E0
lbl_804211E0:
	.float 0.0, -2.2497286325349208e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2497398429226354e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.2511131154176737e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.2525480450451423e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.253870870795465e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2552497484843606e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.2566342313671135e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.2579626623112934e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.2591061218581825e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2603112385375018e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.260972651412663e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.2620880849902657e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.2646552637769088e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2659388531702303e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.26797353854043e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.2691674448320347e-39, -2.2472455316561372e-39
	.float 9.477423203504693e-38, -2.2706247952349325e-39, -2.2472455316561372e-39, 9.477423203504693e-38
	.float -2.272637059829703e-39, -2.2472455316561372e-39, 9.477423203504693e-38, -2.2747446127200474e-39
	.float -2.2472455316561372e-39, 2.350988701644575e-38, -2.276947453905966e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.3101245963473204e-39, -2.2484170171723128e-39, 9.4039548065783e-38
	.float -2.3132578997135507e-39, -2.2489719313641854e-39, 9.4039548065783e-38, -2.2782086225238584e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.2789933496638803e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.2817174738785277e-39, -2.247256742043852e-39, 9.4039548065783e-38
	.float -2.283634450177724e-39, -2.2472455316561372e-39, 9.477423203504693e-38, -2.2857083719049248e-39
	.float -2.2472455316561372e-39, 9.477423203504693e-38, -2.2882643403038533e-39, -2.2472455316561372e-39
	.float 9.477423203504693e-38, -2.2907586515703515e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2930679914395588e-39, -2.247951786082157e-39, 9.4039548065783e-38, -2.2952484118500482e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.296162058448788e-39, -2.2472455316561372e-39
	.float 9.477423203504693e-38, -2.2967113674468033e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.2984994242872817e-39, -2.2472455316561372e-39, 9.477423203504693e-38, -2.299889512363892e-39
	.float -2.2472455316561372e-39, 9.477423203504693e-38, -2.301817699050803e-39, -2.2472455316561372e-39
	.float 9.477423203504693e-38, -2.30350486240185e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.3055731789351934e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3070977916643788e-39
	.float -2.2472455316561372e-39, 2.350988701644575e-38, -2.3083141187314128e-39, -2.2472455316561372e-39
	.float 2.350988701644575e-38, -2.3093959211458715e-39, -2.2472455316561372e-39, 2.350988701644575e-38
	.float -2.2805684091377814e-39, -2.2472455316561372e-39, 2.350988701644575e-38, -2.282754434742128e-39
	.float -2.2472455316561372e-39, 2.350988701644575e-38, -2.2944132379653106e-39, -2.247951786082157e-39
	.float 9.4039548065783e-38, -2.3162174420702047e-39, -2.2472455316561372e-39, 9.477423203504693e-38
	.float -2.317456189912668e-39, -2.2472455316561372e-39, 9.477423203504693e-38, -2.3193451402425777e-39
	.float -2.2472455316561372e-39, 9.477423203504693e-38, -2.3213630100312055e-39, -2.2472455316561372e-39
	.float 9.477423203504693e-38, -2.32311743570854e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.32500638603845e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.327853824517958e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.3288571542184146e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.3298997202758722e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.3310151538534748e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3319063796767854e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.33303862883596e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.3339354598531277e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.335028472655301e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3361270906513317e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.337483547564798e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.338604586336258e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.340644876900315e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3417827312533467e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.342858928473948e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.3437837854604025e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.3448936138441478e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3456391046271686e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.3466536447153398e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.3474327666615044e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.348699540473254e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.349770132499998e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.350818303751313e-39, -2.2472455316561372e-39
	.float 9.4039548065783e-38, -2.352129919113921e-39, -2.2472455316561372e-39, 9.4039548065783e-38
	.float -2.3529370670293722e-39, -2.2472455316561372e-39, 9.4039548065783e-38, -2.3540300798315456e-39
	.float -2.2472455316561372e-39, 9.4039548065783e-38, -2.355195960153864e-39, -2.2472455316561372e-39
.global lbl_80421570
lbl_80421570:
	.float 4.3163790220042686e-39, 8.724571119391099e-39, 1.3500266350733292e-38
.global lbl_8042157C
lbl_8042157C:
	.float 8.81620903246562e-39, 9.205830261381886e-41, 9.183689745645554e-41, 3.8203569204321273e-38
	.float 9.198403379520964e-41, 1.8367239361444675e-40, 1.0101907379975962e-38, 9.193919224435125e-41
	.float 3.673433859304292e-40, 9.550901409520336e-39, 9.185511433649176e-41, 9.183829875491986e-41
	.float 1.0285578372291944e-38, 1.8388258838409547e-40, 1.8367379491291107e-40, 3.7836230022286236e-38
	.float 1.8380691826702193e-40, 2.755092910709023e-40, 5.179523664868862e-38, 1.840829740644939e-40
	.float 3.673447872288935e-40, 5.914208194652177e-38, 1.8385736501173762e-40, 4.591802833868847e-40
.global lbl_804215DC
lbl_804215DC:
	.float 4.132598728408069e-39, 9.189014679809988e-41, 1.8367239361444675e-40, 3.948929137390551e-39
	.float 9.194900133360152e-41, 2.7550788977243796e-40, 2.57140230021454e-39, 9.19868363921383e-41
	.float 5.510143782464116e-40, 1.2305964892961608e-38, 9.204288833071128e-41, 5.510143782464116e-40
	.float 2.112217392542723e-38, 9.212136104471347e-41, 9.183829875491986e-41, 3.104040050399796e-38
	.float 1.8381532605780788e-40, 1.8367379491291107e-40, 1.6346722520017829e-38, 1.839288312334182e-40
	.float 2.755092910709023e-40, 3.3979144788844463e-38, 1.8411800652610204e-40, 4.591802833868847e-40
.global lbl_8042163C
lbl_8042163C:
	.float 0.0, 0.0, 0.0, 0.0
	.float -9.168580945603203e-39, 0.0, 0.0, -9.168587952095525e-39
	.float -9.168594958587847e-39, 0.0, -6.069404802173079e-39, 0.0
	.float 0.0, -9.168601965080168e-39, 0.0, 0.0
	.float -9.16861878066174e-39, 0.0, 0.0, -9.168622984557133e-39
	.float 0.0, 2.350988701644575e-38, -9.168629991049455e-39, -9.168629991049455e-39
	.float 0.0, -9.168636997541776e-39, -9.168646806631027e-39, 2.350988701644575e-38
	.float -9.168656615720277e-39, -9.168656615720277e-39, 0.0, -9.168663622212599e-39
	.float -9.168663622212599e-39, 0.0, -9.16867062870492e-39, -9.16867062870492e-39
	.float 2.350988701644575e-38, -6.069417413859258e-39, -6.069432828142366e-39, 0.0
	.float -6.069448242425473e-39, 0.0, 0.0, -9.16868043779417e-39
	.float 0.0, 0.0, -9.168690246883421e-39, 0.0
	.float 0.0, -9.168611774169419e-39, 0.0, 2.406234333081195e-38
	.float 3.850204521670307e-37, 2.4829388034821533e-35, 6.11349184909673e-36, 6.20753283209214e-36
	.float 2.443040558285458e-38, 3.85008972730011e-37, 3.850433213579685e-37, 6.066469922669397e-36
	.float 6.066470640134211e-36, 6.300649720407461e-36, -2.243719864719896e-39, -2.243568524485749e-39
	.float -2.243590945261178e-39, -2.2436133660366073e-39, -2.2436357868120365e-39, -2.2436582075874657e-39
	.float -2.243680628362895e-39, -2.243703049138324e-39
.global lbl_80421754
lbl_80421754:
	.4byte 0x80186D34, 0x80186CA0, 0x80186CB8, 0x80186CCC
	.4byte 0x80186CE0, 0x80186CF4, 0x80186D08, 0x80186D24
.global lbl_80421774
lbl_80421774:
	.float -2.2428118233150135e-39, -2.2426044311422934e-39, -2.2426380623054372e-39, -2.2426660882747237e-39
	.float -2.2426941142440102e-39, -2.2427221402132967e-39, -2.2427501661825832e-39, -2.2427894025395843e-39
	.float 0.0
.global lbl_80421798
lbl_80421798:
	.float 4.3163790220042686e-39, 8.724571119391099e-39, 1.3500266350733292e-38
.global lbl_804217A4
lbl_804217A4:
	.float 8.81620903246562e-39, 9.205830261381886e-41, 9.183689745645554e-41, 3.8203569204321273e-38
	.float 9.198403379520964e-41, 1.8367239361444675e-40, 1.0101907379975962e-38, 9.193919224435125e-41
	.float 3.673433859304292e-40, 9.550901409520336e-39, 9.185511433649176e-41, 9.183829875491986e-41
	.float 1.0285578372291944e-38, 1.8388258838409547e-40, 1.8367379491291107e-40, 3.7836230022286236e-38
	.float 1.8380691826702193e-40, 2.755092910709023e-40, 5.179523664868862e-38, 1.840829740644939e-40
	.float 3.673447872288935e-40, 5.914208194652177e-38, 1.8385736501173762e-40, 4.591802833868847e-40
	.float 0.0
.global lbl_80421808
lbl_80421808:
	.incbin "baserom.dol", 0x41D908, 0xA
.global lbl_80421812
lbl_80421812:
	.float 4.3163790220042686e-39, 8.724571119391099e-39, 1.3500266350733292e-38, 7.64075644033757e-38
	.float 1.2765262885419496e-38, 7.163289211991246e-39, 1.2581828712543985e-38
.global lbl_8042182E
lbl_8042182E:
	.incbin "baserom.dol", 0x41D92E, 0x2A
.global lbl_80421858
lbl_80421858:
	.float -2.57632085782432e-39, -2.57632085782432e-39, -2.5762592006918897e-39, -2.5762704110796043e-39
	.float -2.576281621467319e-39, -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39
	.float -2.5760125721621685e-39, -2.57632085782432e-39, -2.57632085782432e-39, -2.5760518085191696e-39
	.float -2.5760686241007415e-39, -2.576096650070028e-39, -2.576135886427029e-39, -2.5761751227840302e-39
	.float -2.5762143591410313e-39, -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39
	.float -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39
	.float -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39, -2.57632085782432e-39
	.float -2.57632085782432e-39, -2.57632085782432e-39, -2.576001361774454e-39, 0.0
.global lbl_804218D8
lbl_804218D8:
	.float -2.3940904003296635e-39, -2.3943370288593846e-39, -2.394847101500399e-39, -2.3948527066942562e-39
	.float -2.3948583118881135e-39, -2.3948639170819708e-39, -2.394869522275828e-39, -2.3948751274696854e-39
	.float -2.395205833907266e-39, -2.3956206182527062e-39, -2.3962764259340102e-39, -2.3963156622910113e-39
	.float 0.0, -2.3963548986480124e-39, 0.0, 0.0
	.float -2.3963941350050135e-39, -2.3964333713620146e-39, -2.396438976555872e-39, -2.396478212912873e-39
	.float -2.396517449269874e-39, 0.0, 0.0, -2.396556685626875e-39
	.float -2.3965959219838762e-39, -2.3966351583408773e-39, -2.396646368728592e-39, -2.3966519739224492e-39
	.float -2.3966575791163065e-39, -2.3969602595846007e-39, -2.396965864778458e-39, -2.3970275219108883e-39
	.float -2.3970331271047456e-39, -2.3971115998187478e-39, -2.3978346698263394e-39, -2.3978402750201967e-39
	.float -2.3979467737034854e-39, -2.3979523788973427e-39, -2.398238243784065e-39, -2.398596976190932e-39
	.float -2.3986025813847894e-39, -2.3986081865786467e-39, -2.398613791772504e-39, -2.3986193969663613e-39
	.float -2.3986250021602186e-39, -2.398630607354076e-39, -2.3986362125479332e-39, -2.398742711231222e-39
	.float -2.398804368363652e-39, -2.3988099735575095e-39, -2.3992023371275204e-39, -2.3992415734845215e-39
	.float -2.3992808098415226e-39, -2.3993200461985237e-39, -2.3993592825555248e-39, 0.0
	.float 0.0, -2.399398518912526e-39, -2.399516227983529e-39, -2.3995554643405303e-39
	.float -2.3995947006975314e-39, 0.0, -2.3996339370545324e-39, 0.0
	.float 0.0, -2.3996731734115335e-39, -2.3997796720948222e-39, -2.4005027421024138e-39
	.float -2.4011137082328595e-39, -2.4011193134267168e-39, -2.401124918620574e-39, -2.4011305238144314e-39
	.float -2.4011361290082886e-39, -2.401141734202146e-39, 0.0, -2.4011473393960032e-39
	.float -2.4011529445898605e-39, -2.401158549783718e-39, -2.401164154977575e-39, -2.4011697601714324e-39
	.float -2.4012986796301503e-39, -2.4013042848240076e-39, -2.401309890017865e-39, -2.4018872249851668e-39
	.float -2.4018984353728814e-39, -2.4021618794841744e-39, -2.402173089871889e-39, -2.4025598482480427e-39
	.float -2.4025654534419e-39, -2.4025710586357573e-39, -2.4025766638296146e-39, -2.402997053368912e-39
	.float -2.4031371832153445e-39, -2.4035071260099262e-39, -2.403518336397641e-39, -2.4036584662440733e-39
	.float 0.0, -2.404123697334229e-39, -2.4045216660980974e-39, -2.4047122426892456e-39
	.float -2.404717847883103e-39, -2.4051270270346857e-39, -2.405132632228543e-39, -2.4054184971152653e-39
	.float -2.4054241023091226e-39, -2.40542970750298e-39, -2.4054353126968372e-39, -2.4055754425432697e-39
	.float -2.4058108606852762e-39, -2.4058500970422773e-39, 0.0, -2.4063994060402927e-39
	.float -2.4064106164280073e-39, -2.406595587825298e-39, -2.4066628501515857e-39, -2.4069038734874496e-39
	.float -2.406987951395309e-39, -2.4069935565891664e-39, -2.4069991617830237e-39, -2.4074419720977503e-39
	.float -2.4074475772916076e-39, -2.407845546055476e-39, -2.4078511512493332e-39, -2.4078567564431905e-39
	.float -2.4078623616370478e-39, -2.4079688603203365e-39, -2.407980070708051e-39, -2.4079856759019084e-39
	.float -2.4080641486159105e-39, -2.4082491200132014e-39, -2.4082547252070587e-39, 0.0
	.float -2.4083388031149182e-39, -2.4083444083087755e-39, -2.4083500135026328e-39, -2.40835561869649e-39
	.float -2.4086022472262113e-39, -2.4086863251340708e-39, -2.4087704030419303e-39, -2.4087760082357876e-39
	.float -2.408781613429645e-39, 0.0, -2.408787218623502e-39, -2.4089385588576492e-39
	.float -2.4089497692453638e-39, -2.408955374439221e-39, -2.4089609796330784e-39, -2.4089665848269357e-39
	.float -2.408972190020793e-39, -2.409084293897939e-39, -2.4090898990917963e-39, -2.4090955042856536e-39
	.float -2.409101109479511e-39, -2.4091067146733682e-39, -2.4091179250610828e-39, -2.4091851873873704e-39
	.float -2.4091907925812277e-39, -2.4092860808768018e-39, -2.409364553590804e-39, -2.409611182120525e-39
	.float -2.4096167873143824e-39, -2.4097625223546722e-39, -2.4100652028229664e-39, 0.0
	.float -2.410205332669399e-39, -2.4102894105772584e-39, -2.4104239352298335e-39, -2.410861140350703e-39
	.float -2.4114216597364328e-39, -2.411802812918729e-39, -2.4118084181125865e-39, -2.4118140233064438e-39
	.float -2.411819628500301e-39, -2.4118308388880157e-39, -2.4120494414484503e-39, -2.412060651836165e-39
	.float -2.4122063868764547e-39, -2.4124642257938905e-39, -2.412772511456042e-39, -2.412940667271761e-39
	.float -2.413092007505908e-39, -2.4131704802199102e-39, -2.4132321373523405e-39, -2.4132377425461978e-39
	.float -2.4132489529339124e-39, -2.413411503555774e-39, -2.4134171087496313e-39, -2.4134227139434886e-39
	.float -2.413899155421359e-39, -2.4139047606152164e-39, -2.4142242566650824e-39, -2.4142298618589397e-39
	.float -2.414459674807089e-39, -2.41464464620438e-39, -2.4147063033368102e-39, -2.4147679604692405e-39
	.float -2.414779170856955e-39, -2.4147847760508124e-39, -2.4147903812446697e-39, -2.414795986438527e-39
	.float -2.415188350008538e-39, -2.4151939552023952e-39, -2.4152556123348255e-39, -2.4152612175286828e-39
	.float -2.415603134353978e-39, -2.4156087395478354e-39, -2.4158889992407003e-39, -2.4161748641274226e-39
	.float -2.41618046932128e-39, -2.416466334208002e-39, -2.4164719394018594e-39, -2.4165335965342897e-39
	.float -2.416819461421012e-39, -2.4171053263077343e-39, -2.4172790873173105e-39, -2.4173575600313127e-39
	.float -2.4174248223576003e-39, -2.417436032745315e-39, -2.4174416379391722e-39, -2.4174472431330295e-39
	.float -2.4174528483268868e-39, -2.417548136622461e-39, -2.4175537418163182e-39, -2.4176546353057496e-39
	.float -2.417660240499607e-39, -2.4176658456934642e-39, -2.417867632672327e-39, -2.4178732378661843e-39
	.float -2.4178788430600416e-39, -2.417884448253899e-39, -2.417890053447756e-39, -2.4178956586416135e-39
	.float -2.4179012638354708e-39, -2.417962920967901e-39, -2.4180301832941886e-39, -2.4180974456204762e-39
	.float -2.4181030508143335e-39, -2.4181647079467638e-39, -2.418170313140621e-39, -2.4181815235283357e-39
	.float -2.4181927339160503e-39, -2.418299232599339e-39, -2.4183048377931963e-39, -2.4185346507413456e-39
	.float -2.4185458611290602e-39, -2.4185570715167748e-39, -2.418562676710632e-39, -2.4187924896587813e-39
	.float -2.4189606454745003e-39, -2.4189662506683576e-39, -2.4191512220656485e-39, -2.4191568272595058e-39
	.float -2.419218484391936e-39, -2.419291351912081e-39, -2.4192969571059383e-39, -2.4193025622997956e-39
	.float -2.419308167493653e-39, -2.4193137726875102e-39, -2.4193193778813675e-39, -2.4193249830752248e-39
	.float -2.419330588269082e-39, -2.4193361934629394e-39, -2.4193417986567967e-39, -2.419347403850654e-39
	.float -2.4193530090445113e-39, -2.4193586142383686e-39, -2.419963975174957e-39, -2.4200704738582456e-39
	.float -2.420076079052103e-39, -2.4200816842459602e-39, -2.4200872894398175e-39, -2.4200928946336748e-39
	.float -2.420098499827532e-39, -2.4201041050213894e-39, -2.4201097102152467e-39, -2.420115315409104e-39
	.float -2.4201209206029613e-39
.global lbl_80421D2C
lbl_80421D2C:
	.float -2.3737547570153817e-39, -2.3739004920556715e-39, -2.373911702443386e-39, -2.3739173076372434e-39
	.float -2.3739397284126726e-39, -2.37394533360653e-39, -2.3739509388003872e-39, -2.3739565439942445e-39
	.float -2.3739789647696737e-39, -2.374001385545103e-39, -2.3740125959328175e-39, -2.374023806320532e-39
	.float 0.0, -2.3740350167082467e-39, 0.0, 0.0
	.float -2.3740462270959613e-39, -2.374057437483676e-39, -2.3740630426775332e-39, -2.3740742530652478e-39
	.float -2.3740854634529624e-39, 0.0, 0.0, -2.374096673840677e-39
	.float -2.3741078842283916e-39, -2.3741190946161062e-39, -2.3741303050038208e-39, -2.3741415153915354e-39
	.float -2.3741639361669646e-39, -2.3741751465546792e-39, -2.3742424088809668e-39, -2.3742536192686814e-39
	.float -2.3742592244625387e-39, -2.3743152764011117e-39, -2.3743264867888262e-39, -2.3743320919826835e-39
	.float -2.374343302370398e-39, -2.3743489075642554e-39, -2.3744049595028284e-39, -2.3744610114414014e-39
	.float -2.3744834322168306e-39, -2.3745058529922598e-39, -2.3745170633799744e-39, -2.3746627984202642e-39
	.float -2.3746684036141215e-39, -2.374735665940409e-39, -2.3747412711342664e-39, -2.374752481521981e-39
	.float -2.3747636919096956e-39, -2.374769297103553e-39, -2.3747805074912675e-39, -2.374791717878982e-39
	.float -2.3748029282666967e-39, -2.3748141386544113e-39, -2.374825349042126e-39, 0.0
	.float 0.0, -2.3748365594298405e-39, -2.374847769817555e-39, -2.3748589802052697e-39
	.float -2.3748701905929843e-39, 0.0, -2.374881400980699e-39, 0.0
	.float 0.0, -2.3748926113684135e-39, -2.374903821756128e-39, -2.3749150321438427e-39
	.float -2.3749262425315573e-39, -2.3749318477254146e-39, -2.374937452919272e-39, -2.3749430581131292e-39
	.float -2.3749486633069865e-39, -2.3749542685008438e-39, 0.0, -2.374959873694701e-39
	.float -2.3749822944701303e-39, -2.3749878996639876e-39, -2.375055161990275e-39, -2.3750607671841325e-39
	.float -2.375071977571847e-39, -2.3750775827657044e-39, -2.375088793153419e-39, -2.3751000035411335e-39
	.float -2.375111213928848e-39, -2.3751224243165627e-39, -2.3751336347042773e-39, -2.375144845091992e-39
	.float -2.3751952918367076e-39, -2.3752457385814233e-39, -2.375256948969138e-39, -2.3752681593568525e-39
	.float -2.3753970788155704e-39, -2.3754194995909996e-39, -2.3754307099787142e-39, -2.3754419203664288e-39
	.float 0.0, -2.3754531307541434e-39, -2.375464341141858e-39, -2.375727785253151e-39
	.float -2.3757726268040095e-39, -2.375783837191724e-39, -2.375935177425871e-39, -2.3759463878135857e-39
	.float -2.376136964404734e-39, -2.3763779877405978e-39, -2.376383592934455e-39, -2.3763948033221697e-39
	.float -2.3764060137098843e-39, -2.376417224097599e-39, 0.0, -2.3764284344853135e-39
	.float -2.376439644873028e-39, -2.3764508552607427e-39, -2.3764620656484573e-39, -2.376473276036172e-39
	.float -2.3764844864238865e-39, -2.3766526422396054e-39, -2.376697483790464e-39, -2.3767086941781784e-39
	.float -2.3767311149536076e-39, -2.3768936655754693e-39, -2.377000164258758e-39, -2.3772019512376208e-39
	.float -2.3772467927884792e-39, -2.3772580031761938e-39, -2.3773252655024814e-39, -2.3773701070533398e-39
	.float -2.3773813174410544e-39, -2.3774037382164835e-39, -2.377409343410341e-39, 0.0
	.float -2.3774205537980554e-39, -2.3776335511646328e-39, -2.37763915635849e-39, -2.3777904965926372e-39
	.float -2.3778353381434956e-39, -2.3778465485312102e-39, -2.3778577589189248e-39, -2.377863364112782e-39
	.float -2.3778689693066394e-39, 0.0, -2.3778745745004967e-39, -2.3778857848882113e-39
	.float -2.377896995275926e-39, -2.3779082056636405e-39, -2.3779306264390697e-39, -2.3780595458977876e-39
	.float -2.3781884653565054e-39, -2.3784294886923693e-39, -2.3785584081510872e-39, -2.378687327609805e-39
	.float -2.3787097483852343e-39, -2.3787153535790916e-39, -2.3787265639668062e-39, -2.3790292444351003e-39
	.float -2.3790516652105295e-39, -2.379062875598244e-39, -2.379118927536817e-39, -2.3791301379245317e-39
	.float -2.379152558699961e-39, -2.3791637690876755e-39, -2.379376766454253e-39, 0.0
	.float -2.379567343045401e-39, -2.3795785534331157e-39, -2.3795897638208303e-39, -2.379600974208545e-39
	.float -2.3796121845962595e-39, -2.379623394983974e-39, -2.3797579196365492e-39, -2.3797635248304065e-39
	.float -2.3798924442891244e-39, -2.379903654676839e-39, -2.380127862431131e-39, -2.3801390728188456e-39
	.float -2.3801502832065602e-39, -2.3801614935942748e-39, -2.3801727039819894e-39, -2.380183914369704e-39
	.float -2.3801951247574186e-39, -2.3802063351451332e-39, -2.3802175455328478e-39, -2.380223150726705e-39
	.float -2.3802343611144197e-39, -2.3802455715021343e-39, -2.3802679922775635e-39, -2.3802904130529927e-39
	.float -2.3803016234407073e-39, -2.3803072286345646e-39, -2.3806491454598598e-39, -2.3806939870107182e-39
	.float -2.3807051973984328e-39, -2.3807164077861474e-39, -2.380727618173862e-39, -2.3807388285615766e-39
	.float -2.3809237999588675e-39, -2.380968641509726e-39, -2.3809742467035832e-39, -2.3809798518974405e-39
	.float -2.380991062285155e-39, -2.3809966674790124e-39, -2.381007877866727e-39, -2.3812208752333043e-39
	.float -2.3813946362428806e-39, -2.381400241436738e-39, -2.3814114518244525e-39, -2.381422662212167e-39
	.float -2.3814282674060244e-39, -2.381439477793739e-39, -2.3814450829875963e-39, -2.381456293375311e-39
	.float -2.3814675037630255e-39, -2.38147871415074e-39, -2.3814899245384547e-39, -2.3815011349261693e-39
	.float -2.381512345313884e-39, -2.3815179505077412e-39, -2.381646869966459e-39, -2.3816692907418883e-39
	.float -2.3816917115173175e-39, -2.381702921905032e-39, -2.3817253426804613e-39, -2.3817477634558905e-39
	.float -2.3817701842313197e-39, -2.381792605006749e-39, -2.3818038153944635e-39, -2.381815025782178e-39
	.float -2.3818374465576073e-39, -2.3818598673330365e-39, -2.3818822881084657e-39, -2.381904708883895e-39
	.float -2.381927129659324e-39, -2.3819383400470387e-39, -2.381960760822468e-39, -2.3819719712101825e-39
	.float -2.3819943919856116e-39, -2.3820056023733262e-39, -2.3820280231487554e-39, -2.38203923353647e-39
	.float -2.3820504439241846e-39, -2.3820616543118992e-39, -2.382072864699614e-39, -2.3820840750873284e-39
	.float -2.382095285475043e-39, -2.3821064958627576e-39, -2.3821289166381868e-39, -2.382151337413616e-39
	.float -2.3821625478013306e-39, -2.3821849685767598e-39, -2.3821961789644744e-39, -2.382207389352189e-39
	.float -2.3822185997399036e-39, -2.3822298101276182e-39, -2.3822522309030474e-39, -2.3822746516784766e-39
	.float -2.3822970724539058e-39, -2.382319493229335e-39, -2.3823419140047642e-39, -2.3823531243924788e-39
	.float -2.3823643347801934e-39, -2.3823867555556226e-39, -2.3823979659433372e-39, -2.3824203867187664e-39
	.float -2.3824428074941956e-39, -2.3824540178819102e-39, -2.3824652282696248e-39, -2.3824764386573394e-39
	.float -2.3824988594327686e-39, -2.3825212802081978e-39, -2.382543700983627e-39, -2.3825549113713416e-39
	.float -2.3825773321467708e-39, -2.3825997529222e-39, -2.3826221736976292e-39, -2.3826445944730584e-39
	.float -2.3826670152484876e-39
.global lbl_80422180
lbl_80422180:
	.float -2.3827006464116314e-39, -2.3827398827686325e-39, -2.382751093156347e-39, -2.382790329513348e-39
	.float -2.3828295658703492e-39, -2.3828688022273503e-39, -2.3829080385843514e-39, -2.3829472749413525e-39
	.float -2.3829865112983536e-39, -2.3830257476553547e-39, -2.3830369580430693e-39, -2.383048168430784e-39
	.float 0.0, -2.3830593788184985e-39, 0.0, 0.0
	.float -2.383070589206213e-39, -2.3830817995939277e-39, -2.3831210359509288e-39, -2.3831322463386434e-39
	.float -2.383143456726358e-39, 0.0, 0.0, -2.3831546671140726e-39
	.float -2.3831658775017872e-39, -2.3831770878895018e-39, -2.3831882982772164e-39, -2.383199508664931e-39
	.float -2.383238745021932e-39, -2.3832499554096467e-39, -2.3833340333175062e-39, -2.3833452437052208e-39
	.float -2.383384480062222e-39, -2.383440532000795e-39, -2.3834517423885095e-39, -2.3834909787455106e-39
	.float -2.383502189133225e-39, -2.3835414254902262e-39, -2.3835974774287992e-39, -2.3836591345612295e-39
	.float -2.3836983709182306e-39, -2.3837376072752317e-39, -2.3837488176629463e-39, -2.3837880540199474e-39
	.float -2.3838272903769485e-39, -2.383911368284808e-39, -2.383950604641809e-39, -2.3839618150295237e-39
	.float -2.3839730254172383e-39, -2.3840122617742394e-39, -2.384023472161954e-39, -2.3840346825496686e-39
	.float -2.3840458929373832e-39, -2.3840571033250978e-39, -2.3840683137128124e-39, 0.0
	.float 0.0, -2.384079524100527e-39, -2.3840907344882416e-39, -2.3841019448759562e-39
	.float -2.3841131552636708e-39, 0.0, -2.3841243656513854e-39, 0.0
	.float 0.0, -2.3841355760391e-39, -2.3841467864268146e-39, -2.3841579968145292e-39
	.float -2.3841692072022438e-39, -2.384208443559245e-39, -2.384247679916246e-39, -2.384286916273247e-39
	.float -2.384326152630248e-39, -2.3843653889872492e-39, 0.0, -2.3844046253442503e-39
	.float -2.3844438617012514e-39, -2.3844830980582525e-39, -2.384567175966112e-39, -2.384606412323113e-39
	.float -2.3846176227108277e-39, -2.3846568590678288e-39, -2.3846680694555434e-39, -2.384679279843258e-39
	.float -2.3846904902309726e-39, -2.3847017006186872e-39, -2.3847129110064018e-39, -2.3847241213941164e-39
	.float -2.384774568138832e-39, -2.3848250148835478e-39, -2.3848362252712624e-39, -2.384847435658977e-39
	.float -2.3849707499238376e-39, -2.3850099862808387e-39, -2.3850211966685533e-39, -2.385032407056268e-39
	.float 0.0, -2.3850436174439825e-39, -2.385054827831697e-39, -2.3852902459737036e-39
	.float -2.385335087524562e-39, -2.3853462979122766e-39, -2.385520058921853e-39, -2.3855312693095675e-39
	.float -2.3857554770638595e-39, -2.3859965003997233e-39, -2.3860357367567244e-39, -2.386046947144439e-39
	.float -2.3860581575321536e-39, -2.3860693679198682e-39, 0.0, -2.3860805783075828e-39
	.float -2.3860917886952974e-39, -2.386102999083012e-39, -2.3861142094707266e-39, -2.3861254198584412e-39
	.float -2.3861366302461558e-39, -2.3863047860618748e-39, -2.3863496276127332e-39, -2.3863608380004478e-39
	.float -2.386400074357449e-39, -2.3865626249793106e-39, -2.3866691236625992e-39, -2.386870910641462e-39
	.float -2.3869157521923204e-39, -2.386926962580035e-39, -2.3870278560694664e-39, -2.3870726976203248e-39
	.float -2.3870839080080394e-39, -2.387167985915899e-39, -2.3872072222729e-39, 0.0
	.float -2.3872184326606146e-39, -2.387431430027192e-39, -2.3874370352210492e-39, -2.3875883754551963e-39
	.float -2.3876332170060547e-39, -2.3876444273937693e-39, -2.387655637781484e-39, -2.387694874138485e-39
	.float -2.387734110495486e-39, 0.0, -2.3877733468524872e-39, -2.3877845572402018e-39
	.float -2.3877957676279164e-39, -2.387806978015631e-39, -2.387846214372632e-39, -2.3878854507296332e-39
	.float -2.3879246870866343e-39, -2.388165710422498e-39, -2.3882049467794992e-39, -2.3882441831365003e-39
	.float -2.3882834194935014e-39, -2.3883226558505025e-39, -2.388333866238217e-39, -2.3886365467065113e-39
	.float -2.3886757830635124e-39, -2.388686993451227e-39, -2.3887430453898e-39, -2.3887542557775146e-39
	.float -2.3887934921345157e-39, -2.3888047025222303e-39, -2.388989673919521e-39, 0.0
	.float -2.3891802505106693e-39, -2.389191460898384e-39, -2.3892026712860985e-39, -2.389213881673813e-39
	.float -2.3892250920615277e-39, -2.3892363024492423e-39, -2.3893876426833894e-39, -2.3894268790403905e-39
	.float -2.3894661153973916e-39, -2.3894773257851062e-39, -2.389701533539398e-39, -2.3897127439271127e-39
	.float -2.3897239543148273e-39, -2.389735164702542e-39, -2.3897463750902565e-39, -2.389757585477971e-39
	.float -2.3897687958656857e-39, -2.3897800062534003e-39, -2.389791216641115e-39, -2.389830452998116e-39
	.float -2.3898416633858306e-39, -2.3898528737735452e-39, -2.3898921101305463e-39, -2.3899313464875474e-39
	.float -2.389942556875262e-39, -2.389981793232263e-39, -2.390318104863701e-39, -2.3903629464145595e-39
	.float -2.390374156802274e-39, -2.3903853671899887e-39, -2.3903965775777033e-39, -2.390407787965418e-39
	.float -2.3905927593627087e-39, -2.390637600913567e-39, -2.3906768372705682e-39, -2.3907160736275693e-39
	.float -2.390727284015284e-39, -2.390766520372285e-39, -2.3907777307599996e-39, -2.3910243592897208e-39
	.float -2.391198120299297e-39, -2.391237356656298e-39, -2.3912485670440127e-39, -2.3912597774317273e-39
	.float -2.3912990137887284e-39, -2.391310224176443e-39, -2.391349460533444e-39, -2.3913606709211587e-39
	.float -2.3913718813088733e-39, -2.391383091696588e-39, -2.3913943020843025e-39, -2.391405512472017e-39
	.float -2.3914167228597317e-39, -2.3914279332474463e-39, -2.391439143635161e-39, -2.3914503540228755e-39
	.float -2.39146156441059e-39, -2.3914727747983047e-39, -2.3914839851860193e-39, -2.391495195573734e-39
	.float -2.3915064059614485e-39, -2.391517616349163e-39, -2.3915288267368777e-39, -2.3915400371245923e-39
	.float -2.391551247512307e-39, -2.3915624579000215e-39, -2.391573668287736e-39, -2.3915848786754507e-39
	.float -2.3915960890631653e-39, -2.39160729945088e-39, -2.3916185098385945e-39, -2.391629720226309e-39
	.float -2.3916409306140237e-39, -2.3916521410017383e-39, -2.391663351389453e-39, -2.3916745617771675e-39
	.float -2.391685772164882e-39, -2.3916969825525967e-39, -2.3917081929403113e-39, -2.391719403328026e-39
	.float -2.3917306137157405e-39, -2.391741824103455e-39, -2.3917530344911697e-39, -2.3917642448788843e-39
	.float -2.391775455266599e-39, -2.3917866656543135e-39, -2.391797876042028e-39, -2.3918090864297427e-39
	.float -2.3918202968174573e-39, -2.391831507205172e-39, -2.3918427175928865e-39, -2.391853927980601e-39
	.float -2.3918651383683157e-39, -2.3918763487560303e-39, -2.391887559143745e-39, -2.3918987695314595e-39
	.float -2.391909979919174e-39, -2.3919211903068887e-39, -2.3919324006946033e-39, -2.391943611082318e-39
	.float -2.3919548214700324e-39, -2.391966031857747e-39, -2.3919772422454616e-39, -2.3919884526331762e-39
	.float -2.391999663020891e-39, -2.3920108734086054e-39, -2.39202208379632e-39, -2.3920332941840346e-39
	.float -2.3920445045717492e-39, -2.3920557149594638e-39, -2.3920669253471784e-39, -2.392078135734893e-39
	.float -2.3920893461226076e-39, 0.0
.global lbl_804225D8
lbl_804225D8:
	.4byte 0x801A5B34, 0x801A5BD8, 0x801A5C38, 0x801A5D5C
	.4byte 0x801A5EDC, 0x801A6044, 0x801A60E0, 0x801A60EC
	.4byte 0x801A61EC, 0x801A6284, 0x801A6544, 0x801A66E4
	.4byte 0x801A678C, 0x801A6898, 0x801A6960, 0x801A6DA4
	.4byte 0x801A7290, 0x801A76A0, 0x801A7814, 0x801A7A10
	.4byte 0x801A7F50, 0x801A81DC, 0x801A83D8, 0x801A8568
	.4byte 0x801A86C4, 0x801A8868, 0x801A8A8C, 0x801A8C40
	.4byte 0x801A8EFC, 0x801A9040, 0x801A919C, 0x801A94C8
	.4byte 0x801A97C4, 0x801A991C, 0x801A9B50, 0x801A9DC0
	.4byte 0x801AA038, 0x801AA2FC, 0x801AA57C, 0x801AA770
	.4byte 0x801AAB48, 0x801AAD20, 0x801AAE50, 0x801AAEF0
	.4byte 0x801AB120, 0x801AB39C, 0x801AB5A0, 0x801AB724
	.4byte 0x801AB820, 0x801AB8F8, 0x801AB9AC, 0x801ABA9C
	.4byte 0x801ABB68, 0x801ABC34, 0x801ABCD8, 0x801ABDA4
	.4byte 0x801ABE1C, 0x801ABEF0, 0x801ABF6C, 0x801ABFDC
	.4byte 0x801AC0E0, 0x801AC504, 0x801AC590, 0x801AC6B4
	.4byte 0x801AC78C, 0x801AC900, 0x801ACB94, 0x801ACEFC
	.4byte 0x801AD27C, 0x801AD604, 0x801AD9E4, 0x801ADB90
	.4byte 0x801ADC98, 0x801ADE20, 0x801ADF78, 0x801ADFB0
	.4byte 0x801AE0CC, 0x801AE8B4, 0x801AE8C0, 0x801AEAAC
	.4byte 0x801AEC80, 0x801AED4C, 0x801AEE94, 0x801AF020
	.4byte 0x801AF164, 0x801AF28C, 0x801AF3BC, 0x801AF4CC
	.4byte 0x801AF5E0, 0x801AF834, 0x801AF9A0, 0x801AF9F4
	.4byte 0x801AFC80, 0x801AFE8C, 0x801B0098, 0x801B0238
	.4byte 0x801B0370, 0x801B0594, 0x801B07F4, 0x801B0BB0
	.4byte 0x801B0D44, 0x801B0FAC, 0x801B139C, 0x801B15E0
	.4byte 0x801B173C, 0x801B1944, 0x801B1A38, 0x801B1C5C
	.4byte 0x801B21B8, 0x801B2280, 0x801B22EC, 0x801B24A0
	.4byte 0x801B27BC, 0x801B2854, 0x801B29DC, 0x801B2C28
	.4byte 0x801B3804, 0x801B39C4, 0x801B3EA4, 0x801B4094
	.4byte 0x801B4288, 0x801B4548, 0x801B473C, 0x801B492C
	.4byte 0x801B4B44, 0x801B4D60, 0x801B4F78, 0x801B5260
	.4byte 0x801B5478, 0x801B5608, 0x801B57A8, 0x801B5878
	.4byte 0x801B5B28, 0x801B5DA8, 0x801B5FA4, 0x801B61A0
	.4byte 0x801B61F0, 0x801B629C, 0x801B6370, 0x801B6494
	.4byte 0x801B66C4, 0x801B696C, 0x801B6A48, 0x801B6BC0
	.4byte 0x801B70D8, 0x801B71FC, 0x801B7288, 0x801B733C
	.4byte 0x801B7494, 0x801B75C0, 0x801B76C4, 0x801B78E4
	.4byte 0x801B79F0, 0x801B7C08, 0x801B7DA0, 0x801B7E34
	.4byte 0x801B7F10, 0x801B8074, 0x801B8114, 0x801B8354
	.4byte 0x801B84D8, 0x801B8A04, 0x801B8C64, 0x801B8E14
	.4byte 0x801B8FD4, 0x801B91C4, 0x801B9464, 0x801B96D4
	.4byte 0x801B9B80, 0x801B9F94, 0x801BA3C4, 0x801BA634
	.4byte 0x801BA82C, 0x801BB1E8, 0x801BBB10, 0x801BBDC4
	.4byte 0x801BBFD0, 0x801BC158, 0x801BC524, 0x801BCB1C
	.4byte 0x801BCBF0, 0x801BCD60, 0x801BCEF8, 0x801BD134
	.4byte 0x801BD37C, 0x801BD810, 0x801BDB48, 0x801BDC24
	.4byte 0x801BDF38, 0x801BE174, 0x801BE324, 0x801BE488
	.4byte 0x801BE9A4, 0x801BEC5C, 0x801BED64, 0x801BEFC8
	.4byte 0x801BF040, 0x801BF114
.global lbl_804228F0
lbl_804228F0:
	.incbin "baserom.dol", 0x41E9F0, 0x140
.global lbl_80422A30
lbl_80422A30:
	.float -2.616852014606451e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6168800405757375e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6169136717388813e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.616947302902025e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39, -2.6175526638386134e-39
	.float -2.616980934065169e-39, -2.6170145652283127e-39, -2.6170481963914565e-39, -2.6170818275546003e-39
	.float -2.617115458717744e-39, -2.617149089880888e-39, -2.6171827210440316e-39, -2.6172163522071754e-39
	.float -2.6172499833703192e-39, -2.617283614533463e-39, -2.6173172456966068e-39, -2.6173508768597506e-39
	.float -2.6173845080228944e-39, -2.6174181391860382e-39, -2.617451770349182e-39, -2.6174854015123258e-39
	.float -2.6175190326754696e-39, 0.0
.global lbl_80422B58
lbl_80422B58:
	.float 2.5625, 0.0, 3.390625, 0.0
	.float 4.4765625, 0.0, 6.1103515625, 0.0
	.float 7.762939453125, 0.0, 10.9073486328125, 0.0
	.float 14.192092895507812, 0.0, 18.98023223876953, 0.0
.global lbl_80422B98
lbl_80422B98:
	.incbin "baserom.dol", 0x41EC98, 0x1B0
.global lbl_80422D48
lbl_80422D48:
	.incbin "baserom.dol", 0x41EE48, 0x48
.global lbl_80422D90
lbl_80422D90:
	.4byte 0x801CAC14, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAC7C, 0x801CABC4, 0x801CAC68, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAB7C
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAC14, 0x801CAD74, 0x801CACF8, 0x801CAB7C
	.4byte 0x801CAC7C, 0x801CABC4, 0x801CAC68, 0x801CAD74
	.4byte 0x801CAB7C, 0x801CAD74, 0x801CAD74, 0x801CAD74
	.4byte 0x801CAD74, 0x801CAD5C, 0x801CAB7C, 0x801CACD4
	.4byte 0x801CAD74, 0x801CAD74, 0x801CAD30, 0x801CAD74
	.4byte 0x801CAB7C, 0x801CAD74, 0x801CAD74, 0x801CAB7C
	.4byte 0x801CA878, 0x801CA8A8, 0x801CA8A8, 0x801CA88C
	.4byte 0x801CA8A8, 0x801CA8A8, 0x801CA8A8, 0x801CA8A8
	.4byte 0x801CA8A8, 0x801CA8A8, 0x801CA8A8, 0x801CA870
	.4byte 0x801CA8A8, 0x801CA868, 0x801CA8A8, 0x801CA8A8
	.4byte 0x801CA894
.global lbl_80422EB4
lbl_80422EB4:
	.4byte 0x801CAE6C, 0x801CAE78, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE78, 0x801CAE78, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE78, 0x801CAE78, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE28, 0x801CAE78, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE78, 0x801CAE28, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE78, 0x801CAE78, 0x801CAE78, 0x801CAE4C
	.4byte 0x801CAE78, 0x801CAE78, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE78, 0x801CAE5C, 0x801CAE78, 0x801CAE78
	.4byte 0x801CAE6C
.global lbl_80422F38
lbl_80422F38:
	.4byte 0x801CB0D4, 0x801CB0E0, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0E0, 0x801CB0E0, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0E0, 0x801CB0E0, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB070, 0x801CB0E0, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0E0, 0x801CB070, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0E0, 0x801CB0E0, 0x801CB0E0, 0x801CB0B4
	.4byte 0x801CB0E0, 0x801CB0E0, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0E0, 0x801CB0C4, 0x801CB0E0, 0x801CB0E0
	.4byte 0x801CB0D4, 0x801CC584, 0x801CC77C, 0x801CC58C
	.4byte 0x801CC594, 0x801CC5BC, 0x801CC77C, 0x801CC59C
	.4byte 0x801CC5AC, 0x801CC5B4
.global lbl_80422FE0
lbl_80422FE0:
	.4byte 0x801CD080, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD080, 0x801CD080, 0x801CD080, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD3AC, 0x801CD068
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD1BC, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD080, 0x801CD3AC, 0x801CD0D8, 0x801CD068
	.4byte 0x801CD080, 0x801CD080, 0x801CD080, 0x801CD3AC
	.4byte 0x801CD068, 0x801CD3AC, 0x801CD3AC, 0x801CD3AC
	.4byte 0x801CD3AC, 0x801CD3B4, 0x801CD068, 0x801CD0C4
	.4byte 0x801CD3AC, 0x801CD3AC, 0x801CD104, 0x801CD3AC
	.4byte 0x801CD068, 0x801CD3AC, 0x801CD3AC, 0x801CD068
.global lbl_804230C0
lbl_804230C0:
	.4byte 0x801CDA38, 0x801CDA40, 0x801CDA48, 0x801CDA50
	.4byte 0x801CDA58, 0x801CDA6C, 0x801CDA74, 0x801CDA7C
.global lbl_804230E0
lbl_804230E0:
	.4byte 0x801CD8A0, 0x801CD8A8, 0x801CD8B0, 0x801CD8B8
	.4byte 0x801CD8C0, 0x801CD8D4, 0x801CD8DC, 0x801CD8E4
	.4byte 0x801D0050, 0x801CFD58, 0x801CFE20, 0x801D0050
	.4byte 0x801CFE68, 0x801D0050, 0x801D0050, 0x801D0050
	.4byte 0x801CFEB8, 0x801D0050, 0x801D0050, 0x801D0050
	.4byte 0x801D0050, 0x801D0050, 0x801D0050, 0x801D0050
	.4byte 0x801CFEB8, 0x801D0500, 0x801D01A4, 0x801D026C
	.4byte 0x801D0500, 0x801D02B4, 0x801D0500, 0x801D0500
	.4byte 0x801D0500, 0x801D0304, 0x801D0500, 0x801D0500
	.4byte 0x801D0500, 0x801D0500, 0x801D0500, 0x801D0500
	.4byte 0x801D0500, 0x801D0304
.global lbl_80423188
lbl_80423188:
	.float -2.6950220481403466e-39, -2.694713762478195e-39, -2.6947361832536243e-39, -2.6947586040290535e-39
	.float -2.694803445579912e-39, -2.694825866355341e-39, -2.6950220481403466e-39, -2.6947810248044827e-39
	.float -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950220481403466e-39
	.float -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950220481403466e-39
	.float -2.6948482871307703e-39, -2.6948707079061995e-39, -2.6948931286816287e-39, -2.694915549457058e-39
	.float -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950220481403466e-39, -2.6950052325587747e-39
	.float -2.694937970232487e-39, -2.6949603910079163e-39, -2.6949828117833455e-39, 0.0
.global lbl_804231F8
lbl_804231F8:
	.4byte 0x801D6468, 0x801D6488, 0x801D6460, 0x801D6488
	.4byte 0x801D6470, 0x801D6478, 0x801D6480
.global lbl_80423214
lbl_80423214:
	.4byte 0x801D66AC, 0x801D66CC, 0x801D66A4, 0x801D66CC
	.4byte 0x801D66B4, 0x801D66BC, 0x801D66C4
.global lbl_80423230
lbl_80423230:
	.skip 0xC
.global lbl_8042323C
lbl_8042323C:
	.incbin "baserom.dol", 0x41F33C, 0x10
.global lbl_8042324C
lbl_8042324C:
	.skip 0x14
.global lbl_80423260
lbl_80423260:
	.float 3.587324068671532e-43, 7.174648137343064e-43, 1.0761972206014595e-42, 1.4349296274686127e-42
	.float 1.793662034335766e-42, 2.152394441202919e-42, 2.5111268480700722e-42, 2.8698592549372254e-42
	.float 3.2285916618043785e-42, 4.304788882405838e-42, 4.663521289272991e-42, 5.3809861030072976e-42
	.float 6.81591573047591e-42, 7.174648137343063e-42, 8.250845357944523e-42, 0.0
.global lbl_804232A0
lbl_804232A0:
	.skip 0x28
