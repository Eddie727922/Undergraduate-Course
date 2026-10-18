
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 4f 00 00 	mov    0x4fd1(%rip),%rax        # 405fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 4f 00 00    	push   0x4fca(%rip)        # 405ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 4f 00 00    	jmp    *0x4fcc(%rip)        # 405ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 406000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 406008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 406010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 406018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 406020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 406028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 406030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 406038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 406040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 406048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 406050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 406058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 406060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 406068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 406070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 406078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 406080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 406088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 406090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 406098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 4060a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 4060a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 4060b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 4060b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 4060c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 4f 00 00    	jmp    *0x4f02(%rip)        # 4060c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 4e 00 00    	jmp    *0x4efa(%rip)        # 4060d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 4e 00 00    	jmp    *0x4ef2(%rip)        # 4060d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 4e 00 00    	jmp    *0x4eea(%rip)        # 4060e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 4e 00 00    	jmp    *0x4ee2(%rip)        # 4060e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 4e 00 00    	jmp    *0x4eda(%rip)        # 4060f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 4e 00 00    	jmp    *0x4ed2(%rip)        # 4060f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 4e 00 00    	jmp    *0x4eca(%rip)        # 406100 <socket@GLIBC_2.2.5>
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
  40125f:	ff 15 73 4d 00 00    	call   *0x4d73(%rip)        # 405fd8 <__libc_start_main@GLIBC_2.34>
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
  401280:	b8 90 64 40 00       	mov    $0x406490,%eax
  401285:	48 3d 90 64 40 00    	cmp    $0x406490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 64 40 00       	mov    $0x406490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 64 40 00       	mov    $0x406490,%esi
  4012b5:	48 81 ee 90 64 40 00 	sub    $0x406490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 64 40 00       	mov    $0x406490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 51 00 00 00 	cmpb   $0x0,0x51ed(%rip)        # 4064e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 51 00 00 01 	movb   $0x1,0x51db(%rip)        # 4064e8 <completed.0>
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
  40132f:	83 3d fa 51 00 00 00 	cmpl   $0x0,0x51fa(%rip)        # 406530 <is_checker>
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
  4013f7:	89 3d 23 51 00 00    	mov    %edi,0x5123(%rip)        # 406520 <check_level>
  4013fd:	8b 3d 2d 4d 00 00    	mov    0x4d2d(%rip),%edi        # 406130 <target_id>
  401403:	e8 18 20 00 00       	call   403420 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 51 00 00    	mov    %eax,0x511c(%rip)        # 40652c <cookie>
  401410:	e8 0b 20 00 00       	call   403420 <gencookie>
  401415:	89 05 0d 51 00 00    	mov    %eax,0x510d(%rip)        # 406528 <authkey>
  40141b:	8b 05 0f 4d 00 00    	mov    0x4d0f(%rip),%eax        # 406130 <target_id>
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
  40144e:	48 89 05 33 50 00 00 	mov    %rax,0x5033(%rip)        # 406488 <buf_offset>
  401455:	c6 05 ec 5c 00 00 63 	movb   $0x63,0x5cec(%rip)        # 407148 <target_prefix>
  40145c:	83 3d 1d 50 00 00 00 	cmpl   $0x0,0x501d(%rip)        # 406480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 50 00 00 00 	cmpl   $0x0,0x50c4(%rip)        # 406530 <is_checker>
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
  4014a6:	e8 a5 1c 00 00       	call   403150 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 f5 0f 00 00       	call   4024cc <__stack_chk_fail>

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
  401519:	48 c7 c6 bb 23 40 00 	mov    $0x4023bb,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 61 23 40 00 	mov    $0x402361,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 15 24 40 00 	mov    $0x402415,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 4f 00 00 00 	cmpl   $0x0,0x4fdd(%rip)        # 406530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 4e 30 00 00 	lea    0x304e(%rip),%r12        # 4045aa <_IO_stdin_used+0x5aa>
  40155c:	48 8b 05 3d 4f 00 00 	mov    0x4f3d(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 4f 00 00 	mov    %rax,0x4fae(%rip)        # 406518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 6f 24 40 00 	mov    $0x40246f,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 12 30 00 00 	lea    0x3012(%rip),%r12        # 4045af <_IO_stdin_used+0x5af>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 65 30 00 00 	lea    0x3065(%rip),%rsi        # 404613 <_IO_stdin_used+0x613>
  4015ae:	48 8b 3d 0b 4f 00 00 	mov    0x4f0b(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 4f 00 00 	mov    %rax,0x4f57(%rip)        # 406518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 4e 00 00 	mov    0x4ef3(%rip),%rcx        # 4064c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 e5 2f 00 00 	lea    0x2fe5(%rip),%rdx        # 4045b9 <_IO_stdin_used+0x5b9>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 4f 00 00 	mov    0x4f00(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 4e 00 00 	mov    0x4ec0(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
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
  40163f:	48 8b 3d 7a 4e 00 00 	mov    0x4e7a(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 4e 00 00 00 	movl   $0x0,0x4e26(%rip)        # 406480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 4e 00 00 	mov    0x4e55(%rip),%rsi        # 4064c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 5a 2f 00 00 	lea    0x2f5a(%rip),%rsi        # 4045d6 <_IO_stdin_used+0x5d6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 00 00 00 00       	mov    $0x0,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 4e 00 00 00 	cmpl   $0x0,0x4e89(%rip)        # 406530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 4e 00 00 	cmp    %r14d,0x4e78(%rip)        # 406528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 4a 00 00 	mov    0x4a84(%rip),%rsi        # 406140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 b7 08 00 00       	call   401f9f <check_fail>
  4016e8:	8b 15 3e 4e 00 00    	mov    0x4e3e(%rip),%edx        # 40652c <cookie>
  4016ee:	48 8d 35 f4 2e 00 00 	lea    0x2ef4(%rip),%rsi        # 4045e9 <_IO_stdin_used+0x5e9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 4d 00 00 	mov    0x4d78(%rip),%rdi        # 406488 <buf_offset>
  401710:	e8 1d 0f 00 00       	call   402632 <stable_launch>
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
  401737:	e8 90 0d 00 00       	call   4024cc <__stack_chk_fail>

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
  401c71:	e8 56 08 00 00       	call   4024cc <__stack_chk_fail>

0000000000401c76 <getbuf>:
  401c76:	f3 0f 1e fa          	endbr64
  401c7a:	48 83 ec 38          	sub    $0x38,%rsp
  401c7e:	48 89 e7             	mov    %rsp,%rdi
  401c81:	e8 57 03 00 00       	call   401fdd <Gets>
  401c86:	b8 01 00 00 00       	mov    $0x1,%eax
  401c8b:	48 83 c4 38          	add    $0x38,%rsp
  401c8f:	c3                   	ret

0000000000401c90 <getbuf_withcanary>:
  401c90:	55                   	push   %rbp
  401c91:	48 89 e5             	mov    %rsp,%rbp
  401c94:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401c9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ca2:	00 00 
  401ca4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ca8:	31 c0                	xor    %eax,%eax
  401caa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401cb1:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401cb8:	48 89 c7             	mov    %rax,%rdi
  401cbb:	e8 1d 03 00 00       	call   401fdd <Gets>
  401cc0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401cc3:	48 98                	cltq
  401cc5:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401ccc:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401cd0:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401cd7:	ba 80 00 00 00       	mov    $0x80,%edx
  401cdc:	48 89 c6             	mov    %rax,%rsi
  401cdf:	48 89 cf             	mov    %rcx,%rdi
  401ce2:	e8 59 f4 ff ff       	call   401140 <memcpy@plt>
  401ce7:	b8 01 00 00 00       	mov    $0x1,%eax
  401cec:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401cf0:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401cf7:	00 00 
  401cf9:	74 05                	je     401d00 <getbuf_withcanary+0x70>
  401cfb:	e8 cc 07 00 00       	call   4024cc <__stack_chk_fail>
  401d00:	c9                   	leave
  401d01:	c3                   	ret

0000000000401d02 <touch1>:
  401d02:	f3 0f 1e fa          	endbr64
  401d06:	50                   	push   %rax
  401d07:	58                   	pop    %rax
  401d08:	48 83 ec 08          	sub    $0x8,%rsp
  401d0c:	c7 05 0e 48 00 00 01 	movl   $0x1,0x480e(%rip)        # 406524 <vlevel>
  401d13:	00 00 00 
  401d16:	48 8d 3d f8 28 00 00 	lea    0x28f8(%rip),%rdi        # 404615 <_IO_stdin_used+0x615>
  401d1d:	e8 5e f3 ff ff       	call   401080 <puts@plt>
  401d22:	bf 01 00 00 00       	mov    $0x1,%edi
  401d27:	e8 2e 05 00 00       	call   40225a <validate>
  401d2c:	bf 00 00 00 00       	mov    $0x0,%edi
  401d31:	e8 aa f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d36 <touch2>:
  401d36:	f3 0f 1e fa          	endbr64
  401d3a:	50                   	push   %rax
  401d3b:	58                   	pop    %rax
  401d3c:	48 83 ec 08          	sub    $0x8,%rsp
  401d40:	89 fa                	mov    %edi,%edx
  401d42:	c7 05 d8 47 00 00 02 	movl   $0x2,0x47d8(%rip)        # 406524 <vlevel>
  401d49:	00 00 00 
  401d4c:	39 3d da 47 00 00    	cmp    %edi,0x47da(%rip)        # 40652c <cookie>
  401d52:	74 2a                	je     401d7e <touch2+0x48>
  401d54:	48 8d 35 4d 24 00 00 	lea    0x244d(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401d5b:	bf 02 00 00 00       	mov    $0x2,%edi
  401d60:	b8 00 00 00 00       	mov    $0x0,%eax
  401d65:	e8 26 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d6a:	bf 02 00 00 00       	mov    $0x2,%edi
  401d6f:	e8 c1 05 00 00       	call   402335 <fail>
  401d74:	bf 00 00 00 00       	mov    $0x0,%edi
  401d79:	e8 62 f4 ff ff       	call   4011e0 <exit@plt>
  401d7e:	48 8d 35 fb 23 00 00 	lea    0x23fb(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d85:	bf 02 00 00 00       	mov    $0x2,%edi
  401d8a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d8f:	e8 fc f3 ff ff       	call   401190 <__printf_chk@plt>
  401d94:	bf 02 00 00 00       	mov    $0x2,%edi
  401d99:	e8 bc 04 00 00       	call   40225a <validate>
  401d9e:	eb d4                	jmp    401d74 <touch2+0x3e>

0000000000401da0 <hexmatch>:
  401da0:	f3 0f 1e fa          	endbr64
  401da4:	41 54                	push   %r12
  401da6:	55                   	push   %rbp
  401da7:	53                   	push   %rbx
  401da8:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp

  401dac:	89 fd                	mov    %edi,%ebp
  401dae:	48 89 f3             	mov    %rsi,%rbx
  401db1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401db8:	00 00 
  401dba:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401dbf:	31 c0                	xor    %eax,%eax

  401dc1:	e8 9a f3 ff ff       	call   401160 <random@plt>
  401dc6:	48 89 c6             	mov    %rax,%rsi
  401dc9:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401dd0:	0a d7 a3 
  401dd3:	48 f7 ea             	imul   %rdx
  401dd6:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401dda:	48 c1 f9 06          	sar    $0x6,%rcx
  401dde:	48 89 f0             	mov    %rsi,%rax
  401de1:	48 c1 f8 3f          	sar    $0x3f,%rax
  401de5:	48 29 c1             	sub    %rax,%rcx
  401de8:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401dec:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401df0:	48 c1 e0 02          	shl    $0x2,%rax
  401df4:	48 29 c6             	sub    %rax,%rsi
  401df7:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12

  401dfb:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401e00:	48 39 d6             	cmp    %rdx,%rsi
  401e03:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e07:	48 29 f2             	sub    %rsi,%rdx

  401e0a:	41 89 e8             	mov    %ebp,%r8d
  401e0d:	48 8d 0d 1e 28 00 00 	lea    0x281e(%rip),%rcx        # 404632 <_IO_stdin_used+0x632>
  401e14:	be 02 00 00 00       	mov    $0x2,%esi
  401e19:	4c 89 e7             	mov    %r12,%rdi
  401e1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e21:	e8 fa f3 ff ff       	call   401220 <__sprintf_chk@plt>

  401e26:	ba 09 00 00 00       	mov    $0x9,%edx
  401e2b:	4c 89 e6             	mov    %r12,%rsi
  401e2e:	48 89 df             	mov    %rbx,%rdi
  401e31:	e8 2a f2 ff ff       	call   401060 <strncmp@plt>
  401e36:	85 c0                	test   %eax,%eax
  401e38:	0f 94 c0             	sete   %al
  401e3b:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e40:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e47:	00 00 
  401e49:	75 0c                	jne    401e57 <hexmatch+0xb7>
  401e4b:	0f b6 c0             	movzbl %al,%eax
  
  401e4e:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e52:	5b                   	pop    %rbx
  401e53:	5d                   	pop    %rbp
  401e54:	41 5c                	pop    %r12
  401e56:	c3                   	ret
  401e57:	e8 70 06 00 00       	call   4024cc <__stack_chk_fail>

0000000000401e5c <touch3>:
  401e5c:	f3 0f 1e fa          	endbr64
  401e60:	53                   	push   %rbx
  401e61:	48 89 fb             	mov    %rdi,%rbx
  401e64:	c7 05 b6 46 00 00 03 	movl   $0x3,0x46b6(%rip)        # 406524 <vlevel>
  401e6b:	00 00 00 
  401e6e:	48 89 fe             	mov    %rdi,%rsi
  401e71:	8b 3d b5 46 00 00    	mov    0x46b5(%rip),%edi        # 40652c <cookie>
  401e77:	e8 24 ff ff ff       	call   401da0 <hexmatch>
  401e7c:	85 c0                	test   %eax,%eax
  401e7e:	74 2d                	je     401ead <touch3+0x51>
  401e80:	48 89 da             	mov    %rbx,%rdx
  401e83:	48 8d 35 46 23 00 00 	lea    0x2346(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e8a:	bf 02 00 00 00       	mov    $0x2,%edi
  401e8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e94:	e8 f7 f2 ff ff       	call   401190 <__printf_chk@plt>
  401e99:	bf 03 00 00 00       	mov    $0x3,%edi
  401e9e:	e8 b7 03 00 00       	call   40225a <validate>
  401ea3:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea8:	e8 33 f3 ff ff       	call   4011e0 <exit@plt>
  401ead:	48 89 da             	mov    %rbx,%rdx
  401eb0:	48 8d 35 41 23 00 00 	lea    0x2341(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401eb7:	bf 02 00 00 00       	mov    $0x2,%edi
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 ca f2 ff ff       	call   401190 <__printf_chk@plt>
  401ec6:	bf 03 00 00 00       	mov    $0x3,%edi
  401ecb:	e8 65 04 00 00       	call   402335 <fail>
  401ed0:	eb d1                	jmp    401ea3 <touch3+0x47>

0000000000401ed2 <test>:
  401ed2:	f3 0f 1e fa          	endbr64
  401ed6:	48 83 ec 08          	sub    $0x8,%rsp
  401eda:	b8 00 00 00 00       	mov    $0x0,%eax
  401edf:	e8 92 fd ff ff       	call   401c76 <getbuf>
  401ee4:	89 c2                	mov    %eax,%edx
  401ee6:	48 8d 35 33 23 00 00 	lea    0x2333(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401eed:	bf 02 00 00 00       	mov    $0x2,%edi
  401ef2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef7:	e8 94 f2 ff ff       	call   401190 <__printf_chk@plt>
  401efc:	48 83 c4 08          	add    $0x8,%rsp
  401f00:	c3                   	ret

0000000000401f01 <test2>:
  401f01:	f3 0f 1e fa          	endbr64
  401f05:	48 83 ec 08          	sub    $0x8,%rsp
  401f09:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0e:	e8 7d fd ff ff       	call   401c90 <getbuf_withcanary>
  401f13:	89 c2                	mov    %eax,%edx
  401f15:	48 8d 35 2c 23 00 00 	lea    0x232c(%rip),%rsi        # 404248 <_IO_stdin_used+0x248>
  401f1c:	bf 02 00 00 00       	mov    $0x2,%edi
  401f21:	b8 00 00 00 00       	mov    $0x0,%eax
  401f26:	e8 65 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f2b:	48 83 c4 08          	add    $0x8,%rsp
  401f2f:	c3                   	ret

0000000000401f30 <save_char>:
  401f30:	8b 05 0e 52 00 00    	mov    0x520e(%rip),%eax        # 407144 <gets_cnt>
  401f36:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401f3b:	7f 4a                	jg     401f87 <save_char+0x57>
  401f3d:	89 f9                	mov    %edi,%ecx
  401f3f:	c0 e9 04             	shr    $0x4,%cl
  401f42:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401f45:	4c 8d 05 c4 28 00 00 	lea    0x28c4(%rip),%r8        # 404810 <trans_char>
  401f4c:	83 e1 0f             	and    $0xf,%ecx
  401f4f:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401f54:	48 8d 0d e5 45 00 00 	lea    0x45e5(%rip),%rcx        # 406540 <gets_buf>
  401f5b:	48 63 f2             	movslq %edx,%rsi
  401f5e:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401f62:	8d 72 01             	lea    0x1(%rdx),%esi
  401f65:	83 e7 0f             	and    $0xf,%edi
  401f68:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401f6d:	48 63 f6             	movslq %esi,%rsi
  401f70:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401f74:	83 c2 02             	add    $0x2,%edx
  401f77:	48 63 d2             	movslq %edx,%rdx
  401f7a:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401f7e:	83 c0 01             	add    $0x1,%eax
  401f81:	89 05 bd 51 00 00    	mov    %eax,0x51bd(%rip)        # 407144 <gets_cnt>
  401f87:	c3                   	ret

0000000000401f88 <save_term>:
  401f88:	8b 05 b6 51 00 00    	mov    0x51b6(%rip),%eax        # 407144 <gets_cnt>
  401f8e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401f91:	48 98                	cltq
  401f93:	48 8d 15 a6 45 00 00 	lea    0x45a6(%rip),%rdx        # 406540 <gets_buf>
  401f9a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401f9e:	c3                   	ret

0000000000401f9f <check_fail>:
  401f9f:	f3 0f 1e fa          	endbr64
  401fa3:	50                   	push   %rax
  401fa4:	58                   	pop    %rax
  401fa5:	48 83 ec 08          	sub    $0x8,%rsp
  401fa9:	0f be 15 98 51 00 00 	movsbl 0x5198(%rip),%edx        # 407148 <target_prefix>
  401fb0:	4c 8d 05 89 45 00 00 	lea    0x4589(%rip),%r8        # 406540 <gets_buf>
  401fb7:	8b 0d 63 45 00 00    	mov    0x4563(%rip),%ecx        # 406520 <check_level>
  401fbd:	48 8d 35 73 26 00 00 	lea    0x2673(%rip),%rsi        # 404637 <_IO_stdin_used+0x637>
  401fc4:	bf 02 00 00 00       	mov    $0x2,%edi
  401fc9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fce:	e8 bd f1 ff ff       	call   401190 <__printf_chk@plt>
  401fd3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd8:	e8 03 f2 ff ff       	call   4011e0 <exit@plt>

0000000000401fdd <Gets>:
  401fdd:	f3 0f 1e fa          	endbr64
  401fe1:	41 54                	push   %r12
  401fe3:	55                   	push   %rbp
  401fe4:	53                   	push   %rbx
  401fe5:	49 89 fc             	mov    %rdi,%r12
  401fe8:	c7 05 52 51 00 00 00 	movl   $0x0,0x5152(%rip)        # 407144 <gets_cnt>
  401fef:	00 00 00 
  401ff2:	48 89 fb             	mov    %rdi,%rbx
  401ff5:	eb 11                	jmp    402008 <Gets+0x2b>
  401ff7:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ffb:	88 03                	mov    %al,(%rbx)
  401ffd:	0f b6 f8             	movzbl %al,%edi
  402000:	e8 2b ff ff ff       	call   401f30 <save_char>
  402005:	48 89 eb             	mov    %rbp,%rbx
  402008:	48 8b 3d 09 45 00 00 	mov    0x4509(%rip),%rdi        # 406518 <infile>
  40200f:	e8 fc f1 ff ff       	call   401210 <getc@plt>
  402014:	83 f8 ff             	cmp    $0xffffffff,%eax
  402017:	74 05                	je     40201e <Gets+0x41>
  402019:	83 f8 0a             	cmp    $0xa,%eax
  40201c:	75 d9                	jne    401ff7 <Gets+0x1a>
  40201e:	c6 03 00             	movb   $0x0,(%rbx)
  402021:	b8 00 00 00 00       	mov    $0x0,%eax
  402026:	e8 5d ff ff ff       	call   401f88 <save_term>
  40202b:	4c 89 e0             	mov    %r12,%rax
  40202e:	5b                   	pop    %rbx
  40202f:	5d                   	pop    %rbp
  402030:	41 5c                	pop    %r12
  402032:	c3                   	ret

0000000000402033 <notify_server>:
  402033:	f3 0f 1e fa          	endbr64
  402037:	55                   	push   %rbp
  402038:	53                   	push   %rbx
  402039:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402040:	ff 
  402041:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402048:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40204d:	4c 39 dc             	cmp    %r11,%rsp
  402050:	75 ef                	jne    402041 <notify_server+0xe>
  402052:	48 83 ec 18          	sub    $0x18,%rsp
  402056:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40205d:	00 00 
  40205f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402066:	00 
  402067:	31 c0                	xor    %eax,%eax
  402069:	83 3d c0 44 00 00 00 	cmpl   $0x0,0x44c0(%rip)        # 406530 <is_checker>
  402070:	0f 85 c2 01 00 00    	jne    402238 <notify_server+0x205>
  402076:	89 fb                	mov    %edi,%ebx
  402078:	81 3d c2 50 00 00 9c 	cmpl   $0x1f9c,0x50c2(%rip)        # 407144 <gets_cnt>
  40207f:	1f 00 00 
  402082:	0f 8f bd 00 00 00    	jg     402145 <notify_server+0x112>
  402088:	0f be 05 b9 50 00 00 	movsbl 0x50b9(%rip),%eax        # 407148 <target_prefix>
  40208f:	83 3d ea 43 00 00 00 	cmpl   $0x0,0x43ea(%rip)        # 406480 <notify>
  402096:	0f 84 c4 00 00 00    	je     402160 <notify_server+0x12d>
  40209c:	8b 15 86 44 00 00    	mov    0x4486(%rip),%edx        # 406528 <authkey>
  4020a2:	85 db                	test   %ebx,%ebx
  4020a4:	0f 84 c0 00 00 00    	je     40216a <notify_server+0x137>
  4020aa:	48 8d 2d 9c 25 00 00 	lea    0x259c(%rip),%rbp        # 40464d <_IO_stdin_used+0x64d>
  4020b1:	48 89 e7             	mov    %rsp,%rdi
  4020b4:	48 8d 0d 85 44 00 00 	lea    0x4485(%rip),%rcx        # 406540 <gets_buf>
  4020bb:	51                   	push   %rcx
  4020bc:	56                   	push   %rsi
  4020bd:	50                   	push   %rax
  4020be:	52                   	push   %rdx
  4020bf:	49 89 e9             	mov    %rbp,%r9
  4020c2:	44 8b 05 67 40 00 00 	mov    0x4067(%rip),%r8d        # 406130 <target_id>
  4020c9:	48 8d 0d 87 25 00 00 	lea    0x2587(%rip),%rcx        # 404657 <_IO_stdin_used+0x657>
  4020d0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020d5:	be 02 00 00 00       	mov    $0x2,%esi
  4020da:	b8 00 00 00 00       	mov    $0x0,%eax
  4020df:	e8 3c f1 ff ff       	call   401220 <__sprintf_chk@plt>
  4020e4:	48 83 c4 20          	add    $0x20,%rsp
  4020e8:	83 3d 91 43 00 00 00 	cmpl   $0x0,0x4391(%rip)        # 406480 <notify>
  4020ef:	0f 84 ba 00 00 00    	je     4021af <notify_server+0x17c>
  4020f5:	48 89 e1             	mov    %rsp,%rcx
  4020f8:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4020ff:	00 
  402100:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402106:	48 8b 15 3b 40 00 00 	mov    0x403b(%rip),%rdx        # 406148 <lab>
  40210d:	48 8b 35 3c 40 00 00 	mov    0x403c(%rip),%rsi        # 406150 <course>
  402114:	48 8b 3d 25 40 00 00 	mov    0x4025(%rip),%rdi        # 406140 <user_id>
  40211b:	e8 55 12 00 00       	call   403375 <driver_post>
  402120:	85 c0                	test   %eax,%eax
  402122:	78 52                	js     402176 <notify_server+0x143>
  402124:	85 db                	test   %ebx,%ebx
  402126:	74 76                	je     40219e <notify_server+0x16b>
  402128:	48 8d 3d 79 21 00 00 	lea    0x2179(%rip),%rdi        # 4042a8 <_IO_stdin_used+0x2a8>
  40212f:	e8 4c ef ff ff       	call   401080 <puts@plt>
  402134:	48 8d 3d 44 25 00 00 	lea    0x2544(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  40213b:	e8 40 ef ff ff       	call   401080 <puts@plt>
  402140:	e9 f3 00 00 00       	jmp    402238 <notify_server+0x205>
  402145:	48 8d 35 2c 21 00 00 	lea    0x212c(%rip),%rsi        # 404278 <_IO_stdin_used+0x278>
  40214c:	bf 02 00 00 00       	mov    $0x2,%edi
  402151:	e8 3a f0 ff ff       	call   401190 <__printf_chk@plt>
  402156:	bf 01 00 00 00       	mov    $0x1,%edi
  40215b:	e8 80 f0 ff ff       	call   4011e0 <exit@plt>
  402160:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402165:	e9 38 ff ff ff       	jmp    4020a2 <notify_server+0x6f>
  40216a:	48 8d 2d e1 24 00 00 	lea    0x24e1(%rip),%rbp        # 404652 <_IO_stdin_used+0x652>
  402171:	e9 3b ff ff ff       	jmp    4020b1 <notify_server+0x7e>
  402176:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40217d:	00 
  40217e:	48 8d 35 ee 24 00 00 	lea    0x24ee(%rip),%rsi        # 404673 <_IO_stdin_used+0x673>
  402185:	bf 02 00 00 00       	mov    $0x2,%edi
  40218a:	b8 00 00 00 00       	mov    $0x0,%eax
  40218f:	e8 fc ef ff ff       	call   401190 <__printf_chk@plt>
  402194:	bf 01 00 00 00       	mov    $0x1,%edi
  402199:	e8 42 f0 ff ff       	call   4011e0 <exit@plt>
  40219e:	48 8d 3d e4 24 00 00 	lea    0x24e4(%rip),%rdi        # 404689 <_IO_stdin_used+0x689>
  4021a5:	e8 d6 ee ff ff       	call   401080 <puts@plt>
  4021aa:	e9 89 00 00 00       	jmp    402238 <notify_server+0x205>
  4021af:	48 89 ea             	mov    %rbp,%rdx
  4021b2:	48 8d 35 27 21 00 00 	lea    0x2127(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  4021b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4021be:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c3:	e8 c8 ef ff ff       	call   401190 <__printf_chk@plt>
  4021c8:	48 8b 15 71 3f 00 00 	mov    0x3f71(%rip),%rdx        # 406140 <user_id>
  4021cf:	48 8d 35 ba 24 00 00 	lea    0x24ba(%rip),%rsi        # 404690 <_IO_stdin_used+0x690>
  4021d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4021db:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e0:	e8 ab ef ff ff       	call   401190 <__printf_chk@plt>
  4021e5:	48 8b 15 64 3f 00 00 	mov    0x3f64(%rip),%rdx        # 406150 <course>
  4021ec:	48 8d 35 aa 24 00 00 	lea    0x24aa(%rip),%rsi        # 40469d <_IO_stdin_used+0x69d>
  4021f3:	bf 02 00 00 00       	mov    $0x2,%edi
  4021f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fd:	e8 8e ef ff ff       	call   401190 <__printf_chk@plt>
  402202:	48 8b 15 3f 3f 00 00 	mov    0x3f3f(%rip),%rdx        # 406148 <lab>
  402209:	48 8d 35 99 24 00 00 	lea    0x2499(%rip),%rsi        # 4046a9 <_IO_stdin_used+0x6a9>
  402210:	bf 02 00 00 00       	mov    $0x2,%edi
  402215:	b8 00 00 00 00       	mov    $0x0,%eax
  40221a:	e8 71 ef ff ff       	call   401190 <__printf_chk@plt>
  40221f:	48 89 e2             	mov    %rsp,%rdx
  402222:	48 8d 35 89 24 00 00 	lea    0x2489(%rip),%rsi        # 4046b2 <_IO_stdin_used+0x6b2>
  402229:	bf 02 00 00 00       	mov    $0x2,%edi
  40222e:	b8 00 00 00 00       	mov    $0x0,%eax
  402233:	e8 58 ef ff ff       	call   401190 <__printf_chk@plt>
  402238:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40223f:	00 
  402240:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402247:	00 00 
  402249:	75 0a                	jne    402255 <notify_server+0x222>
  40224b:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402252:	5b                   	pop    %rbx
  402253:	5d                   	pop    %rbp
  402254:	c3                   	ret
  402255:	e8 72 02 00 00       	call   4024cc <__stack_chk_fail>

000000000040225a <validate>:
  40225a:	f3 0f 1e fa          	endbr64
  40225e:	53                   	push   %rbx
  40225f:	89 fb                	mov    %edi,%ebx
  402261:	83 3d c8 42 00 00 00 	cmpl   $0x0,0x42c8(%rip)        # 406530 <is_checker>
  402268:	74 79                	je     4022e3 <validate+0x89>
  40226a:	39 3d b4 42 00 00    	cmp    %edi,0x42b4(%rip)        # 406524 <vlevel>
  402270:	75 39                	jne    4022ab <validate+0x51>
  402272:	8b 15 a8 42 00 00    	mov    0x42a8(%rip),%edx        # 406520 <check_level>
  402278:	39 fa                	cmp    %edi,%edx
  40227a:	75 45                	jne    4022c1 <validate+0x67>
  40227c:	0f be 0d c5 4e 00 00 	movsbl 0x4ec5(%rip),%ecx        # 407148 <target_prefix>
  402283:	4c 8d 0d b6 42 00 00 	lea    0x42b6(%rip),%r9        # 406540 <gets_buf>
  40228a:	41 89 f8             	mov    %edi,%r8d
  40228d:	8b 15 95 42 00 00    	mov    0x4295(%rip),%edx        # 406528 <authkey>
  402293:	48 8d 35 96 20 00 00 	lea    0x2096(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  40229a:	bf 02 00 00 00       	mov    $0x2,%edi
  40229f:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a4:	e8 e7 ee ff ff       	call   401190 <__printf_chk@plt>
  4022a9:	5b                   	pop    %rbx
  4022aa:	c3                   	ret
  4022ab:	48 8d 3d 0c 24 00 00 	lea    0x240c(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  4022b2:	e8 c9 ed ff ff       	call   401080 <puts@plt>
  4022b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022bc:	e8 de fc ff ff       	call   401f9f <check_fail>
  4022c1:	89 f9                	mov    %edi,%ecx
  4022c3:	48 8d 35 3e 20 00 00 	lea    0x203e(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4022ca:	bf 02 00 00 00       	mov    $0x2,%edi
  4022cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d4:	e8 b7 ee ff ff       	call   401190 <__printf_chk@plt>
  4022d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022de:	e8 bc fc ff ff       	call   401f9f <check_fail>
  4022e3:	39 3d 3b 42 00 00    	cmp    %edi,0x423b(%rip)        # 406524 <vlevel>
  4022e9:	74 1a                	je     402305 <validate+0xab>
  4022eb:	48 8d 3d cc 23 00 00 	lea    0x23cc(%rip),%rdi        # 4046be <_IO_stdin_used+0x6be>
  4022f2:	e8 89 ed ff ff       	call   401080 <puts@plt>
  4022f7:	89 de                	mov    %ebx,%esi
  4022f9:	bf 00 00 00 00       	mov    $0x0,%edi
  4022fe:	e8 30 fd ff ff       	call   402033 <notify_server>
  402303:	eb a4                	jmp    4022a9 <validate+0x4f>
  402305:	0f be 0d 3c 4e 00 00 	movsbl 0x4e3c(%rip),%ecx        # 407148 <target_prefix>
  40230c:	89 fa                	mov    %edi,%edx
  40230e:	48 8d 35 43 20 00 00 	lea    0x2043(%rip),%rsi        # 404358 <_IO_stdin_used+0x358>
  402315:	bf 02 00 00 00       	mov    $0x2,%edi
  40231a:	b8 00 00 00 00       	mov    $0x0,%eax
  40231f:	e8 6c ee ff ff       	call   401190 <__printf_chk@plt>
  402324:	89 de                	mov    %ebx,%esi
  402326:	bf 01 00 00 00       	mov    $0x1,%edi
  40232b:	e8 03 fd ff ff       	call   402033 <notify_server>
  402330:	e9 74 ff ff ff       	jmp    4022a9 <validate+0x4f>

0000000000402335 <fail>:
  402335:	f3 0f 1e fa          	endbr64
  402339:	48 83 ec 08          	sub    $0x8,%rsp
  40233d:	83 3d ec 41 00 00 00 	cmpl   $0x0,0x41ec(%rip)        # 406530 <is_checker>
  402344:	75 11                	jne    402357 <fail+0x22>
  402346:	89 fe                	mov    %edi,%esi
  402348:	bf 00 00 00 00       	mov    $0x0,%edi
  40234d:	e8 e1 fc ff ff       	call   402033 <notify_server>
  402352:	48 83 c4 08          	add    $0x8,%rsp
  402356:	c3                   	ret
  402357:	b8 00 00 00 00       	mov    $0x0,%eax
  40235c:	e8 3e fc ff ff       	call   401f9f <check_fail>

0000000000402361 <bushandler>:
  402361:	f3 0f 1e fa          	endbr64
  402365:	50                   	push   %rax
  402366:	58                   	pop    %rax
  402367:	48 83 ec 08          	sub    $0x8,%rsp
  40236b:	83 3d be 41 00 00 00 	cmpl   $0x0,0x41be(%rip)        # 406530 <is_checker>
  402372:	74 16                	je     40238a <bushandler+0x29>
  402374:	48 8d 3d 61 23 00 00 	lea    0x2361(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40237b:	e8 00 ed ff ff       	call   401080 <puts@plt>
  402380:	b8 00 00 00 00       	mov    $0x0,%eax
  402385:	e8 15 fc ff ff       	call   401f9f <check_fail>
  40238a:	48 8d 3d ff 1f 00 00 	lea    0x1fff(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  402391:	e8 ea ec ff ff       	call   401080 <puts@plt>
  402396:	48 8d 3d 49 23 00 00 	lea    0x2349(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  40239d:	e8 de ec ff ff       	call   401080 <puts@plt>
  4023a2:	be 00 00 00 00       	mov    $0x0,%esi
  4023a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4023ac:	e8 82 fc ff ff       	call   402033 <notify_server>
  4023b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4023b6:	e8 25 ee ff ff       	call   4011e0 <exit@plt>

00000000004023bb <seghandler>:
  4023bb:	f3 0f 1e fa          	endbr64
  4023bf:	50                   	push   %rax
  4023c0:	58                   	pop    %rax
  4023c1:	48 83 ec 08          	sub    $0x8,%rsp
  4023c5:	83 3d 64 41 00 00 00 	cmpl   $0x0,0x4164(%rip)        # 406530 <is_checker>
  4023cc:	74 16                	je     4023e4 <seghandler+0x29>
  4023ce:	48 8d 3d 27 23 00 00 	lea    0x2327(%rip),%rdi        # 4046fc <_IO_stdin_used+0x6fc>
  4023d5:	e8 a6 ec ff ff       	call   401080 <puts@plt>
  4023da:	b8 00 00 00 00       	mov    $0x0,%eax
  4023df:	e8 bb fb ff ff       	call   401f9f <check_fail>
  4023e4:	48 8d 3d c5 1f 00 00 	lea    0x1fc5(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  4023eb:	e8 90 ec ff ff       	call   401080 <puts@plt>
  4023f0:	48 8d 3d ef 22 00 00 	lea    0x22ef(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  4023f7:	e8 84 ec ff ff       	call   401080 <puts@plt>
  4023fc:	be 00 00 00 00       	mov    $0x0,%esi
  402401:	bf 00 00 00 00       	mov    $0x0,%edi
  402406:	e8 28 fc ff ff       	call   402033 <notify_server>
  40240b:	bf 01 00 00 00       	mov    $0x1,%edi
  402410:	e8 cb ed ff ff       	call   4011e0 <exit@plt>

0000000000402415 <illegalhandler>:
  402415:	f3 0f 1e fa          	endbr64
  402419:	50                   	push   %rax
  40241a:	58                   	pop    %rax
  40241b:	48 83 ec 08          	sub    $0x8,%rsp
  40241f:	83 3d 0a 41 00 00 00 	cmpl   $0x0,0x410a(%rip)        # 406530 <is_checker>
  402426:	74 16                	je     40243e <illegalhandler+0x29>
  402428:	48 8d 3d e0 22 00 00 	lea    0x22e0(%rip),%rdi        # 40470f <_IO_stdin_used+0x70f>
  40242f:	e8 4c ec ff ff       	call   401080 <puts@plt>
  402434:	b8 00 00 00 00       	mov    $0x0,%eax
  402439:	e8 61 fb ff ff       	call   401f9f <check_fail>
  40243e:	48 8d 3d 93 1f 00 00 	lea    0x1f93(%rip),%rdi        # 4043d8 <_IO_stdin_used+0x3d8>
  402445:	e8 36 ec ff ff       	call   401080 <puts@plt>
  40244a:	48 8d 3d 95 22 00 00 	lea    0x2295(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  402451:	e8 2a ec ff ff       	call   401080 <puts@plt>
  402456:	be 00 00 00 00       	mov    $0x0,%esi
  40245b:	bf 00 00 00 00       	mov    $0x0,%edi
  402460:	e8 ce fb ff ff       	call   402033 <notify_server>
  402465:	bf 01 00 00 00       	mov    $0x1,%edi
  40246a:	e8 71 ed ff ff       	call   4011e0 <exit@plt>

000000000040246f <sigalrmhandler>:
  40246f:	f3 0f 1e fa          	endbr64
  402473:	50                   	push   %rax
  402474:	58                   	pop    %rax
  402475:	48 83 ec 08          	sub    $0x8,%rsp
  402479:	83 3d b0 40 00 00 00 	cmpl   $0x0,0x40b0(%rip)        # 406530 <is_checker>
  402480:	74 16                	je     402498 <sigalrmhandler+0x29>
  402482:	48 8d 3d 9a 22 00 00 	lea    0x229a(%rip),%rdi        # 404723 <_IO_stdin_used+0x723>
  402489:	e8 f2 eb ff ff       	call   401080 <puts@plt>
  40248e:	b8 00 00 00 00       	mov    $0x0,%eax
  402493:	e8 07 fb ff ff       	call   401f9f <check_fail>
  402498:	ba 02 00 00 00       	mov    $0x2,%edx
  40249d:	48 8d 35 64 1f 00 00 	lea    0x1f64(%rip),%rsi        # 404408 <_IO_stdin_used+0x408>
  4024a4:	bf 02 00 00 00       	mov    $0x2,%edi
  4024a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ae:	e8 dd ec ff ff       	call   401190 <__printf_chk@plt>
  4024b3:	be 00 00 00 00       	mov    $0x0,%esi
  4024b8:	bf 00 00 00 00       	mov    $0x0,%edi
  4024bd:	e8 71 fb ff ff       	call   402033 <notify_server>
  4024c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4024c7:	e8 14 ed ff ff       	call   4011e0 <exit@plt>

00000000004024cc <__stack_chk_fail>:
  4024cc:	f3 0f 1e fa          	endbr64
  4024d0:	50                   	push   %rax
  4024d1:	58                   	pop    %rax
  4024d2:	48 83 ec 08          	sub    $0x8,%rsp
  4024d6:	83 3d 53 40 00 00 00 	cmpl   $0x0,0x4053(%rip)        # 406530 <is_checker>
  4024dd:	74 16                	je     4024f5 <__stack_chk_fail+0x29>
  4024df:	48 8d 3d 45 22 00 00 	lea    0x2245(%rip),%rdi        # 40472b <_IO_stdin_used+0x72b>
  4024e6:	e8 95 eb ff ff       	call   401080 <puts@plt>
  4024eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f0:	e8 aa fa ff ff       	call   401f9f <check_fail>
  4024f5:	48 8d 3d 44 1f 00 00 	lea    0x1f44(%rip),%rdi        # 404440 <_IO_stdin_used+0x440>
  4024fc:	e8 7f eb ff ff       	call   401080 <puts@plt>
  402501:	48 8d 3d de 21 00 00 	lea    0x21de(%rip),%rdi        # 4046e6 <_IO_stdin_used+0x6e6>
  402508:	e8 73 eb ff ff       	call   401080 <puts@plt>
  40250d:	be 00 00 00 00       	mov    $0x0,%esi
  402512:	bf 00 00 00 00       	mov    $0x0,%edi
  402517:	e8 17 fb ff ff       	call   402033 <notify_server>
  40251c:	bf 01 00 00 00       	mov    $0x1,%edi
  402521:	e8 ba ec ff ff       	call   4011e0 <exit@plt>

0000000000402526 <launch>:
  402526:	f3 0f 1e fa          	endbr64
  40252a:	55                   	push   %rbp
  40252b:	48 89 e5             	mov    %rsp,%rbp
  40252e:	53                   	push   %rbx
  40252f:	48 83 ec 18          	sub    $0x18,%rsp
  402533:	48 89 fa             	mov    %rdi,%rdx
  402536:	89 f3                	mov    %esi,%ebx
  402538:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40253f:	00 00 
  402541:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402545:	31 c0                	xor    %eax,%eax
  402547:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40254b:	48 89 c6             	mov    %rax,%rsi
  40254e:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402552:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402558:	48 89 e1             	mov    %rsp,%rcx
  40255b:	48 29 c1             	sub    %rax,%rcx
  40255e:	48 39 cc             	cmp    %rcx,%rsp
  402561:	74 12                	je     402575 <launch+0x4f>
  402563:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40256a:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402571:	00 00 
  402573:	eb e9                	jmp    40255e <launch+0x38>
  402575:	48 89 f0             	mov    %rsi,%rax
  402578:	25 ff 0f 00 00       	and    $0xfff,%eax
  40257d:	48 29 c4             	sub    %rax,%rsp
  402580:	48 85 c0             	test   %rax,%rax
  402583:	74 06                	je     40258b <launch+0x65>
  402585:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  40258b:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402590:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402594:	48 89 d1             	mov    %rdx,%rcx
  402597:	be f4 00 00 00       	mov    $0xf4,%esi
  40259c:	e8 2f ec ff ff       	call   4011d0 <__memset_chk@plt>
  4025a1:	48 8b 05 f8 3e 00 00 	mov    0x3ef8(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  4025a8:	48 39 05 69 3f 00 00 	cmp    %rax,0x3f69(%rip)        # 406518 <infile>
  4025af:	74 42                	je     4025f3 <launch+0xcd>
  4025b1:	c7 05 69 3f 00 00 00 	movl   $0x0,0x3f69(%rip)        # 406524 <vlevel>
  4025b8:	00 00 00 
  4025bb:	85 db                	test   %ebx,%ebx
  4025bd:	75 4c                	jne    40260b <launch+0xe5>
  4025bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c4:	e8 09 f9 ff ff       	call   401ed2 <test>
  4025c9:	83 3d 60 3f 00 00 00 	cmpl   $0x0,0x3f60(%rip)        # 406530 <is_checker>
  4025d0:	75 45                	jne    402617 <launch+0xf1>
  4025d2:	48 8d 3d 79 21 00 00 	lea    0x2179(%rip),%rdi        # 404752 <_IO_stdin_used+0x752>
  4025d9:	e8 a2 ea ff ff       	call   401080 <puts@plt>
  4025de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4025e2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4025e9:	00 00 
  4025eb:	75 40                	jne    40262d <launch+0x107>
  4025ed:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4025f1:	c9                   	leave
  4025f2:	c3                   	ret
  4025f3:	48 8d 35 40 21 00 00 	lea    0x2140(%rip),%rsi        # 40473a <_IO_stdin_used+0x73a>
  4025fa:	bf 02 00 00 00       	mov    $0x2,%edi
  4025ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402604:	e8 87 eb ff ff       	call   401190 <__printf_chk@plt>
  402609:	eb a6                	jmp    4025b1 <launch+0x8b>
  40260b:	b8 00 00 00 00       	mov    $0x0,%eax
  402610:	e8 ec f8 ff ff       	call   401f01 <test2>
  402615:	eb b2                	jmp    4025c9 <launch+0xa3>
  402617:	48 8d 3d 29 21 00 00 	lea    0x2129(%rip),%rdi        # 404747 <_IO_stdin_used+0x747>
  40261e:	e8 5d ea ff ff       	call   401080 <puts@plt>
  402623:	b8 00 00 00 00       	mov    $0x0,%eax
  402628:	e8 72 f9 ff ff       	call   401f9f <check_fail>
  40262d:	e8 9a fe ff ff       	call   4024cc <__stack_chk_fail>

0000000000402632 <stable_launch>:
  402632:	f3 0f 1e fa          	endbr64
  402636:	55                   	push   %rbp
  402637:	53                   	push   %rbx
  402638:	48 83 ec 08          	sub    $0x8,%rsp
  40263c:	89 f5                	mov    %esi,%ebp
  40263e:	48 89 3d cb 3e 00 00 	mov    %rdi,0x3ecb(%rip)        # 406510 <global_offset>
  402645:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40264b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402651:	b9 32 01 00 00       	mov    $0x132,%ecx
  402656:	ba 07 00 00 00       	mov    $0x7,%edx
  40265b:	be 00 00 10 00       	mov    $0x100000,%esi
  402660:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402665:	e8 46 ea ff ff       	call   4010b0 <mmap@plt>
  40266a:	48 89 c3             	mov    %rax,%rbx
  40266d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402673:	75 4a                	jne    4026bf <stable_launch+0x8d>
  402675:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40267c:	48 89 15 85 3e 00 00 	mov    %rdx,0x3e85(%rip)        # 406508 <stack_top>
  402683:	48 89 e0             	mov    %rsp,%rax
  402686:	48 89 d4             	mov    %rdx,%rsp
  402689:	48 89 c2             	mov    %rax,%rdx
  40268c:	48 89 15 6d 3e 00 00 	mov    %rdx,0x3e6d(%rip)        # 406500 <global_save_stack>
  402693:	89 ee                	mov    %ebp,%esi
  402695:	48 8b 3d 74 3e 00 00 	mov    0x3e74(%rip),%rdi        # 406510 <global_offset>
  40269c:	e8 85 fe ff ff       	call   402526 <launch>
  4026a1:	48 8b 05 58 3e 00 00 	mov    0x3e58(%rip),%rax        # 406500 <global_save_stack>
  4026a8:	48 89 c4             	mov    %rax,%rsp
  4026ab:	be 00 00 10 00       	mov    $0x100000,%esi
  4026b0:	48 89 df             	mov    %rbx,%rdi
  4026b3:	e8 c8 ea ff ff       	call   401180 <munmap@plt>
  4026b8:	48 83 c4 08          	add    $0x8,%rsp
  4026bc:	5b                   	pop    %rbx
  4026bd:	5d                   	pop    %rbp
  4026be:	c3                   	ret
  4026bf:	be 00 00 10 00       	mov    $0x100000,%esi
  4026c4:	48 89 c7             	mov    %rax,%rdi
  4026c7:	e8 b4 ea ff ff       	call   401180 <munmap@plt>
  4026cc:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4026d1:	48 8d 15 90 1d 00 00 	lea    0x1d90(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  4026d8:	be 02 00 00 00       	mov    $0x2,%esi
  4026dd:	48 8b 3d fc 3d 00 00 	mov    0x3dfc(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4026e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e9:	e8 12 eb ff ff       	call   401200 <__fprintf_chk@plt>
  4026ee:	bf 01 00 00 00       	mov    $0x1,%edi
  4026f3:	e8 e8 ea ff ff       	call   4011e0 <exit@plt>

00000000004026f8 <rio_readinitb>:
  4026f8:	89 37                	mov    %esi,(%rdi)
  4026fa:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402701:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402705:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402709:	c3                   	ret

000000000040270a <sigalrm_handler>:
  40270a:	f3 0f 1e fa          	endbr64
  40270e:	50                   	push   %rax
  40270f:	58                   	pop    %rax
  402710:	48 83 ec 08          	sub    $0x8,%rsp
  402714:	b9 00 00 00 00       	mov    $0x0,%ecx
  402719:	48 8d 15 70 1d 00 00 	lea    0x1d70(%rip),%rdx        # 404490 <_IO_stdin_used+0x490>
  402720:	be 02 00 00 00       	mov    $0x2,%esi
  402725:	48 8b 3d b4 3d 00 00 	mov    0x3db4(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  40272c:	b8 00 00 00 00       	mov    $0x0,%eax
  402731:	e8 ca ea ff ff       	call   401200 <__fprintf_chk@plt>
  402736:	bf 01 00 00 00       	mov    $0x1,%edi
  40273b:	e8 a0 ea ff ff       	call   4011e0 <exit@plt>

0000000000402740 <rio_writen>:
  402740:	41 55                	push   %r13
  402742:	41 54                	push   %r12
  402744:	55                   	push   %rbp
  402745:	53                   	push   %rbx
  402746:	48 83 ec 08          	sub    $0x8,%rsp
  40274a:	41 89 fc             	mov    %edi,%r12d
  40274d:	48 89 f5             	mov    %rsi,%rbp
  402750:	49 89 d5             	mov    %rdx,%r13
  402753:	48 89 d3             	mov    %rdx,%rbx
  402756:	eb 06                	jmp    40275e <rio_writen+0x1e>
  402758:	48 29 c3             	sub    %rax,%rbx
  40275b:	48 01 c5             	add    %rax,%rbp
  40275e:	48 85 db             	test   %rbx,%rbx
  402761:	74 24                	je     402787 <rio_writen+0x47>
  402763:	48 89 da             	mov    %rbx,%rdx
  402766:	48 89 ee             	mov    %rbp,%rsi
  402769:	44 89 e7             	mov    %r12d,%edi
  40276c:	e8 1f e9 ff ff       	call   401090 <write@plt>
  402771:	48 85 c0             	test   %rax,%rax
  402774:	7f e2                	jg     402758 <rio_writen+0x18>
  402776:	e8 b5 e8 ff ff       	call   401030 <__errno_location@plt>
  40277b:	83 38 04             	cmpl   $0x4,(%rax)
  40277e:	75 15                	jne    402795 <rio_writen+0x55>
  402780:	b8 00 00 00 00       	mov    $0x0,%eax
  402785:	eb d1                	jmp    402758 <rio_writen+0x18>
  402787:	4c 89 e8             	mov    %r13,%rax
  40278a:	48 83 c4 08          	add    $0x8,%rsp
  40278e:	5b                   	pop    %rbx
  40278f:	5d                   	pop    %rbp
  402790:	41 5c                	pop    %r12
  402792:	41 5d                	pop    %r13
  402794:	c3                   	ret
  402795:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40279c:	eb ec                	jmp    40278a <rio_writen+0x4a>

000000000040279e <rio_read>:
  40279e:	41 55                	push   %r13
  4027a0:	41 54                	push   %r12
  4027a2:	55                   	push   %rbp
  4027a3:	53                   	push   %rbx
  4027a4:	48 83 ec 08          	sub    $0x8,%rsp
  4027a8:	48 89 fb             	mov    %rdi,%rbx
  4027ab:	49 89 f5             	mov    %rsi,%r13
  4027ae:	49 89 d4             	mov    %rdx,%r12
  4027b1:	eb 0a                	jmp    4027bd <rio_read+0x1f>
  4027b3:	e8 78 e8 ff ff       	call   401030 <__errno_location@plt>
  4027b8:	83 38 04             	cmpl   $0x4,(%rax)
  4027bb:	75 5f                	jne    40281c <rio_read+0x7e>
  4027bd:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4027c0:	85 ed                	test   %ebp,%ebp
  4027c2:	7f 22                	jg     4027e6 <rio_read+0x48>
  4027c4:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4027c8:	8b 3b                	mov    (%rbx),%edi
  4027ca:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027cf:	48 89 ee             	mov    %rbp,%rsi
  4027d2:	e8 09 e9 ff ff       	call   4010e0 <read@plt>
  4027d7:	89 43 04             	mov    %eax,0x4(%rbx)
  4027da:	85 c0                	test   %eax,%eax
  4027dc:	78 d5                	js     4027b3 <rio_read+0x15>
  4027de:	74 45                	je     402825 <rio_read+0x87>
  4027e0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4027e4:	eb d7                	jmp    4027bd <rio_read+0x1f>
  4027e6:	89 e8                	mov    %ebp,%eax
  4027e8:	4c 39 e0             	cmp    %r12,%rax
  4027eb:	72 03                	jb     4027f0 <rio_read+0x52>
  4027ed:	44 89 e5             	mov    %r12d,%ebp
  4027f0:	4c 63 e5             	movslq %ebp,%r12
  4027f3:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4027f7:	4c 89 e2             	mov    %r12,%rdx
  4027fa:	4c 89 ef             	mov    %r13,%rdi
  4027fd:	e8 3e e9 ff ff       	call   401140 <memcpy@plt>
  402802:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402806:	8b 43 04             	mov    0x4(%rbx),%eax
  402809:	29 e8                	sub    %ebp,%eax
  40280b:	89 43 04             	mov    %eax,0x4(%rbx)
  40280e:	4c 89 e0             	mov    %r12,%rax
  402811:	48 83 c4 08          	add    $0x8,%rsp
  402815:	5b                   	pop    %rbx
  402816:	5d                   	pop    %rbp
  402817:	41 5c                	pop    %r12
  402819:	41 5d                	pop    %r13
  40281b:	c3                   	ret
  40281c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402823:	eb ec                	jmp    402811 <rio_read+0x73>
  402825:	b8 00 00 00 00       	mov    $0x0,%eax
  40282a:	eb e5                	jmp    402811 <rio_read+0x73>

000000000040282c <rio_readlineb>:
  40282c:	41 55                	push   %r13
  40282e:	41 54                	push   %r12
  402830:	55                   	push   %rbp
  402831:	53                   	push   %rbx
  402832:	48 83 ec 18          	sub    $0x18,%rsp
  402836:	49 89 fd             	mov    %rdi,%r13
  402839:	48 89 f5             	mov    %rsi,%rbp
  40283c:	49 89 d4             	mov    %rdx,%r12
  40283f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402846:	00 00 
  402848:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40284d:	31 c0                	xor    %eax,%eax
  40284f:	bb 01 00 00 00       	mov    $0x1,%ebx
  402854:	eb 18                	jmp    40286e <rio_readlineb+0x42>
  402856:	85 c0                	test   %eax,%eax
  402858:	75 65                	jne    4028bf <rio_readlineb+0x93>
  40285a:	48 83 fb 01          	cmp    $0x1,%rbx
  40285e:	75 3d                	jne    40289d <rio_readlineb+0x71>
  402860:	b8 00 00 00 00       	mov    $0x0,%eax
  402865:	eb 3d                	jmp    4028a4 <rio_readlineb+0x78>
  402867:	48 83 c3 01          	add    $0x1,%rbx
  40286b:	48 89 d5             	mov    %rdx,%rbp
  40286e:	4c 39 e3             	cmp    %r12,%rbx
  402871:	73 2a                	jae    40289d <rio_readlineb+0x71>
  402873:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402878:	ba 01 00 00 00       	mov    $0x1,%edx
  40287d:	4c 89 ef             	mov    %r13,%rdi
  402880:	e8 19 ff ff ff       	call   40279e <rio_read>
  402885:	83 f8 01             	cmp    $0x1,%eax
  402888:	75 cc                	jne    402856 <rio_readlineb+0x2a>
  40288a:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  40288e:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402893:	88 45 00             	mov    %al,0x0(%rbp)
  402896:	3c 0a                	cmp    $0xa,%al
  402898:	75 cd                	jne    402867 <rio_readlineb+0x3b>
  40289a:	48 89 d5             	mov    %rdx,%rbp
  40289d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4028a1:	48 89 d8             	mov    %rbx,%rax
  4028a4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4028a9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4028b0:	00 00 
  4028b2:	75 14                	jne    4028c8 <rio_readlineb+0x9c>
  4028b4:	48 83 c4 18          	add    $0x18,%rsp
  4028b8:	5b                   	pop    %rbx
  4028b9:	5d                   	pop    %rbp
  4028ba:	41 5c                	pop    %r12
  4028bc:	41 5d                	pop    %r13
  4028be:	c3                   	ret
  4028bf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4028c6:	eb dc                	jmp    4028a4 <rio_readlineb+0x78>
  4028c8:	e8 ff fb ff ff       	call   4024cc <__stack_chk_fail>

00000000004028cd <urlencode>:
  4028cd:	41 54                	push   %r12
  4028cf:	55                   	push   %rbp
  4028d0:	53                   	push   %rbx
  4028d1:	48 83 ec 10          	sub    $0x10,%rsp
  4028d5:	48 89 fb             	mov    %rdi,%rbx
  4028d8:	48 89 f5             	mov    %rsi,%rbp
  4028db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028e2:	00 00 
  4028e4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4028e9:	31 c0                	xor    %eax,%eax
  4028eb:	e8 b0 e7 ff ff       	call   4010a0 <strlen@plt>
  4028f0:	eb 0f                	jmp    402901 <urlencode+0x34>
  4028f2:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4028f6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4028fa:	48 83 c3 01          	add    $0x1,%rbx
  4028fe:	44 89 e0             	mov    %r12d,%eax
  402901:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402905:	85 c0                	test   %eax,%eax
  402907:	0f 84 a8 00 00 00    	je     4029b5 <urlencode+0xe8>
  40290d:	44 0f b6 03          	movzbl (%rbx),%r8d
  402911:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402915:	0f 94 c0             	sete   %al
  402918:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40291c:	0f 94 c2             	sete   %dl
  40291f:	08 d0                	or     %dl,%al
  402921:	75 cf                	jne    4028f2 <urlencode+0x25>
  402923:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402927:	74 c9                	je     4028f2 <urlencode+0x25>
  402929:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40292d:	74 c3                	je     4028f2 <urlencode+0x25>
  40292f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402933:	3c 09                	cmp    $0x9,%al
  402935:	76 bb                	jbe    4028f2 <urlencode+0x25>
  402937:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40293b:	3c 19                	cmp    $0x19,%al
  40293d:	76 b3                	jbe    4028f2 <urlencode+0x25>
  40293f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402943:	3c 19                	cmp    $0x19,%al
  402945:	76 ab                	jbe    4028f2 <urlencode+0x25>
  402947:	41 80 f8 20          	cmp    $0x20,%r8b
  40294b:	74 56                	je     4029a3 <urlencode+0xd6>
  40294d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402951:	3c 5f                	cmp    $0x5f,%al
  402953:	0f 96 c0             	setbe  %al
  402956:	41 80 f8 09          	cmp    $0x9,%r8b
  40295a:	0f 94 c2             	sete   %dl
  40295d:	08 d0                	or     %dl,%al
  40295f:	74 4f                	je     4029b0 <urlencode+0xe3>
  402961:	48 89 e7             	mov    %rsp,%rdi
  402964:	45 0f b6 c0          	movzbl %r8b,%r8d
  402968:	48 8d 0d f1 1d 00 00 	lea    0x1df1(%rip),%rcx        # 404760 <_IO_stdin_used+0x760>
  40296f:	ba 08 00 00 00       	mov    $0x8,%edx
  402974:	be 02 00 00 00       	mov    $0x2,%esi
  402979:	b8 00 00 00 00       	mov    $0x0,%eax
  40297e:	e8 9d e8 ff ff       	call   401220 <__sprintf_chk@plt>
  402983:	0f b6 04 24          	movzbl (%rsp),%eax
  402987:	88 45 00             	mov    %al,0x0(%rbp)
  40298a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40298f:	88 45 01             	mov    %al,0x1(%rbp)
  402992:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402997:	88 45 02             	mov    %al,0x2(%rbp)
  40299a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40299e:	e9 57 ff ff ff       	jmp    4028fa <urlencode+0x2d>
  4029a3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4029a7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4029ab:	e9 4a ff ff ff       	jmp    4028fa <urlencode+0x2d>
  4029b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b5:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4029ba:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029c1:	00 00 
  4029c3:	75 09                	jne    4029ce <urlencode+0x101>
  4029c5:	48 83 c4 10          	add    $0x10,%rsp
  4029c9:	5b                   	pop    %rbx
  4029ca:	5d                   	pop    %rbp
  4029cb:	41 5c                	pop    %r12
  4029cd:	c3                   	ret
  4029ce:	e8 f9 fa ff ff       	call   4024cc <__stack_chk_fail>

00000000004029d3 <submitr>:
  4029d3:	f3 0f 1e fa          	endbr64
  4029d7:	41 57                	push   %r15
  4029d9:	41 56                	push   %r14
  4029db:	41 55                	push   %r13
  4029dd:	41 54                	push   %r12
  4029df:	55                   	push   %rbp
  4029e0:	53                   	push   %rbx
  4029e1:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  4029e8:	ff 
  4029e9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4029f0:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4029f5:	4c 39 dc             	cmp    %r11,%rsp
  4029f8:	75 ef                	jne    4029e9 <submitr+0x16>
  4029fa:	48 83 ec 68          	sub    $0x68,%rsp
  4029fe:	49 89 fd             	mov    %rdi,%r13
  402a01:	41 89 f6             	mov    %esi,%r14d
  402a04:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402a09:	49 89 cc             	mov    %rcx,%r12
  402a0c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402a11:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402a16:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402a1d:	00 
  402a1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a25:	00 00 
  402a27:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402a2e:	00 
  402a2f:	31 c0                	xor    %eax,%eax
  402a31:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402a38:	00 
  402a39:	ba 00 00 00 00       	mov    $0x0,%edx
  402a3e:	be 01 00 00 00       	mov    $0x1,%esi
  402a43:	bf 02 00 00 00       	mov    $0x2,%edi
  402a48:	e8 e3 e7 ff ff       	call   401230 <socket@plt>
  402a4d:	85 c0                	test   %eax,%eax
  402a4f:	0f 88 72 02 00 00    	js     402cc7 <submitr+0x2f4>
  402a55:	89 c3                	mov    %eax,%ebx
  402a57:	4c 89 ef             	mov    %r13,%rdi
  402a5a:	e8 b1 e6 ff ff       	call   401110 <gethostbyname@plt>
  402a5f:	48 85 c0             	test   %rax,%rax
  402a62:	0f 84 ab 02 00 00    	je     402d13 <submitr+0x340>
  402a68:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402a6d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402a71:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402a76:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402a7d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402a81:	48 8b 40 18          	mov    0x18(%rax),%rax
  402a85:	48 8b 30             	mov    (%rax),%rsi
  402a88:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402a8d:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402a92:	e8 89 e6 ff ff       	call   401120 <__memmove_chk@plt>
  402a97:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402a9c:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402aa2:	ba 10 00 00 00       	mov    $0x10,%edx
  402aa7:	48 89 ee             	mov    %rbp,%rsi
  402aaa:	89 df                	mov    %ebx,%edi
  402aac:	e8 3f e7 ff ff       	call   4011f0 <connect@plt>
  402ab1:	85 c0                	test   %eax,%eax
  402ab3:	0f 88 cc 02 00 00    	js     402d85 <submitr+0x3b2>
  402ab9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402abe:	e8 dd e5 ff ff       	call   4010a0 <strlen@plt>
  402ac3:	49 89 c6             	mov    %rax,%r14
  402ac6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402acb:	e8 d0 e5 ff ff       	call   4010a0 <strlen@plt>
  402ad0:	48 89 c5             	mov    %rax,%rbp
  402ad3:	4c 89 e7             	mov    %r12,%rdi
  402ad6:	e8 c5 e5 ff ff       	call   4010a0 <strlen@plt>
  402adb:	48 01 c5             	add    %rax,%rbp
  402ade:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402ae3:	e8 b8 e5 ff ff       	call   4010a0 <strlen@plt>
  402ae8:	48 01 c5             	add    %rax,%rbp
  402aeb:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402aef:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402af6:	00 
  402af7:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402afd:	0f 87 e6 02 00 00    	ja     402de9 <submitr+0x416>
  402b03:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402b0a:	00 
  402b0b:	b9 00 04 00 00       	mov    $0x400,%ecx
  402b10:	b8 00 00 00 00       	mov    $0x0,%eax
  402b15:	48 89 f7             	mov    %rsi,%rdi
  402b18:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402b1b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b20:	e8 a8 fd ff ff       	call   4028cd <urlencode>
  402b25:	85 c0                	test   %eax,%eax
  402b27:	0f 88 2e 03 00 00    	js     402e5b <submitr+0x488>
  402b2d:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402b34:	00 
  402b35:	48 83 ec 08          	sub    $0x8,%rsp
  402b39:	41 55                	push   %r13
  402b3b:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402b42:	00 
  402b43:	50                   	push   %rax
  402b44:	41 54                	push   %r12
  402b46:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402b4b:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402b50:	48 8d 0d 61 19 00 00 	lea    0x1961(%rip),%rcx        # 4044b8 <_IO_stdin_used+0x4b8>
  402b57:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b5c:	be 02 00 00 00       	mov    $0x2,%esi
  402b61:	48 89 ef             	mov    %rbp,%rdi
  402b64:	b8 00 00 00 00       	mov    $0x0,%eax
  402b69:	e8 b2 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b6e:	48 83 c4 20          	add    $0x20,%rsp
  402b72:	48 89 ef             	mov    %rbp,%rdi
  402b75:	e8 26 e5 ff ff       	call   4010a0 <strlen@plt>
  402b7a:	48 89 c2             	mov    %rax,%rdx
  402b7d:	48 89 ee             	mov    %rbp,%rsi
  402b80:	89 df                	mov    %ebx,%edi
  402b82:	e8 b9 fb ff ff       	call   402740 <rio_writen>
  402b87:	48 85 c0             	test   %rax,%rax
  402b8a:	0f 88 53 03 00 00    	js     402ee3 <submitr+0x510>
  402b90:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402b95:	89 de                	mov    %ebx,%esi
  402b97:	48 89 ef             	mov    %rbp,%rdi
  402b9a:	e8 59 fb ff ff       	call   4026f8 <rio_readinitb>
  402b9f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ba6:	00 
  402ba7:	ba 00 20 00 00       	mov    $0x2000,%edx
  402bac:	48 89 ef             	mov    %rbp,%rdi
  402baf:	e8 78 fc ff ff       	call   40282c <rio_readlineb>
  402bb4:	48 85 c0             	test   %rax,%rax
  402bb7:	0f 8e 92 03 00 00    	jle    402f4f <submitr+0x57c>
  402bbd:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402bc2:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402bc9:	00 
  402bca:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402bd1:	00 
  402bd2:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402bd9:	00 
  402bda:	48 8d 35 86 1b 00 00 	lea    0x1b86(%rip),%rsi        # 404767 <_IO_stdin_used+0x767>
  402be1:	b8 00 00 00 00       	mov    $0x0,%eax
  402be6:	e8 85 e5 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402beb:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402bf2:	00 
  402bf3:	48 8d 35 84 1b 00 00 	lea    0x1b84(%rip),%rsi        # 40477e <_IO_stdin_used+0x77e>
  402bfa:	e8 f1 e4 ff ff       	call   4010f0 <strcmp@plt>
  402bff:	85 c0                	test   %eax,%eax
  402c01:	0f 84 c8 03 00 00    	je     402fcf <submitr+0x5fc>
  402c07:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c0e:	00 
  402c0f:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c14:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c19:	e8 0e fc ff ff       	call   40282c <rio_readlineb>
  402c1e:	48 85 c0             	test   %rax,%rax
  402c21:	7f c8                	jg     402beb <submitr+0x218>
  402c23:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c2a:	3a 20 43 
  402c2d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c34:	20 75 6e 
  402c37:	49 89 07             	mov    %rax,(%r15)
  402c3a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402c3e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c45:	74 6f 20 
  402c48:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402c4f:	68 65 61 
  402c52:	49 89 47 10          	mov    %rax,0x10(%r15)
  402c56:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402c5a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402c61:	66 72 6f 
  402c64:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402c6b:	6f 6c 61 
  402c6e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402c72:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402c76:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402c7d:	6c 61 62 
  402c80:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402c87:	65 72 00 
  402c8a:	49 89 47 29          	mov    %rax,0x29(%r15)
  402c8e:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402c92:	89 df                	mov    %ebx,%edi
  402c94:	e8 37 e4 ff ff       	call   4010d0 <close@plt>
  402c99:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c9e:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402ca5:	00 
  402ca6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402cad:	00 00 
  402caf:	0f 85 67 04 00 00    	jne    40311c <submitr+0x749>
  402cb5:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402cbc:	5b                   	pop    %rbx
  402cbd:	5d                   	pop    %rbp
  402cbe:	41 5c                	pop    %r12
  402cc0:	41 5d                	pop    %r13
  402cc2:	41 5e                	pop    %r14
  402cc4:	41 5f                	pop    %r15
  402cc6:	c3                   	ret
  402cc7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cce:	3a 20 43 
  402cd1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cd8:	20 75 6e 
  402cdb:	49 89 07             	mov    %rax,(%r15)
  402cde:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ce2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ce9:	74 6f 20 
  402cec:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402cf3:	65 20 73 
  402cf6:	49 89 47 10          	mov    %rax,0x10(%r15)
  402cfa:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402cfe:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402d05:	65 74 00 
  402d08:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402d0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d11:	eb 8b                	jmp    402c9e <submitr+0x2cb>
  402d13:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d1a:	3a 20 44 
  402d1d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d24:	20 75 6e 
  402d27:	49 89 07             	mov    %rax,(%r15)
  402d2a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d2e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d35:	74 6f 20 
  402d38:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402d3f:	76 65 20 
  402d42:	49 89 47 10          	mov    %rax,0x10(%r15)
  402d46:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402d4a:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402d51:	61 62 20 
  402d54:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402d5b:	72 20 61 
  402d5e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402d62:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402d66:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402d6d:	73 73 00 
  402d70:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402d74:	89 df                	mov    %ebx,%edi
  402d76:	e8 55 e3 ff ff       	call   4010d0 <close@plt>
  402d7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d80:	e9 19 ff ff ff       	jmp    402c9e <submitr+0x2cb>
  402d85:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d8c:	3a 20 55 
  402d8f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402d96:	20 74 6f 
  402d99:	49 89 07             	mov    %rax,(%r15)
  402d9c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402da0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402da7:	65 63 74 
  402daa:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402db1:	68 65 20 
  402db4:	49 89 47 10          	mov    %rax,0x10(%r15)
  402db8:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402dbc:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402dc3:	6c 61 62 
  402dc6:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402dcd:	65 72 00 
  402dd0:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402dd4:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402dd8:	89 df                	mov    %ebx,%edi
  402dda:	e8 f1 e2 ff ff       	call   4010d0 <close@plt>
  402ddf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402de4:	e9 b5 fe ff ff       	jmp    402c9e <submitr+0x2cb>
  402de9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402df0:	3a 20 52 
  402df3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402dfa:	20 73 74 
  402dfd:	49 89 07             	mov    %rax,(%r15)
  402e00:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e04:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402e0b:	74 6f 6f 
  402e0e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402e15:	65 2e 20 
  402e18:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e1c:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e20:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402e27:	61 73 65 
  402e2a:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402e31:	49 54 52 
  402e34:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e38:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e3c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402e43:	55 46 00 
  402e46:	49 89 47 30          	mov    %rax,0x30(%r15)
  402e4a:	89 df                	mov    %ebx,%edi
  402e4c:	e8 7f e2 ff ff       	call   4010d0 <close@plt>
  402e51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e56:	e9 43 fe ff ff       	jmp    402c9e <submitr+0x2cb>
  402e5b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e62:	3a 20 55 
  402e65:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  402e6c:	20 73 74 
  402e6f:	49 89 07             	mov    %rax,(%r15)
  402e72:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e76:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402e7d:	63 6f 6e 
  402e80:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402e87:	20 61 6e 
  402e8a:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e8e:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e92:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402e99:	67 61 6c 
  402e9c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ea3:	6e 70 72 
  402ea6:	49 89 47 20          	mov    %rax,0x20(%r15)
  402eaa:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402eae:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402eb5:	6c 65 20 
  402eb8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402ebf:	63 74 65 
  402ec2:	49 89 47 30          	mov    %rax,0x30(%r15)
  402ec6:	49 89 57 38          	mov    %rdx,0x38(%r15)
  402eca:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  402ed1:	00 
  402ed2:	89 df                	mov    %ebx,%edi
  402ed4:	e8 f7 e1 ff ff       	call   4010d0 <close@plt>
  402ed9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ede:	e9 bb fd ff ff       	jmp    402c9e <submitr+0x2cb>
  402ee3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402eea:	3a 20 43 
  402eed:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ef4:	20 75 6e 
  402ef7:	49 89 07             	mov    %rax,(%r15)
  402efa:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402efe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f05:	74 6f 20 
  402f08:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402f0f:	20 74 6f 
  402f12:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f16:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f1a:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402f21:	41 75 74 
  402f24:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402f2b:	73 65 72 
  402f2e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f32:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f36:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  402f3d:	00 
  402f3e:	89 df                	mov    %ebx,%edi
  402f40:	e8 8b e1 ff ff       	call   4010d0 <close@plt>
  402f45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4a:	e9 4f fd ff ff       	jmp    402c9e <submitr+0x2cb>
  402f4f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f56:	3a 20 43 
  402f59:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f60:	20 75 6e 
  402f63:	49 89 07             	mov    %rax,(%r15)
  402f66:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f6a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f71:	74 6f 20 
  402f74:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402f7b:	66 69 72 
  402f7e:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f82:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f86:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402f8d:	61 64 65 
  402f90:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402f97:	6d 20 41 
  402f9a:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f9e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fa2:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402fa9:	6c 61 62 
  402fac:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fb3:	65 72 00 
  402fb6:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  402fba:	49 89 57 36          	mov    %rdx,0x36(%r15)
  402fbe:	89 df                	mov    %ebx,%edi
  402fc0:	e8 0b e1 ff ff       	call   4010d0 <close@plt>
  402fc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fca:	e9 cf fc ff ff       	jmp    402c9e <submitr+0x2cb>
  402fcf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402fd6:	00 
  402fd7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402fdc:	ba 00 20 00 00       	mov    $0x2000,%edx
  402fe1:	e8 46 f8 ff ff       	call   40282c <rio_readlineb>
  402fe6:	48 85 c0             	test   %rax,%rax
  402fe9:	7e 78                	jle    403063 <submitr+0x690>
  402feb:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402ff0:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ff7:	0f 85 e6 00 00 00    	jne    4030e3 <submitr+0x710>
  402ffd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403004:	00 
  403005:	4c 89 ff             	mov    %r15,%rdi
  403008:	e8 63 e0 ff ff       	call   401070 <strcpy@plt>
  40300d:	89 df                	mov    %ebx,%edi
  40300f:	e8 bc e0 ff ff       	call   4010d0 <close@plt>
  403014:	48 8d 35 5d 17 00 00 	lea    0x175d(%rip),%rsi        # 404778 <_IO_stdin_used+0x778>
  40301b:	4c 89 ff             	mov    %r15,%rdi
  40301e:	e8 cd e0 ff ff       	call   4010f0 <strcmp@plt>
  403023:	85 c0                	test   %eax,%eax
  403025:	0f 84 73 fc ff ff    	je     402c9e <submitr+0x2cb>
  40302b:	48 8d 35 4a 17 00 00 	lea    0x174a(%rip),%rsi        # 40477c <_IO_stdin_used+0x77c>
  403032:	4c 89 ff             	mov    %r15,%rdi
  403035:	e8 b6 e0 ff ff       	call   4010f0 <strcmp@plt>
  40303a:	85 c0                	test   %eax,%eax
  40303c:	0f 84 5c fc ff ff    	je     402c9e <submitr+0x2cb>
  403042:	48 8d 35 38 17 00 00 	lea    0x1738(%rip),%rsi        # 404781 <_IO_stdin_used+0x781>
  403049:	4c 89 ff             	mov    %r15,%rdi
  40304c:	e8 9f e0 ff ff       	call   4010f0 <strcmp@plt>
  403051:	85 c0                	test   %eax,%eax
  403053:	0f 84 45 fc ff ff    	je     402c9e <submitr+0x2cb>
  403059:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40305e:	e9 3b fc ff ff       	jmp    402c9e <submitr+0x2cb>
  403063:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40306a:	3a 20 43 
  40306d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403074:	20 75 6e 
  403077:	49 89 07             	mov    %rax,(%r15)
  40307a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40307e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403085:	74 6f 20 
  403088:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40308f:	73 74 61 
  403092:	49 89 47 10          	mov    %rax,0x10(%r15)
  403096:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40309a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4030a1:	65 73 73 
  4030a4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4030ab:	72 6f 6d 
  4030ae:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030b2:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030b6:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4030bd:	6c 61 62 
  4030c0:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4030c7:	65 72 00 
  4030ca:	49 89 47 30          	mov    %rax,0x30(%r15)
  4030ce:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4030d2:	89 df                	mov    %ebx,%edi
  4030d4:	e8 f7 df ff ff       	call   4010d0 <close@plt>
  4030d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030de:	e9 bb fb ff ff       	jmp    402c9e <submitr+0x2cb>
  4030e3:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4030ea:	00 
  4030eb:	48 8d 0d 1e 14 00 00 	lea    0x141e(%rip),%rcx        # 404510 <_IO_stdin_used+0x510>
  4030f2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4030f9:	be 02 00 00 00       	mov    $0x2,%esi
  4030fe:	4c 89 ff             	mov    %r15,%rdi
  403101:	b8 00 00 00 00       	mov    $0x0,%eax
  403106:	e8 15 e1 ff ff       	call   401220 <__sprintf_chk@plt>
  40310b:	89 df                	mov    %ebx,%edi
  40310d:	e8 be df ff ff       	call   4010d0 <close@plt>
  403112:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403117:	e9 82 fb ff ff       	jmp    402c9e <submitr+0x2cb>
  40311c:	e8 ab f3 ff ff       	call   4024cc <__stack_chk_fail>

0000000000403121 <init_timeout>:
  403121:	f3 0f 1e fa          	endbr64
  403125:	85 ff                	test   %edi,%edi
  403127:	74 26                	je     40314f <init_timeout+0x2e>
  403129:	53                   	push   %rbx
  40312a:	89 fb                	mov    %edi,%ebx
  40312c:	78 1a                	js     403148 <init_timeout+0x27>
  40312e:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 40270a <sigalrm_handler>
  403135:	bf 0e 00 00 00       	mov    $0xe,%edi
  40313a:	e8 c1 df ff ff       	call   401100 <signal@plt>
  40313f:	89 df                	mov    %ebx,%edi
  403141:	e8 7a df ff ff       	call   4010c0 <alarm@plt>
  403146:	5b                   	pop    %rbx
  403147:	c3                   	ret
  403148:	bb 00 00 00 00       	mov    $0x0,%ebx
  40314d:	eb df                	jmp    40312e <init_timeout+0xd>
  40314f:	c3                   	ret

0000000000403150 <init_driver>:
  403150:	f3 0f 1e fa          	endbr64
  403154:	41 54                	push   %r12
  403156:	55                   	push   %rbp
  403157:	53                   	push   %rbx
  403158:	48 83 ec 20          	sub    $0x20,%rsp
  40315c:	48 89 fd             	mov    %rdi,%rbp
  40315f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403166:	00 00 
  403168:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40316d:	31 c0                	xor    %eax,%eax
  40316f:	be 01 00 00 00       	mov    $0x1,%esi
  403174:	bf 0d 00 00 00       	mov    $0xd,%edi
  403179:	e8 82 df ff ff       	call   401100 <signal@plt>
  40317e:	be 01 00 00 00       	mov    $0x1,%esi
  403183:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403188:	e8 73 df ff ff       	call   401100 <signal@plt>
  40318d:	be 01 00 00 00       	mov    $0x1,%esi
  403192:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403197:	e8 64 df ff ff       	call   401100 <signal@plt>
  40319c:	ba 00 00 00 00       	mov    $0x0,%edx
  4031a1:	be 01 00 00 00       	mov    $0x1,%esi
  4031a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4031ab:	e8 80 e0 ff ff       	call   401230 <socket@plt>
  4031b0:	85 c0                	test   %eax,%eax
  4031b2:	0f 88 93 00 00 00    	js     40324b <init_driver+0xfb>
  4031b8:	89 c3                	mov    %eax,%ebx
  4031ba:	48 8d 3d c3 15 00 00 	lea    0x15c3(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  4031c1:	e8 4a df ff ff       	call   401110 <gethostbyname@plt>
  4031c6:	48 85 c0             	test   %rax,%rax
  4031c9:	0f 84 c9 00 00 00    	je     403298 <init_driver+0x148>
  4031cf:	49 89 e4             	mov    %rsp,%r12
  4031d2:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4031d6:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4031da:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4031e0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4031e4:	48 8b 40 18          	mov    0x18(%rax),%rax
  4031e8:	48 8b 30             	mov    (%rax),%rsi
  4031eb:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4031f0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4031f5:	e8 26 df ff ff       	call   401120 <__memmove_chk@plt>
  4031fa:	66 c7 44 24 02 1f 91 	movw   $0x911f,0x2(%rsp)
  403201:	ba 10 00 00 00       	mov    $0x10,%edx
  403206:	4c 89 e6             	mov    %r12,%rsi
  403209:	89 df                	mov    %ebx,%edi
  40320b:	e8 e0 df ff ff       	call   4011f0 <connect@plt>
  403210:	85 c0                	test   %eax,%eax
  403212:	0f 88 e5 00 00 00    	js     4032fd <init_driver+0x1ad>
  403218:	89 df                	mov    %ebx,%edi
  40321a:	e8 b1 de ff ff       	call   4010d0 <close@plt>
  40321f:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403225:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403229:	b8 00 00 00 00       	mov    $0x0,%eax
  40322e:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403233:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40323a:	00 00 
  40323c:	0f 85 2e 01 00 00    	jne    403370 <init_driver+0x220>
  403242:	48 83 c4 20          	add    $0x20,%rsp
  403246:	5b                   	pop    %rbx
  403247:	5d                   	pop    %rbp
  403248:	41 5c                	pop    %r12
  40324a:	c3                   	ret
  40324b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403252:	3a 20 43 
  403255:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40325c:	20 75 6e 
  40325f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403263:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403267:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40326e:	74 6f 20 
  403271:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403278:	65 20 73 
  40327b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40327f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403283:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  40328a:	65 74 00 
  40328d:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403291:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403296:	eb 96                	jmp    40322e <init_driver+0xde>
  403298:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40329f:	3a 20 44 
  4032a2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4032a9:	20 75 6e 
  4032ac:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032b0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032b4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032bb:	74 6f 20 
  4032be:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4032c5:	76 65 20 
  4032c8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032cc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032d0:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4032d7:	65 72 20 
  4032da:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4032e1:	73 73 00 
  4032e4:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4032e8:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4032ec:	89 df                	mov    %ebx,%edi
  4032ee:	e8 dd dd ff ff       	call   4010d0 <close@plt>
  4032f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032f8:	e9 31 ff ff ff       	jmp    40322e <init_driver+0xde>
  4032fd:	48 b8 61 75 74 6f 6c 	movabs $0x2e62616c6f747561,%rax
  403304:	61 62 2e 
  403307:	48 ba 70 6b 75 2d 69 	movabs $0x2e7363692d756b70,%rdx
  40330e:	63 73 2e 
  403311:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403315:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403319:	c7 45 10 63 6f 6d 00 	movl   $0x6d6f63,0x10(%rbp)
  403320:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403327:	3a 20 55 
  40332a:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403331:	20 74 6f 
  403334:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403338:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40333c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403343:	65 63 74 
  403346:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40334d:	65 72 76 
  403350:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403354:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403358:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40335f:	89 df                	mov    %ebx,%edi
  403361:	e8 6a dd ff ff       	call   4010d0 <close@plt>
  403366:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40336b:	e9 be fe ff ff       	jmp    40322e <init_driver+0xde>
  403370:	e8 57 f1 ff ff       	call   4024cc <__stack_chk_fail>

0000000000403375 <driver_post>:
  403375:	f3 0f 1e fa          	endbr64
  403379:	53                   	push   %rbx
  40337a:	4c 89 cb             	mov    %r9,%rbx
  40337d:	45 85 c0             	test   %r8d,%r8d
  403380:	75 18                	jne    40339a <driver_post+0x25>
  403382:	48 85 ff             	test   %rdi,%rdi
  403385:	74 05                	je     40338c <driver_post+0x17>
  403387:	80 3f 00             	cmpb   $0x0,(%rdi)
  40338a:	75 37                	jne    4033c3 <driver_post+0x4e>
  40338c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403391:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403395:	44 89 c0             	mov    %r8d,%eax
  403398:	5b                   	pop    %rbx
  403399:	c3                   	ret
  40339a:	48 89 ca             	mov    %rcx,%rdx
  40339d:	48 8d 35 f4 13 00 00 	lea    0x13f4(%rip),%rsi        # 404798 <_IO_stdin_used+0x798>
  4033a4:	bf 02 00 00 00       	mov    $0x2,%edi
  4033a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4033ae:	e8 dd dd ff ff       	call   401190 <__printf_chk@plt>
  4033b3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4033b8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4033bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4033c1:	eb d5                	jmp    403398 <driver_post+0x23>
  4033c3:	48 83 ec 08          	sub    $0x8,%rsp
  4033c7:	41 51                	push   %r9
  4033c9:	49 89 c9             	mov    %rcx,%r9
  4033cc:	49 89 d0             	mov    %rdx,%r8
  4033cf:	48 89 f9             	mov    %rdi,%rcx
  4033d2:	48 89 f2             	mov    %rsi,%rdx
  4033d5:	be 91 1f 00 00       	mov    $0x1f91,%esi
  4033da:	48 8d 3d a3 13 00 00 	lea    0x13a3(%rip),%rdi        # 404784 <_IO_stdin_used+0x784>
  4033e1:	e8 ed f5 ff ff       	call   4029d3 <submitr>
  4033e6:	48 83 c4 10          	add    $0x10,%rsp
  4033ea:	eb ac                	jmp    403398 <driver_post+0x23>

00000000004033ec <check>:
  4033ec:	f3 0f 1e fa          	endbr64
  4033f0:	89 f8                	mov    %edi,%eax
  4033f2:	c1 e8 1c             	shr    $0x1c,%eax
  4033f5:	74 1d                	je     403414 <check+0x28>
  4033f7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4033fc:	83 f9 1f             	cmp    $0x1f,%ecx
  4033ff:	7f 0d                	jg     40340e <check+0x22>
  403401:	89 f8                	mov    %edi,%eax
  403403:	d3 e8                	shr    %cl,%eax
  403405:	3c 0a                	cmp    $0xa,%al
  403407:	74 11                	je     40341a <check+0x2e>
  403409:	83 c1 08             	add    $0x8,%ecx
  40340c:	eb ee                	jmp    4033fc <check+0x10>
  40340e:	b8 01 00 00 00       	mov    $0x1,%eax
  403413:	c3                   	ret
  403414:	b8 00 00 00 00       	mov    $0x0,%eax
  403419:	c3                   	ret
  40341a:	b8 00 00 00 00       	mov    $0x0,%eax
  40341f:	c3                   	ret

0000000000403420 <gencookie>:
  403420:	f3 0f 1e fa          	endbr64
  403424:	53                   	push   %rbx
  403425:	83 c7 01             	add    $0x1,%edi
  403428:	e8 13 dc ff ff       	call   401040 <srandom@plt>
  40342d:	e8 2e dd ff ff       	call   401160 <random@plt>
  403432:	89 c3                	mov    %eax,%ebx
  403434:	89 c7                	mov    %eax,%edi
  403436:	e8 b1 ff ff ff       	call   4033ec <check>
  40343b:	85 c0                	test   %eax,%eax
  40343d:	74 ee                	je     40342d <gencookie+0xd>
  40343f:	89 d8                	mov    %ebx,%eax
  403441:	5b                   	pop    %rbx
  403442:	c3                   	ret

Disassembly of section .fini:

0000000000403444 <_fini>:
  403444:	f3 0f 1e fa          	endbr64
  403448:	48 83 ec 08          	sub    $0x8,%rsp
  40344c:	48 83 c4 08          	add    $0x8,%rsp
  403450:	c3                   	ret
