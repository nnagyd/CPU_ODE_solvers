GAS LISTING /tmp/ccvxKqR5.s 			page 1


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
GAS LISTING /tmp/ccvxKqR5.s 			page 2


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
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96              		.cfi_offset 13, -40
  97 0013 41BD1F85 		movl	$1374389535, %r13d
  97      EB51
  98 0019 4154     		pushq	%r12
GAS LISTING /tmp/ccvxKqR5.s 			page 3


  99 001b 53       		pushq	%rbx
 100 001c 4883E4E0 		andq	$-32, %rsp
 101 0020 4881EC30 		subq	$560, %rsp
 101      020000
 102              		.cfi_offset 12, -48
 103              		.cfi_offset 3, -56
 104 0027 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 104      00000000 
 105 002f E8000000 		call	_Z8linspaceddi
 105      00
 106 0034 4889C3   		movq	%rax, %rbx
 107 0037 E8000000 		call	clock
 107      00
 108 003c 48890424 		movq	%rax, (%rsp)
 109 0040 488D8424 		leaq	272(%rsp), %rax
 109      10010000 
 110 0048 C5FD280D 		vmovapd	.LC3(%rip), %ymm1
 110      00000000 
 111 0050 C5FD2825 		vmovapd	.LC4(%rip), %ymm4
 111      00000000 
 112 0058 4989DE   		movq	%rbx, %r14
 113 005b 31DB     		xorl	%ebx, %ebx
 114 005d C5FD281D 		vmovapd	.LC0(%rip), %ymm3
 114      00000000 
 115 0065 48894424 		movq	%rax, 8(%rsp)
 115      08
 116              	.L12:
 117 006a C4417D10 		vmovupd	(%r14), %ymm8
 117      06
 118 006f C5FD28D3 		vmovapd	%ymm3, %ymm2
 119 0073 C5FD28C3 		vmovapd	%ymm3, %ymm0
 120 0077 C5FD299C 		vmovapd	%ymm3, 368(%rsp)
 120      24700100 
 120      00
 121 0080 C5FD28EB 		vmovapd	%ymm3, %ymm5
 122 0084 BA102700 		movl	$10000, %edx
 122      00
 123 0089 C57D2984 		vmovapd	%ymm8, 464(%rsp)
 123      24D00100 
 123      00
 124 0092 C4C17D10 		vmovupd	32(%r14), %ymm7
 124      7E20
 125 0098 C5FD29BC 		vmovapd	%ymm7, 496(%rsp)
 125      24F00100 
 125      00
 126 00a1 C4C17D10 		vmovupd	64(%r14), %ymm6
 126      7640
 127 00a7 C5FD29B4 		vmovapd	%ymm6, 528(%rsp)
 127      24100200 
 127      00
 128              		.p2align 4,,10
 129              		.p2align 3
 130              	.L22:
 131 00b0 C5755EDD 		vdivpd	%ymm5, %ymm1, %ymm11
 132 00b4 83EA01   		subl	$1, %edx
 133 00b7 C53D59CD 		vmulpd	%ymm5, %ymm8, %ymm9
 134 00bb C54D59D2 		vmulpd	%ymm2, %ymm6, %ymm10
GAS LISTING /tmp/ccvxKqR5.s 			page 4


 135 00bf C5755EF8 		vdivpd	%ymm0, %ymm1, %ymm15
 136 00c3 C441255C 		vsubpd	%ymm9, %ymm11, %ymm11
 136      D9
 137 00c8 C4415D59 		vmulpd	%ymm11, %ymm4, %ymm12
 137      E3
 138 00cd C54559C8 		vmulpd	%ymm0, %ymm7, %ymm9
 139 00d1 C51D58A4 		vaddpd	368(%rsp), %ymm12, %ymm12
 139      24700100 
 139      00
 140 00da C5755EF2 		vdivpd	%ymm2, %ymm1, %ymm14
 141 00de C441055C 		vsubpd	%ymm9, %ymm15, %ymm15
 141      F9
 142 00e3 C4413D59 		vmulpd	%ymm12, %ymm8, %ymm13
 142      EC
 143 00e8 C4415D59 		vmulpd	%ymm15, %ymm4, %ymm9
 143      CF
 144 00ed C441755E 		vdivpd	%ymm12, %ymm1, %ymm12
 144      E4
 145 00f2 C4417D58 		vaddpd	%ymm9, %ymm0, %ymm9
 145      C9
 146 00f7 C4410D5C 		vsubpd	%ymm10, %ymm14, %ymm14
 146      F2
 147 00fc C4415D59 		vmulpd	%ymm14, %ymm4, %ymm10
 147      D6
 148 0101 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 148      D2
 149 0106 C4411D5C 		vsubpd	%ymm13, %ymm12, %ymm13
 149      ED
 150 010b C4416559 		vmulpd	%ymm13, %ymm3, %ymm12
 150      E5
 151 0110 C4415D59 		vmulpd	%ymm13, %ymm4, %ymm13
 151      ED
 152 0115 C4411D58 		vaddpd	%ymm11, %ymm12, %ymm11
 152      DB
 153 011a C4414559 		vmulpd	%ymm9, %ymm7, %ymm12
 153      E1
 154 011f C4415558 		vaddpd	%ymm13, %ymm5, %ymm13
 154      ED
 155 0124 C441755E 		vdivpd	%ymm9, %ymm1, %ymm9
 155      C9
 156 0129 C441355C 		vsubpd	%ymm12, %ymm9, %ymm12
 156      E4
 157 012e C4416559 		vmulpd	%ymm12, %ymm3, %ymm9
 157      CC
 158 0133 C4415D59 		vmulpd	%ymm12, %ymm4, %ymm12
 158      E4
 159 0138 C4413558 		vaddpd	%ymm15, %ymm9, %ymm15
 159      FF
 160 013d C4414D59 		vmulpd	%ymm10, %ymm6, %ymm9
 160      CA
 161 0142 C4417D58 		vaddpd	%ymm12, %ymm0, %ymm12
 161      E4
 162 0147 C441755E 		vdivpd	%ymm10, %ymm1, %ymm10
 162      D2
 163 014c C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm9
 163      C9
 164 0151 C4416559 		vmulpd	%ymm9, %ymm3, %ymm10
GAS LISTING /tmp/ccvxKqR5.s 			page 5


 164      D1
 165 0156 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm9
 165      C9
 166 015b C4412D58 		vaddpd	%ymm14, %ymm10, %ymm14
 166      F6
 167 0160 C4413D59 		vmulpd	%ymm13, %ymm8, %ymm10
 167      D5
 168 0165 C4416D58 		vaddpd	%ymm9, %ymm2, %ymm9
 168      C9
 169 016a C441755E 		vdivpd	%ymm13, %ymm1, %ymm13
 169      ED
 170 016f C441155C 		vsubpd	%ymm10, %ymm13, %ymm10
 170      D2
 171 0174 C4416559 		vmulpd	%ymm10, %ymm3, %ymm13
 171      EA
 172 0179 C52D5915 		vmulpd	.LC5(%rip), %ymm10, %ymm10
 172      00000000 
 173 0181 C4412558 		vaddpd	%ymm13, %ymm11, %ymm11
 173      DD
 174 0186 C4414559 		vmulpd	%ymm12, %ymm7, %ymm13
 174      EC
 175 018b C4415558 		vaddpd	%ymm10, %ymm5, %ymm10
 175      D2
 176 0190 C441755E 		vdivpd	%ymm12, %ymm1, %ymm12
 176      E4
 177 0195 C4411D5C 		vsubpd	%ymm13, %ymm12, %ymm13
 177      ED
 178 019a C4416559 		vmulpd	%ymm13, %ymm3, %ymm12
 178      E5
 179 019f C515592D 		vmulpd	.LC5(%rip), %ymm13, %ymm13
 179      00000000 
 180 01a7 C4410558 		vaddpd	%ymm12, %ymm15, %ymm15
 180      FC
 181 01ac C4414D59 		vmulpd	%ymm9, %ymm6, %ymm12
 181      E1
 182 01b1 C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 182      ED
 183 01b6 C441755E 		vdivpd	%ymm9, %ymm1, %ymm9
 183      C9
 184 01bb C441355C 		vsubpd	%ymm12, %ymm9, %ymm12
 184      E4
 185 01c0 C4416559 		vmulpd	%ymm12, %ymm3, %ymm9
 185      CC
 186 01c5 C51D5925 		vmulpd	.LC5(%rip), %ymm12, %ymm12
 186      00000000 
 187 01cd C4410D58 		vaddpd	%ymm9, %ymm14, %ymm14
 187      F1
 188 01d2 C4413D59 		vmulpd	%ymm10, %ymm8, %ymm9
 188      CA
 189 01d7 C4416D58 		vaddpd	%ymm12, %ymm2, %ymm12
 189      E4
 190 01dc C441755E 		vdivpd	%ymm10, %ymm1, %ymm10
 190      D2
 191 01e1 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm9
 191      C9
 192 01e6 C441755E 		vdivpd	%ymm13, %ymm1, %ymm10
 192      D5
GAS LISTING /tmp/ccvxKqR5.s 			page 6


 193 01eb C4412558 		vaddpd	%ymm9, %ymm11, %ymm11
 193      D9
 194 01f0 C57D298C 		vmovapd	%ymm9, 272(%rsp)
 194      24100100 
 194      00
 195 01f9 C57D299C 		vmovapd	%ymm11, 176(%rsp)
 195      24B00000 
 195      00
 196 0202 C4414559 		vmulpd	%ymm13, %ymm7, %ymm9
 196      CD
 197 0207 C4414D59 		vmulpd	%ymm12, %ymm6, %ymm13
 197      EC
 198 020c C525591D 		vmulpd	.LC6(%rip), %ymm11, %ymm11
 198      00000000 
 199 0214 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 199      D1
 200 0219 C441755E 		vdivpd	%ymm12, %ymm1, %ymm9
 200      CC
 201 021e C4C15558 		vaddpd	%ymm11, %ymm5, %ymm5
 201      EB
 202 0223 C57D2994 		vmovapd	%ymm10, 304(%rsp)
 202      24300100 
 202      00
 203 022c C4410558 		vaddpd	%ymm10, %ymm15, %ymm10
 203      D2
 204 0231 C5FD29AC 		vmovapd	%ymm5, 368(%rsp)
 204      24700100 
 204      00
 205 023a C57D2994 		vmovapd	%ymm10, 208(%rsp)
 205      24D00000 
 205      00
 206 0243 C52D5915 		vmulpd	.LC6(%rip), %ymm10, %ymm10
 206      00000000 
 207 024b C4C17D58 		vaddpd	%ymm10, %ymm0, %ymm0
 207      C2
 208 0250 C441355C 		vsubpd	%ymm13, %ymm9, %ymm9
 208      CD
 209 0255 C5FD2984 		vmovapd	%ymm0, 400(%rsp)
 209      24900100 
 209      00
 210 025e C57D298C 		vmovapd	%ymm9, 336(%rsp)
 210      24500100 
 210      00
 211 0267 C4410D58 		vaddpd	%ymm9, %ymm14, %ymm9
 211      C9
 212 026c C57D298C 		vmovapd	%ymm9, 240(%rsp)
 212      24F00000 
 212      00
 213 0275 C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 213      00000000 
 214 027d C4C16D58 		vaddpd	%ymm9, %ymm2, %ymm2
 214      D1
 215 0282 C5FD2994 		vmovapd	%ymm2, 432(%rsp)
 215      24B00100 
 215      00
 216 028b 0F851FFE 		jne	.L22
 216      FFFF
GAS LISTING /tmp/ccvxKqR5.s 			page 7


 217 0291 89D8     		movl	%ebx, %eax
 218 0293 41F7ED   		imull	%r13d
 219 0296 89D8     		movl	%ebx, %eax
 220 0298 C1F81F   		sarl	$31, %eax
 221 029b C1FA05   		sarl	$5, %edx
 222 029e 29C2     		subl	%eax, %edx
 223 02a0 B8640000 		movl	$100, %eax
 223      00
 224 02a5 0FAFD0   		imull	%eax, %edx
 225 02a8 89D8     		movl	%ebx, %eax
 226 02aa 29D0     		subl	%edx, %eax
 227 02ac 83F801   		cmpl	$1, %eax
 228 02af 0F848B00 		je	.L14
 228      0000
 229              	.L20:
 230 02b5 83C30C   		addl	$12, %ebx
 231 02b8 4983C660 		addq	$96, %r14
 232 02bc 81FBE046 		cmpl	$18144, %ebx
 232      0000
 233 02c2 0F85A2FD 		jne	.L12
 233      FFFF
 234 02c8 C5F877   		vzeroupper
 235 02cb E8000000 		call	clock
 235      00
 236 02d0 BA0C0000 		movl	$12, %edx
 236      00
 237 02d5 4889C3   		movq	%rax, %rbx
 238 02d8 BE000000 		movl	$.LC9, %esi
 238      00
 239 02dd BF000000 		movl	$_ZSt4cout, %edi
 239      00
 240 02e2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 240      00
 241 02e7 4889D9   		movq	%rbx, %rcx
 242 02ea 482B0C24 		subq	(%rsp), %rcx
 243 02ee 48BECFF7 		movabsq	$2361183241434822607, %rsi
 243      53E3A59B 
 243      C420
 244 02f8 BF000000 		movl	$_ZSt4cout, %edi
 244      00
 245 02fd 4889C8   		movq	%rcx, %rax
 246 0300 48C1F93F 		sarq	$63, %rcx
 247 0304 48F7EE   		imulq	%rsi
 248 0307 4889D6   		movq	%rdx, %rsi
 249 030a 48C1FE07 		sarq	$7, %rsi
 250 030e 4829CE   		subq	%rcx, %rsi
 251 0311 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 251      00
 252 0316 BE000000 		movl	$.LC10, %esi
 252      00
 253 031b 4889C7   		movq	%rax, %rdi
 254 031e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 254      00
 255 0323 4889C7   		movq	%rax, %rdi
 256 0326 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 256      00
 257 032b 488D65D8 		leaq	-40(%rbp), %rsp
GAS LISTING /tmp/ccvxKqR5.s 			page 8


 258 032f 31C0     		xorl	%eax, %eax
 259 0331 5B       		popq	%rbx
 260 0332 415C     		popq	%r12
 261 0334 415D     		popq	%r13
 262 0336 415E     		popq	%r14
 263 0338 415F     		popq	%r15
 264 033a 5D       		popq	%rbp
 265              		.cfi_remember_state
 266              		.cfi_def_cfa 7, 8
 267 033b C3       		ret
 268 033c 0F1F4000 		.p2align 4,,10
 269              		.p2align 3
 270              	.L14:
 271              		.cfi_restore_state
 272 0340 4C8DBC24 		leaq	176(%rsp), %r15
 272      B0000000 
 273              	.L21:
 274 0348 C4C17B10 		vmovsd	192(%r15), %xmm2
 274      97C00000 
 274      00
 275 0351 BA040000 		movl	$4, %edx
 275      00
 276 0356 BE000000 		movl	$.LC7, %esi
 276      00
 277 035b C4C17B10 		vmovsd	288(%r15), %xmm0
 277      87200100 
 277      00
 278 0364 BF000000 		movl	$_ZSt4cout, %edi
 278      00
 279 0369 C5FD2964 		vmovapd	%ymm4, 16(%rsp)
 279      2410
 280 036f C5FD294C 		vmovapd	%ymm1, 48(%rsp)
 280      2430
 281 0375 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 281      2450
 282 037b C5FB1154 		vmovsd	%xmm2, 112(%rsp)
 282      2470
 283 0381 C5FB1184 		vmovsd	%xmm0, 144(%rsp)
 283      24900000 
 283      00
 284 038a C5F877   		vzeroupper
 285 038d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 285      00
 286 0392 C5FB1084 		vmovsd	144(%rsp), %xmm0
 286      24900000 
 286      00
 287 039b BF000000 		movl	$_ZSt4cout, %edi
 287      00
 288 03a0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 288      00
 289 03a5 BA030000 		movl	$3, %edx
 289      00
 290 03aa BE000000 		movl	$.LC8, %esi
 290      00
 291 03af 4889C7   		movq	%rax, %rdi
 292 03b2 4989C4   		movq	%rax, %r12
 293 03b5 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/ccvxKqR5.s 			page 9


 293      00
 294 03ba C5FB1054 		vmovsd	112(%rsp), %xmm2
 294      2470
 295 03c0 4C89E7   		movq	%r12, %rdi
 296 03c3 C5F928C2 		vmovapd	%xmm2, %xmm0
 297 03c7 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 297      00
 298 03cc 4989C0   		movq	%rax, %r8
 299 03cf 488B00   		movq	(%rax), %rax
 300 03d2 C5FD285C 		vmovapd	80(%rsp), %ymm3
 300      2450
 301 03d8 C5FD284C 		vmovapd	48(%rsp), %ymm1
 301      2430
 302 03de C5FD2864 		vmovapd	16(%rsp), %ymm4
 302      2410
 303 03e4 488B40E8 		movq	-24(%rax), %rax
 304 03e8 498B9400 		movq	240(%r8,%rax), %rdx
 304      F0000000 
 305 03f0 4885D2   		testq	%rdx, %rdx
 306 03f3 0F84BA00 		je	.L25
 306      0000
 307 03f9 807A3800 		cmpb	$0, 56(%rdx)
 308 03fd 7458     		je	.L18
 309 03ff 0FB64243 		movzbl	67(%rdx), %eax
 310              	.L19:
 311 0403 0FBEF0   		movsbl	%al, %esi
 312 0406 4C89C7   		movq	%r8, %rdi
 313 0409 C5FD2964 		vmovapd	%ymm4, 80(%rsp)
 313      2450
 314 040f C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 314      2470
 315 0415 C5FD299C 		vmovapd	%ymm3, 144(%rsp)
 315      24900000 
 315      00
 316 041e C5F877   		vzeroupper
 317 0421 4983C720 		addq	$32, %r15
 318 0425 E8000000 		call	_ZNSo3putEc
 318      00
 319 042a 4889C7   		movq	%rax, %rdi
 320 042d E8000000 		call	_ZNSo5flushEv
 320      00
 321 0432 4C3B7C24 		cmpq	8(%rsp), %r15
 321      08
 322 0437 C5FD289C 		vmovapd	144(%rsp), %ymm3
 322      24900000 
 322      00
 323 0440 C5FD284C 		vmovapd	112(%rsp), %ymm1
 323      2470
 324 0446 C5FD2864 		vmovapd	80(%rsp), %ymm4
 324      2450
 325 044c 0F85F6FE 		jne	.L21
 325      FFFF
 326 0452 E95EFEFF 		jmp	.L20
 326      FF
 327              	.L18:
 328 0457 4889D7   		movq	%rdx, %rdi
 329 045a C5FD2964 		vmovapd	%ymm4, 16(%rsp)
GAS LISTING /tmp/ccvxKqR5.s 			page 10


 329      2410
 330 0460 4C894424 		movq	%r8, 112(%rsp)
 330      70
 331 0465 C5FD294C 		vmovapd	%ymm1, 48(%rsp)
 331      2430
 332 046b 48899424 		movq	%rdx, 144(%rsp)
 332      90000000 
 333 0473 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 333      2450
 334 0479 C5F877   		vzeroupper
 335 047c E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 335      00
 336 0481 488B9424 		movq	144(%rsp), %rdx
 336      90000000 
 337 0489 BE0A0000 		movl	$10, %esi
 337      00
 338 048e 488B02   		movq	(%rdx), %rax
 339 0491 4889D7   		movq	%rdx, %rdi
 340 0494 FF5030   		call	*48(%rax)
 341 0497 C5FD2864 		vmovapd	16(%rsp), %ymm4
 341      2410
 342 049d 4C8B4424 		movq	112(%rsp), %r8
 342      70
 343 04a2 C5FD284C 		vmovapd	48(%rsp), %ymm1
 343      2430
 344 04a8 C5FD285C 		vmovapd	80(%rsp), %ymm3
 344      2450
 345 04ae E950FFFF 		jmp	.L19
 345      FF
 346              	.L25:
 347 04b3 C5F877   		vzeroupper
 348 04b6 E8000000 		call	_ZSt16__throw_bad_castv
 348      00
 349              		.cfi_endproc
 350              	.LFE4383:
 351              		.size	main, .-main
 352 04bb 0F1F4400 		.p2align 4,,15
 352      00
 353              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 354              	_GLOBAL__sub_I__Z8linspaceddi:
 355              	.LFB4595:
 356              		.cfi_startproc
 357 04c0 4883EC08 		subq	$8, %rsp
 358              		.cfi_def_cfa_offset 16
 359 04c4 BF000000 		movl	$_ZStL8__ioinit, %edi
 359      00
 360 04c9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 360      00
 361 04ce BA000000 		movl	$__dso_handle, %edx
 361      00
 362 04d3 BE000000 		movl	$_ZStL8__ioinit, %esi
 362      00
 363 04d8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 363      00
 364 04dd 4883C408 		addq	$8, %rsp
 365              		.cfi_def_cfa_offset 8
 366 04e1 E9000000 		jmp	__cxa_atexit
GAS LISTING /tmp/ccvxKqR5.s 			page 11


 366      00
 367              		.cfi_endproc
 368              	.LFE4595:
 369              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 370              		.section	.init_array,"aw"
 371              		.align 8
 372 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 372      00000000 
 373              		.local	_ZStL8__ioinit
 374              		.comm	_ZStL8__ioinit,1,1
 375              		.section	.rodata.cst32,"aM",@progbits,32
 376              		.align 32
 377              	.LC0:
 378 0000 00000000 		.long	0
 379 0004 00000040 		.long	1073741824
 380 0008 00000000 		.long	0
 381 000c 00000040 		.long	1073741824
 382 0010 00000000 		.long	0
 383 0014 00000040 		.long	1073741824
 384 0018 00000000 		.long	0
 385 001c 00000040 		.long	1073741824
 386              		.section	.rodata.cst8,"aM",@progbits,8
 387              		.align 8
 388              	.LC1:
 389 0000 9A999999 		.long	2576980378
 390 0004 9999E93F 		.long	1072273817
 391              		.section	.rodata.cst32
 392              		.align 32
 393              	.LC3:
 394 0020 00000000 		.long	0
 395 0024 0000F03F 		.long	1072693248
 396 0028 00000000 		.long	0
 397 002c 0000F03F 		.long	1072693248
 398 0030 00000000 		.long	0
 399 0034 0000F03F 		.long	1072693248
 400 0038 00000000 		.long	0
 401 003c 0000F03F 		.long	1072693248
 402              		.align 32
 403              	.LC4:
 404 0040 7B14AE47 		.long	1202590843
 405 0044 E17A743F 		.long	1064598241
 406 0048 7B14AE47 		.long	1202590843
 407 004c E17A743F 		.long	1064598241
 408 0050 7B14AE47 		.long	1202590843
 409 0054 E17A743F 		.long	1064598241
 410 0058 7B14AE47 		.long	1202590843
 411 005c E17A743F 		.long	1064598241
 412              		.align 32
 413              	.LC5:
 414 0060 7B14AE47 		.long	1202590843
 415 0064 E17A843F 		.long	1065646817
 416 0068 7B14AE47 		.long	1202590843
 417 006c E17A843F 		.long	1065646817
 418 0070 7B14AE47 		.long	1202590843
 419 0074 E17A843F 		.long	1065646817
 420 0078 7B14AE47 		.long	1202590843
 421 007c E17A843F 		.long	1065646817
GAS LISTING /tmp/ccvxKqR5.s 			page 12


 422              		.align 32
 423              	.LC6:
 424 0080 4F1BE8B4 		.long	3035110223
 425 0084 814E5B3F 		.long	1062948481
 426 0088 4F1BE8B4 		.long	3035110223
 427 008c 814E5B3F 		.long	1062948481
 428 0090 4F1BE8B4 		.long	3035110223
 429 0094 814E5B3F 		.long	1062948481
 430 0098 4F1BE8B4 		.long	3035110223
 431 009c 814E5B3F 		.long	1062948481
 432              		.hidden	__dso_handle
 433              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 434              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccvxKqR5.s 			page 13


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccvxKqR5.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccvxKqR5.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccvxKqR5.s:81     .text.startup:0000000000000000 main
     /tmp/ccvxKqR5.s:354    .text.startup:00000000000004c0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccvxKqR5.s:388    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccvxKqR5.s:393    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccvxKqR5.s:403    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccvxKqR5.s:377    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccvxKqR5.s:413    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccvxKqR5.s:423    .rodata.cst32:0000000000000080 .LC6

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
