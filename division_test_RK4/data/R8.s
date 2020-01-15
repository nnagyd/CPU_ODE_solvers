GAS LISTING /tmp/ccCKuxp1.s 			page 1


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
GAS LISTING /tmp/ccCKuxp1.s 			page 2


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
  96 0016 4883E4E0 		andq	$-32, %rsp
  97 001a 4881ECF0 		subq	$1264, %rsp
  97      040000
  98              		.cfi_offset 15, -24
GAS LISTING /tmp/ccCKuxp1.s 			page 3


  99              		.cfi_offset 14, -32
 100              		.cfi_offset 13, -40
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0021 C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 103      00000000 
 104 0029 4C8DAC24 		leaq	496(%rsp), %r13
 104      F0010000 
 105 0031 4C8DB424 		leaq	752(%rsp), %r14
 105      F0020000 
 106 0039 E8000000 		call	_Z8linspaceddi
 106      00
 107 003e 4889C3   		movq	%rax, %rbx
 108 0041 E8000000 		call	clock
 108      00
 109 0046 48890424 		movq	%rax, (%rsp)
 110 004a 488D8424 		leaq	1008(%rsp), %rax
 110      F0030000 
 111 0052 C5FD280D 		vmovapd	.LC2(%rip), %ymm1
 111      00000000 
 112 005a C5FD2825 		vmovapd	.LC3(%rip), %ymm4
 112      00000000 
 113 0062 4989DC   		movq	%rbx, %r12
 114 0065 31DB     		xorl	%ebx, %ebx
 115 0067 C5FD281D 		vmovapd	.LC4(%rip), %ymm3
 115      00000000 
 116 006f 48894424 		movq	%rax, 8(%rsp)
 116      08
 117 0074 C5FD2835 		vmovapd	.LC5(%rip), %ymm6
 117      00000000 
 118 007c C5FD282D 		vmovapd	.LC6(%rip), %ymm5
 118      00000000 
 119              	.L12:
 120 0084 C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 121 0088 C4C17D10 		vmovupd	(%r12), %ymm0
 121      0424
 122 008e B8102700 		movl	$10000, %eax
 122      00
 123 0093 C5FD299C 		vmovapd	%ymm3, 752(%rsp)
 123      24F00200 
 123      00
 124 009c C5FD2984 		vmovapd	%ymm0, 1008(%rsp)
 124      24F00300 
 124      00
 125 00a5 C5FD29BC 		vmovapd	%ymm7, 240(%rsp)
 125      24F00000 
 125      00
 126 00ae C4C17D10 		vmovupd	32(%r12), %ymm0
 126      442420
 127 00b5 C5FD299C 		vmovapd	%ymm3, 784(%rsp)
 127      24100300 
 127      00
 128 00be C5FD2984 		vmovapd	%ymm0, 1040(%rsp)
 128      24100400 
 128      00
 129 00c7 C5FD29BC 		vmovapd	%ymm7, 272(%rsp)
 129      24100100 
GAS LISTING /tmp/ccCKuxp1.s 			page 4


 129      00
 130 00d0 C4C17D10 		vmovupd	64(%r12), %ymm0
 130      442440
 131 00d7 C5FD299C 		vmovapd	%ymm3, 816(%rsp)
 131      24300300 
 131      00
 132 00e0 C5FD2984 		vmovapd	%ymm0, 1072(%rsp)
 132      24300400 
 132      00
 133 00e9 C5FD29BC 		vmovapd	%ymm7, 304(%rsp)
 133      24300100 
 133      00
 134 00f2 C4C17D10 		vmovupd	96(%r12), %ymm0
 134      442460
 135 00f9 C5FD299C 		vmovapd	%ymm3, 848(%rsp)
 135      24500300 
 135      00
 136 0102 C5FD2984 		vmovapd	%ymm0, 1104(%rsp)
 136      24500400 
 136      00
 137 010b C5FD29BC 		vmovapd	%ymm7, 336(%rsp)
 137      24500100 
 137      00
 138 0114 C4C17D10 		vmovupd	128(%r12), %ymm0
 138      84248000 
 138      0000
 139 011e C5FD299C 		vmovapd	%ymm3, 880(%rsp)
 139      24700300 
 139      00
 140 0127 C5FD2984 		vmovapd	%ymm0, 1136(%rsp)
 140      24700400 
 140      00
 141 0130 C5FD29BC 		vmovapd	%ymm7, 368(%rsp)
 141      24700100 
 141      00
 142 0139 C4C17D10 		vmovupd	160(%r12), %ymm0
 142      8424A000 
 142      0000
 143 0143 C5FD299C 		vmovapd	%ymm3, 912(%rsp)
 143      24900300 
 143      00
 144 014c C5FD2984 		vmovapd	%ymm0, 1168(%rsp)
 144      24900400 
 144      00
 145 0155 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 145      24900100 
 145      00
 146 015e C4C17D10 		vmovupd	192(%r12), %ymm0
 146      8424C000 
 146      0000
 147 0168 C5FD299C 		vmovapd	%ymm3, 944(%rsp)
 147      24B00300 
 147      00
 148 0171 C5FD2984 		vmovapd	%ymm0, 1200(%rsp)
 148      24B00400 
 148      00
 149 017a C5FD29BC 		vmovapd	%ymm7, 432(%rsp)
GAS LISTING /tmp/ccCKuxp1.s 			page 5


 149      24B00100 
 149      00
 150 0183 C4C17D10 		vmovupd	224(%r12), %ymm0
 150      8424E000 
 150      0000
 151 018d C5FD299C 		vmovapd	%ymm3, 976(%rsp)
 151      24D00300 
 151      00
 152 0196 C5FD2984 		vmovapd	%ymm0, 1232(%rsp)
 152      24D00400 
 152      00
 153 019f C5FD29BC 		vmovapd	%ymm7, 464(%rsp)
 153      24D00100 
 153      00
 154 01a8 0F1F8400 		.p2align 4,,10
 154      00000000 
 155              		.p2align 3
 156              	.L28:
 157 01b0 4C89EA   		movq	%r13, %rdx
 158              		.p2align 4,,10
 159 01b3 0F1F4400 		.p2align 3
 159      00
 160              	.L19:
 161 01b8 C5FD2892 		vmovapd	256(%rdx), %ymm2
 161      00010000 
 162 01c0 4883C220 		addq	$32, %rdx
 163 01c4 C5F55EC2 		vdivpd	%ymm2, %ymm1, %ymm0
 164 01c8 C5ED59BA 		vmulpd	480(%rdx), %ymm2, %ymm7
 164      E0010000 
 165 01d0 C5FD5CC7 		vsubpd	%ymm7, %ymm0, %ymm0
 166 01d4 C5FD2982 		vmovapd	%ymm0, -288(%rdx)
 166      E0FEFFFF 
 167 01dc C5DD59C0 		vmulpd	%ymm0, %ymm4, %ymm0
 168 01e0 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 169 01e4 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 169      E0
 170 01e9 4C39F2   		cmpq	%r14, %rdx
 171 01ec 75CA     		jne	.L19
 172 01ee 4C89EA   		movq	%r13, %rdx
 173              		.p2align 4,,10
 174 01f1 0F1F8000 		.p2align 3
 174      000000
 175              	.L15:
 176 01f8 C5FD2812 		vmovapd	(%rdx), %ymm2
 177 01fc 4883C220 		addq	$32, %rdx
 178 0200 C5F55EC2 		vdivpd	%ymm2, %ymm1, %ymm0
 179 0204 C5ED59BA 		vmulpd	480(%rdx), %ymm2, %ymm7
 179      E0010000 
 180 020c C5FD5CC7 		vsubpd	%ymm7, %ymm0, %ymm0
 181 0210 C5E559D0 		vmulpd	%ymm0, %ymm3, %ymm2
 182 0214 C5DD59C0 		vmulpd	%ymm0, %ymm4, %ymm0
 183 0218 C5ED5892 		vaddpd	-288(%rdx), %ymm2, %ymm2
 183      E0FEFFFF 
 184 0220 C5FD5882 		vaddpd	224(%rdx), %ymm0, %ymm0
 184      E0000000 
 185 0228 C5FD2992 		vmovapd	%ymm2, -288(%rdx)
 185      E0FEFFFF 
GAS LISTING /tmp/ccCKuxp1.s 			page 6


 186 0230 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 186      E0
 187 0235 4939D6   		cmpq	%rdx, %r14
 188 0238 75BE     		jne	.L15
 189 023a 4C89EA   		movq	%r13, %rdx
 190 023d 0F1F00   		.p2align 4,,10
 191              		.p2align 3
 192              	.L17:
 193 0240 C5FD2812 		vmovapd	(%rdx), %ymm2
 194 0244 4883C220 		addq	$32, %rdx
 195 0248 C5F55EC2 		vdivpd	%ymm2, %ymm1, %ymm0
 196 024c C5ED59BA 		vmulpd	480(%rdx), %ymm2, %ymm7
 196      E0010000 
 197 0254 C5FD5CC7 		vsubpd	%ymm7, %ymm0, %ymm0
 198 0258 C5E559D0 		vmulpd	%ymm0, %ymm3, %ymm2
 199 025c C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 200 0260 C5ED5892 		vaddpd	-288(%rdx), %ymm2, %ymm2
 200      E0FEFFFF 
 201 0268 C5FD5882 		vaddpd	224(%rdx), %ymm0, %ymm0
 201      E0000000 
 202 0270 C5FD2992 		vmovapd	%ymm2, -288(%rdx)
 202      E0FEFFFF 
 203 0278 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 203      E0
 204 027d 4939D6   		cmpq	%rdx, %r14
 205 0280 75BE     		jne	.L17
 206 0282 C5FD2884 		vmovapd	496(%rsp), %ymm0
 206      24F00100 
 206      00
 207 028b 83E801   		subl	$1, %eax
 208 028e C5755EE0 		vdivpd	%ymm0, %ymm1, %ymm12
 209 0292 C5FD5994 		vmulpd	1008(%rsp), %ymm0, %ymm2
 209      24F00300 
 209      00
 210 029b C5FD2884 		vmovapd	528(%rsp), %ymm0
 210      24100200 
 210      00
 211 02a4 C5755ED8 		vdivpd	%ymm0, %ymm1, %ymm11
 212 02a8 C51D5CE2 		vsubpd	%ymm2, %ymm12, %ymm12
 213 02ac C57D29A4 		vmovapd	%ymm12, 496(%rsp)
 213      24F00100 
 213      00
 214 02b5 C51D58A4 		vaddpd	240(%rsp), %ymm12, %ymm12
 214      24F00000 
 214      00
 215 02be C57D29A4 		vmovapd	%ymm12, 240(%rsp)
 215      24F00000 
 215      00
 216 02c7 C5FD5994 		vmulpd	1040(%rsp), %ymm0, %ymm2
 216      24100400 
 216      00
 217 02d0 C5FD2884 		vmovapd	560(%rsp), %ymm0
 217      24300200 
 217      00
 218 02d9 C51D59E5 		vmulpd	%ymm5, %ymm12, %ymm12
 219 02dd C5755ED0 		vdivpd	%ymm0, %ymm1, %ymm10
 220 02e1 C5255CDA 		vsubpd	%ymm2, %ymm11, %ymm11
GAS LISTING /tmp/ccCKuxp1.s 			page 7


 221 02e5 C57D299C 		vmovapd	%ymm11, 528(%rsp)
 221      24100200 
 221      00
 222 02ee C525589C 		vaddpd	272(%rsp), %ymm11, %ymm11
 222      24100100 
 222      00
 223 02f7 C57D299C 		vmovapd	%ymm11, 272(%rsp)
 223      24100100 
 223      00
 224 0300 C5FD5994 		vmulpd	1072(%rsp), %ymm0, %ymm2
 224      24300400 
 224      00
 225 0309 C5FD2884 		vmovapd	592(%rsp), %ymm0
 225      24500200 
 225      00
 226 0312 C52559DD 		vmulpd	%ymm5, %ymm11, %ymm11
 227 0316 C5755EC8 		vdivpd	%ymm0, %ymm1, %ymm9
 228 031a C52D5CD2 		vsubpd	%ymm2, %ymm10, %ymm10
 229 031e C57D2994 		vmovapd	%ymm10, 560(%rsp)
 229      24300200 
 229      00
 230 0327 C52D5894 		vaddpd	304(%rsp), %ymm10, %ymm10
 230      24300100 
 230      00
 231 0330 C57D2994 		vmovapd	%ymm10, 304(%rsp)
 231      24300100 
 231      00
 232 0339 C5FD5994 		vmulpd	1104(%rsp), %ymm0, %ymm2
 232      24500400 
 232      00
 233 0342 C5FD2884 		vmovapd	624(%rsp), %ymm0
 233      24700200 
 233      00
 234 034b C52D59D5 		vmulpd	%ymm5, %ymm10, %ymm10
 235 034f C5755EC0 		vdivpd	%ymm0, %ymm1, %ymm8
 236 0353 C5355CCA 		vsubpd	%ymm2, %ymm9, %ymm9
 237 0357 C57D298C 		vmovapd	%ymm9, 592(%rsp)
 237      24500200 
 237      00
 238 0360 C535588C 		vaddpd	336(%rsp), %ymm9, %ymm9
 238      24500100 
 238      00
 239 0369 C57D298C 		vmovapd	%ymm9, 336(%rsp)
 239      24500100 
 239      00
 240 0372 C5FD5994 		vmulpd	1136(%rsp), %ymm0, %ymm2
 240      24700400 
 240      00
 241 037b C5FD2884 		vmovapd	656(%rsp), %ymm0
 241      24900200 
 241      00
 242 0384 C53559CD 		vmulpd	%ymm5, %ymm9, %ymm9
 243 0388 C5F55EF8 		vdivpd	%ymm0, %ymm1, %ymm7
 244 038c C53D5CC2 		vsubpd	%ymm2, %ymm8, %ymm8
 245 0390 C57D2984 		vmovapd	%ymm8, 624(%rsp)
 245      24700200 
 245      00
GAS LISTING /tmp/ccCKuxp1.s 			page 8


 246 0399 C53D5884 		vaddpd	368(%rsp), %ymm8, %ymm8
 246      24700100 
 246      00
 247 03a2 C57D2984 		vmovapd	%ymm8, 368(%rsp)
 247      24700100 
 247      00
 248 03ab C5FD5994 		vmulpd	1168(%rsp), %ymm0, %ymm2
 248      24900400 
 248      00
 249 03b4 C5FD2884 		vmovapd	688(%rsp), %ymm0
 249      24B00200 
 249      00
 250 03bd C53D59C5 		vmulpd	%ymm5, %ymm8, %ymm8
 251 03c1 C57D59AC 		vmulpd	1200(%rsp), %ymm0, %ymm13
 251      24B00400 
 251      00
 252 03ca C5C55CFA 		vsubpd	%ymm2, %ymm7, %ymm7
 253 03ce C5F55ED0 		vdivpd	%ymm0, %ymm1, %ymm2
 254 03d2 C5FD29BC 		vmovapd	%ymm7, 656(%rsp)
 254      24900200 
 254      00
 255 03db C5C558BC 		vaddpd	400(%rsp), %ymm7, %ymm7
 255      24900100 
 255      00
 256 03e4 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 256      24900100 
 256      00
 257 03ed C5C559FD 		vmulpd	%ymm5, %ymm7, %ymm7
 258 03f1 C4C16D5C 		vsubpd	%ymm13, %ymm2, %ymm2
 258      D5
 259 03f6 C5FD2994 		vmovapd	%ymm2, 688(%rsp)
 259      24B00200 
 259      00
 260 03ff C5ED5894 		vaddpd	432(%rsp), %ymm2, %ymm2
 260      24B00100 
 260      00
 261 0408 C5FD2994 		vmovapd	%ymm2, 432(%rsp)
 261      24B00100 
 261      00
 262 0411 C5ED59D5 		vmulpd	%ymm5, %ymm2, %ymm2
 263 0415 C57D28AC 		vmovapd	720(%rsp), %ymm13
 263      24D00200 
 263      00
 264 041e C51559B4 		vmulpd	1232(%rsp), %ymm13, %ymm14
 264      24D00400 
 264      00
 265 0427 C51D58A4 		vaddpd	752(%rsp), %ymm12, %ymm12
 265      24F00200 
 265      00
 266 0430 C525589C 		vaddpd	784(%rsp), %ymm11, %ymm11
 266      24100300 
 266      00
 267 0439 C4C1755E 		vdivpd	%ymm13, %ymm1, %ymm0
 267      C5
 268 043e C52D5894 		vaddpd	816(%rsp), %ymm10, %ymm10
 268      24300300 
 268      00
GAS LISTING /tmp/ccCKuxp1.s 			page 9


 269 0447 C535588C 		vaddpd	848(%rsp), %ymm9, %ymm9
 269      24500300 
 269      00
 270 0450 C57D29A4 		vmovapd	%ymm12, 752(%rsp)
 270      24F00200 
 270      00
 271 0459 C57D299C 		vmovapd	%ymm11, 784(%rsp)
 271      24100300 
 271      00
 272 0462 C53D5884 		vaddpd	880(%rsp), %ymm8, %ymm8
 272      24700300 
 272      00
 273 046b C5C558BC 		vaddpd	912(%rsp), %ymm7, %ymm7
 273      24900300 
 273      00
 274 0474 C57D2994 		vmovapd	%ymm10, 816(%rsp)
 274      24300300 
 274      00
 275 047d C57D298C 		vmovapd	%ymm9, 848(%rsp)
 275      24500300 
 275      00
 276 0486 C5ED5894 		vaddpd	944(%rsp), %ymm2, %ymm2
 276      24B00300 
 276      00
 277 048f C57D2984 		vmovapd	%ymm8, 880(%rsp)
 277      24700300 
 277      00
 278 0498 C5FD29BC 		vmovapd	%ymm7, 912(%rsp)
 278      24900300 
 278      00
 279 04a1 C5FD2994 		vmovapd	%ymm2, 944(%rsp)
 279      24B00300 
 279      00
 280 04aa C4C17D5C 		vsubpd	%ymm14, %ymm0, %ymm0
 280      C6
 281 04af C5FD2984 		vmovapd	%ymm0, 720(%rsp)
 281      24D00200 
 281      00
 282 04b8 C5FD5884 		vaddpd	464(%rsp), %ymm0, %ymm0
 282      24D00100 
 282      00
 283 04c1 C5FD2984 		vmovapd	%ymm0, 464(%rsp)
 283      24D00100 
 283      00
 284 04ca C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 285 04ce C5FD5884 		vaddpd	976(%rsp), %ymm0, %ymm0
 285      24D00300 
 285      00
 286 04d7 C5FD2984 		vmovapd	%ymm0, 976(%rsp)
 286      24D00300 
 286      00
 287 04e0 0F85CAFC 		jne	.L28
 287      FFFF
 288 04e6 89D8     		movl	%ebx, %eax
 289 04e8 BA1F85EB 		movl	$1374389535, %edx
 289      51
 290 04ed F7EA     		imull	%edx
GAS LISTING /tmp/ccCKuxp1.s 			page 10


 291 04ef 89D8     		movl	%ebx, %eax
 292 04f1 C1F81F   		sarl	$31, %eax
 293 04f4 C1FA05   		sarl	$5, %edx
 294 04f7 29C2     		subl	%eax, %edx
 295 04f9 B8640000 		movl	$100, %eax
 295      00
 296 04fe 0FAFD0   		imull	%eax, %edx
 297 0501 89D8     		movl	%ebx, %eax
 298 0503 29D0     		subl	%edx, %eax
 299 0505 83F801   		cmpl	$1, %eax
 300 0508 0F849200 		je	.L20
 300      0000
 301              	.L26:
 302 050e 83C320   		addl	$32, %ebx
 303 0511 4981C400 		addq	$256, %r12
 303      010000
 304 0518 81FBE046 		cmpl	$18144, %ebx
 304      0000
 305 051e 0F8560FB 		jne	.L12
 305      FFFF
 306 0524 C5F877   		vzeroupper
 307 0527 E8000000 		call	clock
 307      00
 308 052c BA0C0000 		movl	$12, %edx
 308      00
 309 0531 4889C3   		movq	%rax, %rbx
 310 0534 BE000000 		movl	$.LC9, %esi
 310      00
 311 0539 BF000000 		movl	$_ZSt4cout, %edi
 311      00
 312 053e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 312      00
 313 0543 4889D9   		movq	%rbx, %rcx
 314 0546 482B0C24 		subq	(%rsp), %rcx
 315 054a 48BECFF7 		movabsq	$2361183241434822607, %rsi
 315      53E3A59B 
 315      C420
 316 0554 BF000000 		movl	$_ZSt4cout, %edi
 316      00
 317 0559 4889C8   		movq	%rcx, %rax
 318 055c 48C1F93F 		sarq	$63, %rcx
 319 0560 48F7EE   		imulq	%rsi
 320 0563 4889D6   		movq	%rdx, %rsi
 321 0566 48C1FE07 		sarq	$7, %rsi
 322 056a 4829CE   		subq	%rcx, %rsi
 323 056d E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 323      00
 324 0572 BE000000 		movl	$.LC10, %esi
 324      00
 325 0577 4889C7   		movq	%rax, %rdi
 326 057a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 326      00
 327 057f 4889C7   		movq	%rax, %rdi
 328 0582 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 328      00
 329 0587 488D65D8 		leaq	-40(%rbp), %rsp
 330 058b 31C0     		xorl	%eax, %eax
GAS LISTING /tmp/ccCKuxp1.s 			page 11


 331 058d 5B       		popq	%rbx
 332 058e 415C     		popq	%r12
 333 0590 415D     		popq	%r13
 334 0592 415E     		popq	%r14
 335 0594 415F     		popq	%r15
 336 0596 5D       		popq	%rbp
 337              		.cfi_remember_state
 338              		.cfi_def_cfa 7, 8
 339 0597 C3       		ret
 340 0598 0F1F8400 		.p2align 4,,10
 340      00000000 
 341              		.p2align 3
 342              	.L20:
 343              		.cfi_restore_state
 344 05a0 4D89F7   		movq	%r14, %r15
 345 05a3 EB77     		jmp	.L27
 346              	.L32:
 347 05a5 0FB64243 		movzbl	67(%rdx), %eax
 348              	.L25:
 349 05a9 0FBEF0   		movsbl	%al, %esi
 350 05ac 4C89CF   		movq	%r9, %rdi
 351 05af C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 351      2450
 352 05b5 C5FD2974 		vmovapd	%ymm6, 112(%rsp)
 352      2470
 353 05bb C5FD299C 		vmovapd	%ymm3, 144(%rsp)
 353      24900000 
 353      00
 354 05c4 C5FD29A4 		vmovapd	%ymm4, 176(%rsp)
 354      24B00000 
 354      00
 355 05cd C5FD298C 		vmovapd	%ymm1, 208(%rsp)
 355      24D00000 
 355      00
 356 05d6 C5F877   		vzeroupper
 357 05d9 4983C720 		addq	$32, %r15
 358 05dd E8000000 		call	_ZNSo3putEc
 358      00
 359 05e2 4889C7   		movq	%rax, %rdi
 360 05e5 E8000000 		call	_ZNSo5flushEv
 360      00
 361 05ea 4C3B7C24 		cmpq	8(%rsp), %r15
 361      08
 362 05ef C5FD288C 		vmovapd	208(%rsp), %ymm1
 362      24D00000 
 362      00
 363 05f8 C5FD28A4 		vmovapd	176(%rsp), %ymm4
 363      24B00000 
 363      00
 364 0601 C5FD289C 		vmovapd	144(%rsp), %ymm3
 364      24900000 
 364      00
 365 060a C5FD2874 		vmovapd	112(%rsp), %ymm6
 365      2470
 366 0610 C5FD286C 		vmovapd	80(%rsp), %ymm5
 366      2450
 367 0616 0F84F2FE 		je	.L26
GAS LISTING /tmp/ccCKuxp1.s 			page 12


 367      FFFF
 368              	.L27:
 369 061c C4C17B10 		vmovsd	(%r15), %xmm2
 369      17
 370 0621 BA040000 		movl	$4, %edx
 370      00
 371 0626 BE000000 		movl	$.LC7, %esi
 371      00
 372 062b C4C17B10 		vmovsd	256(%r15), %xmm0
 372      87000100 
 372      00
 373 0634 BF000000 		movl	$_ZSt4cout, %edi
 373      00
 374 0639 C5FD296C 		vmovapd	%ymm5, 16(%rsp)
 374      2410
 375 063f C5FD2974 		vmovapd	%ymm6, 48(%rsp)
 375      2430
 376 0645 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 376      2450
 377 064b C5FD2964 		vmovapd	%ymm4, 112(%rsp)
 377      2470
 378 0651 C5FD298C 		vmovapd	%ymm1, 144(%rsp)
 378      24900000 
 378      00
 379 065a C5FB1194 		vmovsd	%xmm2, 176(%rsp)
 379      24B00000 
 379      00
 380 0663 C5FB1184 		vmovsd	%xmm0, 208(%rsp)
 380      24D00000 
 380      00
 381 066c C5F877   		vzeroupper
 382 066f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 382      00
 383 0674 C5FB1084 		vmovsd	208(%rsp), %xmm0
 383      24D00000 
 383      00
 384 067d BF000000 		movl	$_ZSt4cout, %edi
 384      00
 385 0682 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 385      00
 386 0687 BA030000 		movl	$3, %edx
 386      00
 387 068c BE000000 		movl	$.LC8, %esi
 387      00
 388 0691 4889C7   		movq	%rax, %rdi
 389 0694 48898424 		movq	%rax, 208(%rsp)
 389      D0000000 
 390 069c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 390      00
 391 06a1 4C8B8C24 		movq	208(%rsp), %r9
 391      D0000000 
 392 06a9 C5FB1094 		vmovsd	176(%rsp), %xmm2
 392      24B00000 
 392      00
 393 06b2 C5F928C2 		vmovapd	%xmm2, %xmm0
 394 06b6 4C89CF   		movq	%r9, %rdi
 395 06b9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/ccCKuxp1.s 			page 13


 395      00
 396 06be 4989C1   		movq	%rax, %r9
 397 06c1 488B00   		movq	(%rax), %rax
 398 06c4 C5FD288C 		vmovapd	144(%rsp), %ymm1
 398      24900000 
 398      00
 399 06cd C5FD2864 		vmovapd	112(%rsp), %ymm4
 399      2470
 400 06d3 C5FD285C 		vmovapd	80(%rsp), %ymm3
 400      2450
 401 06d9 488B40E8 		movq	-24(%rax), %rax
 402 06dd C5FD2874 		vmovapd	48(%rsp), %ymm6
 402      2430
 403 06e3 C5FD286C 		vmovapd	16(%rsp), %ymm5
 403      2410
 404 06e9 498B9401 		movq	240(%r9,%rax), %rdx
 404      F0000000 
 405 06f1 4885D2   		testq	%rdx, %rdx
 406 06f4 0F848A00 		je	.L31
 406      0000
 407 06fa 807A3800 		cmpb	$0, 56(%rdx)
 408 06fe 0F85A1FE 		jne	.L32
 408      FFFF
 409 0704 4889D7   		movq	%rdx, %rdi
 410 0707 C5FD296C 		vmovapd	%ymm5, 16(%rsp)
 410      2410
 411 070d 4C898C24 		movq	%r9, 176(%rsp)
 411      B0000000 
 412 0715 C5FD2974 		vmovapd	%ymm6, 48(%rsp)
 412      2430
 413 071b 48899424 		movq	%rdx, 208(%rsp)
 413      D0000000 
 414 0723 C5FD295C 		vmovapd	%ymm3, 80(%rsp)
 414      2450
 415 0729 C5FD2964 		vmovapd	%ymm4, 112(%rsp)
 415      2470
 416 072f C5FD298C 		vmovapd	%ymm1, 144(%rsp)
 416      24900000 
 416      00
 417 0738 C5F877   		vzeroupper
 418 073b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 418      00
 419 0740 488B9424 		movq	208(%rsp), %rdx
 419      D0000000 
 420 0748 BE0A0000 		movl	$10, %esi
 420      00
 421 074d 488B02   		movq	(%rdx), %rax
 422 0750 4889D7   		movq	%rdx, %rdi
 423 0753 FF5030   		call	*48(%rax)
 424 0756 C5FD286C 		vmovapd	16(%rsp), %ymm5
 424      2410
 425 075c 4C8B8C24 		movq	176(%rsp), %r9
 425      B0000000 
 426 0764 C5FD2874 		vmovapd	48(%rsp), %ymm6
 426      2430
 427 076a C5FD285C 		vmovapd	80(%rsp), %ymm3
 427      2450
GAS LISTING /tmp/ccCKuxp1.s 			page 14


 428 0770 C5FD2864 		vmovapd	112(%rsp), %ymm4
 428      2470
 429 0776 C5FD288C 		vmovapd	144(%rsp), %ymm1
 429      24900000 
 429      00
 430 077f E925FEFF 		jmp	.L25
 430      FF
 431              	.L31:
 432 0784 C5F877   		vzeroupper
 433 0787 E8000000 		call	_ZSt16__throw_bad_castv
 433      00
 434              		.cfi_endproc
 435              	.LFE4383:
 436              		.size	main, .-main
 437 078c 0F1F4000 		.p2align 4,,15
 438              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 439              	_GLOBAL__sub_I__Z8linspaceddi:
 440              	.LFB4595:
 441              		.cfi_startproc
 442 0790 4883EC08 		subq	$8, %rsp
 443              		.cfi_def_cfa_offset 16
 444 0794 BF000000 		movl	$_ZStL8__ioinit, %edi
 444      00
 445 0799 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 445      00
 446 079e BA000000 		movl	$__dso_handle, %edx
 446      00
 447 07a3 BE000000 		movl	$_ZStL8__ioinit, %esi
 447      00
 448 07a8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 448      00
 449 07ad 4883C408 		addq	$8, %rsp
 450              		.cfi_def_cfa_offset 8
 451 07b1 E9000000 		jmp	__cxa_atexit
 451      00
 452              		.cfi_endproc
 453              	.LFE4595:
 454              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 455              		.section	.init_array,"aw"
 456              		.align 8
 457 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 457      00000000 
 458              		.local	_ZStL8__ioinit
 459              		.comm	_ZStL8__ioinit,1,1
 460              		.section	.rodata.cst8,"aM",@progbits,8
 461              		.align 8
 462              	.LC0:
 463 0000 9A999999 		.long	2576980378
 464 0004 9999E93F 		.long	1072273817
 465              		.section	.rodata.cst32,"aM",@progbits,32
 466              		.align 32
 467              	.LC2:
 468 0000 00000000 		.long	0
 469 0004 0000F03F 		.long	1072693248
 470 0008 00000000 		.long	0
 471 000c 0000F03F 		.long	1072693248
 472 0010 00000000 		.long	0
GAS LISTING /tmp/ccCKuxp1.s 			page 15


 473 0014 0000F03F 		.long	1072693248
 474 0018 00000000 		.long	0
 475 001c 0000F03F 		.long	1072693248
 476              		.align 32
 477              	.LC3:
 478 0020 7B14AE47 		.long	1202590843
 479 0024 E17A743F 		.long	1064598241
 480 0028 7B14AE47 		.long	1202590843
 481 002c E17A743F 		.long	1064598241
 482 0030 7B14AE47 		.long	1202590843
 483 0034 E17A743F 		.long	1064598241
 484 0038 7B14AE47 		.long	1202590843
 485 003c E17A743F 		.long	1064598241
 486              		.align 32
 487              	.LC4:
 488 0040 00000000 		.long	0
 489 0044 00000040 		.long	1073741824
 490 0048 00000000 		.long	0
 491 004c 00000040 		.long	1073741824
 492 0050 00000000 		.long	0
 493 0054 00000040 		.long	1073741824
 494 0058 00000000 		.long	0
 495 005c 00000040 		.long	1073741824
 496              		.align 32
 497              	.LC5:
 498 0060 7B14AE47 		.long	1202590843
 499 0064 E17A843F 		.long	1065646817
 500 0068 7B14AE47 		.long	1202590843
 501 006c E17A843F 		.long	1065646817
 502 0070 7B14AE47 		.long	1202590843
 503 0074 E17A843F 		.long	1065646817
 504 0078 7B14AE47 		.long	1202590843
 505 007c E17A843F 		.long	1065646817
 506              		.align 32
 507              	.LC6:
 508 0080 4F1BE8B4 		.long	3035110223
 509 0084 814E5B3F 		.long	1062948481
 510 0088 4F1BE8B4 		.long	3035110223
 511 008c 814E5B3F 		.long	1062948481
 512 0090 4F1BE8B4 		.long	3035110223
 513 0094 814E5B3F 		.long	1062948481
 514 0098 4F1BE8B4 		.long	3035110223
 515 009c 814E5B3F 		.long	1062948481
 516              		.hidden	__dso_handle
 517              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 518              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccCKuxp1.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccCKuxp1.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccCKuxp1.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccCKuxp1.s:81     .text.startup:0000000000000000 main
     /tmp/ccCKuxp1.s:439    .text.startup:0000000000000790 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccCKuxp1.s:462    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccCKuxp1.s:467    .rodata.cst32:0000000000000000 .LC2
     /tmp/ccCKuxp1.s:477    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccCKuxp1.s:487    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccCKuxp1.s:497    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccCKuxp1.s:507    .rodata.cst32:0000000000000080 .LC6

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSo3putEc
_ZNSo5flushEv
_ZNSo9_M_insertIdEERSoT_
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
