GAS LISTING /tmp/cczaDmDK.s 			page 1


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
GAS LISTING /tmp/cczaDmDK.s 			page 2


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
GAS LISTING /tmp/cczaDmDK.s 			page 3


  97 0015 4154     		pushq	%r12
  98 0017 53       		pushq	%rbx
  99 0018 4883E4E0 		andq	$-32, %rsp
 100 001c 4881EC30 		subq	$560, %rsp
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
 110 004c C5FD281D 		vmovapd	.LC3(%rip), %ymm3
 110      00000000 
 111 0054 C5FD2815 		vmovapd	.LC4(%rip), %ymm2
 111      00000000 
 112 005c 4989DE   		movq	%rbx, %r14
 113 005f 31DB     		xorl	%ebx, %ebx
 114 0061 C57D2805 		vmovapd	.LC5(%rip), %ymm8
 114      00000000 
 115 0069 48894424 		movq	%rax, 8(%rsp)
 115      08
 116              	.L12:
 117 006e C4C17D10 		vmovupd	(%r14), %ymm7
 117      3E
 118 0073 BA102700 		movl	$10000, %edx
 118      00
 119 0078 C5FD282D 		vmovapd	.LC1(%rip), %ymm5
 119      00000000 
 120 0080 C5FD29BC 		vmovapd	%ymm7, 464(%rsp)
 120      24D00100 
 120      00
 121 0089 C5FD29AC 		vmovapd	%ymm5, 368(%rsp)
 121      24700100 
 121      00
 122 0092 C5FD280D 		vmovapd	.LC1(%rip), %ymm1
 122      00000000 
 123 009a C4C17D10 		vmovupd	32(%r14), %ymm6
 123      7620
 124 00a0 C5FD28C1 		vmovapd	%ymm1, %ymm0
 125 00a4 C5FD28E1 		vmovapd	%ymm1, %ymm4
 126 00a8 C5FD29B4 		vmovapd	%ymm6, 496(%rsp)
 126      24F00100 
 126      00
 127 00b1 C4C17D10 		vmovupd	64(%r14), %ymm5
 127      6E40
 128 00b7 C5FD29AC 		vmovapd	%ymm5, 528(%rsp)
 128      24100200 
 128      00
 129              		.p2align 4,,10
GAS LISTING /tmp/cczaDmDK.s 			page 4


 130              		.p2align 3
 131              	.L22:
 132 00c0 C55D59DC 		vmulpd	%ymm4, %ymm4, %ymm11
 133 00c4 83EA01   		subl	$1, %edx
 134 00c7 C57D59D0 		vmulpd	%ymm0, %ymm0, %ymm10
 135 00cb C57559C9 		vmulpd	%ymm1, %ymm1, %ymm9
 136 00cf C5255CDF 		vsubpd	%ymm7, %ymm11, %ymm11
 137 00d3 C52D5CD6 		vsubpd	%ymm6, %ymm10, %ymm10
 138 00d7 C5355CCD 		vsubpd	%ymm5, %ymm9, %ymm9
 139 00db C4416559 		vmulpd	%ymm11, %ymm3, %ymm14
 139      F3
 140 00e0 C4416559 		vmulpd	%ymm10, %ymm3, %ymm13
 140      EA
 141 00e5 C4416559 		vmulpd	%ymm9, %ymm3, %ymm12
 141      E1
 142 00ea C50D58B4 		vaddpd	368(%rsp), %ymm14, %ymm14
 142      24700100 
 142      00
 143 00f3 C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 143      ED
 144 00f8 C4417558 		vaddpd	%ymm12, %ymm1, %ymm12
 144      E4
 145 00fd C4410D59 		vmulpd	%ymm14, %ymm14, %ymm14
 145      F6
 146 0102 C4411559 		vmulpd	%ymm13, %ymm13, %ymm13
 146      ED
 147 0107 C4411D59 		vmulpd	%ymm12, %ymm12, %ymm12
 147      E4
 148 010c C50D5CF7 		vsubpd	%ymm7, %ymm14, %ymm14
 149 0110 C5155CEE 		vsubpd	%ymm6, %ymm13, %ymm13
 150 0114 C51D5CE5 		vsubpd	%ymm5, %ymm12, %ymm12
 151 0118 C4416D59 		vmulpd	%ymm14, %ymm2, %ymm15
 151      FE
 152 011d C4416559 		vmulpd	%ymm14, %ymm3, %ymm14
 152      F6
 153 0122 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 153      DB
 154 0127 C4416D59 		vmulpd	%ymm13, %ymm2, %ymm15
 154      FD
 155 012c C4415D58 		vaddpd	%ymm14, %ymm4, %ymm14
 155      F6
 156 0131 C4416559 		vmulpd	%ymm13, %ymm3, %ymm13
 156      ED
 157 0136 C4410558 		vaddpd	%ymm10, %ymm15, %ymm10
 157      D2
 158 013b C4410D59 		vmulpd	%ymm14, %ymm14, %ymm14
 158      F6
 159 0140 C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 159      ED
 160 0145 C4416D59 		vmulpd	%ymm12, %ymm2, %ymm15
 160      FC
 161 014a C4416559 		vmulpd	%ymm12, %ymm3, %ymm12
 161      E4
 162 014f C50D5CF7 		vsubpd	%ymm7, %ymm14, %ymm14
 163 0153 C4411559 		vmulpd	%ymm13, %ymm13, %ymm13
 163      ED
 164 0158 C4410558 		vaddpd	%ymm9, %ymm15, %ymm9
GAS LISTING /tmp/cczaDmDK.s 			page 5


 164      C9
 165 015d C4417558 		vaddpd	%ymm12, %ymm1, %ymm12
 165      E4
 166 0162 C4416D59 		vmulpd	%ymm14, %ymm2, %ymm15
 166      FE
 167 0167 C5155CEE 		vsubpd	%ymm6, %ymm13, %ymm13
 168 016b C4413D59 		vmulpd	%ymm14, %ymm8, %ymm14
 168      F6
 169 0170 C4411D59 		vmulpd	%ymm12, %ymm12, %ymm12
 169      E4
 170 0175 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 170      DF
 171 017a C4416D59 		vmulpd	%ymm13, %ymm2, %ymm15
 171      FD
 172 017f C4415D58 		vaddpd	%ymm14, %ymm4, %ymm14
 172      F6
 173 0184 C4413D59 		vmulpd	%ymm13, %ymm8, %ymm13
 173      ED
 174 0189 C51D5CE5 		vsubpd	%ymm5, %ymm12, %ymm12
 175 018d C4412D58 		vaddpd	%ymm15, %ymm10, %ymm10
 175      D7
 176 0192 C4410D59 		vmulpd	%ymm14, %ymm14, %ymm14
 176      F6
 177 0197 C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 177      ED
 178 019c C4416D59 		vmulpd	%ymm12, %ymm2, %ymm15
 178      FC
 179 01a1 C4413D59 		vmulpd	%ymm12, %ymm8, %ymm12
 179      E4
 180 01a6 C50D5CF7 		vsubpd	%ymm7, %ymm14, %ymm14
 181 01aa C4411559 		vmulpd	%ymm13, %ymm13, %ymm13
 181      ED
 182 01af C4413558 		vaddpd	%ymm15, %ymm9, %ymm9
 182      CF
 183 01b4 C4417558 		vaddpd	%ymm12, %ymm1, %ymm12
 183      E4
 184 01b9 C57D29B4 		vmovapd	%ymm14, 272(%rsp)
 184      24100100 
 184      00
 185 01c2 C5155CEE 		vsubpd	%ymm6, %ymm13, %ymm13
 186 01c6 C4412558 		vaddpd	%ymm14, %ymm11, %ymm11
 186      DE
 187 01cb C4411D59 		vmulpd	%ymm12, %ymm12, %ymm12
 187      E4
 188 01d0 C4412D58 		vaddpd	%ymm13, %ymm10, %ymm10
 188      D5
 189 01d5 C57D29AC 		vmovapd	%ymm13, 304(%rsp)
 189      24300100 
 189      00
 190 01de C57D299C 		vmovapd	%ymm11, 176(%rsp)
 190      24B00000 
 190      00
 191 01e7 C51D5CE5 		vsubpd	%ymm5, %ymm12, %ymm12
 192 01eb C525591D 		vmulpd	.LC6(%rip), %ymm11, %ymm11
 192      00000000 
 193 01f3 C57D2994 		vmovapd	%ymm10, 208(%rsp)
 193      24D00000 
GAS LISTING /tmp/cczaDmDK.s 			page 6


 193      00
 194 01fc C52D5915 		vmulpd	.LC6(%rip), %ymm10, %ymm10
 194      00000000 
 195 0204 C4413558 		vaddpd	%ymm12, %ymm9, %ymm9
 195      CC
 196 0209 C57D29A4 		vmovapd	%ymm12, 336(%rsp)
 196      24500100 
 196      00
 197 0212 C4C15D58 		vaddpd	%ymm11, %ymm4, %ymm4
 197      E3
 198 0217 C4C17D58 		vaddpd	%ymm10, %ymm0, %ymm0
 198      C2
 199 021c C57D298C 		vmovapd	%ymm9, 240(%rsp)
 199      24F00000 
 199      00
 200 0225 C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 200      00000000 
 201 022d C5FD29A4 		vmovapd	%ymm4, 368(%rsp)
 201      24700100 
 201      00
 202 0236 C5FD2984 		vmovapd	%ymm0, 400(%rsp)
 202      24900100 
 202      00
 203 023f C4C17558 		vaddpd	%ymm9, %ymm1, %ymm1
 203      C9
 204 0244 C5FD298C 		vmovapd	%ymm1, 432(%rsp)
 204      24B00100 
 204      00
 205 024d 0F856DFE 		jne	.L22
 205      FFFF
 206 0253 89D8     		movl	%ebx, %eax
 207 0255 41F7ED   		imull	%r13d
 208 0258 89D8     		movl	%ebx, %eax
 209 025a C1F81F   		sarl	$31, %eax
 210 025d C1FA0B   		sarl	$11, %edx
 211 0260 29C2     		subl	%eax, %edx
 212 0262 89D8     		movl	%ebx, %eax
 213 0264 69D28813 		imull	$5000, %edx, %edx
 213      0000
 214 026a 29D0     		subl	%edx, %eax
 215 026c 83F801   		cmpl	$1, %eax
 216 026f 0F848B00 		je	.L14
 216      0000
 217              	.L20:
 218 0275 83C30C   		addl	$12, %ebx
 219 0278 4983C660 		addq	$96, %r14
 220 027c 81FBC0C4 		cmpl	$181440, %ebx
 220      0200
 221 0282 0F85E6FD 		jne	.L12
 221      FFFF
 222 0288 C5F877   		vzeroupper
 223 028b E8000000 		call	clock
 223      00
 224 0290 BA0C0000 		movl	$12, %edx
 224      00
 225 0295 4889C3   		movq	%rax, %rbx
 226 0298 BE000000 		movl	$.LC9, %esi
GAS LISTING /tmp/cczaDmDK.s 			page 7


 226      00
 227 029d BF000000 		movl	$_ZSt4cout, %edi
 227      00
 228 02a2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 228      00
 229 02a7 4889D9   		movq	%rbx, %rcx
 230 02aa 482B0C24 		subq	(%rsp), %rcx
 231 02ae 48BECFF7 		movabsq	$2361183241434822607, %rsi
 231      53E3A59B 
 231      C420
 232 02b8 BF000000 		movl	$_ZSt4cout, %edi
 232      00
 233 02bd 4889C8   		movq	%rcx, %rax
 234 02c0 48C1F93F 		sarq	$63, %rcx
 235 02c4 48F7EE   		imulq	%rsi
 236 02c7 4889D6   		movq	%rdx, %rsi
 237 02ca 48C1FE07 		sarq	$7, %rsi
 238 02ce 4829CE   		subq	%rcx, %rsi
 239 02d1 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 239      00
 240 02d6 BE000000 		movl	$.LC10, %esi
 240      00
 241 02db 4889C7   		movq	%rax, %rdi
 242 02de E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 242      00
 243 02e3 4889C7   		movq	%rax, %rdi
 244 02e6 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 244      00
 245 02eb 488D65D8 		leaq	-40(%rbp), %rsp
 246 02ef 31C0     		xorl	%eax, %eax
 247 02f1 5B       		popq	%rbx
 248 02f2 415C     		popq	%r12
 249 02f4 415D     		popq	%r13
 250 02f6 415E     		popq	%r14
 251 02f8 415F     		popq	%r15
 252 02fa 5D       		popq	%rbp
 253              		.cfi_remember_state
 254              		.cfi_def_cfa 7, 8
 255 02fb C3       		ret
 256 02fc 0F1F4000 		.p2align 4,,10
 257              		.p2align 3
 258              	.L14:
 259              		.cfi_restore_state
 260 0300 4C8DBC24 		leaq	176(%rsp), %r15
 260      B0000000 
 261              	.L21:
 262 0308 C4C17B10 		vmovsd	192(%r15), %xmm1
 262      8FC00000 
 262      00
 263 0311 BA040000 		movl	$4, %edx
 263      00
 264 0316 BE000000 		movl	$.LC7, %esi
 264      00
 265 031b C4C17B10 		vmovsd	288(%r15), %xmm0
 265      87200100 
 265      00
 266 0324 BF000000 		movl	$_ZSt4cout, %edi
GAS LISTING /tmp/cczaDmDK.s 			page 8


 266      00
 267 0329 C57D2944 		vmovapd	%ymm8, 16(%rsp)
 267      2410
 268 032f C5FD2954 		vmovapd	%ymm2, 48(%rsp)
 268      2430
 269 0335 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 269      2450
 270 033b C5FB114C 		vmovsd	%xmm1, 112(%rsp)
 270      2470
 271 0341 C5FB1184 		vmovsd	%xmm0, 144(%rsp)
 271      24900000 
 271      00
 272 034a C5F877   		vzeroupper
 273 034d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 273      00
 274 0352 C5FB1084 		vmovsd	144(%rsp), %xmm0
 274      24900000 
 274      00
 275 035b BF000000 		movl	$_ZSt4cout, %edi
 275      00
 276 0360 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 276      00
 277 0365 BA030000 		movl	$3, %edx
 277      00
 278 036a BE000000 		movl	$.LC8, %esi
 278      00
 279 036f 4889C7   		movq	%rax, %rdi
 280 0372 4989C4   		movq	%rax, %r12
 281 0375 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 281      00
 282 037a C5FB104C 		vmovsd	112(%rsp), %xmm1
 282      2470
 283 0380 4C89E7   		movq	%r12, %rdi
 284 0383 C5F928C1 		vmovapd	%xmm1, %xmm0
 285 0387 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 285      00
 286 038c 4989C0   		movq	%rax, %r8
 287 038f 488B00   		movq	(%rax), %rax
 288 0392 C5FD285C 		vmovapd	80(%rsp), %ymm3
 288      2450
 289 0398 C5FD2854 		vmovapd	48(%rsp), %ymm2
 289      2430
 290 039e C57D2844 		vmovapd	16(%rsp), %ymm8
 290      2410
 291 03a4 488B40E8 		movq	-24(%rax), %rax
 292 03a8 498B9400 		movq	240(%r8,%rax), %rdx
 292      F0000000 
 293 03b0 4885D2   		testq	%rdx, %rdx
 294 03b3 0F84BA00 		je	.L25
 294      0000
 295 03b9 807A3800 		cmpb	$0, 56(%rdx)
 296 03bd 7458     		je	.L18
 297 03bf 0FB64243 		movzbl	67(%rdx), %eax
 298              	.L19:
 299 03c3 0FBEF0   		movsbl	%al, %esi
 300 03c6 4C89C7   		movq	%r8, %rdi
 301 03c9 C57D2944 		vmovapd	%ymm8, 80(%rsp)
GAS LISTING /tmp/cczaDmDK.s 			page 9


 301      2450
 302 03cf C5FD2954 		vmovapd	%ymm2, 112(%rsp)
 302      2470
 303 03d5 C5FD299C 		vmovapd	%ymm3, 144(%rsp)
 303      24900000 
 303      00
 304 03de C5F877   		vzeroupper
 305 03e1 4983C720 		addq	$32, %r15
 306 03e5 E8000000 		call	_ZNSo3putEc
 306      00
 307 03ea 4889C7   		movq	%rax, %rdi
 308 03ed E8000000 		call	_ZNSo5flushEv
 308      00
 309 03f2 4C3B7C24 		cmpq	8(%rsp), %r15
 309      08
 310 03f7 C5FD289C 		vmovapd	144(%rsp), %ymm3
 310      24900000 
 310      00
 311 0400 C5FD2854 		vmovapd	112(%rsp), %ymm2
 311      2470
 312 0406 C57D2844 		vmovapd	80(%rsp), %ymm8
 312      2450
 313 040c 0F85F6FE 		jne	.L21
 313      FFFF
 314 0412 E95EFEFF 		jmp	.L20
 314      FF
 315              	.L18:
 316 0417 4889D7   		movq	%rdx, %rdi
 317 041a C57D2944 		vmovapd	%ymm8, 16(%rsp)
 317      2410
 318 0420 4C894424 		movq	%r8, 112(%rsp)
 318      70
 319 0425 C5FD2954 		vmovapd	%ymm2, 48(%rsp)
 319      2430
 320 042b 48899424 		movq	%rdx, 144(%rsp)
 320      90000000 
 321 0433 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 321      2450
 322 0439 C5F877   		vzeroupper
 323 043c E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 323      00
 324 0441 488B9424 		movq	144(%rsp), %rdx
 324      90000000 
 325 0449 BE0A0000 		movl	$10, %esi
 325      00
 326 044e 488B02   		movq	(%rdx), %rax
 327 0451 4889D7   		movq	%rdx, %rdi
 328 0454 FF5030   		call	*48(%rax)
 329 0457 C57D2844 		vmovapd	16(%rsp), %ymm8
 329      2410
 330 045d 4C8B4424 		movq	112(%rsp), %r8
 330      70
 331 0462 C5FD2854 		vmovapd	48(%rsp), %ymm2
 331      2430
 332 0468 C5FD285C 		vmovapd	80(%rsp), %ymm3
 332      2450
 333 046e E950FFFF 		jmp	.L19
GAS LISTING /tmp/cczaDmDK.s 			page 10


 333      FF
 334              	.L25:
 335 0473 C5F877   		vzeroupper
 336 0476 E8000000 		call	_ZSt16__throw_bad_castv
 336      00
 337              		.cfi_endproc
 338              	.LFE4383:
 339              		.size	main, .-main
 340 047b 0F1F4400 		.p2align 4,,15
 340      00
 341              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 342              	_GLOBAL__sub_I__Z8linspaceddi:
 343              	.LFB4595:
 344              		.cfi_startproc
 345 0480 4883EC08 		subq	$8, %rsp
 346              		.cfi_def_cfa_offset 16
 347 0484 BF000000 		movl	$_ZStL8__ioinit, %edi
 347      00
 348 0489 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 348      00
 349 048e BA000000 		movl	$__dso_handle, %edx
 349      00
 350 0493 BE000000 		movl	$_ZStL8__ioinit, %esi
 350      00
 351 0498 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 351      00
 352 049d 4883C408 		addq	$8, %rsp
 353              		.cfi_def_cfa_offset 8
 354 04a1 E9000000 		jmp	__cxa_atexit
 354      00
 355              		.cfi_endproc
 356              	.LFE4595:
 357              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 358              		.section	.init_array,"aw"
 359              		.align 8
 360 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 360      00000000 
 361              		.local	_ZStL8__ioinit
 362              		.comm	_ZStL8__ioinit,1,1
 363              		.section	.rodata.cst8,"aM",@progbits,8
 364              		.align 8
 365              	.LC0:
 366 0000 00000000 		.long	0
 367 0004 0000F03F 		.long	1072693248
 368              		.section	.rodata.cst32,"aM",@progbits,32
 369              		.align 32
 370              	.LC1:
 371 0000 00000000 		.long	0
 372 0004 0000E0BF 		.long	-1075838976
 373 0008 00000000 		.long	0
 374 000c 0000E0BF 		.long	-1075838976
 375 0010 00000000 		.long	0
 376 0014 0000E0BF 		.long	-1075838976
 377 0018 00000000 		.long	0
 378 001c 0000E0BF 		.long	-1075838976
 379              		.section	.rodata.cst8
 380              		.align 8
GAS LISTING /tmp/cczaDmDK.s 			page 11


 381              	.LC2:
 382 0008 9A999999 		.long	2576980378
 383 000c 9999B93F 		.long	1069128089
 384              		.section	.rodata.cst32
 385              		.align 32
 386              	.LC3:
 387 0020 7B14AE47 		.long	1202590843
 388 0024 E17A743F 		.long	1064598241
 389 0028 7B14AE47 		.long	1202590843
 390 002c E17A743F 		.long	1064598241
 391 0030 7B14AE47 		.long	1202590843
 392 0034 E17A743F 		.long	1064598241
 393 0038 7B14AE47 		.long	1202590843
 394 003c E17A743F 		.long	1064598241
 395              		.align 32
 396              	.LC4:
 397 0040 00000000 		.long	0
 398 0044 00000040 		.long	1073741824
 399 0048 00000000 		.long	0
 400 004c 00000040 		.long	1073741824
 401 0050 00000000 		.long	0
 402 0054 00000040 		.long	1073741824
 403 0058 00000000 		.long	0
 404 005c 00000040 		.long	1073741824
 405              		.align 32
 406              	.LC5:
 407 0060 7B14AE47 		.long	1202590843
 408 0064 E17A843F 		.long	1065646817
 409 0068 7B14AE47 		.long	1202590843
 410 006c E17A843F 		.long	1065646817
 411 0070 7B14AE47 		.long	1202590843
 412 0074 E17A843F 		.long	1065646817
 413 0078 7B14AE47 		.long	1202590843
 414 007c E17A843F 		.long	1065646817
 415              		.align 32
 416              	.LC6:
 417 0080 4F1BE8B4 		.long	3035110223
 418 0084 814E5B3F 		.long	1062948481
 419 0088 4F1BE8B4 		.long	3035110223
 420 008c 814E5B3F 		.long	1062948481
 421 0090 4F1BE8B4 		.long	3035110223
 422 0094 814E5B3F 		.long	1062948481
 423 0098 4F1BE8B4 		.long	3035110223
 424 009c 814E5B3F 		.long	1062948481
 425              		.hidden	__dso_handle
 426              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 427              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cczaDmDK.s 			page 12


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/cczaDmDK.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cczaDmDK.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cczaDmDK.s:81     .text.startup:0000000000000000 main
     /tmp/cczaDmDK.s:342    .text.startup:0000000000000480 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cczaDmDK.s:365    .rodata.cst8:0000000000000000 .LC0
     /tmp/cczaDmDK.s:381    .rodata.cst8:0000000000000008 .LC2
     /tmp/cczaDmDK.s:386    .rodata.cst32:0000000000000020 .LC3
     /tmp/cczaDmDK.s:396    .rodata.cst32:0000000000000040 .LC4
     /tmp/cczaDmDK.s:406    .rodata.cst32:0000000000000060 .LC5
     /tmp/cczaDmDK.s:370    .rodata.cst32:0000000000000000 .LC1
     /tmp/cczaDmDK.s:416    .rodata.cst32:0000000000000080 .LC6

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
