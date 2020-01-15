GAS LISTING /tmp/ccSVPWGI.s 			page 1


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
GAS LISTING /tmp/ccSVPWGI.s 			page 2


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
  95              		.cfi_offset 15, -24
  96              		.cfi_offset 14, -32
  97              		.cfi_offset 13, -40
  98              		.cfi_offset 12, -48
  99 0015 41BC1F85 		movl	$1374389535, %r12d
GAS LISTING /tmp/ccSVPWGI.s 			page 3


  99      EB51
 100 001b 53       		pushq	%rbx
 101 001c 4883E4E0 		andq	$-32, %rsp
 102 0020 4881EC00 		subq	$512, %rsp
 102      020000
 103              		.cfi_offset 3, -56
 104 0027 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 104      00000000 
 105 002f E8000000 		call	_Z8linspaceddi
 105      00
 106 0034 4889C3   		movq	%rax, %rbx
 107 0037 E8000000 		call	clock
 107      00
 108 003c 48898424 		movq	%rax, 248(%rsp)
 108      F8000000 
 109 0044 488D8424 		leaq	320(%rsp), %rax
 109      40010000 
 110 004c C5FD280D 		vmovapd	.LC3(%rip), %ymm1
 110      00000000 
 111 0054 C5FD2835 		vmovapd	.LC4(%rip), %ymm6
 111      00000000 
 112 005c 4989DD   		movq	%rbx, %r13
 113 005f 31DB     		xorl	%ebx, %ebx
 114 0061 C5FD281D 		vmovapd	.LC0(%rip), %ymm3
 114      00000000 
 115 0069 48898424 		movq	%rax, 240(%rsp)
 115      F0000000 
 116 0071 C57D2825 		vmovapd	.LC5(%rip), %ymm12
 116      00000000 
 117 0079 C57D281D 		vmovapd	.LC6(%rip), %ymm11
 117      00000000 
 118              	.L12:
 119 0081 C4C17D10 		vmovupd	0(%r13), %ymm5
 119      6D00
 120 0087 C5FD28C3 		vmovapd	%ymm3, %ymm0
 121 008b C5FD28D3 		vmovapd	%ymm3, %ymm2
 122 008f C5FD299C 		vmovapd	%ymm3, 384(%rsp)
 122      24800100 
 122      00
 123 0098 BA102700 		movl	$10000, %edx
 123      00
 124 009d C5FD29AC 		vmovapd	%ymm5, 448(%rsp)
 124      24C00100 
 124      00
 125 00a6 C4C17D10 		vmovupd	32(%r13), %ymm4
 125      6520
 126 00ac C5FD29A4 		vmovapd	%ymm4, 480(%rsp)
 126      24E00100 
 126      00
 127              		.p2align 4,,10
 128 00b5 0F1F00   		.p2align 3
 129              	.L22:
 130 00b8 C5755EF2 		vdivpd	%ymm2, %ymm1, %ymm14
 131 00bc 83EA01   		subl	$1, %edx
 132 00bf C5D559FA 		vmulpd	%ymm2, %ymm5, %ymm7
 133 00c3 C5755EE8 		vdivpd	%ymm0, %ymm1, %ymm13
 134 00c7 C50D5CF7 		vsubpd	%ymm7, %ymm14, %ymm14
GAS LISTING /tmp/ccSVPWGI.s 			page 4


 135 00cb C4414D59 		vmulpd	%ymm14, %ymm6, %ymm8
 135      C6
 136 00d0 C5DD59F8 		vmulpd	%ymm0, %ymm4, %ymm7
 137 00d4 C53D5884 		vaddpd	384(%rsp), %ymm8, %ymm8
 137      24800100 
 137      00
 138 00dd C5955CFF 		vsubpd	%ymm7, %ymm13, %ymm7
 139 00e1 C441755E 		vdivpd	%ymm8, %ymm1, %ymm15
 139      F8
 140 00e6 C54D59EF 		vmulpd	%ymm7, %ymm6, %ymm13
 141 00ea C4415559 		vmulpd	%ymm8, %ymm5, %ymm9
 141      C8
 142 00ef C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 142      ED
 143 00f4 C441055C 		vsubpd	%ymm9, %ymm15, %ymm15
 143      F9
 144 00f9 C441755E 		vdivpd	%ymm13, %ymm1, %ymm9
 144      CD
 145 00fe C4416559 		vmulpd	%ymm15, %ymm3, %ymm8
 145      C7
 146 0103 C4414D59 		vmulpd	%ymm15, %ymm6, %ymm15
 146      FF
 147 0108 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm14
 147      F6
 148 010d C4415D59 		vmulpd	%ymm13, %ymm4, %ymm8
 148      C5
 149 0112 C4416D58 		vaddpd	%ymm15, %ymm2, %ymm15
 149      FF
 150 0117 C441355C 		vsubpd	%ymm8, %ymm9, %ymm9
 150      C8
 151 011c C441755E 		vdivpd	%ymm15, %ymm1, %ymm10
 151      D7
 152 0121 C4416559 		vmulpd	%ymm9, %ymm3, %ymm13
 152      E9
 153 0126 C4414D59 		vmulpd	%ymm9, %ymm6, %ymm9
 153      C9
 154 012b C4415559 		vmulpd	%ymm15, %ymm5, %ymm8
 154      C7
 155 0130 C59558FF 		vaddpd	%ymm7, %ymm13, %ymm7
 156 0134 C4417D58 		vaddpd	%ymm9, %ymm0, %ymm13
 156      E9
 157 0139 C4412D5C 		vsubpd	%ymm8, %ymm10, %ymm10
 157      D0
 158 013e C441755E 		vdivpd	%ymm13, %ymm1, %ymm9
 158      CD
 159 0143 C4416559 		vmulpd	%ymm10, %ymm3, %ymm8
 159      C2
 160 0148 C4411D59 		vmulpd	%ymm10, %ymm12, %ymm10
 160      D2
 161 014d C4410D58 		vaddpd	%ymm8, %ymm14, %ymm14
 161      F0
 162 0152 C4415D59 		vmulpd	%ymm13, %ymm4, %ymm8
 162      C5
 163 0157 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 163      D2
 164 015c C441355C 		vsubpd	%ymm8, %ymm9, %ymm9
 164      C8
GAS LISTING /tmp/ccSVPWGI.s 			page 5


 165 0161 C441755E 		vdivpd	%ymm10, %ymm1, %ymm8
 165      C2
 166 0166 C4416559 		vmulpd	%ymm9, %ymm3, %ymm13
 166      E9
 167 016b C4411D59 		vmulpd	%ymm9, %ymm12, %ymm9
 167      C9
 168 0170 C4414558 		vaddpd	%ymm13, %ymm7, %ymm13
 168      ED
 169 0175 C4C15559 		vmulpd	%ymm10, %ymm5, %ymm7
 169      FA
 170 017a C4417D58 		vaddpd	%ymm9, %ymm0, %ymm9
 170      C9
 171 017f C53D5CC7 		vsubpd	%ymm7, %ymm8, %ymm8
 172 0183 C4C1755E 		vdivpd	%ymm9, %ymm1, %ymm7
 172      F9
 173 0188 C57D2984 		vmovapd	%ymm8, 320(%rsp)
 173      24400100 
 173      00
 174 0191 C4410D58 		vaddpd	%ymm8, %ymm14, %ymm8
 174      C0
 175 0196 C57D2984 		vmovapd	%ymm8, 256(%rsp)
 175      24000100 
 175      00
 176 019f C4415D59 		vmulpd	%ymm9, %ymm4, %ymm10
 176      D1
 177 01a4 C4413D59 		vmulpd	%ymm11, %ymm8, %ymm8
 177      C3
 178 01a9 C4C16D58 		vaddpd	%ymm8, %ymm2, %ymm2
 178      D0
 179 01ae C4C1455C 		vsubpd	%ymm10, %ymm7, %ymm7
 179      FA
 180 01b3 C5FD2994 		vmovapd	%ymm2, 384(%rsp)
 180      24800100 
 180      00
 181 01bc C5FD29BC 		vmovapd	%ymm7, 352(%rsp)
 181      24600100 
 181      00
 182 01c5 C59558FF 		vaddpd	%ymm7, %ymm13, %ymm7
 183 01c9 C5FD29BC 		vmovapd	%ymm7, 288(%rsp)
 183      24200100 
 183      00
 184 01d2 C4C14559 		vmulpd	%ymm11, %ymm7, %ymm7
 184      FB
 185 01d7 C5FD58C7 		vaddpd	%ymm7, %ymm0, %ymm0
 186 01db C5FD2984 		vmovapd	%ymm0, 416(%rsp)
 186      24A00100 
 186      00
 187 01e4 0F85CEFE 		jne	.L22
 187      FFFF
 188 01ea 89D8     		movl	%ebx, %eax
 189 01ec 41F7EC   		imull	%r12d
 190 01ef 89D8     		movl	%ebx, %eax
 191 01f1 C1F81F   		sarl	$31, %eax
 192 01f4 C1FA05   		sarl	$5, %edx
 193 01f7 29C2     		subl	%eax, %edx
 194 01f9 B8640000 		movl	$100, %eax
 194      00
GAS LISTING /tmp/ccSVPWGI.s 			page 6


 195 01fe 0FAFD0   		imull	%eax, %edx
 196 0201 89D8     		movl	%ebx, %eax
 197 0203 29D0     		subl	%edx, %eax
 198 0205 83F801   		cmpl	$1, %eax
 199 0208 0F849200 		je	.L14
 199      0000
 200              	.L20:
 201 020e 83C308   		addl	$8, %ebx
 202 0211 4983C540 		addq	$64, %r13
 203 0215 81FBE046 		cmpl	$18144, %ebx
 203      0000
 204 021b 0F8560FE 		jne	.L12
 204      FFFF
 205 0221 C5F877   		vzeroupper
 206 0224 E8000000 		call	clock
 206      00
 207 0229 BA0C0000 		movl	$12, %edx
 207      00
 208 022e 4889C3   		movq	%rax, %rbx
 209 0231 BE000000 		movl	$.LC9, %esi
 209      00
 210 0236 BF000000 		movl	$_ZSt4cout, %edi
 210      00
 211 023b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 211      00
 212 0240 4889D9   		movq	%rbx, %rcx
 213 0243 482B8C24 		subq	248(%rsp), %rcx
 213      F8000000 
 214 024b 48BECFF7 		movabsq	$2361183241434822607, %rsi
 214      53E3A59B 
 214      C420
 215 0255 BF000000 		movl	$_ZSt4cout, %edi
 215      00
 216 025a 4889C8   		movq	%rcx, %rax
 217 025d 48C1F93F 		sarq	$63, %rcx
 218 0261 48F7EE   		imulq	%rsi
 219 0264 4889D6   		movq	%rdx, %rsi
 220 0267 48C1FE07 		sarq	$7, %rsi
 221 026b 4829CE   		subq	%rcx, %rsi
 222 026e E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 222      00
 223 0273 BE000000 		movl	$.LC10, %esi
 223      00
 224 0278 4889C7   		movq	%rax, %rdi
 225 027b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 225      00
 226 0280 4889C7   		movq	%rax, %rdi
 227 0283 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 227      00
 228 0288 488D65D8 		leaq	-40(%rbp), %rsp
 229 028c 31C0     		xorl	%eax, %eax
 230 028e 5B       		popq	%rbx
 231 028f 415C     		popq	%r12
 232 0291 415D     		popq	%r13
 233 0293 415E     		popq	%r14
 234 0295 415F     		popq	%r15
 235 0297 5D       		popq	%rbp
GAS LISTING /tmp/ccSVPWGI.s 			page 7


 236              		.cfi_remember_state
 237              		.cfi_def_cfa 7, 8
 238 0298 C3       		ret
 239 0299 0F1F8000 		.p2align 4,,10
 239      000000
 240              		.p2align 3
 241              	.L14:
 242              		.cfi_restore_state
 243 02a0 4C8DBC24 		leaq	256(%rsp), %r15
 243      00010000 
 244              	.L21:
 245 02a8 C4C17B10 		vmovsd	128(%r15), %xmm2
 245      97800000 
 245      00
 246 02b1 BA040000 		movl	$4, %edx
 246      00
 247 02b6 BE000000 		movl	$.LC7, %esi
 247      00
 248 02bb C4C17B10 		vmovsd	192(%r15), %xmm0
 248      87C00000 
 248      00
 249 02c4 BF000000 		movl	$_ZSt4cout, %edi
 249      00
 250 02c9 C57D291C 		vmovapd	%ymm11, (%rsp)
 250      24
 251 02ce C57D2964 		vmovapd	%ymm12, 32(%rsp)
 251      2420
 252 02d4 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 252      2440
 253 02da C5FD294C 		vmovapd	%ymm1, 96(%rsp)
 253      2460
 254 02e0 C5FD299C 		vmovapd	%ymm3, 128(%rsp)
 254      24800000 
 254      00
 255 02e9 C5FB1194 		vmovsd	%xmm2, 160(%rsp)
 255      24A00000 
 255      00
 256 02f2 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 256      24C00000 
 256      00
 257 02fb C5F877   		vzeroupper
 258 02fe E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 258      00
 259 0303 C5FB1084 		vmovsd	192(%rsp), %xmm0
 259      24C00000 
 259      00
 260 030c BF000000 		movl	$_ZSt4cout, %edi
 260      00
 261 0311 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 261      00
 262 0316 BA030000 		movl	$3, %edx
 262      00
 263 031b BE000000 		movl	$.LC8, %esi
 263      00
 264 0320 4889C7   		movq	%rax, %rdi
 265 0323 4989C6   		movq	%rax, %r14
 266 0326 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/ccSVPWGI.s 			page 8


 266      00
 267 032b C5FB1094 		vmovsd	160(%rsp), %xmm2
 267      24A00000 
 267      00
 268 0334 4C89F7   		movq	%r14, %rdi
 269 0337 C5F928C2 		vmovapd	%xmm2, %xmm0
 270 033b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 270      00
 271 0340 4989C6   		movq	%rax, %r14
 272 0343 488B00   		movq	(%rax), %rax
 273 0346 C5FD289C 		vmovapd	128(%rsp), %ymm3
 273      24800000 
 273      00
 274 034f C5FD284C 		vmovapd	96(%rsp), %ymm1
 274      2460
 275 0355 C5FD2874 		vmovapd	64(%rsp), %ymm6
 275      2440
 276 035b 488B40E8 		movq	-24(%rax), %rax
 277 035f C57D2864 		vmovapd	32(%rsp), %ymm12
 277      2420
 278 0365 C57D281C 		vmovapd	(%rsp), %ymm11
 278      24
 279 036a 498B9406 		movq	240(%r14,%rax), %rdx
 279      F0000000 
 280 0372 4885D2   		testq	%rdx, %rdx
 281 0375 0F84FB00 		je	.L25
 281      0000
 282 037b 807A3800 		cmpb	$0, 56(%rdx)
 283 037f 747F     		je	.L18
 284 0381 0FB64243 		movzbl	67(%rdx), %eax
 285              	.L19:
 286 0385 0FBEF0   		movsbl	%al, %esi
 287 0388 4C89F7   		movq	%r14, %rdi
 288 038b C57D295C 		vmovapd	%ymm11, 64(%rsp)
 288      2440
 289 0391 C57D2964 		vmovapd	%ymm12, 96(%rsp)
 289      2460
 290 0397 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 290      24800000 
 290      00
 291 03a0 C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 291      24A00000 
 291      00
 292 03a9 C5FD299C 		vmovapd	%ymm3, 192(%rsp)
 292      24C00000 
 292      00
 293 03b2 C5F877   		vzeroupper
 294 03b5 4983C720 		addq	$32, %r15
 295 03b9 E8000000 		call	_ZNSo3putEc
 295      00
 296 03be 4889C7   		movq	%rax, %rdi
 297 03c1 E8000000 		call	_ZNSo5flushEv
 297      00
 298 03c6 4C3BBC24 		cmpq	240(%rsp), %r15
 298      F0000000 
 299 03ce C5FD289C 		vmovapd	192(%rsp), %ymm3
 299      24C00000 
GAS LISTING /tmp/ccSVPWGI.s 			page 9


 299      00
 300 03d7 C5FD288C 		vmovapd	160(%rsp), %ymm1
 300      24A00000 
 300      00
 301 03e0 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 301      24800000 
 301      00
 302 03e9 C57D2864 		vmovapd	96(%rsp), %ymm12
 302      2460
 303 03ef C57D285C 		vmovapd	64(%rsp), %ymm11
 303      2440
 304 03f5 0F85ADFE 		jne	.L21
 304      FFFF
 305 03fb E90EFEFF 		jmp	.L20
 305      FF
 306              	.L18:
 307 0400 4889D7   		movq	%rdx, %rdi
 308 0403 C57D295C 		vmovapd	%ymm11, 32(%rsp)
 308      2420
 309 0409 48899424 		movq	%rdx, 192(%rsp)
 309      C0000000 
 310 0411 C57D2964 		vmovapd	%ymm12, 64(%rsp)
 310      2440
 311 0417 C5FD2974 		vmovapd	%ymm6, 96(%rsp)
 311      2460
 312 041d C5FD298C 		vmovapd	%ymm1, 128(%rsp)
 312      24800000 
 312      00
 313 0426 C5FD299C 		vmovapd	%ymm3, 160(%rsp)
 313      24A00000 
 313      00
 314 042f C5F877   		vzeroupper
 315 0432 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 315      00
 316 0437 488B9424 		movq	192(%rsp), %rdx
 316      C0000000 
 317 043f BE0A0000 		movl	$10, %esi
 317      00
 318 0444 488B02   		movq	(%rdx), %rax
 319 0447 4889D7   		movq	%rdx, %rdi
 320 044a FF5030   		call	*48(%rax)
 321 044d C57D285C 		vmovapd	32(%rsp), %ymm11
 321      2420
 322 0453 C57D2864 		vmovapd	64(%rsp), %ymm12
 322      2440
 323 0459 C5FD2874 		vmovapd	96(%rsp), %ymm6
 323      2460
 324 045f C5FD288C 		vmovapd	128(%rsp), %ymm1
 324      24800000 
 324      00
 325 0468 C5FD289C 		vmovapd	160(%rsp), %ymm3
 325      24A00000 
 325      00
 326 0471 E90FFFFF 		jmp	.L19
 326      FF
 327              	.L25:
 328 0476 C5F877   		vzeroupper
GAS LISTING /tmp/ccSVPWGI.s 			page 10


 329 0479 E8000000 		call	_ZSt16__throw_bad_castv
 329      00
 330              		.cfi_endproc
 331              	.LFE4383:
 332              		.size	main, .-main
 333 047e 6690     		.p2align 4,,15
 334              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 335              	_GLOBAL__sub_I__Z8linspaceddi:
 336              	.LFB4595:
 337              		.cfi_startproc
 338 0480 4883EC08 		subq	$8, %rsp
 339              		.cfi_def_cfa_offset 16
 340 0484 BF000000 		movl	$_ZStL8__ioinit, %edi
 340      00
 341 0489 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 341      00
 342 048e BA000000 		movl	$__dso_handle, %edx
 342      00
 343 0493 BE000000 		movl	$_ZStL8__ioinit, %esi
 343      00
 344 0498 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 344      00
 345 049d 4883C408 		addq	$8, %rsp
 346              		.cfi_def_cfa_offset 8
 347 04a1 E9000000 		jmp	__cxa_atexit
 347      00
 348              		.cfi_endproc
 349              	.LFE4595:
 350              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 351              		.section	.init_array,"aw"
 352              		.align 8
 353 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 353      00000000 
 354              		.local	_ZStL8__ioinit
 355              		.comm	_ZStL8__ioinit,1,1
 356              		.section	.rodata.cst32,"aM",@progbits,32
 357              		.align 32
 358              	.LC0:
 359 0000 00000000 		.long	0
 360 0004 00000040 		.long	1073741824
 361 0008 00000000 		.long	0
 362 000c 00000040 		.long	1073741824
 363 0010 00000000 		.long	0
 364 0014 00000040 		.long	1073741824
 365 0018 00000000 		.long	0
 366 001c 00000040 		.long	1073741824
 367              		.section	.rodata.cst8,"aM",@progbits,8
 368              		.align 8
 369              	.LC1:
 370 0000 9A999999 		.long	2576980378
 371 0004 9999E93F 		.long	1072273817
 372              		.section	.rodata.cst32
 373              		.align 32
 374              	.LC3:
 375 0020 00000000 		.long	0
 376 0024 0000F03F 		.long	1072693248
 377 0028 00000000 		.long	0
GAS LISTING /tmp/ccSVPWGI.s 			page 11


 378 002c 0000F03F 		.long	1072693248
 379 0030 00000000 		.long	0
 380 0034 0000F03F 		.long	1072693248
 381 0038 00000000 		.long	0
 382 003c 0000F03F 		.long	1072693248
 383              		.align 32
 384              	.LC4:
 385 0040 7B14AE47 		.long	1202590843
 386 0044 E17A743F 		.long	1064598241
 387 0048 7B14AE47 		.long	1202590843
 388 004c E17A743F 		.long	1064598241
 389 0050 7B14AE47 		.long	1202590843
 390 0054 E17A743F 		.long	1064598241
 391 0058 7B14AE47 		.long	1202590843
 392 005c E17A743F 		.long	1064598241
 393              		.align 32
 394              	.LC5:
 395 0060 7B14AE47 		.long	1202590843
 396 0064 E17A843F 		.long	1065646817
 397 0068 7B14AE47 		.long	1202590843
 398 006c E17A843F 		.long	1065646817
 399 0070 7B14AE47 		.long	1202590843
 400 0074 E17A843F 		.long	1065646817
 401 0078 7B14AE47 		.long	1202590843
 402 007c E17A843F 		.long	1065646817
 403              		.align 32
 404              	.LC6:
 405 0080 4F1BE8B4 		.long	3035110223
 406 0084 814E5B3F 		.long	1062948481
 407 0088 4F1BE8B4 		.long	3035110223
 408 008c 814E5B3F 		.long	1062948481
 409 0090 4F1BE8B4 		.long	3035110223
 410 0094 814E5B3F 		.long	1062948481
 411 0098 4F1BE8B4 		.long	3035110223
 412 009c 814E5B3F 		.long	1062948481
 413              		.hidden	__dso_handle
 414              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 415              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccSVPWGI.s 			page 12


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccSVPWGI.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccSVPWGI.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccSVPWGI.s:81     .text.startup:0000000000000000 main
     /tmp/ccSVPWGI.s:335    .text.startup:0000000000000480 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccSVPWGI.s:369    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccSVPWGI.s:374    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccSVPWGI.s:384    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccSVPWGI.s:358    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccSVPWGI.s:394    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccSVPWGI.s:404    .rodata.cst32:0000000000000080 .LC6

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
