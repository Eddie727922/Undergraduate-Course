
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop
    1200:	f3 0f 1e fa          	endbr64
    1204:	68 1d 00 00 00       	push   $0x1d
    1209:	f2 e9 11 fe ff ff    	bnd jmp 1020 <_init+0x20>
    120f:	90                   	nop

Disassembly of section .plt.got:

0000000000001210 <__cxa_finalize@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001220 <getenv@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6ee8 <getenv@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <free@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6ef0 <free@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6ef8 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f00 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <__read_chk@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f08 <__read_chk@GLIBC_2.4>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <puts@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f10 <puts@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <write@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f18 <write@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <strlen@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f20 <strlen@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <alarm@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <close@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f40 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f48 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f50 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f58 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <memcpy@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f60 <memcpy@GLIBC_2.14>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <malloc@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f68 <malloc@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <fflush@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f70 <fflush@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__isoc99_sscanf@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f78 <__isoc99_sscanf@GLIBC_2.7>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fgets_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6f80 <__fgets_chk@GLIBC_2.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__printf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <fopen@plt>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <gethostname@plt>:
    1380:	f3 0f 1e fa          	endbr64
    1384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <exit@plt>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <connect@plt>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__fprintf_chk@plt>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <sleep@plt>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <__ctype_b_loc@plt>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013e0 <__sprintf_chk@plt>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <socket@plt>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001400 <_start>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	31 ed                	xor    %ebp,%ebp
    1406:	49 89 d1             	mov    %rdx,%r9
    1409:	5e                   	pop    %rsi
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1411:	50                   	push   %rax
    1412:	54                   	push   %rsp
    1413:	45 31 c0             	xor    %r8d,%r8d
    1416:	31 c9                	xor    %ecx,%ecx
    1418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14e9 <main>
    141f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    1425:	f4                   	hlt
    1426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <deregister_tm_clones>:
    1430:	48 8d 3d 29 70 00 00 	lea    0x7029(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1437:	48 8d 05 22 70 00 00 	lea    0x7022(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    143e:	48 39 f8             	cmp    %rdi,%rax
    1441:	74 15                	je     1458 <deregister_tm_clones+0x28>
    1443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    144a:	48 85 c0             	test   %rax,%rax
    144d:	74 09                	je     1458 <deregister_tm_clones+0x28>
    144f:	ff e0                	jmp    *%rax
    1451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1458:	c3                   	ret
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <register_tm_clones>:
    1460:	48 8d 3d f9 6f 00 00 	lea    0x6ff9(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1467:	48 8d 35 f2 6f 00 00 	lea    0x6ff2(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    146e:	48 29 fe             	sub    %rdi,%rsi
    1471:	48 89 f0             	mov    %rsi,%rax
    1474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1478:	48 c1 f8 03          	sar    $0x3,%rax
    147c:	48 01 c6             	add    %rax,%rsi
    147f:	48 d1 fe             	sar    $1,%rsi
    1482:	74 14                	je     1498 <register_tm_clones+0x38>
    1484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    148b:	48 85 c0             	test   %rax,%rax
    148e:	74 08                	je     1498 <register_tm_clones+0x38>
    1490:	ff e0                	jmp    *%rax
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1498:	c3                   	ret
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0:	f3 0f 1e fa          	endbr64
    14a4:	80 3d dd 6f 00 00 00 	cmpb   $0x0,0x6fdd(%rip)        # 8488 <completed.0>
    14ab:	75 2b                	jne    14d8 <__do_global_dtors_aux+0x38>
    14ad:	55                   	push   %rbp
    14ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    14b5:	00 
    14b6:	48 89 e5             	mov    %rsp,%rbp
    14b9:	74 0c                	je     14c7 <__do_global_dtors_aux+0x27>
    14bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 7008 <__dso_handle>
    14c2:	e8 49 fd ff ff       	call   1210 <__cxa_finalize@plt>
    14c7:	e8 64 ff ff ff       	call   1430 <deregister_tm_clones>
    14cc:	c6 05 b5 6f 00 00 01 	movb   $0x1,0x6fb5(%rip)        # 8488 <completed.0>
    14d3:	5d                   	pop    %rbp
    14d4:	c3                   	ret
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	c3                   	ret
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <frame_dummy>:
    14e0:	f3 0f 1e fa          	endbr64
    14e4:	e9 77 ff ff ff       	jmp    1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9:	f3 0f 1e fa          	endbr64
    14ed:	53                   	push   %rbx                     # 压入rbx
    14ee:	83 ff 01             	cmp    $0x1,%edi                # %edi保存argc，%rsi保存argv[]
    14f1:	0f 84 15 01 00 00    	je     160c <main+0x123>
    14f7:	48 89 f3             	mov    %rsi,%rbx
    14fa:	83 ff 02             	cmp    $0x2,%edi
    14fd:	0f 85 3e 01 00 00    	jne    1641 <main+0x158>        # else的情况
    1503:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1507:	48 8d 35 30 32 00 00 	lea    0x3230(%rip),%rsi        # 473e <transition_table+0x3de>
    150e:	e8 5d fe ff ff       	call   1370 <fopen@plt>
    1513:	48 89 05 76 6f 00 00 	mov    %rax,0x6f76(%rip)        # 8490 <infile>
    151a:	48 85 c0             	test   %rax,%rax
    151d:	0f 84 fc 00 00 00    	je     161f <main+0x136>

    1523:	e8 4e 08 00 00       	call   1d76 <initialize_bomb>
    1528:	48 89 c3             	mov    %rax,%rbx
    152b:	48 8d 3d 5e 2b 00 00 	lea    0x2b5e(%rip),%rdi        # 4090 <_IO_stdin_used+0x90>
    1532:	e8 39 fd ff ff       	call   1270 <puts@plt>
    1537:	48 8d 3d 8a 2b 00 00 	lea    0x2b8a(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    153e:	e8 2d fd ff ff       	call   1270 <puts@plt>
    1543:	e8 bf 0b 00 00       	call   2107 <read_line>
    1548:	48 89 c7             	mov    %rax,%rdi
    154b:	e8 34 02 00 00       	call   1784 <phase_1>
    1550:	48 89 df             	mov    %rbx,%rdi
    1553:	e8 ed 0c 00 00       	call   2245 <phase_defused>
    1558:	48 8d 3d a9 2b 00 00 	lea    0x2ba9(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    155f:	e8 0c fd ff ff       	call   1270 <puts@plt>
    1564:	e8 9e 0b 00 00       	call   2107 <read_line>
    1569:	48 89 c7             	mov    %rax,%rdi
    156c:	e8 37 02 00 00       	call   17a8 <phase_2>
    1571:	48 89 df             	mov    %rbx,%rdi
    1574:	e8 cc 0c 00 00       	call   2245 <phase_defused>
    1579:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    1580:	e8 eb fc ff ff       	call   1270 <puts@plt>
    1585:	e8 7d 0b 00 00       	call   2107 <read_line>
    158a:	48 89 c7             	mov    %rax,%rdi
    158d:	e8 93 02 00 00       	call   1825 <phase_3>
    1592:	48 89 df             	mov    %rbx,%rdi
    1595:	e8 ab 0c 00 00       	call   2245 <phase_defused>
    159a:	48 8d 3d b7 2a 00 00 	lea    0x2ab7(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15a1:	e8 ca fc ff ff       	call   1270 <puts@plt>
    15a6:	e8 5c 0b 00 00       	call   2107 <read_line>
    15ab:	48 89 c7             	mov    %rax,%rdi
    15ae:	e8 6e 03 00 00       	call   1921 <phase_4>
    15b3:	48 89 df             	mov    %rbx,%rdi
    15b6:	e8 8a 0c 00 00       	call   2245 <phase_defused>
    15bb:	48 8d 3d 76 2b 00 00 	lea    0x2b76(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    15c2:	e8 a9 fc ff ff       	call   1270 <puts@plt>
    15c7:	e8 3b 0b 00 00       	call   2107 <read_line>
    15cc:	48 89 c7             	mov    %rax,%rdi
    15cf:	e8 cc 03 00 00       	call   19a0 <phase_5>
    15d4:	48 89 df             	mov    %rbx,%rdi
    15d7:	e8 69 0c 00 00       	call   2245 <phase_defused>
    15dc:	48 8d 3d 8e 2a 00 00 	lea    0x2a8e(%rip),%rdi        # 4071 <_IO_stdin_used+0x71>
    15e3:	e8 88 fc ff ff       	call   1270 <puts@plt>
    15e8:	e8 1a 0b 00 00       	call   2107 <read_line>
    15ed:	48 89 c7             	mov    %rax,%rdi
    15f0:	e8 fb 03 00 00       	call   19f0 <phase_6>
    15f5:	48 89 df             	mov    %rbx,%rdi
    15f8:	e8 48 0c 00 00       	call   2245 <phase_defused>
    15fd:	48 89 df             	mov    %rbx,%rdi
    1600:	e8 2b fc ff ff       	call   1230 <free@plt>
    1605:	b8 00 00 00 00       	mov    $0x0,%eax
    160a:	5b                   	pop    %rbx
    160b:	c3                   	ret

    160c:	48 8b 05 5d 6e 00 00 	mov    0x6e5d(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    1613:	48 89 05 76 6e 00 00 	mov    %rax,0x6e76(%rip)        # 8490 <infile>
    161a:	e9 04 ff ff ff       	jmp    1523 <main+0x3a>         # 转回initialize_bomb
    161f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1623:	48 8b 13             	mov    (%rbx),%rdx
    1626:	48 8d 35 d7 29 00 00 	lea    0x29d7(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    162d:	bf 01 00 00 00       	mov    $0x1,%edi
    1632:	e8 29 fd ff ff       	call   1360 <__printf_chk@plt>
    1637:	bf 08 00 00 00       	mov    $0x8,%edi
    163c:	e8 4f fd ff ff       	call   1390 <exit@plt>
    1641:	48 8b 16             	mov    (%rsi),%rdx
    1644:	48 8d 35 d6 29 00 00 	lea    0x29d6(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    164b:	bf 01 00 00 00       	mov    $0x1,%edi
    1650:	b8 00 00 00 00       	mov    $0x0,%eax
    1655:	e8 06 fd ff ff       	call   1360 <__printf_chk@plt>
    165a:	bf 08 00 00 00       	mov    $0x8,%edi
    165f:	e8 2c fd ff ff       	call   1390 <exit@plt>

0000000000001664 <abracadabra>:
    1664:	f3 0f 1e fa          	endbr64
    1668:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    166f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1676:	00 00 
    1678:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    167f:	00 
    1680:	31 c0                	xor    %eax,%eax
    1682:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1687:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    168c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1691:	48 8d 35 c3 2a 00 00 	lea    0x2ac3(%rip),%rsi        # 415b <_IO_stdin_used+0x15b>
    1698:	48 8d 3d e9 6f 00 00 	lea    0x6fe9(%rip),%rdi        # 8688 <input_strings+0x168>
    169f:	e8 9c fc ff ff       	call   1340 <__isoc99_sscanf@plt>
    16a4:	83 f8 03             	cmp    $0x3,%eax
    16a7:	74 20                	je     16c9 <abracadabra+0x65>
    16a9:	b8 00 00 00 00       	mov    $0x0,%eax
    16ae:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    16b5:	00 
    16b6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16bd:	00 00 
    16bf:	75 2b                	jne    16ec <abracadabra+0x88>
    16c1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16c8:	c3                   	ret
    16c9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16ce:	48 8d 35 ab 2a 00 00 	lea    0x2aab(%rip),%rsi        # 4180 <_IO_stdin_used+0x180>
    16d5:	e8 4d 06 00 00       	call   1d27 <strings_not_equal>
    16da:	85 c0                	test   %eax,%eax
    16dc:	74 07                	je     16e5 <abracadabra+0x81>
    16de:	b8 00 00 00 00       	mov    $0x0,%eax
    16e3:	eb c9                	jmp    16ae <abracadabra+0x4a>
    16e5:	b8 01 00 00 00       	mov    $0x1,%eax
    16ea:	eb c2                	jmp    16ae <abracadabra+0x4a>
    16ec:	e8 af fb ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000016f1 <alohomora>:
    16f1:	f3 0f 1e fa          	endbr64
    16f5:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    16fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1703:	00 00 
    1705:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    170a:	31 c0                	xor    %eax,%eax
    170c:	48 8d 05 85 6e 00 00 	lea    0x6e85(%rip),%rax        # 8598 <input_strings+0x78>
    1713:	eb 04                	jmp    1719 <alohomora+0x28>
    1715:	48 83 c0 01          	add    $0x1,%rax
    1719:	80 38 00             	cmpb   $0x0,(%rax)
    171c:	75 f7                	jne    1715 <alohomora+0x24>
    171e:	48 83 e8 01          	sub    $0x1,%rax
    1722:	48 89 e2             	mov    %rsp,%rdx
    1725:	eb 0a                	jmp    1731 <alohomora+0x40>
    1727:	88 0a                	mov    %cl,(%rdx)
    1729:	48 83 c2 01          	add    $0x1,%rdx
    172d:	48 83 e8 01          	sub    $0x1,%rax
    1731:	0f b6 08             	movzbl (%rax),%ecx
    1734:	80 f9 20             	cmp    $0x20,%cl
    1737:	74 0c                	je     1745 <alohomora+0x54>
    1739:	48 8d 35 58 6e 00 00 	lea    0x6e58(%rip),%rsi        # 8598 <input_strings+0x78>
    1740:	48 39 f0             	cmp    %rsi,%rax
    1743:	75 e2                	jne    1727 <alohomora+0x36>
    1745:	c6 02 00             	movb   $0x0,(%rdx)
    1748:	48 89 e7             	mov    %rsp,%rdi
    174b:	48 8d 35 56 2a 00 00 	lea    0x2a56(%rip),%rsi        # 41a8 <_IO_stdin_used+0x1a8>
    1752:	e8 d0 05 00 00       	call   1d27 <strings_not_equal>
    1757:	85 c0                	test   %eax,%eax
    1759:	74 1d                	je     1778 <alohomora+0x87>
    175b:	b8 00 00 00 00       	mov    $0x0,%eax
    1760:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1765:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    176c:	00 00 
    176e:	75 0f                	jne    177f <alohomora+0x8e>
    1770:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    1777:	c3                   	ret
    1778:	b8 01 00 00 00       	mov    $0x1,%eax
    177d:	eb e1                	jmp    1760 <alohomora+0x6f>
    177f:	e8 1c fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001784 <phase_1>:
    1784:	f3 0f 1e fa          	endbr64
    1788:	48 83 ec 08          	sub    $0x8,%rsp
    178c:	48 8d 35 3d 2a 00 00 	lea    0x2a3d(%rip),%rsi        # 41d0 <_IO_stdin_used+0x1d0>
    1793:	e8 8f 05 00 00       	call   1d27 <strings_not_equal>
    1798:	85 c0                	test   %eax,%eax
    179a:	75 05                	jne    17a1 <phase_1+0x1d>
    179c:	48 83 c4 08          	add    $0x8,%rsp
    17a0:	c3                   	ret
    17a1:	e8 96 08 00 00       	call   203c <explode_bomb>
    17a6:	eb f4                	jmp    179c <phase_1+0x18>

00000000000017a8 <phase_2>:
    17a8:	f3 0f 1e fa          	endbr64
    17ac:	53                   	push   %rbx
    17ad:	48 83 ec 20          	sub    $0x20,%rsp
    17b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17b8:	00 00 
    17ba:	48 89 44 24 18       	mov    %rax,0x18(%rsp)           # buffer overflow attack

    17bf:	31 c0                	xor    %eax,%eax                 # 用异或将eax清零，同时rax高32位也变为0
    17c1:	48 89 e6             	mov    %rsp,%rsi                 # 栈指针的值赋给rsi（第二个参数）
    17c4:	e8 f9 08 00 00       	call   20c2 <read_six_numbers>   # 读取六个数，注意六个数的起始位置刚好为此时栈指针的位置
    17c9:	83 3c 24 00          	cmpl   $0x0,(%rsp)               # 比较第一个数是否为0，不是的话跳转爆炸
    17cd:	75 07                	jne    17d6 <phase_2+0x2e>
    17cf:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)            # 比较第二个数是否为1，是的话跳过爆炸
    17d4:	74 05                	je     17db <phase_2+0x33>
    17d6:	e8 61 08 00 00       	call   203c <explode_bomb>
    17db:	bb 02 00 00 00       	mov    $0x2,%ebx                 # ebx=2
    17e0:	eb 03                	jmp    17e5 <phase_2+0x3d>
    17e2:	83 c3 01             	add    $0x1,%ebx
    17e5:	83 fb 05             	cmp    $0x5,%ebx                 # 比较ebx中的数与5的大小，大的话停
    17e8:	7f 20                	jg     180a <phase_2+0x62>
    17ea:	48 63 d3             	movslq %ebx,%rdx                 # 32位ebx扩展到64位rdx，rdx=ebx
    17ed:	8d 4b fe             	lea    -0x2(%rbx),%ecx           # rdx（ebx)减2存入ecx, rcx=ecx=ebx-2
    17f0:	48 63 c9             	movslq %ecx,%rcx                 # ecx扩展到rcx
    17f3:	8d 43 ff             	lea    -0x1(%rbx),%eax           # rbx减1放到eax, rax=eax=ebx-1
    17f6:	48 98                	cltq                             # eax扩展到rax
    17f8:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    17fb:	03 04 8c             	add    (%rsp,%rcx,4),%eax        # 因为一个int占四个字节，所以为numbers[rax]+numbers[rcx]
    17fe:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)        # 判断numbers[ebx]==numbers[rax]+numbers[rcx]
    1801:	74 df                	je     17e2 <phase_2+0x3a>       # 相等的话ebx++，进入循环
    1803:	e8 34 08 00 00       	call   203c <explode_bomb>
    1808:	eb d8                	jmp    17e2 <phase_2+0x3a>
    180a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    180f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1816:	00 00 
    1818:	75 06                	jne    1820 <phase_2+0x78>
    181a:	48 83 c4 20          	add    $0x20,%rsp
    181e:	5b                   	pop    %rbx
    181f:	c3                   	ret
    1820:	e8 7b fa ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001825 <phase_3>:
    1825:	f3 0f 1e fa          	endbr64
    1829:	48 83 ec 18          	sub    $0x18,%rsp               # 注意0x18是24个字节
    182d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1834:	00 00 
    1836:	48 89 44 24 08       	mov    %rax,0x8(%rsp)

    183b:	31 c0                	xor    %eax,%eax
    183d:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx           # 栈顶向上四个字节为第4个参数
    1842:	48 89 e2             	mov    %rsp,%rdx                # 栈顶为第3个参数
    1845:	48 8d 35 54 2e 00 00 	lea    0x2e54(%rip),%rsi        # 46a0 <transition_table+0x340>
    184c:	e8 ef fa ff ff       	call   1340 <__isoc99_sscanf@plt> # 注意%rdi是自己输入的那个字符串，详见main函数的汇编部分
    1851:	83 f8 01             	cmp    $0x1,%eax                # 判断sscanf解析到的数的个数是否为1
    1854:	7e 1a                	jle    1870 <phase_3+0x4b>      # 不超过1就爆炸
    1856:	83 3c 24 07          	cmpl   $0x7,(%rsp)              # 注意这里%rsp存的是地址，(%rsp)是rsp存的地址指向的内存里的数
                                                                    # 比较得到的第一个数与7的大小，大于7就爆炸
    185a:	77 65                	ja     18c1 <phase_3+0x9c>
    185c:	8b 04 24             	mov    (%rsp),%eax              # 第一个数字读到eax
    185f:	48 8d 15 ba 2a 00 00 	lea    0x2aba(%rip),%rdx        # 4320 <_IO_stdin_used+0x320>
    1866:	48 63 04 82          	movslq (%rdx,%rax,4),%rax       # 注意这里是movslq，不是leaq，所以会把地址rdx+rax*4指向的数算出来放到%rax里
    186a:	48 01 d0             	add    %rdx,%rax
    186d:	3e ff e0             	notrack jmp *%rax               # 就是间接跳转，以%rax中的值作为目标
    1870:	e8 c7 07 00 00       	call   203c <explode_bomb>
    1875:	eb df                	jmp    1856 <phase_3+0x31>      # 索引失败就爆炸且返回
    1877:	b8 74 03 00 00       	mov    $0x374,%eax
    187c:	39 44 24 04          	cmp    %eax,0x4(%rsp)           # 比较eax与第二个数
    1880:	75 52                	jne    18d4 <phase_3+0xaf>      # 不相等就爆炸
    1882:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1887:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    188e:	00 00 
    1890:	75 49                	jne    18db <phase_3+0xb6>
    1892:	48 83 c4 18          	add    $0x18,%rsp
    1896:	c3                   	ret

    1897:	b8 d9 03 00 00       	mov    $0x3d9,%eax
    189c:	eb de                	jmp    187c <phase_3+0x57>      # 以下赋值结束后全部跳转到187c，即第二个数的验证
    189e:	b8 1a 03 00 00       	mov    $0x31a,%eax
    18a3:	eb d7                	jmp    187c <phase_3+0x57>
    18a5:	b8 c1 02 00 00       	mov    $0x2c1,%eax
    18aa:	eb d0                	jmp    187c <phase_3+0x57>
    18ac:	b8 3e 00 00 00       	mov    $0x3e,%eax
    18b1:	eb c9                	jmp    187c <phase_3+0x57>
    18b3:	b8 6e 03 00 00       	mov    $0x36e,%eax
    18b8:	eb c2                	jmp    187c <phase_3+0x57>
    18ba:	b8 82 02 00 00       	mov    $0x282,%eax
    18bf:	eb bb                	jmp    187c <phase_3+0x57>

    18c1:	e8 76 07 00 00       	call   203c <explode_bomb>
    18c6:	b8 00 00 00 00       	mov    $0x0,%eax
    18cb:	eb af                	jmp    187c <phase_3+0x57>
    18cd:	b8 8a 02 00 00       	mov    $0x28a,%eax
    18d2:	eb a8                	jmp    187c <phase_3+0x57>
    18d4:	e8 63 07 00 00       	call   203c <explode_bomb>
    18d9:	eb a7                	jmp    1882 <phase_3+0x5d>
    18db:	e8 c0 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000018e0 <func4>:
    18e0:	f3 0f 1e fa          	endbr64
    18e4:	48 83 ec 08          	sub    $0x8,%rsp
    18e8:	89 d1                	mov    %edx,%ecx
    18ea:	29 f1                	sub    %esi,%ecx
    18ec:	89 c8                	mov    %ecx,%eax
    18ee:	c1 e8 1f             	shr    $0x1f,%eax
    18f1:	01 c8                	add    %ecx,%eax
    18f3:	d1 f8                	sar    $1,%eax    # 算术右移相当于除以2下取整
    18f5:	01 f0                	add    %esi,%eax  # 第二个和第三个数的中点
    18f7:	39 f8                	cmp    %edi,%eax  # 二分
    18f9:	7f 0c                	jg     1907 <func4+0x27>
    18fb:	7c 16                	jl     1913 <func4+0x33>
    18fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1902:	48 83 c4 08          	add    $0x8,%rsp
    1906:	c3                   	ret

    1907:	8d 50 ff             	lea    -0x1(%rax),%edx
    190a:	e8 d1 ff ff ff       	call   18e0 <func4>
    190f:	01 c0                	add    %eax,%eax
    1911:	eb ef                	jmp    1902 <func4+0x22>

    1913:	8d 70 01             	lea    0x1(%rax),%esi
    1916:	e8 c5 ff ff ff       	call   18e0 <func4>
    191b:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax

    191f:	eb e1                	jmp    1902 <func4+0x22>
/*
// 输入：edi = x, esi = low, edx = high
int func4(int x, int low, int high) {
    int ecx = high - low;          // 18e8-18ea
    int eax = ecx;                 // 18ec
    eax = (ecx >> 31);             // 18ee (符号位)
    eax = (ecx + eax) >> 1;        // 18f1-18f3 (带符号的除以2)
    eax = eax + low;               // 18f5
    // 此时 eax = low + (high - low) / 2 (中点)
    
    if (eax > x) {                 // 18f7
        // 中点 > x，搜索左半部分
        return 2 * func4(x, low, eax - 1);  // 1907-190f
    } else if (eax < x) {          // 18fb  
        // 中点 < x，搜索右半部分
        return 2 * func4(x, eax + 1, high) + 1;  // 1913-191b
    } else {
        // 中点 == x，找到目标
        return 0;                  // 18fd
    }
}
*/

0000000000001921 <phase_4>:
    1921:	f3 0f 1e fa          	endbr64
    1925:	48 83 ec 18          	sub    $0x18,%rsp
    1929:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1930:	00 00 
    1932:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1937:	31 c0                	xor    %eax,%eax

    1939:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx           # rsp向上一个int的地址给第四个参数
    193e:	48 89 e2             	mov    %rsp,%rdx                # rsp的值给第三个参数（也是一个地址，即栈顶地址）
    1941:	48 8d 35 58 2d 00 00 	lea    0x2d58(%rip),%rsi        # 46a0 <transition_table+0x340>
    1948:	e8 f3 f9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    # sscanf想把数据存到栈上，就必须传入“目标地址”，而不是值
    194d:	83 f8 02             	cmp    $0x2,%eax                # 是否得到两个数
    1950:	75 0c                	jne    195e <phase_4+0x3d>
    1952:	8b 04 24             	mov    (%rsp),%eax              # 第一个数存到eax
    1955:	85 c0                	test   %eax,%eax
    1957:	78 05                	js     195e <phase_4+0x3d>      # 第一个数小于0爆炸
    1959:	83 f8 0e             	cmp    $0xe,%eax                
    195c:	7e 05                	jle    1963 <phase_4+0x42>      # 第一个数小于等于14
    195e:	e8 d9 06 00 00       	call   203c <explode_bomb>
    1963:	ba 0e 00 00 00       	mov    $0xe,%edx                # 14作为func4的第三个参数
    1968:	be 00 00 00 00       	mov    $0x0,%esi                # 0作为func4的第二个参数
    196d:	8b 3c 24             	mov    (%rsp),%edi              # 输入的第一个数作为func4第一个参数
    1970:	e8 6b ff ff ff       	call   18e0 <func4>
    1975:	83 f8 01             	cmp    $0x1,%eax                # 输出不等于1爆炸
    1978:	75 07                	jne    1981 <phase_4+0x60>
    197a:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)           # 第二个数等于1
    197f:	74 05                	je     1986 <phase_4+0x65>
    1981:	e8 b6 06 00 00       	call   203c <explode_bomb>
    1986:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    198b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1992:	00 00 
    1994:	75 05                	jne    199b <phase_4+0x7a>
    1996:	48 83 c4 18          	add    $0x18,%rsp
    199a:	c3                   	ret
    199b:	e8 00 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000019a0 <phase_5>:
    19a0:	f3 0f 1e fa          	endbr64
    19a4:	53                   	push   %rbx
    19a5:	48 89 fb             	mov    %rdi,%rbx
    19a8:	e8 62 03 00 00       	call   1d0f <string_length>
    19ad:	83 f8 04             	cmp    $0x4,%eax                # 字符串长度=4
    19b0:	75 0c                	jne    19be <phase_5+0x1e>
    19b2:	b9 01 00 00 00       	mov    $0x1,%ecx                # 第四个参数设为1
    19b7:	b8 00 00 00 00       	mov    $0x0,%eax
    19bc:	eb 1f                	jmp    19dd <phase_5+0x3d>
    19be:	e8 79 06 00 00       	call   203c <explode_bomb>

    19c3:	eb ed                	jmp    19b2 <phase_5+0x12>
    19c5:	48 63 d0             	movslq %eax,%rdx
    19c8:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    19cc:	83 e2 07             	and    $0x7,%edx
    19cf:	48 8d 35 6a 29 00 00 	lea    0x296a(%rip),%rsi        # 4340 <array.0>，运行到这里，然后x/8dw $rsi(8指8个单位，d指按十进制输出，w指每个单位四个字节)
                                                                    # 可以看到array的内容是2,6,1,3,4,7,5,8
    19d6:	0f af 0c 96          	imul   (%rsi,%rdx,4),%ecx       # 循环 4 次，每次用字符的低3位作为索引查表，相乘
    19da:	83 c0 01             	add    $0x1,%eax

    19dd:	83 f8 03             	cmp    $0x3,%eax
    19e0:	7e e3                	jle    19c5 <phase_5+0x25>
    19e2:	83 f9 50             	cmp    $0x50,%ecx
    19e5:	75 02                	jne    19e9 <phase_5+0x49>
    19e7:	5b                   	pop    %rbx
    19e8:	c3                   	ret
    19e9:	e8 4e 06 00 00       	call   203c <explode_bomb>
    19ee:	eb f7                	jmp    19e7 <phase_5+0x47>

00000000000019f0 <phase_6>:
    19f0:	f3 0f 1e fa          	endbr64
    19f4:	41 54                	push   %r12
    19f6:	55                   	push   %rbp
    19f7:	53                   	push   %rbx
    19f8:	48 83 ec 60          	sub    $0x60,%rsp
    19fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a03:	00 00 
    1a05:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a0a:	31 c0                	xor    %eax,%eax

    1a0c:	48 89 e6             	mov    %rsp,%rsi                  # 将栈顶指针作为第二个参数，存取读到的六个数
    1a0f:	e8 ae 06 00 00       	call   20c2 <read_six_numbers>
    1a14:	bd 00 00 00 00       	mov    $0x0,%ebp                  # ebp赋值0
    1a19:	eb 27                	jmp    1a42 <phase_6+0x52>
    1a1b:	e8 1c 06 00 00       	call   203c <explode_bomb>

    1a20:	eb 33                	jmp    1a55 <phase_6+0x65>        
    1a22:	83 c3 01             	add    $0x1,%ebx
    1a25:	83 fb 05             	cmp    $0x5,%ebx
    1a28:	7f 15                	jg     1a3f <phase_6+0x4f>
    1a2a:	48 63 c5             	movslq %ebp,%rax
    1a2d:	48 63 d3             	movslq %ebx,%rdx
    1a30:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1a33:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)         # 比较第ebx个数和第ebp个数的大小
    1a36:	75 ea                	jne    1a22 <phase_6+0x32>        # 不相同就继续运行，相同直接爆炸
    1a38:	e8 ff 05 00 00       	call   203c <explode_bomb>
    1a3d:	eb e3                	jmp    1a22 <phase_6+0x32>
    1a3f:	44 89 e5             	mov    %r12d,%ebp                 # ebx大于5时，ebp++

    1a42:	83 fd 05             	cmp    $0x5,%ebp                  
    1a45:	7f 17                	jg     1a5e <phase_6+0x6e>        # ebp不超过5时
    1a47:	48 63 c5             	movslq %ebp,%rax
    1a4a:	8b 04 84             	mov    (%rsp,%rax,4),%eax         # 第ebp个数放进eax
    1a4d:	83 e8 01             	sub    $0x1,%eax                  # 第ebp个数减1
    1a50:	83 f8 05             	cmp    $0x5,%eax                  # 大于5就爆炸
    1a53:	77 c6                	ja     1a1b <phase_6+0x2b>
    1a55:	44 8d 65 01          	lea    0x1(%rbp),%r12d            
    1a59:	44 89 e3             	mov    %r12d,%ebx                 # ebx=ebp+1
    1a5c:	eb c7                	jmp    1a25 <phase_6+0x35>
/*双重循环，确认六个数字为1~6的排列
// 读取6个数字到数组nums[]
read_six_numbers(nums);

for (int i = 0; i <= 5; i++) {
    // 检查范围 1-6
    if (nums[i] < 1 || nums[i] > 6) 
        explode_bomb();
    
    // 检查与后续数字是否重复
    for (int j = i+1; j <= 5; j++) {
        if (nums[i] == nums[j])
            explode_bomb();
    }
}
*/
    1a5e:	b8 00 00 00 00       	mov    $0x0,%eax                  # 检查完毕，eax=0
    1a63:	eb 11                	jmp    1a76 <phase_6+0x86>
    1a65:	48 63 c8             	movslq %eax,%rcx                  # eax复制到rcx
    1a68:	ba 07 00 00 00       	mov    $0x7,%edx                  # edx=7
    1a6d:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx         # 7-第rcx个数，放到edx中
    1a70:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)         
    1a73:	83 c0 01             	add    $0x1,%eax                  # 每个数用7减去自身
    1a76:	83 f8 05             	cmp    $0x5,%eax                  # eax小于等于5时
    1a79:	7e ea                	jle    1a65 <phase_6+0x75>
# 这一段把每个输入的数换为7减自身
    1a7b:	be 00 00 00 00       	mov    $0x0,%esi                  # esi=0
    1a80:	eb 17                	jmp    1a99 <phase_6+0xa9>
    1a82:	48 8b 52 08          	mov    0x8(%rdx),%rdx             # 第rcx个数大，rdx指向下一个node
    1a86:	83 c0 01             	add    $0x1,%eax                  

    1a89:	48 63 ce             	movslq %esi,%rcx                  # esi复制到rcx
    1a8c:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)         # eax与第rcx数比大小
    1a8f:	7f f1                	jg     1a82 <phase_6+0x92>
    1a91:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1a96:	83 c6 01             	add    $0x1,%esi

    1a99:	83 fe 05             	cmp    $0x5,%esi
    1a9c:	7f 0e                	jg     1aac <phase_6+0xbc>
    1a9e:	b8 01 00 00 00       	mov    $0x1,%eax                # esi小于等于5时，eax=1
    1aa3:	48 8d 15 a6 65 00 00 	lea    0x65a6(%rip),%rdx        # 8050 <node1>，rdx存第一个node
# 在这里打断点，可以得到节点的数依次为927，266，300，973，259，900
    1aaa:	eb dd                	jmp    1a89 <phase_6+0x99>
# 注意这里有两个数列，一个是链表列node（索引1~6），一个是转换后的数字列a（索引0~5）
# 这一段将node[a[rcx]]存到rsp+0x20开始的第rcx位
# 相当于node按照a重新排列
/*
// 假设 numbers[] 存储了转换后的数字 (7-原输入)
struct node* selected_nodes[6];  // 在 rsp+0x20 处

for (int i = 0; i <= 5; i++) {
    struct node* current = node1;    // 链表头
    int index = 1;                   // 节点位置计数器
    
    // 遍历链表找到第 numbers[i] 个节点
    while (numbers[i] > index) {
        current = current->next;
        index++;
    }
    
    selected_nodes[i] = current;     // 存储选中的节点
}
*/
    1aac:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx          # rbx存第一个节点的地址
    1ab1:	48 89 d9             	mov    %rbx,%rcx                # rcx等于rbx，存储正在处理的当前节点的地址
    1ab4:	b8 01 00 00 00       	mov    $0x1,%eax                # 循环计数器eax初始化1
    1ab9:	eb 12                	jmp    1acd <phase_6+0xdd>
    1abb:	48 63 d0             	movslq %eax,%rdx                # rdx=eax
    1abe:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx   # 第rdx个节点的地址给rdx
    1ac3:	48 89 51 08          	mov    %rdx,0x8(%rcx)
/*
执行前：
地址 0x8050: [value字段]    ← rcx指向这里
地址 0x8058: [旧的next指针]   ← 0x8(%rcx) 指向这里

执行后：
地址 0x8050: [value字段]    
地址 0x8058: 0x8060         ← 现在指向node2了！
*/
# 注意，想得到每个节点的地址，需要从rsp出发每次加8，但是每个节点的地址并不差8，实际上可能都不成等差数列
    1ac7:	83 c0 01             	add    $0x1,%eax
    1aca:	48 89 d1             	mov    %rdx,%rcx
    1acd:	83 f8 05             	cmp    $0x5,%eax
    1ad0:	7e e9                	jle    1abb <phase_6+0xcb>
    1ad2:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1ad9:	00 

    1ada:	bd 00 00 00 00       	mov    $0x0,%ebp              # 注意rbx在此之前存的是第一个节点的地址
    1adf:	eb 07                	jmp    1ae8 <phase_6+0xf8>
    1ae1:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1ae5:	83 c5 01             	add    $0x1,%ebp
    1ae8:	83 fd 04             	cmp    $0x4,%ebp
    1aeb:	7f 11                	jg     1afe <phase_6+0x10e>
    1aed:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1af1:	8b 00                	mov    (%rax),%eax          
    1af3:	39 03                	cmp    %eax,(%rbx)            # 比较相邻两个节点的value字段
    1af5:	7e ea                	jle    1ae1 <phase_6+0xf1>    # 前一个小于等于后一个就继续
    1af7:	e8 40 05 00 00       	call   203c <explode_bomb>
    1afc:	eb e3                	jmp    1ae1 <phase_6+0xf1>
    1afe:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b0a:	00 00 
# 最后一段，验证列表是否升序排列
    1b0c:	75 09                	jne    1b17 <phase_6+0x127>
    1b0e:	48 83 c4 60          	add    $0x60,%rsp
    1b12:	5b                   	pop    %rbx
    1b13:	5d                   	pop    %rbp
    1b14:	41 5c                	pop    %r12
    1b16:	c3                   	ret
    1b17:	e8 84 f7 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001b1c <emulate_fsm>:
    1b1c:	f3 0f 1e fa          	endbr64
    1b20:	55                   	push   %rbp
    1b21:	53                   	push   %rbx
    1b22:	48 83 ec 08          	sub    $0x8,%rsp
    1b26:	89 fd                	mov    %edi,%ebp
    1b28:	48 89 f3             	mov    %rsi,%rbx
    1b2b:	eb 28                	jmp    1b55 <emulate_fsm+0x39>
    1b2d:	0f be 03             	movsbl (%rbx),%eax
    1b30:	83 e8 30             	sub    $0x30,%eax
    1b33:	48 63 ed             	movslq %ebp,%rbp
    1b36:	48 98                	cltq
    1b38:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1b3f:	00 
    1b40:	48 29 c2             	sub    %rax,%rdx
    1b43:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    1b47:	48 8d 15 12 28 00 00 	lea    0x2812(%rip),%rdx        # 4360 <transition_table>
    1b4e:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1b51:	48 83 c3 01          	add    $0x1,%rbx
    1b55:	0f b6 03             	movzbl (%rbx),%eax
    1b58:	84 c0                	test   %al,%al
    1b5a:	74 0e                	je     1b6a <emulate_fsm+0x4e>
    1b5c:	83 e8 30             	sub    $0x30,%eax
    1b5f:	3c 01                	cmp    $0x1,%al
    1b61:	76 ca                	jbe    1b2d <emulate_fsm+0x11>
    1b63:	e8 d4 04 00 00       	call   203c <explode_bomb>
    1b68:	eb c3                	jmp    1b2d <emulate_fsm+0x11>
    1b6a:	89 e8                	mov    %ebp,%eax
    1b6c:	48 83 c4 08          	add    $0x8,%rsp
    1b70:	5b                   	pop    %rbx
    1b71:	5d                   	pop    %rbp
    1b72:	c3                   	ret

0000000000001b73 <check_synchronizing_sequence>:
    1b73:	f3 0f 1e fa          	endbr64
    1b77:	41 54                	push   %r12
    1b79:	55                   	push   %rbp
    1b7a:	53                   	push   %rbx
    1b7b:	48 89 fd             	mov    %rdi,%rbp
    1b7e:	48 89 fe             	mov    %rdi,%rsi
    1b81:	bf 00 00 00 00       	mov    $0x0,%edi
    1b86:	e8 91 ff ff ff       	call   1b1c <emulate_fsm>
    1b8b:	41 89 c4             	mov    %eax,%r12d
    1b8e:	bb 01 00 00 00       	mov    $0x1,%ebx
    1b93:	83 fb 06             	cmp    $0x6,%ebx
    1b96:	7f 14                	jg     1bac <check_synchronizing_sequence+0x39>
    1b98:	48 89 ee             	mov    %rbp,%rsi
    1b9b:	89 df                	mov    %ebx,%edi
    1b9d:	e8 7a ff ff ff       	call   1b1c <emulate_fsm>
    1ba2:	44 39 e0             	cmp    %r12d,%eax
    1ba5:	75 0f                	jne    1bb6 <check_synchronizing_sequence+0x43>
    1ba7:	83 c3 01             	add    $0x1,%ebx
    1baa:	eb e7                	jmp    1b93 <check_synchronizing_sequence+0x20>
    1bac:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb1:	5b                   	pop    %rbx
    1bb2:	5d                   	pop    %rbp
    1bb3:	41 5c                	pop    %r12
    1bb5:	c3                   	ret
    1bb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bbb:	eb f4                	jmp    1bb1 <check_synchronizing_sequence+0x3e>

0000000000001bbd <secret_phase>:
    1bbd:	f3 0f 1e fa          	endbr64
    1bc1:	55                   	push   %rbp
    1bc2:	53                   	push   %rbx
    1bc3:	48 83 ec 18          	sub    $0x18,%rsp
    1bc7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bce:	00 00 
    1bd0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1bd5:	31 c0                	xor    %eax,%eax
    1bd7:	e8 2b 05 00 00       	call   2107 <read_line>
    1bdc:	48 89 c5             	mov    %rax,%rbp
    1bdf:	bb 00 00 00 00       	mov    $0x0,%ebx
    1be4:	eb 03                	jmp    1be9 <secret_phase+0x2c>
    1be6:	83 c3 01             	add    $0x1,%ebx
    1be9:	48 63 c3             	movslq %ebx,%rax
    1bec:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1bf1:	74 0c                	je     1bff <secret_phase+0x42>
    1bf3:	83 fb 18             	cmp    $0x18,%ebx
    1bf6:	7e ee                	jle    1be6 <secret_phase+0x29>
    1bf8:	e8 3f 04 00 00       	call   203c <explode_bomb>
    1bfd:	eb e7                	jmp    1be6 <secret_phase+0x29>
    1bff:	48 89 ef             	mov    %rbp,%rdi
    1c02:	e8 6c ff ff ff       	call   1b73 <check_synchronizing_sequence>
    1c07:	85 c0                	test   %eax,%eax
    1c09:	75 69                	jne    1c74 <secret_phase+0xb7>
    1c0b:	48 8d 3d e6 25 00 00 	lea    0x25e6(%rip),%rdi        # 41f8 <_IO_stdin_used+0x1f8>
    1c12:	e8 59 f6 ff ff       	call   1270 <puts@plt>
    1c17:	48 8d 3d 12 26 00 00 	lea    0x2612(%rip),%rdi        # 4230 <_IO_stdin_used+0x230>
    1c1e:	e8 4d f6 ff ff       	call   1270 <puts@plt>
    1c23:	48 8d 3d 46 26 00 00 	lea    0x2646(%rip),%rdi        # 4270 <_IO_stdin_used+0x270>
    1c2a:	e8 41 f6 ff ff       	call   1270 <puts@plt>
    1c2f:	48 8d 3d 72 26 00 00 	lea    0x2672(%rip),%rdi        # 42a8 <_IO_stdin_used+0x2a8>
    1c36:	e8 35 f6 ff ff       	call   1270 <puts@plt>
    1c3b:	48 8d 3d a6 26 00 00 	lea    0x26a6(%rip),%rdi        # 42e8 <_IO_stdin_used+0x2e8>
    1c42:	e8 29 f6 ff ff       	call   1270 <puts@plt>
    1c47:	48 8d 3d 16 25 00 00 	lea    0x2516(%rip),%rdi        # 4164 <_IO_stdin_used+0x164>
    1c4e:	e8 1d f6 ff ff       	call   1270 <puts@plt>
    1c53:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c58:	e8 e8 05 00 00       	call   2245 <phase_defused>
    1c5d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c62:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c69:	00 00 
    1c6b:	75 0e                	jne    1c7b <secret_phase+0xbe>
    1c6d:	48 83 c4 18          	add    $0x18,%rsp
    1c71:	5b                   	pop    %rbx
    1c72:	5d                   	pop    %rbp
    1c73:	c3                   	ret
    1c74:	e8 c3 03 00 00       	call   203c <explode_bomb>
    1c79:	eb 90                	jmp    1c0b <secret_phase+0x4e>
    1c7b:	e8 20 f6 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001c80 <sig_handler>:
    1c80:	f3 0f 1e fa          	endbr64
    1c84:	50                   	push   %rax
    1c85:	58                   	pop    %rax
    1c86:	48 83 ec 08          	sub    $0x8,%rsp
    1c8a:	48 8d 3d 07 27 00 00 	lea    0x2707(%rip),%rdi        # 4398 <transition_table+0x38>
    1c91:	e8 da f5 ff ff       	call   1270 <puts@plt>
    1c96:	bf 03 00 00 00       	mov    $0x3,%edi
    1c9b:	e8 20 f7 ff ff       	call   13c0 <sleep@plt>
    1ca0:	48 8d 35 72 29 00 00 	lea    0x2972(%rip),%rsi        # 4619 <transition_table+0x2b9>
    1ca7:	bf 01 00 00 00       	mov    $0x1,%edi
    1cac:	b8 00 00 00 00       	mov    $0x0,%eax
    1cb1:	e8 aa f6 ff ff       	call   1360 <__printf_chk@plt>
    1cb6:	48 8b 3d a3 67 00 00 	mov    0x67a3(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1cbd:	e8 6e f6 ff ff       	call   1330 <fflush@plt>
    1cc2:	bf 01 00 00 00       	mov    $0x1,%edi
    1cc7:	e8 f4 f6 ff ff       	call   13c0 <sleep@plt>
    1ccc:	48 8d 3d 4e 29 00 00 	lea    0x294e(%rip),%rdi        # 4621 <transition_table+0x2c1>
    1cd3:	e8 98 f5 ff ff       	call   1270 <puts@plt>
    1cd8:	bf 10 00 00 00       	mov    $0x10,%edi
    1cdd:	e8 ae f6 ff ff       	call   1390 <exit@plt>

0000000000001ce2 <invalid_phase>:
    1ce2:	f3 0f 1e fa          	endbr64
    1ce6:	50                   	push   %rax
    1ce7:	58                   	pop    %rax
    1ce8:	48 83 ec 08          	sub    $0x8,%rsp
    1cec:	48 89 fa             	mov    %rdi,%rdx
    1cef:	48 8d 35 33 29 00 00 	lea    0x2933(%rip),%rsi        # 4629 <transition_table+0x2c9>
    1cf6:	bf 01 00 00 00       	mov    $0x1,%edi
    1cfb:	b8 00 00 00 00       	mov    $0x0,%eax
    1d00:	e8 5b f6 ff ff       	call   1360 <__printf_chk@plt>
    1d05:	bf 08 00 00 00       	mov    $0x8,%edi
    1d0a:	e8 81 f6 ff ff       	call   1390 <exit@plt>

0000000000001d0f <string_length>:
    1d0f:	f3 0f 1e fa          	endbr64
    1d13:	b8 00 00 00 00       	mov    $0x0,%eax
    1d18:	eb 07                	jmp    1d21 <string_length+0x12>
    1d1a:	48 83 c7 01          	add    $0x1,%rdi
    1d1e:	83 c0 01             	add    $0x1,%eax
    1d21:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d24:	75 f4                	jne    1d1a <string_length+0xb>
    1d26:	c3                   	ret

0000000000001d27 <strings_not_equal>:
    1d27:	f3 0f 1e fa          	endbr64
    1d2b:	41 54                	push   %r12
    1d2d:	55                   	push   %rbp
    1d2e:	53                   	push   %rbx
    1d2f:	48 89 fb             	mov    %rdi,%rbx
    1d32:	48 89 f5             	mov    %rsi,%rbp
    1d35:	e8 d5 ff ff ff       	call   1d0f <string_length>
    1d3a:	41 89 c4             	mov    %eax,%r12d
    1d3d:	48 89 ef             	mov    %rbp,%rdi
    1d40:	e8 ca ff ff ff       	call   1d0f <string_length>
    1d45:	41 39 c4             	cmp    %eax,%r12d
    1d48:	74 12                	je     1d5c <strings_not_equal+0x35>
    1d4a:	b8 01 00 00 00       	mov    $0x1,%eax
    1d4f:	5b                   	pop    %rbx
    1d50:	5d                   	pop    %rbp
    1d51:	41 5c                	pop    %r12
    1d53:	c3                   	ret
    1d54:	48 83 c3 01          	add    $0x1,%rbx
    1d58:	48 83 c5 01          	add    $0x1,%rbp
    1d5c:	0f b6 03             	movzbl (%rbx),%eax
    1d5f:	84 c0                	test   %al,%al
    1d61:	74 0c                	je     1d6f <strings_not_equal+0x48>
    1d63:	38 45 00             	cmp    %al,0x0(%rbp)
    1d66:	74 ec                	je     1d54 <strings_not_equal+0x2d>
    1d68:	b8 01 00 00 00       	mov    $0x1,%eax
    1d6d:	eb e0                	jmp    1d4f <strings_not_equal+0x28>
    1d6f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d74:	eb d9                	jmp    1d4f <strings_not_equal+0x28>

0000000000001d76 <initialize_bomb>:
    1d76:	f3 0f 1e fa          	endbr64
    1d7a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d81:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d86:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d8d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d92:	48 83 ec 58          	sub    $0x58,%rsp
    1d96:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d9d:	00 00 
    1d9f:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1da6:	00 
    1da7:	31 c0                	xor    %eax,%eax
    1da9:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 1c80 <sig_handler>
    1db0:	bf 02 00 00 00       	mov    $0x2,%edi
    1db5:	e8 26 f5 ff ff       	call   12e0 <signal@plt>
    1dba:	48 89 e7             	mov    %rsp,%rdi
    1dbd:	be 40 00 00 00       	mov    $0x40,%esi
    1dc2:	e8 b9 f5 ff ff       	call   1380 <gethostname@plt>
    1dc7:	85 c0                	test   %eax,%eax
    1dc9:	75 39                	jne    1e04 <initialize_bomb+0x8e>
    1dcb:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1dd0:	e8 5b 10 00 00       	call   2e30 <init_driver>
    1dd5:	85 c0                	test   %eax,%eax
    1dd7:	78 41                	js     1e1a <initialize_bomb+0xa4>
    1dd9:	bf 04 00 00 00       	mov    $0x4,%edi
    1dde:	e8 3d f5 ff ff       	call   1320 <malloc@plt>
    1de3:	c7 00 11 fa 25 20    	movl   $0x2025fa11,(%rax)
    1de9:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    1df0:	00 
    1df1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1df8:	00 00 
    1dfa:	75 43                	jne    1e3f <initialize_bomb+0xc9>
    1dfc:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1e03:	c3                   	ret
    1e04:	48 8d 3d c5 25 00 00 	lea    0x25c5(%rip),%rdi        # 43d0 <transition_table+0x70>
    1e0b:	e8 60 f4 ff ff       	call   1270 <puts@plt>
    1e10:	bf 08 00 00 00       	mov    $0x8,%edi
    1e15:	e8 76 f5 ff ff       	call   1390 <exit@plt>
    1e1a:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1e1f:	48 8d 35 14 28 00 00 	lea    0x2814(%rip),%rsi        # 463a <transition_table+0x2da>
    1e26:	bf 01 00 00 00       	mov    $0x1,%edi
    1e2b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e30:	e8 2b f5 ff ff       	call   1360 <__printf_chk@plt>
    1e35:	bf 08 00 00 00       	mov    $0x8,%edi
    1e3a:	e8 51 f5 ff ff       	call   1390 <exit@plt>
    1e3f:	e8 5c f4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001e44 <initialize_bomb_solve>:
    1e44:	f3 0f 1e fa          	endbr64
    1e48:	c3                   	ret

0000000000001e49 <blank_line>:
    1e49:	f3 0f 1e fa          	endbr64
    1e4d:	55                   	push   %rbp
    1e4e:	53                   	push   %rbx
    1e4f:	48 83 ec 08          	sub    $0x8,%rsp
    1e53:	48 89 fd             	mov    %rdi,%rbp
    1e56:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1e5a:	84 db                	test   %bl,%bl
    1e5c:	74 1e                	je     1e7c <blank_line+0x33>
    1e5e:	e8 6d f5 ff ff       	call   13d0 <__ctype_b_loc@plt>
    1e63:	48 8b 00             	mov    (%rax),%rax
    1e66:	48 83 c5 01          	add    $0x1,%rbp
    1e6a:	48 0f be db          	movsbq %bl,%rbx
    1e6e:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1e73:	75 e1                	jne    1e56 <blank_line+0xd>
    1e75:	b8 00 00 00 00       	mov    $0x0,%eax
    1e7a:	eb 05                	jmp    1e81 <blank_line+0x38>
    1e7c:	b8 01 00 00 00       	mov    $0x1,%eax
    1e81:	48 83 c4 08          	add    $0x8,%rsp
    1e85:	5b                   	pop    %rbx
    1e86:	5d                   	pop    %rbp
    1e87:	c3                   	ret

0000000000001e88 <skip>:
    1e88:	f3 0f 1e fa          	endbr64
    1e8c:	53                   	push   %rbx
    1e8d:	48 63 15 84 66 00 00 	movslq 0x6684(%rip),%rdx        # 8518 <num_input_strings>
    1e94:	48 89 d0             	mov    %rdx,%rax
    1e97:	48 c1 e0 04          	shl    $0x4,%rax
    1e9b:	48 29 d0             	sub    %rdx,%rax
    1e9e:	48 8d 15 7b 66 00 00 	lea    0x667b(%rip),%rdx        # 8520 <input_strings>
    1ea5:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1ea9:	48 8b 0d e0 65 00 00 	mov    0x65e0(%rip),%rcx        # 8490 <infile>
    1eb0:	ba 78 00 00 00       	mov    $0x78,%edx
    1eb5:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1ebc:	e8 8f f4 ff ff       	call   1350 <__fgets_chk@plt>
    1ec1:	48 89 c3             	mov    %rax,%rbx
    1ec4:	48 85 c0             	test   %rax,%rax
    1ec7:	74 0c                	je     1ed5 <skip+0x4d>
    1ec9:	48 89 c7             	mov    %rax,%rdi
    1ecc:	e8 78 ff ff ff       	call   1e49 <blank_line>
    1ed1:	85 c0                	test   %eax,%eax
    1ed3:	75 b8                	jne    1e8d <skip+0x5>
    1ed5:	48 89 d8             	mov    %rbx,%rax
    1ed8:	5b                   	pop    %rbx
    1ed9:	c3                   	ret

0000000000001eda <send_msg>:
    1eda:	f3 0f 1e fa          	endbr64
    1ede:	41 55                	push   %r13
    1ee0:	41 54                	push   %r12
    1ee2:	55                   	push   %rbp
    1ee3:	53                   	push   %rbx
    1ee4:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1eeb:	ff 
    1eec:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1ef3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1ef8:	4c 39 dc             	cmp    %r11,%rsp
    1efb:	75 ef                	jne    1eec <send_msg+0x12>
    1efd:	48 83 ec 18          	sub    $0x18,%rsp
    1f01:	89 fd                	mov    %edi,%ebp
    1f03:	48 89 f3             	mov    %rsi,%rbx
    1f06:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f0d:	00 00 
    1f0f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1f16:	00 
    1f17:	31 c0                	xor    %eax,%eax
    1f19:	44 8b 25 f8 65 00 00 	mov    0x65f8(%rip),%r12d        # 8518 <num_input_strings>
    1f20:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    1f25:	48 98                	cltq
    1f27:	48 89 c2             	mov    %rax,%rdx
    1f2a:	48 c1 e2 04          	shl    $0x4,%rdx
    1f2e:	48 29 c2             	sub    %rax,%rdx
    1f31:	48 8d 05 e8 65 00 00 	lea    0x65e8(%rip),%rax        # 8520 <input_strings>
    1f38:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    1f3c:	4c 89 ef             	mov    %r13,%rdi
    1f3f:	e8 4c f3 ff ff       	call   1290 <strlen@plt>
    1f44:	48 83 c0 64          	add    $0x64,%rax
    1f48:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1f4e:	0f 87 a0 00 00 00    	ja     1ff4 <send_msg+0x11a>
    1f54:	85 ed                	test   %ebp,%ebp
    1f56:	0f 84 b8 00 00 00    	je     2014 <send_msg+0x13a>
    1f5c:	48 8d 05 f1 26 00 00 	lea    0x26f1(%rip),%rax        # 4654 <transition_table+0x2f4>
    1f63:	48 89 e5             	mov    %rsp,%rbp
    1f66:	48 83 ec 08          	sub    $0x8,%rsp
    1f6a:	41 55                	push   %r13
    1f6c:	41 54                	push   %r12
    1f6e:	50                   	push   %rax
    1f6f:	4c 8d 0d ca 58 00 00 	lea    0x58ca(%rip),%r9        # 7840 <authkey>
    1f76:	44 8b 05 c3 60 00 00 	mov    0x60c3(%rip),%r8d        # 8040 <bomb_id>
    1f7d:	48 8d 0d e1 26 00 00 	lea    0x26e1(%rip),%rcx        # 4665 <transition_table+0x305>
    1f84:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f89:	be 01 00 00 00       	mov    $0x1,%esi
    1f8e:	48 89 ef             	mov    %rbp,%rdi
    1f91:	b8 00 00 00 00       	mov    $0x0,%eax
    1f96:	e8 45 f4 ff ff       	call   13e0 <__sprintf_chk@plt>
    1f9b:	48 89 ec             	mov    %rbp,%rsp
    1f9e:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1fa5:	00 
    1fa6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1fac:	48 89 e9             	mov    %rbp,%rcx
    1faf:	48 8d 15 8a 50 00 00 	lea    0x508a(%rip),%rdx        # 7040 <lab>
    1fb6:	48 8d 35 83 54 00 00 	lea    0x5483(%rip),%rsi        # 7440 <course>
    1fbd:	48 8d 3d 7c 5c 00 00 	lea    0x5c7c(%rip),%rdi        # 7c40 <userid>
    1fc4:	e8 96 10 00 00       	call   305f <driver_post>
    1fc9:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1fcf:	85 c0                	test   %eax,%eax
    1fd1:	78 4d                	js     2020 <send_msg+0x146>
    1fd3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1fda:	00 
    1fdb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1fe2:	00 00 
    1fe4:	75 51                	jne    2037 <send_msg+0x15d>
    1fe6:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1fed:	5b                   	pop    %rbx
    1fee:	5d                   	pop    %rbp
    1fef:	41 5c                	pop    %r12
    1ff1:	41 5d                	pop    %r13
    1ff3:	c3                   	ret
    1ff4:	48 8d 35 0d 24 00 00 	lea    0x240d(%rip),%rsi        # 4408 <transition_table+0xa8>
    1ffb:	bf 01 00 00 00       	mov    $0x1,%edi
    2000:	b8 00 00 00 00       	mov    $0x0,%eax
    2005:	e8 56 f3 ff ff       	call   1360 <__printf_chk@plt>
    200a:	bf 08 00 00 00       	mov    $0x8,%edi
    200f:	e8 7c f3 ff ff       	call   1390 <exit@plt>
    2014:	48 8d 05 41 26 00 00 	lea    0x2641(%rip),%rax        # 465c <transition_table+0x2fc>
    201b:	e9 43 ff ff ff       	jmp    1f63 <send_msg+0x89>
    2020:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2027:	00 
    2028:	e8 43 f2 ff ff       	call   1270 <puts@plt>
    202d:	bf 00 00 00 00       	mov    $0x0,%edi
    2032:	e8 59 f3 ff ff       	call   1390 <exit@plt>
    2037:	e8 64 f2 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000203c <explode_bomb>:
    203c:	f3 0f 1e fa          	endbr64
    2040:	50                   	push   %rax
    2041:	58                   	pop    %rax
    2042:	48 83 ec 18          	sub    $0x18,%rsp
    2046:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    204d:	00 00 
    204f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2054:	31 c0                	xor    %eax,%eax
    2056:	48 8d 3d 17 26 00 00 	lea    0x2617(%rip),%rdi        # 4674 <transition_table+0x314>
    205d:	e8 0e f2 ff ff       	call   1270 <puts@plt>
    2062:	48 8d 3d 14 26 00 00 	lea    0x2614(%rip),%rdi        # 467d <transition_table+0x31d>
    2069:	e8 02 f2 ff ff       	call   1270 <puts@plt>
    206e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2075:	00 
    2076:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    207b:	bf 00 00 00 00       	mov    $0x0,%edi
    2080:	e8 55 fe ff ff       	call   1eda <send_msg>
    2085:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    208a:	74 20                	je     20ac <explode_bomb+0x70>
    208c:	48 8d 35 9d 23 00 00 	lea    0x239d(%rip),%rsi        # 4430 <transition_table+0xd0>
    2093:	bf 01 00 00 00       	mov    $0x1,%edi
    2098:	b8 00 00 00 00       	mov    $0x0,%eax
    209d:	e8 be f2 ff ff       	call   1360 <__printf_chk@plt>
    20a2:	bf 08 00 00 00       	mov    $0x8,%edi
    20a7:	e8 e4 f2 ff ff       	call   1390 <exit@plt>
    20ac:	48 8d 3d c5 23 00 00 	lea    0x23c5(%rip),%rdi        # 4478 <transition_table+0x118>
    20b3:	e8 b8 f1 ff ff       	call   1270 <puts@plt>
    20b8:	bf 08 00 00 00       	mov    $0x8,%edi
    20bd:	e8 ce f2 ff ff       	call   1390 <exit@plt>

00000000000020c2 <read_six_numbers>:
# void read_six_numbers(char* input, int* numbers):
# %rdi:输入字符串指针，%rsi:存放6个整数的数组指针
    20c2:	f3 0f 1e fa          	endbr64
    20c6:	48 83 ec 08          	sub    $0x8,%rsp
# 准备sscanf的参数
# int sscanf(const char *str, const char *format,...):
# 从字符串中按照指定格式提取数据，返回提取的数据的个数
    20ca:	48 89 f2             	mov    %rsi,%rdx                # numbers(即&numbers[0])作为第三个参数
    20cd:	48 8d 4e 04          	lea    0x4(%rsi),%rcx           # numbers+4(即&numbers[1])作为第四个参数
    20d1:	48 8d 46 14          	lea    0x14(%rsi),%rax
    20d5:	50                   	push   %rax
    20d6:	48 8d 46 10          	lea    0x10(%rsi),%rax
    20da:	50                   	push   %rax                     # 计算%rsi+20(0x14)和%rsi+16(0x10)并压入栈,分别是栈上的第八，第七个参数
    20db:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9            # numbers+12(即&numbers[3])作为第六个参数
    20df:	4c 8d 46 08          	lea    0x8(%rsi),%r8            # numbers+8(即&numbers[2])作为第五个参数
    20e3:	48 8d 35 aa 25 00 00 	lea    0x25aa(%rip),%rsi        # 4694 <transition_table+0x334>
                                                                    # 格式字符串地址作为第二个参数，输入的字符串作为第一个参数
    20ea:	b8 00 00 00 00       	mov    $0x0,%eax                # rax清零
    20ef:	e8 4c f2 ff ff       	call   1340 <__isoc99_sscanf@plt>
    20f4:	48 83 c4 10          	add    $0x10,%rsp               # 清理之前压入栈的两个参数占的16个字节
    20f8:	83 f8 05             	cmp    $0x5,%eax
    20fb:	7e 05                	jle    2102 <read_six_numbers+0x40> # 解析读取的数小于等于5
    20fd:	48 83 c4 08          	add    $0x8,%rsp                # 开头的sub恢复
    2101:	c3                   	ret
    2102:	e8 35 ff ff ff       	call   203c <explode_bomb>

0000000000002107 <read_line>:
    2107:	f3 0f 1e fa          	endbr64
    210b:	55                   	push   %rbp
    210c:	53                   	push   %rbx
    210d:	48 83 ec 08          	sub    $0x8,%rsp
    2111:	b8 00 00 00 00       	mov    $0x0,%eax
    2116:	e8 6d fd ff ff       	call   1e88 <skip>
    211b:	48 85 c0             	test   %rax,%rax
    211e:	74 63                	je     2183 <read_line+0x7c>
    2120:	8b 1d f2 63 00 00    	mov    0x63f2(%rip),%ebx        # 8518 <num_input_strings>
    2126:	48 63 d3             	movslq %ebx,%rdx
    2129:	48 89 d0             	mov    %rdx,%rax
    212c:	48 c1 e0 04          	shl    $0x4,%rax
    2130:	48 29 d0             	sub    %rdx,%rax
    2133:	48 8d 15 e6 63 00 00 	lea    0x63e6(%rip),%rdx        # 8520 <input_strings>
    213a:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    213e:	48 89 ef             	mov    %rbp,%rdi
    2141:	e8 4a f1 ff ff       	call   1290 <strlen@plt>
    2146:	83 f8 76             	cmp    $0x76,%eax
    2149:	0f 8f ac 00 00 00    	jg     21fb <read_line+0xf4>
    214f:	83 e8 01             	sub    $0x1,%eax
    2152:	48 98                	cltq
    2154:	48 63 cb             	movslq %ebx,%rcx
    2157:	48 89 ca             	mov    %rcx,%rdx
    215a:	48 c1 e2 04          	shl    $0x4,%rdx
    215e:	48 29 ca             	sub    %rcx,%rdx
    2161:	48 8d 0d b8 63 00 00 	lea    0x63b8(%rip),%rcx        # 8520 <input_strings>
    2168:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    216c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2170:	83 c3 01             	add    $0x1,%ebx
    2173:	89 1d 9f 63 00 00    	mov    %ebx,0x639f(%rip)        # 8518 <num_input_strings>
    2179:	48 89 e8             	mov    %rbp,%rax
    217c:	48 83 c4 08          	add    $0x8,%rsp
    2180:	5b                   	pop    %rbx
    2181:	5d                   	pop    %rbp
    2182:	c3                   	ret
    2183:	48 8b 05 e6 62 00 00 	mov    0x62e6(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    218a:	48 39 05 ff 62 00 00 	cmp    %rax,0x62ff(%rip)        # 8490 <infile>
    2191:	74 1b                	je     21ae <read_line+0xa7>
    2193:	48 8d 3d 2a 25 00 00 	lea    0x252a(%rip),%rdi        # 46c4 <transition_table+0x364>
    219a:	e8 81 f0 ff ff       	call   1220 <getenv@plt>
    219f:	48 85 c0             	test   %rax,%rax
    21a2:	74 20                	je     21c4 <read_line+0xbd>
    21a4:	bf 00 00 00 00       	mov    $0x0,%edi
    21a9:	e8 e2 f1 ff ff       	call   1390 <exit@plt>
    21ae:	48 8d 3d f1 24 00 00 	lea    0x24f1(%rip),%rdi        # 46a6 <transition_table+0x346>
    21b5:	e8 b6 f0 ff ff       	call   1270 <puts@plt>
    21ba:	bf 08 00 00 00       	mov    $0x8,%edi
    21bf:	e8 cc f1 ff ff       	call   1390 <exit@plt>
    21c4:	48 8b 05 a5 62 00 00 	mov    0x62a5(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21cb:	48 89 05 be 62 00 00 	mov    %rax,0x62be(%rip)        # 8490 <infile>
    21d2:	b8 00 00 00 00       	mov    $0x0,%eax
    21d7:	e8 ac fc ff ff       	call   1e88 <skip>
    21dc:	48 85 c0             	test   %rax,%rax
    21df:	0f 85 3b ff ff ff    	jne    2120 <read_line+0x19>
    21e5:	48 8d 3d ba 24 00 00 	lea    0x24ba(%rip),%rdi        # 46a6 <transition_table+0x346>
    21ec:	e8 7f f0 ff ff       	call   1270 <puts@plt>
    21f1:	bf 00 00 00 00       	mov    $0x0,%edi
    21f6:	e8 95 f1 ff ff       	call   1390 <exit@plt>
    21fb:	48 8d 3d cd 24 00 00 	lea    0x24cd(%rip),%rdi        # 46cf <transition_table+0x36f>
    2202:	e8 69 f0 ff ff       	call   1270 <puts@plt>
    2207:	8b 05 0b 63 00 00    	mov    0x630b(%rip),%eax        # 8518 <num_input_strings>
    220d:	8d 50 01             	lea    0x1(%rax),%edx
    2210:	89 15 02 63 00 00    	mov    %edx,0x6302(%rip)        # 8518 <num_input_strings>
    2216:	48 98                	cltq
    2218:	48 6b c0 78          	imul   $0x78,%rax,%rax
    221c:	48 8d 15 fd 62 00 00 	lea    0x62fd(%rip),%rdx        # 8520 <input_strings>
    2223:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    222a:	75 6e 63 
    222d:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2234:	2a 2a 00 
    2237:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    223b:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2240:	e8 f7 fd ff ff       	call   203c <explode_bomb>

0000000000002245 <phase_defused>:
    2245:	f3 0f 1e fa          	endbr64
    2249:	53                   	push   %rbx
    224a:	48 89 fb             	mov    %rdi,%rbx
    224d:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2253:	48 89 fe             	mov    %rdi,%rsi
    2256:	bf 01 00 00 00       	mov    $0x1,%edi
    225b:	e8 7a fc ff ff       	call   1eda <send_msg>
    2260:	83 3b 01             	cmpl   $0x1,(%rbx)
    2263:	75 0b                	jne    2270 <phase_defused+0x2b>
    2265:	83 3d ac 62 00 00 06 	cmpl   $0x6,0x62ac(%rip)        # 8518 <num_input_strings>
    226c:	74 22                	je     2290 <phase_defused+0x4b>
    226e:	5b                   	pop    %rbx
    226f:	c3                   	ret
    2270:	48 8d 35 b9 21 00 00 	lea    0x21b9(%rip),%rsi        # 4430 <transition_table+0xd0>
    2277:	bf 01 00 00 00       	mov    $0x1,%edi
    227c:	b8 00 00 00 00       	mov    $0x0,%eax
    2281:	e8 da f0 ff ff       	call   1360 <__printf_chk@plt>
    2286:	bf 08 00 00 00       	mov    $0x8,%edi
    228b:	e8 00 f1 ff ff       	call   1390 <exit@plt>
    2290:	e8 cf f3 ff ff       	call   1664 <abracadabra>
    2295:	85 c0                	test   %eax,%eax
    2297:	75 1a                	jne    22b3 <phase_defused+0x6e>
    2299:	48 8d 3d f0 22 00 00 	lea    0x22f0(%rip),%rdi        # 4590 <transition_table+0x230>
    22a0:	e8 cb ef ff ff       	call   1270 <puts@plt>
    22a5:	48 8d 3d 2c 23 00 00 	lea    0x232c(%rip),%rdi        # 45d8 <transition_table+0x278>
    22ac:	e8 bf ef ff ff       	call   1270 <puts@plt>
    22b1:	eb bb                	jmp    226e <phase_defused+0x29>
    22b3:	e8 39 f4 ff ff       	call   16f1 <alohomora>
    22b8:	85 c0                	test   %eax,%eax
    22ba:	74 30                	je     22ec <phase_defused+0xa7>
    22bc:	48 8d 3d dd 21 00 00 	lea    0x21dd(%rip),%rdi        # 44a0 <transition_table+0x140>
    22c3:	e8 a8 ef ff ff       	call   1270 <puts@plt>
    22c8:	48 8d 3d f9 21 00 00 	lea    0x21f9(%rip),%rdi        # 44c8 <transition_table+0x168>
    22cf:	e8 9c ef ff ff       	call   1270 <puts@plt>
    22d4:	48 8d 3d 25 22 00 00 	lea    0x2225(%rip),%rdi        # 4500 <transition_table+0x1a0>
    22db:	e8 90 ef ff ff       	call   1270 <puts@plt>
    22e0:	b8 00 00 00 00       	mov    $0x0,%eax
    22e5:	e8 d3 f8 ff ff       	call   1bbd <secret_phase>
    22ea:	eb ad                	jmp    2299 <phase_defused+0x54>
    22ec:	48 8d 3d 5d 22 00 00 	lea    0x225d(%rip),%rdi        # 4550 <transition_table+0x1f0>
    22f3:	e8 78 ef ff ff       	call   1270 <puts@plt>
    22f8:	48 8d 3d 01 22 00 00 	lea    0x2201(%rip),%rdi        # 4500 <transition_table+0x1a0>
    22ff:	e8 6c ef ff ff       	call   1270 <puts@plt>
    2304:	eb 93                	jmp    2299 <phase_defused+0x54>

0000000000002306 <rio_readinitb>:
    2306:	89 37                	mov    %esi,(%rdi)
    2308:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    230f:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2313:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2317:	c3                   	ret

0000000000002318 <sigalrm_handler>:
    2318:	f3 0f 1e fa          	endbr64
    231c:	50                   	push   %rax
    231d:	58                   	pop    %rax
    231e:	48 83 ec 08          	sub    $0x8,%rsp
    2322:	b9 00 00 00 00       	mov    $0x0,%ecx
    2327:	48 8d 15 12 24 00 00 	lea    0x2412(%rip),%rdx        # 4740 <transition_table+0x3e0>
    232e:	be 01 00 00 00       	mov    $0x1,%esi
    2333:	48 8b 3d 46 61 00 00 	mov    0x6146(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    233a:	b8 00 00 00 00       	mov    $0x0,%eax
    233f:	e8 6c f0 ff ff       	call   13b0 <__fprintf_chk@plt>
    2344:	bf 01 00 00 00       	mov    $0x1,%edi
    2349:	e8 42 f0 ff ff       	call   1390 <exit@plt>

000000000000234e <rio_writen>:
    234e:	41 55                	push   %r13
    2350:	41 54                	push   %r12
    2352:	55                   	push   %rbp
    2353:	53                   	push   %rbx
    2354:	48 83 ec 08          	sub    $0x8,%rsp
    2358:	41 89 fc             	mov    %edi,%r12d
    235b:	48 89 f5             	mov    %rsi,%rbp
    235e:	49 89 d5             	mov    %rdx,%r13
    2361:	48 89 d3             	mov    %rdx,%rbx
    2364:	eb 06                	jmp    236c <rio_writen+0x1e>
    2366:	48 29 c3             	sub    %rax,%rbx
    2369:	48 01 c5             	add    %rax,%rbp
    236c:	48 85 db             	test   %rbx,%rbx
    236f:	74 24                	je     2395 <rio_writen+0x47>
    2371:	48 89 da             	mov    %rbx,%rdx
    2374:	48 89 ee             	mov    %rbp,%rsi
    2377:	44 89 e7             	mov    %r12d,%edi
    237a:	e8 01 ef ff ff       	call   1280 <write@plt>
    237f:	48 85 c0             	test   %rax,%rax
    2382:	7f e2                	jg     2366 <rio_writen+0x18>
    2384:	e8 b7 ee ff ff       	call   1240 <__errno_location@plt>
    2389:	83 38 04             	cmpl   $0x4,(%rax)
    238c:	75 15                	jne    23a3 <rio_writen+0x55>
    238e:	b8 00 00 00 00       	mov    $0x0,%eax
    2393:	eb d1                	jmp    2366 <rio_writen+0x18>
    2395:	4c 89 e8             	mov    %r13,%rax
    2398:	48 83 c4 08          	add    $0x8,%rsp
    239c:	5b                   	pop    %rbx
    239d:	5d                   	pop    %rbp
    239e:	41 5c                	pop    %r12
    23a0:	41 5d                	pop    %r13
    23a2:	c3                   	ret
    23a3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23aa:	eb ec                	jmp    2398 <rio_writen+0x4a>

00000000000023ac <rio_read>:
    23ac:	41 55                	push   %r13
    23ae:	41 54                	push   %r12
    23b0:	55                   	push   %rbp
    23b1:	53                   	push   %rbx
    23b2:	48 83 ec 08          	sub    $0x8,%rsp
    23b6:	48 89 fb             	mov    %rdi,%rbx
    23b9:	49 89 f5             	mov    %rsi,%r13
    23bc:	49 89 d4             	mov    %rdx,%r12
    23bf:	eb 0a                	jmp    23cb <rio_read+0x1f>
    23c1:	e8 7a ee ff ff       	call   1240 <__errno_location@plt>
    23c6:	83 38 04             	cmpl   $0x4,(%rax)
    23c9:	75 61                	jne    242c <rio_read+0x80>
    23cb:	8b 6b 04             	mov    0x4(%rbx),%ebp
    23ce:	85 ed                	test   %ebp,%ebp
    23d0:	7f 29                	jg     23fb <rio_read+0x4f>
    23d2:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    23d6:	8b 3b                	mov    (%rbx),%edi
    23d8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23df:	ba 00 20 00 00       	mov    $0x2000,%edx
    23e4:	48 89 ee             	mov    %rbp,%rsi
    23e7:	e8 74 ee ff ff       	call   1260 <__read_chk@plt>
    23ec:	89 43 04             	mov    %eax,0x4(%rbx)
    23ef:	85 c0                	test   %eax,%eax
    23f1:	78 ce                	js     23c1 <rio_read+0x15>
    23f3:	74 40                	je     2435 <rio_read+0x89>
    23f5:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    23f9:	eb d0                	jmp    23cb <rio_read+0x1f>
    23fb:	89 e8                	mov    %ebp,%eax
    23fd:	4c 39 e0             	cmp    %r12,%rax
    2400:	72 03                	jb     2405 <rio_read+0x59>
    2402:	44 89 e5             	mov    %r12d,%ebp
    2405:	4c 63 e5             	movslq %ebp,%r12
    2408:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    240c:	4c 89 e2             	mov    %r12,%rdx
    240f:	4c 89 ef             	mov    %r13,%rdi
    2412:	e8 f9 ee ff ff       	call   1310 <memcpy@plt>
    2417:	4c 01 63 08          	add    %r12,0x8(%rbx)
    241b:	29 6b 04             	sub    %ebp,0x4(%rbx)
    241e:	4c 89 e0             	mov    %r12,%rax
    2421:	48 83 c4 08          	add    $0x8,%rsp
    2425:	5b                   	pop    %rbx
    2426:	5d                   	pop    %rbp
    2427:	41 5c                	pop    %r12
    2429:	41 5d                	pop    %r13
    242b:	c3                   	ret
    242c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2433:	eb ec                	jmp    2421 <rio_read+0x75>
    2435:	b8 00 00 00 00       	mov    $0x0,%eax
    243a:	eb e5                	jmp    2421 <rio_read+0x75>

000000000000243c <rio_readlineb>:
    243c:	41 55                	push   %r13
    243e:	41 54                	push   %r12
    2440:	55                   	push   %rbp
    2441:	53                   	push   %rbx
    2442:	48 83 ec 18          	sub    $0x18,%rsp
    2446:	49 89 fd             	mov    %rdi,%r13
    2449:	48 89 f5             	mov    %rsi,%rbp
    244c:	49 89 d4             	mov    %rdx,%r12
    244f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2456:	00 00 
    2458:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    245d:	31 c0                	xor    %eax,%eax
    245f:	bb 01 00 00 00       	mov    $0x1,%ebx
    2464:	eb 18                	jmp    247e <rio_readlineb+0x42>
    2466:	85 c0                	test   %eax,%eax
    2468:	75 65                	jne    24cf <rio_readlineb+0x93>
    246a:	48 83 fb 01          	cmp    $0x1,%rbx
    246e:	75 3d                	jne    24ad <rio_readlineb+0x71>
    2470:	b8 00 00 00 00       	mov    $0x0,%eax
    2475:	eb 3d                	jmp    24b4 <rio_readlineb+0x78>
    2477:	48 83 c3 01          	add    $0x1,%rbx
    247b:	48 89 d5             	mov    %rdx,%rbp
    247e:	4c 39 e3             	cmp    %r12,%rbx
    2481:	73 2a                	jae    24ad <rio_readlineb+0x71>
    2483:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    2488:	ba 01 00 00 00       	mov    $0x1,%edx
    248d:	4c 89 ef             	mov    %r13,%rdi
    2490:	e8 17 ff ff ff       	call   23ac <rio_read>
    2495:	83 f8 01             	cmp    $0x1,%eax
    2498:	75 cc                	jne    2466 <rio_readlineb+0x2a>
    249a:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    249e:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    24a3:	88 45 00             	mov    %al,0x0(%rbp)
    24a6:	3c 0a                	cmp    $0xa,%al
    24a8:	75 cd                	jne    2477 <rio_readlineb+0x3b>
    24aa:	48 89 d5             	mov    %rdx,%rbp
    24ad:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    24b1:	48 89 d8             	mov    %rbx,%rax
    24b4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    24b9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    24c0:	00 00 
    24c2:	75 14                	jne    24d8 <rio_readlineb+0x9c>
    24c4:	48 83 c4 18          	add    $0x18,%rsp
    24c8:	5b                   	pop    %rbx
    24c9:	5d                   	pop    %rbp
    24ca:	41 5c                	pop    %r12
    24cc:	41 5d                	pop    %r13
    24ce:	c3                   	ret
    24cf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    24d6:	eb dc                	jmp    24b4 <rio_readlineb+0x78>
    24d8:	e8 c3 ed ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000024dd <urlencode>:
    24dd:	41 54                	push   %r12
    24df:	55                   	push   %rbp
    24e0:	53                   	push   %rbx
    24e1:	48 83 ec 10          	sub    $0x10,%rsp
    24e5:	48 89 fb             	mov    %rdi,%rbx
    24e8:	48 89 f5             	mov    %rsi,%rbp
    24eb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24f2:	00 00 
    24f4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24f9:	31 c0                	xor    %eax,%eax
    24fb:	e8 90 ed ff ff       	call   1290 <strlen@plt>
    2500:	eb 0f                	jmp    2511 <urlencode+0x34>
    2502:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2506:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    250a:	48 83 c3 01          	add    $0x1,%rbx
    250e:	44 89 e0             	mov    %r12d,%eax
    2511:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2515:	85 c0                	test   %eax,%eax
    2517:	0f 84 a8 00 00 00    	je     25c5 <urlencode+0xe8>
    251d:	44 0f b6 03          	movzbl (%rbx),%r8d
    2521:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2525:	0f 94 c0             	sete   %al
    2528:	41 80 f8 2d          	cmp    $0x2d,%r8b
    252c:	0f 94 c2             	sete   %dl
    252f:	08 d0                	or     %dl,%al
    2531:	75 cf                	jne    2502 <urlencode+0x25>
    2533:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2537:	74 c9                	je     2502 <urlencode+0x25>
    2539:	41 80 f8 5f          	cmp    $0x5f,%r8b
    253d:	74 c3                	je     2502 <urlencode+0x25>
    253f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2543:	3c 09                	cmp    $0x9,%al
    2545:	76 bb                	jbe    2502 <urlencode+0x25>
    2547:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    254b:	3c 19                	cmp    $0x19,%al
    254d:	76 b3                	jbe    2502 <urlencode+0x25>
    254f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2553:	3c 19                	cmp    $0x19,%al
    2555:	76 ab                	jbe    2502 <urlencode+0x25>
    2557:	41 80 f8 20          	cmp    $0x20,%r8b
    255b:	74 56                	je     25b3 <urlencode+0xd6>
    255d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2561:	3c 5f                	cmp    $0x5f,%al
    2563:	0f 96 c0             	setbe  %al
    2566:	41 80 f8 09          	cmp    $0x9,%r8b
    256a:	0f 94 c2             	sete   %dl
    256d:	08 d0                	or     %dl,%al
    256f:	74 4f                	je     25c0 <urlencode+0xe3>
    2571:	48 89 e7             	mov    %rsp,%rdi
    2574:	45 0f b6 c0          	movzbl %r8b,%r8d
    2578:	48 8d 0d 76 22 00 00 	lea    0x2276(%rip),%rcx        # 47f5 <transition_table+0x495>
    257f:	ba 08 00 00 00       	mov    $0x8,%edx
    2584:	be 01 00 00 00       	mov    $0x1,%esi
    2589:	b8 00 00 00 00       	mov    $0x0,%eax
    258e:	e8 4d ee ff ff       	call   13e0 <__sprintf_chk@plt>
    2593:	0f b6 04 24          	movzbl (%rsp),%eax
    2597:	88 45 00             	mov    %al,0x0(%rbp)
    259a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    259f:	88 45 01             	mov    %al,0x1(%rbp)
    25a2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    25a7:	88 45 02             	mov    %al,0x2(%rbp)
    25aa:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    25ae:	e9 57 ff ff ff       	jmp    250a <urlencode+0x2d>
    25b3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    25b7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    25bb:	e9 4a ff ff ff       	jmp    250a <urlencode+0x2d>
    25c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c5:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    25ca:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25d1:	00 00 
    25d3:	75 09                	jne    25de <urlencode+0x101>
    25d5:	48 83 c4 10          	add    $0x10,%rsp
    25d9:	5b                   	pop    %rbx
    25da:	5d                   	pop    %rbp
    25db:	41 5c                	pop    %r12
    25dd:	c3                   	ret
    25de:	e8 bd ec ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000025e3 <submitr>:
    25e3:	f3 0f 1e fa          	endbr64
    25e7:	41 57                	push   %r15
    25e9:	41 56                	push   %r14
    25eb:	41 55                	push   %r13
    25ed:	41 54                	push   %r12
    25ef:	55                   	push   %rbp
    25f0:	53                   	push   %rbx
    25f1:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    25f8:	ff 
    25f9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2600:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2605:	4c 39 dc             	cmp    %r11,%rsp
    2608:	75 ef                	jne    25f9 <submitr+0x16>
    260a:	48 83 ec 68          	sub    $0x68,%rsp
    260e:	49 89 fc             	mov    %rdi,%r12
    2611:	89 74 24 18          	mov    %esi,0x18(%rsp)
    2615:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    261a:	49 89 cd             	mov    %rcx,%r13
    261d:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2622:	4d 89 ce             	mov    %r9,%r14
    2625:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    262c:	00 
    262d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2634:	00 00 
    2636:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    263d:	00 
    263e:	31 c0                	xor    %eax,%eax
    2640:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2647:	00 
    2648:	ba 00 00 00 00       	mov    $0x0,%edx
    264d:	be 01 00 00 00       	mov    $0x1,%esi
    2652:	bf 02 00 00 00       	mov    $0x2,%edi
    2657:	e8 94 ed ff ff       	call   13f0 <socket@plt>
    265c:	85 c0                	test   %eax,%eax
    265e:	0f 88 ab 02 00 00    	js     290f <submitr+0x32c>
    2664:	89 c3                	mov    %eax,%ebx
    2666:	4c 89 e7             	mov    %r12,%rdi
    2669:	e8 82 ec ff ff       	call   12f0 <gethostbyname@plt>
    266e:	48 85 c0             	test   %rax,%rax
    2671:	0f 84 e4 02 00 00    	je     295b <submitr+0x378>
    2677:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    267c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2683:	00 00 
    2685:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    268c:	00 00 
    268e:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2695:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2699:	48 8b 40 18          	mov    0x18(%rax),%rax
    269d:	48 8b 30             	mov    (%rax),%rsi
    26a0:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    26a5:	b9 0c 00 00 00       	mov    $0xc,%ecx
    26aa:	e8 51 ec ff ff       	call   1300 <__memmove_chk@plt>
    26af:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    26b4:	66 c1 c0 08          	rol    $0x8,%ax
    26b8:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    26bd:	ba 10 00 00 00       	mov    $0x10,%edx
    26c2:	4c 89 fe             	mov    %r15,%rsi
    26c5:	89 df                	mov    %ebx,%edi
    26c7:	e8 d4 ec ff ff       	call   13a0 <connect@plt>
    26cc:	85 c0                	test   %eax,%eax
    26ce:	0f 88 fd 02 00 00    	js     29d1 <submitr+0x3ee>
    26d4:	4c 89 f7             	mov    %r14,%rdi
    26d7:	e8 b4 eb ff ff       	call   1290 <strlen@plt>
    26dc:	49 89 c7             	mov    %rax,%r15
    26df:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    26e4:	e8 a7 eb ff ff       	call   1290 <strlen@plt>
    26e9:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26ee:	4c 89 ef             	mov    %r13,%rdi
    26f1:	e8 9a eb ff ff       	call   1290 <strlen@plt>
    26f6:	48 03 44 24 18       	add    0x18(%rsp),%rax
    26fb:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2700:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2705:	e8 86 eb ff ff       	call   1290 <strlen@plt>
    270a:	48 03 44 24 18       	add    0x18(%rsp),%rax
    270f:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    2713:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    271a:	00 
    271b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2721:	0f 87 12 03 00 00    	ja     2a39 <submitr+0x456>
    2727:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    272e:	00 
    272f:	b9 00 04 00 00       	mov    $0x400,%ecx
    2734:	b8 00 00 00 00       	mov    $0x0,%eax
    2739:	48 89 f7             	mov    %rsi,%rdi
    273c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    273f:	4c 89 f7             	mov    %r14,%rdi
    2742:	e8 96 fd ff ff       	call   24dd <urlencode>
    2747:	85 c0                	test   %eax,%eax
    2749:	0f 88 5d 03 00 00    	js     2aac <submitr+0x4c9>
    274f:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2756:	00 
    2757:	b9 00 04 00 00       	mov    $0x400,%ecx
    275c:	b8 00 00 00 00       	mov    $0x0,%eax
    2761:	48 89 f7             	mov    %rsi,%rdi
    2764:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2767:	4c 89 ef             	mov    %r13,%rdi
    276a:	e8 6e fd ff ff       	call   24dd <urlencode>
    276f:	85 c0                	test   %eax,%eax
    2771:	0f 88 c0 03 00 00    	js     2b37 <submitr+0x554>
    2777:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    277e:	00 
    277f:	48 83 ec 08          	sub    $0x8,%rsp
    2783:	41 54                	push   %r12
    2785:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    278c:	00 
    278d:	50                   	push   %rax
    278e:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    2795:	00 
    2796:	50                   	push   %rax
    2797:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    279c:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    27a1:	48 8d 0d c0 1f 00 00 	lea    0x1fc0(%rip),%rcx        # 4768 <transition_table+0x408>
    27a8:	ba 00 20 00 00       	mov    $0x2000,%edx
    27ad:	be 01 00 00 00       	mov    $0x1,%esi
    27b2:	4c 89 ff             	mov    %r15,%rdi
    27b5:	b8 00 00 00 00       	mov    $0x0,%eax
    27ba:	e8 21 ec ff ff       	call   13e0 <__sprintf_chk@plt>
    27bf:	48 83 c4 20          	add    $0x20,%rsp
    27c3:	4c 89 ff             	mov    %r15,%rdi
    27c6:	e8 c5 ea ff ff       	call   1290 <strlen@plt>
    27cb:	48 89 c2             	mov    %rax,%rdx
    27ce:	4c 89 fe             	mov    %r15,%rsi
    27d1:	89 df                	mov    %ebx,%edi
    27d3:	e8 76 fb ff ff       	call   234e <rio_writen>
    27d8:	48 85 c0             	test   %rax,%rax
    27db:	0f 88 e1 03 00 00    	js     2bc2 <submitr+0x5df>
    27e1:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    27e6:	89 de                	mov    %ebx,%esi
    27e8:	4c 89 e7             	mov    %r12,%rdi
    27eb:	e8 16 fb ff ff       	call   2306 <rio_readinitb>
    27f0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    27f7:	00 
    27f8:	ba 00 20 00 00       	mov    $0x2000,%edx
    27fd:	4c 89 e7             	mov    %r12,%rdi
    2800:	e8 37 fc ff ff       	call   243c <rio_readlineb>
    2805:	48 85 c0             	test   %rax,%rax
    2808:	0f 8e 20 04 00 00    	jle    2c2e <submitr+0x64b>
    280e:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2813:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    281a:	00 
    281b:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2822:	00 
    2823:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    282a:	00 
    282b:	48 8d 35 ca 1f 00 00 	lea    0x1fca(%rip),%rsi        # 47fc <transition_table+0x49c>
    2832:	b8 00 00 00 00       	mov    $0x0,%eax
    2837:	e8 04 eb ff ff       	call   1340 <__isoc99_sscanf@plt>
    283c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2843:	00 
    2844:	48 8d 35 c8 1f 00 00 	lea    0x1fc8(%rip),%rsi        # 4813 <transition_table+0x4b3>
    284b:	e8 80 ea ff ff       	call   12d0 <strcmp@plt>
    2850:	85 c0                	test   %eax,%eax
    2852:	0f 84 56 04 00 00    	je     2cae <submitr+0x6cb>
    2858:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    285f:	00 
    2860:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2865:	ba 00 20 00 00       	mov    $0x2000,%edx
    286a:	e8 cd fb ff ff       	call   243c <rio_readlineb>
    286f:	48 85 c0             	test   %rax,%rax
    2872:	7f c8                	jg     283c <submitr+0x259>
    2874:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    287b:	3a 20 43 
    287e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2885:	20 75 6e 
    2888:	48 89 45 00          	mov    %rax,0x0(%rbp)
    288c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2890:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2897:	74 6f 20 
    289a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    28a1:	68 65 61 
    28a4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28a8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28ac:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    28b3:	66 72 6f 
    28b6:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    28bd:	6f 6c 61 
    28c0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28c4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    28c8:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    28cf:	76 65 72 
    28d2:	48 89 45 30          	mov    %rax,0x30(%rbp)
    28d6:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    28da:	89 df                	mov    %ebx,%edi
    28dc:	e8 df e9 ff ff       	call   12c0 <close@plt>
    28e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28e6:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    28ed:	00 
    28ee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28f5:	00 00 
    28f7:	0f 85 ff 04 00 00    	jne    2dfc <submitr+0x819>
    28fd:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    2904:	5b                   	pop    %rbx
    2905:	5d                   	pop    %rbp
    2906:	41 5c                	pop    %r12
    2908:	41 5d                	pop    %r13
    290a:	41 5e                	pop    %r14
    290c:	41 5f                	pop    %r15
    290e:	c3                   	ret
    290f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2916:	3a 20 43 
    2919:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2920:	20 75 6e 
    2923:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2927:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    292b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2932:	74 6f 20 
    2935:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    293c:	65 20 73 
    293f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2943:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2947:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    294e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2954:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2959:	eb 8b                	jmp    28e6 <submitr+0x303>
    295b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2962:	3a 20 44 
    2965:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    296c:	20 75 6e 
    296f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2973:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2977:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    297e:	74 6f 20 
    2981:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2988:	76 65 20 
    298b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    298f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2993:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    299a:	61 62 20 
    299d:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    29a4:	72 20 61 
    29a7:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29ab:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29af:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    29b6:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    29bc:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    29c0:	89 df                	mov    %ebx,%edi
    29c2:	e8 f9 e8 ff ff       	call   12c0 <close@plt>
    29c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29cc:	e9 15 ff ff ff       	jmp    28e6 <submitr+0x303>
    29d1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    29d8:	3a 20 55 
    29db:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    29e2:	20 74 6f 
    29e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29ed:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    29f4:	65 63 74 
    29f7:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    29fe:	68 65 20 
    2a01:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a05:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a09:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2a10:	61 62 20 
    2a13:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a17:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2a1e:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2a24:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a28:	89 df                	mov    %ebx,%edi
    2a2a:	e8 91 e8 ff ff       	call   12c0 <close@plt>
    2a2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a34:	e9 ad fe ff ff       	jmp    28e6 <submitr+0x303>
    2a39:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a40:	3a 20 52 
    2a43:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a4a:	20 73 74 
    2a4d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a51:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a55:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2a5c:	74 6f 6f 
    2a5f:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2a66:	65 2e 20 
    2a69:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a6d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a71:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a78:	61 73 65 
    2a7b:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2a82:	49 54 52 
    2a85:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a89:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a8d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2a94:	55 46 00 
    2a97:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a9b:	89 df                	mov    %ebx,%edi
    2a9d:	e8 1e e8 ff ff       	call   12c0 <close@plt>
    2aa2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2aa7:	e9 3a fe ff ff       	jmp    28e6 <submitr+0x303>
    2aac:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2ab3:	3a 20 52 
    2ab6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2abd:	20 73 74 
    2ac0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ac4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ac8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2acf:	63 6f 6e 
    2ad2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2ad9:	20 61 6e 
    2adc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2ae0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ae4:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2aeb:	67 61 6c 
    2aee:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2af5:	6e 70 72 
    2af8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2afc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b00:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b07:	6c 65 20 
    2b0a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b11:	63 74 65 
    2b14:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b18:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b1c:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b22:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b26:	89 df                	mov    %ebx,%edi
    2b28:	e8 93 e7 ff ff       	call   12c0 <close@plt>
    2b2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b32:	e9 af fd ff ff       	jmp    28e6 <submitr+0x303>
    2b37:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b3e:	3a 20 55 
    2b41:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    2b48:	20 73 74 
    2b4b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b4f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b53:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b5a:	63 6f 6e 
    2b5d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b64:	20 61 6e 
    2b67:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b6b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b6f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b76:	67 61 6c 
    2b79:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b80:	6e 70 72 
    2b83:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b87:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b8b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b92:	6c 65 20 
    2b95:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b9c:	63 74 65 
    2b9f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ba3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2ba7:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2bad:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2bb1:	89 df                	mov    %ebx,%edi
    2bb3:	e8 08 e7 ff ff       	call   12c0 <close@plt>
    2bb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bbd:	e9 24 fd ff ff       	jmp    28e6 <submitr+0x303>
    2bc2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2bc9:	3a 20 43 
    2bcc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bd3:	20 75 6e 
    2bd6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bda:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bde:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2be5:	74 6f 20 
    2be8:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2bef:	20 74 6f 
    2bf2:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bf6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bfa:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2c01:	41 75 74 
    2c04:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2c0b:	73 65 72 
    2c0e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c12:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c16:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2c1d:	89 df                	mov    %ebx,%edi
    2c1f:	e8 9c e6 ff ff       	call   12c0 <close@plt>
    2c24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c29:	e9 b8 fc ff ff       	jmp    28e6 <submitr+0x303>
    2c2e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c35:	3a 20 43 
    2c38:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c3f:	20 75 6e 
    2c42:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c46:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c4a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c51:	74 6f 20 
    2c54:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c5b:	66 69 72 
    2c5e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c62:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c66:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c6d:	61 64 65 
    2c70:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2c77:	6d 20 41 
    2c7a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c7e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c82:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2c89:	62 20 73 
    2c8c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c90:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2c97:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2c9d:	89 df                	mov    %ebx,%edi
    2c9f:	e8 1c e6 ff ff       	call   12c0 <close@plt>
    2ca4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ca9:	e9 38 fc ff ff       	jmp    28e6 <submitr+0x303>
    2cae:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cb5:	00 
    2cb6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2cbb:	ba 00 20 00 00       	mov    $0x2000,%edx
    2cc0:	e8 77 f7 ff ff       	call   243c <rio_readlineb>
    2cc5:	48 85 c0             	test   %rax,%rax
    2cc8:	7e 78                	jle    2d42 <submitr+0x75f>
    2cca:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ccf:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cd6:	0f 85 e7 00 00 00    	jne    2dc3 <submitr+0x7e0>
    2cdc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2ce3:	00 
    2ce4:	48 89 ef             	mov    %rbp,%rdi
    2ce7:	e8 64 e5 ff ff       	call   1250 <strcpy@plt>
    2cec:	89 df                	mov    %ebx,%edi
    2cee:	e8 cd e5 ff ff       	call   12c0 <close@plt>
    2cf3:	48 8d 35 13 1b 00 00 	lea    0x1b13(%rip),%rsi        # 480d <transition_table+0x4ad>
    2cfa:	48 89 ef             	mov    %rbp,%rdi
    2cfd:	e8 ce e5 ff ff       	call   12d0 <strcmp@plt>
    2d02:	85 c0                	test   %eax,%eax
    2d04:	0f 84 dc fb ff ff    	je     28e6 <submitr+0x303>
    2d0a:	48 8d 35 00 1b 00 00 	lea    0x1b00(%rip),%rsi        # 4811 <transition_table+0x4b1>
    2d11:	48 89 ef             	mov    %rbp,%rdi
    2d14:	e8 b7 e5 ff ff       	call   12d0 <strcmp@plt>
    2d19:	85 c0                	test   %eax,%eax
    2d1b:	0f 84 c5 fb ff ff    	je     28e6 <submitr+0x303>
    2d21:	48 8d 35 ee 1a 00 00 	lea    0x1aee(%rip),%rsi        # 4816 <transition_table+0x4b6>
    2d28:	48 89 ef             	mov    %rbp,%rdi
    2d2b:	e8 a0 e5 ff ff       	call   12d0 <strcmp@plt>
    2d30:	85 c0                	test   %eax,%eax
    2d32:	0f 84 ae fb ff ff    	je     28e6 <submitr+0x303>
    2d38:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d3d:	e9 a4 fb ff ff       	jmp    28e6 <submitr+0x303>
    2d42:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d49:	3a 20 43 
    2d4c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d53:	20 75 6e 
    2d56:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d5a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d5e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d65:	74 6f 20 
    2d68:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d6f:	73 74 61 
    2d72:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d76:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d7a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d81:	65 73 73 
    2d84:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2d8b:	72 6f 6d 
    2d8e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d92:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d96:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2d9d:	6c 61 62 
    2da0:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2da7:	65 72 00 
    2daa:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2dae:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2db2:	89 df                	mov    %ebx,%edi
    2db4:	e8 07 e5 ff ff       	call   12c0 <close@plt>
    2db9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dbe:	e9 23 fb ff ff       	jmp    28e6 <submitr+0x303>
    2dc3:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    2dca:	00 
    2dcb:	48 8d 0d f6 19 00 00 	lea    0x19f6(%rip),%rcx        # 47c8 <transition_table+0x468>
    2dd2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2dd9:	be 01 00 00 00       	mov    $0x1,%esi
    2dde:	48 89 ef             	mov    %rbp,%rdi
    2de1:	b8 00 00 00 00       	mov    $0x0,%eax
    2de6:	e8 f5 e5 ff ff       	call   13e0 <__sprintf_chk@plt>
    2deb:	89 df                	mov    %ebx,%edi
    2ded:	e8 ce e4 ff ff       	call   12c0 <close@plt>
    2df2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2df7:	e9 ea fa ff ff       	jmp    28e6 <submitr+0x303>
    2dfc:	e8 9f e4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002e01 <init_timeout>:
    2e01:	f3 0f 1e fa          	endbr64
    2e05:	85 ff                	test   %edi,%edi
    2e07:	74 26                	je     2e2f <init_timeout+0x2e>
    2e09:	53                   	push   %rbx
    2e0a:	89 fb                	mov    %edi,%ebx
    2e0c:	78 1a                	js     2e28 <init_timeout+0x27>
    2e0e:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 2318 <sigalrm_handler>
    2e15:	bf 0e 00 00 00       	mov    $0xe,%edi
    2e1a:	e8 c1 e4 ff ff       	call   12e0 <signal@plt>
    2e1f:	89 df                	mov    %ebx,%edi
    2e21:	e8 8a e4 ff ff       	call   12b0 <alarm@plt>
    2e26:	5b                   	pop    %rbx
    2e27:	c3                   	ret
    2e28:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e2d:	eb df                	jmp    2e0e <init_timeout+0xd>
    2e2f:	c3                   	ret

0000000000002e30 <init_driver>:
    2e30:	f3 0f 1e fa          	endbr64
    2e34:	41 54                	push   %r12
    2e36:	55                   	push   %rbp
    2e37:	53                   	push   %rbx
    2e38:	48 83 ec 20          	sub    $0x20,%rsp
    2e3c:	48 89 fd             	mov    %rdi,%rbp
    2e3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e46:	00 00 
    2e48:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e4d:	31 c0                	xor    %eax,%eax
    2e4f:	be 01 00 00 00       	mov    $0x1,%esi
    2e54:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e59:	e8 82 e4 ff ff       	call   12e0 <signal@plt>
    2e5e:	be 01 00 00 00       	mov    $0x1,%esi
    2e63:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e68:	e8 73 e4 ff ff       	call   12e0 <signal@plt>
    2e6d:	be 01 00 00 00       	mov    $0x1,%esi
    2e72:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e77:	e8 64 e4 ff ff       	call   12e0 <signal@plt>
    2e7c:	ba 00 00 00 00       	mov    $0x0,%edx
    2e81:	be 01 00 00 00       	mov    $0x1,%esi
    2e86:	bf 02 00 00 00       	mov    $0x2,%edi
    2e8b:	e8 60 e5 ff ff       	call   13f0 <socket@plt>
    2e90:	85 c0                	test   %eax,%eax
    2e92:	0f 88 9c 00 00 00    	js     2f34 <init_driver+0x104>
    2e98:	89 c3                	mov    %eax,%ebx
    2e9a:	48 8d 3d 78 19 00 00 	lea    0x1978(%rip),%rdi        # 4819 <transition_table+0x4b9>
    2ea1:	e8 4a e4 ff ff       	call   12f0 <gethostbyname@plt>
    2ea6:	48 85 c0             	test   %rax,%rax
    2ea9:	0f 84 d1 00 00 00    	je     2f80 <init_driver+0x150>
    2eaf:	49 89 e4             	mov    %rsp,%r12
    2eb2:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2eb9:	00 
    2eba:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2ec1:	00 00 
    2ec3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ec9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2ecd:	48 8b 40 18          	mov    0x18(%rax),%rax
    2ed1:	48 8b 30             	mov    (%rax),%rsi
    2ed4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2ed9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2ede:	e8 1d e4 ff ff       	call   1300 <__memmove_chk@plt>
    2ee3:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2eea:	ba 10 00 00 00       	mov    $0x10,%edx
    2eef:	4c 89 e6             	mov    %r12,%rsi
    2ef2:	89 df                	mov    %ebx,%edi
    2ef4:	e8 a7 e4 ff ff       	call   13a0 <connect@plt>
    2ef9:	85 c0                	test   %eax,%eax
    2efb:	0f 88 e7 00 00 00    	js     2fe8 <init_driver+0x1b8>
    2f01:	89 df                	mov    %ebx,%edi
    2f03:	e8 b8 e3 ff ff       	call   12c0 <close@plt>
    2f08:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2f0e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2f12:	b8 00 00 00 00       	mov    $0x0,%eax
    2f17:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2f1c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2f23:	00 00 
    2f25:	0f 85 2f 01 00 00    	jne    305a <init_driver+0x22a>
    2f2b:	48 83 c4 20          	add    $0x20,%rsp
    2f2f:	5b                   	pop    %rbx
    2f30:	5d                   	pop    %rbp
    2f31:	41 5c                	pop    %r12
    2f33:	c3                   	ret
    2f34:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f3b:	3a 20 43 
    2f3e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f45:	20 75 6e 
    2f48:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f4c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f50:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f57:	74 6f 20 
    2f5a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f61:	65 20 73 
    2f64:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f68:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f6c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2f73:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2f79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f7e:	eb 97                	jmp    2f17 <init_driver+0xe7>
    2f80:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2f87:	3a 20 44 
    2f8a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2f91:	20 75 6e 
    2f94:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f98:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f9c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2fa3:	74 6f 20 
    2fa6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2fad:	76 65 20 
    2fb0:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2fb4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2fb8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2fbf:	72 20 61 
    2fc2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2fc6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2fcd:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2fd3:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2fd7:	89 df                	mov    %ebx,%edi
    2fd9:	e8 e2 e2 ff ff       	call   12c0 <close@plt>
    2fde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fe3:	e9 2f ff ff ff       	jmp    2f17 <init_driver+0xe7>
    2fe8:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
    2fef:	30 35 2e 
    2ff2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ff6:	c7 45 08 33 31 2e 32 	movl   $0x322e3133,0x8(%rbp)
    2ffd:	66 c7 45 0c 33 32    	movw   $0x3233,0xc(%rbp)
    3003:	c6 45 0e 00          	movb   $0x0,0xe(%rbp)
    3007:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    300e:	3a 20 55 
    3011:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3018:	20 74 6f 
    301b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    301f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3023:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    302a:	65 63 74 
    302d:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    3034:	65 72 76 
    3037:	48 89 45 10          	mov    %rax,0x10(%rbp)
    303b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    303f:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    3045:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    3049:	89 df                	mov    %ebx,%edi
    304b:	e8 70 e2 ff ff       	call   12c0 <close@plt>
    3050:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3055:	e9 bd fe ff ff       	jmp    2f17 <init_driver+0xe7>
    305a:	e8 41 e2 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000305f <driver_post>:
    305f:	f3 0f 1e fa          	endbr64
    3063:	53                   	push   %rbx
    3064:	4c 89 cb             	mov    %r9,%rbx
    3067:	45 85 c0             	test   %r8d,%r8d
    306a:	75 18                	jne    3084 <driver_post+0x25>
    306c:	48 85 ff             	test   %rdi,%rdi
    306f:	74 05                	je     3076 <driver_post+0x17>
    3071:	80 3f 00             	cmpb   $0x0,(%rdi)
    3074:	75 37                	jne    30ad <driver_post+0x4e>
    3076:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    307b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    307f:	44 89 c0             	mov    %r8d,%eax
    3082:	5b                   	pop    %rbx
    3083:	c3                   	ret
    3084:	48 89 ca             	mov    %rcx,%rdx
    3087:	48 8d 35 9a 17 00 00 	lea    0x179a(%rip),%rsi        # 4828 <transition_table+0x4c8>
    308e:	bf 01 00 00 00       	mov    $0x1,%edi
    3093:	b8 00 00 00 00       	mov    $0x0,%eax
    3098:	e8 c3 e2 ff ff       	call   1360 <__printf_chk@plt>
    309d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    30a2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    30a6:	b8 00 00 00 00       	mov    $0x0,%eax
    30ab:	eb d5                	jmp    3082 <driver_post+0x23>
    30ad:	48 83 ec 08          	sub    $0x8,%rsp
    30b1:	41 51                	push   %r9
    30b3:	49 89 c9             	mov    %rcx,%r9
    30b6:	49 89 d0             	mov    %rdx,%r8
    30b9:	48 89 f9             	mov    %rdi,%rcx
    30bc:	48 89 f2             	mov    %rsi,%rdx
    30bf:	be 50 00 00 00       	mov    $0x50,%esi
    30c4:	48 8d 3d 4e 17 00 00 	lea    0x174e(%rip),%rdi        # 4819 <transition_table+0x4b9>
    30cb:	e8 13 f5 ff ff       	call   25e3 <submitr>
    30d0:	48 83 c4 10          	add    $0x10,%rsp
    30d4:	eb ac                	jmp    3082 <driver_post+0x23>

Disassembly of section .fini:

00000000000030d8 <_fini>:
    30d8:	f3 0f 1e fa          	endbr64
    30dc:	48 83 ec 08          	sub    $0x8,%rsp
    30e0:	48 83 c4 08          	add    $0x8,%rsp
    30e4:	c3                   	ret
