GAS LISTING /tmp/ccU17Uv1.s 			page 1


   1              		.file	"lorentz_RK4.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1:
   5              	.LFB4598:
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
  18              	.LFE4598:
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
GAS LISTING /tmp/ccU17Uv1.s 			page 2


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
  69              	.LC8:
  70 0000 7831203D 		.string	"x1 = "
  70      2000
  71              	.LC9:
  72 0006 09783220 		.string	"\tx2 = "
  72      3D2000
  73              	.LC10:
  74 000d 09783320 		.string	"\tx3 = "
  74      3D2000
  75              	.LC11:
  76 0014 09703D20 		.string	"\tp= "
  76      00
  77              	.LC12:
  78 0019 456C6170 		.string	"Elapsed time: "
  78      73656420 
  78      74696D65 
  78      3A2000
  79              	.LC13:
  80 0028 206D7300 		.string	" ms"
  81              		.section	.text.startup,"ax",@progbits
  82              		.p2align 4,,15
  83              		.globl	main
  84              		.type	main, @function
  85              	main:
  86              	.LFB4383:
  87              		.cfi_startproc
  88 0000 55       		pushq	%rbp
  89              		.cfi_def_cfa_offset 16
  90              		.cfi_offset 6, -16
  91 0001 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
  92 0005 BF809D00 		movl	$40320, %edi
  92      00
  93 000a 4889E5   		movq	%rsp, %rbp
  94              		.cfi_def_cfa_register 6
  95 000d 4157     		pushq	%r15
  96 000f 4156     		pushq	%r14
GAS LISTING /tmp/ccU17Uv1.s 			page 3


  97 0011 4155     		pushq	%r13
  98 0013 4154     		pushq	%r12
  99 0015 53       		pushq	%rbx
 100              		.cfi_offset 15, -24
 101              		.cfi_offset 14, -32
 102              		.cfi_offset 13, -40
 103              		.cfi_offset 12, -48
 104              		.cfi_offset 3, -56
 105 0016 31DB     		xorl	%ebx, %ebx
 106 0018 4883E4E0 		andq	$-32, %rsp
 107 001c 4881EC00 		subq	$256, %rsp
 107      010000
 108 0023 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 108      00000000 
 109 002b E8000000 		call	_Z8linspaceddi
 109      00
 110 0030 4989C4   		movq	%rax, %r12
 111 0033 E8000000 		call	clock
 111      00
 112 0038 C57D2805 		vmovapd	.LC0(%rip), %ymm8
 112      00000000 
 113 0040 4989C5   		movq	%rax, %r13
 114 0043 C5FD282D 		vmovapd	.LC4(%rip), %ymm5
 114      00000000 
 115 004b C5FD2825 		vmovapd	.LC5(%rip), %ymm4
 115      00000000 
 116              	.L12:
 117 0053 C5FD281D 		vmovapd	.LC0(%rip), %ymm3
 117      00000000 
 118 005b BA102700 		movl	$10000, %edx
 118      00
 119 0060 C4C17D28 		vmovapd	(%r12), %ymm7
 119      3C24
 120 0066 C5FD28D3 		vmovapd	%ymm3, %ymm2
 121 006a C5FD28CB 		vmovapd	%ymm3, %ymm1
 122 006e 6690     		.p2align 4,,10
 123              		.p2align 3
 124              	.L19:
 125 0070 C54559E9 		vmulpd	%ymm1, %ymm7, %ymm13
 126 0074 C56D5CF1 		vsubpd	%ymm1, %ymm2, %ymm14
 127 0078 83EA01   		subl	$1, %edx
 128 007b C5F559C3 		vmulpd	%ymm3, %ymm1, %ymm0
 129 007f C57559E2 		vmulpd	%ymm2, %ymm1, %ymm12
 130 0083 C5155CEA 		vsubpd	%ymm2, %ymm13, %ymm13
 131 0087 C4413D59 		vmulpd	%ymm14, %ymm8, %ymm14
 131      F6
 132 008c C5155CE8 		vsubpd	%ymm0, %ymm13, %ymm13
 133 0090 C5E55905 		vmulpd	.LC3(%rip), %ymm3, %ymm0
 133      00000000 
 134 0098 C4415559 		vmulpd	%ymm13, %ymm5, %ymm9
 134      CD
 135 009d C51D5CE0 		vsubpd	%ymm0, %ymm12, %ymm12
 136 00a1 C4C15559 		vmulpd	%ymm14, %ymm5, %ymm0
 136      C6
 137 00a6 C4416D58 		vaddpd	%ymm9, %ymm2, %ymm9
 137      C9
 138 00ab C4415559 		vmulpd	%ymm12, %ymm5, %ymm11
GAS LISTING /tmp/ccU17Uv1.s 			page 4


 138      DC
 139 00b0 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 140 00b4 C4416558 		vaddpd	%ymm11, %ymm3, %ymm11
 140      DB
 141 00b9 C54559D0 		vmulpd	%ymm0, %ymm7, %ymm10
 142 00bd C5B55CF0 		vsubpd	%ymm0, %ymm9, %ymm6
 143 00c1 C4417D59 		vmulpd	%ymm11, %ymm0, %ymm15
 143      FB
 144 00c6 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 144      D1
 145 00cb C5BD59F6 		vmulpd	%ymm6, %ymm8, %ymm6
 146 00cf C525591D 		vmulpd	.LC3(%rip), %ymm11, %ymm11
 146      00000000 
 147 00d7 C4412D5C 		vsubpd	%ymm15, %ymm10, %ymm10
 147      D7
 148 00dc C4C17D59 		vmulpd	%ymm9, %ymm0, %ymm0
 148      C1
 149 00e1 C55D59CE 		vmulpd	%ymm6, %ymm4, %ymm9
 150 00e5 C5D559F6 		vmulpd	%ymm6, %ymm5, %ymm6
 151 00e9 C4C17D5C 		vsubpd	%ymm11, %ymm0, %ymm0
 151      C3
 152 00ee C4410D58 		vaddpd	%ymm9, %ymm14, %ymm14
 152      F1
 153 00f3 C4415D59 		vmulpd	%ymm10, %ymm4, %ymm9
 153      CA
 154 00f8 C5F558F6 		vaddpd	%ymm6, %ymm1, %ymm6
 155 00fc C4415559 		vmulpd	%ymm10, %ymm5, %ymm10
 155      D2
 156 0101 C4411558 		vaddpd	%ymm9, %ymm13, %ymm13
 156      E9
 157 0106 C55D59C8 		vmulpd	%ymm0, %ymm4, %ymm9
 158 010a C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 158      D2
 159 010f C5D559C0 		vmulpd	%ymm0, %ymm5, %ymm0
 160 0113 C4411D58 		vaddpd	%ymm9, %ymm12, %ymm12
 160      E1
 161 0118 C54559CE 		vmulpd	%ymm6, %ymm7, %ymm9
 162 011c C56558D8 		vaddpd	%ymm0, %ymm3, %ymm11
 163 0120 C5AD5CC6 		vsubpd	%ymm6, %ymm10, %ymm0
 164 0124 C441355C 		vsubpd	%ymm10, %ymm9, %ymm9
 164      CA
 165 0129 C4414D59 		vmulpd	%ymm11, %ymm6, %ymm15
 165      FB
 166 012e C5BD59C0 		vmulpd	%ymm0, %ymm8, %ymm0
 167 0132 C525591D 		vmulpd	.LC3(%rip), %ymm11, %ymm11
 167      00000000 
 168 013a C441355C 		vsubpd	%ymm15, %ymm9, %ymm9
 168      CF
 169 013f C4C14D59 		vmulpd	%ymm10, %ymm6, %ymm6
 169      F2
 170 0144 C55D59D0 		vmulpd	%ymm0, %ymm4, %ymm10
 171 0148 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 171      00000000 
 172 0150 C4C14D5C 		vsubpd	%ymm11, %ymm6, %ymm6
 172      F3
 173 0155 C4410D58 		vaddpd	%ymm10, %ymm14, %ymm14
 173      F2
GAS LISTING /tmp/ccU17Uv1.s 			page 5


 174 015a C4415D59 		vmulpd	%ymm9, %ymm4, %ymm10
 174      D1
 175 015f C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 175      00000000 
 176 0167 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 177 016b C4411558 		vaddpd	%ymm10, %ymm13, %ymm13
 177      EA
 178 0170 C55D59D6 		vmulpd	%ymm6, %ymm4, %ymm10
 179 0174 C5CD5935 		vmulpd	.LC6(%rip), %ymm6, %ymm6
 179      00000000 
 180 017c C4416D58 		vaddpd	%ymm9, %ymm2, %ymm9
 180      C9
 181 0181 C4411D58 		vaddpd	%ymm10, %ymm12, %ymm12
 181      E2
 182 0186 C54559D0 		vmulpd	%ymm0, %ymm7, %ymm10
 183 018a C5355CD8 		vsubpd	%ymm0, %ymm9, %ymm11
 184 018e C5E558F6 		vaddpd	%ymm6, %ymm3, %ymm6
 185 0192 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 185      D1
 186 0197 C4413D59 		vmulpd	%ymm11, %ymm8, %ymm11
 186      DB
 187 019c C57D59FE 		vmulpd	%ymm6, %ymm0, %ymm15
 188 01a0 C5CD5935 		vmulpd	.LC3(%rip), %ymm6, %ymm6
 188      00000000 
 189 01a8 C4410D58 		vaddpd	%ymm11, %ymm14, %ymm14
 189      F3
 190 01ad C4C17D59 		vmulpd	%ymm9, %ymm0, %ymm0
 190      C1
 191 01b2 C4412D5C 		vsubpd	%ymm15, %ymm10, %ymm10
 191      D7
 192 01b7 C50D5935 		vmulpd	.LC7(%rip), %ymm14, %ymm14
 192      00000000 
 193 01bf C5FD5CC6 		vsubpd	%ymm6, %ymm0, %ymm0
 194 01c3 C4411558 		vaddpd	%ymm10, %ymm13, %ymm13
 194      EA
 195 01c8 C51D58E0 		vaddpd	%ymm0, %ymm12, %ymm12
 196 01cc C515592D 		vmulpd	.LC7(%rip), %ymm13, %ymm13
 196      00000000 
 197 01d4 C4C17558 		vaddpd	%ymm14, %ymm1, %ymm1
 197      CE
 198 01d9 C51D5925 		vmulpd	.LC7(%rip), %ymm12, %ymm12
 198      00000000 
 199 01e1 C4C16D58 		vaddpd	%ymm13, %ymm2, %ymm2
 199      D5
 200 01e6 C4C16558 		vaddpd	%ymm12, %ymm3, %ymm3
 200      DC
 201 01eb 0F857FFE 		jne	.L19
 201      FFFF
 202 01f1 89D8     		movl	%ebx, %eax
 203 01f3 BAAD8BDB 		movl	$1759218605, %edx
 203      68
 204 01f8 F7EA     		imull	%edx
 205 01fa 89D8     		movl	%ebx, %eax
 206 01fc C1F81F   		sarl	$31, %eax
 207 01ff C1FA0C   		sarl	$12, %edx
 208 0202 29C2     		subl	%eax, %edx
 209 0204 69D21027 		imull	$10000, %edx, %edx
GAS LISTING /tmp/ccU17Uv1.s 			page 6


 209      0000
 210 020a 39D3     		cmpl	%edx, %ebx
 211 020c 0F848E00 		je	.L21
 211      0000
 212              	.L14:
 213 0212 83C304   		addl	$4, %ebx
 214 0215 4983C420 		addq	$32, %r12
 215 0219 81FB809D 		cmpl	$40320, %ebx
 215      0000
 216 021f 0F852EFE 		jne	.L12
 216      FFFF
 217 0225 C5F877   		vzeroupper
 218 0228 E8000000 		call	clock
 218      00
 219 022d BA0E0000 		movl	$14, %edx
 219      00
 220 0232 4889C3   		movq	%rax, %rbx
 221 0235 BE000000 		movl	$.LC12, %esi
 221      00
 222 023a BF000000 		movl	$_ZSt4cout, %edi
 222      00
 223 023f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 223      00
 224 0244 4889D9   		movq	%rbx, %rcx
 225 0247 48BECFF7 		movabsq	$2361183241434822607, %rsi
 225      53E3A59B 
 225      C420
 226 0251 BF000000 		movl	$_ZSt4cout, %edi
 226      00
 227 0256 4C29E9   		subq	%r13, %rcx
 228 0259 4889C8   		movq	%rcx, %rax
 229 025c 48C1F93F 		sarq	$63, %rcx
 230 0260 48F7EE   		imulq	%rsi
 231 0263 4889D6   		movq	%rdx, %rsi
 232 0266 48C1FE07 		sarq	$7, %rsi
 233 026a 4829CE   		subq	%rcx, %rsi
 234 026d E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 234      00
 235 0272 BE000000 		movl	$.LC13, %esi
 235      00
 236 0277 4889C7   		movq	%rax, %rdi
 237 027a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 237      00
 238 027f 4889C7   		movq	%rax, %rdi
 239 0282 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 239      00
 240 0287 488D65D8 		leaq	-40(%rbp), %rsp
 241 028b 31C0     		xorl	%eax, %eax
 242 028d 5B       		popq	%rbx
 243 028e 415C     		popq	%r12
 244 0290 415D     		popq	%r13
 245 0292 415E     		popq	%r14
 246 0294 415F     		popq	%r15
 247 0296 5D       		popq	%rbp
 248              		.cfi_remember_state
 249              		.cfi_def_cfa 7, 8
 250 0297 C3       		ret
GAS LISTING /tmp/ccU17Uv1.s 			page 7


 251 0298 0F1F8400 		.p2align 4,,10
 251      00000000 
 252              		.p2align 3
 253              	.L21:
 254              		.cfi_restore_state
 255 02a0 C5FD11BC 		vmovupd	%ymm7, 224(%rsp)
 255      24E00000 
 255      00
 256 02a9 BA050000 		movl	$5, %edx
 256      00
 257 02ae BE000000 		movl	$.LC8, %esi
 257      00
 258 02b3 BF000000 		movl	$_ZSt4cout, %edi
 258      00
 259 02b8 C5FD2924 		vmovapd	%ymm4, (%rsp)
 259      24
 260 02bd C5FB10B4 		vmovsd	224(%rsp), %xmm6
 260      24E00000 
 260      00
 261 02c6 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 261      24E00000 
 261      00
 262 02cf C5FD296C 		vmovapd	%ymm5, 32(%rsp)
 262      2420
 263 02d5 C5FB109C 		vmovsd	224(%rsp), %xmm3
 263      24E00000 
 263      00
 264 02de C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 264      24E00000 
 264      00
 265 02e7 C57D2944 		vmovapd	%ymm8, 64(%rsp)
 265      2440
 266 02ed C5FB1094 		vmovsd	224(%rsp), %xmm2
 266      24E00000 
 266      00
 267 02f6 C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 267      24E00000 
 267      00
 268 02ff C5FB1174 		vmovsd	%xmm6, 120(%rsp)
 268      2478
 269 0305 C5FB1084 		vmovsd	224(%rsp), %xmm0
 269      24E00000 
 269      00
 270 030e C5FB119C 		vmovsd	%xmm3, 128(%rsp)
 270      24800000 
 270      00
 271 0317 C5FB1194 		vmovsd	%xmm2, 160(%rsp)
 271      24A00000 
 271      00
 272 0320 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 272      24C00000 
 272      00
 273 0329 C5F877   		vzeroupper
 274 032c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 274      00
 275 0331 C5FB1084 		vmovsd	192(%rsp), %xmm0
 275      24C00000 
GAS LISTING /tmp/ccU17Uv1.s 			page 8


 275      00
 276 033a BF000000 		movl	$_ZSt4cout, %edi
 276      00
 277 033f E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 277      00
 278 0344 BA060000 		movl	$6, %edx
 278      00
 279 0349 BE000000 		movl	$.LC9, %esi
 279      00
 280 034e 4889C7   		movq	%rax, %rdi
 281 0351 4989C6   		movq	%rax, %r14
 282 0354 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 282      00
 283 0359 C5FB1094 		vmovsd	160(%rsp), %xmm2
 283      24A00000 
 283      00
 284 0362 4C89F7   		movq	%r14, %rdi
 285 0365 C5F928C2 		vmovapd	%xmm2, %xmm0
 286 0369 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 286      00
 287 036e BA060000 		movl	$6, %edx
 287      00
 288 0373 BE000000 		movl	$.LC10, %esi
 288      00
 289 0378 4889C7   		movq	%rax, %rdi
 290 037b 4989C6   		movq	%rax, %r14
 291 037e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 291      00
 292 0383 C5FB109C 		vmovsd	128(%rsp), %xmm3
 292      24800000 
 292      00
 293 038c 4C89F7   		movq	%r14, %rdi
 294 038f C5F928C3 		vmovapd	%xmm3, %xmm0
 295 0393 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 295      00
 296 0398 BA040000 		movl	$4, %edx
 296      00
 297 039d BE000000 		movl	$.LC11, %esi
 297      00
 298 03a2 4889C7   		movq	%rax, %rdi
 299 03a5 4989C6   		movq	%rax, %r14
 300 03a8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 300      00
 301 03ad C5FB1074 		vmovsd	120(%rsp), %xmm6
 301      2478
 302 03b3 4C89F7   		movq	%r14, %rdi
 303 03b6 C5F928C6 		vmovapd	%xmm6, %xmm0
 304 03ba E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 304      00
 305 03bf 4989C7   		movq	%rax, %r15
 306 03c2 488B00   		movq	(%rax), %rax
 307 03c5 C57D2844 		vmovapd	64(%rsp), %ymm8
 307      2440
 308 03cb C5FD286C 		vmovapd	32(%rsp), %ymm5
 308      2420
 309 03d1 C5FD2824 		vmovapd	(%rsp), %ymm4
 309      24
GAS LISTING /tmp/ccU17Uv1.s 			page 9


 310 03d6 488B40E8 		movq	-24(%rax), %rax
 311 03da 4D8BB407 		movq	240(%r15,%rax), %r14
 311      F0000000 
 312 03e2 4D85F6   		testq	%r14, %r14
 313 03e5 0F84B100 		je	.L22
 313      0000
 314 03eb 41807E38 		cmpb	$0, 56(%r14)
 314      00
 315 03f0 7456     		je	.L16
 316 03f2 410FB646 		movzbl	67(%r14), %eax
 316      43
 317              	.L17:
 318 03f7 0FBEF0   		movsbl	%al, %esi
 319 03fa 4C89FF   		movq	%r15, %rdi
 320 03fd C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 320      24800000 
 320      00
 321 0406 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 321      24A00000 
 321      00
 322 040f C57D2984 		vmovapd	%ymm8, 192(%rsp)
 322      24C00000 
 322      00
 323 0418 C5F877   		vzeroupper
 324 041b E8000000 		call	_ZNSo3putEc
 324      00
 325 0420 4889C7   		movq	%rax, %rdi
 326 0423 E8000000 		call	_ZNSo5flushEv
 326      00
 327 0428 C5FD28A4 		vmovapd	128(%rsp), %ymm4
 327      24800000 
 327      00
 328 0431 C5FD28AC 		vmovapd	160(%rsp), %ymm5
 328      24A00000 
 328      00
 329 043a C57D2884 		vmovapd	192(%rsp), %ymm8
 329      24C00000 
 329      00
 330 0443 E9CAFDFF 		jmp	.L14
 330      FF
 331              	.L16:
 332 0448 4C89F7   		movq	%r14, %rdi
 333 044b C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 333      24800000 
 333      00
 334 0454 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 334      24A00000 
 334      00
 335 045d C57D2984 		vmovapd	%ymm8, 192(%rsp)
 335      24C00000 
 335      00
 336 0466 C5F877   		vzeroupper
 337 0469 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 337      00
 338 046e 498B06   		movq	(%r14), %rax
 339 0471 BE0A0000 		movl	$10, %esi
 339      00
GAS LISTING /tmp/ccU17Uv1.s 			page 10


 340 0476 4C89F7   		movq	%r14, %rdi
 341 0479 FF5030   		call	*48(%rax)
 342 047c C5FD28A4 		vmovapd	128(%rsp), %ymm4
 342      24800000 
 342      00
 343 0485 C5FD28AC 		vmovapd	160(%rsp), %ymm5
 343      24A00000 
 343      00
 344 048e C57D2884 		vmovapd	192(%rsp), %ymm8
 344      24C00000 
 344      00
 345 0497 E95BFFFF 		jmp	.L17
 345      FF
 346              	.L22:
 347 049c C5F877   		vzeroupper
 348 049f E8000000 		call	_ZSt16__throw_bad_castv
 348      00
 349              		.cfi_endproc
 350              	.LFE4383:
 351              		.size	main, .-main
 352 04a4 6666662E 		.p2align 4,,15
 352      0F1F8400 
 352      00000000 
 353              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 354              	_GLOBAL__sub_I__Z8linspaceddi:
 355              	.LFB4596:
 356              		.cfi_startproc
 357 04b0 4883EC08 		subq	$8, %rsp
 358              		.cfi_def_cfa_offset 16
 359 04b4 BF000000 		movl	$_ZStL8__ioinit, %edi
 359      00
 360 04b9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 360      00
 361 04be BA000000 		movl	$__dso_handle, %edx
 361      00
 362 04c3 BE000000 		movl	$_ZStL8__ioinit, %esi
 362      00
 363 04c8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 363      00
 364 04cd 4883C408 		addq	$8, %rsp
 365              		.cfi_def_cfa_offset 8
 366 04d1 E9000000 		jmp	__cxa_atexit
 366      00
 367              		.cfi_endproc
 368              	.LFE4596:
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
 379 0004 00002440 		.long	1076101120
GAS LISTING /tmp/ccU17Uv1.s 			page 11


 380 0008 00000000 		.long	0
 381 000c 00002440 		.long	1076101120
 382 0010 00000000 		.long	0
 383 0014 00002440 		.long	1076101120
 384 0018 00000000 		.long	0
 385 001c 00002440 		.long	1076101120
 386              		.section	.rodata.cst8,"aM",@progbits,8
 387              		.align 8
 388              	.LC1:
 389 0000 00000000 		.long	0
 390 0004 00003540 		.long	1077215232
 391              		.section	.rodata.cst32
 392              		.align 32
 393              	.LC3:
 394 0020 55555555 		.long	1431655765
 395 0024 55550540 		.long	1074091349
 396 0028 55555555 		.long	1431655765
 397 002c 55550540 		.long	1074091349
 398 0030 55555555 		.long	1431655765
 399 0034 55550540 		.long	1074091349
 400 0038 55555555 		.long	1431655765
 401 003c 55550540 		.long	1074091349
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
 414 0060 00000000 		.long	0
 415 0064 00000040 		.long	1073741824
 416 0068 00000000 		.long	0
 417 006c 00000040 		.long	1073741824
 418 0070 00000000 		.long	0
 419 0074 00000040 		.long	1073741824
 420 0078 00000000 		.long	0
 421 007c 00000040 		.long	1073741824
 422              		.align 32
 423              	.LC6:
 424 0080 7B14AE47 		.long	1202590843
 425 0084 E17A843F 		.long	1065646817
 426 0088 7B14AE47 		.long	1202590843
 427 008c E17A843F 		.long	1065646817
 428 0090 7B14AE47 		.long	1202590843
 429 0094 E17A843F 		.long	1065646817
 430 0098 7B14AE47 		.long	1202590843
 431 009c E17A843F 		.long	1065646817
 432              		.align 32
 433              	.LC7:
 434 00a0 4F1BE8B4 		.long	3035110223
 435 00a4 814E5B3F 		.long	1062948481
 436 00a8 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/ccU17Uv1.s 			page 12


 437 00ac 814E5B3F 		.long	1062948481
 438 00b0 4F1BE8B4 		.long	3035110223
 439 00b4 814E5B3F 		.long	1062948481
 440 00b8 4F1BE8B4 		.long	3035110223
 441 00bc 814E5B3F 		.long	1062948481
 442              		.hidden	__dso_handle
 443              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 444              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccU17Uv1.s 			page 13


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/ccU17Uv1.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccU17Uv1.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccU17Uv1.s:85     .text.startup:0000000000000000 main
     /tmp/ccU17Uv1.s:354    .text.startup:00000000000004b0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccU17Uv1.s:388    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccU17Uv1.s:377    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccU17Uv1.s:403    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccU17Uv1.s:413    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccU17Uv1.s:393    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccU17Uv1.s:423    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccU17Uv1.s:433    .rodata.cst32:00000000000000a0 .LC7

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
