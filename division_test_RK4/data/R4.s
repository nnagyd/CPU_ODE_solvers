GAS LISTING /tmp/ccABiaut.s 			page 1


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
GAS LISTING /tmp/ccABiaut.s 			page 2


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
GAS LISTING /tmp/ccABiaut.s 			page 3


  99 001b 53       		pushq	%rbx
 100 001c 4883E4E0 		andq	$-32, %rsp
 101 0020 4881ECB0 		subq	$688, %rsp
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
 109 0040 488D8424 		leaq	304(%rsp), %rax
 109      30010000 
 110 0048 C5FD2835 		vmovapd	.LC3(%rip), %ymm6
 110      00000000 
 111 0050 C5FD282D 		vmovapd	.LC4(%rip), %ymm5
 111      00000000 
 112 0058 4989DE   		movq	%rbx, %r14
 113 005b 31DB     		xorl	%ebx, %ebx
 114 005d C5FD2825 		vmovapd	.LC0(%rip), %ymm4
 114      00000000 
 115 0065 48894424 		movq	%rax, 8(%rsp)
 115      08
 116              	.L12:
 117 006a C4C17D10 		vmovupd	(%r14), %ymm3
 117      1E
 118 006f C5FD28D4 		vmovapd	%ymm4, %ymm2
 119 0073 C5FD28CC 		vmovapd	%ymm4, %ymm1
 120 0077 C5FD29A4 		vmovapd	%ymm4, 432(%rsp)
 120      24B00100 
 120      00
 121 0080 C5FD28C4 		vmovapd	%ymm4, %ymm0
 122 0084 BA102700 		movl	$10000, %edx
 122      00
 123 0089 C5FD299C 		vmovapd	%ymm3, 144(%rsp)
 123      24900000 
 123      00
 124 0092 C5FD299C 		vmovapd	%ymm3, 560(%rsp)
 124      24300200 
 124      00
 125 009b C4C17D10 		vmovupd	32(%r14), %ymm3
 125      5E20
 126 00a1 C5FD295C 		vmovapd	%ymm3, 112(%rsp)
 126      2470
 127 00a7 C5FD299C 		vmovapd	%ymm3, 592(%rsp)
 127      24500200 
 127      00
 128 00b0 C4C17D10 		vmovupd	64(%r14), %ymm3
 128      5E40
 129 00b6 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 129      2450
 130 00bc C5FD299C 		vmovapd	%ymm3, 624(%rsp)
 130      24700200 
 130      00
GAS LISTING /tmp/ccABiaut.s 			page 4


 131 00c5 C4C17D10 		vmovupd	96(%r14), %ymm3
 131      5E60
 132 00cb C5FD295C 		vmovapd	%ymm3, 48(%rsp)
 132      2430
 133 00d1 C5FD299C 		vmovapd	%ymm3, 656(%rsp)
 133      24900200 
 133      00
 134 00da C5FD28DC 		vmovapd	%ymm4, %ymm3
 135 00de 6690     		.p2align 4,,10
 136              		.p2align 3
 137              	.L22:
 138 00e0 C54D5EF3 		vdivpd	%ymm3, %ymm6, %ymm14
 139 00e4 83EA01   		subl	$1, %edx
 140 00e7 C5E559BC 		vmulpd	144(%rsp), %ymm3, %ymm7
 140      24900000 
 140      00
 141 00f0 C575594C 		vmulpd	80(%rsp), %ymm1, %ymm9
 141      2450
 142 00f6 C54D5EE1 		vdivpd	%ymm1, %ymm6, %ymm12
 143 00fa C50D5CF7 		vsubpd	%ymm7, %ymm14, %ymm14
 144 00fe C4415559 		vmulpd	%ymm14, %ymm5, %ymm8
 144      C6
 145 0103 C5FD597C 		vmulpd	112(%rsp), %ymm0, %ymm7
 145      2470
 146 0109 C53D5884 		vaddpd	432(%rsp), %ymm8, %ymm8
 146      24B00100 
 146      00
 147 0112 C54D5EFA 		vdivpd	%ymm2, %ymm6, %ymm15
 148 0116 C4411D5C 		vsubpd	%ymm9, %ymm12, %ymm12
 148      E1
 149 011b C56D594C 		vmulpd	48(%rsp), %ymm2, %ymm9
 149      2430
 150 0121 C4415559 		vmulpd	%ymm12, %ymm5, %ymm11
 150      DC
 151 0126 C54D5EE8 		vdivpd	%ymm0, %ymm6, %ymm13
 152 012a C441055C 		vsubpd	%ymm9, %ymm15, %ymm15
 152      F9
 153 012f C4417558 		vaddpd	%ymm11, %ymm1, %ymm11
 153      DB
 154 0134 C53D598C 		vmulpd	144(%rsp), %ymm8, %ymm9
 154      24900000 
 154      00
 155 013d C4415559 		vmulpd	%ymm15, %ymm5, %ymm10
 155      D7
 156 0142 C4414D5E 		vdivpd	%ymm8, %ymm6, %ymm8
 156      C0
 157 0147 C5155CEF 		vsubpd	%ymm7, %ymm13, %ymm13
 158 014b C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 158      D2
 159 0150 C4C15559 		vmulpd	%ymm13, %ymm5, %ymm7
 159      FD
 160 0155 C5FD58FF 		vaddpd	%ymm7, %ymm0, %ymm7
 161 0159 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm9
 161      C9
 162 015e C4415D59 		vmulpd	%ymm9, %ymm4, %ymm8
 162      C1
 163 0163 C4415559 		vmulpd	%ymm9, %ymm5, %ymm9
GAS LISTING /tmp/ccABiaut.s 			page 5


 163      C9
 164 0168 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm14
 164      F6
 165 016d C5455944 		vmulpd	112(%rsp), %ymm7, %ymm8
 165      2470
 166 0173 C4416558 		vaddpd	%ymm9, %ymm3, %ymm9
 166      C9
 167 0178 C5CD5EFF 		vdivpd	%ymm7, %ymm6, %ymm7
 168 017c C441455C 		vsubpd	%ymm8, %ymm7, %ymm8
 168      C0
 169 0181 C4C15D59 		vmulpd	%ymm8, %ymm4, %ymm7
 169      F8
 170 0186 C4415559 		vmulpd	%ymm8, %ymm5, %ymm8
 170      C0
 171 018b C4414558 		vaddpd	%ymm13, %ymm7, %ymm13
 171      ED
 172 0190 C5A5597C 		vmulpd	80(%rsp), %ymm11, %ymm7
 172      2450
 173 0196 C4417D58 		vaddpd	%ymm8, %ymm0, %ymm8
 173      C0
 174 019b C4414D5E 		vdivpd	%ymm11, %ymm6, %ymm11
 174      DB
 175 01a0 C5A55CFF 		vsubpd	%ymm7, %ymm11, %ymm7
 176 01a4 C55D59DF 		vmulpd	%ymm7, %ymm4, %ymm11
 177 01a8 C5D559FF 		vmulpd	%ymm7, %ymm5, %ymm7
 178 01ac C4412558 		vaddpd	%ymm12, %ymm11, %ymm12
 178      E4
 179 01b1 C52D595C 		vmulpd	48(%rsp), %ymm10, %ymm11
 179      2430
 180 01b7 C5F558FF 		vaddpd	%ymm7, %ymm1, %ymm7
 181 01bb C4414D5E 		vdivpd	%ymm10, %ymm6, %ymm10
 181      D2
 182 01c0 C4412D5C 		vsubpd	%ymm11, %ymm10, %ymm11
 182      DB
 183 01c5 C4415D59 		vmulpd	%ymm11, %ymm4, %ymm10
 183      D3
 184 01ca C4415559 		vmulpd	%ymm11, %ymm5, %ymm11
 184      DB
 185 01cf C4412D58 		vaddpd	%ymm15, %ymm10, %ymm15
 185      FF
 186 01d4 C5355994 		vmulpd	144(%rsp), %ymm9, %ymm10
 186      24900000 
 186      00
 187 01dd C4416D58 		vaddpd	%ymm11, %ymm2, %ymm11
 187      DB
 188 01e2 C4414D5E 		vdivpd	%ymm9, %ymm6, %ymm9
 188      C9
 189 01e7 C441355C 		vsubpd	%ymm10, %ymm9, %ymm10
 189      D2
 190 01ec C4415D59 		vmulpd	%ymm10, %ymm4, %ymm9
 190      CA
 191 01f1 C52D5915 		vmulpd	.LC5(%rip), %ymm10, %ymm10
 191      00000000 
 192 01f9 C4410D58 		vaddpd	%ymm9, %ymm14, %ymm14
 192      F1
 193 01fe C53D594C 		vmulpd	112(%rsp), %ymm8, %ymm9
 193      2470
GAS LISTING /tmp/ccABiaut.s 			page 6


 194 0204 C4416558 		vaddpd	%ymm10, %ymm3, %ymm10
 194      D2
 195 0209 C4414D5E 		vdivpd	%ymm8, %ymm6, %ymm8
 195      C0
 196 020e C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm9
 196      C9
 197 0213 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm8
 197      C1
 198 0218 C535590D 		vmulpd	.LC5(%rip), %ymm9, %ymm9
 198      00000000 
 199 0220 C4411558 		vaddpd	%ymm8, %ymm13, %ymm13
 199      E8
 200 0225 C5455944 		vmulpd	80(%rsp), %ymm7, %ymm8
 200      2450
 201 022b C4417D58 		vaddpd	%ymm9, %ymm0, %ymm9
 201      C9
 202 0230 C5CD5EFF 		vdivpd	%ymm7, %ymm6, %ymm7
 203 0234 C441455C 		vsubpd	%ymm8, %ymm7, %ymm8
 203      C0
 204 0239 C4C15D59 		vmulpd	%ymm8, %ymm4, %ymm7
 204      F8
 205 023e C53D5905 		vmulpd	.LC5(%rip), %ymm8, %ymm8
 205      00000000 
 206 0246 C51D58E7 		vaddpd	%ymm7, %ymm12, %ymm12
 207 024a C5A5597C 		vmulpd	48(%rsp), %ymm11, %ymm7
 207      2430
 208 0250 C4417558 		vaddpd	%ymm8, %ymm1, %ymm8
 208      C0
 209 0255 C4414D5E 		vdivpd	%ymm11, %ymm6, %ymm11
 209      DB
 210 025a C5A55CFF 		vsubpd	%ymm7, %ymm11, %ymm7
 211 025e C55D59DF 		vmulpd	%ymm7, %ymm4, %ymm11
 212 0262 C5C5593D 		vmulpd	.LC5(%rip), %ymm7, %ymm7
 212      00000000 
 213 026a C4410558 		vaddpd	%ymm11, %ymm15, %ymm15
 213      FB
 214 026f C52D599C 		vmulpd	144(%rsp), %ymm10, %ymm11
 214      24900000 
 214      00
 215 0278 C5ED58FF 		vaddpd	%ymm7, %ymm2, %ymm7
 216 027c C4414D5E 		vdivpd	%ymm10, %ymm6, %ymm10
 216      D2
 217 0281 C4412D5C 		vsubpd	%ymm11, %ymm10, %ymm10
 217      D3
 218 0286 C4410D58 		vaddpd	%ymm10, %ymm14, %ymm14
 218      F2
 219 028b C57D2994 		vmovapd	%ymm10, 304(%rsp)
 219      24300100 
 219      00
 220 0294 C5355954 		vmulpd	112(%rsp), %ymm9, %ymm10
 220      2470
 221 029a C57D29B4 		vmovapd	%ymm14, 176(%rsp)
 221      24B00000 
 221      00
 222 02a3 C50D5935 		vmulpd	.LC6(%rip), %ymm14, %ymm14
 222      00000000 
 223 02ab C4414D5E 		vdivpd	%ymm9, %ymm6, %ymm9
GAS LISTING /tmp/ccABiaut.s 			page 7


 223      C9
 224 02b0 C4C16558 		vaddpd	%ymm14, %ymm3, %ymm3
 224      DE
 225 02b5 C5FD299C 		vmovapd	%ymm3, 432(%rsp)
 225      24B00100 
 225      00
 226 02be C441355C 		vsubpd	%ymm10, %ymm9, %ymm9
 226      CA
 227 02c3 C4411558 		vaddpd	%ymm9, %ymm13, %ymm13
 227      E9
 228 02c8 C57D298C 		vmovapd	%ymm9, 336(%rsp)
 228      24500100 
 228      00
 229 02d1 C53D594C 		vmulpd	80(%rsp), %ymm8, %ymm9
 229      2450
 230 02d7 C57D29AC 		vmovapd	%ymm13, 208(%rsp)
 230      24D00000 
 230      00
 231 02e0 C515592D 		vmulpd	.LC6(%rip), %ymm13, %ymm13
 231      00000000 
 232 02e8 C4414D5E 		vdivpd	%ymm8, %ymm6, %ymm8
 232      C0
 233 02ed C4C17D58 		vaddpd	%ymm13, %ymm0, %ymm0
 233      C5
 234 02f2 C5FD2984 		vmovapd	%ymm0, 464(%rsp)
 234      24D00100 
 234      00
 235 02fb C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 235      C1
 236 0300 C4411D58 		vaddpd	%ymm8, %ymm12, %ymm12
 236      E0
 237 0305 C57D2984 		vmovapd	%ymm8, 368(%rsp)
 237      24700100 
 237      00
 238 030e C5455944 		vmulpd	48(%rsp), %ymm7, %ymm8
 238      2430
 239 0314 C57D29A4 		vmovapd	%ymm12, 240(%rsp)
 239      24F00000 
 239      00
 240 031d C51D5925 		vmulpd	.LC6(%rip), %ymm12, %ymm12
 240      00000000 
 241 0325 C5CD5EFF 		vdivpd	%ymm7, %ymm6, %ymm7
 242 0329 C4C17558 		vaddpd	%ymm12, %ymm1, %ymm1
 242      CC
 243 032e C4C1455C 		vsubpd	%ymm8, %ymm7, %ymm7
 243      F8
 244 0333 C50558FF 		vaddpd	%ymm7, %ymm15, %ymm15
 245 0337 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 245      24900100 
 245      00
 246 0340 C57D29BC 		vmovapd	%ymm15, 272(%rsp)
 246      24100100 
 246      00
 247 0349 C5FD298C 		vmovapd	%ymm1, 496(%rsp)
 247      24F00100 
 247      00
 248 0352 C505593D 		vmulpd	.LC6(%rip), %ymm15, %ymm15
GAS LISTING /tmp/ccABiaut.s 			page 8


 248      00000000 
 249 035a C4C16D58 		vaddpd	%ymm15, %ymm2, %ymm2
 249      D7
 250 035f C5FD2994 		vmovapd	%ymm2, 528(%rsp)
 250      24100200 
 250      00
 251 0368 0F8572FD 		jne	.L22
 251      FFFF
 252 036e 89D8     		movl	%ebx, %eax
 253 0370 41F7ED   		imull	%r13d
 254 0373 89D8     		movl	%ebx, %eax
 255 0375 C1F81F   		sarl	$31, %eax
 256 0378 C1FA05   		sarl	$5, %edx
 257 037b 29C2     		subl	%eax, %edx
 258 037d B8640000 		movl	$100, %eax
 258      00
 259 0382 0FAFD0   		imull	%eax, %edx
 260 0385 89D8     		movl	%ebx, %eax
 261 0387 29D0     		subl	%edx, %eax
 262 0389 83F801   		cmpl	$1, %eax
 263 038c 0F848E00 		je	.L14
 263      0000
 264              	.L20:
 265 0392 83C310   		addl	$16, %ebx
 266 0395 4983EE80 		subq	$-128, %r14
 267 0399 81FBE046 		cmpl	$18144, %ebx
 267      0000
 268 039f 0F85C5FC 		jne	.L12
 268      FFFF
 269 03a5 C5F877   		vzeroupper
 270 03a8 E8000000 		call	clock
 270      00
 271 03ad BA0C0000 		movl	$12, %edx
 271      00
 272 03b2 4889C3   		movq	%rax, %rbx
 273 03b5 BE000000 		movl	$.LC9, %esi
 273      00
 274 03ba BF000000 		movl	$_ZSt4cout, %edi
 274      00
 275 03bf E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 275      00
 276 03c4 4889D9   		movq	%rbx, %rcx
 277 03c7 482B0C24 		subq	(%rsp), %rcx
 278 03cb 48BECFF7 		movabsq	$2361183241434822607, %rsi
 278      53E3A59B 
 278      C420
 279 03d5 BF000000 		movl	$_ZSt4cout, %edi
 279      00
 280 03da 4889C8   		movq	%rcx, %rax
 281 03dd 48C1F93F 		sarq	$63, %rcx
 282 03e1 48F7EE   		imulq	%rsi
 283 03e4 4889D6   		movq	%rdx, %rsi
 284 03e7 48C1FE07 		sarq	$7, %rsi
 285 03eb 4829CE   		subq	%rcx, %rsi
 286 03ee E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 286      00
 287 03f3 BE000000 		movl	$.LC10, %esi
GAS LISTING /tmp/ccABiaut.s 			page 9


 287      00
 288 03f8 4889C7   		movq	%rax, %rdi
 289 03fb E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 289      00
 290 0400 4889C7   		movq	%rax, %rdi
 291 0403 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 291      00
 292 0408 488D65D8 		leaq	-40(%rbp), %rsp
 293 040c 31C0     		xorl	%eax, %eax
 294 040e 5B       		popq	%rbx
 295 040f 415C     		popq	%r12
 296 0411 415D     		popq	%r13
 297 0413 415E     		popq	%r14
 298 0415 415F     		popq	%r15
 299 0417 5D       		popq	%rbp
 300              		.cfi_remember_state
 301              		.cfi_def_cfa 7, 8
 302 0418 C3       		ret
 303 0419 0F1F8000 		.p2align 4,,10
 303      000000
 304              		.p2align 3
 305              	.L14:
 306              		.cfi_restore_state
 307 0420 4C8DBC24 		leaq	176(%rsp), %r15
 307      B0000000 
 308              	.L21:
 309 0428 C4C17B10 		vmovsd	256(%r15), %xmm1
 309      8F000100 
 309      00
 310 0431 BA040000 		movl	$4, %edx
 310      00
 311 0436 BE000000 		movl	$.LC7, %esi
 311      00
 312 043b C4C17B10 		vmovsd	384(%r15), %xmm0
 312      87800100 
 312      00
 313 0444 BF000000 		movl	$_ZSt4cout, %edi
 313      00
 314 0449 C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 314      2410
 315 044f C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 315      2430
 316 0455 C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 316      2450
 317 045b C5FB114C 		vmovsd	%xmm1, 112(%rsp)
 317      2470
 318 0461 C5FB1184 		vmovsd	%xmm0, 144(%rsp)
 318      24900000 
 318      00
 319 046a C5F877   		vzeroupper
 320 046d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 320      00
 321 0472 C5FB1084 		vmovsd	144(%rsp), %xmm0
 321      24900000 
 321      00
 322 047b BF000000 		movl	$_ZSt4cout, %edi
 322      00
GAS LISTING /tmp/ccABiaut.s 			page 10


 323 0480 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 323      00
 324 0485 BA030000 		movl	$3, %edx
 324      00
 325 048a BE000000 		movl	$.LC8, %esi
 325      00
 326 048f 4889C7   		movq	%rax, %rdi
 327 0492 4989C4   		movq	%rax, %r12
 328 0495 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 328      00
 329 049a C5FB104C 		vmovsd	112(%rsp), %xmm1
 329      2470
 330 04a0 4C89E7   		movq	%r12, %rdi
 331 04a3 C5F928C1 		vmovapd	%xmm1, %xmm0
 332 04a7 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 332      00
 333 04ac 4989C0   		movq	%rax, %r8
 334 04af 488B00   		movq	(%rax), %rax
 335 04b2 C5FD286C 		vmovapd	80(%rsp), %ymm5
 335      2450
 336 04b8 C5FD2864 		vmovapd	48(%rsp), %ymm4
 336      2430
 337 04be C5FD2874 		vmovapd	16(%rsp), %ymm6
 337      2410
 338 04c4 488B40E8 		movq	-24(%rax), %rax
 339 04c8 498B9400 		movq	240(%r8,%rax), %rdx
 339      F0000000 
 340 04d0 4885D2   		testq	%rdx, %rdx
 341 04d3 0F84BA00 		je	.L25
 341      0000
 342 04d9 807A3800 		cmpb	$0, 56(%rdx)
 343 04dd 7458     		je	.L18
 344 04df 0FB64243 		movzbl	67(%rdx), %eax
 345              	.L19:
 346 04e3 0FBEF0   		movsbl	%al, %esi
 347 04e6 4C89C7   		movq	%r8, %rdi
 348 04e9 C5FD2974 		vmovapd	%ymm6, 80(%rsp)
 348      2450
 349 04ef C5FD2964 		vmovapd	%ymm4, 112(%rsp)
 349      2470
 350 04f5 C5FD29AC 		vmovapd	%ymm5, 144(%rsp)
 350      24900000 
 350      00
 351 04fe C5F877   		vzeroupper
 352 0501 4983C720 		addq	$32, %r15
 353 0505 E8000000 		call	_ZNSo3putEc
 353      00
 354 050a 4889C7   		movq	%rax, %rdi
 355 050d E8000000 		call	_ZNSo5flushEv
 355      00
 356 0512 4C3B7C24 		cmpq	8(%rsp), %r15
 356      08
 357 0517 C5FD28AC 		vmovapd	144(%rsp), %ymm5
 357      24900000 
 357      00
 358 0520 C5FD2864 		vmovapd	112(%rsp), %ymm4
 358      2470
GAS LISTING /tmp/ccABiaut.s 			page 11


 359 0526 C5FD2874 		vmovapd	80(%rsp), %ymm6
 359      2450
 360 052c 0F85F6FE 		jne	.L21
 360      FFFF
 361 0532 E95BFEFF 		jmp	.L20
 361      FF
 362              	.L18:
 363 0537 4889D7   		movq	%rdx, %rdi
 364 053a C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 364      2410
 365 0540 4C894424 		movq	%r8, 112(%rsp)
 365      70
 366 0545 C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 366      2430
 367 054b 48899424 		movq	%rdx, 144(%rsp)
 367      90000000 
 368 0553 C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 368      2450
 369 0559 C5F877   		vzeroupper
 370 055c E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 370      00
 371 0561 488B9424 		movq	144(%rsp), %rdx
 371      90000000 
 372 0569 BE0A0000 		movl	$10, %esi
 372      00
 373 056e 488B02   		movq	(%rdx), %rax
 374 0571 4889D7   		movq	%rdx, %rdi
 375 0574 FF5030   		call	*48(%rax)
 376 0577 C5FD2874 		vmovapd	16(%rsp), %ymm6
 376      2410
 377 057d 4C8B4424 		movq	112(%rsp), %r8
 377      70
 378 0582 C5FD2864 		vmovapd	48(%rsp), %ymm4
 378      2430
 379 0588 C5FD286C 		vmovapd	80(%rsp), %ymm5
 379      2450
 380 058e E950FFFF 		jmp	.L19
 380      FF
 381              	.L25:
 382 0593 C5F877   		vzeroupper
 383 0596 E8000000 		call	_ZSt16__throw_bad_castv
 383      00
 384              		.cfi_endproc
 385              	.LFE4383:
 386              		.size	main, .-main
 387 059b 0F1F4400 		.p2align 4,,15
 387      00
 388              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 389              	_GLOBAL__sub_I__Z8linspaceddi:
 390              	.LFB4595:
 391              		.cfi_startproc
 392 05a0 4883EC08 		subq	$8, %rsp
 393              		.cfi_def_cfa_offset 16
 394 05a4 BF000000 		movl	$_ZStL8__ioinit, %edi
 394      00
 395 05a9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 395      00
GAS LISTING /tmp/ccABiaut.s 			page 12


 396 05ae BA000000 		movl	$__dso_handle, %edx
 396      00
 397 05b3 BE000000 		movl	$_ZStL8__ioinit, %esi
 397      00
 398 05b8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 398      00
 399 05bd 4883C408 		addq	$8, %rsp
 400              		.cfi_def_cfa_offset 8
 401 05c1 E9000000 		jmp	__cxa_atexit
 401      00
 402              		.cfi_endproc
 403              	.LFE4595:
 404              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 405              		.section	.init_array,"aw"
 406              		.align 8
 407 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 407      00000000 
 408              		.local	_ZStL8__ioinit
 409              		.comm	_ZStL8__ioinit,1,1
 410              		.section	.rodata.cst32,"aM",@progbits,32
 411              		.align 32
 412              	.LC0:
 413 0000 00000000 		.long	0
 414 0004 00000040 		.long	1073741824
 415 0008 00000000 		.long	0
 416 000c 00000040 		.long	1073741824
 417 0010 00000000 		.long	0
 418 0014 00000040 		.long	1073741824
 419 0018 00000000 		.long	0
 420 001c 00000040 		.long	1073741824
 421              		.section	.rodata.cst8,"aM",@progbits,8
 422              		.align 8
 423              	.LC1:
 424 0000 9A999999 		.long	2576980378
 425 0004 9999E93F 		.long	1072273817
 426              		.section	.rodata.cst32
 427              		.align 32
 428              	.LC3:
 429 0020 00000000 		.long	0
 430 0024 0000F03F 		.long	1072693248
 431 0028 00000000 		.long	0
 432 002c 0000F03F 		.long	1072693248
 433 0030 00000000 		.long	0
 434 0034 0000F03F 		.long	1072693248
 435 0038 00000000 		.long	0
 436 003c 0000F03F 		.long	1072693248
 437              		.align 32
 438              	.LC4:
 439 0040 7B14AE47 		.long	1202590843
 440 0044 E17A743F 		.long	1064598241
 441 0048 7B14AE47 		.long	1202590843
 442 004c E17A743F 		.long	1064598241
 443 0050 7B14AE47 		.long	1202590843
 444 0054 E17A743F 		.long	1064598241
 445 0058 7B14AE47 		.long	1202590843
 446 005c E17A743F 		.long	1064598241
 447              		.align 32
GAS LISTING /tmp/ccABiaut.s 			page 13


 448              	.LC5:
 449 0060 7B14AE47 		.long	1202590843
 450 0064 E17A843F 		.long	1065646817
 451 0068 7B14AE47 		.long	1202590843
 452 006c E17A843F 		.long	1065646817
 453 0070 7B14AE47 		.long	1202590843
 454 0074 E17A843F 		.long	1065646817
 455 0078 7B14AE47 		.long	1202590843
 456 007c E17A843F 		.long	1065646817
 457              		.align 32
 458              	.LC6:
 459 0080 4F1BE8B4 		.long	3035110223
 460 0084 814E5B3F 		.long	1062948481
 461 0088 4F1BE8B4 		.long	3035110223
 462 008c 814E5B3F 		.long	1062948481
 463 0090 4F1BE8B4 		.long	3035110223
 464 0094 814E5B3F 		.long	1062948481
 465 0098 4F1BE8B4 		.long	3035110223
 466 009c 814E5B3F 		.long	1062948481
 467              		.hidden	__dso_handle
 468              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 469              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccABiaut.s 			page 14


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccABiaut.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccABiaut.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccABiaut.s:81     .text.startup:0000000000000000 main
     /tmp/ccABiaut.s:389    .text.startup:00000000000005a0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccABiaut.s:423    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccABiaut.s:428    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccABiaut.s:438    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccABiaut.s:412    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccABiaut.s:448    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccABiaut.s:458    .rodata.cst32:0000000000000080 .LC6

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
