GAS LISTING /tmp/ccWe4BcH.s 			page 1


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
GAS LISTING /tmp/ccWe4BcH.s 			page 2


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
  94 0011 53       		pushq	%rbx
  95              		.cfi_offset 15, -24
  96              		.cfi_offset 14, -32
  97              		.cfi_offset 13, -40
GAS LISTING /tmp/ccWe4BcH.s 			page 3


  98              		.cfi_offset 12, -48
  99              		.cfi_offset 3, -56
 100 0012 31DB     		xorl	%ebx, %ebx
 101 0014 4883E4E0 		andq	$-32, %rsp
 102 0018 4881EC40 		subq	$320, %rsp
 102      010000
 103 001f C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 103      00000000 
 104 0027 C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 104      00000000 
 105 002f E8000000 		call	_Z8linspaceddi
 105      00
 106 0034 4989C4   		movq	%rax, %r12
 107 0037 E8000000 		call	clock
 107      00
 108 003c C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 108      00000000 
 109 0044 4989C5   		movq	%rax, %r13
 110 0047 C5FD2825 		vmovapd	.LC4(%rip), %ymm4
 110      00000000 
 111 004f C5FD283D 		vmovapd	.LC5(%rip), %ymm7
 111      00000000 
 112 0057 C5FD2835 		vmovapd	.LC6(%rip), %ymm6
 112      00000000 
 113              	.L12:
 114 005f C4C17D10 		vmovupd	(%r12), %ymm1
 114      0C24
 115 0065 BA102700 		movl	$10000, %edx
 115      00
 116 006a C5FD2805 		vmovapd	.LC1(%rip), %ymm0
 116      00000000 
 117 0072 C5FD298C 		vmovapd	%ymm1, 288(%rsp)
 117      24200100 
 117      00
 118 007b 0F1F4400 		.p2align 4,,10
 118      00
 119              		.p2align 3
 120              	.L19:
 121 0080 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 122 0084 83EA01   		subl	$1, %edx
 123 0087 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 124 008b C5D559D3 		vmulpd	%ymm3, %ymm5, %ymm2
 125 008f C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
 126 0093 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 127 0097 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 128 009b C55D59C2 		vmulpd	%ymm2, %ymm4, %ymm8
 129 009f C5D559D2 		vmulpd	%ymm2, %ymm5, %ymm2
 130 00a3 C4C16558 		vaddpd	%ymm8, %ymm3, %ymm3
 130      D8
 131 00a8 C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
 132 00ac C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 133 00b0 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 134 00b4 C55D59C2 		vmulpd	%ymm2, %ymm4, %ymm8
 135 00b8 C5C559D2 		vmulpd	%ymm2, %ymm7, %ymm2
 136 00bc C4C16558 		vaddpd	%ymm8, %ymm3, %ymm3
 136      D8
 137 00c1 C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
GAS LISTING /tmp/ccWe4BcH.s 			page 4


 138 00c5 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 139 00c9 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 140 00cd C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 141 00d1 C5ED59D6 		vmulpd	%ymm6, %ymm2, %ymm2
 142 00d5 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 143 00d9 75A5     		jne	.L19
 144 00db 89D8     		movl	%ebx, %eax
 145 00dd BAAD8BDB 		movl	$1759218605, %edx
 145      68
 146 00e2 C5FD2984 		vmovapd	%ymm0, 256(%rsp)
 146      24000100 
 146      00
 147 00eb F7EA     		imull	%edx
 148 00ed 89D8     		movl	%ebx, %eax
 149 00ef C1F81F   		sarl	$31, %eax
 150 00f2 C1FA0B   		sarl	$11, %edx
 151 00f5 29C2     		subl	%eax, %edx
 152 00f7 69D28813 		imull	$5000, %edx, %edx
 152      0000
 153 00fd 39D3     		cmpl	%edx, %ebx
 154 00ff 0F852301 		jne	.L14
 154      0000
 155 0105 C5FB108C 		vmovsd	256(%rsp), %xmm1
 155      24000100 
 155      00
 156 010e BA040000 		movl	$4, %edx
 156      00
 157 0113 BE000000 		movl	$.LC7, %esi
 157      00
 158 0118 C5FB1084 		vmovsd	288(%rsp), %xmm0
 158      24200100 
 158      00
 159 0121 BF000000 		movl	$_ZSt4cout, %edi
 159      00
 160 0126 C5FD2934 		vmovapd	%ymm6, (%rsp)
 160      24
 161 012b C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 161      2420
 162 0131 C5FD2964 		vmovapd	%ymm4, 64(%rsp)
 162      2440
 163 0137 C5FD296C 		vmovapd	%ymm5, 96(%rsp)
 163      2460
 164 013d C5FB118C 		vmovsd	%xmm1, 128(%rsp)
 164      24800000 
 164      00
 165 0146 C5FB1184 		vmovsd	%xmm0, 160(%rsp)
 165      24A00000 
 165      00
 166 014f C5F877   		vzeroupper
 167 0152 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 167      00
 168 0157 C5FB1084 		vmovsd	160(%rsp), %xmm0
 168      24A00000 
 168      00
 169 0160 BF000000 		movl	$_ZSt4cout, %edi
 169      00
 170 0165 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/ccWe4BcH.s 			page 5


 170      00
 171 016a BA030000 		movl	$3, %edx
 171      00
 172 016f BE000000 		movl	$.LC8, %esi
 172      00
 173 0174 4889C7   		movq	%rax, %rdi
 174 0177 4989C6   		movq	%rax, %r14
 175 017a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 175      00
 176 017f C5FB108C 		vmovsd	128(%rsp), %xmm1
 176      24800000 
 176      00
 177 0188 4C89F7   		movq	%r14, %rdi
 178 018b C5F928C1 		vmovapd	%xmm1, %xmm0
 179 018f E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 179      00
 180 0194 4989C7   		movq	%rax, %r15
 181 0197 488B00   		movq	(%rax), %rax
 182 019a 488B40E8 		movq	-24(%rax), %rax
 183 019e 4D8BB407 		movq	240(%r15,%rax), %r14
 183      F0000000 
 184 01a6 4D85F6   		testq	%r14, %r14
 185 01a9 0F845901 		je	.L15
 185      0000
 186 01af 41807E38 		cmpb	$0, 56(%r14)
 186      00
 187 01b4 C5FD286C 		vmovapd	96(%rsp), %ymm5
 187      2460
 188 01ba C5FD2864 		vmovapd	64(%rsp), %ymm4
 188      2440
 189 01c0 C5FD287C 		vmovapd	32(%rsp), %ymm7
 189      2420
 190 01c6 C5FD2834 		vmovapd	(%rsp), %ymm6
 190      24
 191 01cb 0F84DD00 		je	.L21
 191      0000
 192 01d1 410FB646 		movzbl	67(%r14), %eax
 192      43
 193              	.L17:
 194 01d6 0FBEF0   		movsbl	%al, %esi
 195 01d9 4C89FF   		movq	%r15, %rdi
 196 01dc C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 196      2440
 197 01e2 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 197      2460
 198 01e8 C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 198      24800000 
 198      00
 199 01f1 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 199      24A00000 
 199      00
 200 01fa C5F877   		vzeroupper
 201 01fd E8000000 		call	_ZNSo3putEc
 201      00
 202 0202 4889C7   		movq	%rax, %rdi
 203 0205 E8000000 		call	_ZNSo5flushEv
 203      00
GAS LISTING /tmp/ccWe4BcH.s 			page 6


 204 020a C5FD28AC 		vmovapd	160(%rsp), %ymm5
 204      24A00000 
 204      00
 205 0213 C5FD28A4 		vmovapd	128(%rsp), %ymm4
 205      24800000 
 205      00
 206 021c C5FD287C 		vmovapd	96(%rsp), %ymm7
 206      2460
 207 0222 C5FD2874 		vmovapd	64(%rsp), %ymm6
 207      2440
 208              	.L14:
 209 0228 83C304   		addl	$4, %ebx
 210 022b 4983C420 		addq	$32, %r12
 211 022f 81FBC0C4 		cmpl	$181440, %ebx
 211      0200
 212 0235 0F8524FE 		jne	.L12
 212      FFFF
 213 023b C5F877   		vzeroupper
 214 023e E8000000 		call	clock
 214      00
 215 0243 BA0C0000 		movl	$12, %edx
 215      00
 216 0248 4889C3   		movq	%rax, %rbx
 217 024b BE000000 		movl	$.LC9, %esi
 217      00
 218 0250 BF000000 		movl	$_ZSt4cout, %edi
 218      00
 219 0255 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 219      00
 220 025a 4889D9   		movq	%rbx, %rcx
 221 025d 48BECFF7 		movabsq	$2361183241434822607, %rsi
 221      53E3A59B 
 221      C420
 222 0267 BF000000 		movl	$_ZSt4cout, %edi
 222      00
 223 026c 4C29E9   		subq	%r13, %rcx
 224 026f 4889C8   		movq	%rcx, %rax
 225 0272 48C1F93F 		sarq	$63, %rcx
 226 0276 48F7EE   		imulq	%rsi
 227 0279 4889D6   		movq	%rdx, %rsi
 228 027c 48C1FE07 		sarq	$7, %rsi
 229 0280 4829CE   		subq	%rcx, %rsi
 230 0283 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 230      00
 231 0288 BE000000 		movl	$.LC10, %esi
 231      00
 232 028d 4889C7   		movq	%rax, %rdi
 233 0290 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 233      00
 234 0295 4889C7   		movq	%rax, %rdi
 235 0298 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 235      00
 236 029d 488D65D8 		leaq	-40(%rbp), %rsp
 237 02a1 31C0     		xorl	%eax, %eax
 238 02a3 5B       		popq	%rbx
 239 02a4 415C     		popq	%r12
 240 02a6 415D     		popq	%r13
GAS LISTING /tmp/ccWe4BcH.s 			page 7


 241 02a8 415E     		popq	%r14
 242 02aa 415F     		popq	%r15
 243 02ac 5D       		popq	%rbp
 244              		.cfi_remember_state
 245              		.cfi_def_cfa 7, 8
 246 02ad C3       		ret
 247              	.L21:
 248              		.cfi_restore_state
 249 02ae 4C89F7   		movq	%r14, %rdi
 250 02b1 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 250      2440
 251 02b7 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 251      2460
 252 02bd C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 252      24800000 
 252      00
 253 02c6 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 253      24A00000 
 253      00
 254 02cf C5F877   		vzeroupper
 255 02d2 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 255      00
 256 02d7 498B06   		movq	(%r14), %rax
 257 02da BE0A0000 		movl	$10, %esi
 257      00
 258 02df 4C89F7   		movq	%r14, %rdi
 259 02e2 FF5030   		call	*48(%rax)
 260 02e5 C5FD28AC 		vmovapd	160(%rsp), %ymm5
 260      24A00000 
 260      00
 261 02ee C5FD28A4 		vmovapd	128(%rsp), %ymm4
 261      24800000 
 261      00
 262 02f7 C5FD287C 		vmovapd	96(%rsp), %ymm7
 262      2460
 263 02fd C5FD2874 		vmovapd	64(%rsp), %ymm6
 263      2440
 264 0303 E9CEFEFF 		jmp	.L17
 264      FF
 265              	.L15:
 266 0308 E8000000 		call	_ZSt16__throw_bad_castv
 266      00
 267              		.cfi_endproc
 268              	.LFE4383:
 269              		.size	main, .-main
 270 030d 0F1F00   		.p2align 4,,15
 271              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 272              	_GLOBAL__sub_I__Z8linspaceddi:
 273              	.LFB4595:
 274              		.cfi_startproc
 275 0310 4883EC08 		subq	$8, %rsp
 276              		.cfi_def_cfa_offset 16
 277 0314 BF000000 		movl	$_ZStL8__ioinit, %edi
 277      00
 278 0319 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 278      00
 279 031e BA000000 		movl	$__dso_handle, %edx
GAS LISTING /tmp/ccWe4BcH.s 			page 8


 279      00
 280 0323 BE000000 		movl	$_ZStL8__ioinit, %esi
 280      00
 281 0328 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 281      00
 282 032d 4883C408 		addq	$8, %rsp
 283              		.cfi_def_cfa_offset 8
 284 0331 E9000000 		jmp	__cxa_atexit
 284      00
 285              		.cfi_endproc
 286              	.LFE4595:
 287              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 288              		.section	.init_array,"aw"
 289              		.align 8
 290 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 290      00000000 
 291              		.local	_ZStL8__ioinit
 292              		.comm	_ZStL8__ioinit,1,1
 293              		.section	.rodata.cst8,"aM",@progbits,8
 294              		.align 8
 295              	.LC0:
 296 0000 00000000 		.long	0
 297 0004 0000F03F 		.long	1072693248
 298              		.section	.rodata.cst32,"aM",@progbits,32
 299              		.align 32
 300              	.LC1:
 301 0000 00000000 		.long	0
 302 0004 0000E0BF 		.long	-1075838976
 303 0008 00000000 		.long	0
 304 000c 0000E0BF 		.long	-1075838976
 305 0010 00000000 		.long	0
 306 0014 0000E0BF 		.long	-1075838976
 307 0018 00000000 		.long	0
 308 001c 0000E0BF 		.long	-1075838976
 309              		.section	.rodata.cst8
 310              		.align 8
 311              	.LC2:
 312 0008 9A999999 		.long	2576980378
 313 000c 9999B93F 		.long	1069128089
 314              		.section	.rodata.cst32
 315              		.align 32
 316              	.LC3:
 317 0020 7B14AE47 		.long	1202590843
 318 0024 E17A743F 		.long	1064598241
 319 0028 7B14AE47 		.long	1202590843
 320 002c E17A743F 		.long	1064598241
 321 0030 7B14AE47 		.long	1202590843
 322 0034 E17A743F 		.long	1064598241
 323 0038 7B14AE47 		.long	1202590843
 324 003c E17A743F 		.long	1064598241
 325              		.align 32
 326              	.LC4:
 327 0040 00000000 		.long	0
 328 0044 00000040 		.long	1073741824
 329 0048 00000000 		.long	0
 330 004c 00000040 		.long	1073741824
 331 0050 00000000 		.long	0
GAS LISTING /tmp/ccWe4BcH.s 			page 9


 332 0054 00000040 		.long	1073741824
 333 0058 00000000 		.long	0
 334 005c 00000040 		.long	1073741824
 335              		.align 32
 336              	.LC5:
 337 0060 7B14AE47 		.long	1202590843
 338 0064 E17A843F 		.long	1065646817
 339 0068 7B14AE47 		.long	1202590843
 340 006c E17A843F 		.long	1065646817
 341 0070 7B14AE47 		.long	1202590843
 342 0074 E17A843F 		.long	1065646817
 343 0078 7B14AE47 		.long	1202590843
 344 007c E17A843F 		.long	1065646817
 345              		.align 32
 346              	.LC6:
 347 0080 4F1BE8B4 		.long	3035110223
 348 0084 814E5B3F 		.long	1062948481
 349 0088 4F1BE8B4 		.long	3035110223
 350 008c 814E5B3F 		.long	1062948481
 351 0090 4F1BE8B4 		.long	3035110223
 352 0094 814E5B3F 		.long	1062948481
 353 0098 4F1BE8B4 		.long	3035110223
 354 009c 814E5B3F 		.long	1062948481
 355              		.hidden	__dso_handle
 356              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 357              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccWe4BcH.s 			page 10


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/ccWe4BcH.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccWe4BcH.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccWe4BcH.s:81     .text.startup:0000000000000000 main
     /tmp/ccWe4BcH.s:272    .text.startup:0000000000000310 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccWe4BcH.s:295    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccWe4BcH.s:311    .rodata.cst8:0000000000000008 .LC2
     /tmp/ccWe4BcH.s:316    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccWe4BcH.s:326    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccWe4BcH.s:336    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccWe4BcH.s:346    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccWe4BcH.s:300    .rodata.cst32:0000000000000000 .LC1

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
