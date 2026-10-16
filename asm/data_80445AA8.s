	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

# Continuation of data_8043BEF0.s after arc.c's string (0x80445AA8).
	.balign 8

.global lbl_80445AA8
lbl_80445AA8:
	.ascii "<< RVL_SDK - NCD \trelease build: Mar  9 2007 15:08:17 (0x4199_60831) >>"
	.byte 0x00
.global lbl_80445AF0
lbl_80445AF0:
	.ascii "NCDSetNwc24Permission"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B08
lbl_80445B08:
	.ascii "NCDGetCurrentIfConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B20
lbl_80445B20:
	.ascii "NCDGetCurrentIpConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B38
lbl_80445B38:
	.ascii "/dev/net/ncd/manage"
	.byte 0x00
.global lbl_80445B4C
lbl_80445B4C:
	.ascii "NCDiGetEnabledConfigList"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445B68
lbl_80445B68:
	.ascii "ncdsystem.c"
	.byte 0x00
.global lbl_80445B74
lbl_80445B74:
	.ascii "Could not reserve heap for NCD library from IPC arena"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445BB0
lbl_80445BB0:
	.ascii "\xff\xff\xff\xff"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445BC0
lbl_80445BC0:
	.ascii "/dev/net/wd/command"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445BD8
lbl_80445BD8:
	.2byte 0x7764, 0x705F, 0x7061, 0x7265, 0x6E74, 0x2E63, 0x0000, 0x0000
	.2byte 0x696E, 0x7661, 0x6C69, 0x6420, 0x7365, 0x676D, 0x656E, 0x7420
	.2byte 0x7265, 0x6769, 0x6F6E, 0x203A, 0x2025, 0x3038, 0x585B, 0x2530
	.2byte 0x3858, 0x5D0A, 0x0000, 0x0000, 0x6661, 0x696C, 0x6564, 0x2074
	.2byte 0x6F20, 0x6372, 0x6561, 0x7465, 0x2062, 0x6C6F, 0x636B, 0x2D74
	.2byte 0x7261, 0x6E73, 0x6665, 0x7220, 0x696E, 0x666F, 0x726D, 0x6174
	.2byte 0x696F, 0x6E2E, 0x0A00, 0x0000, 0x3C3C, 0x2052, 0x564C, 0x5F53
	.2byte 0x444B, 0x202D, 0x204D, 0x5020, 0x0972, 0x656C, 0x6561, 0x7365
	.2byte 0x2062, 0x7569, 0x6C64, 0x3A20, 0x4170, 0x7220, 0x3136, 0x2032
	.2byte 0x3030, 0x3720, 0x3032, 0x3A35, 0x323A, 0x3236, 0x2028, 0x3078
	.2byte 0x3431, 0x3939, 0x5F36, 0x3038, 0x3331, 0x2920, 0x3E3E, 0x0000
	.2byte 0x802F, 0x32C4, 0x802F, 0x32DC, 0x802F, 0x328C, 0x802F, 0x32F0
	.2byte 0x802F, 0x328C, 0x802F, 0x32F8, 0x802F, 0x328C, 0x0000, 0x0000
.global lbl_80445CA8
lbl_80445CA8:
	.ascii "<< RVL_SDK - MPDL \trelease build: Mar  9 2007 15:08:14 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s:%d:panic! "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "mpdlsystem.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "\n\n(program is terminated)"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445D30
lbl_80445D30:
	.ascii "already MPDL is running now.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445D50
lbl_80445D50:
	.ascii "failed to allocate enough memory to startup MPDL.\n"
	.byte 0x00
	.byte 0x00
.global lbl_80445D84
lbl_80445D84:
	.ascii "MPDL is not running now.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445DA0
lbl_80445DA0:
	.ascii "Unknown SOStartup Error: %d\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< REX-PPC 1.0.0.1 (RevoEX-1.0plus1) REL 070416023413 >>"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "<< RVL_SDK - SO \trelease build: Mar  9 2007 15:08:35 (0x4199_60831) >>"
	.byte 0x00
	.byte 0x00
.global lbl_80445E48
lbl_80445E48:
	.float 2.077252536647478e-10, 2.1682017292690148e-10, 2.123108217011449e-10, 7.588077264803667e+31
	.float -4.3475565115370315e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.3475789323124607e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347545301149317e-39
	.float -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.347545301149317e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39
	.float -4.347584537506318e-39, -4.347584537506318e-39, -4.347584537506318e-39, -4.3475565115370315e-39
	.float -4.347567721924746e-39, -4.347534090761602e-39
.global lbl_80445EE0
lbl_80445EE0:
	.4byte 0x802F5970, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5980, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5968
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5968, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5984
	.4byte 0x802F5984, 0x802F5984, 0x802F5984, 0x802F5970
	.4byte 0x802F5978, 0x802F5960
.global lbl_80445F68
lbl_80445F68:
	.float -4.3503310824963946e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.350353503271824e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39
	.float -4.3503647136595384e-39, -4.3503647136595384e-39, -4.3503647136595384e-39, -4.350342292884109e-39
	.float -4.3503647136595384e-39, 0.0
.global lbl_80445FE0
lbl_80445FE0:
	.ascii "%d.%d.%d.%d"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80445FF0
lbl_80445FF0:
	.ascii "NCDGetCurrentIpConfig err = %d\n"
	.byte 0x00
	.ascii "NHTTP_bgnend.c"
	.byte 0x00
	.byte 0x00
	.ascii "NCDGetCurrentIpConfig"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446038
lbl_80446038:
	.ascii "*warning: %d connections rests! Please free connections.\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446078
lbl_80446078:
	.ascii "NHTTPi_CheckCurrentThread"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "%s:illegal thread\n"
	.byte 0x00
	.byte 0x00
	.ascii "NHTTP_os_RVL.c"
	.byte 0x00
	.byte 0x00
.global lbl_804460B8
lbl_804460B8:
	.ascii "https://"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804460C8
lbl_804460C8:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446110
lbl_80446110:
	.ascii "CONNECT "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii " HTTP/1.1\r\n"
	.byte 0x00
	.ascii "Content-Length: 0\r\nPragma: no-cache\r\n"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Proxy-Authorization: Basic "
	.byte 0x00
.global lbl_8044616C
lbl_8044616C:
	.ascii "Content-Length: "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Authorization: Basic "
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Content-Length"
	.byte 0x00
	.byte 0x00
	.ascii "Connection"
	.byte 0x00
	.byte 0x00
	.ascii "Keep-Alive"
	.byte 0x00
	.byte 0x00
	.ascii "Transfer-Encoding"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_804461D8
lbl_804461D8:
	.ascii "[no-auth]"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "Using proxy server %s:%d (%s/%s).\n"
	.byte 0x00
	.byte 0x00
	.ascii "NHTTPSetProxy failed.(%d)\n"
	.byte 0x00
	.byte 0x00
	.ascii "d_nhttp.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.ascii "NHTTPSetProxy"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446240
lbl_80446240:
	.float 2.077252536647478e-10, 2.1682017292690148e-10, 2.2141727340496686e-10, 0.0
	.float -4.4167638400931055e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.416786260868535e-39
	.float -4.416696577766818e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.41671339334839e-39
	.float -4.417582198396271e-39, -4.417582198396271e-39, -4.417582198396271e-39, -4.416898364745681e-39
	.float -4.417582198396271e-39, -4.416730208929962e-39, -4.417582198396271e-39, -4.417582198396271e-39
	.float -4.4167414193176763e-39, 0.0
.global lbl_804462D8
lbl_804462D8:
	.float -4.4184117670871515e-39, -4.418322083985435e-39, -4.418389346311722e-39, -4.4184117670871515e-39
	.float -4.418400556699437e-39, -4.4184117670871515e-39, -4.4184117670871515e-39, -4.4184117670871515e-39
	.float -4.4184117670871515e-39, -4.418322083985435e-39, -4.418389346311722e-39, 0.0
	.float 2.2137804089883417e-10, 4.543564540759912e+30, 2.2499760388150492e-10, 1.6337938291144383e-07
	.float 7.675228243569358e+28, 2.2137804089883417e-10, 4.543564540759912e+30, 2.2499760388150492e-10
	.float 1.6338331931819994e-07, 3.287298120782734e+21, 1.8316061534902986e+31, 2.72716664385722e+23
	.float 2.2137804089883417e-10, 4.543564540759912e+30, 2.2499760388150492e-10, 1.6338331931819994e-07
	.float 3.287298120782734e+21, 1.8316061534902986e+31, 1.0837462143304362e+21
.global lbl_80446354
lbl_80446354:
	.ascii "NWC24Config.c"
	.byte 0x00
	.byte 0x00
	.byte 0x00
.global lbl_80446364
lbl_80446364:
	.ascii "stopped."
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
