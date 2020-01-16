GAS LISTING /tmp/ccZl4QPY.s 			page 1


   1              		.file	"basic_test_RK4.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1:
   5              	.LFB4597:
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
  18              	.LFE4597:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4381:
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
  39 0023 C5EB2AD3 		vcvtsi2sd	%ebx, %xmm2, %xmm2
  40 0027 83FB01   		cmpl	$1, %ebx
  41 002a C5FB1044 		vmovsd	8(%rsp), %xmm0
  41      2408
  42 0030 C5FB100C 		vmovsd	(%rsp), %xmm1
  42      24
  43 0035 C5FB1100 		vmovsd	%xmm0, (%rax)
  44 0039 C5F35CC8 		vsubsd	%xmm0, %xmm1, %xmm1
  45 003d C5EB5C15 		vsubsd	.LC0(%rip), %xmm2, %xmm2
  45      00000000 
  46 0045 C5F35ECA 		vdivsd	%xmm2, %xmm1, %xmm1
  47 0049 7E27     		jle	.L8
  48 004b 8D4BFE   		leal	-2(%rbx), %ecx
  49 004e 488D5008 		leaq	8(%rax), %rdx
GAS LISTING /tmp/ccZl4QPY.s 			page 2


  50 0052 488D4CC8 		leaq	16(%rax,%rcx,8), %rcx
  50      10
  51 0057 660F1F84 		.p2align 4,,10
  51      00000000 
  51      00
  52              		.p2align 3
  53              	.L6:
  54 0060 C5F358C0 		vaddsd	%xmm0, %xmm1, %xmm0
  55 0064 4883C208 		addq	$8, %rdx
  56 0068 C5FB1142 		vmovsd	%xmm0, -8(%rdx)
  56      F8
  57 006d 4839CA   		cmpq	%rcx, %rdx
  58 0070 75EE     		jne	.L6
  59              	.L8:
  60 0072 4883C410 		addq	$16, %rsp
  61              		.cfi_def_cfa_offset 16
  62 0076 5B       		popq	%rbx
  63              		.cfi_def_cfa_offset 8
  64 0077 C3       		ret
  65              		.cfi_endproc
  66              	.LFE4381:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.1,"aMS",@progbits,1
  69              	.LC7:
  70 0000 70203D20 		.string	"p = "
  70      00
  71              	.LC8:
  72 0005 78203D00 		.string	"x ="
  73              	.LC9:
  74 0009 456C7465 		.string	"Eltelt ido: "
  74      6C742069 
  74      646F3A20 
  74      00
  75              	.LC10:
  76 0016 206D7300 		.string	" ms"
  77              		.section	.text.startup,"ax",@progbits
  78              		.p2align 4,,15
  79              		.globl	main
  80              		.type	main, @function
  81              	main:
  82              	.LFB4383:
  83              		.cfi_startproc
  84 0000 55       		pushq	%rbp
  85              		.cfi_def_cfa_offset 16
  86              		.cfi_offset 6, -16
  87 0001 BFC0C402 		movl	$181440, %edi
  87      00
  88 0006 4889E5   		movq	%rsp, %rbp
  89              		.cfi_def_cfa_register 6
  90 0009 4157     		pushq	%r15
  91 000b 4156     		pushq	%r14
  92 000d 4155     		pushq	%r13
  93 000f 4154     		pushq	%r12
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96              		.cfi_offset 13, -40
  97              		.cfi_offset 12, -48
GAS LISTING /tmp/ccZl4QPY.s 			page 3


  98 0011 41BCAD8B 		movl	$1759218605, %r12d
  98      DB68
  99 0017 53       		pushq	%rbx
 100 0018 4883E4E0 		andq	$-32, %rsp
 101 001c 4881EC00 		subq	$512, %rsp
 101      020000
 102              		.cfi_offset 3, -56
 103 0023 C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 103      00000000 
 104 002b C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 104      00000000 
 105 0033 E8000000 		call	_Z8linspaceddi
 105      00
 106 0038 4889C3   		movq	%rax, %rbx
 107 003b E8000000 		call	clock
 107      00
 108 0040 48898424 		movq	%rax, 248(%rsp)
 108      F8000000 
 109 0048 488D8424 		leaq	320(%rsp), %rax
 109      40010000 
 110 0050 C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 110      00000000 
 111 0058 C5FD2825 		vmovapd	.LC4(%rip), %ymm4
 111      00000000 
 112 0060 4989DD   		movq	%rbx, %r13
 113 0063 31DB     		xorl	%ebx, %ebx
 114 0065 C57D281D 		vmovapd	.LC5(%rip), %ymm11
 114      00000000 
 115 006d 48898424 		movq	%rax, 240(%rsp)
 115      F0000000 
 116 0075 C57D2815 		vmovapd	.LC6(%rip), %ymm10
 116      00000000 
 117 007d C57D2825 		vmovapd	.LC1(%rip), %ymm12
 117      00000000 
 118              	.L12:
 119 0085 C4C17D10 		vmovupd	0(%r13), %ymm3
 119      5D00
 120 008b C57D29E0 		vmovapd	%ymm12, %ymm0
 121 008f C57D29E1 		vmovapd	%ymm12, %ymm1
 122 0093 C57D29A4 		vmovapd	%ymm12, 384(%rsp)
 122      24800100 
 122      00
 123 009c BA102700 		movl	$10000, %edx
 123      00
 124 00a1 C5FD299C 		vmovapd	%ymm3, 448(%rsp)
 124      24C00100 
 124      00
 125 00aa C4C17D10 		vmovupd	32(%r13), %ymm2
 125      5520
 126 00b0 C5FD2994 		vmovapd	%ymm2, 480(%rsp)
 126      24E00100 
 126      00
 127 00b9 0F1F8000 		.p2align 4,,10
 127      000000
 128              		.p2align 3
 129              	.L22:
 130 00c0 C5F559F9 		vmulpd	%ymm1, %ymm1, %ymm7
GAS LISTING /tmp/ccZl4QPY.s 			page 4


 131 00c4 83EA01   		subl	$1, %edx
 132 00c7 C5FD59F0 		vmulpd	%ymm0, %ymm0, %ymm6
 133 00cb C5C55CFB 		vsubpd	%ymm3, %ymm7, %ymm7
 134 00cf C5CD5CF2 		vsubpd	%ymm2, %ymm6, %ymm6
 135 00d3 C55559CF 		vmulpd	%ymm7, %ymm5, %ymm9
 136 00d7 C55559C6 		vmulpd	%ymm6, %ymm5, %ymm8
 137 00db C535588C 		vaddpd	384(%rsp), %ymm9, %ymm9
 137      24800100 
 137      00
 138 00e4 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 138      C0
 139 00e9 C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 139      C9
 140 00ee C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 140      C0
 141 00f3 C5355CCB 		vsubpd	%ymm3, %ymm9, %ymm9
 142 00f7 C53D5CC2 		vsubpd	%ymm2, %ymm8, %ymm8
 143 00fb C4415D59 		vmulpd	%ymm9, %ymm4, %ymm13
 143      E9
 144 0100 C4415559 		vmulpd	%ymm9, %ymm5, %ymm9
 144      C9
 145 0105 C59558FF 		vaddpd	%ymm7, %ymm13, %ymm7
 146 0109 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm13
 146      E8
 147 010e C4417558 		vaddpd	%ymm9, %ymm1, %ymm9
 147      C9
 148 0113 C4415559 		vmulpd	%ymm8, %ymm5, %ymm8
 148      C0
 149 0118 C59558F6 		vaddpd	%ymm6, %ymm13, %ymm6
 150 011c C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 150      C9
 151 0121 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 151      C0
 152 0126 C5355CCB 		vsubpd	%ymm3, %ymm9, %ymm9
 153 012a C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 153      C0
 154 012f C4415D59 		vmulpd	%ymm9, %ymm4, %ymm13
 154      E9
 155 0134 C53D5CC2 		vsubpd	%ymm2, %ymm8, %ymm8
 156 0138 C4412559 		vmulpd	%ymm9, %ymm11, %ymm9
 156      C9
 157 013d C4C14558 		vaddpd	%ymm13, %ymm7, %ymm7
 157      FD
 158 0142 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm13
 158      E8
 159 0147 C4417558 		vaddpd	%ymm9, %ymm1, %ymm9
 159      C9
 160 014c C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 160      C0
 161 0151 C4C14D58 		vaddpd	%ymm13, %ymm6, %ymm6
 161      F5
 162 0156 C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 162      C9
 163 015b C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 163      C0
 164 0160 C5355CCB 		vsubpd	%ymm3, %ymm9, %ymm9
 165 0164 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
GAS LISTING /tmp/ccZl4QPY.s 			page 5


 165      C0
 166 0169 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 166      F9
 167 016e C57D298C 		vmovapd	%ymm9, 320(%rsp)
 167      24400100 
 167      00
 168 0177 C53D5CC2 		vsubpd	%ymm2, %ymm8, %ymm8
 169 017b C5FD29BC 		vmovapd	%ymm7, 256(%rsp)
 169      24000100 
 169      00
 170 0184 C4C14559 		vmulpd	%ymm10, %ymm7, %ymm7
 170      FA
 171 0189 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 171      F0
 172 018e C57D2984 		vmovapd	%ymm8, 352(%rsp)
 172      24600100 
 172      00
 173 0197 C5F558CF 		vaddpd	%ymm7, %ymm1, %ymm1
 174 019b C5FD29B4 		vmovapd	%ymm6, 288(%rsp)
 174      24200100 
 174      00
 175 01a4 C4C14D59 		vmulpd	%ymm10, %ymm6, %ymm6
 175      F2
 176 01a9 C5FD298C 		vmovapd	%ymm1, 384(%rsp)
 176      24800100 
 176      00
 177 01b2 C5FD58C6 		vaddpd	%ymm6, %ymm0, %ymm0
 178 01b6 C5FD2984 		vmovapd	%ymm0, 416(%rsp)
 178      24A00100 
 178      00
 179 01bf 0F85FBFE 		jne	.L22
 179      FFFF
 180 01c5 89D8     		movl	%ebx, %eax
 181 01c7 41F7EC   		imull	%r12d
 182 01ca 89D8     		movl	%ebx, %eax
 183 01cc C1F81F   		sarl	$31, %eax
 184 01cf C1FA0B   		sarl	$11, %edx
 185 01d2 29C2     		subl	%eax, %edx
 186 01d4 89D8     		movl	%ebx, %eax
 187 01d6 69D28813 		imull	$5000, %edx, %edx
 187      0000
 188 01dc 29D0     		subl	%edx, %eax
 189 01de 83F801   		cmpl	$1, %eax
 190 01e1 0F849100 		je	.L14
 190      0000
 191              	.L20:
 192 01e7 83C308   		addl	$8, %ebx
 193 01ea 4983C540 		addq	$64, %r13
 194 01ee 81FBC0C4 		cmpl	$181440, %ebx
 194      0200
 195 01f4 0F858BFE 		jne	.L12
 195      FFFF
 196 01fa C5F877   		vzeroupper
 197 01fd E8000000 		call	clock
 197      00
 198 0202 BA0C0000 		movl	$12, %edx
 198      00
GAS LISTING /tmp/ccZl4QPY.s 			page 6


 199 0207 4889C3   		movq	%rax, %rbx
 200 020a BE000000 		movl	$.LC9, %esi
 200      00
 201 020f BF000000 		movl	$_ZSt4cout, %edi
 201      00
 202 0214 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 202      00
 203 0219 4889D9   		movq	%rbx, %rcx
 204 021c 482B8C24 		subq	248(%rsp), %rcx
 204      F8000000 
 205 0224 48BECFF7 		movabsq	$2361183241434822607, %rsi
 205      53E3A59B 
 205      C420
 206 022e BF000000 		movl	$_ZSt4cout, %edi
 206      00
 207 0233 4889C8   		movq	%rcx, %rax
 208 0236 48C1F93F 		sarq	$63, %rcx
 209 023a 48F7EE   		imulq	%rsi
 210 023d 4889D6   		movq	%rdx, %rsi
 211 0240 48C1FE07 		sarq	$7, %rsi
 212 0244 4829CE   		subq	%rcx, %rsi
 213 0247 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 213      00
 214 024c BE000000 		movl	$.LC10, %esi
 214      00
 215 0251 4889C7   		movq	%rax, %rdi
 216 0254 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 216      00
 217 0259 4889C7   		movq	%rax, %rdi
 218 025c E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 218      00
 219 0261 488D65D8 		leaq	-40(%rbp), %rsp
 220 0265 31C0     		xorl	%eax, %eax
 221 0267 5B       		popq	%rbx
 222 0268 415C     		popq	%r12
 223 026a 415D     		popq	%r13
 224 026c 415E     		popq	%r14
 225 026e 415F     		popq	%r15
 226 0270 5D       		popq	%rbp
 227              		.cfi_remember_state
 228              		.cfi_def_cfa 7, 8
 229 0271 C3       		ret
 230              		.p2align 4,,10
 231 0272 660F1F44 		.p2align 3
 231      0000
 232              	.L14:
 233              		.cfi_restore_state
 234 0278 4C8DBC24 		leaq	256(%rsp), %r15
 234      00010000 
 235              	.L21:
 236 0280 C4C17B10 		vmovsd	128(%r15), %xmm1
 236      8F800000 
 236      00
 237 0289 BA040000 		movl	$4, %edx
 237      00
 238 028e BE000000 		movl	$.LC7, %esi
 238      00
GAS LISTING /tmp/ccZl4QPY.s 			page 7


 239 0293 C4C17B10 		vmovsd	192(%r15), %xmm0
 239      87C00000 
 239      00
 240 029c BF000000 		movl	$_ZSt4cout, %edi
 240      00
 241 02a1 C57D2914 		vmovapd	%ymm10, (%rsp)
 241      24
 242 02a6 C57D295C 		vmovapd	%ymm11, 32(%rsp)
 242      2420
 243 02ac C5FD2964 		vmovapd	%ymm4, 64(%rsp)
 243      2440
 244 02b2 C5FD296C 		vmovapd	%ymm5, 96(%rsp)
 244      2460
 245 02b8 C57D29A4 		vmovapd	%ymm12, 128(%rsp)
 245      24800000 
 245      00
 246 02c1 C5FB118C 		vmovsd	%xmm1, 160(%rsp)
 246      24A00000 
 246      00
 247 02ca C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 247      24C00000 
 247      00
 248 02d3 C5F877   		vzeroupper
 249 02d6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 249      00
 250 02db C5FB1084 		vmovsd	192(%rsp), %xmm0
 250      24C00000 
 250      00
 251 02e4 BF000000 		movl	$_ZSt4cout, %edi
 251      00
 252 02e9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 252      00
 253 02ee BA030000 		movl	$3, %edx
 253      00
 254 02f3 BE000000 		movl	$.LC8, %esi
 254      00
 255 02f8 4889C7   		movq	%rax, %rdi
 256 02fb 4989C6   		movq	%rax, %r14
 257 02fe E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 257      00
 258 0303 C5FB108C 		vmovsd	160(%rsp), %xmm1
 258      24A00000 
 258      00
 259 030c 4C89F7   		movq	%r14, %rdi
 260 030f C5F928C1 		vmovapd	%xmm1, %xmm0
 261 0313 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 261      00
 262 0318 4989C6   		movq	%rax, %r14
 263 031b 488B00   		movq	(%rax), %rax
 264 031e C57D28A4 		vmovapd	128(%rsp), %ymm12
 264      24800000 
 264      00
 265 0327 C5FD286C 		vmovapd	96(%rsp), %ymm5
 265      2460
 266 032d C5FD2864 		vmovapd	64(%rsp), %ymm4
 266      2440
 267 0333 488B40E8 		movq	-24(%rax), %rax
GAS LISTING /tmp/ccZl4QPY.s 			page 8


 268 0337 C57D285C 		vmovapd	32(%rsp), %ymm11
 268      2420
 269 033d C57D2814 		vmovapd	(%rsp), %ymm10
 269      24
 270 0342 498B9406 		movq	240(%r14,%rax), %rdx
 270      F0000000 
 271 034a 4885D2   		testq	%rdx, %rdx
 272 034d 0F84FB00 		je	.L25
 272      0000
 273 0353 807A3800 		cmpb	$0, 56(%rdx)
 274 0357 747F     		je	.L18
 275 0359 0FB64243 		movzbl	67(%rdx), %eax
 276              	.L19:
 277 035d 0FBEF0   		movsbl	%al, %esi
 278 0360 4C89F7   		movq	%r14, %rdi
 279 0363 C57D2954 		vmovapd	%ymm10, 64(%rsp)
 279      2440
 280 0369 C57D295C 		vmovapd	%ymm11, 96(%rsp)
 280      2460
 281 036f C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 281      24800000 
 281      00
 282 0378 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 282      24A00000 
 282      00
 283 0381 C57D29A4 		vmovapd	%ymm12, 192(%rsp)
 283      24C00000 
 283      00
 284 038a C5F877   		vzeroupper
 285 038d 4983C720 		addq	$32, %r15
 286 0391 E8000000 		call	_ZNSo3putEc
 286      00
 287 0396 4889C7   		movq	%rax, %rdi
 288 0399 E8000000 		call	_ZNSo5flushEv
 288      00
 289 039e 4C3BBC24 		cmpq	240(%rsp), %r15
 289      F0000000 
 290 03a6 C57D28A4 		vmovapd	192(%rsp), %ymm12
 290      24C00000 
 290      00
 291 03af C5FD28AC 		vmovapd	160(%rsp), %ymm5
 291      24A00000 
 291      00
 292 03b8 C5FD28A4 		vmovapd	128(%rsp), %ymm4
 292      24800000 
 292      00
 293 03c1 C57D285C 		vmovapd	96(%rsp), %ymm11
 293      2460
 294 03c7 C57D2854 		vmovapd	64(%rsp), %ymm10
 294      2440
 295 03cd 0F85ADFE 		jne	.L21
 295      FFFF
 296 03d3 E90FFEFF 		jmp	.L20
 296      FF
 297              	.L18:
 298 03d8 4889D7   		movq	%rdx, %rdi
 299 03db C57D2954 		vmovapd	%ymm10, 32(%rsp)
GAS LISTING /tmp/ccZl4QPY.s 			page 9


 299      2420
 300 03e1 48899424 		movq	%rdx, 192(%rsp)
 300      C0000000 
 301 03e9 C57D295C 		vmovapd	%ymm11, 64(%rsp)
 301      2440
 302 03ef C5FD2964 		vmovapd	%ymm4, 96(%rsp)
 302      2460
 303 03f5 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 303      24800000 
 303      00
 304 03fe C57D29A4 		vmovapd	%ymm12, 160(%rsp)
 304      24A00000 
 304      00
 305 0407 C5F877   		vzeroupper
 306 040a E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 306      00
 307 040f 488B9424 		movq	192(%rsp), %rdx
 307      C0000000 
 308 0417 BE0A0000 		movl	$10, %esi
 308      00
 309 041c 488B02   		movq	(%rdx), %rax
 310 041f 4889D7   		movq	%rdx, %rdi
 311 0422 FF5030   		call	*48(%rax)
 312 0425 C57D2854 		vmovapd	32(%rsp), %ymm10
 312      2420
 313 042b C57D285C 		vmovapd	64(%rsp), %ymm11
 313      2440
 314 0431 C5FD2864 		vmovapd	96(%rsp), %ymm4
 314      2460
 315 0437 C5FD28AC 		vmovapd	128(%rsp), %ymm5
 315      24800000 
 315      00
 316 0440 C57D28A4 		vmovapd	160(%rsp), %ymm12
 316      24A00000 
 316      00
 317 0449 E90FFFFF 		jmp	.L19
 317      FF
 318              	.L25:
 319 044e C5F877   		vzeroupper
 320 0451 E8000000 		call	_ZSt16__throw_bad_castv
 320      00
 321              		.cfi_endproc
 322              	.LFE4383:
 323              		.size	main, .-main
 324 0456 662E0F1F 		.p2align 4,,15
 324      84000000 
 324      0000
 325              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 326              	_GLOBAL__sub_I__Z8linspaceddi:
 327              	.LFB4595:
 328              		.cfi_startproc
 329 0460 4883EC08 		subq	$8, %rsp
 330              		.cfi_def_cfa_offset 16
 331 0464 BF000000 		movl	$_ZStL8__ioinit, %edi
 331      00
 332 0469 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 332      00
GAS LISTING /tmp/ccZl4QPY.s 			page 10


 333 046e BA000000 		movl	$__dso_handle, %edx
 333      00
 334 0473 BE000000 		movl	$_ZStL8__ioinit, %esi
 334      00
 335 0478 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 335      00
 336 047d 4883C408 		addq	$8, %rsp
 337              		.cfi_def_cfa_offset 8
 338 0481 E9000000 		jmp	__cxa_atexit
 338      00
 339              		.cfi_endproc
 340              	.LFE4595:
 341              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 342              		.section	.init_array,"aw"
 343              		.align 8
 344 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 344      00000000 
 345              		.local	_ZStL8__ioinit
 346              		.comm	_ZStL8__ioinit,1,1
 347              		.section	.rodata.cst8,"aM",@progbits,8
 348              		.align 8
 349              	.LC0:
 350 0000 00000000 		.long	0
 351 0004 0000F03F 		.long	1072693248
 352              		.section	.rodata.cst32,"aM",@progbits,32
 353              		.align 32
 354              	.LC1:
 355 0000 00000000 		.long	0
 356 0004 0000E0BF 		.long	-1075838976
 357 0008 00000000 		.long	0
 358 000c 0000E0BF 		.long	-1075838976
 359 0010 00000000 		.long	0
 360 0014 0000E0BF 		.long	-1075838976
 361 0018 00000000 		.long	0
 362 001c 0000E0BF 		.long	-1075838976
 363              		.section	.rodata.cst8
 364              		.align 8
 365              	.LC2:
 366 0008 9A999999 		.long	2576980378
 367 000c 9999B93F 		.long	1069128089
 368              		.section	.rodata.cst32
 369              		.align 32
 370              	.LC3:
 371 0020 7B14AE47 		.long	1202590843
 372 0024 E17A743F 		.long	1064598241
 373 0028 7B14AE47 		.long	1202590843
 374 002c E17A743F 		.long	1064598241
 375 0030 7B14AE47 		.long	1202590843
 376 0034 E17A743F 		.long	1064598241
 377 0038 7B14AE47 		.long	1202590843
 378 003c E17A743F 		.long	1064598241
 379              		.align 32
 380              	.LC4:
 381 0040 00000000 		.long	0
 382 0044 00000040 		.long	1073741824
 383 0048 00000000 		.long	0
 384 004c 00000040 		.long	1073741824
GAS LISTING /tmp/ccZl4QPY.s 			page 11


 385 0050 00000000 		.long	0
 386 0054 00000040 		.long	1073741824
 387 0058 00000000 		.long	0
 388 005c 00000040 		.long	1073741824
 389              		.align 32
 390              	.LC5:
 391 0060 7B14AE47 		.long	1202590843
 392 0064 E17A843F 		.long	1065646817
 393 0068 7B14AE47 		.long	1202590843
 394 006c E17A843F 		.long	1065646817
 395 0070 7B14AE47 		.long	1202590843
 396 0074 E17A843F 		.long	1065646817
 397 0078 7B14AE47 		.long	1202590843
 398 007c E17A843F 		.long	1065646817
 399              		.align 32
 400              	.LC6:
 401 0080 4F1BE8B4 		.long	3035110223
 402 0084 814E5B3F 		.long	1062948481
 403 0088 4F1BE8B4 		.long	3035110223
 404 008c 814E5B3F 		.long	1062948481
 405 0090 4F1BE8B4 		.long	3035110223
 406 0094 814E5B3F 		.long	1062948481
 407 0098 4F1BE8B4 		.long	3035110223
 408 009c 814E5B3F 		.long	1062948481
 409              		.hidden	__dso_handle
 410              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 411              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccZl4QPY.s 			page 12


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/ccZl4QPY.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccZl4QPY.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccZl4QPY.s:81     .text.startup:0000000000000000 main
     /tmp/ccZl4QPY.s:326    .text.startup:0000000000000460 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccZl4QPY.s:349    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccZl4QPY.s:365    .rodata.cst8:0000000000000008 .LC2
     /tmp/ccZl4QPY.s:370    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccZl4QPY.s:380    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccZl4QPY.s:390    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccZl4QPY.s:400    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccZl4QPY.s:354    .rodata.cst32:0000000000000000 .LC1

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
