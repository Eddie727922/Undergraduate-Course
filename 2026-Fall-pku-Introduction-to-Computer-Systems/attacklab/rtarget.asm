
rtarget:     file format elf64-x86-64


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
  401258:	48 c7 c7 d7 14 40 00 	mov    $0x4014d7,%rdi
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
  401403:	e8 ed 21 00 00       	call   4035f5 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 e0 21 00 00       	call   4035f5 <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 07 03 00 00       	call   40173c <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 50                	jne    40148b <initialize_target+0xc7>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	83 3d 1d 60 00 00 00 	cmpl   $0x0,0x601d(%rip)        # 407480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 60 00 00 00 	cmpl   $0x0,0x60c4(%rip)        # 407530 <is_checker>
  40146c:	74 35                	je     4014a3 <initialize_target+0xdf>
  40146e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401475:	00 
  401476:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	75 51                	jne    4014d2 <initialize_target+0x10e>
  401481:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401488:	5b                   	pop    %rbx
  401489:	5d                   	pop    %rbp
  40148a:	c3                   	ret
  40148b:	bf 00 00 00 00       	mov    $0x0,%edi
  401490:	e8 bb fc ff ff       	call   401150 <time@plt>
  401495:	89 c7                	mov    %eax,%edi
  401497:	e8 a4 fb ff ff       	call   401040 <srandom@plt>
  40149c:	e8 bf fc ff ff       	call   401160 <random@plt>
  4014a1:	eb 9d                	jmp    401440 <initialize_target+0x7c>
  4014a3:	48 89 e7             	mov    %rsp,%rdi
  4014a6:	e8 7a 1e 00 00       	call   403325 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 ca 11 00 00       	call   4026a1 <__stack_chk_fail>

00000000004014d7 <main>:
  4014d7:	f3 0f 1e fa          	endbr64
  4014db:	41 56                	push   %r14
  4014dd:	41 55                	push   %r13
  4014df:	41 54                	push   %r12
  4014e1:	55                   	push   %rbp
  4014e2:	53                   	push   %rbx
  4014e3:	48 83 ec 60          	sub    $0x60,%rsp
  4014e7:	89 fd                	mov    %edi,%ebp
  4014e9:	48 89 f3             	mov    %rsi,%rbx
  4014ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014f3:	00 00 
  4014f5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014fa:	31 c0                	xor    %eax,%eax
  4014fc:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401503:	74 65 64 
  401506:	48 89 04 24          	mov    %rax,(%rsp)
  40150a:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401511:	43 4e 00 
  401514:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401519:	48 c7 c6 90 25 40 00 	mov    $0x402590,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 36 25 40 00 	mov    $0x402536,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 ea 25 40 00 	mov    $0x4025ea,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 5f 00 00 00 	cmpl   $0x0,0x5fdd(%rip)        # 407530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 4e 30 00 00 	lea    0x304e(%rip),%r12        # 4045aa <_IO_stdin_used+0x5aa>
  40155c:	48 8b 05 3d 5f 00 00 	mov    0x5f3d(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 5f 00 00 	mov    %rax,0x5fae(%rip)        # 407518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 44 26 40 00 	mov    $0x402644,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 12 30 00 00 	lea    0x3012(%rip),%r12        # 4045af <_IO_stdin_used+0x5af>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 65 30 00 00 	lea    0x3065(%rip),%rsi        # 404613 <_IO_stdin_used+0x613>
  4015ae:	48 8b 3d 0b 5f 00 00 	mov    0x5f0b(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 5f 00 00 	mov    %rax,0x5f57(%rip)        # 407518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 5e 00 00 	mov    0x5ef3(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 e5 2f 00 00 	lea    0x2fe5(%rip),%rdx        # 4045b9 <_IO_stdin_used+0x5b9>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 5f 00 00 	mov    0x5f00(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 5e 00 00 	mov    0x5ec0(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401600:	e8 bb fb ff ff       	call   4011c0 <strtoul@plt>
  401605:	41 89 c6             	mov    %eax,%r14d
  401608:	4c 89 e2             	mov    %r12,%rdx
  40160b:	48 89 de             	mov    %rbx,%rsi
  40160e:	89 ef                	mov    %ebp,%edi
  401610:	e8 9b fb ff ff       	call   4011b0 <getopt@plt>
  401615:	3c ff                	cmp    $0xff,%al
  401617:	74 7a                	je     401693 <main+0x1bc>
  401619:	8d 50 9f             	lea    -0x61(%rax),%edx
  40161c:	80 fa 14             	cmp    $0x14,%dl
  40161f:	77 51                	ja     401672 <main+0x19b>
  401621:	0f b6 d2             	movzbl %dl,%edx
  401624:	48 8d 0d 85 31 00 00 	lea    0x3185(%rip),%rcx        # 4047b0 <_IO_stdin_used+0x7b0>
  40162b:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  40162f:	48 01 ca             	add    %rcx,%rdx
  401632:	3e ff e2             	notrack jmp *%rdx
  401635:	ba 0a 00 00 00       	mov    $0xa,%edx
  40163a:	be 00 00 00 00       	mov    $0x0,%esi
  40163f:	48 8b 3d 7a 5e 00 00 	mov    0x5e7a(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 5e 00 00 00 	movl   $0x0,0x5e26(%rip)        # 407480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 5e 00 00 	mov    0x5e55(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 5a 2f 00 00 	lea    0x2f5a(%rip),%rsi        # 4045d6 <_IO_stdin_used+0x5d6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 5e 00 00 00 	cmpl   $0x0,0x5e89(%rip)        # 407530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 5e 00 00 	cmp    %r14d,0x5e78(%rip)        # 407528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 5a 00 00 	mov    0x5a84(%rip),%rsi        # 407140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 8c 0a 00 00       	call   402174 <check_fail>
  4016e8:	8b 15 3e 5e 00 00    	mov    0x5e3e(%rip),%edx        # 40752c <cookie>
  4016ee:	48 8d 35 f4 2e 00 00 	lea    0x2ef4(%rip),%rsi        # 4045e9 <_IO_stdin_used+0x5e9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 5d 00 00 	mov    0x5d78(%rip),%rdi        # 407488 <buf_offset>
  401710:	e8 e6 0f 00 00       	call   4026fb <launch>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  40171f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401726:	00 00 
  401728:	75 0d                	jne    401737 <main+0x260>
  40172a:	48 83 c4 60          	add    $0x60,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	41 5c                	pop    %r12
  401732:	41 5d                	pop    %r13
  401734:	41 5e                	pop    %r14
  401736:	c3                   	ret
  401737:	e8 65 0f 00 00       	call   4026a1 <__stack_chk_fail>

000000000040173c <scramble>:
  40173c:	f3 0f 1e fa          	endbr64
  401740:	48 83 ec 38          	sub    $0x38,%rsp
  401744:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40174b:	00 00 
  40174d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401752:	31 c0                	xor    %eax,%eax
  401754:	eb 10                	jmp    401766 <scramble+0x2a>
  401756:	69 d0 0e d5 00 00    	imul   $0xd50e,%eax,%edx
  40175c:	01 fa                	add    %edi,%edx
  40175e:	89 c1                	mov    %eax,%ecx
  401760:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401763:	83 c0 01             	add    $0x1,%eax
  401766:	83 f8 09             	cmp    $0x9,%eax
  401769:	76 eb                	jbe    401756 <scramble+0x1a>
  40176b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40176f:	69 c0 11 aa 00 00    	imul   $0xaa11,%eax,%eax
  401775:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401779:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40177d:	69 c0 c9 29 00 00    	imul   $0x29c9,%eax,%eax
  401783:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401787:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40178b:	69 c0 f0 ab 00 00    	imul   $0xabf0,%eax,%eax
  401791:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401795:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401799:	69 c0 0c 14 00 00    	imul   $0x140c,%eax,%eax
  40179f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017a3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017a7:	69 c0 72 2b 00 00    	imul   $0x2b72,%eax,%eax
  4017ad:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017b1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017b5:	69 c0 0d 87 00 00    	imul   $0x870d,%eax,%eax
  4017bb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017bf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017c3:	69 c0 01 34 00 00    	imul   $0x3401,%eax,%eax
  4017c9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017cd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017d1:	69 c0 3f b5 00 00    	imul   $0xb53f,%eax,%eax
  4017d7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017db:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017df:	69 c0 59 5b 00 00    	imul   $0x5b59,%eax,%eax
  4017e5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017e9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017ed:	69 c0 ba 87 00 00    	imul   $0x87ba,%eax,%eax
  4017f3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017f7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017fb:	69 c0 0f 7b 00 00    	imul   $0x7b0f,%eax,%eax
  401801:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401805:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401809:	69 c0 85 c5 00 00    	imul   $0xc585,%eax,%eax
  40180f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401813:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401817:	69 c0 d9 5c 00 00    	imul   $0x5cd9,%eax,%eax
  40181d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401821:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401825:	69 c0 5b 0e 00 00    	imul   $0xe5b,%eax,%eax
  40182b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40182f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401833:	69 c0 a6 36 00 00    	imul   $0x36a6,%eax,%eax
  401839:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40183d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401841:	69 c0 00 78 00 00    	imul   $0x7800,%eax,%eax
  401847:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40184b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40184f:	69 c0 7d 8a 00 00    	imul   $0x8a7d,%eax,%eax
  401855:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401859:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40185d:	69 c0 4b 31 00 00    	imul   $0x314b,%eax,%eax
  401863:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401867:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40186b:	69 c0 28 e7 00 00    	imul   $0xe728,%eax,%eax
  401871:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401875:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401879:	69 c0 be f5 00 00    	imul   $0xf5be,%eax,%eax
  40187f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401883:	8b 04 24             	mov    (%rsp),%eax
  401886:	69 c0 77 48 00 00    	imul   $0x4877,%eax,%eax
  40188c:	89 04 24             	mov    %eax,(%rsp)
  40188f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401893:	69 c0 66 30 00 00    	imul   $0x3066,%eax,%eax
  401899:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40189d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018a1:	69 c0 7b 7d 00 00    	imul   $0x7d7b,%eax,%eax
  4018a7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018ab:	8b 04 24             	mov    (%rsp),%eax
  4018ae:	69 c0 90 02 00 00    	imul   $0x290,%eax,%eax
  4018b4:	89 04 24             	mov    %eax,(%rsp)
  4018b7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018bb:	69 c0 bf 8a 00 00    	imul   $0x8abf,%eax,%eax
  4018c1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018c5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018c9:	69 c0 b7 8b 00 00    	imul   $0x8bb7,%eax,%eax
  4018cf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018d3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018d7:	69 c0 ba 97 00 00    	imul   $0x97ba,%eax,%eax
  4018dd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018e1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018e5:	69 c0 65 bb 00 00    	imul   $0xbb65,%eax,%eax
  4018eb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018ef:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018f3:	69 c0 28 0a 00 00    	imul   $0xa28,%eax,%eax
  4018f9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018fd:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401901:	69 c0 85 97 00 00    	imul   $0x9785,%eax,%eax
  401907:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40190b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40190f:	69 c0 87 31 00 00    	imul   $0x3187,%eax,%eax
  401915:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401919:	8b 04 24             	mov    (%rsp),%eax
  40191c:	69 c0 85 21 00 00    	imul   $0x2185,%eax,%eax
  401922:	89 04 24             	mov    %eax,(%rsp)
  401925:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401929:	69 c0 4f b1 00 00    	imul   $0xb14f,%eax,%eax
  40192f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401933:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401937:	69 c0 71 f2 00 00    	imul   $0xf271,%eax,%eax
  40193d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401941:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401945:	69 c0 28 98 00 00    	imul   $0x9828,%eax,%eax
  40194b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40194f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401953:	69 c0 12 ab 00 00    	imul   $0xab12,%eax,%eax
  401959:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40195d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401961:	69 c0 fb 64 00 00    	imul   $0x64fb,%eax,%eax
  401967:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40196b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40196f:	69 c0 17 5d 00 00    	imul   $0x5d17,%eax,%eax
  401975:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401979:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40197d:	69 c0 1d c1 00 00    	imul   $0xc11d,%eax,%eax
  401983:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401987:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40198b:	69 c0 4b bb 00 00    	imul   $0xbb4b,%eax,%eax
  401991:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401995:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401999:	69 c0 f2 e9 00 00    	imul   $0xe9f2,%eax,%eax
  40199f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019a3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019a7:	69 c0 ab 51 00 00    	imul   $0x51ab,%eax,%eax
  4019ad:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019b1:	8b 04 24             	mov    (%rsp),%eax
  4019b4:	69 c0 3f 98 00 00    	imul   $0x983f,%eax,%eax
  4019ba:	89 04 24             	mov    %eax,(%rsp)
  4019bd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019c1:	69 c0 3f 76 00 00    	imul   $0x763f,%eax,%eax
  4019c7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019cb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019cf:	69 c0 d0 d6 00 00    	imul   $0xd6d0,%eax,%eax
  4019d5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019d9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019dd:	69 c0 35 e3 00 00    	imul   $0xe335,%eax,%eax
  4019e3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019e7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019eb:	69 c0 49 1d 00 00    	imul   $0x1d49,%eax,%eax
  4019f1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019f5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4019f9:	69 c0 5b c4 00 00    	imul   $0xc45b,%eax,%eax
  4019ff:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a03:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a07:	69 c0 8a 57 00 00    	imul   $0x578a,%eax,%eax
  401a0d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a11:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a15:	69 c0 10 67 00 00    	imul   $0x6710,%eax,%eax
  401a1b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a1f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a23:	69 c0 fb 9e 00 00    	imul   $0x9efb,%eax,%eax
  401a29:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a2d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a31:	69 c0 52 d0 00 00    	imul   $0xd052,%eax,%eax
  401a37:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a3b:	8b 04 24             	mov    (%rsp),%eax
  401a3e:	69 c0 9a ed 00 00    	imul   $0xed9a,%eax,%eax
  401a44:	89 04 24             	mov    %eax,(%rsp)
  401a47:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a4b:	69 c0 6e e6 00 00    	imul   $0xe66e,%eax,%eax
  401a51:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a55:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a59:	69 c0 11 8d 00 00    	imul   $0x8d11,%eax,%eax
  401a5f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a63:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a67:	69 c0 94 fa 00 00    	imul   $0xfa94,%eax,%eax
  401a6d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a71:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a75:	69 c0 bc e8 00 00    	imul   $0xe8bc,%eax,%eax
  401a7b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a7f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a83:	69 c0 af f8 00 00    	imul   $0xf8af,%eax,%eax
  401a89:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a8d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a91:	69 c0 4f 59 00 00    	imul   $0x594f,%eax,%eax
  401a97:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a9b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a9f:	69 c0 62 23 00 00    	imul   $0x2362,%eax,%eax
  401aa5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401aa9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aad:	69 c0 b2 7c 00 00    	imul   $0x7cb2,%eax,%eax
  401ab3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ab7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401abb:	69 c0 76 38 00 00    	imul   $0x3876,%eax,%eax
  401ac1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ac5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ac9:	69 c0 51 0b 00 00    	imul   $0xb51,%eax,%eax
  401acf:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ad3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ad7:	69 c0 95 68 00 00    	imul   $0x6895,%eax,%eax
  401add:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ae1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ae5:	69 c0 9d b3 00 00    	imul   $0xb39d,%eax,%eax
  401aeb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401aef:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af3:	69 c0 8e 52 00 00    	imul   $0x528e,%eax,%eax
  401af9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401afd:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b01:	69 c0 c8 e1 00 00    	imul   $0xe1c8,%eax,%eax
  401b07:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b0b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b0f:	69 c0 90 56 00 00    	imul   $0x5690,%eax,%eax
  401b15:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b19:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b1d:	69 c0 4b 50 00 00    	imul   $0x504b,%eax,%eax
  401b23:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b27:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b2b:	69 c0 1a 7e 00 00    	imul   $0x7e1a,%eax,%eax
  401b31:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b35:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b39:	69 c0 b7 de 00 00    	imul   $0xdeb7,%eax,%eax
  401b3f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b43:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b47:	69 c0 60 54 00 00    	imul   $0x5460,%eax,%eax
  401b4d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b51:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b55:	69 c0 ee c4 00 00    	imul   $0xc4ee,%eax,%eax
  401b5b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b5f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b63:	69 c0 6e 48 00 00    	imul   $0x486e,%eax,%eax
  401b69:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b6d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b71:	69 c0 fe bb 00 00    	imul   $0xbbfe,%eax,%eax
  401b77:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b7b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b7f:	69 c0 5d 4e 00 00    	imul   $0x4e5d,%eax,%eax
  401b85:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b89:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b8d:	69 c0 67 72 00 00    	imul   $0x7267,%eax,%eax
  401b93:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b97:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b9b:	69 c0 ac d2 00 00    	imul   $0xd2ac,%eax,%eax
  401ba1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ba5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ba9:	69 c0 a5 83 00 00    	imul   $0x83a5,%eax,%eax
  401baf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bb3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401bb7:	69 c0 94 e0 00 00    	imul   $0xe094,%eax,%eax
  401bbd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401bc1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bc5:	69 c0 e7 0a 00 00    	imul   $0xae7,%eax,%eax
  401bcb:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bcf:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bd3:	69 c0 dc 89 00 00    	imul   $0x89dc,%eax,%eax
  401bd9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bdd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401be1:	69 c0 03 56 00 00    	imul   $0x5603,%eax,%eax
  401be7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401beb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bef:	69 c0 11 bc 00 00    	imul   $0xbc11,%eax,%eax
  401bf5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bf9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bfd:	69 c0 6a 1d 00 00    	imul   $0x1d6a,%eax,%eax
  401c03:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c07:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c0b:	69 c0 ab 83 00 00    	imul   $0x83ab,%eax,%eax
  401c11:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c15:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c19:	69 c0 db b2 00 00    	imul   $0xb2db,%eax,%eax
  401c1f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c23:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c27:	69 c0 95 c3 00 00    	imul   $0xc395,%eax,%eax
  401c2d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c31:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c35:	69 c0 1a 25 00 00    	imul   $0x251a,%eax,%eax
  401c3b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c44:	ba 00 00 00 00       	mov    $0x0,%edx
  401c49:	eb 0a                	jmp    401c55 <scramble+0x519>
  401c4b:	89 c1                	mov    %eax,%ecx
  401c4d:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c50:	01 ca                	add    %ecx,%edx
  401c52:	83 c0 01             	add    $0x1,%eax
  401c55:	83 f8 09             	cmp    $0x9,%eax
  401c58:	76 f1                	jbe    401c4b <scramble+0x50f>
  401c5a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c5f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c66:	00 00 
  401c68:	75 07                	jne    401c71 <scramble+0x535>
  401c6a:	89 d0                	mov    %edx,%eax
  401c6c:	48 83 c4 38          	add    $0x38,%rsp
  401c70:	c3                   	ret
  401c71:	e8 2b 0a 00 00       	call   4026a1 <__stack_chk_fail>

0000000000401c76 <getbuf>:
  401c76:	f3 0f 1e fa          	endbr64
  401c7a:	48 83 ec 38          	sub    $0x38,%rsp
  401c7e:	48 89 e7             	mov    %rsp,%rdi
  401c81:	e8 2c 05 00 00       	call   4021b2 <Gets>
  401c86:	b8 01 00 00 00       	mov    $0x1,%eax
  401c8b:	48 83 c4 38          	add    $0x38,%rsp
  401c8f:	c3                   	ret

0000000000401c90 <touch1>:
  401c90:	f3 0f 1e fa          	endbr64
  401c94:	50                   	push   %rax
  401c95:	58                   	pop    %rax
  401c96:	48 83 ec 08          	sub    $0x8,%rsp
  401c9a:	c7 05 80 58 00 00 01 	movl   $0x1,0x5880(%rip)        # 407524 <vlevel>
  401ca1:	00 00 00 
  401ca4:	48 8d 3d 6a 29 00 00 	lea    0x296a(%rip),%rdi        # 404615 <_IO_stdin_used+0x615>
  401cab:	e8 d0 f3 ff ff       	call   401080 <puts@plt>
  401cb0:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb5:	e8 75 07 00 00       	call   40242f <validate>
  401cba:	bf 00 00 00 00       	mov    $0x0,%edi
  401cbf:	e8 1c f5 ff ff       	call   4011e0 <exit@plt>

0000000000401cc4 <touch2>:
  401cc4:	f3 0f 1e fa          	endbr64
  401cc8:	50                   	push   %rax
  401cc9:	58                   	pop    %rax
  401cca:	48 83 ec 08          	sub    $0x8,%rsp
  401cce:	89 fa                	mov    %edi,%edx
  401cd0:	c7 05 4a 58 00 00 02 	movl   $0x2,0x584a(%rip)        # 407524 <vlevel>
  401cd7:	00 00 00 
  401cda:	39 3d 4c 58 00 00    	cmp    %edi,0x584c(%rip)        # 40752c <cookie>
  401ce0:	74 2a                	je     401d0c <touch2+0x48>
  401ce2:	48 8d 35 bf 24 00 00 	lea    0x24bf(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401ce9:	bf 02 00 00 00       	mov    $0x2,%edi
  401cee:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf3:	e8 98 f4 ff ff       	call   401190 <__printf_chk@plt>
  401cf8:	bf 02 00 00 00       	mov    $0x2,%edi
  401cfd:	e8 08 08 00 00       	call   40250a <fail>
  401d02:	bf 00 00 00 00       	mov    $0x0,%edi
  401d07:	e8 d4 f4 ff ff       	call   4011e0 <exit@plt>
  401d0c:	48 8d 35 6d 24 00 00 	lea    0x246d(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d13:	bf 02 00 00 00       	mov    $0x2,%edi
  401d18:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1d:	e8 6e f4 ff ff       	call   401190 <__printf_chk@plt>
  401d22:	bf 02 00 00 00       	mov    $0x2,%edi
  401d27:	e8 03 07 00 00       	call   40242f <validate>
  401d2c:	eb d4                	jmp    401d02 <touch2+0x3e>

0000000000401d2e <hexmatch>:
  401d2e:	f3 0f 1e fa          	endbr64
  401d32:	41 54                	push   %r12
  401d34:	55                   	push   %rbp
  401d35:	53                   	push   %rbx
  401d36:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d3a:	89 fd                	mov    %edi,%ebp
  401d3c:	48 89 f3             	mov    %rsi,%rbx
  401d3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d46:	00 00 
  401d48:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d4d:	31 c0                	xor    %eax,%eax
  401d4f:	e8 0c f4 ff ff       	call   401160 <random@plt>
  401d54:	48 89 c6             	mov    %rax,%rsi
  401d57:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d5e:	0a d7 a3 
  401d61:	48 f7 ea             	imul   %rdx
  401d64:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401d68:	48 c1 f9 06          	sar    $0x6,%rcx
  401d6c:	48 89 f0             	mov    %rsi,%rax
  401d6f:	48 c1 f8 3f          	sar    $0x3f,%rax
  401d73:	48 29 c1             	sub    %rax,%rcx
  401d76:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401d7a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401d7e:	48 c1 e0 02          	shl    $0x2,%rax
  401d82:	48 29 c6             	sub    %rax,%rsi
  401d85:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401d89:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401d8e:	48 39 d6             	cmp    %rdx,%rsi
  401d91:	48 0f 43 d6          	cmovae %rsi,%rdx
  401d95:	48 29 f2             	sub    %rsi,%rdx
  401d98:	41 89 e8             	mov    %ebp,%r8d
  401d9b:	48 8d 0d 90 28 00 00 	lea    0x2890(%rip),%rcx        # 404632 <_IO_stdin_used+0x632>
  401da2:	be 02 00 00 00       	mov    $0x2,%esi
  401da7:	4c 89 e7             	mov    %r12,%rdi
  401daa:	b8 00 00 00 00       	mov    $0x0,%eax
  401daf:	e8 6c f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401db4:	ba 09 00 00 00       	mov    $0x9,%edx
  401db9:	4c 89 e6             	mov    %r12,%rsi
  401dbc:	48 89 df             	mov    %rbx,%rdi
  401dbf:	e8 9c f2 ff ff       	call   401060 <strncmp@plt>
  401dc4:	85 c0                	test   %eax,%eax
  401dc6:	0f 94 c0             	sete   %al
  401dc9:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401dce:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401dd5:	00 00 
  401dd7:	75 0c                	jne    401de5 <hexmatch+0xb7>
  401dd9:	0f b6 c0             	movzbl %al,%eax
  401ddc:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401de0:	5b                   	pop    %rbx
  401de1:	5d                   	pop    %rbp
  401de2:	41 5c                	pop    %r12
  401de4:	c3                   	ret
  401de5:	e8 b7 08 00 00       	call   4026a1 <__stack_chk_fail>

0000000000401dea <touch3>:
  401dea:	f3 0f 1e fa          	endbr64
  401dee:	53                   	push   %rbx
  401def:	48 89 fb             	mov    %rdi,%rbx
  401df2:	c7 05 28 57 00 00 03 	movl   $0x3,0x5728(%rip)        # 407524 <vlevel>
  401df9:	00 00 00 
  401dfc:	48 89 fe             	mov    %rdi,%rsi
  401dff:	8b 3d 27 57 00 00    	mov    0x5727(%rip),%edi        # 40752c <cookie>
  401e05:	e8 24 ff ff ff       	call   401d2e <hexmatch>
  401e0a:	85 c0                	test   %eax,%eax
  401e0c:	74 2d                	je     401e3b <touch3+0x51>
  401e0e:	48 89 da             	mov    %rbx,%rdx
  401e11:	48 8d 35 b8 23 00 00 	lea    0x23b8(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e18:	bf 02 00 00 00       	mov    $0x2,%edi
  401e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e22:	e8 69 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e27:	bf 03 00 00 00       	mov    $0x3,%edi
  401e2c:	e8 fe 05 00 00       	call   40242f <validate>
  401e31:	bf 00 00 00 00       	mov    $0x0,%edi
  401e36:	e8 a5 f3 ff ff       	call   4011e0 <exit@plt>
  401e3b:	48 89 da             	mov    %rbx,%rdx
  401e3e:	48 8d 35 b3 23 00 00 	lea    0x23b3(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401e45:	bf 02 00 00 00       	mov    $0x2,%edi
  401e4a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4f:	e8 3c f3 ff ff       	call   401190 <__printf_chk@plt>
  401e54:	bf 03 00 00 00       	mov    $0x3,%edi
  401e59:	e8 ac 06 00 00       	call   40250a <fail>
  401e5e:	eb d1                	jmp    401e31 <touch3+0x47>

0000000000401e60 <test>:
  401e60:	f3 0f 1e fa          	endbr64
  401e64:	48 83 ec 08          	sub    $0x8,%rsp
  401e68:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6d:	e8 04 fe ff ff       	call   401c76 <getbuf>
  401e72:	89 c2                	mov    %eax,%edx
  401e74:	48 8d 35 a5 23 00 00 	lea    0x23a5(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401e7b:	bf 02 00 00 00       	mov    $0x2,%edi
  401e80:	b8 00 00 00 00       	mov    $0x0,%eax
  401e85:	e8 06 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e8a:	48 83 c4 08          	add    $0x8,%rsp
  401e8e:	c3                   	ret

0000000000401e8f <test2>:
  401e8f:	f3 0f 1e fa          	endbr64
  401e93:	48 83 ec 08          	sub    $0x8,%rsp
  401e97:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9c:	e8 1d 00 00 00       	call   401ebe <getbuf_withcanary>
  401ea1:	89 c2                	mov    %eax,%edx
  401ea3:	48 8d 35 9e 23 00 00 	lea    0x239e(%rip),%rsi        # 404248 <_IO_stdin_used+0x248>
  401eaa:	bf 02 00 00 00       	mov    $0x2,%edi
  401eaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb4:	e8 d7 f2 ff ff       	call   401190 <__printf_chk@plt>
  401eb9:	48 83 c4 08          	add    $0x8,%rsp
  401ebd:	c3                   	ret

0000000000401ebe <getbuf_withcanary>:
  401ebe:	55                   	push   %rbp
  401ebf:	48 89 e5             	mov    %rsp,%rbp
  401ec2:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401ec9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ed0:	00 00 
  401ed2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ed6:	31 c0                	xor    %eax,%eax
  401ed8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401edf:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401ee6:	48 89 c7             	mov    %rax,%rdi
  401ee9:	e8 c4 02 00 00       	call   4021b2 <Gets>
  401eee:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ef1:	48 98                	cltq
  401ef3:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401efa:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401efe:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f05:	ba 80 00 00 00       	mov    $0x80,%edx
  401f0a:	48 89 c6             	mov    %rax,%rsi
  401f0d:	48 89 cf             	mov    %rcx,%rdi
  401f10:	e8 2b f2 ff ff       	call   401140 <memcpy@plt>
  401f15:	b8 01 00 00 00       	mov    $0x1,%eax
  401f1a:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f1e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f25:	00 00 
  401f27:	74 05                	je     401f2e <getbuf_withcanary+0x70>
  401f29:	e8 73 07 00 00       	call   4026a1 <__stack_chk_fail>
  401f2e:	c9                   	leave
  401f2f:	c3                   	ret

0000000000401f30 <start_farm>:
  401f30:	f3 0f 1e fa          	endbr64
  401f34:	b8 01 00 00 00       	mov    $0x1,%eax
  401f39:	c3                   	ret

0000000000401f3a <getval_447>:
  401f3a:	f3 0f 1e fa          	endbr64
  401f3e:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401f43:	c3                   	ret

0000000000401f44 <addval_180>:
  401f44:	f3 0f 1e fa          	endbr64
  401f48:	8d 87 9d 9e 58 90    	lea    -0x6fa76163(%rdi),%eax
  401f4e:	c3                   	ret

0000000000401f4f <setval_308>:
  401f4f:	f3 0f 1e fa          	endbr64
  401f53:	c7 07 50 90 90 90    	movl   $0x90909050,(%rdi)
  401f59:	c3                   	ret

0000000000401f5a <setval_320>:
  401f5a:	f3 0f 1e fa          	endbr64
  401f5e:	c7 07 48 88 c7 c3    	movl   $0xc3c78848,(%rdi)
  401f64:	c3                   	ret

0000000000401f65 <getval_332>:
  401f65:	f3 0f 1e fa          	endbr64
  401f69:	b8 ec 58 90 90       	mov    $0x909058ec,%eax
  401f6e:	c3                   	ret

0000000000401f6f <setval_331>:
  401f6f:	f3 0f 1e fa          	endbr64
  401f73:	c7 07 08 78 90 90    	movl   $0x90907808,(%rdi)
  401f79:	c3                   	ret

0000000000401f7a <addval_196>:
  401f7a:	f3 0f 1e fa          	endbr64
  401f7e:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  401f84:	c3                   	ret

0000000000401f85 <addval_264>:
  401f85:	f3 0f 1e fa          	endbr64
  401f89:	8d 87 a9 68 89 c7    	lea    -0x38769757(%rdi),%eax
  401f8f:	c3                   	ret

0000000000401f90 <mid_farm>:
  401f90:	f3 0f 1e fa          	endbr64
  401f94:	b8 01 00 00 00       	mov    $0x1,%eax
  401f99:	c3                   	ret

0000000000401f9a <add_xy>:
  401f9a:	f3 0f 1e fa          	endbr64
  401f9e:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401fa2:	c3                   	ret

0000000000401fa3 <addval_456>:
  401fa3:	f3 0f 1e fa          	endbr64
  401fa7:	8d 87 89 c1 38 c0    	lea    -0x3fc73e77(%rdi),%eax
  401fad:	c3                   	ret

0000000000401fae <setval_405>:
  401fae:	f3 0f 1e fa          	endbr64
  401fb2:	c7 07 d8 48 89 e0    	movl   $0xe08948d8,(%rdi)
  401fb8:	c3                   	ret

0000000000401fb9 <addval_426>:
  401fb9:	f3 0f 1e fa          	endbr64
  401fbd:	8d 87 89 d6 20 db    	lea    -0x24df2977(%rdi),%eax
  401fc3:	c3                   	ret

0000000000401fc4 <getval_268>:
  401fc4:	f3 0f 1e fa          	endbr64
  401fc8:	b8 89 ca 84 db       	mov    $0xdb84ca89,%eax
  401fcd:	c3                   	ret

0000000000401fce <getval_495>:
  401fce:	f3 0f 1e fa          	endbr64
  401fd2:	b8 89 c1 00 c9       	mov    $0xc900c189,%eax
  401fd7:	c3                   	ret

0000000000401fd8 <addval_162>:
  401fd8:	f3 0f 1e fa          	endbr64
  401fdc:	8d 87 89 ca 38 c0    	lea    -0x3fc73577(%rdi),%eax
  401fe2:	c3                   	ret

0000000000401fe3 <addval_315>:
  401fe3:	f3 0f 1e fa          	endbr64
  401fe7:	8d 87 89 ca 94 d2    	lea    -0x2d6b3577(%rdi),%eax
  401fed:	c3                   	ret

0000000000401fee <setval_304>:
  401fee:	f3 0f 1e fa          	endbr64
  401ff2:	c7 07 9a 81 d6 90    	movl   $0x90d6819a,(%rdi)
  401ff8:	c3                   	ret

0000000000401ff9 <setval_411>:
  401ff9:	f3 0f 1e fa          	endbr64
  401ffd:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  402003:	c3                   	ret

0000000000402004 <addval_167>:
  402004:	f3 0f 1e fa          	endbr64
  402008:	8d 87 89 d6 90 c2    	lea    -0x3d6f2977(%rdi),%eax
  40200e:	c3                   	ret

000000000040200f <getval_333>:
  40200f:	f3 0f 1e fa          	endbr64
  402013:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  402018:	c3                   	ret

0000000000402019 <addval_229>:
  402019:	f3 0f 1e fa          	endbr64
  40201d:	8d 87 89 d6 28 db    	lea    -0x24d72977(%rdi),%eax
  402023:	c3                   	ret

0000000000402024 <getval_140>:
  402024:	f3 0f 1e fa          	endbr64
  402028:	b8 88 d6 38 db       	mov    $0xdb38d688,%eax
  40202d:	c3                   	ret

000000000040202e <setval_475>:
  40202e:	f3 0f 1e fa          	endbr64
  402032:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  402038:	c3                   	ret

0000000000402039 <setval_100>:
  402039:	f3 0f 1e fa          	endbr64
  40203d:	c7 07 c9 c1 84 db    	movl   $0xdb84c1c9,(%rdi)
  402043:	c3                   	ret

0000000000402044 <setval_446>:
  402044:	f3 0f 1e fa          	endbr64
  402048:	c7 07 8d ca 84 c9    	movl   $0xc984ca8d,(%rdi)
  40204e:	c3                   	ret

000000000040204f <addval_141>:
  40204f:	f3 0f 1e fa          	endbr64
  402053:	8d 87 88 ca c3 0c    	lea    0xcc3ca88(%rdi),%eax
  402059:	c3                   	ret

000000000040205a <getval_253>:
  40205a:	f3 0f 1e fa          	endbr64
  40205e:	b8 48 a9 e0 90       	mov    $0x90e0a948,%eax
  402063:	c3                   	ret

0000000000402064 <addval_497>:
  402064:	f3 0f 1e fa          	endbr64
  402068:	8d 87 09 c1 84 d2    	lea    -0x2d7b3ef7(%rdi),%eax
  40206e:	c3                   	ret

000000000040206f <getval_245>:
  40206f:	f3 0f 1e fa          	endbr64
  402073:	b8 89 c1 18 c9       	mov    $0xc918c189,%eax
  402078:	c3                   	ret

0000000000402079 <setval_416>:
  402079:	f3 0f 1e fa          	endbr64
  40207d:	c7 07 48 a9 e0 90    	movl   $0x90e0a948,(%rdi)
  402083:	c3                   	ret

0000000000402084 <addval_280>:
  402084:	f3 0f 1e fa          	endbr64
  402088:	8d 87 89 d6 84 db    	lea    -0x247b2977(%rdi),%eax
  40208e:	c3                   	ret

000000000040208f <addval_278>:
  40208f:	f3 0f 1e fa          	endbr64
  402093:	8d 87 26 89 d6 92    	lea    -0x6d2976da(%rdi),%eax
  402099:	c3                   	ret

000000000040209a <addval_372>:
  40209a:	f3 0f 1e fa          	endbr64
  40209e:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  4020a4:	c3                   	ret

00000000004020a5 <addval_382>:
  4020a5:	f3 0f 1e fa          	endbr64
  4020a9:	8d 87 89 ca 90 c1    	lea    -0x3e6f3577(%rdi),%eax
  4020af:	c3                   	ret

00000000004020b0 <addval_130>:
  4020b0:	f3 0f 1e fa          	endbr64
  4020b4:	8d 87 81 d6 c3 85    	lea    -0x7a3c297f(%rdi),%eax
  4020ba:	c3                   	ret

00000000004020bb <getval_218>:
  4020bb:	f3 0f 1e fa          	endbr64
  4020bf:	b8 89 c1 28 db       	mov    $0xdb28c189,%eax
  4020c4:	c3                   	ret

00000000004020c5 <addval_177>:
  4020c5:	f3 0f 1e fa          	endbr64
  4020c9:	8d 87 89 c1 38 d2    	lea    -0x2dc73e77(%rdi),%eax
  4020cf:	c3                   	ret

00000000004020d0 <getval_493>:
  4020d0:	f3 0f 1e fa          	endbr64
  4020d4:	b8 0a 4f 81 ca       	mov    $0xca814f0a,%eax
  4020d9:	c3                   	ret

00000000004020da <addval_255>:
  4020da:	f3 0f 1e fa          	endbr64
  4020de:	8d 87 89 ca 28 d2    	lea    -0x2dd73577(%rdi),%eax
  4020e4:	c3                   	ret

00000000004020e5 <setval_465>:
  4020e5:	f3 0f 1e fa          	endbr64
  4020e9:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  4020ef:	c3                   	ret

00000000004020f0 <setval_393>:
  4020f0:	f3 0f 1e fa          	endbr64
  4020f4:	c7 07 8b c1 90 90    	movl   $0x9090c18b,(%rdi)
  4020fa:	c3                   	ret

00000000004020fb <end_farm>:
  4020fb:	f3 0f 1e fa          	endbr64
  4020ff:	b8 01 00 00 00       	mov    $0x1,%eax
  402104:	c3                   	ret

0000000000402105 <save_char>:
  402105:	8b 05 39 60 00 00    	mov    0x6039(%rip),%eax        # 408144 <gets_cnt>
  40210b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402110:	7f 4a                	jg     40215c <save_char+0x57>
  402112:	89 f9                	mov    %edi,%ecx
  402114:	c0 e9 04             	shr    $0x4,%cl
  402117:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40211a:	4c 8d 05 ef 26 00 00 	lea    0x26ef(%rip),%r8        # 404810 <trans_char>
  402121:	83 e1 0f             	and    $0xf,%ecx
  402124:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402129:	48 8d 0d 10 54 00 00 	lea    0x5410(%rip),%rcx        # 407540 <gets_buf>
  402130:	48 63 f2             	movslq %edx,%rsi
  402133:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402137:	8d 72 01             	lea    0x1(%rdx),%esi
  40213a:	83 e7 0f             	and    $0xf,%edi
  40213d:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402142:	48 63 f6             	movslq %esi,%rsi
  402145:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402149:	83 c2 02             	add    $0x2,%edx
  40214c:	48 63 d2             	movslq %edx,%rdx
  40214f:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402153:	83 c0 01             	add    $0x1,%eax
  402156:	89 05 e8 5f 00 00    	mov    %eax,0x5fe8(%rip)        # 408144 <gets_cnt>
  40215c:	c3                   	ret

000000000040215d <save_term>:
  40215d:	8b 05 e1 5f 00 00    	mov    0x5fe1(%rip),%eax        # 408144 <gets_cnt>
  402163:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402166:	48 98                	cltq
  402168:	48 8d 15 d1 53 00 00 	lea    0x53d1(%rip),%rdx        # 407540 <gets_buf>
  40216f:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402173:	c3                   	ret

0000000000402174 <check_fail>:
  402174:	f3 0f 1e fa          	endbr64
  402178:	50                   	push   %rax
  402179:	58                   	pop    %rax
  40217a:	48 83 ec 08          	sub    $0x8,%rsp
  40217e:	0f be 15 c3 5f 00 00 	movsbl 0x5fc3(%rip),%edx        # 408148 <target_prefix>
  402185:	4c 8d 05 b4 53 00 00 	lea    0x53b4(%rip),%r8        # 407540 <gets_buf>
  40218c:	8b 0d 8e 53 00 00    	mov    0x538e(%rip),%ecx        # 407520 <check_level>
  402192:	48 8d 35 9e 24 00 00 	lea    0x249e(%rip),%rsi        # 404637 <_IO_stdin_used+0x637>
  402199:	bf 02 00 00 00       	mov    $0x2,%edi
  40219e:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a3:	e8 e8 ef ff ff       	call   401190 <__printf_chk@plt>
  4021a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ad:	e8 2e f0 ff ff       	call   4011e0 <exit@plt>

00000000004021b2 <Gets>:
  4021b2:	f3 0f 1e fa          	endbr64
  4021b6:	41 54                	push   %r12
  4021b8:	55                   	push   %rbp
  4021b9:	53                   	push   %rbx
  4021ba:	49 89 fc             	mov    %rdi,%r12
  4021bd:	c7 05 7d 5f 00 00 00 	movl   $0x0,0x5f7d(%rip)        # 408144 <gets_cnt>
  4021c4:	00 00 00 
  4021c7:	48 89 fb             	mov    %rdi,%rbx
  4021ca:	eb 11                	jmp    4021dd <Gets+0x2b>
  4021cc:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021d0:	88 03                	mov    %al,(%rbx)
  4021d2:	0f b6 f8             	movzbl %al,%edi
  4021d5:	e8 2b ff ff ff       	call   402105 <save_char>
  4021da:	48 89 eb             	mov    %rbp,%rbx
  4021dd:	48 8b 3d 34 53 00 00 	mov    0x5334(%rip),%rdi        # 407518 <infile>
  4021e4:	e8 27 f0 ff ff       	call   401210 <getc@plt>
  4021e9:	83 f8 ff             	cmp    $0xffffffff,%eax
  4021ec:	74 05                	je     4021f3 <Gets+0x41>
  4021ee:	83 f8 0a             	cmp    $0xa,%eax
  4021f1:	75 d9                	jne    4021cc <Gets+0x1a>
  4021f3:	c6 03 00             	movb   $0x0,(%rbx)
  4021f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fb:	e8 5d ff ff ff       	call   40215d <save_term>
  402200:	4c 89 e0             	mov    %r12,%rax
  402203:	5b                   	pop    %rbx
  402204:	5d                   	pop    %rbp
  402205:	41 5c                	pop    %r12
  402207:	c3                   	ret

0000000000402208 <notify_server>:
  402208:	f3 0f 1e fa          	endbr64
  40220c:	55                   	push   %rbp
  40220d:	53                   	push   %rbx
  40220e:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402215:	ff 
  402216:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40221d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402222:	4c 39 dc             	cmp    %r11,%rsp
  402225:	75 ef                	jne    402216 <notify_server+0xe>
  402227:	48 83 ec 18          	sub    $0x18,%rsp
  40222b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402232:	00 00 
  402234:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40223b:	00 
  40223c:	31 c0                	xor    %eax,%eax
  40223e:	83 3d eb 52 00 00 00 	cmpl   $0x0,0x52eb(%rip)        # 407530 <is_checker>
  402245:	0f 85 c2 01 00 00    	jne    40240d <notify_server+0x205>
  40224b:	89 fb                	mov    %edi,%ebx
  40224d:	81 3d ed 5e 00 00 9c 	cmpl   $0x1f9c,0x5eed(%rip)        # 408144 <gets_cnt>
  402254:	1f 00 00 
  402257:	0f 8f bd 00 00 00    	jg     40231a <notify_server+0x112>
  40225d:	0f be 05 e4 5e 00 00 	movsbl 0x5ee4(%rip),%eax        # 408148 <target_prefix>
  402264:	83 3d 15 52 00 00 00 	cmpl   $0x0,0x5215(%rip)        # 407480 <notify>
  40226b:	0f 84 c4 00 00 00    	je     402335 <notify_server+0x12d>
  402271:	8b 15 b1 52 00 00    	mov    0x52b1(%rip),%edx        # 407528 <authkey>
  402277:	85 db                	test   %ebx,%ebx
  402279:	0f 84 c0 00 00 00    	je     40233f <notify_server+0x137>
  40227f:	48 8d 2d c7 23 00 00 	lea    0x23c7(%rip),%rbp        # 40464d <_IO_stdin_used+0x64d>
  402286:	48 89 e7             	mov    %rsp,%rdi
  402289:	48 8d 0d b0 52 00 00 	lea    0x52b0(%rip),%rcx        # 407540 <gets_buf>
  402290:	51                   	push   %rcx
  402291:	56                   	push   %rsi
  402292:	50                   	push   %rax
  402293:	52                   	push   %rdx
  402294:	49 89 e9             	mov    %rbp,%r9
  402297:	44 8b 05 92 4e 00 00 	mov    0x4e92(%rip),%r8d        # 407130 <target_id>
  40229e:	48 8d 0d b2 23 00 00 	lea    0x23b2(%rip),%rcx        # 404657 <_IO_stdin_used+0x657>
  4022a5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022aa:	be 02 00 00 00       	mov    $0x2,%esi
  4022af:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b4:	e8 67 ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022b9:	48 83 c4 20          	add    $0x20,%rsp
  4022bd:	83 3d bc 51 00 00 00 	cmpl   $0x0,0x51bc(%rip)        # 407480 <notify>
  4022c4:	0f 84 ba 00 00 00    	je     402384 <notify_server+0x17c>
  4022ca:	48 89 e1             	mov    %rsp,%rcx
  4022cd:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4022d4:	00 
  4022d5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022db:	48 8b 15 66 4e 00 00 	mov    0x4e66(%rip),%rdx        # 407148 <lab>
  4022e2:	48 8b 35 67 4e 00 00 	mov    0x4e67(%rip),%rsi        # 407150 <course>
  4022e9:	48 8b 3d 50 4e 00 00 	mov    0x4e50(%rip),%rdi        # 407140 <user_id>
  4022f0:	e8 55 12 00 00       	call   40354a <driver_post>
  4022f5:	85 c0                	test   %eax,%eax
  4022f7:	78 52                	js     40234b <notify_server+0x143>
  4022f9:	85 db                	test   %ebx,%ebx
  4022fb:	74 76                	je     402373 <notify_server+0x16b>
  4022fd:	48 8d 3d a4 1f 00 00 	lea    0x1fa4(%rip),%rdi        # 4042a8 <_IO_stdin_used+0x2a8>
  402304:	e8 77 ed ff ff       	call   401080 <puts@plt>
  402309:	48 8d 3d 6f 23 00 00 	lea    0x236f(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  402310:	e8 6b ed ff ff       	call   401080 <puts@plt>
  402315:	e9 f3 00 00 00       	jmp    40240d <notify_server+0x205>
  40231a:	48 8d 35 57 1f 00 00 	lea    0x1f57(%rip),%rsi        # 404278 <_IO_stdin_used+0x278>
  402321:	bf 02 00 00 00       	mov    $0x2,%edi
  402326:	e8 65 ee ff ff       	call   401190 <__printf_chk@plt>
  40232b:	bf 01 00 00 00       	mov    $0x1,%edi
  402330:	e8 ab ee ff ff       	call   4011e0 <exit@plt>
  402335:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  40233a:	e9 38 ff ff ff       	jmp    402277 <notify_server+0x6f>
  40233f:	48 8d 2d 0c 23 00 00 	lea    0x230c(%rip),%rbp        # 404652 <_IO_stdin_used+0x652>
  402346:	e9 3b ff ff ff       	jmp    402286 <notify_server+0x7e>
  40234b:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402352:	00 
  402353:	48 8d 35 19 23 00 00 	lea    0x2319(%rip),%rsi        # 404673 <_IO_stdin_used+0x673>
  40235a:	bf 02 00 00 00       	mov    $0x2,%edi
  40235f:	b8 00 00 00 00       	mov    $0x0,%eax
  402364:	e8 27 ee ff ff       	call   401190 <__printf_chk@plt>
  402369:	bf 01 00 00 00       	mov    $0x1,%edi
  40236e:	e8 6d ee ff ff       	call   4011e0 <exit@plt>
  402373:	48 8d 3d 0f 23 00 00 	lea    0x230f(%rip),%rdi        # 404689 <_IO_stdin_used+0x689>
  40237a:	e8 01 ed ff ff       	call   401080 <puts@plt>
  40237f:	e9 89 00 00 00       	jmp    40240d <notify_server+0x205>
  402384:	48 89 ea             	mov    %rbp,%rdx
  402387:	48 8d 35 52 1f 00 00 	lea    0x1f52(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  40238e:	bf 02 00 00 00       	mov    $0x2,%edi
  402393:	b8 00 00 00 00       	mov    $0x0,%eax
  402398:	e8 f3 ed ff ff       	call   401190 <__printf_chk@plt>
  40239d:	48 8b 15 9c 4d 00 00 	mov    0x4d9c(%rip),%rdx        # 407140 <user_id>
  4023a4:	48 8d 35 e5 22 00 00 	lea    0x22e5(%rip),%rsi        # 404690 <_IO_stdin_used+0x690>
  4023ab:	bf 02 00 00 00       	mov    $0x2,%edi
  4023b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b5:	e8 d6 ed ff ff       	call   401190 <__printf_chk@plt>
  4023ba:	48 8b 15 8f 4d 00 00 	mov    0x4d8f(%rip),%rdx        # 407150 <course>
  4023c1:	48 8d 35 d5 22 00 00 	lea    0x22d5(%rip),%rsi        # 40469d <_IO_stdin_used+0x69d>
  4023c8:	bf 02 00 00 00       	mov    $0x2,%edi
  4023cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d2:	e8 b9 ed ff ff       	call   401190 <__printf_chk@plt>
  4023d7:	48 8b 15 6a 4d 00 00 	mov    0x4d6a(%rip),%rdx        # 407148 <lab>
  4023de:	48 8d 35 c4 22 00 00 	lea    0x22c4(%rip),%rsi        # 4046a9 <_IO_stdin_used+0x6a9>
  4023e5:	bf 02 00 00 00       	mov    $0x2,%edi
  4023ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ef:	e8 9c ed ff ff       	call   401190 <__printf_chk@plt>
  4023f4:	48 89 e2             	mov    %rsp,%rdx
  4023f7:	48 8d 35 b4 22 00 00 	lea    0x22b4(%rip),%rsi        # 4046b2 <_IO_stdin_used+0x6b2>
  4023fe:	bf 02 00 00 00       	mov    $0x2,%edi
  402403:	b8 00 00 00 00       	mov    $0x0,%eax
  402408:	e8 83 ed ff ff       	call   401190 <__printf_chk@plt>
  40240d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402414:	00 
  402415:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40241c:	00 00 
  40241e:	75 0a                	jne    40242a <notify_server+0x222>
  402420:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402427:	5b                   	pop    %rbx
  402428:	5d                   	pop    %rbp
  402429:	c3                   	ret
  40242a:	e8 72 02 00 00       	call   4026a1 <__stack_chk_fail>

000000000040242f <validate>:
  40242f:	f3 0f 1e fa          	endbr64
  402433:	53                   	push   %rbx
  402434:	89 fb                	mov    %edi,%ebx
  402436:	83 3d f3 50 00 00 00 	cmpl   $0x0,0x50f3(%rip)        # 407530 <is_checker>
  40243d:	74 79                	je     4024b8 <validate+0x89>
  40243f:	39 3d df 50 00 00    	cmp    %edi,0x50df(%rip)        # 407524 <vlevel>
  402445:	75 39                	jne    402480 <validate+0x51>
  402447:	8b 15 d3 50 00 00    	mov    0x50d3(%rip),%edx        # 407520 <check_level>
  40244d:	39 fa                	cmp    %edi,%edx
  40244f:	75 45                	jne    402496 <validate+0x67>
  402451:	0f be 0d f0 5c 00 00 	movsbl 0x5cf0(%rip),%ecx        # 408148 <target_prefix>
  402458:	4c 8d 0d e1 50 00 00 	lea    0x50e1(%rip),%r9        # 407540 <gets_buf>
  40245f:	41 89 f8             	mov    %edi,%r8d
  402462:	8b 15 c0 50 00 00    	mov    0x50c0(%rip),%edx        # 407528 <authkey>
  402468:	48 8d 35 c1 1e 00 00 	lea    0x1ec1(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  40246f:	bf 02 00 00 00       	mov    $0x2,%edi
  402474:	b8 00 00 00 00       	mov    $0x0,%eax
  402479:	e8 12 ed ff ff       	call   401190 <__printf_chk@plt>
  40247e:	5b                   	pop    %rbx
  40247f:	c3                   	ret
  402480:	48 8d 3d 37 22 00 00 	lea    0x2237(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  402487:	e8 f4 eb ff ff       	call   401080 <puts@plt>
  40248c:	b8 00 00 00 00       	mov    $0x0,%eax
  402491:	e8 de fc ff ff       	call   402174 <check_fail>
  402496:	89 f9                	mov    %edi,%ecx
  402498:	48 8d 35 69 1e 00 00 	lea    0x1e69(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  40249f:	bf 02 00 00 00       	mov    $0x2,%edi
  4024a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a9:	e8 e2 ec ff ff       	call   401190 <__printf_chk@plt>
  4024ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b3:	e8 bc fc ff ff       	call   402174 <check_fail>
  4024b8:	39 3d 66 50 00 00    	cmp    %edi,0x5066(%rip)        # 407524 <vlevel>
  4024be:	74 1a                	je     4024da <validate+0xab>
  4024c0:	48 8d 3d f7 21 00 00 	lea    0x21f7(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  4024c7:	e8 b4 eb ff ff       	call   401080 <puts@plt>
  4024cc:	89 de                	mov    %ebx,%esi
  4024ce:	bf 00 00 00 00       	mov    $0x0,%edi
  4024d3:	e8 30 fd ff ff       	call   402208 <notify_server>
  4024d8:	eb a4                	jmp    40247e <validate+0x4f>
  4024da:	0f be 0d 67 5c 00 00 	movsbl 0x5c67(%rip),%ecx        # 408148 <target_prefix>
  4024e1:	89 fa                	mov    %edi,%edx
  4024e3:	48 8d 35 6e 1e 00 00 	lea    0x1e6e(%rip),%rsi        # 404358 <_IO_stdin_used+0x358>
  4024ea:	bf 02 00 00 00       	mov    $0x2,%edi
  4024ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f4:	e8 97 ec ff ff       	call   401190 <__printf_chk@plt>
  4024f9:	89 de                	mov    %ebx,%esi
  4024fb:	bf 01 00 00 00       	mov    $0x1,%edi
  402500:	e8 03 fd ff ff       	call   402208 <notify_server>
  402505:	e9 74 ff ff ff       	jmp    40247e <validate+0x4f>

000000000040250a <fail>:
  40250a:	f3 0f 1e fa          	endbr64
  40250e:	48 83 ec 08          	sub    $0x8,%rsp
  402512:	83 3d 17 50 00 00 00 	cmpl   $0x0,0x5017(%rip)        # 407530 <is_checker>
  402519:	75 11                	jne    40252c <fail+0x22>
  40251b:	89 fe                	mov    %edi,%esi
  40251d:	bf 00 00 00 00       	mov    $0x0,%edi
  402522:	e8 e1 fc ff ff       	call   402208 <notify_server>
  402527:	48 83 c4 08          	add    $0x8,%rsp
  40252b:	c3                   	ret
  40252c:	b8 00 00 00 00       	mov    $0x0,%eax
  402531:	e8 3e fc ff ff       	call   402174 <check_fail>

0000000000402536 <bushandler>:
  402536:	f3 0f 1e fa          	endbr64
  40253a:	50                   	push   %rax
  40253b:	58                   	pop    %rax
  40253c:	48 83 ec 08          	sub    $0x8,%rsp
  402540:	83 3d e9 4f 00 00 00 	cmpl   $0x0,0x4fe9(%rip)        # 407530 <is_checker>
  402547:	74 16                	je     40255f <bushandler+0x29>
  402549:	48 8d 3d 8c 21 00 00 	lea    0x218c(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402550:	e8 2b eb ff ff       	call   401080 <puts@plt>
  402555:	b8 00 00 00 00       	mov    $0x0,%eax
  40255a:	e8 15 fc ff ff       	call   402174 <check_fail>
  40255f:	48 8d 3d 2a 1e 00 00 	lea    0x1e2a(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  402566:	e8 15 eb ff ff       	call   401080 <puts@plt>
  40256b:	48 8d 3d 74 21 00 00 	lea    0x2174(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  402572:	e8 09 eb ff ff       	call   401080 <puts@plt>
  402577:	be 00 00 00 00       	mov    $0x0,%esi
  40257c:	bf 00 00 00 00       	mov    $0x0,%edi
  402581:	e8 82 fc ff ff       	call   402208 <notify_server>
  402586:	bf 01 00 00 00       	mov    $0x1,%edi
  40258b:	e8 50 ec ff ff       	call   4011e0 <exit@plt>

0000000000402590 <seghandler>:
  402590:	f3 0f 1e fa          	endbr64
  402594:	50                   	push   %rax
  402595:	58                   	pop    %rax
  402596:	48 83 ec 08          	sub    $0x8,%rsp
  40259a:	83 3d 8f 4f 00 00 00 	cmpl   $0x0,0x4f8f(%rip)        # 407530 <is_checker>
  4025a1:	74 16                	je     4025b9 <seghandler+0x29>
  4025a3:	48 8d 3d 52 21 00 00 	lea    0x2152(%rip),%rdi        # 4046fc <_IO_stdin_used+0x6fc>
  4025aa:	e8 d1 ea ff ff       	call   401080 <puts@plt>
  4025af:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b4:	e8 bb fb ff ff       	call   402174 <check_fail>
  4025b9:	48 8d 3d f0 1d 00 00 	lea    0x1df0(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  4025c0:	e8 bb ea ff ff       	call   401080 <puts@plt>
  4025c5:	48 8d 3d 1a 21 00 00 	lea    0x211a(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  4025cc:	e8 af ea ff ff       	call   401080 <puts@plt>
  4025d1:	be 00 00 00 00       	mov    $0x0,%esi
  4025d6:	bf 00 00 00 00       	mov    $0x0,%edi
  4025db:	e8 28 fc ff ff       	call   402208 <notify_server>
  4025e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e5:	e8 f6 eb ff ff       	call   4011e0 <exit@plt>

00000000004025ea <illegalhandler>:
  4025ea:	f3 0f 1e fa          	endbr64
  4025ee:	50                   	push   %rax
  4025ef:	58                   	pop    %rax
  4025f0:	48 83 ec 08          	sub    $0x8,%rsp
  4025f4:	83 3d 35 4f 00 00 00 	cmpl   $0x0,0x4f35(%rip)        # 407530 <is_checker>
  4025fb:	74 16                	je     402613 <illegalhandler+0x29>
  4025fd:	48 8d 3d 0b 21 00 00 	lea    0x210b(%rip),%rdi        # 40470f <_IO_stdin_used+0x70f>
  402604:	e8 77 ea ff ff       	call   401080 <puts@plt>
  402609:	b8 00 00 00 00       	mov    $0x0,%eax
  40260e:	e8 61 fb ff ff       	call   402174 <check_fail>
  402613:	48 8d 3d be 1d 00 00 	lea    0x1dbe(%rip),%rdi        # 4043d8 <_IO_stdin_used+0x3d8>
  40261a:	e8 61 ea ff ff       	call   401080 <puts@plt>
  40261f:	48 8d 3d c0 20 00 00 	lea    0x20c0(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  402626:	e8 55 ea ff ff       	call   401080 <puts@plt>
  40262b:	be 00 00 00 00       	mov    $0x0,%esi
  402630:	bf 00 00 00 00       	mov    $0x0,%edi
  402635:	e8 ce fb ff ff       	call   402208 <notify_server>
  40263a:	bf 01 00 00 00       	mov    $0x1,%edi
  40263f:	e8 9c eb ff ff       	call   4011e0 <exit@plt>

0000000000402644 <sigalrmhandler>:
  402644:	f3 0f 1e fa          	endbr64
  402648:	50                   	push   %rax
  402649:	58                   	pop    %rax
  40264a:	48 83 ec 08          	sub    $0x8,%rsp
  40264e:	83 3d db 4e 00 00 00 	cmpl   $0x0,0x4edb(%rip)        # 407530 <is_checker>
  402655:	74 16                	je     40266d <sigalrmhandler+0x29>
  402657:	48 8d 3d c5 20 00 00 	lea    0x20c5(%rip),%rdi        # 404723 <_IO_stdin_used+0x723>
  40265e:	e8 1d ea ff ff       	call   401080 <puts@plt>
  402663:	b8 00 00 00 00       	mov    $0x0,%eax
  402668:	e8 07 fb ff ff       	call   402174 <check_fail>
  40266d:	ba 02 00 00 00       	mov    $0x2,%edx
  402672:	48 8d 35 8f 1d 00 00 	lea    0x1d8f(%rip),%rsi        # 404408 <_IO_stdin_used+0x408>
  402679:	bf 02 00 00 00       	mov    $0x2,%edi
  40267e:	b8 00 00 00 00       	mov    $0x0,%eax
  402683:	e8 08 eb ff ff       	call   401190 <__printf_chk@plt>
  402688:	be 00 00 00 00       	mov    $0x0,%esi
  40268d:	bf 00 00 00 00       	mov    $0x0,%edi
  402692:	e8 71 fb ff ff       	call   402208 <notify_server>
  402697:	bf 01 00 00 00       	mov    $0x1,%edi
  40269c:	e8 3f eb ff ff       	call   4011e0 <exit@plt>

00000000004026a1 <__stack_chk_fail>:
  4026a1:	f3 0f 1e fa          	endbr64
  4026a5:	50                   	push   %rax
  4026a6:	58                   	pop    %rax
  4026a7:	48 83 ec 08          	sub    $0x8,%rsp
  4026ab:	83 3d 7e 4e 00 00 00 	cmpl   $0x0,0x4e7e(%rip)        # 407530 <is_checker>
  4026b2:	74 16                	je     4026ca <__stack_chk_fail+0x29>
  4026b4:	48 8d 3d 70 20 00 00 	lea    0x2070(%rip),%rdi        # 40472b <_IO_stdin_used+0x72b>
  4026bb:	e8 c0 e9 ff ff       	call   401080 <puts@plt>
  4026c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c5:	e8 aa fa ff ff       	call   402174 <check_fail>
  4026ca:	48 8d 3d 6f 1d 00 00 	lea    0x1d6f(%rip),%rdi        # 404440 <_IO_stdin_used+0x440>
  4026d1:	e8 aa e9 ff ff       	call   401080 <puts@plt>
  4026d6:	48 8d 3d 09 20 00 00 	lea    0x2009(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  4026dd:	e8 9e e9 ff ff       	call   401080 <puts@plt>
  4026e2:	be 00 00 00 00       	mov    $0x0,%esi
  4026e7:	bf 00 00 00 00       	mov    $0x0,%edi
  4026ec:	e8 17 fb ff ff       	call   402208 <notify_server>
  4026f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4026f6:	e8 e5 ea ff ff       	call   4011e0 <exit@plt>

00000000004026fb <launch>:
  4026fb:	f3 0f 1e fa          	endbr64
  4026ff:	55                   	push   %rbp
  402700:	48 89 e5             	mov    %rsp,%rbp
  402703:	53                   	push   %rbx
  402704:	48 83 ec 18          	sub    $0x18,%rsp
  402708:	48 89 fa             	mov    %rdi,%rdx
  40270b:	89 f3                	mov    %esi,%ebx
  40270d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402714:	00 00 
  402716:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40271a:	31 c0                	xor    %eax,%eax
  40271c:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402720:	48 89 c6             	mov    %rax,%rsi
  402723:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402727:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40272d:	48 89 e1             	mov    %rsp,%rcx
  402730:	48 29 c1             	sub    %rax,%rcx
  402733:	48 39 cc             	cmp    %rcx,%rsp
  402736:	74 12                	je     40274a <launch+0x4f>
  402738:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40273f:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402746:	00 00 
  402748:	eb e9                	jmp    402733 <launch+0x38>
  40274a:	48 89 f0             	mov    %rsi,%rax
  40274d:	25 ff 0f 00 00       	and    $0xfff,%eax
  402752:	48 29 c4             	sub    %rax,%rsp
  402755:	48 85 c0             	test   %rax,%rax
  402758:	74 06                	je     402760 <launch+0x65>
  40275a:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402760:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402765:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402769:	48 89 d1             	mov    %rdx,%rcx
  40276c:	be f4 00 00 00       	mov    $0xf4,%esi
  402771:	e8 5a ea ff ff       	call   4011d0 <__memset_chk@plt>
  402776:	48 8b 05 23 4d 00 00 	mov    0x4d23(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40277d:	48 39 05 94 4d 00 00 	cmp    %rax,0x4d94(%rip)        # 407518 <infile>
  402784:	74 42                	je     4027c8 <launch+0xcd>
  402786:	c7 05 94 4d 00 00 00 	movl   $0x0,0x4d94(%rip)        # 407524 <vlevel>
  40278d:	00 00 00 
  402790:	85 db                	test   %ebx,%ebx
  402792:	75 4c                	jne    4027e0 <launch+0xe5>
  402794:	b8 00 00 00 00       	mov    $0x0,%eax
  402799:	e8 c2 f6 ff ff       	call   401e60 <test>
  40279e:	83 3d 8b 4d 00 00 00 	cmpl   $0x0,0x4d8b(%rip)        # 407530 <is_checker>
  4027a5:	75 45                	jne    4027ec <launch+0xf1>
  4027a7:	48 8d 3d a4 1f 00 00 	lea    0x1fa4(%rip),%rdi        # 404752 <_IO_stdin_used+0x752>
  4027ae:	e8 cd e8 ff ff       	call   401080 <puts@plt>
  4027b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027b7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027be:	00 00 
  4027c0:	75 40                	jne    402802 <launch+0x107>
  4027c2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027c6:	c9                   	leave
  4027c7:	c3                   	ret
  4027c8:	48 8d 35 6b 1f 00 00 	lea    0x1f6b(%rip),%rsi        # 40473a <_IO_stdin_used+0x73a>
  4027cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4027d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d9:	e8 b2 e9 ff ff       	call   401190 <__printf_chk@plt>
  4027de:	eb a6                	jmp    402786 <launch+0x8b>
  4027e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e5:	e8 a5 f6 ff ff       	call   401e8f <test2>
  4027ea:	eb b2                	jmp    40279e <launch+0xa3>
  4027ec:	48 8d 3d 54 1f 00 00 	lea    0x1f54(%rip),%rdi        # 404747 <_IO_stdin_used+0x747>
  4027f3:	e8 88 e8 ff ff       	call   401080 <puts@plt>
  4027f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027fd:	e8 72 f9 ff ff       	call   402174 <check_fail>
  402802:	e8 9a fe ff ff       	call   4026a1 <__stack_chk_fail>

0000000000402807 <stable_launch>:
  402807:	f3 0f 1e fa          	endbr64
  40280b:	55                   	push   %rbp
  40280c:	53                   	push   %rbx
  40280d:	48 83 ec 08          	sub    $0x8,%rsp
  402811:	89 f5                	mov    %esi,%ebp
  402813:	48 89 3d f6 4c 00 00 	mov    %rdi,0x4cf6(%rip)        # 407510 <global_offset>
  40281a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402820:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402826:	b9 32 01 00 00       	mov    $0x132,%ecx
  40282b:	ba 07 00 00 00       	mov    $0x7,%edx
  402830:	be 00 00 10 00       	mov    $0x100000,%esi
  402835:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40283a:	e8 71 e8 ff ff       	call   4010b0 <mmap@plt>
  40283f:	48 89 c3             	mov    %rax,%rbx
  402842:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402848:	75 4a                	jne    402894 <stable_launch+0x8d>
  40284a:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402851:	48 89 15 b0 4c 00 00 	mov    %rdx,0x4cb0(%rip)        # 407508 <stack_top>
  402858:	48 89 e0             	mov    %rsp,%rax
  40285b:	48 89 d4             	mov    %rdx,%rsp
  40285e:	48 89 c2             	mov    %rax,%rdx
  402861:	48 89 15 98 4c 00 00 	mov    %rdx,0x4c98(%rip)        # 407500 <global_save_stack>
  402868:	89 ee                	mov    %ebp,%esi
  40286a:	48 8b 3d 9f 4c 00 00 	mov    0x4c9f(%rip),%rdi        # 407510 <global_offset>
  402871:	e8 85 fe ff ff       	call   4026fb <launch>
  402876:	48 8b 05 83 4c 00 00 	mov    0x4c83(%rip),%rax        # 407500 <global_save_stack>
  40287d:	48 89 c4             	mov    %rax,%rsp
  402880:	be 00 00 10 00       	mov    $0x100000,%esi
  402885:	48 89 df             	mov    %rbx,%rdi
  402888:	e8 f3 e8 ff ff       	call   401180 <munmap@plt>
  40288d:	48 83 c4 08          	add    $0x8,%rsp
  402891:	5b                   	pop    %rbx
  402892:	5d                   	pop    %rbp
  402893:	c3                   	ret
  402894:	be 00 00 10 00       	mov    $0x100000,%esi
  402899:	48 89 c7             	mov    %rax,%rdi
  40289c:	e8 df e8 ff ff       	call   401180 <munmap@plt>
  4028a1:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4028a6:	48 8d 15 bb 1b 00 00 	lea    0x1bbb(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  4028ad:	be 02 00 00 00       	mov    $0x2,%esi
  4028b2:	48 8b 3d 27 4c 00 00 	mov    0x4c27(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4028be:	e8 3d e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4028c8:	e8 13 e9 ff ff       	call   4011e0 <exit@plt>

00000000004028cd <rio_readinitb>:
  4028cd:	89 37                	mov    %esi,(%rdi)
  4028cf:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4028d6:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028da:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028de:	c3                   	ret

00000000004028df <sigalrm_handler>:
  4028df:	f3 0f 1e fa          	endbr64
  4028e3:	50                   	push   %rax
  4028e4:	58                   	pop    %rax
  4028e5:	48 83 ec 08          	sub    $0x8,%rsp
  4028e9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4028ee:	48 8d 15 9b 1b 00 00 	lea    0x1b9b(%rip),%rdx        # 404490 <_IO_stdin_used+0x490>
  4028f5:	be 02 00 00 00       	mov    $0x2,%esi
  4028fa:	48 8b 3d df 4b 00 00 	mov    0x4bdf(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402901:	b8 00 00 00 00       	mov    $0x0,%eax
  402906:	e8 f5 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  40290b:	bf 01 00 00 00       	mov    $0x1,%edi
  402910:	e8 cb e8 ff ff       	call   4011e0 <exit@plt>

0000000000402915 <rio_writen>:
  402915:	41 55                	push   %r13
  402917:	41 54                	push   %r12
  402919:	55                   	push   %rbp
  40291a:	53                   	push   %rbx
  40291b:	48 83 ec 08          	sub    $0x8,%rsp
  40291f:	41 89 fc             	mov    %edi,%r12d
  402922:	48 89 f5             	mov    %rsi,%rbp
  402925:	49 89 d5             	mov    %rdx,%r13
  402928:	48 89 d3             	mov    %rdx,%rbx
  40292b:	eb 06                	jmp    402933 <rio_writen+0x1e>
  40292d:	48 29 c3             	sub    %rax,%rbx
  402930:	48 01 c5             	add    %rax,%rbp
  402933:	48 85 db             	test   %rbx,%rbx
  402936:	74 24                	je     40295c <rio_writen+0x47>
  402938:	48 89 da             	mov    %rbx,%rdx
  40293b:	48 89 ee             	mov    %rbp,%rsi
  40293e:	44 89 e7             	mov    %r12d,%edi
  402941:	e8 4a e7 ff ff       	call   401090 <write@plt>
  402946:	48 85 c0             	test   %rax,%rax
  402949:	7f e2                	jg     40292d <rio_writen+0x18>
  40294b:	e8 e0 e6 ff ff       	call   401030 <__errno_location@plt>
  402950:	83 38 04             	cmpl   $0x4,(%rax)
  402953:	75 15                	jne    40296a <rio_writen+0x55>
  402955:	b8 00 00 00 00       	mov    $0x0,%eax
  40295a:	eb d1                	jmp    40292d <rio_writen+0x18>
  40295c:	4c 89 e8             	mov    %r13,%rax
  40295f:	48 83 c4 08          	add    $0x8,%rsp
  402963:	5b                   	pop    %rbx
  402964:	5d                   	pop    %rbp
  402965:	41 5c                	pop    %r12
  402967:	41 5d                	pop    %r13
  402969:	c3                   	ret
  40296a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402971:	eb ec                	jmp    40295f <rio_writen+0x4a>

0000000000402973 <rio_read>:
  402973:	41 55                	push   %r13
  402975:	41 54                	push   %r12
  402977:	55                   	push   %rbp
  402978:	53                   	push   %rbx
  402979:	48 83 ec 08          	sub    $0x8,%rsp
  40297d:	48 89 fb             	mov    %rdi,%rbx
  402980:	49 89 f5             	mov    %rsi,%r13
  402983:	49 89 d4             	mov    %rdx,%r12
  402986:	eb 0a                	jmp    402992 <rio_read+0x1f>
  402988:	e8 a3 e6 ff ff       	call   401030 <__errno_location@plt>
  40298d:	83 38 04             	cmpl   $0x4,(%rax)
  402990:	75 5f                	jne    4029f1 <rio_read+0x7e>
  402992:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402995:	85 ed                	test   %ebp,%ebp
  402997:	7f 22                	jg     4029bb <rio_read+0x48>
  402999:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40299d:	8b 3b                	mov    (%rbx),%edi
  40299f:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029a4:	48 89 ee             	mov    %rbp,%rsi
  4029a7:	e8 34 e7 ff ff       	call   4010e0 <read@plt>
  4029ac:	89 43 04             	mov    %eax,0x4(%rbx)
  4029af:	85 c0                	test   %eax,%eax
  4029b1:	78 d5                	js     402988 <rio_read+0x15>
  4029b3:	74 45                	je     4029fa <rio_read+0x87>
  4029b5:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029b9:	eb d7                	jmp    402992 <rio_read+0x1f>
  4029bb:	89 e8                	mov    %ebp,%eax
  4029bd:	4c 39 e0             	cmp    %r12,%rax
  4029c0:	72 03                	jb     4029c5 <rio_read+0x52>
  4029c2:	44 89 e5             	mov    %r12d,%ebp
  4029c5:	4c 63 e5             	movslq %ebp,%r12
  4029c8:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4029cc:	4c 89 e2             	mov    %r12,%rdx
  4029cf:	4c 89 ef             	mov    %r13,%rdi
  4029d2:	e8 69 e7 ff ff       	call   401140 <memcpy@plt>
  4029d7:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4029db:	8b 43 04             	mov    0x4(%rbx),%eax
  4029de:	29 e8                	sub    %ebp,%eax
  4029e0:	89 43 04             	mov    %eax,0x4(%rbx)
  4029e3:	4c 89 e0             	mov    %r12,%rax
  4029e6:	48 83 c4 08          	add    $0x8,%rsp
  4029ea:	5b                   	pop    %rbx
  4029eb:	5d                   	pop    %rbp
  4029ec:	41 5c                	pop    %r12
  4029ee:	41 5d                	pop    %r13
  4029f0:	c3                   	ret
  4029f1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029f8:	eb ec                	jmp    4029e6 <rio_read+0x73>
  4029fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ff:	eb e5                	jmp    4029e6 <rio_read+0x73>

0000000000402a01 <rio_readlineb>:
  402a01:	41 55                	push   %r13
  402a03:	41 54                	push   %r12
  402a05:	55                   	push   %rbp
  402a06:	53                   	push   %rbx
  402a07:	48 83 ec 18          	sub    $0x18,%rsp
  402a0b:	49 89 fd             	mov    %rdi,%r13
  402a0e:	48 89 f5             	mov    %rsi,%rbp
  402a11:	49 89 d4             	mov    %rdx,%r12
  402a14:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a1b:	00 00 
  402a1d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a22:	31 c0                	xor    %eax,%eax
  402a24:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a29:	eb 18                	jmp    402a43 <rio_readlineb+0x42>
  402a2b:	85 c0                	test   %eax,%eax
  402a2d:	75 65                	jne    402a94 <rio_readlineb+0x93>
  402a2f:	48 83 fb 01          	cmp    $0x1,%rbx
  402a33:	75 3d                	jne    402a72 <rio_readlineb+0x71>
  402a35:	b8 00 00 00 00       	mov    $0x0,%eax
  402a3a:	eb 3d                	jmp    402a79 <rio_readlineb+0x78>
  402a3c:	48 83 c3 01          	add    $0x1,%rbx
  402a40:	48 89 d5             	mov    %rdx,%rbp
  402a43:	4c 39 e3             	cmp    %r12,%rbx
  402a46:	73 2a                	jae    402a72 <rio_readlineb+0x71>
  402a48:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a4d:	ba 01 00 00 00       	mov    $0x1,%edx
  402a52:	4c 89 ef             	mov    %r13,%rdi
  402a55:	e8 19 ff ff ff       	call   402973 <rio_read>
  402a5a:	83 f8 01             	cmp    $0x1,%eax
  402a5d:	75 cc                	jne    402a2b <rio_readlineb+0x2a>
  402a5f:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a63:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a68:	88 45 00             	mov    %al,0x0(%rbp)
  402a6b:	3c 0a                	cmp    $0xa,%al
  402a6d:	75 cd                	jne    402a3c <rio_readlineb+0x3b>
  402a6f:	48 89 d5             	mov    %rdx,%rbp
  402a72:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402a76:	48 89 d8             	mov    %rbx,%rax
  402a79:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a7e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a85:	00 00 
  402a87:	75 14                	jne    402a9d <rio_readlineb+0x9c>
  402a89:	48 83 c4 18          	add    $0x18,%rsp
  402a8d:	5b                   	pop    %rbx
  402a8e:	5d                   	pop    %rbp
  402a8f:	41 5c                	pop    %r12
  402a91:	41 5d                	pop    %r13
  402a93:	c3                   	ret
  402a94:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a9b:	eb dc                	jmp    402a79 <rio_readlineb+0x78>
  402a9d:	e8 ff fb ff ff       	call   4026a1 <__stack_chk_fail>

0000000000402aa2 <urlencode>:
  402aa2:	41 54                	push   %r12
  402aa4:	55                   	push   %rbp
  402aa5:	53                   	push   %rbx
  402aa6:	48 83 ec 10          	sub    $0x10,%rsp
  402aaa:	48 89 fb             	mov    %rdi,%rbx
  402aad:	48 89 f5             	mov    %rsi,%rbp
  402ab0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ab7:	00 00 
  402ab9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402abe:	31 c0                	xor    %eax,%eax
  402ac0:	e8 db e5 ff ff       	call   4010a0 <strlen@plt>
  402ac5:	eb 0f                	jmp    402ad6 <urlencode+0x34>
  402ac7:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402acb:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402acf:	48 83 c3 01          	add    $0x1,%rbx
  402ad3:	44 89 e0             	mov    %r12d,%eax
  402ad6:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402ada:	85 c0                	test   %eax,%eax
  402adc:	0f 84 a8 00 00 00    	je     402b8a <urlencode+0xe8>
  402ae2:	44 0f b6 03          	movzbl (%rbx),%r8d
  402ae6:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402aea:	0f 94 c0             	sete   %al
  402aed:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402af1:	0f 94 c2             	sete   %dl
  402af4:	08 d0                	or     %dl,%al
  402af6:	75 cf                	jne    402ac7 <urlencode+0x25>
  402af8:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402afc:	74 c9                	je     402ac7 <urlencode+0x25>
  402afe:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b02:	74 c3                	je     402ac7 <urlencode+0x25>
  402b04:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b08:	3c 09                	cmp    $0x9,%al
  402b0a:	76 bb                	jbe    402ac7 <urlencode+0x25>
  402b0c:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b10:	3c 19                	cmp    $0x19,%al
  402b12:	76 b3                	jbe    402ac7 <urlencode+0x25>
  402b14:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b18:	3c 19                	cmp    $0x19,%al
  402b1a:	76 ab                	jbe    402ac7 <urlencode+0x25>
  402b1c:	41 80 f8 20          	cmp    $0x20,%r8b
  402b20:	74 56                	je     402b78 <urlencode+0xd6>
  402b22:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b26:	3c 5f                	cmp    $0x5f,%al
  402b28:	0f 96 c0             	setbe  %al
  402b2b:	41 80 f8 09          	cmp    $0x9,%r8b
  402b2f:	0f 94 c2             	sete   %dl
  402b32:	08 d0                	or     %dl,%al
  402b34:	74 4f                	je     402b85 <urlencode+0xe3>
  402b36:	48 89 e7             	mov    %rsp,%rdi
  402b39:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b3d:	48 8d 0d 1c 1c 00 00 	lea    0x1c1c(%rip),%rcx        # 404760 <_IO_stdin_used+0x760>
  402b44:	ba 08 00 00 00       	mov    $0x8,%edx
  402b49:	be 02 00 00 00       	mov    $0x2,%esi
  402b4e:	b8 00 00 00 00       	mov    $0x0,%eax
  402b53:	e8 c8 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b58:	0f b6 04 24          	movzbl (%rsp),%eax
  402b5c:	88 45 00             	mov    %al,0x0(%rbp)
  402b5f:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b64:	88 45 01             	mov    %al,0x1(%rbp)
  402b67:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b6c:	88 45 02             	mov    %al,0x2(%rbp)
  402b6f:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402b73:	e9 57 ff ff ff       	jmp    402acf <urlencode+0x2d>
  402b78:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402b7c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b80:	e9 4a ff ff ff       	jmp    402acf <urlencode+0x2d>
  402b85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b8a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402b8f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b96:	00 00 
  402b98:	75 09                	jne    402ba3 <urlencode+0x101>
  402b9a:	48 83 c4 10          	add    $0x10,%rsp
  402b9e:	5b                   	pop    %rbx
  402b9f:	5d                   	pop    %rbp
  402ba0:	41 5c                	pop    %r12
  402ba2:	c3                   	ret
  402ba3:	e8 f9 fa ff ff       	call   4026a1 <__stack_chk_fail>

0000000000402ba8 <submitr>:
  402ba8:	f3 0f 1e fa          	endbr64
  402bac:	41 57                	push   %r15
  402bae:	41 56                	push   %r14
  402bb0:	41 55                	push   %r13
  402bb2:	41 54                	push   %r12
  402bb4:	55                   	push   %rbp
  402bb5:	53                   	push   %rbx
  402bb6:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402bbd:	ff 
  402bbe:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bc5:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bca:	4c 39 dc             	cmp    %r11,%rsp
  402bcd:	75 ef                	jne    402bbe <submitr+0x16>
  402bcf:	48 83 ec 68          	sub    $0x68,%rsp
  402bd3:	49 89 fd             	mov    %rdi,%r13
  402bd6:	41 89 f6             	mov    %esi,%r14d
  402bd9:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402bde:	49 89 cc             	mov    %rcx,%r12
  402be1:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402be6:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402beb:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402bf2:	00 
  402bf3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bfa:	00 00 
  402bfc:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c03:	00 
  402c04:	31 c0                	xor    %eax,%eax
  402c06:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c0d:	00 
  402c0e:	ba 00 00 00 00       	mov    $0x0,%edx
  402c13:	be 01 00 00 00       	mov    $0x1,%esi
  402c18:	bf 02 00 00 00       	mov    $0x2,%edi
  402c1d:	e8 0e e6 ff ff       	call   401230 <socket@plt>
  402c22:	85 c0                	test   %eax,%eax
  402c24:	0f 88 72 02 00 00    	js     402e9c <submitr+0x2f4>
  402c2a:	89 c3                	mov    %eax,%ebx
  402c2c:	4c 89 ef             	mov    %r13,%rdi
  402c2f:	e8 dc e4 ff ff       	call   401110 <gethostbyname@plt>
  402c34:	48 85 c0             	test   %rax,%rax
  402c37:	0f 84 ab 02 00 00    	je     402ee8 <submitr+0x340>
  402c3d:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c42:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c46:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c4b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c52:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c56:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c5a:	48 8b 30             	mov    (%rax),%rsi
  402c5d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c62:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c67:	e8 b4 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402c6c:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402c71:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402c77:	ba 10 00 00 00       	mov    $0x10,%edx
  402c7c:	48 89 ee             	mov    %rbp,%rsi
  402c7f:	89 df                	mov    %ebx,%edi
  402c81:	e8 6a e5 ff ff       	call   4011f0 <connect@plt>
  402c86:	85 c0                	test   %eax,%eax
  402c88:	0f 88 cc 02 00 00    	js     402f5a <submitr+0x3b2>
  402c8e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c93:	e8 08 e4 ff ff       	call   4010a0 <strlen@plt>
  402c98:	49 89 c6             	mov    %rax,%r14
  402c9b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402ca0:	e8 fb e3 ff ff       	call   4010a0 <strlen@plt>
  402ca5:	48 89 c5             	mov    %rax,%rbp
  402ca8:	4c 89 e7             	mov    %r12,%rdi
  402cab:	e8 f0 e3 ff ff       	call   4010a0 <strlen@plt>
  402cb0:	48 01 c5             	add    %rax,%rbp
  402cb3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402cb8:	e8 e3 e3 ff ff       	call   4010a0 <strlen@plt>
  402cbd:	48 01 c5             	add    %rax,%rbp
  402cc0:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402cc4:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402ccb:	00 
  402ccc:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402cd2:	0f 87 e6 02 00 00    	ja     402fbe <submitr+0x416>
  402cd8:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402cdf:	00 
  402ce0:	b9 00 04 00 00       	mov    $0x400,%ecx
  402ce5:	b8 00 00 00 00       	mov    $0x0,%eax
  402cea:	48 89 f7             	mov    %rsi,%rdi
  402ced:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402cf0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402cf5:	e8 a8 fd ff ff       	call   402aa2 <urlencode>
  402cfa:	85 c0                	test   %eax,%eax
  402cfc:	0f 88 2e 03 00 00    	js     403030 <submitr+0x488>
  402d02:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d09:	00 
  402d0a:	48 83 ec 08          	sub    $0x8,%rsp
  402d0e:	41 55                	push   %r13
  402d10:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d17:	00 
  402d18:	50                   	push   %rax
  402d19:	41 54                	push   %r12
  402d1b:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d20:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d25:	48 8d 0d 8c 17 00 00 	lea    0x178c(%rip),%rcx        # 4044b8 <_IO_stdin_used+0x4b8>
  402d2c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d31:	be 02 00 00 00       	mov    $0x2,%esi
  402d36:	48 89 ef             	mov    %rbp,%rdi
  402d39:	b8 00 00 00 00       	mov    $0x0,%eax
  402d3e:	e8 dd e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d43:	48 83 c4 20          	add    $0x20,%rsp
  402d47:	48 89 ef             	mov    %rbp,%rdi
  402d4a:	e8 51 e3 ff ff       	call   4010a0 <strlen@plt>
  402d4f:	48 89 c2             	mov    %rax,%rdx
  402d52:	48 89 ee             	mov    %rbp,%rsi
  402d55:	89 df                	mov    %ebx,%edi
  402d57:	e8 b9 fb ff ff       	call   402915 <rio_writen>
  402d5c:	48 85 c0             	test   %rax,%rax
  402d5f:	0f 88 53 03 00 00    	js     4030b8 <submitr+0x510>
  402d65:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d6a:	89 de                	mov    %ebx,%esi
  402d6c:	48 89 ef             	mov    %rbp,%rdi
  402d6f:	e8 59 fb ff ff       	call   4028cd <rio_readinitb>
  402d74:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d7b:	00 
  402d7c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d81:	48 89 ef             	mov    %rbp,%rdi
  402d84:	e8 78 fc ff ff       	call   402a01 <rio_readlineb>
  402d89:	48 85 c0             	test   %rax,%rax
  402d8c:	0f 8e 92 03 00 00    	jle    403124 <submitr+0x57c>
  402d92:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402d97:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402d9e:	00 
  402d9f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402da6:	00 
  402da7:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402dae:	00 
  402daf:	48 8d 35 b1 19 00 00 	lea    0x19b1(%rip),%rsi        # 404767 <_IO_stdin_used+0x767>
  402db6:	b8 00 00 00 00       	mov    $0x0,%eax
  402dbb:	e8 b0 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402dc0:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dc7:	00 
  402dc8:	48 8d 35 af 19 00 00 	lea    0x19af(%rip),%rsi        # 40477e <_IO_stdin_used+0x77e>
  402dcf:	e8 1c e3 ff ff       	call   4010f0 <strcmp@plt>
  402dd4:	85 c0                	test   %eax,%eax
  402dd6:	0f 84 c8 03 00 00    	je     4031a4 <submitr+0x5fc>
  402ddc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402de3:	00 
  402de4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402de9:	ba 00 20 00 00       	mov    $0x2000,%edx
  402dee:	e8 0e fc ff ff       	call   402a01 <rio_readlineb>
  402df3:	48 85 c0             	test   %rax,%rax
  402df6:	7f c8                	jg     402dc0 <submitr+0x218>
  402df8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402dff:	3a 20 43 
  402e02:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e09:	20 75 6e 
  402e0c:	49 89 07             	mov    %rax,(%r15)
  402e0f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e1a:	74 6f 20 
  402e1d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e24:	68 65 61 
  402e27:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e2b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e2f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e36:	66 72 6f 
  402e39:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e40:	6f 6c 61 
  402e43:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e47:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e4b:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e52:	6c 61 62 
  402e55:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e5c:	65 72 00 
  402e5f:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e63:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e67:	89 df                	mov    %ebx,%edi
  402e69:	e8 62 e2 ff ff       	call   4010d0 <close@plt>
  402e6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e73:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402e7a:	00 
  402e7b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402e82:	00 00 
  402e84:	0f 85 67 04 00 00    	jne    4032f1 <submitr+0x749>
  402e8a:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402e91:	5b                   	pop    %rbx
  402e92:	5d                   	pop    %rbp
  402e93:	41 5c                	pop    %r12
  402e95:	41 5d                	pop    %r13
  402e97:	41 5e                	pop    %r14
  402e99:	41 5f                	pop    %r15
  402e9b:	c3                   	ret
  402e9c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ea3:	3a 20 43 
  402ea6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ead:	20 75 6e 
  402eb0:	49 89 07             	mov    %rax,(%r15)
  402eb3:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402eb7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ebe:	74 6f 20 
  402ec1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ec8:	65 20 73 
  402ecb:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ecf:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ed3:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402eda:	65 74 00 
  402edd:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402ee1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ee6:	eb 8b                	jmp    402e73 <submitr+0x2cb>
  402ee8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402eef:	3a 20 44 
  402ef2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ef9:	20 75 6e 
  402efc:	49 89 07             	mov    %rax,(%r15)
  402eff:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f03:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f0a:	74 6f 20 
  402f0d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f14:	76 65 20 
  402f17:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f1b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f1f:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f26:	61 62 20 
  402f29:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f30:	72 20 61 
  402f33:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f37:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f3b:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f42:	73 73 00 
  402f45:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f49:	89 df                	mov    %ebx,%edi
  402f4b:	e8 80 e1 ff ff       	call   4010d0 <close@plt>
  402f50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f55:	e9 19 ff ff ff       	jmp    402e73 <submitr+0x2cb>
  402f5a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f61:	3a 20 55 
  402f64:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f6b:	20 74 6f 
  402f6e:	49 89 07             	mov    %rax,(%r15)
  402f71:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f75:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f7c:	65 63 74 
  402f7f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402f86:	68 65 20 
  402f89:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f8d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f91:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f98:	6c 61 62 
  402f9b:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fa2:	65 72 00 
  402fa5:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402fa9:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402fad:	89 df                	mov    %ebx,%edi
  402faf:	e8 1c e1 ff ff       	call   4010d0 <close@plt>
  402fb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fb9:	e9 b5 fe ff ff       	jmp    402e73 <submitr+0x2cb>
  402fbe:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402fc5:	3a 20 52 
  402fc8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402fcf:	20 73 74 
  402fd2:	49 89 07             	mov    %rax,(%r15)
  402fd5:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fd9:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402fe0:	74 6f 6f 
  402fe3:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402fea:	65 2e 20 
  402fed:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ff1:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ff5:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402ffc:	61 73 65 
  402fff:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403006:	49 54 52 
  403009:	49 89 47 20          	mov    %rax,0x20(%r15)
  40300d:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403011:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403018:	55 46 00 
  40301b:	49 89 47 30          	mov    %rax,0x30(%r15)
  40301f:	89 df                	mov    %ebx,%edi
  403021:	e8 aa e0 ff ff       	call   4010d0 <close@plt>
  403026:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40302b:	e9 43 fe ff ff       	jmp    402e73 <submitr+0x2cb>
  403030:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403037:	3a 20 55 
  40303a:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  403041:	20 73 74 
  403044:	49 89 07             	mov    %rax,(%r15)
  403047:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40304b:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403052:	63 6f 6e 
  403055:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40305c:	20 61 6e 
  40305f:	49 89 47 10          	mov    %rax,0x10(%r15)
  403063:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403067:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40306e:	67 61 6c 
  403071:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403078:	6e 70 72 
  40307b:	49 89 47 20          	mov    %rax,0x20(%r15)
  40307f:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403083:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40308a:	6c 65 20 
  40308d:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403094:	63 74 65 
  403097:	49 89 47 30          	mov    %rax,0x30(%r15)
  40309b:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40309f:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  4030a6:	00 
  4030a7:	89 df                	mov    %ebx,%edi
  4030a9:	e8 22 e0 ff ff       	call   4010d0 <close@plt>
  4030ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030b3:	e9 bb fd ff ff       	jmp    402e73 <submitr+0x2cb>
  4030b8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030bf:	3a 20 43 
  4030c2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030c9:	20 75 6e 
  4030cc:	49 89 07             	mov    %rax,(%r15)
  4030cf:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030da:	74 6f 20 
  4030dd:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4030e4:	20 74 6f 
  4030e7:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030eb:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030ef:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4030f6:	41 75 74 
  4030f9:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403100:	73 65 72 
  403103:	49 89 47 20          	mov    %rax,0x20(%r15)
  403107:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40310b:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403112:	00 
  403113:	89 df                	mov    %ebx,%edi
  403115:	e8 b6 df ff ff       	call   4010d0 <close@plt>
  40311a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40311f:	e9 4f fd ff ff       	jmp    402e73 <submitr+0x2cb>
  403124:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40312b:	3a 20 43 
  40312e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403135:	20 75 6e 
  403138:	49 89 07             	mov    %rax,(%r15)
  40313b:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40313f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403146:	74 6f 20 
  403149:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403150:	66 69 72 
  403153:	49 89 47 10          	mov    %rax,0x10(%r15)
  403157:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40315b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403162:	61 64 65 
  403165:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  40316c:	6d 20 41 
  40316f:	49 89 47 20          	mov    %rax,0x20(%r15)
  403173:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403177:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40317e:	6c 61 62 
  403181:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403188:	65 72 00 
  40318b:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  40318f:	49 89 57 36          	mov    %rdx,0x36(%r15)
  403193:	89 df                	mov    %ebx,%edi
  403195:	e8 36 df ff ff       	call   4010d0 <close@plt>
  40319a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40319f:	e9 cf fc ff ff       	jmp    402e73 <submitr+0x2cb>
  4031a4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031ab:	00 
  4031ac:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4031b1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031b6:	e8 46 f8 ff ff       	call   402a01 <rio_readlineb>
  4031bb:	48 85 c0             	test   %rax,%rax
  4031be:	7e 78                	jle    403238 <submitr+0x690>
  4031c0:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031c5:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031cc:	0f 85 e6 00 00 00    	jne    4032b8 <submitr+0x710>
  4031d2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031d9:	00 
  4031da:	4c 89 ff             	mov    %r15,%rdi
  4031dd:	e8 8e de ff ff       	call   401070 <strcpy@plt>
  4031e2:	89 df                	mov    %ebx,%edi
  4031e4:	e8 e7 de ff ff       	call   4010d0 <close@plt>
  4031e9:	48 8d 35 88 15 00 00 	lea    0x1588(%rip),%rsi        # 404778 <_IO_stdin_used+0x778>
  4031f0:	4c 89 ff             	mov    %r15,%rdi
  4031f3:	e8 f8 de ff ff       	call   4010f0 <strcmp@plt>
  4031f8:	85 c0                	test   %eax,%eax
  4031fa:	0f 84 73 fc ff ff    	je     402e73 <submitr+0x2cb>
  403200:	48 8d 35 75 15 00 00 	lea    0x1575(%rip),%rsi        # 40477c <_IO_stdin_used+0x77c>
  403207:	4c 89 ff             	mov    %r15,%rdi
  40320a:	e8 e1 de ff ff       	call   4010f0 <strcmp@plt>
  40320f:	85 c0                	test   %eax,%eax
  403211:	0f 84 5c fc ff ff    	je     402e73 <submitr+0x2cb>
  403217:	48 8d 35 63 15 00 00 	lea    0x1563(%rip),%rsi        # 404781 <_IO_stdin_used+0x781>
  40321e:	4c 89 ff             	mov    %r15,%rdi
  403221:	e8 ca de ff ff       	call   4010f0 <strcmp@plt>
  403226:	85 c0                	test   %eax,%eax
  403228:	0f 84 45 fc ff ff    	je     402e73 <submitr+0x2cb>
  40322e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403233:	e9 3b fc ff ff       	jmp    402e73 <submitr+0x2cb>
  403238:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40323f:	3a 20 43 
  403242:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403249:	20 75 6e 
  40324c:	49 89 07             	mov    %rax,(%r15)
  40324f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403253:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40325a:	74 6f 20 
  40325d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403264:	73 74 61 
  403267:	49 89 47 10          	mov    %rax,0x10(%r15)
  40326b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40326f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403276:	65 73 73 
  403279:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403280:	72 6f 6d 
  403283:	49 89 47 20          	mov    %rax,0x20(%r15)
  403287:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40328b:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403292:	6c 61 62 
  403295:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40329c:	65 72 00 
  40329f:	49 89 47 30          	mov    %rax,0x30(%r15)
  4032a3:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4032a7:	89 df                	mov    %ebx,%edi
  4032a9:	e8 22 de ff ff       	call   4010d0 <close@plt>
  4032ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032b3:	e9 bb fb ff ff       	jmp    402e73 <submitr+0x2cb>
  4032b8:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032bf:	00 
  4032c0:	48 8d 0d 49 12 00 00 	lea    0x1249(%rip),%rcx        # 404510 <_IO_stdin_used+0x510>
  4032c7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4032ce:	be 02 00 00 00       	mov    $0x2,%esi
  4032d3:	4c 89 ff             	mov    %r15,%rdi
  4032d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4032db:	e8 40 df ff ff       	call   401220 <__sprintf_chk@plt>
  4032e0:	89 df                	mov    %ebx,%edi
  4032e2:	e8 e9 dd ff ff       	call   4010d0 <close@plt>
  4032e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ec:	e9 82 fb ff ff       	jmp    402e73 <submitr+0x2cb>
  4032f1:	e8 ab f3 ff ff       	call   4026a1 <__stack_chk_fail>

00000000004032f6 <init_timeout>:
  4032f6:	f3 0f 1e fa          	endbr64
  4032fa:	85 ff                	test   %edi,%edi
  4032fc:	74 26                	je     403324 <init_timeout+0x2e>
  4032fe:	53                   	push   %rbx
  4032ff:	89 fb                	mov    %edi,%ebx
  403301:	78 1a                	js     40331d <init_timeout+0x27>
  403303:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 4028df <sigalrm_handler>
  40330a:	bf 0e 00 00 00       	mov    $0xe,%edi
  40330f:	e8 ec dd ff ff       	call   401100 <signal@plt>
  403314:	89 df                	mov    %ebx,%edi
  403316:	e8 a5 dd ff ff       	call   4010c0 <alarm@plt>
  40331b:	5b                   	pop    %rbx
  40331c:	c3                   	ret
  40331d:	bb 00 00 00 00       	mov    $0x0,%ebx
  403322:	eb df                	jmp    403303 <init_timeout+0xd>
  403324:	c3                   	ret

0000000000403325 <init_driver>:
  403325:	f3 0f 1e fa          	endbr64
  403329:	41 54                	push   %r12
  40332b:	55                   	push   %rbp
  40332c:	53                   	push   %rbx
  40332d:	48 83 ec 20          	sub    $0x20,%rsp
  403331:	48 89 fd             	mov    %rdi,%rbp
  403334:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40333b:	00 00 
  40333d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403342:	31 c0                	xor    %eax,%eax
  403344:	be 01 00 00 00       	mov    $0x1,%esi
  403349:	bf 0d 00 00 00       	mov    $0xd,%edi
  40334e:	e8 ad dd ff ff       	call   401100 <signal@plt>
  403353:	be 01 00 00 00       	mov    $0x1,%esi
  403358:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40335d:	e8 9e dd ff ff       	call   401100 <signal@plt>
  403362:	be 01 00 00 00       	mov    $0x1,%esi
  403367:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40336c:	e8 8f dd ff ff       	call   401100 <signal@plt>
  403371:	ba 00 00 00 00       	mov    $0x0,%edx
  403376:	be 01 00 00 00       	mov    $0x1,%esi
  40337b:	bf 02 00 00 00       	mov    $0x2,%edi
  403380:	e8 ab de ff ff       	call   401230 <socket@plt>
  403385:	85 c0                	test   %eax,%eax
  403387:	0f 88 93 00 00 00    	js     403420 <init_driver+0xfb>
  40338d:	89 c3                	mov    %eax,%ebx
  40338f:	48 8d 3d ee 13 00 00 	lea    0x13ee(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  403396:	e8 75 dd ff ff       	call   401110 <gethostbyname@plt>
  40339b:	48 85 c0             	test   %rax,%rax
  40339e:	0f 84 c9 00 00 00    	je     40346d <init_driver+0x148>
  4033a4:	49 89 e4             	mov    %rsp,%r12
  4033a7:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4033ab:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4033af:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033b5:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033b9:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033bd:	48 8b 30             	mov    (%rax),%rsi
  4033c0:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033c5:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033ca:	e8 51 dd ff ff       	call   401120 <__memmove_chk@plt>
  4033cf:	66 c7 44 24 02 1f 91 	movw   $0x911f,0x2(%rsp)
  4033d6:	ba 10 00 00 00       	mov    $0x10,%edx
  4033db:	4c 89 e6             	mov    %r12,%rsi
  4033de:	89 df                	mov    %ebx,%edi
  4033e0:	e8 0b de ff ff       	call   4011f0 <connect@plt>
  4033e5:	85 c0                	test   %eax,%eax
  4033e7:	0f 88 e5 00 00 00    	js     4034d2 <init_driver+0x1ad>
  4033ed:	89 df                	mov    %ebx,%edi
  4033ef:	e8 dc dc ff ff       	call   4010d0 <close@plt>
  4033f4:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4033fa:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4033fe:	b8 00 00 00 00       	mov    $0x0,%eax
  403403:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403408:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40340f:	00 00 
  403411:	0f 85 2e 01 00 00    	jne    403545 <init_driver+0x220>
  403417:	48 83 c4 20          	add    $0x20,%rsp
  40341b:	5b                   	pop    %rbx
  40341c:	5d                   	pop    %rbp
  40341d:	41 5c                	pop    %r12
  40341f:	c3                   	ret
  403420:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403427:	3a 20 43 
  40342a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403431:	20 75 6e 
  403434:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403438:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40343c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403443:	74 6f 20 
  403446:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40344d:	65 20 73 
  403450:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403454:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403458:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  40345f:	65 74 00 
  403462:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403466:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40346b:	eb 96                	jmp    403403 <init_driver+0xde>
  40346d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403474:	3a 20 44 
  403477:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40347e:	20 75 6e 
  403481:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403485:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403489:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403490:	74 6f 20 
  403493:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40349a:	76 65 20 
  40349d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034a1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034a5:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4034ac:	65 72 20 
  4034af:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034b6:	73 73 00 
  4034b9:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034bd:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034c1:	89 df                	mov    %ebx,%edi
  4034c3:	e8 08 dc ff ff       	call   4010d0 <close@plt>
  4034c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034cd:	e9 31 ff ff ff       	jmp    403403 <init_driver+0xde>
  4034d2:	48 b8 61 75 74 6f 6c 	movabs $0x2e62616c6f747561,%rax
  4034d9:	61 62 2e 
  4034dc:	48 ba 70 6b 75 2d 69 	movabs $0x2e7363692d756b70,%rdx
  4034e3:	63 73 2e 
  4034e6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034ea:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034ee:	c7 45 10 63 6f 6d 00 	movl   $0x6d6f63,0x10(%rbp)
  4034f5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4034fc:	3a 20 55 
  4034ff:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403506:	20 74 6f 
  403509:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40350d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403511:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403518:	65 63 74 
  40351b:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403522:	65 72 76 
  403525:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403529:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40352d:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  403534:	89 df                	mov    %ebx,%edi
  403536:	e8 95 db ff ff       	call   4010d0 <close@plt>
  40353b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403540:	e9 be fe ff ff       	jmp    403403 <init_driver+0xde>
  403545:	e8 57 f1 ff ff       	call   4026a1 <__stack_chk_fail>

000000000040354a <driver_post>:
  40354a:	f3 0f 1e fa          	endbr64
  40354e:	53                   	push   %rbx
  40354f:	4c 89 cb             	mov    %r9,%rbx
  403552:	45 85 c0             	test   %r8d,%r8d
  403555:	75 18                	jne    40356f <driver_post+0x25>
  403557:	48 85 ff             	test   %rdi,%rdi
  40355a:	74 05                	je     403561 <driver_post+0x17>
  40355c:	80 3f 00             	cmpb   $0x0,(%rdi)
  40355f:	75 37                	jne    403598 <driver_post+0x4e>
  403561:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403566:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40356a:	44 89 c0             	mov    %r8d,%eax
  40356d:	5b                   	pop    %rbx
  40356e:	c3                   	ret
  40356f:	48 89 ca             	mov    %rcx,%rdx
  403572:	48 8d 35 1f 12 00 00 	lea    0x121f(%rip),%rsi        # 404798 <_IO_stdin_used+0x798>
  403579:	bf 02 00 00 00       	mov    $0x2,%edi
  40357e:	b8 00 00 00 00       	mov    $0x0,%eax
  403583:	e8 08 dc ff ff       	call   401190 <__printf_chk@plt>
  403588:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40358d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403591:	b8 00 00 00 00       	mov    $0x0,%eax
  403596:	eb d5                	jmp    40356d <driver_post+0x23>
  403598:	48 83 ec 08          	sub    $0x8,%rsp
  40359c:	41 51                	push   %r9
  40359e:	49 89 c9             	mov    %rcx,%r9
  4035a1:	49 89 d0             	mov    %rdx,%r8
  4035a4:	48 89 f9             	mov    %rdi,%rcx
  4035a7:	48 89 f2             	mov    %rsi,%rdx
  4035aa:	be 91 1f 00 00       	mov    $0x1f91,%esi
  4035af:	48 8d 3d ce 11 00 00 	lea    0x11ce(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  4035b6:	e8 ed f5 ff ff       	call   402ba8 <submitr>
  4035bb:	48 83 c4 10          	add    $0x10,%rsp
  4035bf:	eb ac                	jmp    40356d <driver_post+0x23>

00000000004035c1 <check>:
  4035c1:	f3 0f 1e fa          	endbr64
  4035c5:	89 f8                	mov    %edi,%eax
  4035c7:	c1 e8 1c             	shr    $0x1c,%eax
  4035ca:	74 1d                	je     4035e9 <check+0x28>
  4035cc:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035d1:	83 f9 1f             	cmp    $0x1f,%ecx
  4035d4:	7f 0d                	jg     4035e3 <check+0x22>
  4035d6:	89 f8                	mov    %edi,%eax
  4035d8:	d3 e8                	shr    %cl,%eax
  4035da:	3c 0a                	cmp    $0xa,%al
  4035dc:	74 11                	je     4035ef <check+0x2e>
  4035de:	83 c1 08             	add    $0x8,%ecx
  4035e1:	eb ee                	jmp    4035d1 <check+0x10>
  4035e3:	b8 01 00 00 00       	mov    $0x1,%eax
  4035e8:	c3                   	ret
  4035e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ee:	c3                   	ret
  4035ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f4:	c3                   	ret

00000000004035f5 <gencookie>:
  4035f5:	f3 0f 1e fa          	endbr64
  4035f9:	53                   	push   %rbx
  4035fa:	83 c7 01             	add    $0x1,%edi
  4035fd:	e8 3e da ff ff       	call   401040 <srandom@plt>
  403602:	e8 59 db ff ff       	call   401160 <random@plt>
  403607:	89 c3                	mov    %eax,%ebx
  403609:	89 c7                	mov    %eax,%edi
  40360b:	e8 b1 ff ff ff       	call   4035c1 <check>
  403610:	85 c0                	test   %eax,%eax
  403612:	74 ee                	je     403602 <gencookie+0xd>
  403614:	89 d8                	mov    %ebx,%eax
  403616:	5b                   	pop    %rbx
  403617:	c3                   	ret

Disassembly of section .fini:

0000000000403618 <_fini>:
  403618:	f3 0f 1e fa          	endbr64
  40361c:	48 83 ec 08          	sub    $0x8,%rsp
  403620:	48 83 c4 08          	add    $0x8,%rsp
  403624:	c3                   	ret
