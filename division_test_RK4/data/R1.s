GAS LISTING /tmp/ccMLeucp.s 			page 1


   1              		.file	"kibontott.cpp"
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
GAS LISTING /tmp/ccMLeucp.s 			page 2


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
  87 0001 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
  88 0005 BFE04600 		movl	$18144, %edi
  88      00
  89 000a 4889E5   		movq	%rsp, %rbp
  90              		.cfi_def_cfa_register 6
  91 000d 4157     		pushq	%r15
  92 000f 4156     		pushq	%r14
  93 0011 4155     		pushq	%r13
  94 0013 4154     		pushq	%r12
  95 0015 53       		pushq	%rbx
  96              		.cfi_offset 15, -24
  97              		.cfi_offset 14, -32
  98              		.cfi_offset 13, -40
  99              		.cfi_offset 12, -48
GAS LISTING /tmp/ccMLeucp.s 			page 3


 100              		.cfi_offset 3, -56
 101 0016 31DB     		xorl	%ebx, %ebx
 102 0018 4883E4E0 		andq	$-32, %rsp
 103 001c 4881EC60 		subq	$352, %rsp
 103      010000
 104 0023 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 104      00000000 
 105 002b E8000000 		call	_Z8linspaceddi
 105      00
 106 0030 4989C4   		movq	%rax, %r12
 107 0033 E8000000 		call	clock
 107      00
 108 0038 C5FD2815 		vmovapd	.LC3(%rip), %ymm2
 108      00000000 
 109 0040 4989C5   		movq	%rax, %r13
 110 0043 C5FD283D 		vmovapd	.LC4(%rip), %ymm7
 110      00000000 
 111 004b C5FD2835 		vmovapd	.LC0(%rip), %ymm6
 111      00000000 
 112 0053 C57D280D 		vmovapd	.LC5(%rip), %ymm9
 112      00000000 
 113 005b C57D2805 		vmovapd	.LC6(%rip), %ymm8
 113      00000000 
 114              	.L12:
 115 0063 C4C17D10 		vmovupd	(%r12), %ymm1
 115      0C24
 116 0069 BA102700 		movl	$10000, %edx
 116      00
 117 006e C5FD2805 		vmovapd	.LC0(%rip), %ymm0
 117      00000000 
 118 0076 C5FD298C 		vmovapd	%ymm1, 320(%rsp)
 118      24400100 
 118      00
 119 007f 90       		.p2align 4,,10
 120              		.p2align 3
 121              	.L19:
 122 0080 C5ED5EE0 		vdivpd	%ymm0, %ymm2, %ymm4
 123 0084 83EA01   		subl	$1, %edx
 124 0087 C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 125 008b C5DD5CDB 		vsubpd	%ymm3, %ymm4, %ymm3
 126 008f C5C559EB 		vmulpd	%ymm3, %ymm7, %ymm5
 127 0093 C5FD58ED 		vaddpd	%ymm5, %ymm0, %ymm5
 128 0097 C5ED5EE5 		vdivpd	%ymm5, %ymm2, %ymm4
 129 009b C57559D5 		vmulpd	%ymm5, %ymm1, %ymm10
 130 009f C4C15D5C 		vsubpd	%ymm10, %ymm4, %ymm4
 130      E2
 131 00a4 C54D59D4 		vmulpd	%ymm4, %ymm6, %ymm10
 132 00a8 C5C559E4 		vmulpd	%ymm4, %ymm7, %ymm4
 133 00ac C4416558 		vaddpd	%ymm10, %ymm3, %ymm10
 133      D2
 134 00b1 C5FD58E4 		vaddpd	%ymm4, %ymm0, %ymm4
 135 00b5 C5ED5EDC 		vdivpd	%ymm4, %ymm2, %ymm3
 136 00b9 C5F559EC 		vmulpd	%ymm4, %ymm1, %ymm5
 137 00bd C5E55CDD 		vsubpd	%ymm5, %ymm3, %ymm3
 138 00c1 C5CD59EB 		vmulpd	%ymm3, %ymm6, %ymm5
 139 00c5 C5B559DB 		vmulpd	%ymm3, %ymm9, %ymm3
 140 00c9 C5AD58E5 		vaddpd	%ymm5, %ymm10, %ymm4
GAS LISTING /tmp/ccMLeucp.s 			page 4


 141 00cd C5FD58DB 		vaddpd	%ymm3, %ymm0, %ymm3
 142 00d1 C5F559EB 		vmulpd	%ymm3, %ymm1, %ymm5
 143 00d5 C5ED5EDB 		vdivpd	%ymm3, %ymm2, %ymm3
 144 00d9 C5E55CDD 		vsubpd	%ymm5, %ymm3, %ymm3
 145 00dd C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 146 00e1 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 146      D8
 147 00e6 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 148 00ea 7594     		jne	.L19
 149 00ec 89D8     		movl	%ebx, %eax
 150 00ee BA1F85EB 		movl	$1374389535, %edx
 150      51
 151 00f3 C5FD2984 		vmovapd	%ymm0, 288(%rsp)
 151      24200100 
 151      00
 152 00fc F7EA     		imull	%edx
 153 00fe 89D8     		movl	%ebx, %eax
 154 0100 C1F81F   		sarl	$31, %eax
 155 0103 C1FA05   		sarl	$5, %edx
 156 0106 29C2     		subl	%eax, %edx
 157 0108 B8640000 		movl	$100, %eax
 157      00
 158 010d 0FAFD0   		imull	%eax, %edx
 159 0110 89D8     		movl	%ebx, %eax
 160 0112 29D0     		subl	%edx, %eax
 161 0114 83F801   		cmpl	$1, %eax
 162 0117 0F848600 		je	.L21
 162      0000
 163              	.L14:
 164 011d 83C304   		addl	$4, %ebx
 165 0120 4983C420 		addq	$32, %r12
 166 0124 81FBE046 		cmpl	$18144, %ebx
 166      0000
 167 012a 0F8533FF 		jne	.L12
 167      FFFF
 168 0130 C5F877   		vzeroupper
 169 0133 E8000000 		call	clock
 169      00
 170 0138 BA0C0000 		movl	$12, %edx
 170      00
 171 013d 4889C3   		movq	%rax, %rbx
 172 0140 BE000000 		movl	$.LC9, %esi
 172      00
 173 0145 BF000000 		movl	$_ZSt4cout, %edi
 173      00
 174 014a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 174      00
 175 014f 4889D9   		movq	%rbx, %rcx
 176 0152 48BECFF7 		movabsq	$2361183241434822607, %rsi
 176      53E3A59B 
 176      C420
 177 015c BF000000 		movl	$_ZSt4cout, %edi
 177      00
 178 0161 4C29E9   		subq	%r13, %rcx
 179 0164 4889C8   		movq	%rcx, %rax
 180 0167 48C1F93F 		sarq	$63, %rcx
 181 016b 48F7EE   		imulq	%rsi
GAS LISTING /tmp/ccMLeucp.s 			page 5


 182 016e 4889D6   		movq	%rdx, %rsi
 183 0171 48C1FE07 		sarq	$7, %rsi
 184 0175 4829CE   		subq	%rcx, %rsi
 185 0178 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 185      00
 186 017d BE000000 		movl	$.LC10, %esi
 186      00
 187 0182 4889C7   		movq	%rax, %rdi
 188 0185 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 188      00
 189 018a 4889C7   		movq	%rax, %rdi
 190 018d E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 190      00
 191 0192 488D65D8 		leaq	-40(%rbp), %rsp
 192 0196 31C0     		xorl	%eax, %eax
 193 0198 5B       		popq	%rbx
 194 0199 415C     		popq	%r12
 195 019b 415D     		popq	%r13
 196 019d 415E     		popq	%r14
 197 019f 415F     		popq	%r15
 198 01a1 5D       		popq	%rbp
 199              		.cfi_remember_state
 200              		.cfi_def_cfa 7, 8
 201 01a2 C3       		ret
 202              	.L21:
 203              		.cfi_restore_state
 204 01a3 C5FB108C 		vmovsd	288(%rsp), %xmm1
 204      24200100 
 204      00
 205 01ac BA040000 		movl	$4, %edx
 205      00
 206 01b1 C5FB1084 		vmovsd	320(%rsp), %xmm0
 206      24400100 
 206      00
 207 01ba BE000000 		movl	$.LC7, %esi
 207      00
 208 01bf BF000000 		movl	$_ZSt4cout, %edi
 208      00
 209 01c4 C57D2904 		vmovapd	%ymm8, (%rsp)
 209      24
 210 01c9 C57D294C 		vmovapd	%ymm9, 32(%rsp)
 210      2420
 211 01cf C5FD297C 		vmovapd	%ymm7, 64(%rsp)
 211      2440
 212 01d5 C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 212      2460
 213 01db C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 213      24800000 
 213      00
 214 01e4 C5FB118C 		vmovsd	%xmm1, 160(%rsp)
 214      24A00000 
 214      00
 215 01ed C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 215      24C00000 
 215      00
 216 01f6 C5F877   		vzeroupper
 217 01f9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/ccMLeucp.s 			page 6


 217      00
 218 01fe C5FB1084 		vmovsd	192(%rsp), %xmm0
 218      24C00000 
 218      00
 219 0207 BF000000 		movl	$_ZSt4cout, %edi
 219      00
 220 020c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 220      00
 221 0211 BA030000 		movl	$3, %edx
 221      00
 222 0216 BE000000 		movl	$.LC8, %esi
 222      00
 223 021b 4889C7   		movq	%rax, %rdi
 224 021e 4989C6   		movq	%rax, %r14
 225 0221 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 225      00
 226 0226 C5FB108C 		vmovsd	160(%rsp), %xmm1
 226      24A00000 
 226      00
 227 022f 4C89F7   		movq	%r14, %rdi
 228 0232 C5F928C1 		vmovapd	%xmm1, %xmm0
 229 0236 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 229      00
 230 023b 4989C7   		movq	%rax, %r15
 231 023e 488B00   		movq	(%rax), %rax
 232 0241 488B40E8 		movq	-24(%rax), %rax
 233 0245 4D8BB407 		movq	240(%r15,%rax), %r14
 233      F0000000 
 234 024d 4D85F6   		testq	%r14, %r14
 235 0250 0F840101 		je	.L15
 235      0000
 236 0256 41807E38 		cmpb	$0, 56(%r14)
 236      00
 237 025b C5FD28B4 		vmovapd	128(%rsp), %ymm6
 237      24800000 
 237      00
 238 0264 C5FD2854 		vmovapd	96(%rsp), %ymm2
 238      2460
 239 026a C5FD287C 		vmovapd	64(%rsp), %ymm7
 239      2440
 240 0270 C57D284C 		vmovapd	32(%rsp), %ymm9
 240      2420
 241 0276 C57D2804 		vmovapd	(%rsp), %ymm8
 241      24
 242 027b 746E     		je	.L22
 243 027d 410FB646 		movzbl	67(%r14), %eax
 243      43
 244              	.L17:
 245 0282 0FBEF0   		movsbl	%al, %esi
 246 0285 4C89FF   		movq	%r15, %rdi
 247 0288 C57D2944 		vmovapd	%ymm8, 64(%rsp)
 247      2440
 248 028e C57D294C 		vmovapd	%ymm9, 96(%rsp)
 248      2460
 249 0294 C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 249      24800000 
 249      00
GAS LISTING /tmp/ccMLeucp.s 			page 7


 250 029d C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 250      24A00000 
 250      00
 251 02a6 C5FD29B4 		vmovapd	%ymm6, 192(%rsp)
 251      24C00000 
 251      00
 252 02af C5F877   		vzeroupper
 253 02b2 E8000000 		call	_ZNSo3putEc
 253      00
 254 02b7 4889C7   		movq	%rax, %rdi
 255 02ba E8000000 		call	_ZNSo5flushEv
 255      00
 256 02bf C5FD28B4 		vmovapd	192(%rsp), %ymm6
 256      24C00000 
 256      00
 257 02c8 C5FD2894 		vmovapd	160(%rsp), %ymm2
 257      24A00000 
 257      00
 258 02d1 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 258      24800000 
 258      00
 259 02da C57D284C 		vmovapd	96(%rsp), %ymm9
 259      2460
 260 02e0 C57D2844 		vmovapd	64(%rsp), %ymm8
 260      2440
 261 02e6 E932FEFF 		jmp	.L14
 261      FF
 262              	.L22:
 263 02eb 4C89F7   		movq	%r14, %rdi
 264 02ee C57D2944 		vmovapd	%ymm8, 64(%rsp)
 264      2440
 265 02f4 C57D294C 		vmovapd	%ymm9, 96(%rsp)
 265      2460
 266 02fa C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 266      24800000 
 266      00
 267 0303 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 267      24A00000 
 267      00
 268 030c C5FD29B4 		vmovapd	%ymm6, 192(%rsp)
 268      24C00000 
 268      00
 269 0315 C5F877   		vzeroupper
 270 0318 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 270      00
 271 031d 498B06   		movq	(%r14), %rax
 272 0320 BE0A0000 		movl	$10, %esi
 272      00
 273 0325 4C89F7   		movq	%r14, %rdi
 274 0328 FF5030   		call	*48(%rax)
 275 032b C5FD28B4 		vmovapd	192(%rsp), %ymm6
 275      24C00000 
 275      00
 276 0334 C5FD2894 		vmovapd	160(%rsp), %ymm2
 276      24A00000 
 276      00
 277 033d C5FD28BC 		vmovapd	128(%rsp), %ymm7
GAS LISTING /tmp/ccMLeucp.s 			page 8


 277      24800000 
 277      00
 278 0346 C57D284C 		vmovapd	96(%rsp), %ymm9
 278      2460
 279 034c C57D2844 		vmovapd	64(%rsp), %ymm8
 279      2440
 280 0352 E92BFFFF 		jmp	.L17
 280      FF
 281              	.L15:
 282 0357 E8000000 		call	_ZSt16__throw_bad_castv
 282      00
 283              		.cfi_endproc
 284              	.LFE4383:
 285              		.size	main, .-main
 286 035c 0F1F4000 		.p2align 4,,15
 287              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 288              	_GLOBAL__sub_I__Z8linspaceddi:
 289              	.LFB4595:
 290              		.cfi_startproc
 291 0360 4883EC08 		subq	$8, %rsp
 292              		.cfi_def_cfa_offset 16
 293 0364 BF000000 		movl	$_ZStL8__ioinit, %edi
 293      00
 294 0369 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 294      00
 295 036e BA000000 		movl	$__dso_handle, %edx
 295      00
 296 0373 BE000000 		movl	$_ZStL8__ioinit, %esi
 296      00
 297 0378 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 297      00
 298 037d 4883C408 		addq	$8, %rsp
 299              		.cfi_def_cfa_offset 8
 300 0381 E9000000 		jmp	__cxa_atexit
 300      00
 301              		.cfi_endproc
 302              	.LFE4595:
 303              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 304              		.section	.init_array,"aw"
 305              		.align 8
 306 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 306      00000000 
 307              		.local	_ZStL8__ioinit
 308              		.comm	_ZStL8__ioinit,1,1
 309              		.section	.rodata.cst32,"aM",@progbits,32
 310              		.align 32
 311              	.LC0:
 312 0000 00000000 		.long	0
 313 0004 00000040 		.long	1073741824
 314 0008 00000000 		.long	0
 315 000c 00000040 		.long	1073741824
 316 0010 00000000 		.long	0
 317 0014 00000040 		.long	1073741824
 318 0018 00000000 		.long	0
 319 001c 00000040 		.long	1073741824
 320              		.section	.rodata.cst8,"aM",@progbits,8
 321              		.align 8
GAS LISTING /tmp/ccMLeucp.s 			page 9


 322              	.LC1:
 323 0000 9A999999 		.long	2576980378
 324 0004 9999E93F 		.long	1072273817
 325              		.section	.rodata.cst32
 326              		.align 32
 327              	.LC3:
 328 0020 00000000 		.long	0
 329 0024 0000F03F 		.long	1072693248
 330 0028 00000000 		.long	0
 331 002c 0000F03F 		.long	1072693248
 332 0030 00000000 		.long	0
 333 0034 0000F03F 		.long	1072693248
 334 0038 00000000 		.long	0
 335 003c 0000F03F 		.long	1072693248
 336              		.align 32
 337              	.LC4:
 338 0040 7B14AE47 		.long	1202590843
 339 0044 E17A743F 		.long	1064598241
 340 0048 7B14AE47 		.long	1202590843
 341 004c E17A743F 		.long	1064598241
 342 0050 7B14AE47 		.long	1202590843
 343 0054 E17A743F 		.long	1064598241
 344 0058 7B14AE47 		.long	1202590843
 345 005c E17A743F 		.long	1064598241
 346              		.align 32
 347              	.LC5:
 348 0060 7B14AE47 		.long	1202590843
 349 0064 E17A843F 		.long	1065646817
 350 0068 7B14AE47 		.long	1202590843
 351 006c E17A843F 		.long	1065646817
 352 0070 7B14AE47 		.long	1202590843
 353 0074 E17A843F 		.long	1065646817
 354 0078 7B14AE47 		.long	1202590843
 355 007c E17A843F 		.long	1065646817
 356              		.align 32
 357              	.LC6:
 358 0080 4F1BE8B4 		.long	3035110223
 359 0084 814E5B3F 		.long	1062948481
 360 0088 4F1BE8B4 		.long	3035110223
 361 008c 814E5B3F 		.long	1062948481
 362 0090 4F1BE8B4 		.long	3035110223
 363 0094 814E5B3F 		.long	1062948481
 364 0098 4F1BE8B4 		.long	3035110223
 365 009c 814E5B3F 		.long	1062948481
 366              		.hidden	__dso_handle
 367              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 368              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccMLeucp.s 			page 10


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccMLeucp.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccMLeucp.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccMLeucp.s:81     .text.startup:0000000000000000 main
     /tmp/ccMLeucp.s:288    .text.startup:0000000000000360 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccMLeucp.s:322    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccMLeucp.s:327    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccMLeucp.s:337    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccMLeucp.s:311    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccMLeucp.s:347    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccMLeucp.s:357    .rodata.cst32:0000000000000080 .LC6

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
