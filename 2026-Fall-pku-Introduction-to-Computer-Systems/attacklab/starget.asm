
starget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 5f 00 00 	mov    0x5fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   0x5fca(%rip)        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    *0x5fcc(%rip)        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 407070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 407078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 407080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 407088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 407090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 407098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 4070d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 5e 00 00    	jmp    *0x5eea(%rip)        # 4070e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 5e 00 00    	jmp    *0x5ee2(%rip)        # 4070e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 5e 00 00    	jmp    *0x5eda(%rip)        # 4070f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 5e 00 00    	jmp    *0x5ed2(%rip)        # 4070f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 5e 00 00    	jmp    *0x5eca(%rip)        # 407100 <socket@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 de 14 40 00 	mov    $0x4014de,%rdi
  40125f:	ff 15 73 5d 00 00    	call   *0x5d73(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	c3                   	ret
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 90 74 40 00       	mov    $0x407490,%eax
  401285:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 74 40 00       	mov    $0x407490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012b5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 61 00 00 00 	cmpb   $0x0,0x61ed(%rip)        # 4074e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 61 00 00 01 	movb   $0x1,0x61db(%rip)        # 4074e8 <completed.0>
  40130d:	5d                   	pop    %rbp
  40130e:	c3                   	ret
  40130f:	90                   	nop
  401310:	c3                   	ret
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	f3 0f 1e fa          	endbr64
  401324:	eb 8a                	jmp    4012b0 <register_tm_clones>

0000000000401326 <usage>:
  401326:	50                   	push   %rax
  401327:	58                   	pop    %rax
  401328:	48 83 ec 08          	sub    $0x8,%rsp
  40132c:	48 89 fa             	mov    %rdi,%rdx
  40132f:	83 3d fa 61 00 00 00 	cmpl   $0x0,0x61fa(%rip)        # 407530 <is_checker>
  401336:	74 50                	je     401388 <usage+0x62>
  401338:	48 8d 35 c9 2c 00 00 	lea    0x2cc9(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40133f:	bf 02 00 00 00       	mov    $0x2,%edi
  401344:	b8 00 00 00 00       	mov    $0x0,%eax
  401349:	e8 42 fe ff ff       	call   401190 <__printf_chk@plt>
  40134e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401355:	e8 26 fd ff ff       	call   401080 <puts@plt>
  40135a:	48 8d 3d dc 31 00 00 	lea    0x31dc(%rip),%rdi        # 40453d <_IO_stdin_used+0x53d>
  401361:	e8 1a fd ff ff       	call   401080 <puts@plt>
  401366:	48 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40136d:	e8 0e fd ff ff       	call   401080 <puts@plt>
  401372:	48 8d 3d de 31 00 00 	lea    0x31de(%rip),%rdi        # 404557 <_IO_stdin_used+0x557>
  401379:	e8 02 fd ff ff       	call   401080 <puts@plt>
  40137e:	bf 00 00 00 00       	mov    $0x0,%edi
  401383:	e8 58 fe ff ff       	call   4011e0 <exit@plt>
  401388:	48 8d 35 e4 31 00 00 	lea    0x31e4(%rip),%rsi        # 404573 <_IO_stdin_used+0x573>
  40138f:	bf 02 00 00 00       	mov    $0x2,%edi
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	e8 f2 fd ff ff       	call   401190 <__printf_chk@plt>
  40139e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4013a5:	e8 d6 fc ff ff       	call   401080 <puts@plt>
  4013aa:	48 8d 3d 07 2d 00 00 	lea    0x2d07(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4013b1:	e8 ca fc ff ff       	call   401080 <puts@plt>
  4013b6:	48 8d 3d d4 31 00 00 	lea    0x31d4(%rip),%rdi        # 404591 <_IO_stdin_used+0x591>
  4013bd:	e8 be fc ff ff       	call   401080 <puts@plt>
  4013c2:	eb ba                	jmp    40137e <usage+0x58>

00000000004013c4 <initialize_target>:
  4013c4:	55                   	push   %rbp
  4013c5:	53                   	push   %rbx
  4013c6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013cd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013d2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013d9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013de:	48 83 ec 18          	sub    $0x18,%rsp
  4013e2:	89 f5                	mov    %esi,%ebp
  4013e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013eb:	00 00 
  4013ed:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013f4:	00 
  4013f5:	31 c0                	xor    %eax,%eax
  4013f7:	89 3d 23 61 00 00    	mov    %edi,0x6123(%rip)        # 407520 <check_level>
  4013fd:	8b 3d 2d 5d 00 00    	mov    0x5d2d(%rip),%edi        # 407130 <target_id>
  401403:	e8 f4 21 00 00       	call   4035fc <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 e7 21 00 00       	call   4035fc <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 0e 03 00 00       	call   401743 <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 57                	jne    401492 <initialize_target+0xce>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	c6 05 e5 6c 00 00 73 	movb   $0x73,0x6ce5(%rip)        # 408148 <target_prefix>
  401463:	83 3d 16 60 00 00 00 	cmpl   $0x0,0x6016(%rip)        # 407480 <notify>
  40146a:	74 09                	je     401475 <initialize_target+0xb1>
  40146c:	83 3d bd 60 00 00 00 	cmpl   $0x0,0x60bd(%rip)        # 407530 <is_checker>
  401473:	74 35                	je     4014aa <initialize_target+0xe6>
  401475:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  40147c:	00 
  40147d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401484:	00 00 
  401486:	75 51                	jne    4014d9 <initialize_target+0x115>
  401488:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  40148f:	5b                   	pop    %rbx
  401490:	5d                   	pop    %rbp
  401491:	c3                   	ret
  401492:	bf 00 00 00 00       	mov    $0x0,%edi
  401497:	e8 b4 fc ff ff       	call   401150 <time@plt>
  40149c:	89 c7                	mov    %eax,%edi
  40149e:	e8 9d fb ff ff       	call   401040 <srandom@plt>
  4014a3:	e8 b8 fc ff ff       	call   401160 <random@plt>
  4014a8:	eb 96                	jmp    401440 <initialize_target+0x7c>
  4014aa:	48 89 e7             	mov    %rsp,%rdi
  4014ad:	e8 7a 1e 00 00       	call   40332c <init_driver>
  4014b2:	85 c0                	test   %eax,%eax
  4014b4:	79 bf                	jns    401475 <initialize_target+0xb1>
  4014b6:	48 89 e2             	mov    %rsp,%rdx
  4014b9:	48 8d 35 28 2c 00 00 	lea    0x2c28(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4014c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ca:	e8 c1 fc ff ff       	call   401190 <__printf_chk@plt>
  4014cf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d4:	e8 07 fd ff ff       	call   4011e0 <exit@plt>
  4014d9:	e8 ca 11 00 00       	call   4026a8 <__stack_chk_fail>

00000000004014de <main>:
  4014de:	f3 0f 1e fa          	endbr64
  4014e2:	41 56                	push   %r14
  4014e4:	41 55                	push   %r13
  4014e6:	41 54                	push   %r12
  4014e8:	55                   	push   %rbp
  4014e9:	53                   	push   %rbx
  4014ea:	48 83 ec 60          	sub    $0x60,%rsp
  4014ee:	89 fd                	mov    %edi,%ebp
  4014f0:	48 89 f3             	mov    %rsi,%rbx
  4014f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014fa:	00 00 
  4014fc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401501:	31 c0                	xor    %eax,%eax
  401503:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  40150a:	74 65 64 
  40150d:	48 89 04 24          	mov    %rax,(%rsp)
  401511:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401518:	43 4e 00 
  40151b:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401520:	48 c7 c6 97 25 40 00 	mov    $0x402597,%rsi
  401527:	bf 0b 00 00 00       	mov    $0xb,%edi
  40152c:	e8 cf fb ff ff       	call   401100 <signal@plt>
  401531:	48 c7 c6 3d 25 40 00 	mov    $0x40253d,%rsi
  401538:	bf 07 00 00 00       	mov    $0x7,%edi
  40153d:	e8 be fb ff ff       	call   401100 <signal@plt>
  401542:	48 c7 c6 f1 25 40 00 	mov    $0x4025f1,%rsi
  401549:	bf 04 00 00 00       	mov    $0x4,%edi
  40154e:	e8 ad fb ff ff       	call   401100 <signal@plt>
  401553:	83 3d d6 5f 00 00 00 	cmpl   $0x0,0x5fd6(%rip)        # 407530 <is_checker>
  40155a:	75 26                	jne    401582 <main+0xa4>
  40155c:	4c 8d 25 47 30 00 00 	lea    0x3047(%rip),%r12        # 4045aa <_IO_stdin_used+0x5aa>
  401563:	48 8b 05 36 5f 00 00 	mov    0x5f36(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40156a:	48 89 05 a7 5f 00 00 	mov    %rax,0x5fa7(%rip)        # 407518 <infile>
  401571:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401577:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40157d:	e9 8d 00 00 00       	jmp    40160f <main+0x131>
  401582:	48 c7 c6 4b 26 40 00 	mov    $0x40264b,%rsi
  401589:	bf 0e 00 00 00       	mov    $0xe,%edi
  40158e:	e8 6d fb ff ff       	call   401100 <signal@plt>
  401593:	bf 02 00 00 00       	mov    $0x2,%edi
  401598:	e8 23 fb ff ff       	call   4010c0 <alarm@plt>
  40159d:	4c 8d 25 0b 30 00 00 	lea    0x300b(%rip),%r12        # 4045af <_IO_stdin_used+0x5af>
  4015a4:	eb bd                	jmp    401563 <main+0x85>
  4015a6:	48 8b 3b             	mov    (%rbx),%rdi
  4015a9:	e8 78 fd ff ff       	call   401326 <usage>
  4015ae:	48 8d 35 5e 30 00 00 	lea    0x305e(%rip),%rsi        # 404613 <_IO_stdin_used+0x613>
  4015b5:	48 8b 3d 04 5f 00 00 	mov    0x5f04(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015bc:	e8 df fb ff ff       	call   4011a0 <fopen@plt>
  4015c1:	48 89 05 50 5f 00 00 	mov    %rax,0x5f50(%rip)        # 407518 <infile>
  4015c8:	48 85 c0             	test   %rax,%rax
  4015cb:	75 42                	jne    40160f <main+0x131>
  4015cd:	48 8b 0d ec 5e 00 00 	mov    0x5eec(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015d4:	48 8d 15 de 2f 00 00 	lea    0x2fde(%rip),%rdx        # 4045b9 <_IO_stdin_used+0x5b9>
  4015db:	be 02 00 00 00       	mov    $0x2,%esi
  4015e0:	48 8b 3d f9 5e 00 00 	mov    0x5ef9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e7:	e8 14 fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f1:	e9 2b 01 00 00       	jmp    401721 <main+0x243>
  4015f6:	ba 10 00 00 00       	mov    $0x10,%edx
  4015fb:	be 00 00 00 00       	mov    $0x0,%esi
  401600:	48 8b 3d b9 5e 00 00 	mov    0x5eb9(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401607:	e8 b4 fb ff ff       	call   4011c0 <strtoul@plt>
  40160c:	41 89 c6             	mov    %eax,%r14d
  40160f:	4c 89 e2             	mov    %r12,%rdx
  401612:	48 89 de             	mov    %rbx,%rsi
  401615:	89 ef                	mov    %ebp,%edi
  401617:	e8 94 fb ff ff       	call   4011b0 <getopt@plt>
  40161c:	3c ff                	cmp    $0xff,%al
  40161e:	74 7a                	je     40169a <main+0x1bc>
  401620:	8d 50 9f             	lea    -0x61(%rax),%edx
  401623:	80 fa 14             	cmp    $0x14,%dl
  401626:	77 51                	ja     401679 <main+0x19b>
  401628:	0f b6 d2             	movzbl %dl,%edx
  40162b:	48 8d 0d 7e 31 00 00 	lea    0x317e(%rip),%rcx        # 4047b0 <_IO_stdin_used+0x7b0>
  401632:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  401636:	48 01 ca             	add    %rcx,%rdx
  401639:	3e ff e2             	notrack jmp *%rdx
  40163c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401641:	be 00 00 00 00       	mov    $0x0,%esi
  401646:	48 8b 3d 73 5e 00 00 	mov    0x5e73(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  40164d:	e8 de fa ff ff       	call   401130 <strtol@plt>
  401652:	41 89 c5             	mov    %eax,%r13d
  401655:	eb b8                	jmp    40160f <main+0x131>
  401657:	c7 05 1f 5e 00 00 00 	movl   $0x0,0x5e1f(%rip)        # 407480 <notify>
  40165e:	00 00 00 
  401661:	eb ac                	jmp    40160f <main+0x131>
  401663:	48 89 e7             	mov    %rsp,%rdi
  401666:	ba 50 00 00 00       	mov    $0x50,%edx
  40166b:	48 8b 35 4e 5e 00 00 	mov    0x5e4e(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  401672:	e8 d9 f9 ff ff       	call   401050 <strncpy@plt>
  401677:	eb 96                	jmp    40160f <main+0x131>
  401679:	0f be d0             	movsbl %al,%edx
  40167c:	48 8d 35 53 2f 00 00 	lea    0x2f53(%rip),%rsi        # 4045d6 <_IO_stdin_used+0x5d6>
  401683:	bf 02 00 00 00       	mov    $0x2,%edi
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 fe fa ff ff       	call   401190 <__printf_chk@plt>
  401692:	48 8b 3b             	mov    (%rbx),%rdi
  401695:	e8 8c fc ff ff       	call   401326 <usage>
  40169a:	be 01 00 00 00       	mov    $0x1,%esi
  40169f:	44 89 ef             	mov    %r13d,%edi
  4016a2:	e8 1d fd ff ff       	call   4013c4 <initialize_target>
  4016a7:	83 3d 82 5e 00 00 00 	cmpl   $0x0,0x5e82(%rip)        # 407530 <is_checker>
  4016ae:	74 3f                	je     4016ef <main+0x211>
  4016b0:	44 39 35 71 5e 00 00 	cmp    %r14d,0x5e71(%rip)        # 407528 <authkey>
  4016b7:	75 13                	jne    4016cc <main+0x1ee>
  4016b9:	48 89 e7             	mov    %rsp,%rdi
  4016bc:	48 8b 35 7d 5a 00 00 	mov    0x5a7d(%rip),%rsi        # 407140 <user_id>
  4016c3:	e8 28 fa ff ff       	call   4010f0 <strcmp@plt>
  4016c8:	85 c0                	test   %eax,%eax
  4016ca:	74 23                	je     4016ef <main+0x211>
  4016cc:	44 89 f2             	mov    %r14d,%edx
  4016cf:	48 8d 35 3a 2a 00 00 	lea    0x2a3a(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4016db:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e0:	e8 ab fa ff ff       	call   401190 <__printf_chk@plt>
  4016e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ea:	e8 8c 0a 00 00       	call   40217b <check_fail>
  4016ef:	8b 15 37 5e 00 00    	mov    0x5e37(%rip),%edx        # 40752c <cookie>
  4016f5:	48 8d 35 ed 2e 00 00 	lea    0x2eed(%rip),%rsi        # 4045e9 <_IO_stdin_used+0x5e9>
  4016fc:	bf 02 00 00 00       	mov    $0x2,%edi
  401701:	b8 00 00 00 00       	mov    $0x0,%eax
  401706:	e8 85 fa ff ff       	call   401190 <__printf_chk@plt>
  40170b:	be 01 00 00 00       	mov    $0x1,%esi
  401710:	48 8b 3d 71 5d 00 00 	mov    0x5d71(%rip),%rdi        # 407488 <buf_offset>
  401717:	e8 e6 0f 00 00       	call   402702 <launch>
  40171c:	b8 00 00 00 00       	mov    $0x0,%eax
  401721:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  401726:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40172d:	00 00 
  40172f:	75 0d                	jne    40173e <main+0x260>
  401731:	48 83 c4 60          	add    $0x60,%rsp
  401735:	5b                   	pop    %rbx
  401736:	5d                   	pop    %rbp
  401737:	41 5c                	pop    %r12
  401739:	41 5d                	pop    %r13
  40173b:	41 5e                	pop    %r14
  40173d:	c3                   	ret
  40173e:	e8 65 0f 00 00       	call   4026a8 <__stack_chk_fail>

0000000000401743 <scramble>:
  401743:	f3 0f 1e fa          	endbr64
  401747:	48 83 ec 38          	sub    $0x38,%rsp
  40174b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401752:	00 00 
  401754:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401759:	31 c0                	xor    %eax,%eax
  40175b:	eb 10                	jmp    40176d <scramble+0x2a>
  40175d:	69 d0 0e d5 00 00    	imul   $0xd50e,%eax,%edx
  401763:	01 fa                	add    %edi,%edx
  401765:	89 c1                	mov    %eax,%ecx
  401767:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40176a:	83 c0 01             	add    $0x1,%eax
  40176d:	83 f8 09             	cmp    $0x9,%eax
  401770:	76 eb                	jbe    40175d <scramble+0x1a>
  401772:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401776:	69 c0 11 aa 00 00    	imul   $0xaa11,%eax,%eax
  40177c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401780:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401784:	69 c0 c9 29 00 00    	imul   $0x29c9,%eax,%eax
  40178a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40178e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401792:	69 c0 f0 ab 00 00    	imul   $0xabf0,%eax,%eax
  401798:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40179c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017a0:	69 c0 0c 14 00 00    	imul   $0x140c,%eax,%eax
  4017a6:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017aa:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017ae:	69 c0 72 2b 00 00    	imul   $0x2b72,%eax,%eax
  4017b4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017bc:	69 c0 0d 87 00 00    	imul   $0x870d,%eax,%eax
  4017c2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017c6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017ca:	69 c0 01 34 00 00    	imul   $0x3401,%eax,%eax
  4017d0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017d4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017d8:	69 c0 3f b5 00 00    	imul   $0xb53f,%eax,%eax
  4017de:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017e2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017e6:	69 c0 59 5b 00 00    	imul   $0x5b59,%eax,%eax
  4017ec:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017f0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017f4:	69 c0 ba 87 00 00    	imul   $0x87ba,%eax,%eax
  4017fa:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017fe:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401802:	69 c0 0f 7b 00 00    	imul   $0x7b0f,%eax,%eax
  401808:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40180c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401810:	69 c0 85 c5 00 00    	imul   $0xc585,%eax,%eax
  401816:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40181a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40181e:	69 c0 d9 5c 00 00    	imul   $0x5cd9,%eax,%eax
  401824:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401828:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40182c:	69 c0 5b 0e 00 00    	imul   $0xe5b,%eax,%eax
  401832:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401836:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40183a:	69 c0 a6 36 00 00    	imul   $0x36a6,%eax,%eax
  401840:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401844:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401848:	69 c0 00 78 00 00    	imul   $0x7800,%eax,%eax
  40184e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401852:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401856:	69 c0 7d 8a 00 00    	imul   $0x8a7d,%eax,%eax
  40185c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401860:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401864:	69 c0 4b 31 00 00    	imul   $0x314b,%eax,%eax
  40186a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40186e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401872:	69 c0 28 e7 00 00    	imul   $0xe728,%eax,%eax
  401878:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40187c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401880:	69 c0 be f5 00 00    	imul   $0xf5be,%eax,%eax
  401886:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40188a:	8b 04 24             	mov    (%rsp),%eax
  40188d:	69 c0 77 48 00 00    	imul   $0x4877,%eax,%eax
  401893:	89 04 24             	mov    %eax,(%rsp)
  401896:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40189a:	69 c0 66 30 00 00    	imul   $0x3066,%eax,%eax
  4018a0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018a4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018a8:	69 c0 7b 7d 00 00    	imul   $0x7d7b,%eax,%eax
  4018ae:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018b2:	8b 04 24             	mov    (%rsp),%eax
  4018b5:	69 c0 90 02 00 00    	imul   $0x290,%eax,%eax
  4018bb:	89 04 24             	mov    %eax,(%rsp)
  4018be:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018c2:	69 c0 bf 8a 00 00    	imul   $0x8abf,%eax,%eax
  4018c8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018cc:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018d0:	69 c0 b7 8b 00 00    	imul   $0x8bb7,%eax,%eax
  4018d6:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018da:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018de:	69 c0 ba 97 00 00    	imul   $0x97ba,%eax,%eax
  4018e4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018e8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018ec:	69 c0 65 bb 00 00    	imul   $0xbb65,%eax,%eax
  4018f2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018f6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018fa:	69 c0 28 0a 00 00    	imul   $0xa28,%eax,%eax
  401900:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401904:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401908:	69 c0 85 97 00 00    	imul   $0x9785,%eax,%eax
  40190e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401912:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401916:	69 c0 87 31 00 00    	imul   $0x3187,%eax,%eax
  40191c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401920:	8b 04 24             	mov    (%rsp),%eax
  401923:	69 c0 85 21 00 00    	imul   $0x2185,%eax,%eax
  401929:	89 04 24             	mov    %eax,(%rsp)
  40192c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401930:	69 c0 4f b1 00 00    	imul   $0xb14f,%eax,%eax
  401936:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40193a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40193e:	69 c0 71 f2 00 00    	imul   $0xf271,%eax,%eax
  401944:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401948:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40194c:	69 c0 28 98 00 00    	imul   $0x9828,%eax,%eax
  401952:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401956:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40195a:	69 c0 12 ab 00 00    	imul   $0xab12,%eax,%eax
  401960:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401964:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401968:	69 c0 fb 64 00 00    	imul   $0x64fb,%eax,%eax
  40196e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401972:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401976:	69 c0 17 5d 00 00    	imul   $0x5d17,%eax,%eax
  40197c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401980:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401984:	69 c0 1d c1 00 00    	imul   $0xc11d,%eax,%eax
  40198a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40198e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401992:	69 c0 4b bb 00 00    	imul   $0xbb4b,%eax,%eax
  401998:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40199c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019a0:	69 c0 f2 e9 00 00    	imul   $0xe9f2,%eax,%eax
  4019a6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019aa:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019ae:	69 c0 ab 51 00 00    	imul   $0x51ab,%eax,%eax
  4019b4:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019b8:	8b 04 24             	mov    (%rsp),%eax
  4019bb:	69 c0 3f 98 00 00    	imul   $0x983f,%eax,%eax
  4019c1:	89 04 24             	mov    %eax,(%rsp)
  4019c4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019c8:	69 c0 3f 76 00 00    	imul   $0x763f,%eax,%eax
  4019ce:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019d2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019d6:	69 c0 d0 d6 00 00    	imul   $0xd6d0,%eax,%eax
  4019dc:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019e0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019e4:	69 c0 35 e3 00 00    	imul   $0xe335,%eax,%eax
  4019ea:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019ee:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019f2:	69 c0 49 1d 00 00    	imul   $0x1d49,%eax,%eax
  4019f8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019fc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a00:	69 c0 5b c4 00 00    	imul   $0xc45b,%eax,%eax
  401a06:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a0a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a0e:	69 c0 8a 57 00 00    	imul   $0x578a,%eax,%eax
  401a14:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a18:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a1c:	69 c0 10 67 00 00    	imul   $0x6710,%eax,%eax
  401a22:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a26:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a2a:	69 c0 fb 9e 00 00    	imul   $0x9efb,%eax,%eax
  401a30:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a34:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a38:	69 c0 52 d0 00 00    	imul   $0xd052,%eax,%eax
  401a3e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a42:	8b 04 24             	mov    (%rsp),%eax
  401a45:	69 c0 9a ed 00 00    	imul   $0xed9a,%eax,%eax
  401a4b:	89 04 24             	mov    %eax,(%rsp)
  401a4e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a52:	69 c0 6e e6 00 00    	imul   $0xe66e,%eax,%eax
  401a58:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a5c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a60:	69 c0 11 8d 00 00    	imul   $0x8d11,%eax,%eax
  401a66:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a6a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a6e:	69 c0 94 fa 00 00    	imul   $0xfa94,%eax,%eax
  401a74:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a78:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a7c:	69 c0 bc e8 00 00    	imul   $0xe8bc,%eax,%eax
  401a82:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a86:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a8a:	69 c0 af f8 00 00    	imul   $0xf8af,%eax,%eax
  401a90:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a94:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a98:	69 c0 4f 59 00 00    	imul   $0x594f,%eax,%eax
  401a9e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401aa2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aa6:	69 c0 62 23 00 00    	imul   $0x2362,%eax,%eax
  401aac:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ab0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ab4:	69 c0 b2 7c 00 00    	imul   $0x7cb2,%eax,%eax
  401aba:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401abe:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ac2:	69 c0 76 38 00 00    	imul   $0x3876,%eax,%eax
  401ac8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401acc:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ad0:	69 c0 51 0b 00 00    	imul   $0xb51,%eax,%eax
  401ad6:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ada:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ade:	69 c0 95 68 00 00    	imul   $0x6895,%eax,%eax
  401ae4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ae8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401aec:	69 c0 9d b3 00 00    	imul   $0xb39d,%eax,%eax
  401af2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401af6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401afa:	69 c0 8e 52 00 00    	imul   $0x528e,%eax,%eax
  401b00:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b04:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b08:	69 c0 c8 e1 00 00    	imul   $0xe1c8,%eax,%eax
  401b0e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b12:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b16:	69 c0 90 56 00 00    	imul   $0x5690,%eax,%eax
  401b1c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b20:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b24:	69 c0 4b 50 00 00    	imul   $0x504b,%eax,%eax
  401b2a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b2e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b32:	69 c0 1a 7e 00 00    	imul   $0x7e1a,%eax,%eax
  401b38:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b3c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b40:	69 c0 b7 de 00 00    	imul   $0xdeb7,%eax,%eax
  401b46:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b4a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b4e:	69 c0 60 54 00 00    	imul   $0x5460,%eax,%eax
  401b54:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b58:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b5c:	69 c0 ee c4 00 00    	imul   $0xc4ee,%eax,%eax
  401b62:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b66:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b6a:	69 c0 6e 48 00 00    	imul   $0x486e,%eax,%eax
  401b70:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b74:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b78:	69 c0 fe bb 00 00    	imul   $0xbbfe,%eax,%eax
  401b7e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b82:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b86:	69 c0 5d 4e 00 00    	imul   $0x4e5d,%eax,%eax
  401b8c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b90:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b94:	69 c0 67 72 00 00    	imul   $0x7267,%eax,%eax
  401b9a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b9e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ba2:	69 c0 ac d2 00 00    	imul   $0xd2ac,%eax,%eax
  401ba8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bac:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bb0:	69 c0 a5 83 00 00    	imul   $0x83a5,%eax,%eax
  401bb6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bba:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401bbe:	69 c0 94 e0 00 00    	imul   $0xe094,%eax,%eax
  401bc4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401bc8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bcc:	69 c0 e7 0a 00 00    	imul   $0xae7,%eax,%eax
  401bd2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bd6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bda:	69 c0 dc 89 00 00    	imul   $0x89dc,%eax,%eax
  401be0:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401be4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401be8:	69 c0 03 56 00 00    	imul   $0x5603,%eax,%eax
  401bee:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bf2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bf6:	69 c0 11 bc 00 00    	imul   $0xbc11,%eax,%eax
  401bfc:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c00:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c04:	69 c0 6a 1d 00 00    	imul   $0x1d6a,%eax,%eax
  401c0a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c0e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c12:	69 c0 ab 83 00 00    	imul   $0x83ab,%eax,%eax
  401c18:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c1c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c20:	69 c0 db b2 00 00    	imul   $0xb2db,%eax,%eax
  401c26:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c2a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c2e:	69 c0 95 c3 00 00    	imul   $0xc395,%eax,%eax
  401c34:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c38:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c3c:	69 c0 1a 25 00 00    	imul   $0x251a,%eax,%eax
  401c42:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c46:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4b:	ba 00 00 00 00       	mov    $0x0,%edx
  401c50:	eb 0a                	jmp    401c5c <scramble+0x519>
  401c52:	89 c1                	mov    %eax,%ecx
  401c54:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c57:	01 ca                	add    %ecx,%edx
  401c59:	83 c0 01             	add    $0x1,%eax
  401c5c:	83 f8 09             	cmp    $0x9,%eax
  401c5f:	76 f1                	jbe    401c52 <scramble+0x50f>
  401c61:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c66:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c6d:	00 00 
  401c6f:	75 07                	jne    401c78 <scramble+0x535>
  401c71:	89 d0                	mov    %edx,%eax
  401c73:	48 83 c4 38          	add    $0x38,%rsp
  401c77:	c3                   	ret
  401c78:	e8 2b 0a 00 00       	call   4026a8 <__stack_chk_fail>

0000000000401c7d <getbuf>:
  401c7d:	f3 0f 1e fa          	endbr64
  401c81:	48 83 ec 38          	sub    $0x38,%rsp
  401c85:	48 89 e7             	mov    %rsp,%rdi
  401c88:	e8 2c 05 00 00       	call   4021b9 <Gets>
  401c8d:	b8 01 00 00 00       	mov    $0x1,%eax
  401c92:	48 83 c4 38          	add    $0x38,%rsp
  401c96:	c3                   	ret

0000000000401c97 <touch1>:
  401c97:	f3 0f 1e fa          	endbr64
  401c9b:	50                   	push   %rax
  401c9c:	58                   	pop    %rax
  401c9d:	48 83 ec 08          	sub    $0x8,%rsp
  401ca1:	c7 05 79 58 00 00 01 	movl   $0x1,0x5879(%rip)        # 407524 <vlevel>
  401ca8:	00 00 00 
  401cab:	48 8d 3d 63 29 00 00 	lea    0x2963(%rip),%rdi        # 404615 <_IO_stdin_used+0x615>
  401cb2:	e8 c9 f3 ff ff       	call   401080 <puts@plt>
  401cb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401cbc:	e8 75 07 00 00       	call   402436 <validate>
  401cc1:	bf 00 00 00 00       	mov    $0x0,%edi
  401cc6:	e8 15 f5 ff ff       	call   4011e0 <exit@plt>

0000000000401ccb <touch2>:
  401ccb:	f3 0f 1e fa          	endbr64
  401ccf:	50                   	push   %rax
  401cd0:	58                   	pop    %rax
  401cd1:	48 83 ec 08          	sub    $0x8,%rsp
  401cd5:	89 fa                	mov    %edi,%edx
  401cd7:	c7 05 43 58 00 00 02 	movl   $0x2,0x5843(%rip)        # 407524 <vlevel>
  401cde:	00 00 00 
  401ce1:	39 3d 45 58 00 00    	cmp    %edi,0x5845(%rip)        # 40752c <cookie>
  401ce7:	74 2a                	je     401d13 <touch2+0x48>
  401ce9:	48 8d 35 b8 24 00 00 	lea    0x24b8(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401cf0:	bf 02 00 00 00       	mov    $0x2,%edi
  401cf5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfa:	e8 91 f4 ff ff       	call   401190 <__printf_chk@plt>
  401cff:	bf 02 00 00 00       	mov    $0x2,%edi
  401d04:	e8 08 08 00 00       	call   402511 <fail>
  401d09:	bf 00 00 00 00       	mov    $0x0,%edi
  401d0e:	e8 cd f4 ff ff       	call   4011e0 <exit@plt>
  401d13:	48 8d 35 66 24 00 00 	lea    0x2466(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d1a:	bf 02 00 00 00       	mov    $0x2,%edi
  401d1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d24:	e8 67 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d29:	bf 02 00 00 00       	mov    $0x2,%edi
  401d2e:	e8 03 07 00 00       	call   402436 <validate>
  401d33:	eb d4                	jmp    401d09 <touch2+0x3e>

0000000000401d35 <hexmatch>:
  401d35:	f3 0f 1e fa          	endbr64
  401d39:	41 54                	push   %r12
  401d3b:	55                   	push   %rbp
  401d3c:	53                   	push   %rbx
  401d3d:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d41:	89 fd                	mov    %edi,%ebp
  401d43:	48 89 f3             	mov    %rsi,%rbx
  401d46:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d4d:	00 00 
  401d4f:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d54:	31 c0                	xor    %eax,%eax
  401d56:	e8 05 f4 ff ff       	call   401160 <random@plt>
  401d5b:	48 89 c6             	mov    %rax,%rsi
  401d5e:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d65:	0a d7 a3 
  401d68:	48 f7 ea             	imul   %rdx
  401d6b:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401d6f:	48 c1 f9 06          	sar    $0x6,%rcx
  401d73:	48 89 f0             	mov    %rsi,%rax
  401d76:	48 c1 f8 3f          	sar    $0x3f,%rax
  401d7a:	48 29 c1             	sub    %rax,%rcx
  401d7d:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401d81:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401d85:	48 c1 e0 02          	shl    $0x2,%rax
  401d89:	48 29 c6             	sub    %rax,%rsi
  401d8c:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401d90:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401d95:	48 39 d6             	cmp    %rdx,%rsi
  401d98:	48 0f 43 d6          	cmovae %rsi,%rdx
  401d9c:	48 29 f2             	sub    %rsi,%rdx
  401d9f:	41 89 e8             	mov    %ebp,%r8d
  401da2:	48 8d 0d 89 28 00 00 	lea    0x2889(%rip),%rcx        # 404632 <_IO_stdin_used+0x632>
  401da9:	be 02 00 00 00       	mov    $0x2,%esi
  401dae:	4c 89 e7             	mov    %r12,%rdi
  401db1:	b8 00 00 00 00       	mov    $0x0,%eax
  401db6:	e8 65 f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401dbb:	ba 09 00 00 00       	mov    $0x9,%edx
  401dc0:	4c 89 e6             	mov    %r12,%rsi
  401dc3:	48 89 df             	mov    %rbx,%rdi
  401dc6:	e8 95 f2 ff ff       	call   401060 <strncmp@plt>
  401dcb:	85 c0                	test   %eax,%eax
  401dcd:	0f 94 c0             	sete   %al
  401dd0:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401dd5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401ddc:	00 00 
  401dde:	75 0c                	jne    401dec <hexmatch+0xb7>
  401de0:	0f b6 c0             	movzbl %al,%eax
  401de3:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401de7:	5b                   	pop    %rbx
  401de8:	5d                   	pop    %rbp
  401de9:	41 5c                	pop    %r12
  401deb:	c3                   	ret
  401dec:	e8 b7 08 00 00       	call   4026a8 <__stack_chk_fail>

0000000000401df1 <touch3>:
  401df1:	f3 0f 1e fa          	endbr64
  401df5:	53                   	push   %rbx
  401df6:	48 89 fb             	mov    %rdi,%rbx
  401df9:	c7 05 21 57 00 00 03 	movl   $0x3,0x5721(%rip)        # 407524 <vlevel>
  401e00:	00 00 00 
  401e03:	48 89 fe             	mov    %rdi,%rsi
  401e06:	8b 3d 20 57 00 00    	mov    0x5720(%rip),%edi        # 40752c <cookie>
  401e0c:	e8 24 ff ff ff       	call   401d35 <hexmatch>
  401e11:	85 c0                	test   %eax,%eax
  401e13:	74 2d                	je     401e42 <touch3+0x51>
  401e15:	48 89 da             	mov    %rbx,%rdx
  401e18:	48 8d 35 b1 23 00 00 	lea    0x23b1(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e1f:	bf 02 00 00 00       	mov    $0x2,%edi
  401e24:	b8 00 00 00 00       	mov    $0x0,%eax
  401e29:	e8 62 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e2e:	bf 03 00 00 00       	mov    $0x3,%edi
  401e33:	e8 fe 05 00 00       	call   402436 <validate>
  401e38:	bf 00 00 00 00       	mov    $0x0,%edi
  401e3d:	e8 9e f3 ff ff       	call   4011e0 <exit@plt>
  401e42:	48 89 da             	mov    %rbx,%rdx
  401e45:	48 8d 35 ac 23 00 00 	lea    0x23ac(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401e4c:	bf 02 00 00 00       	mov    $0x2,%edi
  401e51:	b8 00 00 00 00       	mov    $0x0,%eax
  401e56:	e8 35 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e5b:	bf 03 00 00 00       	mov    $0x3,%edi
  401e60:	e8 ac 06 00 00       	call   402511 <fail>
  401e65:	eb d1                	jmp    401e38 <touch3+0x47>

0000000000401e67 <test>:
  401e67:	f3 0f 1e fa          	endbr64
  401e6b:	48 83 ec 08          	sub    $0x8,%rsp
  401e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e74:	e8 04 fe ff ff       	call   401c7d <getbuf>
  401e79:	89 c2                	mov    %eax,%edx
  401e7b:	48 8d 35 9e 23 00 00 	lea    0x239e(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401e82:	bf 02 00 00 00       	mov    $0x2,%edi
  401e87:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8c:	e8 ff f2 ff ff       	call   401190 <__printf_chk@plt>
  401e91:	48 83 c4 08          	add    $0x8,%rsp
  401e95:	c3                   	ret

0000000000401e96 <test2>:
  401e96:	f3 0f 1e fa          	endbr64
  401e9a:	48 83 ec 08          	sub    $0x8,%rsp
  401e9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea3:	e8 1d 00 00 00       	call   401ec5 <getbuf_withcanary>
  401ea8:	89 c2                	mov    %eax,%edx
  401eaa:	48 8d 35 97 23 00 00 	lea    0x2397(%rip),%rsi        # 404248 <_IO_stdin_used+0x248>
  401eb1:	bf 02 00 00 00       	mov    $0x2,%edi
  401eb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebb:	e8 d0 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ec0:	48 83 c4 08          	add    $0x8,%rsp
  401ec4:	c3                   	ret

0000000000401ec5 <getbuf_withcanary>:
  401ec5:	55                   	push   %rbp
  401ec6:	48 89 e5             	mov    %rsp,%rbp
  401ec9:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401ed0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ed7:	00 00 
  401ed9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401edd:	31 c0                	xor    %eax,%eax
  401edf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ee6:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401eed:	48 89 c7             	mov    %rax,%rdi
  401ef0:	e8 c4 02 00 00       	call   4021b9 <Gets>
  401ef5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ef8:	48 98                	cltq
  401efa:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401f01:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401f05:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f0c:	ba 80 00 00 00       	mov    $0x80,%edx
  401f11:	48 89 c6             	mov    %rax,%rsi
  401f14:	48 89 cf             	mov    %rcx,%rdi
  401f17:	e8 24 f2 ff ff       	call   401140 <memcpy@plt>
  401f1c:	b8 01 00 00 00       	mov    $0x1,%eax
  401f21:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f25:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f2c:	00 00 
  401f2e:	74 05                	je     401f35 <getbuf_withcanary+0x70>
  401f30:	e8 73 07 00 00       	call   4026a8 <__stack_chk_fail>
  401f35:	c9                   	leave
  401f36:	c3                   	ret

0000000000401f37 <start_farm>:
  401f37:	f3 0f 1e fa          	endbr64
  401f3b:	b8 01 00 00 00       	mov    $0x1,%eax
  401f40:	c3                   	ret

0000000000401f41 <getval_447>:
  401f41:	f3 0f 1e fa          	endbr64
  401f45:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401f4a:	c3                   	ret

0000000000401f4b <addval_180>:
  401f4b:	f3 0f 1e fa          	endbr64
  401f4f:	8d 87 9d 9e 58 90    	lea    -0x6fa76163(%rdi),%eax
  401f55:	c3                   	ret

0000000000401f56 <setval_308>:
  401f56:	f3 0f 1e fa          	endbr64
  401f5a:	c7 07 50 90 90 90    	movl   $0x90909050,(%rdi)
  401f60:	c3                   	ret

0000000000401f61 <setval_320>:
  401f61:	f3 0f 1e fa          	endbr64
  401f65:	c7 07 48 88 c7 c3    	movl   $0xc3c78848,(%rdi)
  401f6b:	c3                   	ret

0000000000401f6c <getval_332>:
  401f6c:	f3 0f 1e fa          	endbr64
  401f70:	b8 ec 58 90 90       	mov    $0x909058ec,%eax
  401f75:	c3                   	ret

0000000000401f76 <setval_331>:
  401f76:	f3 0f 1e fa          	endbr64
  401f7a:	c7 07 08 78 90 90    	movl   $0x90907808,(%rdi)
  401f80:	c3                   	ret

0000000000401f81 <addval_196>:
  401f81:	f3 0f 1e fa          	endbr64
  401f85:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  401f8b:	c3                   	ret

0000000000401f8c <addval_264>:
  401f8c:	f3 0f 1e fa          	endbr64
  401f90:	8d 87 a9 68 89 c7    	lea    -0x38769757(%rdi),%eax
  401f96:	c3                   	ret

0000000000401f97 <mid_farm>:
  401f97:	f3 0f 1e fa          	endbr64
  401f9b:	b8 01 00 00 00       	mov    $0x1,%eax
  401fa0:	c3                   	ret

0000000000401fa1 <add_xy>:
  401fa1:	f3 0f 1e fa          	endbr64
  401fa5:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401fa9:	c3                   	ret

0000000000401faa <addval_456>:
  401faa:	f3 0f 1e fa          	endbr64
  401fae:	8d 87 89 c1 38 c0    	lea    -0x3fc73e77(%rdi),%eax
  401fb4:	c3                   	ret

0000000000401fb5 <setval_405>:
  401fb5:	f3 0f 1e fa          	endbr64
  401fb9:	c7 07 d8 48 89 e0    	movl   $0xe08948d8,(%rdi)
  401fbf:	c3                   	ret

0000000000401fc0 <addval_426>:
  401fc0:	f3 0f 1e fa          	endbr64
  401fc4:	8d 87 89 d6 20 db    	lea    -0x24df2977(%rdi),%eax
  401fca:	c3                   	ret

0000000000401fcb <getval_268>:
  401fcb:	f3 0f 1e fa          	endbr64
  401fcf:	b8 89 ca 84 db       	mov    $0xdb84ca89,%eax
  401fd4:	c3                   	ret

0000000000401fd5 <getval_495>:
  401fd5:	f3 0f 1e fa          	endbr64
  401fd9:	b8 89 c1 00 c9       	mov    $0xc900c189,%eax
  401fde:	c3                   	ret

0000000000401fdf <addval_162>:
  401fdf:	f3 0f 1e fa          	endbr64
  401fe3:	8d 87 89 ca 38 c0    	lea    -0x3fc73577(%rdi),%eax
  401fe9:	c3                   	ret

0000000000401fea <addval_315>:
  401fea:	f3 0f 1e fa          	endbr64
  401fee:	8d 87 89 ca 94 d2    	lea    -0x2d6b3577(%rdi),%eax
  401ff4:	c3                   	ret

0000000000401ff5 <setval_304>:
  401ff5:	f3 0f 1e fa          	endbr64
  401ff9:	c7 07 9a 81 d6 90    	movl   $0x90d6819a,(%rdi)
  401fff:	c3                   	ret

0000000000402000 <setval_411>:
  402000:	f3 0f 1e fa          	endbr64
  402004:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  40200a:	c3                   	ret

000000000040200b <addval_167>:
  40200b:	f3 0f 1e fa          	endbr64
  40200f:	8d 87 89 d6 90 c2    	lea    -0x3d6f2977(%rdi),%eax
  402015:	c3                   	ret

0000000000402016 <getval_333>:
  402016:	f3 0f 1e fa          	endbr64
  40201a:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  40201f:	c3                   	ret

0000000000402020 <addval_229>:
  402020:	f3 0f 1e fa          	endbr64
  402024:	8d 87 89 d6 28 db    	lea    -0x24d72977(%rdi),%eax
  40202a:	c3                   	ret

000000000040202b <getval_140>:
  40202b:	f3 0f 1e fa          	endbr64
  40202f:	b8 88 d6 38 db       	mov    $0xdb38d688,%eax
  402034:	c3                   	ret

0000000000402035 <setval_475>:
  402035:	f3 0f 1e fa          	endbr64
  402039:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  40203f:	c3                   	ret

0000000000402040 <setval_100>:
  402040:	f3 0f 1e fa          	endbr64
  402044:	c7 07 c9 c1 84 db    	movl   $0xdb84c1c9,(%rdi)
  40204a:	c3                   	ret

000000000040204b <setval_446>:
  40204b:	f3 0f 1e fa          	endbr64
  40204f:	c7 07 8d ca 84 c9    	movl   $0xc984ca8d,(%rdi)
  402055:	c3                   	ret

0000000000402056 <addval_141>:
  402056:	f3 0f 1e fa          	endbr64
  40205a:	8d 87 88 ca c3 0c    	lea    0xcc3ca88(%rdi),%eax
  402060:	c3                   	ret

0000000000402061 <getval_253>:
  402061:	f3 0f 1e fa          	endbr64
  402065:	b8 48 a9 e0 90       	mov    $0x90e0a948,%eax
  40206a:	c3                   	ret

000000000040206b <addval_497>:
  40206b:	f3 0f 1e fa          	endbr64
  40206f:	8d 87 09 c1 84 d2    	lea    -0x2d7b3ef7(%rdi),%eax
  402075:	c3                   	ret

0000000000402076 <getval_245>:
  402076:	f3 0f 1e fa          	endbr64
  40207a:	b8 89 c1 18 c9       	mov    $0xc918c189,%eax
  40207f:	c3                   	ret

0000000000402080 <setval_416>:
  402080:	f3 0f 1e fa          	endbr64
  402084:	c7 07 48 a9 e0 90    	movl   $0x90e0a948,(%rdi)
  40208a:	c3                   	ret

000000000040208b <addval_280>:
  40208b:	f3 0f 1e fa          	endbr64
  40208f:	8d 87 89 d6 84 db    	lea    -0x247b2977(%rdi),%eax
  402095:	c3                   	ret

0000000000402096 <addval_278>:
  402096:	f3 0f 1e fa          	endbr64
  40209a:	8d 87 26 89 d6 92    	lea    -0x6d2976da(%rdi),%eax
  4020a0:	c3                   	ret

00000000004020a1 <addval_372>:
  4020a1:	f3 0f 1e fa          	endbr64
  4020a5:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  4020ab:	c3                   	ret

00000000004020ac <addval_382>:
  4020ac:	f3 0f 1e fa          	endbr64
  4020b0:	8d 87 89 ca 90 c1    	lea    -0x3e6f3577(%rdi),%eax
  4020b6:	c3                   	ret

00000000004020b7 <addval_130>:
  4020b7:	f3 0f 1e fa          	endbr64
  4020bb:	8d 87 81 d6 c3 85    	lea    -0x7a3c297f(%rdi),%eax
  4020c1:	c3                   	ret

00000000004020c2 <getval_218>:
  4020c2:	f3 0f 1e fa          	endbr64
  4020c6:	b8 89 c1 28 db       	mov    $0xdb28c189,%eax
  4020cb:	c3                   	ret

00000000004020cc <addval_177>:
  4020cc:	f3 0f 1e fa          	endbr64
  4020d0:	8d 87 89 c1 38 d2    	lea    -0x2dc73e77(%rdi),%eax
  4020d6:	c3                   	ret

00000000004020d7 <getval_493>:
  4020d7:	f3 0f 1e fa          	endbr64
  4020db:	b8 0a 4f 81 ca       	mov    $0xca814f0a,%eax
  4020e0:	c3                   	ret

00000000004020e1 <addval_255>:
  4020e1:	f3 0f 1e fa          	endbr64
  4020e5:	8d 87 89 ca 28 d2    	lea    -0x2dd73577(%rdi),%eax
  4020eb:	c3                   	ret

00000000004020ec <setval_465>:
  4020ec:	f3 0f 1e fa          	endbr64
  4020f0:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  4020f6:	c3                   	ret

00000000004020f7 <setval_393>:
  4020f7:	f3 0f 1e fa          	endbr64
  4020fb:	c7 07 8b c1 90 90    	movl   $0x9090c18b,(%rdi)
  402101:	c3                   	ret

0000000000402102 <end_farm>:
  402102:	f3 0f 1e fa          	endbr64
  402106:	b8 01 00 00 00       	mov    $0x1,%eax
  40210b:	c3                   	ret

000000000040210c <save_char>:
  40210c:	8b 05 32 60 00 00    	mov    0x6032(%rip),%eax        # 408144 <gets_cnt>
  402112:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402117:	7f 4a                	jg     402163 <save_char+0x57>
  402119:	89 f9                	mov    %edi,%ecx
  40211b:	c0 e9 04             	shr    $0x4,%cl
  40211e:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402121:	4c 8d 05 e8 26 00 00 	lea    0x26e8(%rip),%r8        # 404810 <trans_char>
  402128:	83 e1 0f             	and    $0xf,%ecx
  40212b:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402130:	48 8d 0d 09 54 00 00 	lea    0x5409(%rip),%rcx        # 407540 <gets_buf>
  402137:	48 63 f2             	movslq %edx,%rsi
  40213a:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40213e:	8d 72 01             	lea    0x1(%rdx),%esi
  402141:	83 e7 0f             	and    $0xf,%edi
  402144:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402149:	48 63 f6             	movslq %esi,%rsi
  40214c:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402150:	83 c2 02             	add    $0x2,%edx
  402153:	48 63 d2             	movslq %edx,%rdx
  402156:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  40215a:	83 c0 01             	add    $0x1,%eax
  40215d:	89 05 e1 5f 00 00    	mov    %eax,0x5fe1(%rip)        # 408144 <gets_cnt>
  402163:	c3                   	ret

0000000000402164 <save_term>:
  402164:	8b 05 da 5f 00 00    	mov    0x5fda(%rip),%eax        # 408144 <gets_cnt>
  40216a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  40216d:	48 98                	cltq
  40216f:	48 8d 15 ca 53 00 00 	lea    0x53ca(%rip),%rdx        # 407540 <gets_buf>
  402176:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40217a:	c3                   	ret

000000000040217b <check_fail>:
  40217b:	f3 0f 1e fa          	endbr64
  40217f:	50                   	push   %rax
  402180:	58                   	pop    %rax
  402181:	48 83 ec 08          	sub    $0x8,%rsp
  402185:	0f be 15 bc 5f 00 00 	movsbl 0x5fbc(%rip),%edx        # 408148 <target_prefix>
  40218c:	4c 8d 05 ad 53 00 00 	lea    0x53ad(%rip),%r8        # 407540 <gets_buf>
  402193:	8b 0d 87 53 00 00    	mov    0x5387(%rip),%ecx        # 407520 <check_level>
  402199:	48 8d 35 97 24 00 00 	lea    0x2497(%rip),%rsi        # 404637 <_IO_stdin_used+0x637>
  4021a0:	bf 02 00 00 00       	mov    $0x2,%edi
  4021a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021aa:	e8 e1 ef ff ff       	call   401190 <__printf_chk@plt>
  4021af:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b4:	e8 27 f0 ff ff       	call   4011e0 <exit@plt>

00000000004021b9 <Gets>:
  4021b9:	f3 0f 1e fa          	endbr64
  4021bd:	41 54                	push   %r12
  4021bf:	55                   	push   %rbp
  4021c0:	53                   	push   %rbx
  4021c1:	49 89 fc             	mov    %rdi,%r12
  4021c4:	c7 05 76 5f 00 00 00 	movl   $0x0,0x5f76(%rip)        # 408144 <gets_cnt>
  4021cb:	00 00 00 
  4021ce:	48 89 fb             	mov    %rdi,%rbx
  4021d1:	eb 11                	jmp    4021e4 <Gets+0x2b>
  4021d3:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021d7:	88 03                	mov    %al,(%rbx)
  4021d9:	0f b6 f8             	movzbl %al,%edi
  4021dc:	e8 2b ff ff ff       	call   40210c <save_char>
  4021e1:	48 89 eb             	mov    %rbp,%rbx
  4021e4:	48 8b 3d 2d 53 00 00 	mov    0x532d(%rip),%rdi        # 407518 <infile>
  4021eb:	e8 20 f0 ff ff       	call   401210 <getc@plt>
  4021f0:	83 f8 ff             	cmp    $0xffffffff,%eax
  4021f3:	74 05                	je     4021fa <Gets+0x41>
  4021f5:	83 f8 0a             	cmp    $0xa,%eax
  4021f8:	75 d9                	jne    4021d3 <Gets+0x1a>
  4021fa:	c6 03 00             	movb   $0x0,(%rbx)
  4021fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402202:	e8 5d ff ff ff       	call   402164 <save_term>
  402207:	4c 89 e0             	mov    %r12,%rax
  40220a:	5b                   	pop    %rbx
  40220b:	5d                   	pop    %rbp
  40220c:	41 5c                	pop    %r12
  40220e:	c3                   	ret

000000000040220f <notify_server>:
  40220f:	f3 0f 1e fa          	endbr64
  402213:	55                   	push   %rbp
  402214:	53                   	push   %rbx
  402215:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40221c:	ff 
  40221d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402224:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402229:	4c 39 dc             	cmp    %r11,%rsp
  40222c:	75 ef                	jne    40221d <notify_server+0xe>
  40222e:	48 83 ec 18          	sub    $0x18,%rsp
  402232:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402239:	00 00 
  40223b:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402242:	00 
  402243:	31 c0                	xor    %eax,%eax
  402245:	83 3d e4 52 00 00 00 	cmpl   $0x0,0x52e4(%rip)        # 407530 <is_checker>
  40224c:	0f 85 c2 01 00 00    	jne    402414 <notify_server+0x205>
  402252:	89 fb                	mov    %edi,%ebx
  402254:	81 3d e6 5e 00 00 9c 	cmpl   $0x1f9c,0x5ee6(%rip)        # 408144 <gets_cnt>
  40225b:	1f 00 00 
  40225e:	0f 8f bd 00 00 00    	jg     402321 <notify_server+0x112>
  402264:	0f be 05 dd 5e 00 00 	movsbl 0x5edd(%rip),%eax        # 408148 <target_prefix>
  40226b:	83 3d 0e 52 00 00 00 	cmpl   $0x0,0x520e(%rip)        # 407480 <notify>
  402272:	0f 84 c4 00 00 00    	je     40233c <notify_server+0x12d>
  402278:	8b 15 aa 52 00 00    	mov    0x52aa(%rip),%edx        # 407528 <authkey>
  40227e:	85 db                	test   %ebx,%ebx
  402280:	0f 84 c0 00 00 00    	je     402346 <notify_server+0x137>
  402286:	48 8d 2d c0 23 00 00 	lea    0x23c0(%rip),%rbp        # 40464d <_IO_stdin_used+0x64d>
  40228d:	48 89 e7             	mov    %rsp,%rdi
  402290:	48 8d 0d a9 52 00 00 	lea    0x52a9(%rip),%rcx        # 407540 <gets_buf>
  402297:	51                   	push   %rcx
  402298:	56                   	push   %rsi
  402299:	50                   	push   %rax
  40229a:	52                   	push   %rdx
  40229b:	49 89 e9             	mov    %rbp,%r9
  40229e:	44 8b 05 8b 4e 00 00 	mov    0x4e8b(%rip),%r8d        # 407130 <target_id>
  4022a5:	48 8d 0d ab 23 00 00 	lea    0x23ab(%rip),%rcx        # 404657 <_IO_stdin_used+0x657>
  4022ac:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022b1:	be 02 00 00 00       	mov    $0x2,%esi
  4022b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022bb:	e8 60 ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022c0:	48 83 c4 20          	add    $0x20,%rsp
  4022c4:	83 3d b5 51 00 00 00 	cmpl   $0x0,0x51b5(%rip)        # 407480 <notify>
  4022cb:	0f 84 ba 00 00 00    	je     40238b <notify_server+0x17c>
  4022d1:	48 89 e1             	mov    %rsp,%rcx
  4022d4:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4022db:	00 
  4022dc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022e2:	48 8b 15 5f 4e 00 00 	mov    0x4e5f(%rip),%rdx        # 407148 <lab>
  4022e9:	48 8b 35 60 4e 00 00 	mov    0x4e60(%rip),%rsi        # 407150 <course>
  4022f0:	48 8b 3d 49 4e 00 00 	mov    0x4e49(%rip),%rdi        # 407140 <user_id>
  4022f7:	e8 55 12 00 00       	call   403551 <driver_post>
  4022fc:	85 c0                	test   %eax,%eax
  4022fe:	78 52                	js     402352 <notify_server+0x143>
  402300:	85 db                	test   %ebx,%ebx
  402302:	74 76                	je     40237a <notify_server+0x16b>
  402304:	48 8d 3d 9d 1f 00 00 	lea    0x1f9d(%rip),%rdi        # 4042a8 <_IO_stdin_used+0x2a8>
  40230b:	e8 70 ed ff ff       	call   401080 <puts@plt>
  402310:	48 8d 3d 68 23 00 00 	lea    0x2368(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  402317:	e8 64 ed ff ff       	call   401080 <puts@plt>
  40231c:	e9 f3 00 00 00       	jmp    402414 <notify_server+0x205>
  402321:	48 8d 35 50 1f 00 00 	lea    0x1f50(%rip),%rsi        # 404278 <_IO_stdin_used+0x278>
  402328:	bf 02 00 00 00       	mov    $0x2,%edi
  40232d:	e8 5e ee ff ff       	call   401190 <__printf_chk@plt>
  402332:	bf 01 00 00 00       	mov    $0x1,%edi
  402337:	e8 a4 ee ff ff       	call   4011e0 <exit@plt>
  40233c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402341:	e9 38 ff ff ff       	jmp    40227e <notify_server+0x6f>
  402346:	48 8d 2d 05 23 00 00 	lea    0x2305(%rip),%rbp        # 404652 <_IO_stdin_used+0x652>
  40234d:	e9 3b ff ff ff       	jmp    40228d <notify_server+0x7e>
  402352:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402359:	00 
  40235a:	48 8d 35 12 23 00 00 	lea    0x2312(%rip),%rsi        # 404673 <_IO_stdin_used+0x673>
  402361:	bf 02 00 00 00       	mov    $0x2,%edi
  402366:	b8 00 00 00 00       	mov    $0x0,%eax
  40236b:	e8 20 ee ff ff       	call   401190 <__printf_chk@plt>
  402370:	bf 01 00 00 00       	mov    $0x1,%edi
  402375:	e8 66 ee ff ff       	call   4011e0 <exit@plt>
  40237a:	48 8d 3d 08 23 00 00 	lea    0x2308(%rip),%rdi        # 404689 <_IO_stdin_used+0x689>
  402381:	e8 fa ec ff ff       	call   401080 <puts@plt>
  402386:	e9 89 00 00 00       	jmp    402414 <notify_server+0x205>
  40238b:	48 89 ea             	mov    %rbp,%rdx
  40238e:	48 8d 35 4b 1f 00 00 	lea    0x1f4b(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  402395:	bf 02 00 00 00       	mov    $0x2,%edi
  40239a:	b8 00 00 00 00       	mov    $0x0,%eax
  40239f:	e8 ec ed ff ff       	call   401190 <__printf_chk@plt>
  4023a4:	48 8b 15 95 4d 00 00 	mov    0x4d95(%rip),%rdx        # 407140 <user_id>
  4023ab:	48 8d 35 de 22 00 00 	lea    0x22de(%rip),%rsi        # 404690 <_IO_stdin_used+0x690>
  4023b2:	bf 02 00 00 00       	mov    $0x2,%edi
  4023b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bc:	e8 cf ed ff ff       	call   401190 <__printf_chk@plt>
  4023c1:	48 8b 15 88 4d 00 00 	mov    0x4d88(%rip),%rdx        # 407150 <course>
  4023c8:	48 8d 35 ce 22 00 00 	lea    0x22ce(%rip),%rsi        # 40469d <_IO_stdin_used+0x69d>
  4023cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4023d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d9:	e8 b2 ed ff ff       	call   401190 <__printf_chk@plt>
  4023de:	48 8b 15 63 4d 00 00 	mov    0x4d63(%rip),%rdx        # 407148 <lab>
  4023e5:	48 8d 35 bd 22 00 00 	lea    0x22bd(%rip),%rsi        # 4046a9 <_IO_stdin_used+0x6a9>
  4023ec:	bf 02 00 00 00       	mov    $0x2,%edi
  4023f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f6:	e8 95 ed ff ff       	call   401190 <__printf_chk@plt>
  4023fb:	48 89 e2             	mov    %rsp,%rdx
  4023fe:	48 8d 35 ad 22 00 00 	lea    0x22ad(%rip),%rsi        # 4046b2 <_IO_stdin_used+0x6b2>
  402405:	bf 02 00 00 00       	mov    $0x2,%edi
  40240a:	b8 00 00 00 00       	mov    $0x0,%eax
  40240f:	e8 7c ed ff ff       	call   401190 <__printf_chk@plt>
  402414:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40241b:	00 
  40241c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402423:	00 00 
  402425:	75 0a                	jne    402431 <notify_server+0x222>
  402427:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40242e:	5b                   	pop    %rbx
  40242f:	5d                   	pop    %rbp
  402430:	c3                   	ret
  402431:	e8 72 02 00 00       	call   4026a8 <__stack_chk_fail>

0000000000402436 <validate>:
  402436:	f3 0f 1e fa          	endbr64
  40243a:	53                   	push   %rbx
  40243b:	89 fb                	mov    %edi,%ebx
  40243d:	83 3d ec 50 00 00 00 	cmpl   $0x0,0x50ec(%rip)        # 407530 <is_checker>
  402444:	74 79                	je     4024bf <validate+0x89>
  402446:	39 3d d8 50 00 00    	cmp    %edi,0x50d8(%rip)        # 407524 <vlevel>
  40244c:	75 39                	jne    402487 <validate+0x51>
  40244e:	8b 15 cc 50 00 00    	mov    0x50cc(%rip),%edx        # 407520 <check_level>
  402454:	39 fa                	cmp    %edi,%edx
  402456:	75 45                	jne    40249d <validate+0x67>
  402458:	0f be 0d e9 5c 00 00 	movsbl 0x5ce9(%rip),%ecx        # 408148 <target_prefix>
  40245f:	4c 8d 0d da 50 00 00 	lea    0x50da(%rip),%r9        # 407540 <gets_buf>
  402466:	41 89 f8             	mov    %edi,%r8d
  402469:	8b 15 b9 50 00 00    	mov    0x50b9(%rip),%edx        # 407528 <authkey>
  40246f:	48 8d 35 ba 1e 00 00 	lea    0x1eba(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402476:	bf 02 00 00 00       	mov    $0x2,%edi
  40247b:	b8 00 00 00 00       	mov    $0x0,%eax
  402480:	e8 0b ed ff ff       	call   401190 <__printf_chk@plt>
  402485:	5b                   	pop    %rbx
  402486:	c3                   	ret
  402487:	48 8d 3d 30 22 00 00 	lea    0x2230(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  40248e:	e8 ed eb ff ff       	call   401080 <puts@plt>
  402493:	b8 00 00 00 00       	mov    $0x0,%eax
  402498:	e8 de fc ff ff       	call   40217b <check_fail>
  40249d:	89 f9                	mov    %edi,%ecx
  40249f:	48 8d 35 62 1e 00 00 	lea    0x1e62(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4024a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4024ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b0:	e8 db ec ff ff       	call   401190 <__printf_chk@plt>
  4024b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ba:	e8 bc fc ff ff       	call   40217b <check_fail>
  4024bf:	39 3d 5f 50 00 00    	cmp    %edi,0x505f(%rip)        # 407524 <vlevel>
  4024c5:	74 1a                	je     4024e1 <validate+0xab>
  4024c7:	48 8d 3d f0 21 00 00 	lea    0x21f0(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  4024ce:	e8 ad eb ff ff       	call   401080 <puts@plt>
  4024d3:	89 de                	mov    %ebx,%esi
  4024d5:	bf 00 00 00 00       	mov    $0x0,%edi
  4024da:	e8 30 fd ff ff       	call   40220f <notify_server>
  4024df:	eb a4                	jmp    402485 <validate+0x4f>
  4024e1:	0f be 0d 60 5c 00 00 	movsbl 0x5c60(%rip),%ecx        # 408148 <target_prefix>
  4024e8:	89 fa                	mov    %edi,%edx
  4024ea:	48 8d 35 67 1e 00 00 	lea    0x1e67(%rip),%rsi        # 404358 <_IO_stdin_used+0x358>
  4024f1:	bf 02 00 00 00       	mov    $0x2,%edi
  4024f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4024fb:	e8 90 ec ff ff       	call   401190 <__printf_chk@plt>
  402500:	89 de                	mov    %ebx,%esi
  402502:	bf 01 00 00 00       	mov    $0x1,%edi
  402507:	e8 03 fd ff ff       	call   40220f <notify_server>
  40250c:	e9 74 ff ff ff       	jmp    402485 <validate+0x4f>

0000000000402511 <fail>:
  402511:	f3 0f 1e fa          	endbr64
  402515:	48 83 ec 08          	sub    $0x8,%rsp
  402519:	83 3d 10 50 00 00 00 	cmpl   $0x0,0x5010(%rip)        # 407530 <is_checker>
  402520:	75 11                	jne    402533 <fail+0x22>
  402522:	89 fe                	mov    %edi,%esi
  402524:	bf 00 00 00 00       	mov    $0x0,%edi
  402529:	e8 e1 fc ff ff       	call   40220f <notify_server>
  40252e:	48 83 c4 08          	add    $0x8,%rsp
  402532:	c3                   	ret
  402533:	b8 00 00 00 00       	mov    $0x0,%eax
  402538:	e8 3e fc ff ff       	call   40217b <check_fail>

000000000040253d <bushandler>:
  40253d:	f3 0f 1e fa          	endbr64
  402541:	50                   	push   %rax
  402542:	58                   	pop    %rax
  402543:	48 83 ec 08          	sub    $0x8,%rsp
  402547:	83 3d e2 4f 00 00 00 	cmpl   $0x0,0x4fe2(%rip)        # 407530 <is_checker>
  40254e:	74 16                	je     402566 <bushandler+0x29>
  402550:	48 8d 3d 85 21 00 00 	lea    0x2185(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402557:	e8 24 eb ff ff       	call   401080 <puts@plt>
  40255c:	b8 00 00 00 00       	mov    $0x0,%eax
  402561:	e8 15 fc ff ff       	call   40217b <check_fail>
  402566:	48 8d 3d 23 1e 00 00 	lea    0x1e23(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  40256d:	e8 0e eb ff ff       	call   401080 <puts@plt>
  402572:	48 8d 3d 6d 21 00 00 	lea    0x216d(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  402579:	e8 02 eb ff ff       	call   401080 <puts@plt>
  40257e:	be 00 00 00 00       	mov    $0x0,%esi
  402583:	bf 00 00 00 00       	mov    $0x0,%edi
  402588:	e8 82 fc ff ff       	call   40220f <notify_server>
  40258d:	bf 01 00 00 00       	mov    $0x1,%edi
  402592:	e8 49 ec ff ff       	call   4011e0 <exit@plt>

0000000000402597 <seghandler>:
  402597:	f3 0f 1e fa          	endbr64
  40259b:	50                   	push   %rax
  40259c:	58                   	pop    %rax
  40259d:	48 83 ec 08          	sub    $0x8,%rsp
  4025a1:	83 3d 88 4f 00 00 00 	cmpl   $0x0,0x4f88(%rip)        # 407530 <is_checker>
  4025a8:	74 16                	je     4025c0 <seghandler+0x29>
  4025aa:	48 8d 3d 4b 21 00 00 	lea    0x214b(%rip),%rdi        # 4046fc <_IO_stdin_used+0x6fc>
  4025b1:	e8 ca ea ff ff       	call   401080 <puts@plt>
  4025b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025bb:	e8 bb fb ff ff       	call   40217b <check_fail>
  4025c0:	48 8d 3d e9 1d 00 00 	lea    0x1de9(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  4025c7:	e8 b4 ea ff ff       	call   401080 <puts@plt>
  4025cc:	48 8d 3d 13 21 00 00 	lea    0x2113(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  4025d3:	e8 a8 ea ff ff       	call   401080 <puts@plt>
  4025d8:	be 00 00 00 00       	mov    $0x0,%esi
  4025dd:	bf 00 00 00 00       	mov    $0x0,%edi
  4025e2:	e8 28 fc ff ff       	call   40220f <notify_server>
  4025e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ec:	e8 ef eb ff ff       	call   4011e0 <exit@plt>

00000000004025f1 <illegalhandler>:
  4025f1:	f3 0f 1e fa          	endbr64
  4025f5:	50                   	push   %rax
  4025f6:	58                   	pop    %rax
  4025f7:	48 83 ec 08          	sub    $0x8,%rsp
  4025fb:	83 3d 2e 4f 00 00 00 	cmpl   $0x0,0x4f2e(%rip)        # 407530 <is_checker>
  402602:	74 16                	je     40261a <illegalhandler+0x29>
  402604:	48 8d 3d 04 21 00 00 	lea    0x2104(%rip),%rdi        # 40470f <_IO_stdin_used+0x70f>
  40260b:	e8 70 ea ff ff       	call   401080 <puts@plt>
  402610:	b8 00 00 00 00       	mov    $0x0,%eax
  402615:	e8 61 fb ff ff       	call   40217b <check_fail>
  40261a:	48 8d 3d b7 1d 00 00 	lea    0x1db7(%rip),%rdi        # 4043d8 <_IO_stdin_used+0x3d8>
  402621:	e8 5a ea ff ff       	call   401080 <puts@plt>
  402626:	48 8d 3d b9 20 00 00 	lea    0x20b9(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  40262d:	e8 4e ea ff ff       	call   401080 <puts@plt>
  402632:	be 00 00 00 00       	mov    $0x0,%esi
  402637:	bf 00 00 00 00       	mov    $0x0,%edi
  40263c:	e8 ce fb ff ff       	call   40220f <notify_server>
  402641:	bf 01 00 00 00       	mov    $0x1,%edi
  402646:	e8 95 eb ff ff       	call   4011e0 <exit@plt>

000000000040264b <sigalrmhandler>:
  40264b:	f3 0f 1e fa          	endbr64
  40264f:	50                   	push   %rax
  402650:	58                   	pop    %rax
  402651:	48 83 ec 08          	sub    $0x8,%rsp
  402655:	83 3d d4 4e 00 00 00 	cmpl   $0x0,0x4ed4(%rip)        # 407530 <is_checker>
  40265c:	74 16                	je     402674 <sigalrmhandler+0x29>
  40265e:	48 8d 3d be 20 00 00 	lea    0x20be(%rip),%rdi        # 404723 <_IO_stdin_used+0x723>
  402665:	e8 16 ea ff ff       	call   401080 <puts@plt>
  40266a:	b8 00 00 00 00       	mov    $0x0,%eax
  40266f:	e8 07 fb ff ff       	call   40217b <check_fail>
  402674:	ba 02 00 00 00       	mov    $0x2,%edx
  402679:	48 8d 35 88 1d 00 00 	lea    0x1d88(%rip),%rsi        # 404408 <_IO_stdin_used+0x408>
  402680:	bf 02 00 00 00       	mov    $0x2,%edi
  402685:	b8 00 00 00 00       	mov    $0x0,%eax
  40268a:	e8 01 eb ff ff       	call   401190 <__printf_chk@plt>
  40268f:	be 00 00 00 00       	mov    $0x0,%esi
  402694:	bf 00 00 00 00       	mov    $0x0,%edi
  402699:	e8 71 fb ff ff       	call   40220f <notify_server>
  40269e:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a3:	e8 38 eb ff ff       	call   4011e0 <exit@plt>

00000000004026a8 <__stack_chk_fail>:
  4026a8:	f3 0f 1e fa          	endbr64
  4026ac:	50                   	push   %rax
  4026ad:	58                   	pop    %rax
  4026ae:	48 83 ec 08          	sub    $0x8,%rsp
  4026b2:	83 3d 77 4e 00 00 00 	cmpl   $0x0,0x4e77(%rip)        # 407530 <is_checker>
  4026b9:	74 16                	je     4026d1 <__stack_chk_fail+0x29>
  4026bb:	48 8d 3d 69 20 00 00 	lea    0x2069(%rip),%rdi        # 40472b <_IO_stdin_used+0x72b>
  4026c2:	e8 b9 e9 ff ff       	call   401080 <puts@plt>
  4026c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026cc:	e8 aa fa ff ff       	call   40217b <check_fail>
  4026d1:	48 8d 3d 68 1d 00 00 	lea    0x1d68(%rip),%rdi        # 404440 <_IO_stdin_used+0x440>
  4026d8:	e8 a3 e9 ff ff       	call   401080 <puts@plt>
  4026dd:	48 8d 3d 02 20 00 00 	lea    0x2002(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  4026e4:	e8 97 e9 ff ff       	call   401080 <puts@plt>
  4026e9:	be 00 00 00 00       	mov    $0x0,%esi
  4026ee:	bf 00 00 00 00       	mov    $0x0,%edi
  4026f3:	e8 17 fb ff ff       	call   40220f <notify_server>
  4026f8:	bf 01 00 00 00       	mov    $0x1,%edi
  4026fd:	e8 de ea ff ff       	call   4011e0 <exit@plt>

0000000000402702 <launch>:
  402702:	f3 0f 1e fa          	endbr64
  402706:	55                   	push   %rbp
  402707:	48 89 e5             	mov    %rsp,%rbp
  40270a:	53                   	push   %rbx
  40270b:	48 83 ec 18          	sub    $0x18,%rsp
  40270f:	48 89 fa             	mov    %rdi,%rdx
  402712:	89 f3                	mov    %esi,%ebx
  402714:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40271b:	00 00 
  40271d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402721:	31 c0                	xor    %eax,%eax
  402723:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402727:	48 89 c6             	mov    %rax,%rsi
  40272a:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  40272e:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402734:	48 89 e1             	mov    %rsp,%rcx
  402737:	48 29 c1             	sub    %rax,%rcx
  40273a:	48 39 cc             	cmp    %rcx,%rsp
  40273d:	74 12                	je     402751 <launch+0x4f>
  40273f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402746:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40274d:	00 00 
  40274f:	eb e9                	jmp    40273a <launch+0x38>
  402751:	48 89 f0             	mov    %rsi,%rax
  402754:	25 ff 0f 00 00       	and    $0xfff,%eax
  402759:	48 29 c4             	sub    %rax,%rsp
  40275c:	48 85 c0             	test   %rax,%rax
  40275f:	74 06                	je     402767 <launch+0x65>
  402761:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402767:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40276c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402770:	48 89 d1             	mov    %rdx,%rcx
  402773:	be f4 00 00 00       	mov    $0xf4,%esi
  402778:	e8 53 ea ff ff       	call   4011d0 <__memset_chk@plt>
  40277d:	48 8b 05 1c 4d 00 00 	mov    0x4d1c(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  402784:	48 39 05 8d 4d 00 00 	cmp    %rax,0x4d8d(%rip)        # 407518 <infile>
  40278b:	74 42                	je     4027cf <launch+0xcd>
  40278d:	c7 05 8d 4d 00 00 00 	movl   $0x0,0x4d8d(%rip)        # 407524 <vlevel>
  402794:	00 00 00 
  402797:	85 db                	test   %ebx,%ebx
  402799:	75 4c                	jne    4027e7 <launch+0xe5>
  40279b:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a0:	e8 c2 f6 ff ff       	call   401e67 <test>
  4027a5:	83 3d 84 4d 00 00 00 	cmpl   $0x0,0x4d84(%rip)        # 407530 <is_checker>
  4027ac:	75 45                	jne    4027f3 <launch+0xf1>
  4027ae:	48 8d 3d 9d 1f 00 00 	lea    0x1f9d(%rip),%rdi        # 404752 <_IO_stdin_used+0x752>
  4027b5:	e8 c6 e8 ff ff       	call   401080 <puts@plt>
  4027ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027be:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027c5:	00 00 
  4027c7:	75 40                	jne    402809 <launch+0x107>
  4027c9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027cd:	c9                   	leave
  4027ce:	c3                   	ret
  4027cf:	48 8d 35 64 1f 00 00 	lea    0x1f64(%rip),%rsi        # 40473a <_IO_stdin_used+0x73a>
  4027d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4027db:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e0:	e8 ab e9 ff ff       	call   401190 <__printf_chk@plt>
  4027e5:	eb a6                	jmp    40278d <launch+0x8b>
  4027e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ec:	e8 a5 f6 ff ff       	call   401e96 <test2>
  4027f1:	eb b2                	jmp    4027a5 <launch+0xa3>
  4027f3:	48 8d 3d 4d 1f 00 00 	lea    0x1f4d(%rip),%rdi        # 404747 <_IO_stdin_used+0x747>
  4027fa:	e8 81 e8 ff ff       	call   401080 <puts@plt>
  4027ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402804:	e8 72 f9 ff ff       	call   40217b <check_fail>
  402809:	e8 9a fe ff ff       	call   4026a8 <__stack_chk_fail>

000000000040280e <stable_launch>:
  40280e:	f3 0f 1e fa          	endbr64
  402812:	55                   	push   %rbp
  402813:	53                   	push   %rbx
  402814:	48 83 ec 08          	sub    $0x8,%rsp
  402818:	89 f5                	mov    %esi,%ebp
  40281a:	48 89 3d ef 4c 00 00 	mov    %rdi,0x4cef(%rip)        # 407510 <global_offset>
  402821:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402827:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40282d:	b9 32 01 00 00       	mov    $0x132,%ecx
  402832:	ba 07 00 00 00       	mov    $0x7,%edx
  402837:	be 00 00 10 00       	mov    $0x100000,%esi
  40283c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402841:	e8 6a e8 ff ff       	call   4010b0 <mmap@plt>
  402846:	48 89 c3             	mov    %rax,%rbx
  402849:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40284f:	75 4a                	jne    40289b <stable_launch+0x8d>
  402851:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402858:	48 89 15 a9 4c 00 00 	mov    %rdx,0x4ca9(%rip)        # 407508 <stack_top>
  40285f:	48 89 e0             	mov    %rsp,%rax
  402862:	48 89 d4             	mov    %rdx,%rsp
  402865:	48 89 c2             	mov    %rax,%rdx
  402868:	48 89 15 91 4c 00 00 	mov    %rdx,0x4c91(%rip)        # 407500 <global_save_stack>
  40286f:	89 ee                	mov    %ebp,%esi
  402871:	48 8b 3d 98 4c 00 00 	mov    0x4c98(%rip),%rdi        # 407510 <global_offset>
  402878:	e8 85 fe ff ff       	call   402702 <launch>
  40287d:	48 8b 05 7c 4c 00 00 	mov    0x4c7c(%rip),%rax        # 407500 <global_save_stack>
  402884:	48 89 c4             	mov    %rax,%rsp
  402887:	be 00 00 10 00       	mov    $0x100000,%esi
  40288c:	48 89 df             	mov    %rbx,%rdi
  40288f:	e8 ec e8 ff ff       	call   401180 <munmap@plt>
  402894:	48 83 c4 08          	add    $0x8,%rsp
  402898:	5b                   	pop    %rbx
  402899:	5d                   	pop    %rbp
  40289a:	c3                   	ret
  40289b:	be 00 00 10 00       	mov    $0x100000,%esi
  4028a0:	48 89 c7             	mov    %rax,%rdi
  4028a3:	e8 d8 e8 ff ff       	call   401180 <munmap@plt>
  4028a8:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4028ad:	48 8d 15 b4 1b 00 00 	lea    0x1bb4(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  4028b4:	be 02 00 00 00       	mov    $0x2,%esi
  4028b9:	48 8b 3d 20 4c 00 00 	mov    0x4c20(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c5:	e8 36 e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4028cf:	e8 0c e9 ff ff       	call   4011e0 <exit@plt>

00000000004028d4 <rio_readinitb>:
  4028d4:	89 37                	mov    %esi,(%rdi)
  4028d6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4028dd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028e5:	c3                   	ret

00000000004028e6 <sigalrm_handler>:
  4028e6:	f3 0f 1e fa          	endbr64
  4028ea:	50                   	push   %rax
  4028eb:	58                   	pop    %rax
  4028ec:	48 83 ec 08          	sub    $0x8,%rsp
  4028f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  4028f5:	48 8d 15 94 1b 00 00 	lea    0x1b94(%rip),%rdx        # 404490 <_IO_stdin_used+0x490>
  4028fc:	be 02 00 00 00       	mov    $0x2,%esi
  402901:	48 8b 3d d8 4b 00 00 	mov    0x4bd8(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402908:	b8 00 00 00 00       	mov    $0x0,%eax
  40290d:	e8 ee e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402912:	bf 01 00 00 00       	mov    $0x1,%edi
  402917:	e8 c4 e8 ff ff       	call   4011e0 <exit@plt>

000000000040291c <rio_writen>:
  40291c:	41 55                	push   %r13
  40291e:	41 54                	push   %r12
  402920:	55                   	push   %rbp
  402921:	53                   	push   %rbx
  402922:	48 83 ec 08          	sub    $0x8,%rsp
  402926:	41 89 fc             	mov    %edi,%r12d
  402929:	48 89 f5             	mov    %rsi,%rbp
  40292c:	49 89 d5             	mov    %rdx,%r13
  40292f:	48 89 d3             	mov    %rdx,%rbx
  402932:	eb 06                	jmp    40293a <rio_writen+0x1e>
  402934:	48 29 c3             	sub    %rax,%rbx
  402937:	48 01 c5             	add    %rax,%rbp
  40293a:	48 85 db             	test   %rbx,%rbx
  40293d:	74 24                	je     402963 <rio_writen+0x47>
  40293f:	48 89 da             	mov    %rbx,%rdx
  402942:	48 89 ee             	mov    %rbp,%rsi
  402945:	44 89 e7             	mov    %r12d,%edi
  402948:	e8 43 e7 ff ff       	call   401090 <write@plt>
  40294d:	48 85 c0             	test   %rax,%rax
  402950:	7f e2                	jg     402934 <rio_writen+0x18>
  402952:	e8 d9 e6 ff ff       	call   401030 <__errno_location@plt>
  402957:	83 38 04             	cmpl   $0x4,(%rax)
  40295a:	75 15                	jne    402971 <rio_writen+0x55>
  40295c:	b8 00 00 00 00       	mov    $0x0,%eax
  402961:	eb d1                	jmp    402934 <rio_writen+0x18>
  402963:	4c 89 e8             	mov    %r13,%rax
  402966:	48 83 c4 08          	add    $0x8,%rsp
  40296a:	5b                   	pop    %rbx
  40296b:	5d                   	pop    %rbp
  40296c:	41 5c                	pop    %r12
  40296e:	41 5d                	pop    %r13
  402970:	c3                   	ret
  402971:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402978:	eb ec                	jmp    402966 <rio_writen+0x4a>

000000000040297a <rio_read>:
  40297a:	41 55                	push   %r13
  40297c:	41 54                	push   %r12
  40297e:	55                   	push   %rbp
  40297f:	53                   	push   %rbx
  402980:	48 83 ec 08          	sub    $0x8,%rsp
  402984:	48 89 fb             	mov    %rdi,%rbx
  402987:	49 89 f5             	mov    %rsi,%r13
  40298a:	49 89 d4             	mov    %rdx,%r12
  40298d:	eb 0a                	jmp    402999 <rio_read+0x1f>
  40298f:	e8 9c e6 ff ff       	call   401030 <__errno_location@plt>
  402994:	83 38 04             	cmpl   $0x4,(%rax)
  402997:	75 5f                	jne    4029f8 <rio_read+0x7e>
  402999:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40299c:	85 ed                	test   %ebp,%ebp
  40299e:	7f 22                	jg     4029c2 <rio_read+0x48>
  4029a0:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4029a4:	8b 3b                	mov    (%rbx),%edi
  4029a6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029ab:	48 89 ee             	mov    %rbp,%rsi
  4029ae:	e8 2d e7 ff ff       	call   4010e0 <read@plt>
  4029b3:	89 43 04             	mov    %eax,0x4(%rbx)
  4029b6:	85 c0                	test   %eax,%eax
  4029b8:	78 d5                	js     40298f <rio_read+0x15>
  4029ba:	74 45                	je     402a01 <rio_read+0x87>
  4029bc:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029c0:	eb d7                	jmp    402999 <rio_read+0x1f>
  4029c2:	89 e8                	mov    %ebp,%eax
  4029c4:	4c 39 e0             	cmp    %r12,%rax
  4029c7:	72 03                	jb     4029cc <rio_read+0x52>
  4029c9:	44 89 e5             	mov    %r12d,%ebp
  4029cc:	4c 63 e5             	movslq %ebp,%r12
  4029cf:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4029d3:	4c 89 e2             	mov    %r12,%rdx
  4029d6:	4c 89 ef             	mov    %r13,%rdi
  4029d9:	e8 62 e7 ff ff       	call   401140 <memcpy@plt>
  4029de:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4029e2:	8b 43 04             	mov    0x4(%rbx),%eax
  4029e5:	29 e8                	sub    %ebp,%eax
  4029e7:	89 43 04             	mov    %eax,0x4(%rbx)
  4029ea:	4c 89 e0             	mov    %r12,%rax
  4029ed:	48 83 c4 08          	add    $0x8,%rsp
  4029f1:	5b                   	pop    %rbx
  4029f2:	5d                   	pop    %rbp
  4029f3:	41 5c                	pop    %r12
  4029f5:	41 5d                	pop    %r13
  4029f7:	c3                   	ret
  4029f8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029ff:	eb ec                	jmp    4029ed <rio_read+0x73>
  402a01:	b8 00 00 00 00       	mov    $0x0,%eax
  402a06:	eb e5                	jmp    4029ed <rio_read+0x73>

0000000000402a08 <rio_readlineb>:
  402a08:	41 55                	push   %r13
  402a0a:	41 54                	push   %r12
  402a0c:	55                   	push   %rbp
  402a0d:	53                   	push   %rbx
  402a0e:	48 83 ec 18          	sub    $0x18,%rsp
  402a12:	49 89 fd             	mov    %rdi,%r13
  402a15:	48 89 f5             	mov    %rsi,%rbp
  402a18:	49 89 d4             	mov    %rdx,%r12
  402a1b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a22:	00 00 
  402a24:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a29:	31 c0                	xor    %eax,%eax
  402a2b:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a30:	eb 18                	jmp    402a4a <rio_readlineb+0x42>
  402a32:	85 c0                	test   %eax,%eax
  402a34:	75 65                	jne    402a9b <rio_readlineb+0x93>
  402a36:	48 83 fb 01          	cmp    $0x1,%rbx
  402a3a:	75 3d                	jne    402a79 <rio_readlineb+0x71>
  402a3c:	b8 00 00 00 00       	mov    $0x0,%eax
  402a41:	eb 3d                	jmp    402a80 <rio_readlineb+0x78>
  402a43:	48 83 c3 01          	add    $0x1,%rbx
  402a47:	48 89 d5             	mov    %rdx,%rbp
  402a4a:	4c 39 e3             	cmp    %r12,%rbx
  402a4d:	73 2a                	jae    402a79 <rio_readlineb+0x71>
  402a4f:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a54:	ba 01 00 00 00       	mov    $0x1,%edx
  402a59:	4c 89 ef             	mov    %r13,%rdi
  402a5c:	e8 19 ff ff ff       	call   40297a <rio_read>
  402a61:	83 f8 01             	cmp    $0x1,%eax
  402a64:	75 cc                	jne    402a32 <rio_readlineb+0x2a>
  402a66:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a6a:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a6f:	88 45 00             	mov    %al,0x0(%rbp)
  402a72:	3c 0a                	cmp    $0xa,%al
  402a74:	75 cd                	jne    402a43 <rio_readlineb+0x3b>
  402a76:	48 89 d5             	mov    %rdx,%rbp
  402a79:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402a7d:	48 89 d8             	mov    %rbx,%rax
  402a80:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a85:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a8c:	00 00 
  402a8e:	75 14                	jne    402aa4 <rio_readlineb+0x9c>
  402a90:	48 83 c4 18          	add    $0x18,%rsp
  402a94:	5b                   	pop    %rbx
  402a95:	5d                   	pop    %rbp
  402a96:	41 5c                	pop    %r12
  402a98:	41 5d                	pop    %r13
  402a9a:	c3                   	ret
  402a9b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402aa2:	eb dc                	jmp    402a80 <rio_readlineb+0x78>
  402aa4:	e8 ff fb ff ff       	call   4026a8 <__stack_chk_fail>

0000000000402aa9 <urlencode>:
  402aa9:	41 54                	push   %r12
  402aab:	55                   	push   %rbp
  402aac:	53                   	push   %rbx
  402aad:	48 83 ec 10          	sub    $0x10,%rsp
  402ab1:	48 89 fb             	mov    %rdi,%rbx
  402ab4:	48 89 f5             	mov    %rsi,%rbp
  402ab7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402abe:	00 00 
  402ac0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402ac5:	31 c0                	xor    %eax,%eax
  402ac7:	e8 d4 e5 ff ff       	call   4010a0 <strlen@plt>
  402acc:	eb 0f                	jmp    402add <urlencode+0x34>
  402ace:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402ad2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402ad6:	48 83 c3 01          	add    $0x1,%rbx
  402ada:	44 89 e0             	mov    %r12d,%eax
  402add:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402ae1:	85 c0                	test   %eax,%eax
  402ae3:	0f 84 a8 00 00 00    	je     402b91 <urlencode+0xe8>
  402ae9:	44 0f b6 03          	movzbl (%rbx),%r8d
  402aed:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402af1:	0f 94 c0             	sete   %al
  402af4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402af8:	0f 94 c2             	sete   %dl
  402afb:	08 d0                	or     %dl,%al
  402afd:	75 cf                	jne    402ace <urlencode+0x25>
  402aff:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b03:	74 c9                	je     402ace <urlencode+0x25>
  402b05:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b09:	74 c3                	je     402ace <urlencode+0x25>
  402b0b:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b0f:	3c 09                	cmp    $0x9,%al
  402b11:	76 bb                	jbe    402ace <urlencode+0x25>
  402b13:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b17:	3c 19                	cmp    $0x19,%al
  402b19:	76 b3                	jbe    402ace <urlencode+0x25>
  402b1b:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b1f:	3c 19                	cmp    $0x19,%al
  402b21:	76 ab                	jbe    402ace <urlencode+0x25>
  402b23:	41 80 f8 20          	cmp    $0x20,%r8b
  402b27:	74 56                	je     402b7f <urlencode+0xd6>
  402b29:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b2d:	3c 5f                	cmp    $0x5f,%al
  402b2f:	0f 96 c0             	setbe  %al
  402b32:	41 80 f8 09          	cmp    $0x9,%r8b
  402b36:	0f 94 c2             	sete   %dl
  402b39:	08 d0                	or     %dl,%al
  402b3b:	74 4f                	je     402b8c <urlencode+0xe3>
  402b3d:	48 89 e7             	mov    %rsp,%rdi
  402b40:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b44:	48 8d 0d 15 1c 00 00 	lea    0x1c15(%rip),%rcx        # 404760 <_IO_stdin_used+0x760>
  402b4b:	ba 08 00 00 00       	mov    $0x8,%edx
  402b50:	be 02 00 00 00       	mov    $0x2,%esi
  402b55:	b8 00 00 00 00       	mov    $0x0,%eax
  402b5a:	e8 c1 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b5f:	0f b6 04 24          	movzbl (%rsp),%eax
  402b63:	88 45 00             	mov    %al,0x0(%rbp)
  402b66:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b6b:	88 45 01             	mov    %al,0x1(%rbp)
  402b6e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b73:	88 45 02             	mov    %al,0x2(%rbp)
  402b76:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402b7a:	e9 57 ff ff ff       	jmp    402ad6 <urlencode+0x2d>
  402b7f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402b83:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b87:	e9 4a ff ff ff       	jmp    402ad6 <urlencode+0x2d>
  402b8c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b91:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402b96:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b9d:	00 00 
  402b9f:	75 09                	jne    402baa <urlencode+0x101>
  402ba1:	48 83 c4 10          	add    $0x10,%rsp
  402ba5:	5b                   	pop    %rbx
  402ba6:	5d                   	pop    %rbp
  402ba7:	41 5c                	pop    %r12
  402ba9:	c3                   	ret
  402baa:	e8 f9 fa ff ff       	call   4026a8 <__stack_chk_fail>

0000000000402baf <submitr>:
  402baf:	f3 0f 1e fa          	endbr64
  402bb3:	41 57                	push   %r15
  402bb5:	41 56                	push   %r14
  402bb7:	41 55                	push   %r13
  402bb9:	41 54                	push   %r12
  402bbb:	55                   	push   %rbp
  402bbc:	53                   	push   %rbx
  402bbd:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402bc4:	ff 
  402bc5:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bcc:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bd1:	4c 39 dc             	cmp    %r11,%rsp
  402bd4:	75 ef                	jne    402bc5 <submitr+0x16>
  402bd6:	48 83 ec 68          	sub    $0x68,%rsp
  402bda:	49 89 fd             	mov    %rdi,%r13
  402bdd:	41 89 f6             	mov    %esi,%r14d
  402be0:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402be5:	49 89 cc             	mov    %rcx,%r12
  402be8:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402bed:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402bf2:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402bf9:	00 
  402bfa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c01:	00 00 
  402c03:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c0a:	00 
  402c0b:	31 c0                	xor    %eax,%eax
  402c0d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c14:	00 
  402c15:	ba 00 00 00 00       	mov    $0x0,%edx
  402c1a:	be 01 00 00 00       	mov    $0x1,%esi
  402c1f:	bf 02 00 00 00       	mov    $0x2,%edi
  402c24:	e8 07 e6 ff ff       	call   401230 <socket@plt>
  402c29:	85 c0                	test   %eax,%eax
  402c2b:	0f 88 72 02 00 00    	js     402ea3 <submitr+0x2f4>
  402c31:	89 c3                	mov    %eax,%ebx
  402c33:	4c 89 ef             	mov    %r13,%rdi
  402c36:	e8 d5 e4 ff ff       	call   401110 <gethostbyname@plt>
  402c3b:	48 85 c0             	test   %rax,%rax
  402c3e:	0f 84 ab 02 00 00    	je     402eef <submitr+0x340>
  402c44:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c49:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c4d:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c52:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c59:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c5d:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c61:	48 8b 30             	mov    (%rax),%rsi
  402c64:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c69:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c6e:	e8 ad e4 ff ff       	call   401120 <__memmove_chk@plt>
  402c73:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402c78:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402c7e:	ba 10 00 00 00       	mov    $0x10,%edx
  402c83:	48 89 ee             	mov    %rbp,%rsi
  402c86:	89 df                	mov    %ebx,%edi
  402c88:	e8 63 e5 ff ff       	call   4011f0 <connect@plt>
  402c8d:	85 c0                	test   %eax,%eax
  402c8f:	0f 88 cc 02 00 00    	js     402f61 <submitr+0x3b2>
  402c95:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c9a:	e8 01 e4 ff ff       	call   4010a0 <strlen@plt>
  402c9f:	49 89 c6             	mov    %rax,%r14
  402ca2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402ca7:	e8 f4 e3 ff ff       	call   4010a0 <strlen@plt>
  402cac:	48 89 c5             	mov    %rax,%rbp
  402caf:	4c 89 e7             	mov    %r12,%rdi
  402cb2:	e8 e9 e3 ff ff       	call   4010a0 <strlen@plt>
  402cb7:	48 01 c5             	add    %rax,%rbp
  402cba:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402cbf:	e8 dc e3 ff ff       	call   4010a0 <strlen@plt>
  402cc4:	48 01 c5             	add    %rax,%rbp
  402cc7:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402ccb:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402cd2:	00 
  402cd3:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402cd9:	0f 87 e6 02 00 00    	ja     402fc5 <submitr+0x416>
  402cdf:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402ce6:	00 
  402ce7:	b9 00 04 00 00       	mov    $0x400,%ecx
  402cec:	b8 00 00 00 00       	mov    $0x0,%eax
  402cf1:	48 89 f7             	mov    %rsi,%rdi
  402cf4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402cf7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402cfc:	e8 a8 fd ff ff       	call   402aa9 <urlencode>
  402d01:	85 c0                	test   %eax,%eax
  402d03:	0f 88 2e 03 00 00    	js     403037 <submitr+0x488>
  402d09:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d10:	00 
  402d11:	48 83 ec 08          	sub    $0x8,%rsp
  402d15:	41 55                	push   %r13
  402d17:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d1e:	00 
  402d1f:	50                   	push   %rax
  402d20:	41 54                	push   %r12
  402d22:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d27:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d2c:	48 8d 0d 85 17 00 00 	lea    0x1785(%rip),%rcx        # 4044b8 <_IO_stdin_used+0x4b8>
  402d33:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d38:	be 02 00 00 00       	mov    $0x2,%esi
  402d3d:	48 89 ef             	mov    %rbp,%rdi
  402d40:	b8 00 00 00 00       	mov    $0x0,%eax
  402d45:	e8 d6 e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d4a:	48 83 c4 20          	add    $0x20,%rsp
  402d4e:	48 89 ef             	mov    %rbp,%rdi
  402d51:	e8 4a e3 ff ff       	call   4010a0 <strlen@plt>
  402d56:	48 89 c2             	mov    %rax,%rdx
  402d59:	48 89 ee             	mov    %rbp,%rsi
  402d5c:	89 df                	mov    %ebx,%edi
  402d5e:	e8 b9 fb ff ff       	call   40291c <rio_writen>
  402d63:	48 85 c0             	test   %rax,%rax
  402d66:	0f 88 53 03 00 00    	js     4030bf <submitr+0x510>
  402d6c:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d71:	89 de                	mov    %ebx,%esi
  402d73:	48 89 ef             	mov    %rbp,%rdi
  402d76:	e8 59 fb ff ff       	call   4028d4 <rio_readinitb>
  402d7b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d82:	00 
  402d83:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d88:	48 89 ef             	mov    %rbp,%rdi
  402d8b:	e8 78 fc ff ff       	call   402a08 <rio_readlineb>
  402d90:	48 85 c0             	test   %rax,%rax
  402d93:	0f 8e 92 03 00 00    	jle    40312b <submitr+0x57c>
  402d99:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402d9e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402da5:	00 
  402da6:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dad:	00 
  402dae:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402db5:	00 
  402db6:	48 8d 35 aa 19 00 00 	lea    0x19aa(%rip),%rsi        # 404767 <_IO_stdin_used+0x767>
  402dbd:	b8 00 00 00 00       	mov    $0x0,%eax
  402dc2:	e8 a9 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402dc7:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dce:	00 
  402dcf:	48 8d 35 a8 19 00 00 	lea    0x19a8(%rip),%rsi        # 40477e <_IO_stdin_used+0x77e>
  402dd6:	e8 15 e3 ff ff       	call   4010f0 <strcmp@plt>
  402ddb:	85 c0                	test   %eax,%eax
  402ddd:	0f 84 c8 03 00 00    	je     4031ab <submitr+0x5fc>
  402de3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402dea:	00 
  402deb:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402df0:	ba 00 20 00 00       	mov    $0x2000,%edx
  402df5:	e8 0e fc ff ff       	call   402a08 <rio_readlineb>
  402dfa:	48 85 c0             	test   %rax,%rax
  402dfd:	7f c8                	jg     402dc7 <submitr+0x218>
  402dff:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e06:	3a 20 43 
  402e09:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e10:	20 75 6e 
  402e13:	49 89 07             	mov    %rax,(%r15)
  402e16:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e1a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e21:	74 6f 20 
  402e24:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e2b:	68 65 61 
  402e2e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e32:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e36:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e3d:	66 72 6f 
  402e40:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e47:	6f 6c 61 
  402e4a:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e4e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e52:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e59:	6c 61 62 
  402e5c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e63:	65 72 00 
  402e66:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e6a:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e6e:	89 df                	mov    %ebx,%edi
  402e70:	e8 5b e2 ff ff       	call   4010d0 <close@plt>
  402e75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e7a:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402e81:	00 
  402e82:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402e89:	00 00 
  402e8b:	0f 85 67 04 00 00    	jne    4032f8 <submitr+0x749>
  402e91:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402e98:	5b                   	pop    %rbx
  402e99:	5d                   	pop    %rbp
  402e9a:	41 5c                	pop    %r12
  402e9c:	41 5d                	pop    %r13
  402e9e:	41 5e                	pop    %r14
  402ea0:	41 5f                	pop    %r15
  402ea2:	c3                   	ret
  402ea3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402eaa:	3a 20 43 
  402ead:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402eb4:	20 75 6e 
  402eb7:	49 89 07             	mov    %rax,(%r15)
  402eba:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ebe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ec5:	74 6f 20 
  402ec8:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ecf:	65 20 73 
  402ed2:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ed6:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402eda:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402ee1:	65 74 00 
  402ee4:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402ee8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402eed:	eb 8b                	jmp    402e7a <submitr+0x2cb>
  402eef:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ef6:	3a 20 44 
  402ef9:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f00:	20 75 6e 
  402f03:	49 89 07             	mov    %rax,(%r15)
  402f06:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f0a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f11:	74 6f 20 
  402f14:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f1b:	76 65 20 
  402f1e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f22:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f26:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f2d:	61 62 20 
  402f30:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f37:	72 20 61 
  402f3a:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f3e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f42:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f49:	73 73 00 
  402f4c:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f50:	89 df                	mov    %ebx,%edi
  402f52:	e8 79 e1 ff ff       	call   4010d0 <close@plt>
  402f57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f5c:	e9 19 ff ff ff       	jmp    402e7a <submitr+0x2cb>
  402f61:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f68:	3a 20 55 
  402f6b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f72:	20 74 6f 
  402f75:	49 89 07             	mov    %rax,(%r15)
  402f78:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f7c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f83:	65 63 74 
  402f86:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402f8d:	68 65 20 
  402f90:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f94:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f98:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f9f:	6c 61 62 
  402fa2:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fa9:	65 72 00 
  402fac:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402fb0:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402fb4:	89 df                	mov    %ebx,%edi
  402fb6:	e8 15 e1 ff ff       	call   4010d0 <close@plt>
  402fbb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fc0:	e9 b5 fe ff ff       	jmp    402e7a <submitr+0x2cb>
  402fc5:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402fcc:	3a 20 52 
  402fcf:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402fd6:	20 73 74 
  402fd9:	49 89 07             	mov    %rax,(%r15)
  402fdc:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fe0:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402fe7:	74 6f 6f 
  402fea:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402ff1:	65 2e 20 
  402ff4:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ff8:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ffc:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  403003:	61 73 65 
  403006:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40300d:	49 54 52 
  403010:	49 89 47 20          	mov    %rax,0x20(%r15)
  403014:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403018:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40301f:	55 46 00 
  403022:	49 89 47 30          	mov    %rax,0x30(%r15)
  403026:	89 df                	mov    %ebx,%edi
  403028:	e8 a3 e0 ff ff       	call   4010d0 <close@plt>
  40302d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403032:	e9 43 fe ff ff       	jmp    402e7a <submitr+0x2cb>
  403037:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40303e:	3a 20 55 
  403041:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  403048:	20 73 74 
  40304b:	49 89 07             	mov    %rax,(%r15)
  40304e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403052:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403059:	63 6f 6e 
  40305c:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403063:	20 61 6e 
  403066:	49 89 47 10          	mov    %rax,0x10(%r15)
  40306a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40306e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403075:	67 61 6c 
  403078:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40307f:	6e 70 72 
  403082:	49 89 47 20          	mov    %rax,0x20(%r15)
  403086:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40308a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403091:	6c 65 20 
  403094:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40309b:	63 74 65 
  40309e:	49 89 47 30          	mov    %rax,0x30(%r15)
  4030a2:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4030a6:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  4030ad:	00 
  4030ae:	89 df                	mov    %ebx,%edi
  4030b0:	e8 1b e0 ff ff       	call   4010d0 <close@plt>
  4030b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030ba:	e9 bb fd ff ff       	jmp    402e7a <submitr+0x2cb>
  4030bf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030c6:	3a 20 43 
  4030c9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030d0:	20 75 6e 
  4030d3:	49 89 07             	mov    %rax,(%r15)
  4030d6:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030da:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030e1:	74 6f 20 
  4030e4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4030eb:	20 74 6f 
  4030ee:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030f2:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030f6:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4030fd:	41 75 74 
  403100:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403107:	73 65 72 
  40310a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40310e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403112:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403119:	00 
  40311a:	89 df                	mov    %ebx,%edi
  40311c:	e8 af df ff ff       	call   4010d0 <close@plt>
  403121:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403126:	e9 4f fd ff ff       	jmp    402e7a <submitr+0x2cb>
  40312b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403132:	3a 20 43 
  403135:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40313c:	20 75 6e 
  40313f:	49 89 07             	mov    %rax,(%r15)
  403142:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403146:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40314d:	74 6f 20 
  403150:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403157:	66 69 72 
  40315a:	49 89 47 10          	mov    %rax,0x10(%r15)
  40315e:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403162:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403169:	61 64 65 
  40316c:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403173:	6d 20 41 
  403176:	49 89 47 20          	mov    %rax,0x20(%r15)
  40317a:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40317e:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403185:	6c 61 62 
  403188:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40318f:	65 72 00 
  403192:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  403196:	49 89 57 36          	mov    %rdx,0x36(%r15)
  40319a:	89 df                	mov    %ebx,%edi
  40319c:	e8 2f df ff ff       	call   4010d0 <close@plt>
  4031a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031a6:	e9 cf fc ff ff       	jmp    402e7a <submitr+0x2cb>
  4031ab:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031b2:	00 
  4031b3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4031b8:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031bd:	e8 46 f8 ff ff       	call   402a08 <rio_readlineb>
  4031c2:	48 85 c0             	test   %rax,%rax
  4031c5:	7e 78                	jle    40323f <submitr+0x690>
  4031c7:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031cc:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031d3:	0f 85 e6 00 00 00    	jne    4032bf <submitr+0x710>
  4031d9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031e0:	00 
  4031e1:	4c 89 ff             	mov    %r15,%rdi
  4031e4:	e8 87 de ff ff       	call   401070 <strcpy@plt>
  4031e9:	89 df                	mov    %ebx,%edi
  4031eb:	e8 e0 de ff ff       	call   4010d0 <close@plt>
  4031f0:	48 8d 35 81 15 00 00 	lea    0x1581(%rip),%rsi        # 404778 <_IO_stdin_used+0x778>
  4031f7:	4c 89 ff             	mov    %r15,%rdi
  4031fa:	e8 f1 de ff ff       	call   4010f0 <strcmp@plt>
  4031ff:	85 c0                	test   %eax,%eax
  403201:	0f 84 73 fc ff ff    	je     402e7a <submitr+0x2cb>
  403207:	48 8d 35 6e 15 00 00 	lea    0x156e(%rip),%rsi        # 40477c <_IO_stdin_used+0x77c>
  40320e:	4c 89 ff             	mov    %r15,%rdi
  403211:	e8 da de ff ff       	call   4010f0 <strcmp@plt>
  403216:	85 c0                	test   %eax,%eax
  403218:	0f 84 5c fc ff ff    	je     402e7a <submitr+0x2cb>
  40321e:	48 8d 35 5c 15 00 00 	lea    0x155c(%rip),%rsi        # 404781 <_IO_stdin_used+0x781>
  403225:	4c 89 ff             	mov    %r15,%rdi
  403228:	e8 c3 de ff ff       	call   4010f0 <strcmp@plt>
  40322d:	85 c0                	test   %eax,%eax
  40322f:	0f 84 45 fc ff ff    	je     402e7a <submitr+0x2cb>
  403235:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40323a:	e9 3b fc ff ff       	jmp    402e7a <submitr+0x2cb>
  40323f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403246:	3a 20 43 
  403249:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403250:	20 75 6e 
  403253:	49 89 07             	mov    %rax,(%r15)
  403256:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40325a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403261:	74 6f 20 
  403264:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40326b:	73 74 61 
  40326e:	49 89 47 10          	mov    %rax,0x10(%r15)
  403272:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403276:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40327d:	65 73 73 
  403280:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403287:	72 6f 6d 
  40328a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40328e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403292:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403299:	6c 61 62 
  40329c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4032a3:	65 72 00 
  4032a6:	49 89 47 30          	mov    %rax,0x30(%r15)
  4032aa:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4032ae:	89 df                	mov    %ebx,%edi
  4032b0:	e8 1b de ff ff       	call   4010d0 <close@plt>
  4032b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ba:	e9 bb fb ff ff       	jmp    402e7a <submitr+0x2cb>
  4032bf:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032c6:	00 
  4032c7:	48 8d 0d 42 12 00 00 	lea    0x1242(%rip),%rcx        # 404510 <_IO_stdin_used+0x510>
  4032ce:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4032d5:	be 02 00 00 00       	mov    $0x2,%esi
  4032da:	4c 89 ff             	mov    %r15,%rdi
  4032dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4032e2:	e8 39 df ff ff       	call   401220 <__sprintf_chk@plt>
  4032e7:	89 df                	mov    %ebx,%edi
  4032e9:	e8 e2 dd ff ff       	call   4010d0 <close@plt>
  4032ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032f3:	e9 82 fb ff ff       	jmp    402e7a <submitr+0x2cb>
  4032f8:	e8 ab f3 ff ff       	call   4026a8 <__stack_chk_fail>

00000000004032fd <init_timeout>:
  4032fd:	f3 0f 1e fa          	endbr64
  403301:	85 ff                	test   %edi,%edi
  403303:	74 26                	je     40332b <init_timeout+0x2e>
  403305:	53                   	push   %rbx
  403306:	89 fb                	mov    %edi,%ebx
  403308:	78 1a                	js     403324 <init_timeout+0x27>
  40330a:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 4028e6 <sigalrm_handler>
  403311:	bf 0e 00 00 00       	mov    $0xe,%edi
  403316:	e8 e5 dd ff ff       	call   401100 <signal@plt>
  40331b:	89 df                	mov    %ebx,%edi
  40331d:	e8 9e dd ff ff       	call   4010c0 <alarm@plt>
  403322:	5b                   	pop    %rbx
  403323:	c3                   	ret
  403324:	bb 00 00 00 00       	mov    $0x0,%ebx
  403329:	eb df                	jmp    40330a <init_timeout+0xd>
  40332b:	c3                   	ret

000000000040332c <init_driver>:
  40332c:	f3 0f 1e fa          	endbr64
  403330:	41 54                	push   %r12
  403332:	55                   	push   %rbp
  403333:	53                   	push   %rbx
  403334:	48 83 ec 20          	sub    $0x20,%rsp
  403338:	48 89 fd             	mov    %rdi,%rbp
  40333b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403342:	00 00 
  403344:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403349:	31 c0                	xor    %eax,%eax
  40334b:	be 01 00 00 00       	mov    $0x1,%esi
  403350:	bf 0d 00 00 00       	mov    $0xd,%edi
  403355:	e8 a6 dd ff ff       	call   401100 <signal@plt>
  40335a:	be 01 00 00 00       	mov    $0x1,%esi
  40335f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403364:	e8 97 dd ff ff       	call   401100 <signal@plt>
  403369:	be 01 00 00 00       	mov    $0x1,%esi
  40336e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403373:	e8 88 dd ff ff       	call   401100 <signal@plt>
  403378:	ba 00 00 00 00       	mov    $0x0,%edx
  40337d:	be 01 00 00 00       	mov    $0x1,%esi
  403382:	bf 02 00 00 00       	mov    $0x2,%edi
  403387:	e8 a4 de ff ff       	call   401230 <socket@plt>
  40338c:	85 c0                	test   %eax,%eax
  40338e:	0f 88 93 00 00 00    	js     403427 <init_driver+0xfb>
  403394:	89 c3                	mov    %eax,%ebx
  403396:	48 8d 3d e7 13 00 00 	lea    0x13e7(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  40339d:	e8 6e dd ff ff       	call   401110 <gethostbyname@plt>
  4033a2:	48 85 c0             	test   %rax,%rax
  4033a5:	0f 84 c9 00 00 00    	je     403474 <init_driver+0x148>
  4033ab:	49 89 e4             	mov    %rsp,%r12
  4033ae:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4033b2:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4033b6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033bc:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033c0:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033c4:	48 8b 30             	mov    (%rax),%rsi
  4033c7:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033cc:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033d1:	e8 4a dd ff ff       	call   401120 <__memmove_chk@plt>
  4033d6:	66 c7 44 24 02 1f 91 	movw   $0x911f,0x2(%rsp)
  4033dd:	ba 10 00 00 00       	mov    $0x10,%edx
  4033e2:	4c 89 e6             	mov    %r12,%rsi
  4033e5:	89 df                	mov    %ebx,%edi
  4033e7:	e8 04 de ff ff       	call   4011f0 <connect@plt>
  4033ec:	85 c0                	test   %eax,%eax
  4033ee:	0f 88 e5 00 00 00    	js     4034d9 <init_driver+0x1ad>
  4033f4:	89 df                	mov    %ebx,%edi
  4033f6:	e8 d5 dc ff ff       	call   4010d0 <close@plt>
  4033fb:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403401:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403405:	b8 00 00 00 00       	mov    $0x0,%eax
  40340a:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40340f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403416:	00 00 
  403418:	0f 85 2e 01 00 00    	jne    40354c <init_driver+0x220>
  40341e:	48 83 c4 20          	add    $0x20,%rsp
  403422:	5b                   	pop    %rbx
  403423:	5d                   	pop    %rbp
  403424:	41 5c                	pop    %r12
  403426:	c3                   	ret
  403427:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40342e:	3a 20 43 
  403431:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403438:	20 75 6e 
  40343b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40343f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403443:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40344a:	74 6f 20 
  40344d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403454:	65 20 73 
  403457:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40345b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40345f:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  403466:	65 74 00 
  403469:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  40346d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403472:	eb 96                	jmp    40340a <init_driver+0xde>
  403474:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40347b:	3a 20 44 
  40347e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403485:	20 75 6e 
  403488:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40348c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403490:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403497:	74 6f 20 
  40349a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4034a1:	76 65 20 
  4034a4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034a8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034ac:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4034b3:	65 72 20 
  4034b6:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034bd:	73 73 00 
  4034c0:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034c4:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034c8:	89 df                	mov    %ebx,%edi
  4034ca:	e8 01 dc ff ff       	call   4010d0 <close@plt>
  4034cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d4:	e9 31 ff ff ff       	jmp    40340a <init_driver+0xde>
  4034d9:	48 b8 61 75 74 6f 6c 	movabs $0x2e62616c6f747561,%rax
  4034e0:	61 62 2e 
  4034e3:	48 ba 70 6b 75 2d 69 	movabs $0x2e7363692d756b70,%rdx
  4034ea:	63 73 2e 
  4034ed:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034f5:	c7 45 10 63 6f 6d 00 	movl   $0x6d6f63,0x10(%rbp)
  4034fc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403503:	3a 20 55 
  403506:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40350d:	20 74 6f 
  403510:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403514:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403518:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40351f:	65 63 74 
  403522:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403529:	65 72 76 
  40352c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403530:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403534:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40353b:	89 df                	mov    %ebx,%edi
  40353d:	e8 8e db ff ff       	call   4010d0 <close@plt>
  403542:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403547:	e9 be fe ff ff       	jmp    40340a <init_driver+0xde>
  40354c:	e8 57 f1 ff ff       	call   4026a8 <__stack_chk_fail>

0000000000403551 <driver_post>:
  403551:	f3 0f 1e fa          	endbr64
  403555:	53                   	push   %rbx
  403556:	4c 89 cb             	mov    %r9,%rbx
  403559:	45 85 c0             	test   %r8d,%r8d
  40355c:	75 18                	jne    403576 <driver_post+0x25>
  40355e:	48 85 ff             	test   %rdi,%rdi
  403561:	74 05                	je     403568 <driver_post+0x17>
  403563:	80 3f 00             	cmpb   $0x0,(%rdi)
  403566:	75 37                	jne    40359f <driver_post+0x4e>
  403568:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40356d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403571:	44 89 c0             	mov    %r8d,%eax
  403574:	5b                   	pop    %rbx
  403575:	c3                   	ret
  403576:	48 89 ca             	mov    %rcx,%rdx
  403579:	48 8d 35 18 12 00 00 	lea    0x1218(%rip),%rsi        # 404798 <_IO_stdin_used+0x798>
  403580:	bf 02 00 00 00       	mov    $0x2,%edi
  403585:	b8 00 00 00 00       	mov    $0x0,%eax
  40358a:	e8 01 dc ff ff       	call   401190 <__printf_chk@plt>
  40358f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403594:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403598:	b8 00 00 00 00       	mov    $0x0,%eax
  40359d:	eb d5                	jmp    403574 <driver_post+0x23>
  40359f:	48 83 ec 08          	sub    $0x8,%rsp
  4035a3:	41 51                	push   %r9
  4035a5:	49 89 c9             	mov    %rcx,%r9
  4035a8:	49 89 d0             	mov    %rdx,%r8
  4035ab:	48 89 f9             	mov    %rdi,%rcx
  4035ae:	48 89 f2             	mov    %rsi,%rdx
  4035b1:	be 91 1f 00 00       	mov    $0x1f91,%esi
  4035b6:	48 8d 3d c7 11 00 00 	lea    0x11c7(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  4035bd:	e8 ed f5 ff ff       	call   402baf <submitr>
  4035c2:	48 83 c4 10          	add    $0x10,%rsp
  4035c6:	eb ac                	jmp    403574 <driver_post+0x23>

00000000004035c8 <check>:
  4035c8:	f3 0f 1e fa          	endbr64
  4035cc:	89 f8                	mov    %edi,%eax
  4035ce:	c1 e8 1c             	shr    $0x1c,%eax
  4035d1:	74 1d                	je     4035f0 <check+0x28>
  4035d3:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035d8:	83 f9 1f             	cmp    $0x1f,%ecx
  4035db:	7f 0d                	jg     4035ea <check+0x22>
  4035dd:	89 f8                	mov    %edi,%eax
  4035df:	d3 e8                	shr    %cl,%eax
  4035e1:	3c 0a                	cmp    $0xa,%al
  4035e3:	74 11                	je     4035f6 <check+0x2e>
  4035e5:	83 c1 08             	add    $0x8,%ecx
  4035e8:	eb ee                	jmp    4035d8 <check+0x10>
  4035ea:	b8 01 00 00 00       	mov    $0x1,%eax
  4035ef:	c3                   	ret
  4035f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f5:	c3                   	ret
  4035f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4035fb:	c3                   	ret

00000000004035fc <gencookie>:
  4035fc:	f3 0f 1e fa          	endbr64
  403600:	53                   	push   %rbx
  403601:	83 c7 01             	add    $0x1,%edi
  403604:	e8 37 da ff ff       	call   401040 <srandom@plt>
  403609:	e8 52 db ff ff       	call   401160 <random@plt>
  40360e:	89 c3                	mov    %eax,%ebx
  403610:	89 c7                	mov    %eax,%edi
  403612:	e8 b1 ff ff ff       	call   4035c8 <check>
  403617:	85 c0                	test   %eax,%eax
  403619:	74 ee                	je     403609 <gencookie+0xd>
  40361b:	89 d8                	mov    %ebx,%eax
  40361d:	5b                   	pop    %rbx
  40361e:	c3                   	ret

Disassembly of section .fini:

0000000000403620 <_fini>:
  403620:	f3 0f 1e fa          	endbr64
  403624:	48 83 ec 08          	sub    $0x8,%rsp
  403628:	48 83 c4 08          	add    $0x8,%rsp
  40362c:	c3                   	ret
