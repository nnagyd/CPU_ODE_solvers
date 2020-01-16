GAS LISTING /tmp/cc3hw7Xk.s 			page 1


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
GAS LISTING /tmp/cc3hw7Xk.s 			page 2


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
GAS LISTING /tmp/cc3hw7Xk.s 			page 3


  97              		.cfi_offset 15, -24
  98              		.cfi_offset 14, -32
  99 0011 41BEAD8B 		movl	$1759218605, %r14d
  99      DB68
 100 0017 4155     		pushq	%r13
 101 0019 4154     		pushq	%r12
 102 001b 53       		pushq	%rbx
 103              		.cfi_offset 13, -40
 104              		.cfi_offset 12, -48
 105              		.cfi_offset 3, -56
 106 001c 31DB     		xorl	%ebx, %ebx
 107 001e 4883E4E0 		andq	$-32, %rsp
 108 0022 4881EC70 		subq	$1648, %rsp
 108      060000
 109 0029 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 109      00000000 
 110 0031 E8000000 		call	_Z8linspaceddi
 110      00
 111 0036 4989C4   		movq	%rax, %r12
 112 0039 E8000000 		call	clock
 112      00
 113 003e C57D2825 		vmovapd	.LC5(%rip), %ymm12
 113      00000000 
 114 0046 48894424 		movq	%rax, 8(%rsp)
 114      08
 115              	.L12:
 116 004b C5FD2825 		vmovapd	.LC0(%rip), %ymm4
 116      00000000 
 117 0053 BA102700 		movl	$10000, %edx
 117      00
 118 0058 C4C17D28 		vmovapd	32(%r12), %ymm7
 118      7C2420
 119 005f C4C17D28 		vmovapd	64(%r12), %ymm5
 119      6C2440
 120 0066 C57D28F4 		vmovapd	%ymm4, %ymm14
 121 006a C5FD28DC 		vmovapd	%ymm4, %ymm3
 122 006e C4C17D28 		vmovapd	(%r12), %ymm6
 122      3424
 123 0074 C57D28D7 		vmovapd	%ymm7, %ymm10
 124 0078 C57D28FC 		vmovapd	%ymm4, %ymm15
 125 007c C5FD297C 		vmovapd	%ymm7, 48(%rsp)
 125      2430
 126 0082 C57D28DC 		vmovapd	%ymm4, %ymm11
 127 0086 C5FD28CC 		vmovapd	%ymm4, %ymm1
 128 008a C5FD29BC 		vmovapd	%ymm7, 1584(%rsp)
 128      24300600 
 128      00
 129 0093 C5FD28C4 		vmovapd	%ymm4, %ymm0
 130 0097 C57D28C4 		vmovapd	%ymm4, %ymm8
 131 009b C5FD296C 		vmovapd	%ymm5, 16(%rsp)
 131      2410
 132 00a1 C5FD28FE 		vmovapd	%ymm6, %ymm7
 133 00a5 C5FD29AC 		vmovapd	%ymm5, 1616(%rsp)
 133      24500600 
 133      00
 134 00ae C5FD29AC 		vmovapd	%ymm5, 336(%rsp)
 134      24500100 
GAS LISTING /tmp/cc3hw7Xk.s 			page 4


 134      00
 135 00b7 C5FD28EC 		vmovapd	%ymm4, %ymm5
 136 00bb C5FD2974 		vmovapd	%ymm6, 80(%rsp)
 136      2450
 137 00c1 C5FD29B4 		vmovapd	%ymm6, 1552(%rsp)
 137      24100600 
 137      00
 138 00ca C5FD29A4 		vmovapd	%ymm4, 976(%rsp)
 138      24D00300 
 138      00
 139 00d3 C5FD29A4 		vmovapd	%ymm4, 1008(%rsp)
 139      24F00300 
 139      00
 140 00dc C5FD29A4 		vmovapd	%ymm4, 1040(%rsp)
 140      24100400 
 140      00
 141 00e5 C5FD29A4 		vmovapd	%ymm4, 1072(%rsp)
 141      24300400 
 141      00
 142 00ee C5FD29A4 		vmovapd	%ymm4, 1104(%rsp)
 142      24500400 
 142      00
 143 00f7 C5FD29A4 		vmovapd	%ymm4, 1136(%rsp)
 143      24700400 
 143      00
 144 0100 C5FD29A4 		vmovapd	%ymm4, 1168(%rsp)
 144      24900400 
 144      00
 145 0109 C5FD29A4 		vmovapd	%ymm4, 1200(%rsp)
 145      24B00400 
 145      00
 146 0112 C5FD29A4 		vmovapd	%ymm4, 1232(%rsp)
 146      24D00400 
 146      00
 147 011b EB1E     		jmp	.L19
 148 011d 0F1F00   		.p2align 4,,10
 149              		.p2align 3
 150              	.L13:
 151 0120 C5FD2874 		vmovapd	16(%rsp), %ymm6
 151      2410
 152 0126 C57D2854 		vmovapd	48(%rsp), %ymm10
 152      2430
 153 012c C5FD29B4 		vmovapd	%ymm6, 336(%rsp)
 153      24500100 
 153      00
 154 0135 C5FD287C 		vmovapd	80(%rsp), %ymm7
 154      2450
 155              	.L19:
 156 013b C5C559D1 		vmulpd	%ymm1, %ymm7, %ymm2
 157 013f C5D55CF1 		vsubpd	%ymm1, %ymm5, %ymm6
 158 0143 83EA01   		subl	$1, %edx
 159 0146 C4417559 		vmulpd	%ymm8, %ymm1, %ymm9
 159      C8
 160 014b C57559ED 		vmulpd	%ymm5, %ymm1, %ymm13
 161 014f C5ED5CD5 		vsubpd	%ymm5, %ymm2, %ymm2
 162 0153 C5CD5935 		vmulpd	.LC0(%rip), %ymm6, %ymm6
 162      00000000 
GAS LISTING /tmp/cc3hw7Xk.s 			page 5


 163 015b C4C16D5C 		vsubpd	%ymm9, %ymm2, %ymm2
 163      D1
 164 0160 C53D590D 		vmulpd	.LC3(%rip), %ymm8, %ymm9
 164      00000000 
 165 0168 C441155C 		vsubpd	%ymm9, %ymm13, %ymm13
 165      E9
 166 016d C5255CCC 		vsubpd	%ymm4, %ymm11, %ymm9
 167 0171 C57D29AC 		vmovapd	%ymm13, 304(%rsp)
 167      24300100 
 167      00
 168 017a C52D59EC 		vmulpd	%ymm4, %ymm10, %ymm13
 169 017e C535590D 		vmulpd	.LC0(%rip), %ymm9, %ymm9
 169      00000000 
 170 0186 C441155C 		vsubpd	%ymm11, %ymm13, %ymm13
 170      EB
 171 018b C57D298C 		vmovapd	%ymm9, 272(%rsp)
 171      24100100 
 171      00
 172 0194 C4415D59 		vmulpd	%ymm15, %ymm4, %ymm9
 172      CF
 173 0199 C441155C 		vsubpd	%ymm9, %ymm13, %ymm13
 173      E9
 174 019e C505590D 		vmulpd	.LC3(%rip), %ymm15, %ymm9
 174      00000000 
 175 01a6 C57D29AC 		vmovapd	%ymm13, 240(%rsp)
 175      24F00000 
 175      00
 176 01af C4415D59 		vmulpd	%ymm11, %ymm4, %ymm13
 176      EB
 177 01b4 C441155C 		vsubpd	%ymm9, %ymm13, %ymm9
 177      C9
 178 01b9 C57D298C 		vmovapd	%ymm9, 208(%rsp)
 178      24D00000 
 178      00
 179 01c2 C50D5CCB 		vsubpd	%ymm3, %ymm14, %ymm9
 180 01c6 C535592D 		vmulpd	.LC0(%rip), %ymm9, %ymm13
 180      00000000 
 181 01ce C56559C8 		vmulpd	%ymm0, %ymm3, %ymm9
 182 01d2 C57D29AC 		vmovapd	%ymm13, 176(%rsp)
 182      24B00000 
 182      00
 183 01db C56559AC 		vmulpd	336(%rsp), %ymm3, %ymm13
 183      24500100 
 183      00
 184 01e4 C441155C 		vsubpd	%ymm14, %ymm13, %ymm13
 184      EE
 185 01e9 C441155C 		vsubpd	%ymm9, %ymm13, %ymm9
 185      C9
 186 01ee C4416559 		vmulpd	%ymm14, %ymm3, %ymm13
 186      EE
 187 01f3 C57D298C 		vmovapd	%ymm9, 144(%rsp)
 187      24900000 
 187      00
 188 01fc C57D590D 		vmulpd	.LC3(%rip), %ymm0, %ymm9
 188      00000000 
 189 0204 C441155C 		vsubpd	%ymm9, %ymm13, %ymm13
 189      E9
GAS LISTING /tmp/cc3hw7Xk.s 			page 6


 190 0209 C54D590D 		vmulpd	.LC4(%rip), %ymm6, %ymm9
 190      00000000 
 191 0211 C57D296C 		vmovapd	%ymm13, 112(%rsp)
 191      2470
 192 0217 C57D28AC 		vmovapd	304(%rsp), %ymm13
 192      24300100 
 192      00
 193 0220 C4C17558 		vaddpd	%ymm9, %ymm1, %ymm1
 193      C9
 194 0225 C56D590D 		vmulpd	.LC4(%rip), %ymm2, %ymm9
 194      00000000 
 195 022d C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 196 0231 C4C15558 		vaddpd	%ymm9, %ymm5, %ymm5
 196      E9
 197 0236 C515590D 		vmulpd	.LC4(%rip), %ymm13, %ymm9
 197      00000000 
 198 023e C57D28AC 		vmovapd	240(%rsp), %ymm13
 198      24F00000 
 198      00
 199 0247 C5C55CFD 		vsubpd	%ymm5, %ymm7, %ymm7
 200 024b C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 200      C1
 201 0250 C57D288C 		vmovapd	272(%rsp), %ymm9
 201      24100100 
 201      00
 202 0259 C535590D 		vmulpd	.LC4(%rip), %ymm9, %ymm9
 202      00000000 
 203 0261 C4C15D58 		vaddpd	%ymm9, %ymm4, %ymm4
 203      E1
 204 0266 C515590D 		vmulpd	.LC4(%rip), %ymm13, %ymm9
 204      00000000 
 205 026e C57D28AC 		vmovapd	176(%rsp), %ymm13
 205      24B00000 
 205      00
 206 0277 C4412558 		vaddpd	%ymm9, %ymm11, %ymm11
 206      D9
 207 027c C57D288C 		vmovapd	208(%rsp), %ymm9
 207      24D00000 
 207      00
 208 0285 C535590D 		vmulpd	.LC4(%rip), %ymm9, %ymm9
 208      00000000 
 209 028d C4410558 		vaddpd	%ymm9, %ymm15, %ymm15
 209      F9
 210 0292 C515590D 		vmulpd	.LC4(%rip), %ymm13, %ymm9
 210      00000000 
 211 029a C57D286C 		vmovapd	112(%rsp), %ymm13
 211      2470
 212 02a0 C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
 212      D9
 213 02a5 C57D288C 		vmovapd	144(%rsp), %ymm9
 213      24900000 
 213      00
 214 02ae C535590D 		vmulpd	.LC4(%rip), %ymm9, %ymm9
 214      00000000 
 215 02b6 C4410D58 		vaddpd	%ymm9, %ymm14, %ymm14
 215      F1
 216 02bb C515590D 		vmulpd	.LC4(%rip), %ymm13, %ymm9
GAS LISTING /tmp/cc3hw7Xk.s 			page 7


 216      00000000 
 217 02c3 C4417559 		vmulpd	%ymm8, %ymm1, %ymm13
 217      E8
 218 02c8 C53D5905 		vmulpd	.LC3(%rip), %ymm8, %ymm8
 218      00000000 
 219 02d0 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 219      C1
 220 02d5 C5555CC9 		vsubpd	%ymm1, %ymm5, %ymm9
 221 02d9 C5F559CD 		vmulpd	%ymm5, %ymm1, %ymm1
 222 02dd C4C1455C 		vsubpd	%ymm13, %ymm7, %ymm7
 222      FD
 223 02e2 C5AD59EC 		vmulpd	%ymm4, %ymm10, %ymm5
 224 02e6 C50D5CD3 		vsubpd	%ymm3, %ymm14, %ymm10
 225 02ea C4415D59 		vmulpd	%ymm15, %ymm4, %ymm13
 225      EF
 226 02ef C4C1755C 		vsubpd	%ymm8, %ymm1, %ymm1
 226      C8
 227 02f4 C535590D 		vmulpd	.LC0(%rip), %ymm9, %ymm9
 227      00000000 
 228 02fc C4C1555C 		vsubpd	%ymm11, %ymm5, %ymm5
 228      EB
 229 0301 C505593D 		vmulpd	.LC3(%rip), %ymm15, %ymm15
 229      00000000 
 230 0309 C5255CC4 		vsubpd	%ymm4, %ymm11, %ymm8
 231 030d C4C15D59 		vmulpd	%ymm11, %ymm4, %ymm4
 231      E3
 232 0312 C56559D8 		vmulpd	%ymm0, %ymm3, %ymm11
 233 0316 C4C1555C 		vsubpd	%ymm13, %ymm5, %ymm5
 233      ED
 234 031b C5FD5905 		vmulpd	.LC3(%rip), %ymm0, %ymm0
 234      00000000 
 235 0323 C4C15D5C 		vsubpd	%ymm15, %ymm4, %ymm4
 235      E7
 236 0328 C56559AC 		vmulpd	336(%rsp), %ymm3, %ymm13
 236      24500100 
 236      00
 237 0331 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 237      DE
 238 0336 C53D5905 		vmulpd	.LC0(%rip), %ymm8, %ymm8
 238      00000000 
 239 033e C52D5915 		vmulpd	.LC0(%rip), %ymm10, %ymm10
 239      00000000 
 240 0346 C5E55CC0 		vsubpd	%ymm0, %ymm3, %ymm0
 241 034a C4C11D59 		vmulpd	%ymm9, %ymm12, %ymm3
 241      D9
 242 034f C441155C 		vsubpd	%ymm14, %ymm13, %ymm13
 242      EE
 243 0354 C535590D 		vmulpd	.LC4(%rip), %ymm9, %ymm9
 243      00000000 
 244 035c C5E558F6 		vaddpd	%ymm6, %ymm3, %ymm6
 245 0360 C59D59DF 		vmulpd	%ymm7, %ymm12, %ymm3
 246 0364 C441155C 		vsubpd	%ymm11, %ymm13, %ymm11
 246      DB
 247 0369 C5C5593D 		vmulpd	.LC4(%rip), %ymm7, %ymm7
 247      00000000 
 248 0371 C535588C 		vaddpd	976(%rsp), %ymm9, %ymm9
 248      24D00300 
GAS LISTING /tmp/cc3hw7Xk.s 			page 8


 248      00
 249 037a C51D59ED 		vmulpd	%ymm5, %ymm12, %ymm13
 250 037e C5E558DA 		vaddpd	%ymm2, %ymm3, %ymm3
 251 0382 C59D59D1 		vmulpd	%ymm1, %ymm12, %ymm2
 252 0386 C5F5590D 		vmulpd	.LC4(%rip), %ymm1, %ymm1
 252      00000000 
 253 038e C5C558BC 		vaddpd	1008(%rsp), %ymm7, %ymm7
 253      24F00300 
 253      00
 254 0397 C56D58B4 		vaddpd	304(%rsp), %ymm2, %ymm14
 254      24300100 
 254      00
 255 03a0 C4C11D59 		vmulpd	%ymm8, %ymm12, %ymm2
 255      D0
 256 03a5 C5F5588C 		vaddpd	1040(%rsp), %ymm1, %ymm1
 256      24100400 
 256      00
 257 03ae C5ED5894 		vaddpd	272(%rsp), %ymm2, %ymm2
 257      24100100 
 257      00
 258 03b7 C5FD2994 		vmovapd	%ymm2, 336(%rsp)
 258      24500100 
 258      00
 259 03c0 C51558BC 		vaddpd	240(%rsp), %ymm13, %ymm15
 259      24F00000 
 259      00
 260 03c9 C51D59EC 		vmulpd	%ymm4, %ymm12, %ymm13
 261 03cd C53D5905 		vmulpd	.LC4(%rip), %ymm8, %ymm8
 261      00000000 
 262 03d5 C5DD5925 		vmulpd	.LC4(%rip), %ymm4, %ymm4
 262      00000000 
 263 03dd C5955894 		vaddpd	208(%rsp), %ymm13, %ymm2
 263      24D00000 
 263      00
 264 03e6 C4411D59 		vmulpd	%ymm11, %ymm12, %ymm13
 264      EB
 265 03eb C57D29BC 		vmovapd	%ymm15, 304(%rsp)
 265      24300100 
 265      00
 266 03f4 C5D5592D 		vmulpd	.LC4(%rip), %ymm5, %ymm5
 266      00000000 
 267 03fc C53D5884 		vaddpd	1072(%rsp), %ymm8, %ymm8
 267      24300400 
 267      00
 268 0405 C525591D 		vmulpd	.LC4(%rip), %ymm11, %ymm11
 268      00000000 
 269 040d C51558AC 		vaddpd	144(%rsp), %ymm13, %ymm13
 269      24900000 
 269      00
 270 0416 C5FD2994 		vmovapd	%ymm2, 272(%rsp)
 270      24100100 
 270      00
 271 041f C4C11D59 		vmulpd	%ymm10, %ymm12, %ymm2
 271      D2
 272 0424 C5DD58A4 		vaddpd	1136(%rsp), %ymm4, %ymm4
 272      24700400 
 272      00
GAS LISTING /tmp/cc3hw7Xk.s 			page 9


 273 042d C52D5915 		vmulpd	.LC4(%rip), %ymm10, %ymm10
 273      00000000 
 274 0435 C5D558AC 		vaddpd	1104(%rsp), %ymm5, %ymm5
 274      24500400 
 274      00
 275 043e C57D29AC 		vmovapd	%ymm13, 208(%rsp)
 275      24D00000 
 275      00
 276 0447 C51D59E8 		vmulpd	%ymm0, %ymm12, %ymm13
 277 044b C56D58BC 		vaddpd	176(%rsp), %ymm2, %ymm15
 277      24B00000 
 277      00
 278 0454 C4C1455C 		vsubpd	%ymm9, %ymm7, %ymm2
 278      D1
 279 0459 C5FD5905 		vmulpd	.LC4(%rip), %ymm0, %ymm0
 279      00000000 
 280 0461 C515586C 		vaddpd	112(%rsp), %ymm13, %ymm13
 280      2470
 281 0467 C52D5894 		vaddpd	1168(%rsp), %ymm10, %ymm10
 281      24900400 
 281      00
 282 0470 C57D29BC 		vmovapd	%ymm15, 240(%rsp)
 282      24F00000 
 282      00
 283 0479 C53559F9 		vmulpd	%ymm1, %ymm9, %ymm15
 284 047d C525589C 		vaddpd	1200(%rsp), %ymm11, %ymm11
 284      24B00400 
 284      00
 285 0486 C5F5590D 		vmulpd	.LC3(%rip), %ymm1, %ymm1
 285      00000000 
 286 048e C57D29AC 		vmovapd	%ymm13, 176(%rsp)
 286      24B00000 
 286      00
 287 0497 C5FD5884 		vaddpd	1232(%rsp), %ymm0, %ymm0
 287      24D00400 
 287      00
 288 04a0 C53559AC 		vmulpd	1552(%rsp), %ymm9, %ymm13
 288      24100600 
 288      00
 289 04a9 C53559CF 		vmulpd	%ymm7, %ymm9, %ymm9
 290 04ad C5ED5915 		vmulpd	.LC0(%rip), %ymm2, %ymm2
 290      00000000 
 291 04b5 C5155CEF 		vsubpd	%ymm7, %ymm13, %ymm13
 292 04b9 C5355CC9 		vsubpd	%ymm1, %ymm9, %ymm9
 293 04bd C5BD598C 		vmulpd	1584(%rsp), %ymm8, %ymm1
 293      24300600 
 293      00
 294 04c6 C4C1555C 		vsubpd	%ymm8, %ymm5, %ymm7
 294      F8
 295 04cb C441155C 		vsubpd	%ymm15, %ymm13, %ymm13
 295      EF
 296 04d0 C53D59FC 		vmulpd	%ymm4, %ymm8, %ymm15
 297 04d4 C5DD5925 		vmulpd	.LC3(%rip), %ymm4, %ymm4
 297      00000000 
 298 04dc C5F55CCD 		vsubpd	%ymm5, %ymm1, %ymm1
 299 04e0 C53D59C5 		vmulpd	%ymm5, %ymm8, %ymm8
 300 04e4 C5AD59E8 		vmulpd	%ymm0, %ymm10, %ymm5
GAS LISTING /tmp/cc3hw7Xk.s 			page 10


 301 04e8 C5C5593D 		vmulpd	.LC0(%rip), %ymm7, %ymm7
 301      00000000 
 302 04f0 C5BD5CE4 		vsubpd	%ymm4, %ymm8, %ymm4
 303 04f4 C52D5984 		vmulpd	1616(%rsp), %ymm10, %ymm8
 303      24500600 
 303      00
 304 04fd C4C1755C 		vsubpd	%ymm15, %ymm1, %ymm1
 304      CF
 305 0502 C5FD5905 		vmulpd	.LC3(%rip), %ymm0, %ymm0
 305      00000000 
 306 050a C441255C 		vsubpd	%ymm10, %ymm11, %ymm15
 306      FA
 307 050f C4412D59 		vmulpd	%ymm11, %ymm10, %ymm10
 307      D3
 308 0514 C4413D5C 		vsubpd	%ymm11, %ymm8, %ymm8
 308      C3
 309 0519 C505593D 		vmulpd	.LC0(%rip), %ymm15, %ymm15
 309      00000000 
 310 0521 C5AD5CC0 		vsubpd	%ymm0, %ymm10, %ymm0
 311 0525 C5BD5CED 		vsubpd	%ymm5, %ymm8, %ymm5
 312 0529 C51D59C2 		vmulpd	%ymm2, %ymm12, %ymm8
 313 052d C5ED5915 		vmulpd	.LC6(%rip), %ymm2, %ymm2
 313      00000000 
 314 0535 C53D58C6 		vaddpd	%ymm6, %ymm8, %ymm8
 315 0539 C4C11D59 		vmulpd	%ymm13, %ymm12, %ymm6
 315      F5
 316 053e C5ED5894 		vaddpd	976(%rsp), %ymm2, %ymm2
 316      24D00300 
 316      00
 317 0547 C5CD58F3 		vaddpd	%ymm3, %ymm6, %ymm6
 318 054b C4C11D59 		vmulpd	%ymm9, %ymm12, %ymm3
 318      D9
 319 0550 C5FD2994 		vmovapd	%ymm2, 1264(%rsp)
 319      24F00400 
 319      00
 320 0559 C515592D 		vmulpd	.LC6(%rip), %ymm13, %ymm13
 320      00000000 
 321 0561 C4416558 		vaddpd	%ymm14, %ymm3, %ymm14
 321      F6
 322 0566 C5FD29B4 		vmovapd	%ymm6, 144(%rsp)
 322      24900000 
 322      00
 323 056f C59D59DF 		vmulpd	%ymm7, %ymm12, %ymm3
 324 0573 C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 324      00000000 
 325 057b C5C5593D 		vmulpd	.LC6(%rip), %ymm7, %ymm7
 325      00000000 
 326 0583 C5E5589C 		vaddpd	336(%rsp), %ymm3, %ymm3
 326      24500100 
 326      00
 327 058c C51558AC 		vaddpd	1008(%rsp), %ymm13, %ymm13
 327      24F00300 
 327      00
 328 0595 C535588C 		vaddpd	1040(%rsp), %ymm9, %ymm9
 328      24100400 
 328      00
 329 059e C5C558BC 		vaddpd	1072(%rsp), %ymm7, %ymm7
GAS LISTING /tmp/cc3hw7Xk.s 			page 11


 329      24300400 
 329      00
 330 05a7 C5FD299C 		vmovapd	%ymm3, 336(%rsp)
 330      24500100 
 330      00
 331 05b0 C59D59D9 		vmulpd	%ymm1, %ymm12, %ymm3
 332 05b4 C57D29AC 		vmovapd	%ymm13, 1296(%rsp)
 332      24100500 
 332      00
 333 05bd C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 333      00000000 
 334 05c5 C57D298C 		vmovapd	%ymm9, 1328(%rsp)
 334      24300500 
 334      00
 335 05ce C5655894 		vaddpd	304(%rsp), %ymm3, %ymm10
 335      24300100 
 335      00
 336 05d7 C59D59DC 		vmulpd	%ymm4, %ymm12, %ymm3
 337 05db C5FD29BC 		vmovapd	%ymm7, 1360(%rsp)
 337      24500500 
 337      00
 338 05e4 C5DD5925 		vmulpd	.LC6(%rip), %ymm4, %ymm4
 338      00000000 
 339 05ec C565589C 		vaddpd	272(%rsp), %ymm3, %ymm11
 339      24100100 
 339      00
 340 05f5 C4C11D59 		vmulpd	%ymm15, %ymm12, %ymm3
 340      DF
 341 05fa C57D2994 		vmovapd	%ymm10, 304(%rsp)
 341      24300100 
 341      00
 342 0603 C5F5588C 		vaddpd	1104(%rsp), %ymm1, %ymm1
 342      24500400 
 342      00
 343 060c C51D59D5 		vmulpd	%ymm5, %ymm12, %ymm10
 344 0610 C505593D 		vmulpd	.LC6(%rip), %ymm15, %ymm15
 344      00000000 
 345 0618 C5E558B4 		vaddpd	240(%rsp), %ymm3, %ymm6
 345      24F00000 
 345      00
 346 0621 C5D5592D 		vmulpd	.LC6(%rip), %ymm5, %ymm5
 346      00000000 
 347 0629 C57D299C 		vmovapd	%ymm11, 272(%rsp)
 347      24100100 
 347      00
 348 0632 C5AD589C 		vaddpd	208(%rsp), %ymm10, %ymm3
 348      24D00000 
 348      00
 349 063b C5FD298C 		vmovapd	%ymm1, 1392(%rsp)
 349      24700500 
 349      00
 350 0644 C5DD58A4 		vaddpd	1136(%rsp), %ymm4, %ymm4
 350      24700400 
 350      00
 351 064d C50558BC 		vaddpd	1168(%rsp), %ymm15, %ymm15
 351      24900400 
 351      00
GAS LISTING /tmp/cc3hw7Xk.s 			page 12


 352 0656 C5FD29B4 		vmovapd	%ymm6, 240(%rsp)
 352      24F00000 
 352      00
 353 065f C5D558AC 		vaddpd	1200(%rsp), %ymm5, %ymm5
 353      24B00400 
 353      00
 354 0668 C5FD299C 		vmovapd	%ymm3, 208(%rsp)
 354      24D00000 
 354      00
 355 0671 C59D59D8 		vmulpd	%ymm0, %ymm12, %ymm3
 356 0675 C5955CF2 		vsubpd	%ymm2, %ymm13, %ymm6
 357 0679 C5FD29A4 		vmovapd	%ymm4, 1424(%rsp)
 357      24900500 
 357      00
 358 0682 C57D29BC 		vmovapd	%ymm15, 1456(%rsp)
 358      24B00500 
 358      00
 359 068b C5655894 		vaddpd	176(%rsp), %ymm3, %ymm10
 359      24B00000 
 359      00
 360 0694 C5FD29AC 		vmovapd	%ymm5, 1488(%rsp)
 360      24D00500 
 360      00
 361 069d C57D2994 		vmovapd	%ymm10, 176(%rsp)
 361      24B00000 
 361      00
 362 06a6 C5ED595C 		vmulpd	80(%rsp), %ymm2, %ymm3
 362      2450
 363 06ac C4416D59 		vmulpd	%ymm9, %ymm2, %ymm10
 363      D1
 364 06b1 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 364      00000000 
 365 06b9 C535590D 		vmulpd	.LC3(%rip), %ymm9, %ymm9
 365      00000000 
 366 06c1 C4C1655C 		vsubpd	%ymm13, %ymm3, %ymm3
 366      DD
 367 06c6 C4416D59 		vmulpd	%ymm13, %ymm2, %ymm13
 367      ED
 368 06cb C5CD5935 		vmulpd	.LC0(%rip), %ymm6, %ymm6
 368      00000000 
 369 06d3 C5FD5884 		vaddpd	1232(%rsp), %ymm0, %ymm0
 369      24D00400 
 369      00
 370 06dc C545595C 		vmulpd	48(%rsp), %ymm7, %ymm11
 370      2430
 371 06e2 C4C1655C 		vsubpd	%ymm10, %ymm3, %ymm3
 371      DA
 372 06e7 C5055954 		vmulpd	16(%rsp), %ymm15, %ymm10
 372      2410
 373 06ed C441155C 		vsubpd	%ymm9, %ymm13, %ymm13
 373      E9
 374 06f2 C5C559D4 		vmulpd	%ymm4, %ymm7, %ymm2
 375 06f6 C5755CCF 		vsubpd	%ymm7, %ymm1, %ymm9
 376 06fa C5FD29B4 		vmovapd	%ymm6, 400(%rsp)
 376      24900100 
 376      00
 377 0703 C5FD299C 		vmovapd	%ymm3, 432(%rsp)
GAS LISTING /tmp/cc3hw7Xk.s 			page 13


 377      24B00100 
 377      00
 378 070c C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 379 0710 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 379      F0
 380 0715 C5FD2984 		vmovapd	%ymm0, 1520(%rsp)
 380      24F00500 
 380      00
 381 071e C57D29AC 		vmovapd	%ymm13, 464(%rsp)
 381      24D00100 
 381      00
 382 0727 C4411558 		vaddpd	%ymm14, %ymm13, %ymm14
 382      F6
 383 072c C5E5589C 		vaddpd	144(%rsp), %ymm3, %ymm3
 383      24900000 
 383      00
 384 0735 C5DD5925 		vmulpd	.LC3(%rip), %ymm4, %ymm4
 384      00000000 
 385 073d C5FD29B4 		vmovapd	%ymm6, 688(%rsp)
 385      24B00200 
 385      00
 386 0746 C5255CD9 		vsubpd	%ymm1, %ymm11, %ymm11
 387 074a C58559C8 		vmulpd	%ymm0, %ymm15, %ymm1
 388 074e C57D29B4 		vmovapd	%ymm14, 752(%rsp)
 388      24F00200 
 388      00
 389 0757 C52D5CD5 		vsubpd	%ymm5, %ymm10, %ymm10
 390 075b C50D5905 		vmulpd	.LC7(%rip), %ymm14, %ymm8
 390      00000000 
 391 0763 C5FD299C 		vmovapd	%ymm3, 720(%rsp)
 391      24D00200 
 391      00
 392 076c C5255CDA 		vsubpd	%ymm2, %ymm11, %ymm11
 393 0770 C5E5591D 		vmulpd	.LC7(%rip), %ymm3, %ymm3
 393      00000000 
 394 0778 C52D5CD1 		vsubpd	%ymm1, %ymm10, %ymm10
 395 077c C5CD590D 		vmulpd	.LC7(%rip), %ymm6, %ymm1
 395      00000000 
 396 0784 C4C1555C 		vsubpd	%ymm15, %ymm5, %ymm2
 396      D7
 397 0789 C5FD5905 		vmulpd	.LC3(%rip), %ymm0, %ymm0
 397      00000000 
 398 0791 C57D299C 		vmovapd	%ymm11, 528(%rsp)
 398      24100200 
 398      00
 399 079a C53D5884 		vaddpd	1040(%rsp), %ymm8, %ymm8
 399      24100400 
 399      00
 400 07a3 C50559FD 		vmulpd	%ymm5, %ymm15, %ymm15
 401 07a7 C57D2994 		vmovapd	%ymm10, 624(%rsp)
 401      24700200 
 401      00
 402 07b0 C5E558AC 		vaddpd	1008(%rsp), %ymm3, %ymm5
 402      24F00300 
 402      00
 403 07b9 C535590D 		vmulpd	.LC0(%rip), %ymm9, %ymm9
 403      00000000 
GAS LISTING /tmp/cc3hw7Xk.s 			page 14


 404 07c1 C5F5588C 		vaddpd	976(%rsp), %ymm1, %ymm1
 404      24D00300 
 404      00
 405 07ca C5ED5915 		vmulpd	.LC0(%rip), %ymm2, %ymm2
 405      00000000 
 406 07d2 C5C55CFC 		vsubpd	%ymm4, %ymm7, %ymm7
 407 07d6 C5855CC0 		vsubpd	%ymm0, %ymm15, %ymm0
 408 07da C5FD29AC 		vmovapd	%ymm5, 1008(%rsp)
 408      24F00300 
 408      00
 409 07e3 C57D298C 		vmovapd	%ymm9, 496(%rsp)
 409      24F00100 
 409      00
 410 07ec C5FD29BC 		vmovapd	%ymm7, 560(%rsp)
 410      24300200 
 410      00
 411 07f5 C5FD2994 		vmovapd	%ymm2, 592(%rsp)
 411      24500200 
 411      00
 412 07fe C5FD2984 		vmovapd	%ymm0, 656(%rsp)
 412      24900200 
 412      00
 413 0807 C5FD298C 		vmovapd	%ymm1, 976(%rsp)
 413      24D00300 
 413      00
 414 0810 C57D2984 		vmovapd	%ymm8, 1040(%rsp)
 414      24100400 
 414      00
 415 0819 C535588C 		vaddpd	336(%rsp), %ymm9, %ymm9
 415      24500100 
 415      00
 416 0822 C525589C 		vaddpd	304(%rsp), %ymm11, %ymm11
 416      24300100 
 416      00
 417 082b C5C558BC 		vaddpd	272(%rsp), %ymm7, %ymm7
 417      24100100 
 417      00
 418 0834 C5ED5894 		vaddpd	240(%rsp), %ymm2, %ymm2
 418      24F00000 
 418      00
 419 083d C5B55925 		vmulpd	.LC7(%rip), %ymm9, %ymm4
 419      00000000 
 420 0845 C57D298C 		vmovapd	%ymm9, 784(%rsp)
 420      24100300 
 420      00
 421 084e C52D5894 		vaddpd	208(%rsp), %ymm10, %ymm10
 421      24D00000 
 421      00
 422 0857 C57D299C 		vmovapd	%ymm11, 816(%rsp)
 422      24300300 
 422      00
 423 0860 C5FD5884 		vaddpd	176(%rsp), %ymm0, %ymm0
 423      24B00000 
 423      00
 424 0869 C5FD29BC 		vmovapd	%ymm7, 848(%rsp)
 424      24500300 
 424      00
GAS LISTING /tmp/cc3hw7Xk.s 			page 15


 425 0872 C525591D 		vmulpd	.LC7(%rip), %ymm11, %ymm11
 425      00000000 
 426 087a C5FD2994 		vmovapd	%ymm2, 880(%rsp)
 426      24700300 
 426      00
 427 0883 C545593D 		vmulpd	.LC7(%rip), %ymm7, %ymm15
 427      00000000 
 428 088b C57D2994 		vmovapd	%ymm10, 912(%rsp)
 428      24900300 
 428      00
 429 0894 C5ED591D 		vmulpd	.LC7(%rip), %ymm2, %ymm3
 429      00000000 
 430 089c C5FD2984 		vmovapd	%ymm0, 944(%rsp)
 430      24B00300 
 430      00
 431 08a5 C52D5915 		vmulpd	.LC7(%rip), %ymm10, %ymm10
 431      00000000 
 432 08ad C5FD5905 		vmulpd	.LC7(%rip), %ymm0, %ymm0
 432      00000000 
 433 08b5 C5DD58A4 		vaddpd	1072(%rsp), %ymm4, %ymm4
 433      24300400 
 433      00
 434 08be C525589C 		vaddpd	1104(%rsp), %ymm11, %ymm11
 434      24500400 
 434      00
 435 08c7 C50558BC 		vaddpd	1136(%rsp), %ymm15, %ymm15
 435      24700400 
 435      00
 436 08d0 C5E5589C 		vaddpd	1168(%rsp), %ymm3, %ymm3
 436      24900400 
 436      00
 437 08d9 C5FD29A4 		vmovapd	%ymm4, 1072(%rsp)
 437      24300400 
 437      00
 438 08e2 C52D58B4 		vaddpd	1200(%rsp), %ymm10, %ymm14
 438      24B00400 
 438      00
 439 08eb C57D299C 		vmovapd	%ymm11, 1104(%rsp)
 439      24500400 
 439      00
 440 08f4 C5FD5884 		vaddpd	1232(%rsp), %ymm0, %ymm0
 440      24D00400 
 440      00
 441 08fd C57D29BC 		vmovapd	%ymm15, 1136(%rsp)
 441      24700400 
 441      00
 442 0906 C5FD299C 		vmovapd	%ymm3, 1168(%rsp)
 442      24900400 
 442      00
 443 090f C57D29B4 		vmovapd	%ymm14, 1200(%rsp)
 443      24B00400 
 443      00
 444 0918 C5FD2984 		vmovapd	%ymm0, 1232(%rsp)
 444      24D00400 
 444      00
 445 0921 0F85F9F7 		jne	.L13
 445      FFFF
GAS LISTING /tmp/cc3hw7Xk.s 			page 16


 446 0927 89D8     		movl	%ebx, %eax
 447 0929 41F7EE   		imull	%r14d
 448 092c 89D8     		movl	%ebx, %eax
 449 092e C1F81F   		sarl	$31, %eax
 450 0931 C1FA0C   		sarl	$12, %edx
 451 0934 29C2     		subl	%eax, %edx
 452 0936 89D8     		movl	%ebx, %eax
 453 0938 69D21027 		imull	$10000, %edx, %edx
 453      0000
 454 093e 29D0     		subl	%edx, %eax
 455 0940 83F801   		cmpl	$1, %eax
 456 0943 0F848700 		je	.L21
 456      0000
 457              	.L14:
 458 0949 83C30C   		addl	$12, %ebx
 459 094c 4983C460 		addq	$96, %r12
 460 0950 81FB809D 		cmpl	$40320, %ebx
 460      0000
 461 0956 0F85EFF6 		jne	.L12
 461      FFFF
 462 095c C5F877   		vzeroupper
 463 095f E8000000 		call	clock
 463      00
 464 0964 BE000000 		movl	$.LC12, %esi
 464      00
 465 0969 4889C3   		movq	%rax, %rbx
 466 096c BF000000 		movl	$_ZSt4cout, %edi
 466      00
 467 0971 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 467      00
 468 0976 4889D9   		movq	%rbx, %rcx
 469 0979 482B4C24 		subq	8(%rsp), %rcx
 469      08
 470 097e 4889C7   		movq	%rax, %rdi
 471 0981 48BECFF7 		movabsq	$2361183241434822607, %rsi
 471      53E3A59B 
 471      C420
 472 098b 4889C8   		movq	%rcx, %rax
 473 098e 48C1F93F 		sarq	$63, %rcx
 474 0992 48F7EE   		imulq	%rsi
 475 0995 4889D6   		movq	%rdx, %rsi
 476 0998 48C1FE07 		sarq	$7, %rsi
 477 099c 4829CE   		subq	%rcx, %rsi
 478 099f E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 478      00
 479 09a4 BE000000 		movl	$.LC13, %esi
 479      00
 480 09a9 4889C7   		movq	%rax, %rdi
 481 09ac E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 481      00
 482 09b1 4889C7   		movq	%rax, %rdi
 483 09b4 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 483      00
 484 09b9 488D65D8 		leaq	-40(%rbp), %rsp
 485 09bd 31C0     		xorl	%eax, %eax
 486 09bf 5B       		popq	%rbx
 487 09c0 415C     		popq	%r12
GAS LISTING /tmp/cc3hw7Xk.s 			page 17


 488 09c2 415D     		popq	%r13
 489 09c4 415E     		popq	%r14
 490 09c6 415F     		popq	%r15
 491 09c8 5D       		popq	%rbp
 492              		.cfi_remember_state
 493              		.cfi_def_cfa 7, 8
 494 09c9 C3       		ret
 495 09ca 660F1F44 		.p2align 4,,10
 495      0000
 496              		.p2align 3
 497              	.L21:
 498              		.cfi_restore_state
 499 09d0 C5FD2874 		vmovapd	80(%rsp), %ymm6
 499      2450
 500 09d6 BA050000 		movl	$5, %edx
 500      00
 501 09db BE000000 		movl	$.LC8, %esi
 501      00
 502 09e0 BF000000 		movl	$_ZSt4cout, %edi
 502      00
 503 09e5 C57D29A4 		vmovapd	%ymm12, 208(%rsp)
 503      24D00000 
 503      00
 504 09ee C5FD11B4 		vmovupd	%ymm6, 368(%rsp)
 504      24700100 
 504      00
 505 09f7 C5FB1094 		vmovsd	368(%rsp), %xmm2
 505      24700100 
 505      00
 506 0a00 C57D1184 		vmovupd	%ymm8, 368(%rsp)
 506      24700100 
 506      00
 507 0a09 C5FB1194 		vmovsd	%xmm2, 240(%rsp)
 507      24F00000 
 507      00
 508 0a12 C5FB109C 		vmovsd	368(%rsp), %xmm3
 508      24700100 
 508      00
 509 0a1b C5FD11AC 		vmovupd	%ymm5, 368(%rsp)
 509      24700100 
 509      00
 510 0a24 C5FB119C 		vmovsd	%xmm3, 272(%rsp)
 510      24100100 
 510      00
 511 0a2d C5FB10A4 		vmovsd	368(%rsp), %xmm4
 511      24700100 
 511      00
 512 0a36 C5FD118C 		vmovupd	%ymm1, 368(%rsp)
 512      24700100 
 512      00
 513 0a3f C5FB11A4 		vmovsd	%xmm4, 304(%rsp)
 513      24300100 
 513      00
 514 0a48 C5FB1084 		vmovsd	368(%rsp), %xmm0
 514      24700100 
 514      00
 515 0a51 C5FB1184 		vmovsd	%xmm0, 336(%rsp)
GAS LISTING /tmp/cc3hw7Xk.s 			page 18


 515      24500100 
 515      00
 516 0a5a C5F877   		vzeroupper
 517 0a5d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 517      00
 518 0a62 C5FB1084 		vmovsd	336(%rsp), %xmm0
 518      24500100 
 518      00
 519 0a6b BF000000 		movl	$_ZSt4cout, %edi
 519      00
 520 0a70 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 520      00
 521 0a75 BA060000 		movl	$6, %edx
 521      00
 522 0a7a BE000000 		movl	$.LC9, %esi
 522      00
 523 0a7f 4889C7   		movq	%rax, %rdi
 524 0a82 4989C7   		movq	%rax, %r15
 525 0a85 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 525      00
 526 0a8a C5FB10A4 		vmovsd	304(%rsp), %xmm4
 526      24300100 
 526      00
 527 0a93 4C89FF   		movq	%r15, %rdi
 528 0a96 C5F928C4 		vmovapd	%xmm4, %xmm0
 529 0a9a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 529      00
 530 0a9f BA060000 		movl	$6, %edx
 530      00
 531 0aa4 BE000000 		movl	$.LC10, %esi
 531      00
 532 0aa9 4889C7   		movq	%rax, %rdi
 533 0aac 4989C7   		movq	%rax, %r15
 534 0aaf E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 534      00
 535 0ab4 C5FB109C 		vmovsd	272(%rsp), %xmm3
 535      24100100 
 535      00
 536 0abd 4C89FF   		movq	%r15, %rdi
 537 0ac0 C5F928C3 		vmovapd	%xmm3, %xmm0
 538 0ac4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 538      00
 539 0ac9 BA040000 		movl	$4, %edx
 539      00
 540 0ace BE000000 		movl	$.LC11, %esi
 540      00
 541 0ad3 4889C7   		movq	%rax, %rdi
 542 0ad6 4989C7   		movq	%rax, %r15
 543 0ad9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 543      00
 544 0ade C5FB1094 		vmovsd	240(%rsp), %xmm2
 544      24F00000 
 544      00
 545 0ae7 4C89FF   		movq	%r15, %rdi
 546 0aea C5F928C2 		vmovapd	%xmm2, %xmm0
 547 0aee E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 547      00
GAS LISTING /tmp/cc3hw7Xk.s 			page 19


 548 0af3 4989C5   		movq	%rax, %r13
 549 0af6 488B00   		movq	(%rax), %rax
 550 0af9 C57D28A4 		vmovapd	208(%rsp), %ymm12
 550      24D00000 
 550      00
 551 0b02 488B40E8 		movq	-24(%rax), %rax
 552 0b06 4D8BBC05 		movq	240(%r13,%rax), %r15
 552      F0000000 
 553 0b0e 4D85FF   		testq	%r15, %r15
 554 0b11 7466     		je	.L22
 555 0b13 41807F38 		cmpb	$0, 56(%r15)
 555      00
 556 0b18 7432     		je	.L16
 557 0b1a 410FB647 		movzbl	67(%r15), %eax
 557      43
 558              	.L17:
 559 0b1f 0FBEF0   		movsbl	%al, %esi
 560 0b22 4C89EF   		movq	%r13, %rdi
 561 0b25 C57D29A4 		vmovapd	%ymm12, 336(%rsp)
 561      24500100 
 561      00
 562 0b2e C5F877   		vzeroupper
 563 0b31 E8000000 		call	_ZNSo3putEc
 563      00
 564 0b36 4889C7   		movq	%rax, %rdi
 565 0b39 E8000000 		call	_ZNSo5flushEv
 565      00
 566 0b3e C57D28A4 		vmovapd	336(%rsp), %ymm12
 566      24500100 
 566      00
 567 0b47 E9FDFDFF 		jmp	.L14
 567      FF
 568              	.L16:
 569 0b4c 4C89FF   		movq	%r15, %rdi
 570 0b4f C57D29A4 		vmovapd	%ymm12, 336(%rsp)
 570      24500100 
 570      00
 571 0b58 C5F877   		vzeroupper
 572 0b5b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 572      00
 573 0b60 498B07   		movq	(%r15), %rax
 574 0b63 BE0A0000 		movl	$10, %esi
 574      00
 575 0b68 4C89FF   		movq	%r15, %rdi
 576 0b6b FF5030   		call	*48(%rax)
 577 0b6e C57D28A4 		vmovapd	336(%rsp), %ymm12
 577      24500100 
 577      00
 578 0b77 EBA6     		jmp	.L17
 579              	.L22:
 580 0b79 C5F877   		vzeroupper
 581 0b7c E8000000 		call	_ZSt16__throw_bad_castv
 581      00
 582              		.cfi_endproc
 583              	.LFE4383:
 584              		.size	main, .-main
 585 0b81 66666666 		.p2align 4,,15
GAS LISTING /tmp/cc3hw7Xk.s 			page 20


 585      66662E0F 
 585      1F840000 
 585      000000
 586              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 587              	_GLOBAL__sub_I__Z8linspaceddi:
 588              	.LFB4596:
 589              		.cfi_startproc
 590 0b90 4883EC08 		subq	$8, %rsp
 591              		.cfi_def_cfa_offset 16
 592 0b94 BF000000 		movl	$_ZStL8__ioinit, %edi
 592      00
 593 0b99 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 593      00
 594 0b9e BA000000 		movl	$__dso_handle, %edx
 594      00
 595 0ba3 BE000000 		movl	$_ZStL8__ioinit, %esi
 595      00
 596 0ba8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 596      00
 597 0bad 4883C408 		addq	$8, %rsp
 598              		.cfi_def_cfa_offset 8
 599 0bb1 E9000000 		jmp	__cxa_atexit
 599      00
 600              		.cfi_endproc
 601              	.LFE4596:
 602              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 603              		.section	.init_array,"aw"
 604              		.align 8
 605 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 605      00000000 
 606              		.local	_ZStL8__ioinit
 607              		.comm	_ZStL8__ioinit,1,1
 608              		.section	.rodata.cst32,"aM",@progbits,32
 609              		.align 32
 610              	.LC0:
 611 0000 00000000 		.long	0
 612 0004 00002440 		.long	1076101120
 613 0008 00000000 		.long	0
 614 000c 00002440 		.long	1076101120
 615 0010 00000000 		.long	0
 616 0014 00002440 		.long	1076101120
 617 0018 00000000 		.long	0
 618 001c 00002440 		.long	1076101120
 619              		.section	.rodata.cst8,"aM",@progbits,8
 620              		.align 8
 621              	.LC1:
 622 0000 00000000 		.long	0
 623 0004 00003540 		.long	1077215232
 624              		.section	.rodata.cst32
 625              		.align 32
 626              	.LC3:
 627 0020 55555555 		.long	1431655765
 628 0024 55550540 		.long	1074091349
 629 0028 55555555 		.long	1431655765
 630 002c 55550540 		.long	1074091349
 631 0030 55555555 		.long	1431655765
 632 0034 55550540 		.long	1074091349
GAS LISTING /tmp/cc3hw7Xk.s 			page 21


 633 0038 55555555 		.long	1431655765
 634 003c 55550540 		.long	1074091349
 635              		.align 32
 636              	.LC4:
 637 0040 7B14AE47 		.long	1202590843
 638 0044 E17A743F 		.long	1064598241
 639 0048 7B14AE47 		.long	1202590843
 640 004c E17A743F 		.long	1064598241
 641 0050 7B14AE47 		.long	1202590843
 642 0054 E17A743F 		.long	1064598241
 643 0058 7B14AE47 		.long	1202590843
 644 005c E17A743F 		.long	1064598241
 645              		.align 32
 646              	.LC5:
 647 0060 00000000 		.long	0
 648 0064 00000040 		.long	1073741824
 649 0068 00000000 		.long	0
 650 006c 00000040 		.long	1073741824
 651 0070 00000000 		.long	0
 652 0074 00000040 		.long	1073741824
 653 0078 00000000 		.long	0
 654 007c 00000040 		.long	1073741824
 655              		.align 32
 656              	.LC6:
 657 0080 7B14AE47 		.long	1202590843
 658 0084 E17A843F 		.long	1065646817
 659 0088 7B14AE47 		.long	1202590843
 660 008c E17A843F 		.long	1065646817
 661 0090 7B14AE47 		.long	1202590843
 662 0094 E17A843F 		.long	1065646817
 663 0098 7B14AE47 		.long	1202590843
 664 009c E17A843F 		.long	1065646817
 665              		.align 32
 666              	.LC7:
 667 00a0 4F1BE8B4 		.long	3035110223
 668 00a4 814E5B3F 		.long	1062948481
 669 00a8 4F1BE8B4 		.long	3035110223
 670 00ac 814E5B3F 		.long	1062948481
 671 00b0 4F1BE8B4 		.long	3035110223
 672 00b4 814E5B3F 		.long	1062948481
 673 00b8 4F1BE8B4 		.long	3035110223
 674 00bc 814E5B3F 		.long	1062948481
 675              		.hidden	__dso_handle
 676              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 677              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc3hw7Xk.s 			page 22


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/cc3hw7Xk.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cc3hw7Xk.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc3hw7Xk.s:85     .text.startup:0000000000000000 main
     /tmp/cc3hw7Xk.s:587    .text.startup:0000000000000b90 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc3hw7Xk.s:621    .rodata.cst8:0000000000000000 .LC1
     /tmp/cc3hw7Xk.s:646    .rodata.cst32:0000000000000060 .LC5
     /tmp/cc3hw7Xk.s:610    .rodata.cst32:0000000000000000 .LC0
     /tmp/cc3hw7Xk.s:626    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc3hw7Xk.s:636    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc3hw7Xk.s:656    .rodata.cst32:0000000000000080 .LC6
     /tmp/cc3hw7Xk.s:666    .rodata.cst32:00000000000000a0 .LC7

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
