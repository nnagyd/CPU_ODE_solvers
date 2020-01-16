GAS LISTING /tmp/ccsdvWVI.s 			page 1


   1              		.file	"RKCK45_unions.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4904:
   6              		.cfi_startproc
   7 0000 50       		pushq	%rax
   8              		.cfi_def_cfa_offset 16
   9 0001 488B07   		movq	(%rdi), %rax
  10 0004 480378E8 		addq	-24(%rax), %rdi
  11 0008 8B7720   		movl	32(%rdi), %esi
  12 000b 83CE01   		orl	$1, %esi
  13 000e E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
  13      00
  14 0013 5A       		popq	%rdx
  15              		.cfi_def_cfa_offset 8
  16 0014 C3       		ret
  17              		.cfi_endproc
  18              	.LFE4904:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4636:
  26              		.cfi_startproc
  27 0000 53       		pushq	%rbx
  28              		.cfi_def_cfa_offset 16
  29              		.cfi_offset 3, -16
  30 0001 4863F7   		movslq	%edi, %rsi
  31 0004 89FB     		movl	%edi, %ebx
  32 0006 48C1E603 		salq	$3, %rsi
  33 000a BF400000 		movl	$64, %edi
  33      00
  34 000f 4883EC10 		subq	$16, %rsp
  35              		.cfi_def_cfa_offset 32
  36 0013 C5FB1144 		vmovsd	%xmm0, 8(%rsp)
  36      2408
  37 0019 C5FB110C 		vmovsd	%xmm1, (%rsp)
  37      24
  38 001e E8000000 		call	aligned_alloc
  38      00
  39 0023 8D53FF   		leal	-1(%rbx), %edx
  40 0026 C5FB1044 		vmovsd	8(%rsp), %xmm0
  40      2408
  41 002c C5FB100C 		vmovsd	(%rsp), %xmm1
  41      24
  42 0031 83FB01   		cmpl	$1, %ebx
  43 0034 C5EB2AD2 		vcvtsi2sd	%edx, %xmm2, %xmm2
  44 0038 C5F35CC8 		vsubsd	%xmm0, %xmm1, %xmm1
  45 003c C5FB1100 		vmovsd	%xmm0, (%rax)
  46 0040 C5F35ECA 		vdivsd	%xmm2, %xmm1, %xmm1
  47 0044 7E24     		jle	.L8
  48 0046 8D4BFE   		leal	-2(%rbx), %ecx
  49 0049 488D5008 		leaq	8(%rax), %rdx
  50 004d 488D4CC8 		leaq	16(%rax,%rcx,8), %rcx
GAS LISTING /tmp/ccsdvWVI.s 			page 2


  50      10
  51              		.p2align 4,,10
  52 0052 660F1F44 		.p2align 3
  52      0000
  53              	.L6:
  54 0058 C5F358C0 		vaddsd	%xmm0, %xmm1, %xmm0
  55 005c 4883C208 		addq	$8, %rdx
  56 0060 C5FB1142 		vmovsd	%xmm0, -8(%rdx)
  56      F8
  57 0065 4839CA   		cmpq	%rcx, %rdx
  58 0068 75EE     		jne	.L6
  59              	.L8:
  60 006a 4883C410 		addq	$16, %rsp
  61              		.cfi_def_cfa_offset 16
  62 006e 5B       		popq	%rbx
  63              		.cfi_def_cfa_offset 8
  64 006f C3       		ret
  65              		.cfi_endproc
  66              	.LFE4636:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.8,"aMS",@progbits,1
  69              		.align 8
  70              	.LC75:
  71 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  72              		.section	.rodata.str1.1,"aMS",@progbits,1
  73              	.LC76:
  74 0000 09207020 		.string	"\t p = "
  74      3D2000
  75              	.LC77:
  76 0007 09207800 		.string	"\t x"
  77              	.LC78:
  78 000b 0A00     		.string	"\n"
  79              	.LC80:
  80 000d 456C6170 		.string	"Elapsed time: "
  80      73656420 
  80      74696D65 
  80      3A2000
  81              	.LC81:
  82 001c 206D7300 		.string	" ms"
  83              		.section	.text.startup,"ax",@progbits
  84              		.p2align 4,,15
  85              		.globl	main
  86              		.type	main, @function
  87              	main:
  88              	.LFB4635:
  89              		.cfi_startproc
  90 0000 55       		pushq	%rbp
  91              		.cfi_def_cfa_offset 16
  92              		.cfi_offset 6, -16
  93 0001 4889E5   		movq	%rsp, %rbp
  94              		.cfi_def_cfa_register 6
  95 0004 4157     		pushq	%r15
  96 0006 4156     		pushq	%r14
GAS LISTING /tmp/ccsdvWVI.s 			page 3


  97 0008 4155     		pushq	%r13
  98 000a 4154     		pushq	%r12
  99 000c 53       		pushq	%rbx
 100 000d 4883E4E0 		andq	$-32, %rsp
 101 0011 4881ECE0 		subq	$9952, %rsp
 101      260000
 102              		.cfi_offset 15, -24
 103              		.cfi_offset 14, -32
 104              		.cfi_offset 13, -40
 105              		.cfi_offset 12, -48
 106              		.cfi_offset 3, -56
 107 0018 488D8424 		leaq	352(%rsp), %rax
 107      60010000 
 108 0020 C57D282D 		vmovapd	.LC0(%rip), %ymm13
 108      00000000 
 109 0028 488D90C0 		leaq	960(%rax), %rdx
 109      030000
 110              	.L13:
 111 002f C57D2928 		vmovapd	%ymm13, (%rax)
 112 0033 4883C020 		addq	$32, %rax
 113 0037 4839D0   		cmpq	%rdx, %rax
 114 003a 75F3     		jne	.L13
 115 003c C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 116 0040 BF809D00 		movl	$40320, %edi
 116      00
 117 0045 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 117      00000000 
 118 004d C57D29AC 		vmovapd	%ymm13, 288(%rsp)
 118      24200100 
 118      00
 119 0056 C5F877   		vzeroupper
 120 0059 E8000000 		call	_Z8linspaceddi
 120      00
 121 005e 4889C3   		movq	%rax, %rbx
 122 0061 4531E4   		xorl	%r12d, %r12d
 123 0064 E8000000 		call	clock
 123      00
 124 0069 C5F8280D 		vmovaps	.LC53(%rip), %xmm1
 124      00000000 
 125 0071 48898424 		movq	%rax, 184(%rsp)
 125      B8000000 
 126 0079 C5F828C1 		vmovaps	%xmm1, %xmm0
 127 007d C5FD281D 		vmovapd	.LC3(%rip), %ymm3
 127      00000000 
 128 0085 C57D2825 		vmovapd	.LC4(%rip), %ymm12
 128      00000000 
 129 008d C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm1
 129      C901
 130 0093 C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 130      00000000 
 131 009b C57D2835 		vmovapd	.LC35(%rip), %ymm14
 131      00000000 
 132 00a3 C57D28AC 		vmovapd	288(%rsp), %ymm13
 132      24200100 
 132      00
 133 00ac C5FC298C 		vmovaps	%ymm1, 192(%rsp)
 133      24C00000 
GAS LISTING /tmp/ccsdvWVI.s 			page 4


 133      00
 134 00b5 C5F5570D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 134      00000000 
 135 00bd C5FD298C 		vmovapd	%ymm1, 224(%rsp)
 135      24E00000 
 135      00
 136              	.L14:
 137 00c6 C5FD2803 		vmovapd	(%rbx), %ymm0
 138 00ca B9780000 		movl	$120, %ecx
 138      00
 139 00cf 488DBC24 		leaq	8032(%rsp), %rdi
 139      601F0000 
 140 00d7 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 140      00000000 
 141 00df 488DB424 		leaq	352(%rsp), %rsi
 141      60010000 
 142 00e7 31D2     		xorl	%edx, %edx
 143 00e9 C5FD2984 		vmovapd	%ymm0, 9632(%rsp)
 143      24A02500 
 143      00
 144 00f2 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 145 00f6 C5FD298C 		vmovapd	%ymm1, 9312(%rsp)
 145      24602400 
 145      00
 146 00ff 4531ED   		xorl	%r13d, %r13d
 147 0102 4C8D8424 		leaq	1632(%rsp), %r8
 147      60060000 
 148 010a 4C8D8C24 		leaq	9632(%rsp), %r9
 148      A0250000 
 149 0112 C5FD2984 		vmovapd	%ymm0, 8992(%rsp)
 149      24202300 
 149      00
 150 011b C5FD284B 		vmovapd	32(%rbx), %ymm1
 150      20
 151 0120 C5FD2984 		vmovapd	%ymm0, 9024(%rsp)
 151      24402300 
 151      00
 152 0129 C5FD298C 		vmovapd	%ymm1, 9664(%rsp)
 152      24C02500 
 152      00
 153 0132 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 153      00000000 
 154 013a C5FD298C 		vmovapd	%ymm1, 9344(%rsp)
 154      24802400 
 154      00
 155 0143 C5FD284B 		vmovapd	64(%rbx), %ymm1
 155      40
 156 0148 C5FD2984 		vmovapd	%ymm0, 9056(%rsp)
 156      24602300 
 156      00
 157 0151 C5FD298C 		vmovapd	%ymm1, 9696(%rsp)
 157      24E02500 
 157      00
 158 015a C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 158      00000000 
 159 0162 C5FD298C 		vmovapd	%ymm1, 9376(%rsp)
 159      24A02400 
GAS LISTING /tmp/ccsdvWVI.s 			page 5


 159      00
 160 016b C5FD284B 		vmovapd	96(%rbx), %ymm1
 160      60
 161 0170 C5FD2984 		vmovapd	%ymm0, 9088(%rsp)
 161      24802300 
 161      00
 162 0179 C5FD298C 		vmovapd	%ymm1, 9728(%rsp)
 162      24002600 
 162      00
 163 0182 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 163      00000000 
 164 018a C5FD298C 		vmovapd	%ymm1, 9408(%rsp)
 164      24C02400 
 164      00
 165 0193 C5FD288B 		vmovapd	128(%rbx), %ymm1
 165      80000000 
 166 019b C5FD2984 		vmovapd	%ymm0, 9120(%rsp)
 166      24A02300 
 166      00
 167 01a4 C5FD298C 		vmovapd	%ymm1, 9760(%rsp)
 167      24202600 
 167      00
 168 01ad C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 168      00000000 
 169 01b5 C5FD298C 		vmovapd	%ymm1, 9440(%rsp)
 169      24E02400 
 169      00
 170 01be C5FD288B 		vmovapd	160(%rbx), %ymm1
 170      A0000000 
 171 01c6 C5FD2984 		vmovapd	%ymm0, 9152(%rsp)
 171      24C02300 
 171      00
 172 01cf C5FD298C 		vmovapd	%ymm1, 9792(%rsp)
 172      24402600 
 172      00
 173 01d8 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 173      00000000 
 174 01e0 C5FD298C 		vmovapd	%ymm1, 9472(%rsp)
 174      24002500 
 174      00
 175 01e9 C5FD288B 		vmovapd	192(%rbx), %ymm1
 175      C0000000 
 176 01f1 C5FD298C 		vmovapd	%ymm1, 9824(%rsp)
 176      24602600 
 176      00
 177 01fa C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 177      00000000 
 178 0202 C5FD298C 		vmovapd	%ymm1, 9504(%rsp)
 178      24202500 
 178      00
 179 020b C5FD2984 		vmovapd	%ymm0, 9184(%rsp)
 179      24E02300 
 179      00
 180 0214 C5FD288B 		vmovapd	224(%rbx), %ymm1
 180      E0000000 
 181 021c C5FD2984 		vmovapd	%ymm0, 9216(%rsp)
 181      24002400 
GAS LISTING /tmp/ccsdvWVI.s 			page 6


 181      00
 182 0225 C5FD298C 		vmovapd	%ymm1, 9856(%rsp)
 182      24802600 
 182      00
 183 022e C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 183      00000000 
 184 0236 C5FD298C 		vmovapd	%ymm1, 9536(%rsp)
 184      24402500 
 184      00
 185 023f C5FD288B 		vmovapd	256(%rbx), %ymm1
 185      00010000 
 186 0247 C5FD2984 		vmovapd	%ymm0, 9248(%rsp)
 186      24202400 
 186      00
 187 0250 C5FD298C 		vmovapd	%ymm1, 9888(%rsp)
 187      24A02600 
 187      00
 188 0259 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 188      00000000 
 189 0261 C5FD298C 		vmovapd	%ymm1, 9568(%rsp)
 189      24602500 
 189      00
 190 026a C5FD288B 		vmovapd	288(%rbx), %ymm1
 190      20010000 
 191 0272 F348A5   		rep movsq
 192 0275 C5FD298C 		vmovapd	%ymm1, 9920(%rsp)
 192      24C02600 
 192      00
 193 027e 488DB424 		leaq	8032(%rsp), %rsi
 193      601F0000 
 194 0286 488DBC24 		leaq	2272(%rsp), %rdi
 194      E0080000 
 195 028e C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 195      00000000 
 196 0296 C5FD2984 		vmovapd	%ymm0, 9280(%rsp)
 196      24402400 
 196      00
 197 029f C5FD298C 		vmovapd	%ymm1, 9600(%rsp)
 197      24802500 
 197      00
 198 02a8 E9830000 		jmp	.L49
 198      00
 199 02ad 0F1F00   		.p2align 4,,10
 200              		.p2align 3
 201              	.L15:
 202 02b0 4963C5   		movslq	%r13d, %rax
 203 02b3 4C63DA   		movslq	%edx, %r11
 204 02b6 4183C503 		addl	$3, %r13d
 205 02ba 48C1E005 		salq	$5, %rax
 206 02be 49C1E305 		salq	$5, %r11
 207 02c2 83C201   		addl	$1, %edx
 208 02c5 4C8D7020 		leaq	32(%rax), %r14
 209 02c9 4C8D1406 		leaq	(%rsi,%rax), %r10
 210 02cd 4A8D0C36 		leaq	(%rsi,%r14), %rcx
 211 02d1 C5FD2801 		vmovapd	(%rcx), %ymm0
 212 02d5 C4C17D5C 		vsubpd	(%r10), %ymm0, %ymm0
 212      02
GAS LISTING /tmp/ccsdvWVI.s 			page 7


 213 02da C59559C0 		vmulpd	%ymm0, %ymm13, %ymm0
 214 02de C5FD2984 		vmovapd	%ymm0, 4192(%rsp,%rax)
 214      04601000 
 214      00
 215 02e7 4883C040 		addq	$64, %rax
 216 02eb 4C8D3C06 		leaq	(%rsi,%rax), %r15
 217 02ef C4C17D28 		vmovapd	(%r10), %ymm0
 217      02
 218 02f4 C4C17D59 		vmulpd	(%r15), %ymm0, %ymm1
 218      0F
 219 02f9 C4A17D59 		vmulpd	9632(%rsp,%r11), %ymm0, %ymm0
 219      841CA025 
 219      0000
 220 0303 C5FD5C01 		vsubpd	(%rcx), %ymm0, %ymm0
 221 0307 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 222 030b C4A17D29 		vmovapd	%ymm0, 4192(%rsp,%r14)
 222      84346010 
 222      0000
 223 0315 C4C17D28 		vmovapd	(%r10), %ymm0
 223      02
 224 031a C4C16559 		vmulpd	(%r15), %ymm3, %ymm1
 224      0F
 225 031f C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 226 0323 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 227 0327 C5FD2984 		vmovapd	%ymm0, 4192(%rsp,%rax)
 227      04601000 
 227      00
 228              	.L49:
 229 0330 83FA09   		cmpl	$9, %edx
 230 0333 0F8E77FF 		jle	.L15
 230      FFFF
 231 0339 488D8424 		leaq	7072(%rsp), %rax
 231      A01B0000 
 232 0341 488D9424 		leaq	1312(%rsp), %rdx
 232      20050000 
 233 0349 0F1F8000 		.p2align 4,,10
 233      000000
 234              		.p2align 3
 235              	.L17:
 236 0350 C59D5980 		vmulpd	-2880(%rax), %ymm12, %ymm0
 236      C0F4FFFF 
 237 0358 4883C220 		addq	$32, %rdx
 238 035c 4883C060 		addq	$96, %rax
 239 0360 C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 239      201F0000 
 240 0368 C5FD5880 		vaddpd	864(%rax), %ymm0, %ymm0
 240      60030000 
 241 0370 C5FD2940 		vmovapd	%ymm0, -96(%rax)
 241      A0
 242 0375 C59D5980 		vmulpd	-2944(%rax), %ymm12, %ymm0
 242      80F4FFFF 
 243 037d C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 243      201F0000 
 244 0385 C5FD5880 		vaddpd	896(%rax), %ymm0, %ymm0
 244      80030000 
 245 038d C5FD2940 		vmovapd	%ymm0, -64(%rax)
 245      C0
GAS LISTING /tmp/ccsdvWVI.s 			page 8


 246 0392 C59D5980 		vmulpd	-2912(%rax), %ymm12, %ymm0
 246      A0F4FFFF 
 247 039a C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 247      201F0000 
 248 03a2 C5FD5880 		vaddpd	928(%rax), %ymm0, %ymm0
 248      A0030000 
 249 03aa C5FD2940 		vmovapd	%ymm0, -32(%rax)
 249      E0
 250 03af 4C39C2   		cmpq	%r8, %rdx
 251 03b2 759C     		jne	.L17
 252 03b4 488D8C24 		leaq	7072(%rsp), %rcx
 252      A01B0000 
 253 03bc 4C89CA   		movq	%r9, %rdx
 254 03bf 4889C8   		movq	%rcx, %rax
 255              		.p2align 4,,10
 256 03c2 660F1F44 		.p2align 3
 256      0000
 257              	.L19:
 258 03c8 C5FD2800 		vmovapd	(%rax), %ymm0
 259 03cc 4883C060 		addq	$96, %rax
 260 03d0 4883C220 		addq	$32, %rdx
 261 03d4 C5FD2848 		vmovapd	-64(%rax), %ymm1
 261      C0
 262 03d9 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
 262      E0
 263 03de C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 264 03e2 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 265 03e6 C5FD2990 		vmovapd	%ymm2, -5856(%rax)
 265      20E9FFFF 
 266 03ee C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 266      E0
 267 03f3 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 268 03f7 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 269 03fb C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 270 03ff C5FD2990 		vmovapd	%ymm2, -5824(%rax)
 270      40E9FFFF 
 271 0407 C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
 271      E0
 272 040c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 273 0410 C5FD2980 		vmovapd	%ymm0, -5792(%rax)
 273      60E9FFFF 
 274 0418 4839F0   		cmpq	%rsi, %rax
 275 041b 75AB     		jne	.L19
 276 041d 488D9424 		leaq	1312(%rsp), %rdx
 276      20050000 
 277 0425 4889D0   		movq	%rdx, %rax
 278 0428 0F1F8400 		.p2align 4,,10
 278      00000000 
 279              		.p2align 3
 280              	.L21:
 281 0430 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 281      00000000 
 282 0438 4883C060 		addq	$96, %rax
 283 043c 4883C220 		addq	$32, %rdx
 284 0440 C5F55940 		vmulpd	-96(%rax), %ymm1, %ymm0
 284      A0
 285 0445 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
GAS LISTING /tmp/ccsdvWVI.s 			page 9


 285      00000000 
 286 044d C5F55988 		vmulpd	2784(%rax), %ymm1, %ymm1
 286      E00A0000 
 287 0455 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 288 0459 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 288      00000000 
 289 0461 C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 289      201F0000 
 290 0469 C5FD5880 		vaddpd	6624(%rax), %ymm0, %ymm0
 290      E0190000 
 291 0471 C5FD2980 		vmovapd	%ymm0, 5664(%rax)
 291      20160000 
 292 0479 C5F55940 		vmulpd	-64(%rax), %ymm1, %ymm0
 292      C0
 293 047e C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 293      00000000 
 294 0486 C5F55988 		vmulpd	2816(%rax), %ymm1, %ymm1
 294      000B0000 
 295 048e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 296 0492 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 296      00000000 
 297 049a C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 297      201F0000 
 298 04a2 C5FD5880 		vaddpd	6656(%rax), %ymm0, %ymm0
 298      001A0000 
 299 04aa C5FD2980 		vmovapd	%ymm0, 5696(%rax)
 299      40160000 
 300 04b2 C5F55940 		vmulpd	-32(%rax), %ymm1, %ymm0
 300      E0
 301 04b7 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 301      00000000 
 302 04bf C5F55988 		vmulpd	2848(%rax), %ymm1, %ymm1
 302      200B0000 
 303 04c7 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 304 04cb C5FD5982 		vmulpd	7968(%rdx), %ymm0, %ymm0
 304      201F0000 
 305 04d3 C5FD5880 		vaddpd	6688(%rax), %ymm0, %ymm0
 305      201A0000 
 306 04db C5FD2980 		vmovapd	%ymm0, 5728(%rax)
 306      60160000 
 307 04e3 4839F8   		cmpq	%rdi, %rax
 308 04e6 0F8544FF 		jne	.L21
 308      FFFF
 309 04ec 4C89C8   		movq	%r9, %rax
 310 04ef 4889CA   		movq	%rcx, %rdx
 311              		.p2align 4,,10
 312 04f2 660F1F44 		.p2align 3
 312      0000
 313              	.L23:
 314 04f8 C5FD2802 		vmovapd	(%rdx), %ymm0
 315 04fc 4883C260 		addq	$96, %rdx
 316 0500 4883C020 		addq	$32, %rax
 317 0504 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 317      C0
 318 0509 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 318      E0
 319 050e C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
GAS LISTING /tmp/ccsdvWVI.s 			page 10


 320 0512 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 321 0516 C5FD2992 		vmovapd	%ymm2, -2016(%rdx)
 321      20F8FFFF 
 322 051e C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 322      E0
 323 0523 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 324 0527 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 325 052b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 326 052f C5FD2992 		vmovapd	%ymm2, -1984(%rdx)
 326      40F8FFFF 
 327 0537 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 327      E0
 328 053c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 329 0540 C5FD2982 		vmovapd	%ymm0, -1952(%rdx)
 329      60F8FFFF 
 330 0548 4839D6   		cmpq	%rdx, %rsi
 331 054b 75AB     		jne	.L23
 332 054d 488D8424 		leaq	1312(%rsp), %rax
 332      20050000 
 333 0555 C5FD2825 		vmovapd	.LC9(%rip), %ymm4
 333      00000000 
 334 055d 31D2     		xorl	%edx, %edx
 335 055f 4C8D9840 		leaq	8000(%rax), %r11
 335      1F0000
 336 0566 662E0F1F 		.p2align 4,,10
 336      84000000 
 336      0000
 337              		.p2align 3
 338              	.L25:
 339 0570 C5FD282D 		vmovapd	.LC7(%rip), %ymm5
 339      00000000 
 340 0578 4E8D141A 		leaq	(%rdx,%r11), %r10
 341 057c 4883C220 		addq	$32, %rdx
 342 0580 C5DD5990 		vmulpd	2880(%rax), %ymm4, %ymm2
 342      400B0000 
 343 0588 4883C060 		addq	$96, %rax
 344 058c C5D55988 		vmulpd	3744(%rax), %ymm5, %ymm1
 344      A00E0000 
 345 0594 C5FD282D 		vmovapd	.LC8(%rip), %ymm5
 345      00000000 
 346 059c C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 346      A0
 347 05a1 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 348 05a5 C5DD5990 		vmulpd	2816(%rax), %ymm4, %ymm2
 348      000B0000 
 349 05ad C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 350 05b1 C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 350      00000000 
 351 05b9 C5F55988 		vmulpd	3776(%rax), %ymm1, %ymm1
 351      C00E0000 
 352 05c1 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 352      02
 353 05c6 C5FD5880 		vaddpd	6624(%rax), %ymm0, %ymm0
 353      E0190000 
 354 05ce C5FD2980 		vmovapd	%ymm0, 5664(%rax)
 354      20160000 
 355 05d6 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
GAS LISTING /tmp/ccsdvWVI.s 			page 11


 355      C0
 356 05db C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 357 05df C5DD5990 		vmulpd	2848(%rax), %ymm4, %ymm2
 357      200B0000 
 358 05e7 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 359 05eb C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 359      00000000 
 360 05f3 C5F55988 		vmulpd	3808(%rax), %ymm1, %ymm1
 360      E00E0000 
 361 05fb C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 361      02
 362 0600 C5FD5880 		vaddpd	6656(%rax), %ymm0, %ymm0
 362      001A0000 
 363 0608 C5FD2980 		vmovapd	%ymm0, 5696(%rax)
 363      40160000 
 364 0610 C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 364      E0
 365 0615 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 366 0619 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 367 061d C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 367      02
 368 0622 C5FD5880 		vaddpd	6688(%rax), %ymm0, %ymm0
 368      201A0000 
 369 062a C5FD2980 		vmovapd	%ymm0, 5728(%rax)
 369      60160000 
 370 0632 4881FA40 		cmpq	$320, %rdx
 370      010000
 371 0639 0F8531FF 		jne	.L25
 371      FFFF
 372 063f 4C89C8   		movq	%r9, %rax
 373 0642 4889CA   		movq	%rcx, %rdx
 374              		.p2align 4,,10
 375 0645 0F1F00   		.p2align 3
 376              	.L27:
 377 0648 C5FD2802 		vmovapd	(%rdx), %ymm0
 378 064c 4883C260 		addq	$96, %rdx
 379 0650 4883C020 		addq	$32, %rax
 380 0654 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 380      C0
 381 0659 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 381      E0
 382 065e C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 383 0662 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 384 0666 C5FD2992 		vmovapd	%ymm2, -1056(%rdx)
 384      E0FBFFFF 
 385 066e C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 385      E0
 386 0673 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 387 0677 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 388 067b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 389 067f C5FD2992 		vmovapd	%ymm2, -1024(%rdx)
 389      00FCFFFF 
 390 0687 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 390      E0
 391 068c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 392 0690 C5FD2982 		vmovapd	%ymm0, -992(%rdx)
 392      20FCFFFF 
GAS LISTING /tmp/ccsdvWVI.s 			page 12


 393 0698 4839D6   		cmpq	%rdx, %rsi
 394 069b 75AB     		jne	.L27
 395 069d 488D8424 		leaq	1312(%rsp), %rax
 395      20050000 
 396 06a5 31D2     		xorl	%edx, %edx
 397 06a7 4C8D9840 		leaq	8000(%rax), %r11
 397      1F0000
 398 06ae 6690     		.p2align 4,,10
 399              		.p2align 3
 400              	.L29:
 401 06b0 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 401      00000000 
 402 06b8 4E8D141A 		leaq	(%rdx,%r11), %r10
 403 06bc 4883C220 		addq	$32, %rdx
 404 06c0 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 404      00000000 
 405 06c8 4883C060 		addq	$96, %rax
 406 06cc C5D55990 		vmulpd	3744(%rax), %ymm5, %ymm2
 406      A00E0000 
 407 06d4 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 407      00000000 
 408 06dc C5DD5940 		vmulpd	-96(%rax), %ymm4, %ymm0
 408      A0
 409 06e1 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 409      00000000 
 410 06e9 C5D559A0 		vmulpd	2784(%rax), %ymm5, %ymm4
 410      E00A0000 
 411 06f1 C5FD282D 		vmovapd	.LC12(%rip), %ymm5
 411      00000000 
 412 06f9 C5F55988 		vmulpd	4704(%rax), %ymm1, %ymm1
 412      60120000 
 413 0701 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 414 0705 C5FD2825 		vmovapd	.LC11(%rip), %ymm4
 414      00000000 
 415 070d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 416 0711 C5DD5990 		vmulpd	3776(%rax), %ymm4, %ymm2
 416      C00E0000 
 417 0719 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 417      00000000 
 418 0721 C5DD59A0 		vmulpd	2816(%rax), %ymm4, %ymm4
 418      000B0000 
 419 0729 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 420 072d C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 420      00000000 
 421 0735 C5F55988 		vmulpd	4736(%rax), %ymm1, %ymm1
 421      80120000 
 422 073d C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 422      02
 423 0742 C5FD5880 		vaddpd	6624(%rax), %ymm0, %ymm0
 423      E0190000 
 424 074a C5FD2980 		vmovapd	%ymm0, 5664(%rax)
 424      20160000 
 425 0752 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 425      C0
 426 0757 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 426      00000000 
 427 075f C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
GAS LISTING /tmp/ccsdvWVI.s 			page 13


 428 0763 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 428      00000000 
 429 076b C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 430 076f C5D55990 		vmulpd	3808(%rax), %ymm5, %ymm2
 430      E00E0000 
 431 0777 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 431      00000000 
 432 077f C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 433 0783 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 433      00000000 
 434 078b C5F55988 		vmulpd	4768(%rax), %ymm1, %ymm1
 434      A0120000 
 435 0793 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 435      02
 436 0798 C5FD5880 		vaddpd	6656(%rax), %ymm0, %ymm0
 436      001A0000 
 437 07a0 C5FD2980 		vmovapd	%ymm0, 5696(%rax)
 437      40160000 
 438 07a8 C5DD5940 		vmulpd	-32(%rax), %ymm4, %ymm0
 438      E0
 439 07ad C5D559A0 		vmulpd	2848(%rax), %ymm5, %ymm4
 439      200B0000 
 440 07b5 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 441 07b9 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 442 07bd C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 443 07c1 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 443      02
 444 07c6 C5FD5880 		vaddpd	6688(%rax), %ymm0, %ymm0
 444      201A0000 
 445 07ce C5FD2980 		vmovapd	%ymm0, 5728(%rax)
 445      60160000 
 446 07d6 4881FA40 		cmpq	$320, %rdx
 446      010000
 447 07dd 0F85CDFE 		jne	.L29
 447      FFFF
 448 07e3 4C89C8   		movq	%r9, %rax
 449 07e6 4889CA   		movq	%rcx, %rdx
 450 07e9 0F1F8000 		.p2align 4,,10
 450      000000
 451              		.p2align 3
 452              	.L31:
 453 07f0 C5FD2802 		vmovapd	(%rdx), %ymm0
 454 07f4 4883C260 		addq	$96, %rdx
 455 07f8 4883C020 		addq	$32, %rax
 456 07fc C5FD284A 		vmovapd	-64(%rdx), %ymm1
 456      C0
 457 0801 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 457      E0
 458 0806 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 459 080a C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 460 080e C5FD2992 		vmovapd	%ymm2, -3936(%rdx)
 460      A0F0FFFF 
 461 0816 C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 461      E0
 462 081b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 463 081f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 464 0823 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
GAS LISTING /tmp/ccsdvWVI.s 			page 14


 465 0827 C5FD2992 		vmovapd	%ymm2, -3904(%rdx)
 465      C0F0FFFF 
 466 082f C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 466      E0
 467 0834 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 468 0838 C5FD2982 		vmovapd	%ymm0, -3872(%rdx)
 468      E0F0FFFF 
 469 0840 4839D6   		cmpq	%rdx, %rsi
 470 0843 75AB     		jne	.L31
 471 0845 488D8424 		leaq	1312(%rsp), %rax
 471      20050000 
 472 084d 31D2     		xorl	%edx, %edx
 473 084f 4C8D9840 		leaq	8000(%rax), %r11
 473      1F0000
 474 0856 662E0F1F 		.p2align 4,,10
 474      84000000 
 474      0000
 475              		.p2align 3
 476              	.L33:
 477 0860 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 477      00000000 
 478 0868 4E8D141A 		leaq	(%rdx,%r11), %r10
 479 086c 4883C220 		addq	$32, %rdx
 480 0870 C5FD2835 		vmovapd	.LC16(%rip), %ymm6
 480      00000000 
 481 0878 4883C060 		addq	$96, %rax
 482 087c C5DD5990 		vmulpd	4704(%rax), %ymm4, %ymm2
 482      60120000 
 483 0884 C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 483      00000000 
 484 088c C5CD59A0 		vmulpd	3744(%rax), %ymm6, %ymm4
 484      A00E0000 
 485 0894 C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 485      00000000 
 486 089c C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 486      A0
 487 08a1 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 487      00000000 
 488 08a9 C5CD59A8 		vmulpd	2784(%rax), %ymm6, %ymm5
 488      E00A0000 
 489 08b1 C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 489      00000000 
 490 08b9 C5F55988 		vmulpd	1824(%rax), %ymm1, %ymm1
 490      20070000 
 491 08c1 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 492 08c5 C5FD282D 		vmovapd	.LC16(%rip), %ymm5
 492      00000000 
 493 08cd C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 494 08d1 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 494      00000000 
 495 08d9 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 496 08dd C5DD5990 		vmulpd	4736(%rax), %ymm4, %ymm2
 496      80120000 
 497 08e5 C5D559A0 		vmulpd	3776(%rax), %ymm5, %ymm4
 497      C00E0000 
 498 08ed C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 498      00000000 
GAS LISTING /tmp/ccsdvWVI.s 			page 15


 499 08f5 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 500 08f9 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 500      00000000 
 501 0901 C5D559A8 		vmulpd	2816(%rax), %ymm5, %ymm5
 501      000B0000 
 502 0909 C5F55988 		vmulpd	1856(%rax), %ymm1, %ymm1
 502      40070000 
 503 0911 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 503      02
 504 0916 C5FD5880 		vaddpd	6624(%rax), %ymm0, %ymm0
 504      E0190000 
 505 091e C5FD2980 		vmovapd	%ymm0, 5664(%rax)
 505      20160000 
 506 0926 C5CD5940 		vmulpd	-64(%rax), %ymm6, %ymm0
 506      C0
 507 092b C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 508 092f C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 508      00000000 
 509 0937 C5D559A8 		vmulpd	2848(%rax), %ymm5, %ymm5
 509      200B0000 
 510 093f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 511 0943 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 511      00000000 
 512 094b C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 513 094f C5DD5990 		vmulpd	4768(%rax), %ymm4, %ymm2
 513      A0120000 
 514 0957 C5FD2825 		vmovapd	.LC16(%rip), %ymm4
 514      00000000 
 515 095f C5DD59A0 		vmulpd	3808(%rax), %ymm4, %ymm4
 515      E00E0000 
 516 0967 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 517 096b C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 517      00000000 
 518 0973 C5F55988 		vmulpd	1888(%rax), %ymm1, %ymm1
 518      60070000 
 519 097b C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 519      02
 520 0980 C5FD5880 		vaddpd	6656(%rax), %ymm0, %ymm0
 520      001A0000 
 521 0988 C5FD2980 		vmovapd	%ymm0, 5696(%rax)
 521      40160000 
 522 0990 C5CD5940 		vmulpd	-32(%rax), %ymm6, %ymm0
 522      E0
 523 0995 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 524 0999 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 525 099d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 526 09a1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 527 09a5 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 527      02
 528 09aa C5FD5880 		vaddpd	6688(%rax), %ymm0, %ymm0
 528      201A0000 
 529 09b2 C5FD2980 		vmovapd	%ymm0, 5728(%rax)
 529      60160000 
 530 09ba 4881FA40 		cmpq	$320, %rdx
 530      010000
 531 09c1 0F8599FE 		jne	.L33
 531      FFFF
GAS LISTING /tmp/ccsdvWVI.s 			page 16


 532 09c7 4C89CA   		movq	%r9, %rdx
 533 09ca 4889C8   		movq	%rcx, %rax
 534 09cd 0F1F00   		.p2align 4,,10
 535              		.p2align 3
 536              	.L35:
 537 09d0 C5FD2800 		vmovapd	(%rax), %ymm0
 538 09d4 4883C060 		addq	$96, %rax
 539 09d8 4883C220 		addq	$32, %rdx
 540 09dc C5FD2848 		vmovapd	-64(%rax), %ymm1
 540      C0
 541 09e1 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
 541      E0
 542 09e6 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 543 09ea C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 544 09ee C5FD2990 		vmovapd	%ymm2, -4896(%rax)
 544      E0ECFFFF 
 545 09f6 C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 545      E0
 546 09fb C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 547 09ff C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 548 0a03 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 549 0a07 C5FD2990 		vmovapd	%ymm2, -4864(%rax)
 549      00EDFFFF 
 550 0a0f C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
 550      E0
 551 0a14 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 552 0a18 C5FD2980 		vmovapd	%ymm0, -4832(%rax)
 552      20EDFFFF 
 553 0a20 4839C6   		cmpq	%rax, %rsi
 554 0a23 75AB     		jne	.L35
 555 0a25 488D8424 		leaq	1312(%rsp), %rax
 555      20050000 
 556 0a2d C5FD280D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 556      00000000 
 557 0a35 4C8D9C24 		leaq	3232(%rsp), %r11
 557      A00C0000 
 558 0a3d 4989FA   		movq	%rdi, %r10
 559 0a40 4889C1   		movq	%rax, %rcx
 560              		.p2align 4,,10
 561 0a43 0F1F4400 		.p2align 3
 561      00
 562              	.L39:
 563 0a48 4C89D0   		movq	%r10, %rax
 564 0a4b BA030000 		movl	$3, %edx
 564      00
 565              	.L37:
 566 0a50 C5FD2835 		vmovapd	.LC19(%rip), %ymm6
 566      00000000 
 567 0a58 4883C020 		addq	$32, %rax
 568 0a5c C5FD282D 		vmovapd	.LC22(%rip), %ymm5
 568      00000000 
 569 0a64 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 569      E0
 570 0a69 C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 570      00000000 
 571 0a71 C5D559A8 		vmulpd	1888(%rax), %ymm5, %ymm5
 571      60070000 
GAS LISTING /tmp/ccsdvWVI.s 			page 17


 572 0a79 C5CD59A0 		vmulpd	3808(%rax), %ymm6, %ymm4
 572      E00E0000 
 573 0a81 C5FD2835 		vmovapd	.LC21(%rip), %ymm6
 573      00000000 
 574 0a89 C5CD5980 		vmulpd	2848(%rax), %ymm6, %ymm0
 574      200B0000 
 575 0a91 C5FD2835 		vmovapd	.LC23(%rip), %ymm6
 575      00000000 
 576 0a99 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 577 0a9d C5FD282D 		vmovapd	.LC24(%rip), %ymm5
 577      00000000 
 578 0aa5 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 579 0aa9 C5D559A0 		vmulpd	928(%rax), %ymm5, %ymm4
 579      A0030000 
 580 0ab1 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 581 0ab5 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 581      E0
 582 0aba C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 582      00000000 
 583 0ac2 C5CD59A8 		vmulpd	3808(%rax), %ymm6, %ymm5
 583      E00E0000 
 584 0aca C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 584      00000000 
 585 0ad2 C5FD5981 		vmulpd	8000(%rcx), %ymm0, %ymm0
 585      401F0000 
 586 0ada C5FD5880 		vaddpd	5728(%rax), %ymm0, %ymm0
 586      60160000 
 587 0ae2 C5FD2980 		vmovapd	%ymm0, 4768(%rax)
 587      A0120000 
 588 0aea C5CD5980 		vmulpd	2848(%rax), %ymm6, %ymm0
 588      200B0000 
 589 0af2 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 589      00000000 
 590 0afa C5CD59B0 		vmulpd	1888(%rax), %ymm6, %ymm6
 590      60070000 
 591 0b02 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 592 0b06 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 593 0b0a C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 594 0b0e C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 595 0b12 C5F55490 		vandpd	4768(%rax), %ymm1, %ymm2
 595      A0120000 
 596 0b1a C5FD5981 		vmulpd	8000(%rcx), %ymm0, %ymm0
 596      401F0000 
 597 0b22 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 598 0b26 C5C558D2 		vaddpd	%ymm2, %ymm7, %ymm2
 599 0b2a C5FD2980 		vmovapd	%ymm0, -992(%rax)
 599      20FCFFFF 
 600 0b32 C5ED5EC0 		vdivpd	%ymm0, %ymm2, %ymm0
 601 0b36 C5FD2950 		vmovapd	%ymm2, -32(%rax)
 601      E0
 602 0b3b C5FD54C1 		vandpd	%ymm1, %ymm0, %ymm0
 603 0b3f C5FD2980 		vmovapd	%ymm0, 928(%rax)
 603      A0030000 
 604 0b47 83EA01   		subl	$1, %edx
 605 0b4a 0F8500FF 		jne	.L37
 605      FFFF
 606 0b50 4983C260 		addq	$96, %r10
GAS LISTING /tmp/ccsdvWVI.s 			page 18


 607 0b54 4883C120 		addq	$32, %rcx
 608 0b58 4D39DA   		cmpq	%r11, %r10
 609 0b5b 0F85E7FE 		jne	.L39
 609      FFFF
 610 0b61 C5FD2884 		vmovapd	3232(%rsp), %ymm0
 610      24A00C00 
 610      00
 611 0b6a 4889F2   		movq	%rsi, %rdx
 612 0b6d 488D8424 		leaq	9312(%rsp), %rax
 612      60240000 
 613 0b75 4C8D9424 		leaq	8992(%rsp), %r10
 613      20230000 
 614 0b7d C5FD5D84 		vminpd	3264(%rsp), %ymm0, %ymm0
 614      24C00C00 
 614      00
 615 0b86 C5FD5D84 		vminpd	3296(%rsp), %ymm0, %ymm0
 615      24E00C00 
 615      00
 616 0b8f C5FD2984 		vmovapd	%ymm0, 2272(%rsp)
 616      24E00800 
 616      00
 617 0b98 C5FD2884 		vmovapd	3328(%rsp), %ymm0
 617      24000D00 
 617      00
 618 0ba1 C5FD5D84 		vminpd	3360(%rsp), %ymm0, %ymm0
 618      24200D00 
 618      00
 619 0baa C5FD5D84 		vminpd	3392(%rsp), %ymm0, %ymm0
 619      24400D00 
 619      00
 620 0bb3 C5FD2984 		vmovapd	%ymm0, 2304(%rsp)
 620      24000900 
 620      00
 621 0bbc C5FD2884 		vmovapd	3424(%rsp), %ymm0
 621      24600D00 
 621      00
 622 0bc5 C5FD5D84 		vminpd	3456(%rsp), %ymm0, %ymm0
 622      24800D00 
 622      00
 623 0bce C5FD5D84 		vminpd	3488(%rsp), %ymm0, %ymm0
 623      24A00D00 
 623      00
 624 0bd7 C5FD2984 		vmovapd	%ymm0, 2336(%rsp)
 624      24200900 
 624      00
 625 0be0 C5FD2884 		vmovapd	3520(%rsp), %ymm0
 625      24C00D00 
 625      00
 626 0be9 C5FD5D84 		vminpd	3552(%rsp), %ymm0, %ymm0
 626      24E00D00 
 626      00
 627 0bf2 C5FD5D84 		vminpd	3584(%rsp), %ymm0, %ymm0
 627      24000E00 
 627      00
 628 0bfb C5FD2984 		vmovapd	%ymm0, 2368(%rsp)
 628      24400900 
 628      00
GAS LISTING /tmp/ccsdvWVI.s 			page 19


 629 0c04 C5FD2884 		vmovapd	3616(%rsp), %ymm0
 629      24200E00 
 629      00
 630 0c0d C5FD5D84 		vminpd	3648(%rsp), %ymm0, %ymm0
 630      24400E00 
 630      00
 631 0c16 C5FD5D84 		vminpd	3680(%rsp), %ymm0, %ymm0
 631      24600E00 
 631      00
 632 0c1f C5FD2984 		vmovapd	%ymm0, 2400(%rsp)
 632      24600900 
 632      00
 633 0c28 C5FD2884 		vmovapd	3712(%rsp), %ymm0
 633      24800E00 
 633      00
 634 0c31 C5FD5D84 		vminpd	3744(%rsp), %ymm0, %ymm0
 634      24A00E00 
 634      00
 635 0c3a C5FD5D84 		vminpd	3776(%rsp), %ymm0, %ymm0
 635      24C00E00 
 635      00
 636 0c43 C5FD2984 		vmovapd	%ymm0, 2432(%rsp)
 636      24800900 
 636      00
 637 0c4c C5FD2884 		vmovapd	3808(%rsp), %ymm0
 637      24E00E00 
 637      00
 638 0c55 C5FD5D84 		vminpd	3840(%rsp), %ymm0, %ymm0
 638      24000F00 
 638      00
 639 0c5e C5FD5D84 		vminpd	3872(%rsp), %ymm0, %ymm0
 639      24200F00 
 639      00
 640 0c67 C5FD2984 		vmovapd	%ymm0, 2464(%rsp)
 640      24A00900 
 640      00
 641 0c70 C5FD2884 		vmovapd	3904(%rsp), %ymm0
 641      24400F00 
 641      00
 642 0c79 C5FD5D84 		vminpd	3936(%rsp), %ymm0, %ymm0
 642      24600F00 
 642      00
 643 0c82 C5FD5D84 		vminpd	3968(%rsp), %ymm0, %ymm0
 643      24800F00 
 643      00
 644 0c8b C5FD2984 		vmovapd	%ymm0, 2496(%rsp)
 644      24C00900 
 644      00
 645 0c94 C5FD2884 		vmovapd	4000(%rsp), %ymm0
 645      24A00F00 
 645      00
 646 0c9d C5FD5D84 		vminpd	4032(%rsp), %ymm0, %ymm0
 646      24C00F00 
 646      00
 647 0ca6 C5FD5D84 		vminpd	4064(%rsp), %ymm0, %ymm0
 647      24E00F00 
 647      00
GAS LISTING /tmp/ccsdvWVI.s 			page 20


 648 0caf C5FD2984 		vmovapd	%ymm0, 2528(%rsp)
 648      24E00900 
 648      00
 649 0cb8 C5FD2884 		vmovapd	4096(%rsp), %ymm0
 649      24001000 
 649      00
 650 0cc1 C5FD28A4 		vmovapd	192(%rsp), %ymm4
 650      24C00000 
 650      00
 651 0cca C5FD5D84 		vminpd	4128(%rsp), %ymm0, %ymm0
 651      24201000 
 651      00
 652 0cd3 C5FD298C 		vmovapd	%ymm1, 256(%rsp)
 652      24000100 
 652      00
 653 0cdc C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 653      24200100 
 653      00
 654 0ce5 C5FD5D84 		vminpd	4160(%rsp), %ymm0, %ymm0
 654      24401000 
 654      00
 655 0cee C5FD2984 		vmovapd	%ymm0, 2560(%rsp)
 655      24000A00 
 655      00
 656 0cf7 E9ED0000 		jmp	.L45
 656      00
 657 0cfc 0F1F4000 		.p2align 4,,10
 658              		.p2align 3
 659              	.L43:
 660 0d00 C5FD2800 		vmovapd	(%rax), %ymm0
 661 0d04 C58DC290 		vcmppd	$2, -7040(%rax), %ymm14, %ymm2
 661      80E4FFFF 
 661      02
 662 0d0d C5FD280D 		vmovapd	.LC71(%rip), %ymm1
 662      00000000 
 663 0d15 4883C260 		addq	$96, %rdx
 664 0d19 4883C020 		addq	$32, %rax
 665 0d1d C5FDC205 		vcmppd	$2, .LC70(%rip), %ymm0, %ymm0
 665      00000000 
 665      02
 666 0d26 C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 667 0d2a C5F5C2D6 		vcmppd	$1, %ymm6, %ymm1, %ymm2
 667      01
 668 0d2f C4E34D4B 		vblendvpd	%ymm2, %ymm1, %ymm6, %ymm6
 668      F120
 669 0d35 C5FD280D 		vmovapd	.LC73(%rip), %ymm1
 669      00000000 
 670 0d3d C4C14DC2 		vcmppd	$1, %ymm12, %ymm6, %ymm2
 670      D401
 671 0d43 C4C34D4B 		vblendvpd	%ymm2, %ymm12, %ymm6, %ymm6
 671      F420
 672 0d49 C5FD29B0 		vmovapd	%ymm6, -6112(%rax)
 672      20E8FFFF 
 673 0d51 C5FD2852 		vmovapd	-96(%rdx), %ymm2
 673      A0
 674 0d56 C4E36D4B 		vblendvpd	%ymm0, -1056(%rdx), %ymm2, %ymm2
 674      92E0FBFF 
GAS LISTING /tmp/ccsdvWVI.s 			page 21


 674      FF00
 675 0d60 C5FD2952 		vmovapd	%ymm2, -96(%rdx)
 675      A0
 676 0d65 C5FD2852 		vmovapd	-64(%rdx), %ymm2
 676      C0
 677 0d6a C4E36D4B 		vblendvpd	%ymm0, -1024(%rdx), %ymm2, %ymm2
 677      9200FCFF 
 677      FF00
 678 0d74 C5FD2952 		vmovapd	%ymm2, -64(%rdx)
 678      C0
 679 0d79 C5FD2852 		vmovapd	-32(%rdx), %ymm2
 679      E0
 680 0d7e C4E36D4B 		vblendvpd	%ymm0, -992(%rdx), %ymm2, %ymm2
 680      9220FCFF 
 680      FF00
 681 0d88 C5FD2952 		vmovapd	%ymm2, -32(%rdx)
 681      E0
 682 0d8d C5FD2890 		vmovapd	-352(%rax), %ymm2
 682      A0FEFFFF 
 683 0d95 C5ED5860 		vaddpd	-32(%rax), %ymm2, %ymm4
 683      E0
 684 0d9a C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 684      C400
 685 0da0 C5FD2980 		vmovapd	%ymm0, -352(%rax)
 685      A0FEFFFF 
 686 0da8 C5FD2880 		vmovapd	-6112(%rax), %ymm0
 686      20E8FFFF 
 687 0db0 C5FD5940 		vmulpd	-32(%rax), %ymm0, %ymm0
 687      E0
 688 0db5 C5FD5905 		vmulpd	.LC72(%rip), %ymm0, %ymm0
 688      00000000 
 689 0dbd C5F5C2D0 		vcmppd	$1, %ymm0, %ymm1, %ymm2
 689      01
 690 0dc2 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 690      C120
 691 0dc8 C5FDC215 		vcmppd	$1, .LC70(%rip), %ymm0, %ymm2
 691      00000000 
 691      01
 692 0dd1 C4E37D4B 		vblendvpd	%ymm2, .LC70(%rip), %ymm0, %ymm0
 692      05000000 
 692      0020
 693 0ddb C5FD2940 		vmovapd	%ymm0, -32(%rax)
 693      E0
 694 0de0 4C39D2   		cmpq	%r10, %rdx
 695 0de3 0F843F04 		je	.L52
 695      0000
 696              	.L45:
 697 0de9 C5FD28B0 		vmovapd	-7040(%rax), %ymm6
 697      80E4FFFF 
 698 0df1 C5F1EFC9 		vpxor	%xmm1, %xmm1, %xmm1
 699 0df5 C5FD2815 		vmovapd	.LC33(%rip), %ymm2
 699      00000000 
 700 0dfd C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 700      F501
 701 0e03 C5F928E6 		vmovapd	%xmm6, %xmm4
 702 0e07 C559DB0D 		vpand	.LC29(%rip), %xmm4, %xmm9
 702      00000000 
GAS LISTING /tmp/ccsdvWVI.s 			page 22


 703 0e0f C5B973D4 		vpsrlq	$52, %xmm4, %xmm8
 703      34
 704 0e14 C5D1DB05 		vpand	.LC29(%rip), %xmm5, %xmm0
 704      00000000 
 705 0e1c C539EB05 		vpor	.LC31(%rip), %xmm8, %xmm8
 705      00000000 
 706 0e24 C531EB0D 		vpor	.LC30(%rip), %xmm9, %xmm9
 706      00000000 
 707 0e2c C5F9EB05 		vpor	.LC30(%rip), %xmm0, %xmm0
 707      00000000 
 708 0e34 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 708      C801
 709 0e3a C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 709      34
 710 0e3f C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 710      00000000 
 711 0e47 C4C16DC2 		vcmppd	$1, %ymm9, %ymm2, %ymm2
 711      D101
 712 0e4d C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 712      D201
 713 0e53 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 713      C001
 714 0e59 C5F928C2 		vmovapd	%xmm2, %xmm0
 715 0e5d C4C16D54 		vandpd	%ymm14, %ymm2, %ymm2
 715      D6
 716 0e62 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 716      00000000 
 717 0e6a C53D5C05 		vsubpd	.LC32(%rip), %ymm8, %ymm8
 717      00000000 
 718 0e72 C5F95705 		vxorpd	.LC34(%rip), %xmm0, %xmm0
 718      00000000 
 719 0e7a C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 719      C201
 720 0e80 C53D58C2 		vaddpd	%ymm2, %ymm8, %ymm8
 721 0e84 C4C17D54 		vandpd	%ymm9, %ymm0, %ymm0
 721      C1
 722 0e89 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 722      C1
 723 0e8e C4C17D5C 		vsubpd	%ymm14, %ymm0, %ymm0
 723      C6
 724 0e93 C57D591D 		vmulpd	.LC38(%rip), %ymm0, %ymm11
 724      00000000 
 725 0e9b C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 726 0e9f C57D593D 		vmulpd	.LC36(%rip), %ymm0, %ymm15
 726      00000000 
 727 0ea7 C57D5915 		vmulpd	.LC40(%rip), %ymm0, %ymm10
 727      00000000 
 728 0eaf C525581D 		vaddpd	.LC39(%rip), %ymm11, %ymm11
 728      00000000 
 729 0eb7 C56D59CA 		vmulpd	%ymm2, %ymm2, %ymm9
 730 0ebb C505583D 		vaddpd	.LC37(%rip), %ymm15, %ymm15
 730      00000000 
 731 0ec3 C52D5815 		vaddpd	.LC41(%rip), %ymm10, %ymm10
 731      00000000 
 732 0ecb C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 732      D9
 733 0ed0 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
GAS LISTING /tmp/ccsdvWVI.s 			page 23


 733      DF
 734 0ed5 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 735 0ed9 C57D583D 		vaddpd	.LC44(%rip), %ymm0, %ymm15
 735      00000000 
 736 0ee1 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 736      D3
 737 0ee6 C57D59DA 		vmulpd	%ymm2, %ymm0, %ymm11
 738 0eea C4410559 		vmulpd	%ymm9, %ymm15, %ymm9
 738      C9
 739 0eef C4412D59 		vmulpd	%ymm11, %ymm10, %ymm10
 739      D3
 740 0ef4 C57D591D 		vmulpd	.LC42(%rip), %ymm0, %ymm11
 740      00000000 
 741 0efc C525581D 		vaddpd	.LC43(%rip), %ymm11, %ymm11
 741      00000000 
 742 0f04 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 742      DB
 743 0f09 C57D590D 		vmulpd	.LC45(%rip), %ymm0, %ymm9
 743      00000000 
 744 0f11 C535580D 		vaddpd	.LC46(%rip), %ymm9, %ymm9
 744      00000000 
 745 0f19 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 746 0f1d C5ED5915 		vmulpd	.LC48(%rip), %ymm2, %ymm2
 746      00000000 
 747 0f25 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 747      DB
 748 0f2a C53D590D 		vmulpd	.LC47(%rip), %ymm8, %ymm9
 748      00000000 
 749 0f32 C53D5905 		vmulpd	.LC49(%rip), %ymm8, %ymm8
 749      00000000 
 750 0f3a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 751 0f3e C5E973F4 		vpsllq	$1, %xmm4, %xmm2
 751      01
 752 0f43 C4412D5E 		vdivpd	%ymm11, %ymm10, %ymm10
 752      D3
 753 0f48 C4413558 		vaddpd	%ymm10, %ymm9, %ymm10
 753      D2
 754 0f4d C5AD58C0 		vaddpd	%ymm0, %ymm10, %ymm0
 755 0f51 C569DB15 		vpand	.LC50(%rip), %xmm2, %xmm10
 755      00000000 
 756 0f59 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 757 0f5d C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 757      01
 758 0f62 C539DB0D 		vpand	.LC50(%rip), %xmm8, %xmm9
 758      00000000 
 759 0f6a C4622929 		vpcmpeqq	.LC50(%rip), %xmm10, %xmm10
 759      15000000 
 759      00
 760 0f73 C4623929 		vpcmpeqq	.LC50(%rip), %xmm8, %xmm8
 760      05000000 
 760      00
 761 0f7c C529EF15 		vpxor	.LC82(%rip), %xmm10, %xmm10
 761      00000000 
 762 0f84 C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 762      0D000000 
 762      00
 763 0f8d C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
GAS LISTING /tmp/ccsdvWVI.s 			page 24


 763      00000000 
 764 0f95 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm10
 764      D101
 765 0f9b C4437D19 		vextractf128	$0x1, %ymm10, %xmm9
 765      D101
 766 0fa1 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 766      00000000 
 767 0fa9 C531570D 		vxorpd	.LC34(%rip), %xmm9, %xmm9
 767      00000000 
 768 0fb1 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm9
 768      C901
 769 0fb7 C54DC215 		vcmppd	$1, .LC51(%rip), %ymm6, %ymm10
 769      00000000 
 769      01
 770 0fc0 C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 770      D9
 771 0fc5 C4637D4B 		vblendvpd	%ymm10, .LC52(%rip), %ymm0, %ymm10
 771      15000000 
 771      00A0
 772 0fcf C4437D19 		vextractf128	$0x1, %ymm11, %xmm15
 772      DF01
 773 0fd5 C4412156 		vorpd	%xmm15, %xmm11, %xmm11
 773      DF
 774 0fda C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 774      FF
 775 0fdf C4C17950 		vmovmskpd	%xmm11, %ecx
 775      CB
 776 0fe4 C551DB1D 		vpand	.LC54(%rip), %xmm5, %xmm11
 776      00000000 
 777 0fec C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 777      1F
 778 0ff1 85C9     		testl	%ecx, %ecx
 779 0ff3 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 779      DF
 780 0ff8 C559DB3D 		vpand	.LC54(%rip), %xmm4, %xmm15
 780      00000000 
 781 1000 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 781      1F
 782 1005 C4620129 		vpcmpeqq	%xmm1, %xmm15, %xmm15
 782      F9
 783 100a C4430518 		vinsertf128	$0x1, %xmm11, %ymm15, %ymm11
 783      DB01
 784 1010 C4632D4B 		vblendvpd	%ymm11, 224(%rsp), %ymm10, %ymm10
 784      9424E000 
 784      0000B0
 785 101b C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 785      CE90
 786 1021 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 786      20
 787 1026 C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 787      EDCC
 788 102c C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 788      20
 789 1031 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 789      E4CC
 790 1037 C4E26929 		vpcmpeqq	.LC50(%rip), %xmm2, %xmm6
 790      35000000 
GAS LISTING /tmp/ccsdvWVI.s 			page 25


 790      00
 791 1040 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 791      ED01
 792 1046 C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 792      F001
 793 104c C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 794 1050 C4E3354B 		vblendvpd	%ymm6, .LC52(%rip), %ymm9, %ymm6
 794      35000000 
 794      0060
 795 105a 7504     		jne	.L41
 796 105c C5FD28F0 		vmovapd	%ymm0, %ymm6
 797              	.L41:
 798 1060 C4C14D59 		vmulpd	%ymm12, %ymm6, %ymm6
 798      F4
 799 1065 C5FD288C 		vmovapd	288(%rsp), %ymm1
 799      24200100 
 799      00
 800 106e C5CD592D 		vmulpd	.LC55(%rip), %ymm6, %ymm5
 800      00000000 
 801 1076 C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 801      ED08
 802 107c C5D55905 		vmulpd	.LC56(%rip), %ymm5, %ymm0
 802      00000000 
 803 1084 C5D55915 		vmulpd	.LC57(%rip), %ymm5, %ymm2
 803      00000000 
 804 108c C5D5582D 		vaddpd	.LC32(%rip), %ymm5, %ymm5
 804      00000000 
 805 1094 C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 806 1098 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 807 109c C57D591D 		vmulpd	.LC61(%rip), %ymm0, %ymm11
 807      00000000 
 808 10a4 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 808      00000000 
 809 10ac C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 809      00000000 
 810 10b4 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 811 10b8 C525581D 		vaddpd	.LC62(%rip), %ymm11, %ymm11
 811      00000000 
 812 10c0 C52D5815 		vaddpd	.LC48(%rip), %ymm10, %ymm10
 812      00000000 
 813 10c8 C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 813      00000000 
 814 10d0 C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
 815 10d4 C52559DA 		vmulpd	%ymm2, %ymm11, %ymm11
 816 10d8 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 817 10dc C55D59CC 		vmulpd	%ymm4, %ymm4, %ymm9
 818 10e0 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 818      C0
 819 10e5 C57D591D 		vmulpd	.LC65(%rip), %ymm0, %ymm11
 819      00000000 
 820 10ed C52D58D0 		vaddpd	%ymm0, %ymm10, %ymm10
 821 10f1 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 822 10f5 C525581D 		vaddpd	.LC66(%rip), %ymm11, %ymm11
 822      00000000 
 823 10fd C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 823      C2
 824 1102 C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
GAS LISTING /tmp/ccsdvWVI.s 			page 26


 824      00000000 
 825 110a C5FD5905 		vmulpd	.LC67(%rip), %ymm0, %ymm0
 825      00000000 
 826 1112 C5A559D2 		vmulpd	%ymm2, %ymm11, %ymm2
 827 1116 C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 827      00000000 
 828 111e C5FD5805 		vaddpd	.LC68(%rip), %ymm0, %ymm0
 828      00000000 
 829 1126 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 829      D2
 830 112b C4E37D19 		vextractf128	$0x1, %ymm5, %xmm2
 830      EA01
 831 1131 C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 832 1135 C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 832      34
 833 113a C5E973F2 		vpsllq	$52, %xmm2, %xmm2
 833      34
 834 113f C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
 834      C201
 835 1145 C5F928D6 		vmovapd	%xmm6, %xmm2
 836 1149 C5CD54AC 		vandpd	256(%rsp), %ymm6, %ymm5
 836      24000100 
 836      00
 837 1152 C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 837      E2
 838 1157 C5D5C22D 		vcmppd	$1, .LC69(%rip), %ymm5, %ymm5
 838      00000000 
 838      01
 839 1160 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm9
 839      C9
 840 1165 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 840      F401
 841 116b C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 841      C0
 842 1170 C5B173F4 		vpsllq	$1, %xmm4, %xmm9
 842      01
 843 1175 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 843      1F
 844 117a C531DB0D 		vpand	.LC50(%rip), %xmm9, %xmm9
 844      00000000 
 845 1182 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm8
 845      C6
 846 1187 C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 846      0D000000 
 846      00
 847 1190 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 847      00000000 
 848 1198 C53D59C0 		vmulpd	%ymm0, %ymm8, %ymm8
 849 119c C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 849      01
 850 11a1 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 850      1F
 851 11a6 C5F9DB05 		vpand	.LC50(%rip), %xmm0, %xmm0
 851      00000000 
 852 11ae C4E27929 		vpcmpeqq	.LC50(%rip), %xmm0, %xmm0
 852      05000000 
 852      00
GAS LISTING /tmp/ccsdvWVI.s 			page 27


 853 11b7 C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 853      00000000 
 854 11bf C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 854      C101
 855 11c5 C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 856 11c9 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 856      C501
 857 11cf C57928C8 		vmovapd	%xmm0, %xmm9
 858 11d3 C5B154ED 		vandpd	%xmm5, %xmm9, %xmm5
 859 11d7 C5F950CD 		vmovmskpd	%xmm5, %ecx
 860 11db C5D173D4 		vpsrlq	$32, %xmm4, %xmm5
 860      20
 861 11e0 C4E3510E 		vpblendw	$204, %xmm4, %xmm5, %xmm4
 861      E4CC
 862 11e6 C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 862      20
 863 11eb C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 863      D2CC
 864 11f1 C5D157ED 		vxorpd	%xmm5, %xmm5, %xmm5
 865 11f5 83F903   		cmpl	$3, %ecx
 866 11f8 C4E36D18 		vinsertf128	$0x1, %xmm4, %ymm2, %ymm4
 866      E401
 867 11fe C5CDC2D6 		vcmppd	$4, %ymm6, %ymm6, %ymm2
 867      04
 868 1203 C4E3754B 		vblendvpd	%ymm4, %ymm5, %ymm1, %ymm4
 868      E540
 869 1209 C4C35D4B 		vblendvpd	%ymm0, %ymm8, %ymm4, %ymm0
 869      C000
 870 120f C4E37D4B 		vblendvpd	%ymm2, %ymm6, %ymm0, %ymm6
 870      F620
 871 1215 0F85E5FA 		jne	.L43
 871      FFFF
 872 121b C57D29C6 		vmovapd	%ymm8, %ymm6
 873 121f E9DCFAFF 		jmp	.L43
 873      FF
 874              		.p2align 4,,10
 875 1224 0F1F4000 		.p2align 3
 876              	.L52:
 877 1228 C5FD2884 		vmovapd	8992(%rsp), %ymm0
 877      24202300 
 877      00
 878 1231 C5FD280D 		vmovapd	.LC74(%rip), %ymm1
 878      00000000 
 879 1239 C5FD5D84 		vminpd	9024(%rsp), %ymm0, %ymm0
 879      24402300 
 879      00
 880 1242 C5FD5D84 		vminpd	9056(%rsp), %ymm0, %ymm0
 880      24602300 
 880      00
 881 124b C5FD5D84 		vminpd	9088(%rsp), %ymm0, %ymm0
 881      24802300 
 881      00
 882 1254 C5FD5D84 		vminpd	9120(%rsp), %ymm0, %ymm0
 882      24A02300 
 882      00
 883 125d C5FD5D84 		vminpd	9152(%rsp), %ymm0, %ymm0
 883      24C02300 
GAS LISTING /tmp/ccsdvWVI.s 			page 28


 883      00
 884 1266 C5FD5D84 		vminpd	9184(%rsp), %ymm0, %ymm0
 884      24E02300 
 884      00
 885 126f C5FD5D84 		vminpd	9216(%rsp), %ymm0, %ymm0
 885      24002400 
 885      00
 886 1278 C5FD5D84 		vminpd	9248(%rsp), %ymm0, %ymm0
 886      24202400 
 886      00
 887 1281 C5FD5D84 		vminpd	9280(%rsp), %ymm0, %ymm0
 887      24402400 
 887      00
 888 128a C5F5C2C0 		vcmppd	$2, %ymm0, %ymm1, %ymm0
 888      02
 889 128f C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 889      C101
 890 1295 C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 891 1299 C5F950C0 		vmovmskpd	%xmm0, %eax
 892 129d 83F803   		cmpl	$3, %eax
 893 12a0 740A     		je	.L53
 894 12a2 31D2     		xorl	%edx, %edx
 895 12a4 4531ED   		xorl	%r13d, %r13d
 896 12a7 E904F0FF 		jmp	.L15
 896      FF
 897              	.L53:
 898 12ac 4489E0   		movl	%r12d, %eax
 899 12af BAAD8BDB 		movl	$1759218605, %edx
 899      68
 900 12b4 F7EA     		imull	%edx
 901 12b6 4489E0   		movl	%r12d, %eax
 902 12b9 C1F81F   		sarl	$31, %eax
 903 12bc C1FA0C   		sarl	$12, %edx
 904 12bf 29C2     		subl	%eax, %edx
 905 12c1 4489E0   		movl	%r12d, %eax
 906 12c4 69D21027 		imull	$10000, %edx, %edx
 906      0000
 907 12ca 29D0     		subl	%edx, %eax
 908 12cc 83F801   		cmpl	$1, %eax
 909 12cf 0F848B00 		je	.L54
 909      0000
 910              	.L47:
 911 12d5 4183C428 		addl	$40, %r12d
 912 12d9 4881C340 		addq	$320, %rbx
 912      010000
 913 12e0 4181FC80 		cmpl	$40320, %r12d
 913      9D0000
 914 12e7 0F85D9ED 		jne	.L14
 914      FFFF
 915 12ed C5F877   		vzeroupper
 916 12f0 E8000000 		call	clock
 916      00
 917 12f5 BE000000 		movl	$.LC80, %esi
 917      00
 918 12fa BF000000 		movl	$_ZSt4cout, %edi
 918      00
 919 12ff 4889C3   		movq	%rax, %rbx
GAS LISTING /tmp/ccsdvWVI.s 			page 29


 920 1302 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 920      00
 921 1307 482B9C24 		subq	184(%rsp), %rbx
 921      B8000000 
 922 130f 4889C7   		movq	%rax, %rdi
 923 1312 48BECFF7 		movabsq	$2361183241434822607, %rsi
 923      53E3A59B 
 923      C420
 924 131c 4889D8   		movq	%rbx, %rax
 925 131f 4889D9   		movq	%rbx, %rcx
 926 1322 48F7EE   		imulq	%rsi
 927 1325 48C1F93F 		sarq	$63, %rcx
 928 1329 4889D6   		movq	%rdx, %rsi
 929 132c 48C1FE07 		sarq	$7, %rsi
 930 1330 4829CE   		subq	%rcx, %rsi
 931 1333 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 931      00
 932 1338 BE000000 		movl	$.LC81, %esi
 932      00
 933 133d 4889C7   		movq	%rax, %rdi
 934 1340 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 934      00
 935 1345 4889C7   		movq	%rax, %rdi
 936 1348 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 936      00
 937 134d 488D65D8 		leaq	-40(%rbp), %rsp
 938 1351 31C0     		xorl	%eax, %eax
 939 1353 5B       		popq	%rbx
 940 1354 415C     		popq	%r12
 941 1356 415D     		popq	%r13
 942 1358 415E     		popq	%r14
 943 135a 415F     		popq	%r15
 944 135c 5D       		popq	%rbp
 945              		.cfi_remember_state
 946              		.cfi_def_cfa 7, 8
 947 135d C3       		ret
 948 135e 6690     		.p2align 4,,10
 949              		.p2align 3
 950              	.L54:
 951              		.cfi_restore_state
 952 1360 BA390000 		movl	$57, %edx
 952      00
 953 1365 BE000000 		movl	$.LC75, %esi
 953      00
 954 136a BF000000 		movl	$_ZSt4cout, %edi
 954      00
 955 136f C5FD293C 		vmovapd	%ymm7, (%rsp)
 955      24
 956 1374 C57D2964 		vmovapd	%ymm12, 32(%rsp)
 956      2420
 957 137a C5FD295C 		vmovapd	%ymm3, 64(%rsp)
 957      2440
 958 1380 C57D296C 		vmovapd	%ymm13, 96(%rsp)
 958      2460
 959 1386 C57D29B4 		vmovapd	%ymm14, 128(%rsp)
 959      24800000 
 959      00
GAS LISTING /tmp/ccsdvWVI.s 			page 30


 960 138f C5F877   		vzeroupper
 961 1392 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 961      00
 962 1397 C5FD2884 		vmovapd	8032(%rsp), %ymm0
 962      24601F00 
 962      00
 963 13a0 4489E6   		movl	%r12d, %esi
 964 13a3 BF000000 		movl	$_ZSt4cout, %edi
 964      00
 965 13a8 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 965      24400100 
 965      00
 966 13b1 C5FD2884 		vmovapd	9632(%rsp), %ymm0
 966      24A02500 
 966      00
 967 13ba C5FB108C 		vmovsd	320(%rsp), %xmm1
 967      24400100 
 967      00
 968 13c3 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 968      24400100 
 968      00
 969 13cc C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 969      24000100 
 969      00
 970 13d5 C5FB1084 		vmovsd	320(%rsp), %xmm0
 970      24400100 
 970      00
 971 13de C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 971      24200100 
 971      00
 972 13e7 C5F877   		vzeroupper
 973 13ea E8000000 		call	_ZNSolsEi
 973      00
 974 13ef BA060000 		movl	$6, %edx
 974      00
 975 13f4 BE000000 		movl	$.LC76, %esi
 975      00
 976 13f9 4889C7   		movq	%rax, %rdi
 977 13fc 4989C5   		movq	%rax, %r13
 978 13ff E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 978      00
 979 1404 C5FB1084 		vmovsd	288(%rsp), %xmm0
 979      24200100 
 979      00
 980 140d 4C89EF   		movq	%r13, %rdi
 981 1410 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 981      00
 982 1415 BA030000 		movl	$3, %edx
 982      00
 983 141a BE000000 		movl	$.LC77, %esi
 983      00
 984 141f 4889C7   		movq	%rax, %rdi
 985 1422 4989C5   		movq	%rax, %r13
 986 1425 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 986      00
 987 142a C5FB108C 		vmovsd	256(%rsp), %xmm1
 987      24000100 
GAS LISTING /tmp/ccsdvWVI.s 			page 31


 987      00
 988 1433 4C89EF   		movq	%r13, %rdi
 989 1436 C5F928C1 		vmovapd	%xmm1, %xmm0
 990 143a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 990      00
 991 143f BA010000 		movl	$1, %edx
 991      00
 992 1444 BE000000 		movl	$.LC78, %esi
 992      00
 993 1449 4889C7   		movq	%rax, %rdi
 994 144c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 994      00
 995 1451 C5FD2884 		vmovapd	8064(%rsp), %ymm0
 995      24801F00 
 995      00
 996 145a 4489E6   		movl	%r12d, %esi
 997 145d BF000000 		movl	$_ZSt4cout, %edi
 997      00
 998 1462 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 998      24400100 
 998      00
 999 146b C5FD2884 		vmovapd	9664(%rsp), %ymm0
 999      24C02500 
 999      00
 1000 1474 C5FB108C 		vmovsd	320(%rsp), %xmm1
 1000      24400100 
 1000      00
 1001 147d C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1001      24400100 
 1001      00
 1002 1486 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1002      24000100 
 1002      00
 1003 148f C5FB1084 		vmovsd	320(%rsp), %xmm0
 1003      24400100 
 1003      00
 1004 1498 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1004      24200100 
 1004      00
 1005 14a1 C5F877   		vzeroupper
 1006 14a4 E8000000 		call	_ZNSolsEi
 1006      00
 1007 14a9 BA060000 		movl	$6, %edx
 1007      00
 1008 14ae BE000000 		movl	$.LC76, %esi
 1008      00
 1009 14b3 4889C7   		movq	%rax, %rdi
 1010 14b6 4989C5   		movq	%rax, %r13
 1011 14b9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1011      00
 1012 14be C5FB1084 		vmovsd	288(%rsp), %xmm0
 1012      24200100 
 1012      00
 1013 14c7 4C89EF   		movq	%r13, %rdi
 1014 14ca E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1014      00
 1015 14cf BA030000 		movl	$3, %edx
GAS LISTING /tmp/ccsdvWVI.s 			page 32


 1015      00
 1016 14d4 BE000000 		movl	$.LC77, %esi
 1016      00
 1017 14d9 4889C7   		movq	%rax, %rdi
 1018 14dc 4989C5   		movq	%rax, %r13
 1019 14df E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1019      00
 1020 14e4 C5FB108C 		vmovsd	256(%rsp), %xmm1
 1020      24000100 
 1020      00
 1021 14ed 4C89EF   		movq	%r13, %rdi
 1022 14f0 C5F928C1 		vmovapd	%xmm1, %xmm0
 1023 14f4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1023      00
 1024 14f9 BA010000 		movl	$1, %edx
 1024      00
 1025 14fe BE000000 		movl	$.LC78, %esi
 1025      00
 1026 1503 4889C7   		movq	%rax, %rdi
 1027 1506 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1027      00
 1028 150b C5FD2884 		vmovapd	8096(%rsp), %ymm0
 1028      24A01F00 
 1028      00
 1029 1514 4489E6   		movl	%r12d, %esi
 1030 1517 BF000000 		movl	$_ZSt4cout, %edi
 1030      00
 1031 151c C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1031      24400100 
 1031      00
 1032 1525 C5FD2884 		vmovapd	9696(%rsp), %ymm0
 1032      24E02500 
 1032      00
 1033 152e C5FB108C 		vmovsd	320(%rsp), %xmm1
 1033      24400100 
 1033      00
 1034 1537 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1034      24400100 
 1034      00
 1035 1540 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1035      24000100 
 1035      00
 1036 1549 C5FB1084 		vmovsd	320(%rsp), %xmm0
 1036      24400100 
 1036      00
 1037 1552 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1037      24200100 
 1037      00
 1038 155b C5F877   		vzeroupper
 1039 155e E8000000 		call	_ZNSolsEi
 1039      00
 1040 1563 BA060000 		movl	$6, %edx
 1040      00
 1041 1568 BE000000 		movl	$.LC76, %esi
 1041      00
 1042 156d 4889C7   		movq	%rax, %rdi
 1043 1570 4989C5   		movq	%rax, %r13
GAS LISTING /tmp/ccsdvWVI.s 			page 33


 1044 1573 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1044      00
 1045 1578 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1045      24200100 
 1045      00
 1046 1581 4C89EF   		movq	%r13, %rdi
 1047 1584 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1047      00
 1048 1589 BA030000 		movl	$3, %edx
 1048      00
 1049 158e BE000000 		movl	$.LC77, %esi
 1049      00
 1050 1593 4889C7   		movq	%rax, %rdi
 1051 1596 4989C5   		movq	%rax, %r13
 1052 1599 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1052      00
 1053 159e C5FB108C 		vmovsd	256(%rsp), %xmm1
 1053      24000100 
 1053      00
 1054 15a7 4C89EF   		movq	%r13, %rdi
 1055 15aa C5F928C1 		vmovapd	%xmm1, %xmm0
 1056 15ae E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1056      00
 1057 15b3 BA010000 		movl	$1, %edx
 1057      00
 1058 15b8 BE000000 		movl	$.LC78, %esi
 1058      00
 1059 15bd 4889C7   		movq	%rax, %rdi
 1060 15c0 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1060      00
 1061 15c5 C5FD283C 		vmovapd	(%rsp), %ymm7
 1061      24
 1062 15ca C57D2864 		vmovapd	32(%rsp), %ymm12
 1062      2420
 1063 15d0 C5FD285C 		vmovapd	64(%rsp), %ymm3
 1063      2440
 1064 15d6 C57D286C 		vmovapd	96(%rsp), %ymm13
 1064      2460
 1065 15dc C57D28B4 		vmovapd	128(%rsp), %ymm14
 1065      24800000 
 1065      00
 1066 15e5 E9EBFCFF 		jmp	.L47
 1066      FF
 1067              		.cfi_endproc
 1068              	.LFE4635:
 1069              		.size	main, .-main
 1070 15ea 660F1F44 		.p2align 4,,15
 1070      0000
 1071              		.type	_GLOBAL__sub_I_main, @function
 1072              	_GLOBAL__sub_I_main:
 1073              	.LFB4900:
 1074              		.cfi_startproc
 1075 15f0 4883EC08 		subq	$8, %rsp
 1076              		.cfi_def_cfa_offset 16
 1077 15f4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1077      00
 1078 15f9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
GAS LISTING /tmp/ccsdvWVI.s 			page 34


 1078      00
 1079 15fe BA000000 		movl	$__dso_handle, %edx
 1079      00
 1080 1603 BE000000 		movl	$_ZStL8__ioinit, %esi
 1080      00
 1081 1608 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1081      00
 1082 160d 4883C408 		addq	$8, %rsp
 1083              		.cfi_def_cfa_offset 8
 1084 1611 E9000000 		jmp	__cxa_atexit
 1084      00
 1085              		.cfi_endproc
 1086              	.LFE4900:
 1087              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1088              		.section	.init_array,"aw"
 1089              		.align 8
 1090 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1090      00000000 
 1091              		.section	.rodata
 1092              		.align 32
 1093              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1094              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1095              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1096 0000 00000000 		.long	0
 1097 0004 00000080 		.long	-2147483648
 1098 0008 00000000 		.long	0
 1099 000c 00000080 		.long	-2147483648
 1100 0010 00000000 		.long	0
 1101 0014 00000080 		.long	-2147483648
 1102 0018 00000000 		.long	0
 1103 001c 00000080 		.long	-2147483648
 1104              		.align 32
 1105              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1106              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1107              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1108 0020 FFFFFFFF 		.long	-1
 1109 0024 FFFFFF7F 		.long	2147483647
 1110 0028 FFFFFFFF 		.long	-1
 1111 002c FFFFFF7F 		.long	2147483647
 1112 0030 FFFFFFFF 		.long	-1
 1113 0034 FFFFFF7F 		.long	2147483647
 1114 0038 FFFFFFFF 		.long	-1
 1115 003c FFFFFF7F 		.long	2147483647
 1116              		.local	_ZStL8__ioinit
 1117              		.comm	_ZStL8__ioinit,1,1
 1118              		.section	.rodata.cst32,"aM",@progbits,32
 1119              		.align 32
 1120              	.LC0:
 1121 0000 00000000 		.long	0
 1122 0004 00002440 		.long	1076101120
 1123 0008 00000000 		.long	0
 1124 000c 00002440 		.long	1076101120
 1125 0010 00000000 		.long	0
 1126 0014 00002440 		.long	1076101120
 1127 0018 00000000 		.long	0
 1128 001c 00002440 		.long	1076101120
 1129              		.section	.rodata.cst8,"aM",@progbits,8
GAS LISTING /tmp/ccsdvWVI.s 			page 35


 1130              		.align 8
 1131              	.LC1:
 1132 0000 00000000 		.long	0
 1133 0004 00003540 		.long	1077215232
 1134              		.section	.rodata.cst32
 1135              		.align 32
 1136              	.LC3:
 1137 0020 55555555 		.long	1431655765
 1138 0024 55550540 		.long	1074091349
 1139 0028 55555555 		.long	1431655765
 1140 002c 55550540 		.long	1074091349
 1141 0030 55555555 		.long	1431655765
 1142 0034 55550540 		.long	1074091349
 1143 0038 55555555 		.long	1431655765
 1144 003c 55550540 		.long	1074091349
 1145              		.align 32
 1146              	.LC4:
 1147 0040 9A999999 		.long	2576980378
 1148 0044 9999C93F 		.long	1070176665
 1149 0048 9A999999 		.long	2576980378
 1150 004c 9999C93F 		.long	1070176665
 1151 0050 9A999999 		.long	2576980378
 1152 0054 9999C93F 		.long	1070176665
 1153 0058 9A999999 		.long	2576980378
 1154 005c 9999C93F 		.long	1070176665
 1155              		.align 32
 1156              	.LC5:
 1157 0060 CDCCCCCC 		.long	3435973837
 1158 0064 CCCCCC3F 		.long	1070386380
 1159 0068 CDCCCCCC 		.long	3435973837
 1160 006c CCCCCC3F 		.long	1070386380
 1161 0070 CDCCCCCC 		.long	3435973837
 1162 0074 CCCCCC3F 		.long	1070386380
 1163 0078 CDCCCCCC 		.long	3435973837
 1164 007c CCCCCC3F 		.long	1070386380
 1165              		.align 32
 1166              	.LC6:
 1167 0080 33333333 		.long	858993459
 1168 0084 3333B33F 		.long	1068708659
 1169 0088 33333333 		.long	858993459
 1170 008c 3333B33F 		.long	1068708659
 1171 0090 33333333 		.long	858993459
 1172 0094 3333B33F 		.long	1068708659
 1173 0098 33333333 		.long	858993459
 1174 009c 3333B33F 		.long	1068708659
 1175              		.align 32
 1176              	.LC7:
 1177 00a0 33333333 		.long	858993459
 1178 00a4 3333F33F 		.long	1072902963
 1179 00a8 33333333 		.long	858993459
 1180 00ac 3333F33F 		.long	1072902963
 1181 00b0 33333333 		.long	858993459
 1182 00b4 3333F33F 		.long	1072902963
 1183 00b8 33333333 		.long	858993459
 1184 00bc 3333F33F 		.long	1072902963
 1185              		.align 32
 1186              	.LC8:
GAS LISTING /tmp/ccsdvWVI.s 			page 36


 1187 00c0 CDCCCCCC 		.long	3435973837
 1188 00c4 CCCCECBF 		.long	-1075000116
 1189 00c8 CDCCCCCC 		.long	3435973837
 1190 00cc CCCCECBF 		.long	-1075000116
 1191 00d0 CDCCCCCC 		.long	3435973837
 1192 00d4 CCCCECBF 		.long	-1075000116
 1193 00d8 CDCCCCCC 		.long	3435973837
 1194 00dc CCCCECBF 		.long	-1075000116
 1195              		.align 32
 1196              	.LC9:
 1197 00e0 33333333 		.long	858993459
 1198 00e4 3333D33F 		.long	1070805811
 1199 00e8 33333333 		.long	858993459
 1200 00ec 3333D33F 		.long	1070805811
 1201 00f0 33333333 		.long	858993459
 1202 00f4 3333D33F 		.long	1070805811
 1203 00f8 33333333 		.long	858993459
 1204 00fc 3333D33F 		.long	1070805811
 1205              		.align 32
 1206              	.LC10:
 1207 0100 DA4B682F 		.long	795364314
 1208 0104 A1BDF43F 		.long	1073003937
 1209 0108 DA4B682F 		.long	795364314
 1210 010c A1BDF43F 		.long	1073003937
 1211 0110 DA4B682F 		.long	795364314
 1212 0114 A1BDF43F 		.long	1073003937
 1213 0118 DA4B682F 		.long	795364314
 1214 011c A1BDF43F 		.long	1073003937
 1215              		.align 32
 1216              	.LC11:
 1217 0120 D94B682F 		.long	795364313
 1218 0124 A1BD04C0 		.long	-1073431135
 1219 0128 D94B682F 		.long	795364313
 1220 012c A1BD04C0 		.long	-1073431135
 1221 0130 D94B682F 		.long	795364313
 1222 0134 A1BD04C0 		.long	-1073431135
 1223 0138 D94B682F 		.long	795364313
 1224 013c A1BD04C0 		.long	-1073431135
 1225              		.align 32
 1226              	.LC12:
 1227 0140 00000000 		.long	0
 1228 0144 00000440 		.long	1074003968
 1229 0148 00000000 		.long	0
 1230 014c 00000440 		.long	1074003968
 1231 0150 00000000 		.long	0
 1232 0154 00000440 		.long	1074003968
 1233 0158 00000000 		.long	0
 1234 015c 00000440 		.long	1074003968
 1235              		.align 32
 1236              	.LC13:
 1237 0160 16A1BD84 		.long	2227020054
 1238 0164 F612CABF 		.long	-1077275914
 1239 0168 16A1BD84 		.long	2227020054
 1240 016c F612CABF 		.long	-1077275914
 1241 0170 16A1BD84 		.long	2227020054
 1242 0174 F612CABF 		.long	-1077275914
 1243 0178 16A1BD84 		.long	2227020054
GAS LISTING /tmp/ccsdvWVI.s 			page 37


 1244 017c F612CABF 		.long	-1077275914
 1245              		.align 32
 1246              	.LC14:
 1247 0180 00000000 		.long	0
 1248 0184 00A0AF3F 		.long	1068474368
 1249 0188 00000000 		.long	0
 1250 018c 00A0AF3F 		.long	1068474368
 1251 0190 00000000 		.long	0
 1252 0194 00A0AF3F 		.long	1068474368
 1253 0198 00000000 		.long	0
 1254 019c 00A0AF3F 		.long	1068474368
 1255              		.align 32
 1256              	.LC15:
 1257 01a0 B397D05E 		.long	1590728627
 1258 01a4 429FD93F 		.long	1071226690
 1259 01a8 B397D05E 		.long	1590728627
 1260 01ac 429FD93F 		.long	1071226690
 1261 01b0 B397D05E 		.long	1590728627
 1262 01b4 429FD93F 		.long	1071226690
 1263 01b8 B397D05E 		.long	1590728627
 1264 01bc 429FD93F 		.long	1071226690
 1265              		.align 32
 1266              	.LC16:
 1267 01c0 BD84F612 		.long	318145725
 1268 01c4 DA4BA53F 		.long	1067797466
 1269 01c8 BD84F612 		.long	318145725
 1270 01cc DA4BA53F 		.long	1067797466
 1271 01d0 BD84F612 		.long	318145725
 1272 01d4 DA4BA53F 		.long	1067797466
 1273 01d8 BD84F612 		.long	318145725
 1274 01dc DA4BA53F 		.long	1067797466
 1275              		.align 32
 1276              	.LC17:
 1277 01e0 00000000 		.long	0
 1278 01e4 00E0D53F 		.long	1070981120
 1279 01e8 00000000 		.long	0
 1280 01ec 00E0D53F 		.long	1070981120
 1281 01f0 00000000 		.long	0
 1282 01f4 00E0D53F 		.long	1070981120
 1283 01f8 00000000 		.long	0
 1284 01fc 00E0D53F 		.long	1070981120
 1285              		.align 32
 1286              	.LC18:
 1287 0200 347B09ED 		.long	3976821556
 1288 0204 25349E3F 		.long	1067332645
 1289 0208 347B09ED 		.long	3976821556
 1290 020c 25349E3F 		.long	1067332645
 1291 0210 347B09ED 		.long	3976821556
 1292 0214 25349E3F 		.long	1067332645
 1293 0218 347B09ED 		.long	3976821556
 1294 021c 25349E3F 		.long	1067332645
 1295              		.align 32
 1296              	.LC19:
 1297 0220 B0B4DA85 		.long	2245702832
 1298 0224 A680D23F 		.long	1070760102
 1299 0228 B0B4DA85 		.long	2245702832
 1300 022c A680D23F 		.long	1070760102
GAS LISTING /tmp/ccsdvWVI.s 			page 38


 1301 0230 B0B4DA85 		.long	2245702832
 1302 0234 A680D23F 		.long	1070760102
 1303 0238 B0B4DA85 		.long	2245702832
 1304 023c A680D23F 		.long	1070760102
 1305              		.align 32
 1306              	.LC20:
 1307 0240 27691676 		.long	1981180199
 1308 0244 9FEFCA3F 		.long	1070264223
 1309 0248 27691676 		.long	1981180199
 1310 024c 9FEFCA3F 		.long	1070264223
 1311 0250 27691676 		.long	1981180199
 1312 0254 9FEFCA3F 		.long	1070264223
 1313 0258 27691676 		.long	1981180199
 1314 025c 9FEFCA3F 		.long	1070264223
 1315              		.align 32
 1316              	.LC21:
 1317 0260 7EB22B2E 		.long	774615678
 1318 0264 D0C3D93F 		.long	1071236048
 1319 0268 7EB22B2E 		.long	774615678
 1320 026c D0C3D93F 		.long	1071236048
 1321 0270 7EB22B2E 		.long	774615678
 1322 0274 D0C3D93F 		.long	1071236048
 1323 0278 7EB22B2E 		.long	774615678
 1324 027c D0C3D93F 		.long	1071236048
 1325              		.align 32
 1326              	.LC22:
 1327 0280 E890B943 		.long	1136234728
 1328 0284 E60EB93F 		.long	1069092582
 1329 0288 E890B943 		.long	1136234728
 1330 028c E60EB93F 		.long	1069092582
 1331 0290 E890B943 		.long	1136234728
 1332 0294 E60EB93F 		.long	1069092582
 1333 0298 E890B943 		.long	1136234728
 1334 029c E60EB93F 		.long	1069092582
 1335              		.align 32
 1336              	.LC23:
 1337 02a0 48A5D52E 		.long	785753416
 1338 02a4 3405A4BF 		.long	-1079769804
 1339 02a8 48A5D52E 		.long	785753416
 1340 02ac 3405A4BF 		.long	-1079769804
 1341 02b0 48A5D52E 		.long	785753416
 1342 02b4 3405A4BF 		.long	-1079769804
 1343 02b8 48A5D52E 		.long	785753416
 1344 02bc 3405A4BF 		.long	-1079769804
 1345              		.align 32
 1346              	.LC24:
 1347 02c0 82244992 		.long	2454267010
 1348 02c4 24C9933F 		.long	1066649892
 1349 02c8 82244992 		.long	2454267010
 1350 02cc 24C9933F 		.long	1066649892
 1351 02d0 82244992 		.long	2454267010
 1352 02d4 24C9933F 		.long	1066649892
 1353 02d8 82244992 		.long	2454267010
 1354 02dc 24C9933F 		.long	1066649892
 1355              		.align 32
 1356              	.LC25:
 1357 02e0 06F37686 		.long	2255942406
GAS LISTING /tmp/ccsdvWVI.s 			page 39


 1358 02e4 C47CA13F 		.long	1067547844
 1359 02e8 06F37686 		.long	2255942406
 1360 02ec C47CA13F 		.long	1067547844
 1361 02f0 06F37686 		.long	2255942406
 1362 02f4 C47CA13F 		.long	1067547844
 1363 02f8 06F37686 		.long	2255942406
 1364 02fc C47CA13F 		.long	1067547844
 1365              		.align 32
 1366              	.LC26:
 1367 0300 1A55F19A 		.long	2599507226
 1368 0304 DB1D93BF 		.long	-1080877605
 1369 0308 1A55F19A 		.long	2599507226
 1370 030c DB1D93BF 		.long	-1080877605
 1371 0310 1A55F19A 		.long	2599507226
 1372 0314 DB1D93BF 		.long	-1080877605
 1373 0318 1A55F19A 		.long	2599507226
 1374 031c DB1D93BF 		.long	-1080877605
 1375              		.align 32
 1376              	.LC27:
 1377 0320 64599665 		.long	1704352100
 1378 0324 5996713F 		.long	1064408665
 1379 0328 64599665 		.long	1704352100
 1380 032c 5996713F 		.long	1064408665
 1381 0330 64599665 		.long	1704352100
 1382 0334 5996713F 		.long	1064408665
 1383 0338 64599665 		.long	1704352100
 1384 033c 5996713F 		.long	1064408665
 1385              		.align 32
 1386              	.LC28:
 1387 0340 95D626E8 		.long	3894859413
 1388 0344 0B2E113E 		.long	1041313291
 1389 0348 95D626E8 		.long	3894859413
 1390 034c 0B2E113E 		.long	1041313291
 1391 0350 95D626E8 		.long	3894859413
 1392 0354 0B2E113E 		.long	1041313291
 1393 0358 95D626E8 		.long	3894859413
 1394 035c 0B2E113E 		.long	1041313291
 1395              		.section	.rodata.cst16,"aM",@progbits,16
 1396              		.align 16
 1397              	.LC29:
 1398 0000 FFFFFFFF 		.quad	4503599627370495
 1398      FFFF0F00 
 1399 0008 FFFFFFFF 		.quad	4503599627370495
 1399      FFFF0F00 
 1400              		.align 16
 1401              	.LC30:
 1402 0010 00000000 		.quad	4602678819172646912
 1402      0000E03F 
 1403 0018 00000000 		.quad	4602678819172646912
 1403      0000E03F 
 1404              		.align 16
 1405              	.LC31:
 1406 0020 00000000 		.quad	4841369599423283200
 1406      00003043 
 1407 0028 00000000 		.quad	4841369599423283200
 1407      00003043 
 1408              		.section	.rodata.cst32
GAS LISTING /tmp/ccsdvWVI.s 			page 40


 1409              		.align 32
 1410              	.LC32:
 1411 0360 FF030000 		.long	1023
 1412 0364 00003043 		.long	1127219200
 1413 0368 FF030000 		.long	1023
 1414 036c 00003043 		.long	1127219200
 1415 0370 FF030000 		.long	1023
 1416 0374 00003043 		.long	1127219200
 1417 0378 FF030000 		.long	1023
 1418 037c 00003043 		.long	1127219200
 1419              		.align 32
 1420              	.LC33:
 1421 0380 CD3B7F66 		.long	1719614413
 1422 0384 9EA0E63F 		.long	1072079006
 1423 0388 CD3B7F66 		.long	1719614413
 1424 038c 9EA0E63F 		.long	1072079006
 1425 0390 CD3B7F66 		.long	1719614413
 1426 0394 9EA0E63F 		.long	1072079006
 1427 0398 CD3B7F66 		.long	1719614413
 1428 039c 9EA0E63F 		.long	1072079006
 1429              		.section	.rodata.cst16
 1430              		.align 16
 1431              	.LC34:
 1432 0030 FFFFFFFF 		.long	4294967295
 1433 0034 FFFFFFFF 		.long	-1
 1434 0038 FFFFFFFF 		.long	4294967295
 1435 003c FFFFFFFF 		.long	-1
 1436              		.section	.rodata.cst32
 1437              		.align 32
 1438              	.LC35:
 1439 03a0 00000000 		.long	0
 1440 03a4 0000F03F 		.long	1072693248
 1441 03a8 00000000 		.long	0
 1442 03ac 0000F03F 		.long	1072693248
 1443 03b0 00000000 		.long	0
 1444 03b4 0000F03F 		.long	1072693248
 1445 03b8 00000000 		.long	0
 1446 03bc 0000F03F 		.long	1072693248
 1447              		.align 32
 1448              	.LC36:
 1449 03c0 4DC84B92 		.long	2454440013
 1450 03c4 D6EF3140 		.long	1077014486
 1451 03c8 4DC84B92 		.long	2454440013
 1452 03cc D6EF3140 		.long	1077014486
 1453 03d0 4DC84B92 		.long	2454440013
 1454 03d4 D6EF3140 		.long	1077014486
 1455 03d8 4DC84B92 		.long	2454440013
 1456 03dc D6EF3140 		.long	1077014486
 1457              		.align 32
 1458              	.LC37:
 1459 03e0 F8DC7E7D 		.long	2105466104
 1460 03e4 63D51E40 		.long	1075762531
 1461 03e8 F8DC7E7D 		.long	2105466104
 1462 03ec 63D51E40 		.long	1075762531
 1463 03f0 F8DC7E7D 		.long	2105466104
 1464 03f4 63D51E40 		.long	1075762531
 1465 03f8 F8DC7E7D 		.long	2105466104
GAS LISTING /tmp/ccsdvWVI.s 			page 41


 1466 03fc 63D51E40 		.long	1075762531
 1467              		.align 32
 1468              	.LC38:
 1469 0400 B01BC393 		.long	2479037360
 1470 0404 C2B41A3F 		.long	1058714818
 1471 0408 B01BC393 		.long	2479037360
 1472 040c C2B41A3F 		.long	1058714818
 1473 0410 B01BC393 		.long	2479037360
 1474 0414 C2B41A3F 		.long	1058714818
 1475 0418 B01BC393 		.long	2479037360
 1476 041c C2B41A3F 		.long	1058714818
 1477              		.align 32
 1478              	.LC39:
 1479 0420 F252563F 		.long	1062621938
 1480 0424 F5D6DF3F 		.long	1071634165
 1481 0428 F252563F 		.long	1062621938
 1482 042c F5D6DF3F 		.long	1071634165
 1483 0430 F252563F 		.long	1062621938
 1484 0434 F5D6DF3F 		.long	1071634165
 1485 0438 F252563F 		.long	1062621938
 1486 043c F5D6DF3F 		.long	1071634165
 1487              		.align 32
 1488              	.LC40:
 1489 0440 116992ED 		.long	3985795345
 1490 0444 BAD21240 		.long	1074975418
 1491 0448 116992ED 		.long	3985795345
 1492 044c BAD21240 		.long	1074975418
 1493 0450 116992ED 		.long	3985795345
 1494 0454 BAD21240 		.long	1074975418
 1495 0458 116992ED 		.long	3985795345
 1496 045c BAD21240 		.long	1074975418
 1497              		.align 32
 1498              	.LC41:
 1499 0460 2EEB3EC6 		.long	3326012206
 1500 0464 72FF2C40 		.long	1076690802
 1501 0468 2EEB3EC6 		.long	3326012206
 1502 046c 72FF2C40 		.long	1076690802
 1503 0470 2EEB3EC6 		.long	3326012206
 1504 0474 72FF2C40 		.long	1076690802
 1505 0478 2EEB3EC6 		.long	3326012206
 1506 047c 72FF2C40 		.long	1076690802
 1507              		.align 32
 1508              	.LC42:
 1509 0480 21AE5EEB 		.long	3948850721
 1510 0484 E2C95140 		.long	1079101922
 1511 0488 21AE5EEB 		.long	3948850721
 1512 048c E2C95140 		.long	1079101922
 1513 0490 21AE5EEB 		.long	3948850721
 1514 0494 E2C95140 		.long	1079101922
 1515 0498 21AE5EEB 		.long	3948850721
 1516 049c E2C95140 		.long	1079101922
 1517              		.align 32
 1518              	.LC43:
 1519 04a0 B2251F9E 		.long	2652841394
 1520 04a4 0A203740 		.long	1077354506
 1521 04a8 B2251F9E 		.long	2652841394
 1522 04ac 0A203740 		.long	1077354506
GAS LISTING /tmp/ccsdvWVI.s 			page 42


 1523 04b0 B2251F9E 		.long	2652841394
 1524 04b4 0A203740 		.long	1077354506
 1525 04b8 B2251F9E 		.long	2652841394
 1526 04bc 0A203740 		.long	1077354506
 1527              		.align 32
 1528              	.LC44:
 1529 04c0 8EEF97AE 		.long	2929192846
 1530 04c4 20932640 		.long	1076269856
 1531 04c8 8EEF97AE 		.long	2929192846
 1532 04cc 20932640 		.long	1076269856
 1533 04d0 8EEF97AE 		.long	2929192846
 1534 04d4 20932640 		.long	1076269856
 1535 04d8 8EEF97AE 		.long	2929192846
 1536 04dc 20932640 		.long	1076269856
 1537              		.align 32
 1538              	.LC45:
 1539 04e0 33C0194E 		.long	1310310451
 1540 04e4 2C9D4640 		.long	1078369580
 1541 04e8 33C0194E 		.long	1310310451
 1542 04ec 2C9D4640 		.long	1078369580
 1543 04f0 33C0194E 		.long	1310310451
 1544 04f4 2C9D4640 		.long	1078369580
 1545 04f8 33C0194E 		.long	1310310451
 1546 04fc 2C9D4640 		.long	1078369580
 1547              		.align 32
 1548              	.LC46:
 1549 0500 BDBD26A3 		.long	2737225149
 1550 0504 33BF5440 		.long	1079295795
 1551 0508 BDBD26A3 		.long	2737225149
 1552 050c 33BF5440 		.long	1079295795
 1553 0510 BDBD26A3 		.long	2737225149
 1554 0514 33BF5440 		.long	1079295795
 1555 0518 BDBD26A3 		.long	2737225149
 1556 051c 33BF5440 		.long	1079295795
 1557              		.align 32
 1558              	.LC47:
 1559 0520 A80C615C 		.long	1549864104
 1560 0524 10D02BBF 		.long	-1087647728
 1561 0528 A80C615C 		.long	1549864104
 1562 052c 10D02BBF 		.long	-1087647728
 1563 0530 A80C615C 		.long	1549864104
 1564 0534 10D02BBF 		.long	-1087647728
 1565 0538 A80C615C 		.long	1549864104
 1566 053c 10D02BBF 		.long	-1087647728
 1567              		.align 32
 1568              	.LC48:
 1569 0540 00000000 		.long	0
 1570 0544 0000E03F 		.long	1071644672
 1571 0548 00000000 		.long	0
 1572 054c 0000E03F 		.long	1071644672
 1573 0550 00000000 		.long	0
 1574 0554 0000E03F 		.long	1071644672
 1575 0558 00000000 		.long	0
 1576 055c 0000E03F 		.long	1071644672
 1577              		.align 32
 1578              	.LC49:
 1579 0560 00000000 		.long	0
GAS LISTING /tmp/ccsdvWVI.s 			page 43


 1580 0564 0030E63F 		.long	1072050176
 1581 0568 00000000 		.long	0
 1582 056c 0030E63F 		.long	1072050176
 1583 0570 00000000 		.long	0
 1584 0574 0030E63F 		.long	1072050176
 1585 0578 00000000 		.long	0
 1586 057c 0030E63F 		.long	1072050176
 1587              		.section	.rodata.cst16
 1588              		.align 16
 1589              	.LC50:
 1590 0040 00000000 		.quad	-9007199254740992
 1590      0000E0FF 
 1591 0048 00000000 		.quad	-9007199254740992
 1591      0000E0FF 
 1592              		.section	.rodata.cst32
 1593              		.align 32
 1594              	.LC51:
 1595 0580 00000000 		.long	0
 1596 0584 00001000 		.long	1048576
 1597 0588 00000000 		.long	0
 1598 058c 00001000 		.long	1048576
 1599 0590 00000000 		.long	0
 1600 0594 00001000 		.long	1048576
 1601 0598 00000000 		.long	0
 1602 059c 00001000 		.long	1048576
 1603              		.align 32
 1604              	.LC52:
 1605 05a0 00000020 		.long	536870912
 1606 05a4 2000F87F 		.long	2146959392
 1607 05a8 00000020 		.long	536870912
 1608 05ac 2000F87F 		.long	2146959392
 1609 05b0 00000020 		.long	536870912
 1610 05b4 2000F87F 		.long	2146959392
 1611 05b8 00000020 		.long	536870912
 1612 05bc 2000F87F 		.long	2146959392
 1613              		.section	.rodata.cst16
 1614              		.align 16
 1615              	.LC53:
 1616 0050 00000000 		.long	0
 1617 0054 0000F07F 		.long	2146435072
 1618 0058 00000000 		.long	0
 1619 005c 0000F07F 		.long	2146435072
 1620              		.align 16
 1621              	.LC54:
 1622 0060 00000000 		.quad	9218868437227405312
 1622      0000F07F 
 1623 0068 00000000 		.quad	9218868437227405312
 1623      0000F07F 
 1624              		.section	.rodata.cst32
 1625              		.align 32
 1626              	.LC55:
 1627 05c0 FE822B65 		.long	1697350398
 1628 05c4 4715F73F 		.long	1073157447
 1629 05c8 FE822B65 		.long	1697350398
 1630 05cc 4715F73F 		.long	1073157447
 1631 05d0 FE822B65 		.long	1697350398
 1632 05d4 4715F73F 		.long	1073157447
GAS LISTING /tmp/ccsdvWVI.s 			page 44


 1633 05d8 FE822B65 		.long	1697350398
 1634 05dc 4715F73F 		.long	1073157447
 1635              		.align 32
 1636              	.LC56:
 1637 05e0 00000000 		.long	0
 1638 05e4 402EE63F 		.long	1072049728
 1639 05e8 00000000 		.long	0
 1640 05ec 402EE63F 		.long	1072049728
 1641 05f0 00000000 		.long	0
 1642 05f4 402EE63F 		.long	1072049728
 1643 05f8 00000000 		.long	0
 1644 05fc 402EE63F 		.long	1072049728
 1645              		.align 32
 1646              	.LC57:
 1647 0600 CAAB79CF 		.long	3480857546
 1648 0604 D1F7B73E 		.long	1052243921
 1649 0608 CAAB79CF 		.long	3480857546
 1650 060c D1F7B73E 		.long	1052243921
 1651 0610 CAAB79CF 		.long	3480857546
 1652 0614 D1F7B73E 		.long	1052243921
 1653 0618 CAAB79CF 		.long	3480857546
 1654 061c D1F7B73E 		.long	1052243921
 1655              		.align 32
 1656              	.LC58:
 1657 0620 55555555 		.long	1431655765
 1658 0624 5555C53F 		.long	1069897045
 1659 0628 55555555 		.long	1431655765
 1660 062c 5555C53F 		.long	1069897045
 1661 0630 55555555 		.long	1431655765
 1662 0634 5555C53F 		.long	1069897045
 1663 0638 55555555 		.long	1431655765
 1664 063c 5555C53F 		.long	1069897045
 1665              		.align 32
 1666              	.LC59:
 1667 0640 11111111 		.long	286331153
 1668 0644 1111813F 		.long	1065423121
 1669 0648 11111111 		.long	286331153
 1670 064c 1111813F 		.long	1065423121
 1671 0650 11111111 		.long	286331153
 1672 0654 1111813F 		.long	1065423121
 1673 0658 11111111 		.long	286331153
 1674 065c 1111813F 		.long	1065423121
 1675              		.align 32
 1676              	.LC60:
 1677 0660 55555555 		.long	1431655765
 1678 0664 5555A53F 		.long	1067799893
 1679 0668 55555555 		.long	1431655765
 1680 066c 5555A53F 		.long	1067799893
 1681 0670 55555555 		.long	1431655765
 1682 0674 5555A53F 		.long	1067799893
 1683 0678 55555555 		.long	1431655765
 1684 067c 5555A53F 		.long	1067799893
 1685              		.align 32
 1686              	.LC61:
 1687 0680 1AA0011A 		.long	436314138
 1688 0684 A0012A3F 		.long	1059717536
 1689 0688 1AA0011A 		.long	436314138
GAS LISTING /tmp/ccsdvWVI.s 			page 45


 1690 068c A0012A3F 		.long	1059717536
 1691 0690 1AA0011A 		.long	436314138
 1692 0694 A0012A3F 		.long	1059717536
 1693 0698 1AA0011A 		.long	436314138
 1694 069c A0012A3F 		.long	1059717536
 1695              		.align 32
 1696              	.LC62:
 1697 06a0 176CC116 		.long	381774871
 1698 06a4 6CC1563F 		.long	1062650220
 1699 06a8 176CC116 		.long	381774871
 1700 06ac 6CC1563F 		.long	1062650220
 1701 06b0 176CC116 		.long	381774871
 1702 06b4 6CC1563F 		.long	1062650220
 1703 06b8 176CC116 		.long	381774871
 1704 06bc 6CC1563F 		.long	1062650220
 1705              		.align 32
 1706              	.LC63:
 1707 06c0 34C756A5 		.long	2773927732
 1708 06c4 E31DC73E 		.long	1053236707
 1709 06c8 34C756A5 		.long	2773927732
 1710 06cc E31DC73E 		.long	1053236707
 1711 06d0 34C756A5 		.long	2773927732
 1712 06d4 E31DC73E 		.long	1053236707
 1713 06d8 34C756A5 		.long	2773927732
 1714 06dc E31DC73E 		.long	1053236707
 1715              		.align 32
 1716              	.LC64:
 1717 06e0 1AA0011A 		.long	436314138
 1718 06e4 A001FA3E 		.long	1056571808
 1719 06e8 1AA0011A 		.long	436314138
 1720 06ec A001FA3E 		.long	1056571808
 1721 06f0 1AA0011A 		.long	436314138
 1722 06f4 A001FA3E 		.long	1056571808
 1723 06f8 1AA0011A 		.long	436314138
 1724 06fc A001FA3E 		.long	1056571808
 1725              		.align 32
 1726              	.LC65:
 1727 0700 E444F567 		.long	1744127204
 1728 0704 45E65A3E 		.long	1046144581
 1729 0708 E444F567 		.long	1744127204
 1730 070c 45E65A3E 		.long	1046144581
 1731 0710 E444F567 		.long	1744127204
 1732 0714 45E65A3E 		.long	1046144581
 1733 0718 E444F567 		.long	1744127204
 1734 071c 45E65A3E 		.long	1046144581
 1735              		.align 32
 1736              	.LC66:
 1737 0720 5C9F78B7 		.long	3078135644
 1738 0724 4F7E923E 		.long	1049787983
 1739 0728 5C9F78B7 		.long	3078135644
 1740 072c 4F7E923E 		.long	1049787983
 1741 0730 5C9F78B7 		.long	3078135644
 1742 0734 4F7E923E 		.long	1049787983
 1743 0738 5C9F78B7 		.long	3078135644
 1744 073c 4F7E923E 		.long	1049787983
 1745              		.align 32
 1746              	.LC67:
GAS LISTING /tmp/ccsdvWVI.s 			page 46


 1747 0740 096DA813 		.long	329805065
 1748 0744 4612E63D 		.long	1038488134
 1749 0748 096DA813 		.long	329805065
 1750 074c 4612E63D 		.long	1038488134
 1751 0750 096DA813 		.long	329805065
 1752 0754 4612E63D 		.long	1038488134
 1753 0758 096DA813 		.long	329805065
 1754 075c 4612E63D 		.long	1038488134
 1755              		.align 32
 1756              	.LC68:
 1757 0760 98D8F8EF 		.long	4026063000
 1758 0764 D8EE213E 		.long	1042411224
 1759 0768 98D8F8EF 		.long	4026063000
 1760 076c D8EE213E 		.long	1042411224
 1761 0770 98D8F8EF 		.long	4026063000
 1762 0774 D8EE213E 		.long	1042411224
 1763 0778 98D8F8EF 		.long	4026063000
 1764 077c D8EE213E 		.long	1042411224
 1765              		.align 32
 1766              	.LC69:
 1767 0780 85EB51B8 		.long	3092376453
 1768 0784 1E238640 		.long	1082532638
 1769 0788 85EB51B8 		.long	3092376453
 1770 078c 1E238640 		.long	1082532638
 1771 0790 85EB51B8 		.long	3092376453
 1772 0794 1E238640 		.long	1082532638
 1773 0798 85EB51B8 		.long	3092376453
 1774 079c 1E238640 		.long	1082532638
 1775              		.align 32
 1776              	.LC70:
 1777 07a0 2D431CEB 		.long	3944497965
 1778 07a4 E2361A3F 		.long	1058682594
 1779 07a8 2D431CEB 		.long	3944497965
 1780 07ac E2361A3F 		.long	1058682594
 1781 07b0 2D431CEB 		.long	3944497965
 1782 07b4 E2361A3F 		.long	1058682594
 1783 07b8 2D431CEB 		.long	3944497965
 1784 07bc E2361A3F 		.long	1058682594
 1785              		.align 32
 1786              	.LC71:
 1787 07c0 00000000 		.long	0
 1788 07c4 00001440 		.long	1075052544
 1789 07c8 00000000 		.long	0
 1790 07cc 00001440 		.long	1075052544
 1791 07d0 00000000 		.long	0
 1792 07d4 00001440 		.long	1075052544
 1793 07d8 00000000 		.long	0
 1794 07dc 00001440 		.long	1075052544
 1795              		.align 32
 1796              	.LC72:
 1797 07e0 9A999999 		.long	2576980378
 1798 07e4 9999E93F 		.long	1072273817
 1799 07e8 9A999999 		.long	2576980378
 1800 07ec 9999E93F 		.long	1072273817
 1801 07f0 9A999999 		.long	2576980378
 1802 07f4 9999E93F 		.long	1072273817
 1803 07f8 9A999999 		.long	2576980378
GAS LISTING /tmp/ccsdvWVI.s 			page 47


 1804 07fc 9999E93F 		.long	1072273817
 1805              		.align 32
 1806              	.LC73:
 1807 0800 00000000 		.long	0
 1808 0804 00408F40 		.long	1083129856
 1809 0808 00000000 		.long	0
 1810 080c 00408F40 		.long	1083129856
 1811 0810 00000000 		.long	0
 1812 0814 00408F40 		.long	1083129856
 1813 0818 00000000 		.long	0
 1814 081c 00408F40 		.long	1083129856
 1815              		.align 32
 1816              	.LC74:
 1817 0820 00000000 		.long	0
 1818 0824 00005940 		.long	1079574528
 1819 0828 00000000 		.long	0
 1820 082c 00005940 		.long	1079574528
 1821 0830 00000000 		.long	0
 1822 0834 00005940 		.long	1079574528
 1823 0838 00000000 		.long	0
 1824 083c 00005940 		.long	1079574528
 1825              		.align 32
 1826              	.LC79:
 1827 0840 7B14AE47 		.long	1202590843
 1828 0844 E17A843F 		.long	1065646817
 1829 0848 7B14AE47 		.long	1202590843
 1830 084c E17A843F 		.long	1065646817
 1831 0850 7B14AE47 		.long	1202590843
 1832 0854 E17A843F 		.long	1065646817
 1833 0858 7B14AE47 		.long	1202590843
 1834 085c E17A843F 		.long	1065646817
 1835              		.section	.rodata.cst16
 1836              		.align 16
 1837              	.LC82:
 1838 0070 FFFFFFFF 		.quad	-1
 1838      FFFFFFFF 
 1839 0078 FFFFFFFF 		.quad	-1
 1839      FFFFFFFF 
 1840              		.hidden	__dso_handle
 1841              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1842              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccsdvWVI.s 			page 48


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccsdvWVI.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccsdvWVI.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccsdvWVI.s:87     .text.startup:0000000000000000 main
     /tmp/ccsdvWVI.s:1095   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccsdvWVI.s:1107   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccsdvWVI.s:1072   .text.startup:00000000000015f0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccsdvWVI.s:1120   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccsdvWVI.s:1131   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccsdvWVI.s:1615   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccsdvWVI.s:1136   .rodata.cst32:0000000000000020 .LC3
     /tmp/ccsdvWVI.s:1146   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccsdvWVI.s:1386   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccsdvWVI.s:1438   .rodata.cst32:00000000000003a0 .LC35
     /tmp/ccsdvWVI.s:1826   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccsdvWVI.s:1156   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccsdvWVI.s:1166   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccsdvWVI.s:1196   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccsdvWVI.s:1176   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccsdvWVI.s:1186   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccsdvWVI.s:1216   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccsdvWVI.s:1226   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccsdvWVI.s:1236   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccsdvWVI.s:1206   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccsdvWVI.s:1256   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccsdvWVI.s:1266   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccsdvWVI.s:1276   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccsdvWVI.s:1286   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccsdvWVI.s:1246   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccsdvWVI.s:1296   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccsdvWVI.s:1326   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccsdvWVI.s:1306   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccsdvWVI.s:1316   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccsdvWVI.s:1336   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccsdvWVI.s:1346   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccsdvWVI.s:1356   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccsdvWVI.s:1366   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccsdvWVI.s:1376   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccsdvWVI.s:1786   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccsdvWVI.s:1776   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccsdvWVI.s:1806   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccsdvWVI.s:1796   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccsdvWVI.s:1420   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccsdvWVI.s:1397   .rodata.cst16:0000000000000000 .LC29
     /tmp/ccsdvWVI.s:1405   .rodata.cst16:0000000000000020 .LC31
     /tmp/ccsdvWVI.s:1401   .rodata.cst16:0000000000000010 .LC30
     /tmp/ccsdvWVI.s:1431   .rodata.cst16:0000000000000030 .LC34
     /tmp/ccsdvWVI.s:1410   .rodata.cst32:0000000000000360 .LC32
     /tmp/ccsdvWVI.s:1468   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccsdvWVI.s:1448   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccsdvWVI.s:1488   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccsdvWVI.s:1478   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccsdvWVI.s:1458   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccsdvWVI.s:1498   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccsdvWVI.s:1528   .rodata.cst32:00000000000004c0 .LC44
GAS LISTING /tmp/ccsdvWVI.s 			page 49


     /tmp/ccsdvWVI.s:1508   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccsdvWVI.s:1518   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccsdvWVI.s:1538   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccsdvWVI.s:1548   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccsdvWVI.s:1568   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccsdvWVI.s:1558   .rodata.cst32:0000000000000520 .LC47
     /tmp/ccsdvWVI.s:1578   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccsdvWVI.s:1589   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccsdvWVI.s:1837   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccsdvWVI.s:1594   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccsdvWVI.s:1604   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccsdvWVI.s:1621   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccsdvWVI.s:1626   .rodata.cst32:00000000000005c0 .LC55
     /tmp/ccsdvWVI.s:1636   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccsdvWVI.s:1646   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccsdvWVI.s:1686   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccsdvWVI.s:1656   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccsdvWVI.s:1666   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccsdvWVI.s:1696   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccsdvWVI.s:1676   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccsdvWVI.s:1726   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccsdvWVI.s:1736   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccsdvWVI.s:1706   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccsdvWVI.s:1746   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccsdvWVI.s:1716   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccsdvWVI.s:1756   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccsdvWVI.s:1766   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccsdvWVI.s:1816   .rodata.cst32:0000000000000820 .LC74

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZNSo9_M_insertIlEERSoT_
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSolsEi
_ZNSo9_M_insertIdEERSoT_
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
