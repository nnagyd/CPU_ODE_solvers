GAS LISTING /tmp/cc5QPwpi.s 			page 1


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
GAS LISTING /tmp/cc5QPwpi.s 			page 2


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
GAS LISTING /tmp/cc5QPwpi.s 			page 3


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
 110 0030 4989C5   		movq	%rax, %r13
 111 0033 E8000000 		call	clock
 111      00
 112 0038 C5FD283D 		vmovapd	.LC0(%rip), %ymm7
 112      00000000 
 113 0040 4989C6   		movq	%rax, %r14
 114 0043 C5FD282D 		vmovapd	.LC4(%rip), %ymm5
 114      00000000 
 115 004b C5FD2825 		vmovapd	.LC5(%rip), %ymm4
 115      00000000 
 116              	.L12:
 117 0053 C5FD281D 		vmovapd	.LC0(%rip), %ymm3
 117      00000000 
 118 005b BA102700 		movl	$10000, %edx
 118      00
 119 0060 C4417D28 		vmovapd	0(%r13), %ymm8
 119      4500
 120 0066 C5FD28D3 		vmovapd	%ymm3, %ymm2
 121 006a C5FD28CB 		vmovapd	%ymm3, %ymm1
 122 006e 6690     		.p2align 4,,10
 123              		.p2align 3
 124              	.L19:
 125 0070 C53D59E9 		vmulpd	%ymm1, %ymm8, %ymm13
 126 0074 C56D5CF1 		vsubpd	%ymm1, %ymm2, %ymm14
 127 0078 83EA01   		subl	$1, %edx
 128 007b C5F559C3 		vmulpd	%ymm3, %ymm1, %ymm0
 129 007f C57559E2 		vmulpd	%ymm2, %ymm1, %ymm12
 130 0083 C5155CEA 		vsubpd	%ymm2, %ymm13, %ymm13
 131 0087 C4414559 		vmulpd	%ymm14, %ymm7, %ymm14
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
GAS LISTING /tmp/cc5QPwpi.s 			page 4


 138      DC
 139 00b0 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 140 00b4 C4416558 		vaddpd	%ymm11, %ymm3, %ymm11
 140      DB
 141 00b9 C53D59D0 		vmulpd	%ymm0, %ymm8, %ymm10
 142 00bd C5B55CF0 		vsubpd	%ymm0, %ymm9, %ymm6
 143 00c1 C4417D59 		vmulpd	%ymm11, %ymm0, %ymm15
 143      FB
 144 00c6 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 144      D1
 145 00cb C5C559F6 		vmulpd	%ymm6, %ymm7, %ymm6
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
 161 0118 C53D59CE 		vmulpd	%ymm6, %ymm8, %ymm9
 162 011c C56558D8 		vaddpd	%ymm0, %ymm3, %ymm11
 163 0120 C5AD5CC6 		vsubpd	%ymm6, %ymm10, %ymm0
 164 0124 C441355C 		vsubpd	%ymm10, %ymm9, %ymm9
 164      CA
 165 0129 C4414D59 		vmulpd	%ymm11, %ymm6, %ymm15
 165      FB
 166 012e C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
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
GAS LISTING /tmp/cc5QPwpi.s 			page 5


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
 182 0186 C53D59D0 		vmulpd	%ymm0, %ymm8, %ymm10
 183 018a C5355CD8 		vsubpd	%ymm0, %ymm9, %ymm11
 184 018e C5E558F6 		vaddpd	%ymm6, %ymm3, %ymm6
 185 0192 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 185      D1
 186 0197 C4414559 		vmulpd	%ymm11, %ymm7, %ymm11
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
 209 0204 89D8     		movl	%ebx, %eax
GAS LISTING /tmp/cc5QPwpi.s 			page 6


 210 0206 69D21027 		imull	$10000, %edx, %edx
 210      0000
 211 020c 29D0     		subl	%edx, %eax
 212 020e 83F801   		cmpl	$1, %eax
 213 0211 0F848900 		je	.L21
 213      0000
 214              	.L14:
 215 0217 83C308   		addl	$8, %ebx
 216 021a 4983C540 		addq	$64, %r13
 217 021e 81FB809D 		cmpl	$40320, %ebx
 217      0000
 218 0224 0F8529FE 		jne	.L12
 218      FFFF
 219 022a C5F877   		vzeroupper
 220 022d E8000000 		call	clock
 220      00
 221 0232 BE000000 		movl	$.LC12, %esi
 221      00
 222 0237 4889C3   		movq	%rax, %rbx
 223 023a BF000000 		movl	$_ZSt4cout, %edi
 223      00
 224 023f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 224      00
 225 0244 4889D9   		movq	%rbx, %rcx
 226 0247 4889C7   		movq	%rax, %rdi
 227 024a 48BECFF7 		movabsq	$2361183241434822607, %rsi
 227      53E3A59B 
 227      C420
 228 0254 4C29F1   		subq	%r14, %rcx
 229 0257 4889C8   		movq	%rcx, %rax
 230 025a 48C1F93F 		sarq	$63, %rcx
 231 025e 48F7EE   		imulq	%rsi
 232 0261 4889D6   		movq	%rdx, %rsi
 233 0264 48C1FE07 		sarq	$7, %rsi
 234 0268 4829CE   		subq	%rcx, %rsi
 235 026b E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 235      00
 236 0270 BE000000 		movl	$.LC13, %esi
 236      00
 237 0275 4889C7   		movq	%rax, %rdi
 238 0278 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 238      00
 239 027d 4889C7   		movq	%rax, %rdi
 240 0280 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 240      00
 241 0285 488D65D8 		leaq	-40(%rbp), %rsp
 242 0289 31C0     		xorl	%eax, %eax
 243 028b 5B       		popq	%rbx
 244 028c 415C     		popq	%r12
 245 028e 415D     		popq	%r13
 246 0290 415E     		popq	%r14
 247 0292 415F     		popq	%r15
 248 0294 5D       		popq	%rbp
 249              		.cfi_remember_state
 250              		.cfi_def_cfa 7, 8
 251 0295 C3       		ret
 252 0296 662E0F1F 		.p2align 4,,10
GAS LISTING /tmp/cc5QPwpi.s 			page 7


 252      84000000 
 252      0000
 253              		.p2align 3
 254              	.L21:
 255              		.cfi_restore_state
 256 02a0 C57D1184 		vmovupd	%ymm8, 224(%rsp)
 256      24E00000 
 256      00
 257 02a9 BA050000 		movl	$5, %edx
 257      00
 258 02ae BE000000 		movl	$.LC8, %esi
 258      00
 259 02b3 BF000000 		movl	$_ZSt4cout, %edi
 259      00
 260 02b8 C5FD2924 		vmovapd	%ymm4, (%rsp)
 260      24
 261 02bd C5FB10B4 		vmovsd	224(%rsp), %xmm6
 261      24E00000 
 261      00
 262 02c6 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 262      24E00000 
 262      00
 263 02cf C5FD296C 		vmovapd	%ymm5, 32(%rsp)
 263      2420
 264 02d5 C5FB109C 		vmovsd	224(%rsp), %xmm3
 264      24E00000 
 264      00
 265 02de C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 265      24E00000 
 265      00
 266 02e7 C5FD297C 		vmovapd	%ymm7, 64(%rsp)
 266      2440
 267 02ed C5FB1094 		vmovsd	224(%rsp), %xmm2
 267      24E00000 
 267      00
 268 02f6 C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 268      24E00000 
 268      00
 269 02ff C5FB1174 		vmovsd	%xmm6, 120(%rsp)
 269      2478
 270 0305 C5FB1084 		vmovsd	224(%rsp), %xmm0
 270      24E00000 
 270      00
 271 030e C5FB119C 		vmovsd	%xmm3, 128(%rsp)
 271      24800000 
 271      00
 272 0317 C5FB1194 		vmovsd	%xmm2, 160(%rsp)
 272      24A00000 
 272      00
 273 0320 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 273      24C00000 
 273      00
 274 0329 C5F877   		vzeroupper
 275 032c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 275      00
 276 0331 C5FB1084 		vmovsd	192(%rsp), %xmm0
 276      24C00000 
GAS LISTING /tmp/cc5QPwpi.s 			page 8


 276      00
 277 033a BF000000 		movl	$_ZSt4cout, %edi
 277      00
 278 033f E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 278      00
 279 0344 BA060000 		movl	$6, %edx
 279      00
 280 0349 BE000000 		movl	$.LC9, %esi
 280      00
 281 034e 4889C7   		movq	%rax, %rdi
 282 0351 4989C4   		movq	%rax, %r12
 283 0354 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 283      00
 284 0359 C5FB1094 		vmovsd	160(%rsp), %xmm2
 284      24A00000 
 284      00
 285 0362 4C89E7   		movq	%r12, %rdi
 286 0365 C5F928C2 		vmovapd	%xmm2, %xmm0
 287 0369 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 287      00
 288 036e BA060000 		movl	$6, %edx
 288      00
 289 0373 BE000000 		movl	$.LC10, %esi
 289      00
 290 0378 4889C7   		movq	%rax, %rdi
 291 037b 4989C4   		movq	%rax, %r12
 292 037e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 292      00
 293 0383 C5FB109C 		vmovsd	128(%rsp), %xmm3
 293      24800000 
 293      00
 294 038c 4C89E7   		movq	%r12, %rdi
 295 038f C5F928C3 		vmovapd	%xmm3, %xmm0
 296 0393 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 296      00
 297 0398 BA040000 		movl	$4, %edx
 297      00
 298 039d BE000000 		movl	$.LC11, %esi
 298      00
 299 03a2 4889C7   		movq	%rax, %rdi
 300 03a5 4989C4   		movq	%rax, %r12
 301 03a8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 301      00
 302 03ad C5FB1074 		vmovsd	120(%rsp), %xmm6
 302      2478
 303 03b3 4C89E7   		movq	%r12, %rdi
 304 03b6 C5F928C6 		vmovapd	%xmm6, %xmm0
 305 03ba E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 305      00
 306 03bf 4989C7   		movq	%rax, %r15
 307 03c2 488B00   		movq	(%rax), %rax
 308 03c5 C5FD287C 		vmovapd	64(%rsp), %ymm7
 308      2440
 309 03cb C5FD286C 		vmovapd	32(%rsp), %ymm5
 309      2420
 310 03d1 C5FD2824 		vmovapd	(%rsp), %ymm4
 310      24
GAS LISTING /tmp/cc5QPwpi.s 			page 9


 311 03d6 488B40E8 		movq	-24(%rax), %rax
 312 03da 4D8BA407 		movq	240(%r15,%rax), %r12
 312      F0000000 
 313 03e2 4D85E4   		testq	%r12, %r12
 314 03e5 0F84B400 		je	.L22
 314      0000
 315 03eb 41807C24 		cmpb	$0, 56(%r12)
 315      3800
 316 03f1 7457     		je	.L16
 317 03f3 410FB644 		movzbl	67(%r12), %eax
 317      2443
 318              	.L17:
 319 03f9 0FBEF0   		movsbl	%al, %esi
 320 03fc 4C89FF   		movq	%r15, %rdi
 321 03ff C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 321      24800000 
 321      00
 322 0408 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 322      24A00000 
 322      00
 323 0411 C5FD29BC 		vmovapd	%ymm7, 192(%rsp)
 323      24C00000 
 323      00
 324 041a C5F877   		vzeroupper
 325 041d E8000000 		call	_ZNSo3putEc
 325      00
 326 0422 4889C7   		movq	%rax, %rdi
 327 0425 E8000000 		call	_ZNSo5flushEv
 327      00
 328 042a C5FD28A4 		vmovapd	128(%rsp), %ymm4
 328      24800000 
 328      00
 329 0433 C5FD28AC 		vmovapd	160(%rsp), %ymm5
 329      24A00000 
 329      00
 330 043c C5FD28BC 		vmovapd	192(%rsp), %ymm7
 330      24C00000 
 330      00
 331 0445 E9CDFDFF 		jmp	.L14
 331      FF
 332              	.L16:
 333 044a 4C89E7   		movq	%r12, %rdi
 334 044d C5FD29A4 		vmovapd	%ymm4, 128(%rsp)
 334      24800000 
 334      00
 335 0456 C5FD29AC 		vmovapd	%ymm5, 160(%rsp)
 335      24A00000 
 335      00
 336 045f C5FD29BC 		vmovapd	%ymm7, 192(%rsp)
 336      24C00000 
 336      00
 337 0468 C5F877   		vzeroupper
 338 046b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 338      00
 339 0470 498B0424 		movq	(%r12), %rax
 340 0474 BE0A0000 		movl	$10, %esi
 340      00
GAS LISTING /tmp/cc5QPwpi.s 			page 10


 341 0479 4C89E7   		movq	%r12, %rdi
 342 047c FF5030   		call	*48(%rax)
 343 047f C5FD28A4 		vmovapd	128(%rsp), %ymm4
 343      24800000 
 343      00
 344 0488 C5FD28AC 		vmovapd	160(%rsp), %ymm5
 344      24A00000 
 344      00
 345 0491 C5FD28BC 		vmovapd	192(%rsp), %ymm7
 345      24C00000 
 345      00
 346 049a E95AFFFF 		jmp	.L17
 346      FF
 347              	.L22:
 348 049f C5F877   		vzeroupper
 349 04a2 E8000000 		call	_ZSt16__throw_bad_castv
 349      00
 350              		.cfi_endproc
 351              	.LFE4383:
 352              		.size	main, .-main
 353 04a7 660F1F84 		.p2align 4,,15
 353      00000000 
 353      00
 354              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 355              	_GLOBAL__sub_I__Z8linspaceddi:
 356              	.LFB4596:
 357              		.cfi_startproc
 358 04b0 4883EC08 		subq	$8, %rsp
 359              		.cfi_def_cfa_offset 16
 360 04b4 BF000000 		movl	$_ZStL8__ioinit, %edi
 360      00
 361 04b9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 361      00
 362 04be BA000000 		movl	$__dso_handle, %edx
 362      00
 363 04c3 BE000000 		movl	$_ZStL8__ioinit, %esi
 363      00
 364 04c8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 364      00
 365 04cd 4883C408 		addq	$8, %rsp
 366              		.cfi_def_cfa_offset 8
 367 04d1 E9000000 		jmp	__cxa_atexit
 367      00
 368              		.cfi_endproc
 369              	.LFE4596:
 370              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 371              		.section	.init_array,"aw"
 372              		.align 8
 373 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 373      00000000 
 374              		.local	_ZStL8__ioinit
 375              		.comm	_ZStL8__ioinit,1,1
 376              		.section	.rodata.cst32,"aM",@progbits,32
 377              		.align 32
 378              	.LC0:
 379 0000 00000000 		.long	0
 380 0004 00002440 		.long	1076101120
GAS LISTING /tmp/cc5QPwpi.s 			page 11


 381 0008 00000000 		.long	0
 382 000c 00002440 		.long	1076101120
 383 0010 00000000 		.long	0
 384 0014 00002440 		.long	1076101120
 385 0018 00000000 		.long	0
 386 001c 00002440 		.long	1076101120
 387              		.section	.rodata.cst8,"aM",@progbits,8
 388              		.align 8
 389              	.LC1:
 390 0000 00000000 		.long	0
 391 0004 00003540 		.long	1077215232
 392              		.section	.rodata.cst32
 393              		.align 32
 394              	.LC3:
 395 0020 55555555 		.long	1431655765
 396 0024 55550540 		.long	1074091349
 397 0028 55555555 		.long	1431655765
 398 002c 55550540 		.long	1074091349
 399 0030 55555555 		.long	1431655765
 400 0034 55550540 		.long	1074091349
 401 0038 55555555 		.long	1431655765
 402 003c 55550540 		.long	1074091349
 403              		.align 32
 404              	.LC4:
 405 0040 7B14AE47 		.long	1202590843
 406 0044 E17A743F 		.long	1064598241
 407 0048 7B14AE47 		.long	1202590843
 408 004c E17A743F 		.long	1064598241
 409 0050 7B14AE47 		.long	1202590843
 410 0054 E17A743F 		.long	1064598241
 411 0058 7B14AE47 		.long	1202590843
 412 005c E17A743F 		.long	1064598241
 413              		.align 32
 414              	.LC5:
 415 0060 00000000 		.long	0
 416 0064 00000040 		.long	1073741824
 417 0068 00000000 		.long	0
 418 006c 00000040 		.long	1073741824
 419 0070 00000000 		.long	0
 420 0074 00000040 		.long	1073741824
 421 0078 00000000 		.long	0
 422 007c 00000040 		.long	1073741824
 423              		.align 32
 424              	.LC6:
 425 0080 7B14AE47 		.long	1202590843
 426 0084 E17A843F 		.long	1065646817
 427 0088 7B14AE47 		.long	1202590843
 428 008c E17A843F 		.long	1065646817
 429 0090 7B14AE47 		.long	1202590843
 430 0094 E17A843F 		.long	1065646817
 431 0098 7B14AE47 		.long	1202590843
 432 009c E17A843F 		.long	1065646817
 433              		.align 32
 434              	.LC7:
 435 00a0 4F1BE8B4 		.long	3035110223
 436 00a4 814E5B3F 		.long	1062948481
 437 00a8 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/cc5QPwpi.s 			page 12


 438 00ac 814E5B3F 		.long	1062948481
 439 00b0 4F1BE8B4 		.long	3035110223
 440 00b4 814E5B3F 		.long	1062948481
 441 00b8 4F1BE8B4 		.long	3035110223
 442 00bc 814E5B3F 		.long	1062948481
 443              		.hidden	__dso_handle
 444              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 445              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc5QPwpi.s 			page 13


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/cc5QPwpi.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cc5QPwpi.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc5QPwpi.s:85     .text.startup:0000000000000000 main
     /tmp/cc5QPwpi.s:355    .text.startup:00000000000004b0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc5QPwpi.s:389    .rodata.cst8:0000000000000000 .LC1
     /tmp/cc5QPwpi.s:378    .rodata.cst32:0000000000000000 .LC0
     /tmp/cc5QPwpi.s:404    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc5QPwpi.s:414    .rodata.cst32:0000000000000060 .LC5
     /tmp/cc5QPwpi.s:394    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc5QPwpi.s:424    .rodata.cst32:0000000000000080 .LC6
     /tmp/cc5QPwpi.s:434    .rodata.cst32:00000000000000a0 .LC7

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZNSo9_M_insertIlEERSoT_
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
