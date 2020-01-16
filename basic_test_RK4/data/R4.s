GAS LISTING /tmp/ccgL5DkD.s 			page 1


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
GAS LISTING /tmp/ccgL5DkD.s 			page 2


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
  93              		.cfi_offset 15, -24
  94              		.cfi_offset 14, -32
  95              		.cfi_offset 13, -40
  96 000f 41BDAD8B 		movl	$1759218605, %r13d
  96      DB68
GAS LISTING /tmp/ccgL5DkD.s 			page 3


  97 0015 4154     		pushq	%r12
  98 0017 53       		pushq	%rbx
  99 0018 4883E4E0 		andq	$-32, %rsp
 100 001c 4881EC90 		subq	$656, %rsp
 100      020000
 101              		.cfi_offset 12, -48
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
 108 0040 48890424 		movq	%rax, (%rsp)
 109 0044 488D8424 		leaq	272(%rsp), %rax
 109      10010000 
 110 004c C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 110      00000000 
 111 0054 C5FD2825 		vmovapd	.LC4(%rip), %ymm4
 111      00000000 
 112 005c 4989DE   		movq	%rbx, %r14
 113 005f 31DB     		xorl	%ebx, %ebx
 114 0061 48894424 		movq	%rax, 8(%rsp)
 114      08
 115              	.L12:
 116 0066 C4C17D10 		vmovupd	(%r14), %ymm6
 116      36
 117 006b BA102700 		movl	$10000, %edx
 117      00
 118 0070 C5FD281D 		vmovapd	.LC1(%rip), %ymm3
 118      00000000 
 119 0078 C5FD29B4 		vmovapd	%ymm6, 528(%rsp)
 119      24100200 
 119      00
 120 0081 C5FD299C 		vmovapd	%ymm3, 400(%rsp)
 120      24900100 
 120      00
 121 008a C5FD2815 		vmovapd	.LC1(%rip), %ymm2
 121      00000000 
 122 0092 C4C17D10 		vmovupd	32(%r14), %ymm3
 122      5E20
 123 0098 C5FD28CA 		vmovapd	%ymm2, %ymm1
 124 009c C5FD28C2 		vmovapd	%ymm2, %ymm0
 125 00a0 C5FD295C 		vmovapd	%ymm3, 112(%rsp)
 125      2470
 126 00a6 C5FD299C 		vmovapd	%ymm3, 560(%rsp)
 126      24300200 
 126      00
 127 00af C4C17D10 		vmovupd	64(%r14), %ymm3
 127      5E40
 128 00b5 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 128      2450
 129 00bb C5FD299C 		vmovapd	%ymm3, 592(%rsp)
 129      24500200 
GAS LISTING /tmp/ccgL5DkD.s 			page 4


 129      00
 130 00c4 C4C17D10 		vmovupd	96(%r14), %ymm3
 130      5E60
 131 00ca C5FD295C 		vmovapd	%ymm3, 48(%rsp)
 131      2430
 132 00d0 C5FD299C 		vmovapd	%ymm3, 624(%rsp)
 132      24700200 
 132      00
 133 00d9 C5FD28DA 		vmovapd	%ymm2, %ymm3
 134 00dd 0F1F00   		.p2align 4,,10
 135              		.p2align 3
 136              	.L22:
 137 00e0 C56559EB 		vmulpd	%ymm3, %ymm3, %ymm13
 138 00e4 83EA01   		subl	$1, %edx
 139 00e7 C57D59E0 		vmulpd	%ymm0, %ymm0, %ymm12
 140 00eb C57559D9 		vmulpd	%ymm1, %ymm1, %ymm11
 141 00ef C5155CEE 		vsubpd	%ymm6, %ymm13, %ymm13
 142 00f3 C56D59F2 		vmulpd	%ymm2, %ymm2, %ymm14
 143 00f7 C51D5C64 		vsubpd	112(%rsp), %ymm12, %ymm12
 143      2470
 144 00fd C5255C5C 		vsubpd	80(%rsp), %ymm11, %ymm11
 144      2450
 145 0103 C4415559 		vmulpd	%ymm13, %ymm5, %ymm9
 145      CD
 146 0108 C50D5C74 		vsubpd	48(%rsp), %ymm14, %ymm14
 146      2430
 147 010e C4415559 		vmulpd	%ymm12, %ymm5, %ymm8
 147      C4
 148 0113 C535588C 		vaddpd	400(%rsp), %ymm9, %ymm9
 148      24900100 
 148      00
 149 011c C4C15559 		vmulpd	%ymm11, %ymm5, %ymm7
 149      FB
 150 0121 C4415559 		vmulpd	%ymm14, %ymm5, %ymm10
 150      D6
 151 0126 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 151      C0
 152 012b C5F558FF 		vaddpd	%ymm7, %ymm1, %ymm7
 153 012f C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 153      C9
 154 0134 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 154      D2
 155 0139 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 155      C0
 156 013e C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 157 0142 C5355CCE 		vsubpd	%ymm6, %ymm9, %ymm9
 158 0146 C4412D59 		vmulpd	%ymm10, %ymm10, %ymm10
 158      D2
 159 014b C53D5C44 		vsubpd	112(%rsp), %ymm8, %ymm8
 159      2470
 160 0151 C5C55C7C 		vsubpd	80(%rsp), %ymm7, %ymm7
 160      2450
 161 0157 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm15
 161      F9
 162 015c C52D5C54 		vsubpd	48(%rsp), %ymm10, %ymm10
 162      2430
 163 0162 C4415559 		vmulpd	%ymm9, %ymm5, %ymm9
GAS LISTING /tmp/ccgL5DkD.s 			page 5


 163      C9
 164 0167 C4410558 		vaddpd	%ymm13, %ymm15, %ymm13
 164      ED
 165 016c C4415D59 		vmulpd	%ymm8, %ymm4, %ymm15
 165      F8
 166 0171 C4416558 		vaddpd	%ymm9, %ymm3, %ymm9
 166      C9
 167 0176 C4415559 		vmulpd	%ymm8, %ymm5, %ymm8
 167      C0
 168 017b C4410558 		vaddpd	%ymm12, %ymm15, %ymm12
 168      E4
 169 0180 C55D59FF 		vmulpd	%ymm7, %ymm4, %ymm15
 170 0184 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 170      C0
 171 0189 C5D559FF 		vmulpd	%ymm7, %ymm5, %ymm7
 172 018d C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 172      C9
 173 0192 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 173      DB
 174 0197 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 174      C0
 175 019c C5F558FF 		vaddpd	%ymm7, %ymm1, %ymm7
 176 01a0 C4415D59 		vmulpd	%ymm10, %ymm4, %ymm15
 176      FA
 177 01a5 C5355CCE 		vsubpd	%ymm6, %ymm9, %ymm9
 178 01a9 C4415559 		vmulpd	%ymm10, %ymm5, %ymm10
 178      D2
 179 01ae C53D5C44 		vsubpd	112(%rsp), %ymm8, %ymm8
 179      2470
 180 01b4 C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 181 01b8 C4410558 		vaddpd	%ymm14, %ymm15, %ymm14
 181      F6
 182 01bd C4415D59 		vmulpd	%ymm9, %ymm4, %ymm15
 182      F9
 183 01c2 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 183      D2
 184 01c7 C535590D 		vmulpd	.LC5(%rip), %ymm9, %ymm9
 184      00000000 
 185 01cf C5C55C7C 		vsubpd	80(%rsp), %ymm7, %ymm7
 185      2450
 186 01d5 C4411558 		vaddpd	%ymm15, %ymm13, %ymm13
 186      EF
 187 01da C4412D59 		vmulpd	%ymm10, %ymm10, %ymm10
 187      D2
 188 01df C4415D59 		vmulpd	%ymm8, %ymm4, %ymm15
 188      F8
 189 01e4 C4416558 		vaddpd	%ymm9, %ymm3, %ymm9
 189      C9
 190 01e9 C53D5905 		vmulpd	.LC5(%rip), %ymm8, %ymm8
 190      00000000 
 191 01f1 C52D5C54 		vsubpd	48(%rsp), %ymm10, %ymm10
 191      2430
 192 01f7 C4411D58 		vaddpd	%ymm15, %ymm12, %ymm12
 192      E7
 193 01fc C55D59FF 		vmulpd	%ymm7, %ymm4, %ymm15
 194 0200 C5C5593D 		vmulpd	.LC5(%rip), %ymm7, %ymm7
 194      00000000 
GAS LISTING /tmp/ccgL5DkD.s 			page 6


 195 0208 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 195      C0
 196 020d C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 196      C9
 197 0212 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 197      DF
 198 0217 C4415D59 		vmulpd	%ymm10, %ymm4, %ymm15
 198      FA
 199 021c C52D5915 		vmulpd	.LC5(%rip), %ymm10, %ymm10
 199      00000000 
 200 0224 C5F558FF 		vaddpd	%ymm7, %ymm1, %ymm7
 201 0228 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 201      C0
 202 022d C5355CCE 		vsubpd	%ymm6, %ymm9, %ymm9
 203 0231 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 203      F7
 204 0236 C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 205 023a C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 205      D2
 206 023f C57D298C 		vmovapd	%ymm9, 272(%rsp)
 206      24100100 
 206      00
 207 0248 C53D5C44 		vsubpd	112(%rsp), %ymm8, %ymm8
 207      2470
 208 024e C5C55C7C 		vsubpd	80(%rsp), %ymm7, %ymm7
 208      2450
 209 0254 C4412D59 		vmulpd	%ymm10, %ymm10, %ymm10
 209      D2
 210 0259 C4411558 		vaddpd	%ymm9, %ymm13, %ymm9
 210      C9
 211 025e C57D2984 		vmovapd	%ymm8, 304(%rsp)
 211      24300100 
 211      00
 212 0267 C4411D58 		vaddpd	%ymm8, %ymm12, %ymm8
 212      C0
 213 026c C52558DF 		vaddpd	%ymm7, %ymm11, %ymm11
 214 0270 C57D298C 		vmovapd	%ymm9, 144(%rsp)
 214      24900000 
 214      00
 215 0279 C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 215      00000000 
 216 0281 C5FD29BC 		vmovapd	%ymm7, 336(%rsp)
 216      24500100 
 216      00
 217 028a C57D2984 		vmovapd	%ymm8, 176(%rsp)
 217      24B00000 
 217      00
 218 0293 C52D5C54 		vsubpd	48(%rsp), %ymm10, %ymm10
 218      2430
 219 0299 C57D299C 		vmovapd	%ymm11, 208(%rsp)
 219      24D00000 
 219      00
 220 02a2 C53D5905 		vmulpd	.LC6(%rip), %ymm8, %ymm8
 220      00000000 
 221 02aa C525591D 		vmulpd	.LC6(%rip), %ymm11, %ymm11
 221      00000000 
 222 02b2 C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
GAS LISTING /tmp/ccgL5DkD.s 			page 7


 222      D9
 223 02b7 C4410D58 		vaddpd	%ymm10, %ymm14, %ymm14
 223      F2
 224 02bc C57D2994 		vmovapd	%ymm10, 368(%rsp)
 224      24700100 
 224      00
 225 02c5 C4C17D58 		vaddpd	%ymm8, %ymm0, %ymm0
 225      C0
 226 02ca C5FD299C 		vmovapd	%ymm3, 400(%rsp)
 226      24900100 
 226      00
 227 02d3 C4C17558 		vaddpd	%ymm11, %ymm1, %ymm1
 227      CB
 228 02d8 C57D29B4 		vmovapd	%ymm14, 240(%rsp)
 228      24F00000 
 228      00
 229 02e1 C50D5935 		vmulpd	.LC6(%rip), %ymm14, %ymm14
 229      00000000 
 230 02e9 C5FD2984 		vmovapd	%ymm0, 432(%rsp)
 230      24B00100 
 230      00
 231 02f2 C5FD298C 		vmovapd	%ymm1, 464(%rsp)
 231      24D00100 
 231      00
 232 02fb C4C16D58 		vaddpd	%ymm14, %ymm2, %ymm2
 232      D6
 233 0300 C5FD2994 		vmovapd	%ymm2, 496(%rsp)
 233      24F00100 
 233      00
 234 0309 0F85D1FD 		jne	.L22
 234      FFFF
 235 030f 89D8     		movl	%ebx, %eax
 236 0311 41F7ED   		imull	%r13d
 237 0314 89D8     		movl	%ebx, %eax
 238 0316 C1F81F   		sarl	$31, %eax
 239 0319 C1FA0B   		sarl	$11, %edx
 240 031c 29C2     		subl	%eax, %edx
 241 031e 89D8     		movl	%ebx, %eax
 242 0320 69D28813 		imull	$5000, %edx, %edx
 242      0000
 243 0326 29D0     		subl	%edx, %eax
 244 0328 83F801   		cmpl	$1, %eax
 245 032b 0F848F00 		je	.L14
 245      0000
 246              	.L20:
 247 0331 83C310   		addl	$16, %ebx
 248 0334 4983EE80 		subq	$-128, %r14
 249 0338 81FBC0C4 		cmpl	$181440, %ebx
 249      0200
 250 033e 0F8522FD 		jne	.L12
 250      FFFF
 251 0344 C5F877   		vzeroupper
 252 0347 E8000000 		call	clock
 252      00
 253 034c BA0C0000 		movl	$12, %edx
 253      00
 254 0351 4889C3   		movq	%rax, %rbx
GAS LISTING /tmp/ccgL5DkD.s 			page 8


 255 0354 BE000000 		movl	$.LC9, %esi
 255      00
 256 0359 BF000000 		movl	$_ZSt4cout, %edi
 256      00
 257 035e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 257      00
 258 0363 4889D9   		movq	%rbx, %rcx
 259 0366 482B0C24 		subq	(%rsp), %rcx
 260 036a 48BECFF7 		movabsq	$2361183241434822607, %rsi
 260      53E3A59B 
 260      C420
 261 0374 BF000000 		movl	$_ZSt4cout, %edi
 261      00
 262 0379 4889C8   		movq	%rcx, %rax
 263 037c 48C1F93F 		sarq	$63, %rcx
 264 0380 48F7EE   		imulq	%rsi
 265 0383 4889D6   		movq	%rdx, %rsi
 266 0386 48C1FE07 		sarq	$7, %rsi
 267 038a 4829CE   		subq	%rcx, %rsi
 268 038d E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 268      00
 269 0392 BE000000 		movl	$.LC10, %esi
 269      00
 270 0397 4889C7   		movq	%rax, %rdi
 271 039a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 271      00
 272 039f 4889C7   		movq	%rax, %rdi
 273 03a2 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 273      00
 274 03a7 488D65D8 		leaq	-40(%rbp), %rsp
 275 03ab 31C0     		xorl	%eax, %eax
 276 03ad 5B       		popq	%rbx
 277 03ae 415C     		popq	%r12
 278 03b0 415D     		popq	%r13
 279 03b2 415E     		popq	%r14
 280 03b4 415F     		popq	%r15
 281 03b6 5D       		popq	%rbp
 282              		.cfi_remember_state
 283              		.cfi_def_cfa 7, 8
 284 03b7 C3       		ret
 285 03b8 0F1F8400 		.p2align 4,,10
 285      00000000 
 286              		.p2align 3
 287              	.L14:
 288              		.cfi_restore_state
 289 03c0 4C8DBC24 		leaq	144(%rsp), %r15
 289      90000000 
 290              	.L21:
 291 03c8 C4C17B10 		vmovsd	256(%r15), %xmm1
 291      8F000100 
 291      00
 292 03d1 BA040000 		movl	$4, %edx
 292      00
 293 03d6 BE000000 		movl	$.LC7, %esi
 293      00
 294 03db C4C17B10 		vmovsd	384(%r15), %xmm0
 294      87800100 
GAS LISTING /tmp/ccgL5DkD.s 			page 9


 294      00
 295 03e4 BF000000 		movl	$_ZSt4cout, %edi
 295      00
 296 03e9 C5FD2964 		vmovapd	%ymm4, 16(%rsp)
 296      2410
 297 03ef C5FD296C 		vmovapd	%ymm5, 48(%rsp)
 297      2430
 298 03f5 C5FB114C 		vmovsd	%xmm1, 80(%rsp)
 298      2450
 299 03fb C5FB1144 		vmovsd	%xmm0, 112(%rsp)
 299      2470
 300 0401 C5F877   		vzeroupper
 301 0404 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 301      00
 302 0409 C5FB1044 		vmovsd	112(%rsp), %xmm0
 302      2470
 303 040f BF000000 		movl	$_ZSt4cout, %edi
 303      00
 304 0414 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 304      00
 305 0419 BA030000 		movl	$3, %edx
 305      00
 306 041e BE000000 		movl	$.LC8, %esi
 306      00
 307 0423 4889C7   		movq	%rax, %rdi
 308 0426 4989C4   		movq	%rax, %r12
 309 0429 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 309      00
 310 042e C5FB104C 		vmovsd	80(%rsp), %xmm1
 310      2450
 311 0434 4C89E7   		movq	%r12, %rdi
 312 0437 C5F928C1 		vmovapd	%xmm1, %xmm0
 313 043b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 313      00
 314 0440 4989C0   		movq	%rax, %r8
 315 0443 488B00   		movq	(%rax), %rax
 316 0446 C5FD286C 		vmovapd	48(%rsp), %ymm5
 316      2430
 317 044c C5FD2864 		vmovapd	16(%rsp), %ymm4
 317      2410
 318 0452 488B40E8 		movq	-24(%rax), %rax
 319 0456 498B9400 		movq	240(%r8,%rax), %rdx
 319      F0000000 
 320 045e 4885D2   		testq	%rdx, %rdx
 321 0461 0F849600 		je	.L25
 321      0000
 322 0467 807A3800 		cmpb	$0, 56(%rdx)
 323 046b 7446     		je	.L18
 324 046d 0FB64243 		movzbl	67(%rdx), %eax
 325              	.L19:
 326 0471 0FBEF0   		movsbl	%al, %esi
 327 0474 4C89C7   		movq	%r8, %rdi
 328 0477 C5FD2964 		vmovapd	%ymm4, 80(%rsp)
 328      2450
 329 047d C5FD296C 		vmovapd	%ymm5, 112(%rsp)
 329      2470
 330 0483 C5F877   		vzeroupper
GAS LISTING /tmp/ccgL5DkD.s 			page 10


 331 0486 4983C720 		addq	$32, %r15
 332 048a E8000000 		call	_ZNSo3putEc
 332      00
 333 048f 4889C7   		movq	%rax, %rdi
 334 0492 E8000000 		call	_ZNSo5flushEv
 334      00
 335 0497 4C3B7C24 		cmpq	8(%rsp), %r15
 335      08
 336 049c C5FD286C 		vmovapd	112(%rsp), %ymm5
 336      2470
 337 04a2 C5FD2864 		vmovapd	80(%rsp), %ymm4
 337      2450
 338 04a8 0F851AFF 		jne	.L21
 338      FFFF
 339 04ae E97EFEFF 		jmp	.L20
 339      FF
 340              	.L18:
 341 04b3 4889D7   		movq	%rdx, %rdi
 342 04b6 C5FD2964 		vmovapd	%ymm4, 16(%rsp)
 342      2410
 343 04bc 4C894424 		movq	%r8, 80(%rsp)
 343      50
 344 04c1 C5FD296C 		vmovapd	%ymm5, 48(%rsp)
 344      2430
 345 04c7 48895424 		movq	%rdx, 112(%rsp)
 345      70
 346 04cc C5F877   		vzeroupper
 347 04cf E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 347      00
 348 04d4 488B5424 		movq	112(%rsp), %rdx
 348      70
 349 04d9 BE0A0000 		movl	$10, %esi
 349      00
 350 04de 488B02   		movq	(%rdx), %rax
 351 04e1 4889D7   		movq	%rdx, %rdi
 352 04e4 FF5030   		call	*48(%rax)
 353 04e7 C5FD2864 		vmovapd	16(%rsp), %ymm4
 353      2410
 354 04ed 4C8B4424 		movq	80(%rsp), %r8
 354      50
 355 04f2 C5FD286C 		vmovapd	48(%rsp), %ymm5
 355      2430
 356 04f8 E974FFFF 		jmp	.L19
 356      FF
 357              	.L25:
 358 04fd C5F877   		vzeroupper
 359 0500 E8000000 		call	_ZSt16__throw_bad_castv
 359      00
 360              		.cfi_endproc
 361              	.LFE4383:
 362              		.size	main, .-main
 363 0505 66662E0F 		.p2align 4,,15
 363      1F840000 
 363      000000
 364              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 365              	_GLOBAL__sub_I__Z8linspaceddi:
 366              	.LFB4595:
GAS LISTING /tmp/ccgL5DkD.s 			page 11


 367              		.cfi_startproc
 368 0510 4883EC08 		subq	$8, %rsp
 369              		.cfi_def_cfa_offset 16
 370 0514 BF000000 		movl	$_ZStL8__ioinit, %edi
 370      00
 371 0519 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 371      00
 372 051e BA000000 		movl	$__dso_handle, %edx
 372      00
 373 0523 BE000000 		movl	$_ZStL8__ioinit, %esi
 373      00
 374 0528 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 374      00
 375 052d 4883C408 		addq	$8, %rsp
 376              		.cfi_def_cfa_offset 8
 377 0531 E9000000 		jmp	__cxa_atexit
 377      00
 378              		.cfi_endproc
 379              	.LFE4595:
 380              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 381              		.section	.init_array,"aw"
 382              		.align 8
 383 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 383      00000000 
 384              		.local	_ZStL8__ioinit
 385              		.comm	_ZStL8__ioinit,1,1
 386              		.section	.rodata.cst8,"aM",@progbits,8
 387              		.align 8
 388              	.LC0:
 389 0000 00000000 		.long	0
 390 0004 0000F03F 		.long	1072693248
 391              		.section	.rodata.cst32,"aM",@progbits,32
 392              		.align 32
 393              	.LC1:
 394 0000 00000000 		.long	0
 395 0004 0000E0BF 		.long	-1075838976
 396 0008 00000000 		.long	0
 397 000c 0000E0BF 		.long	-1075838976
 398 0010 00000000 		.long	0
 399 0014 0000E0BF 		.long	-1075838976
 400 0018 00000000 		.long	0
 401 001c 0000E0BF 		.long	-1075838976
 402              		.section	.rodata.cst8
 403              		.align 8
 404              	.LC2:
 405 0008 9A999999 		.long	2576980378
 406 000c 9999B93F 		.long	1069128089
 407              		.section	.rodata.cst32
 408              		.align 32
 409              	.LC3:
 410 0020 7B14AE47 		.long	1202590843
 411 0024 E17A743F 		.long	1064598241
 412 0028 7B14AE47 		.long	1202590843
 413 002c E17A743F 		.long	1064598241
 414 0030 7B14AE47 		.long	1202590843
 415 0034 E17A743F 		.long	1064598241
 416 0038 7B14AE47 		.long	1202590843
GAS LISTING /tmp/ccgL5DkD.s 			page 12


 417 003c E17A743F 		.long	1064598241
 418              		.align 32
 419              	.LC4:
 420 0040 00000000 		.long	0
 421 0044 00000040 		.long	1073741824
 422 0048 00000000 		.long	0
 423 004c 00000040 		.long	1073741824
 424 0050 00000000 		.long	0
 425 0054 00000040 		.long	1073741824
 426 0058 00000000 		.long	0
 427 005c 00000040 		.long	1073741824
 428              		.align 32
 429              	.LC5:
 430 0060 7B14AE47 		.long	1202590843
 431 0064 E17A843F 		.long	1065646817
 432 0068 7B14AE47 		.long	1202590843
 433 006c E17A843F 		.long	1065646817
 434 0070 7B14AE47 		.long	1202590843
 435 0074 E17A843F 		.long	1065646817
 436 0078 7B14AE47 		.long	1202590843
 437 007c E17A843F 		.long	1065646817
 438              		.align 32
 439              	.LC6:
 440 0080 4F1BE8B4 		.long	3035110223
 441 0084 814E5B3F 		.long	1062948481
 442 0088 4F1BE8B4 		.long	3035110223
 443 008c 814E5B3F 		.long	1062948481
 444 0090 4F1BE8B4 		.long	3035110223
 445 0094 814E5B3F 		.long	1062948481
 446 0098 4F1BE8B4 		.long	3035110223
 447 009c 814E5B3F 		.long	1062948481
 448              		.hidden	__dso_handle
 449              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 450              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccgL5DkD.s 			page 13


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/ccgL5DkD.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccgL5DkD.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccgL5DkD.s:81     .text.startup:0000000000000000 main
     /tmp/ccgL5DkD.s:365    .text.startup:0000000000000510 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccgL5DkD.s:388    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccgL5DkD.s:404    .rodata.cst8:0000000000000008 .LC2
     /tmp/ccgL5DkD.s:409    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccgL5DkD.s:419    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccgL5DkD.s:393    .rodata.cst32:0000000000000000 .LC1
     /tmp/ccgL5DkD.s:429    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccgL5DkD.s:439    .rodata.cst32:0000000000000080 .LC6

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
