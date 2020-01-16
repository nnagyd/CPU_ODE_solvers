GAS LISTING /tmp/ccIui4bX.s 			page 1


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
GAS LISTING /tmp/ccIui4bX.s 			page 2


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
  69              	.LC6:
  70 0000 70203D20 		.string	"p = "
  70      00
  71              	.LC7:
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
  95 0012 4883E4E0 		andq	$-32, %rsp
  96 0016 4881EC70 		subq	$1392, %rsp
  96      050000
GAS LISTING /tmp/ccIui4bX.s 			page 3


  97              		.cfi_offset 15, -24
  98              		.cfi_offset 14, -32
  99              		.cfi_offset 13, -40
 100              		.cfi_offset 12, -48
 101              		.cfi_offset 3, -56
 102 001d C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 102      00000000 
 103 0025 4C8DB424 		leaq	528(%rsp), %r14
 103      10020000 
 104 002d 4C8DAC24 		leaq	816(%rsp), %r13
 104      30030000 
 105 0035 C5FB1005 		vmovsd	.LC1(%rip), %xmm0
 105      00000000 
 106 003d E8000000 		call	_Z8linspaceddi
 106      00
 107 0042 4889C3   		movq	%rax, %rbx
 108 0045 E8000000 		call	clock
 108      00
 109 004a 48890424 		movq	%rax, (%rsp)
 110 004e 488D8424 		leaq	1104(%rsp), %rax
 110      50040000 
 111 0056 C5FD2815 		vmovapd	.LC2(%rip), %ymm2
 111      00000000 
 112 005e C5FD280D 		vmovapd	.LC3(%rip), %ymm1
 112      00000000 
 113 0066 4989DC   		movq	%rbx, %r12
 114 0069 31DB     		xorl	%ebx, %ebx
 115 006b C5FD282D 		vmovapd	.LC4(%rip), %ymm5
 115      00000000 
 116 0073 48894424 		movq	%rax, 8(%rsp)
 116      08
 117 0078 C5FD2825 		vmovapd	.LC5(%rip), %ymm4
 117      00000000 
 118 0080 C5FD2835 		vmovapd	.LC8(%rip), %ymm6
 118      00000000 
 119              	.L12:
 120 0088 C4C17D10 		vmovupd	(%r12), %ymm0
 120      0424
 121 008e BE102700 		movl	$10000, %esi
 121      00
 122 0093 C5FD29B4 		vmovapd	%ymm6, 816(%rsp)
 122      24300300 
 122      00
 123 009c C5FD2984 		vmovapd	%ymm0, 1104(%rsp)
 123      24500400 
 123      00
 124 00a5 C4C17D10 		vmovupd	32(%r12), %ymm0
 124      442420
 125 00ac C5FD29B4 		vmovapd	%ymm6, 848(%rsp)
 125      24500300 
 125      00
 126 00b5 C5FD2984 		vmovapd	%ymm0, 1136(%rsp)
 126      24700400 
 126      00
 127 00be C4C17D10 		vmovupd	64(%r12), %ymm0
 127      442440
 128 00c5 C5FD29B4 		vmovapd	%ymm6, 880(%rsp)
GAS LISTING /tmp/ccIui4bX.s 			page 4


 128      24700300 
 128      00
 129 00ce C5FD2984 		vmovapd	%ymm0, 1168(%rsp)
 129      24900400 
 129      00
 130 00d7 C4C17D10 		vmovupd	96(%r12), %ymm0
 130      442460
 131 00de C5FD29B4 		vmovapd	%ymm6, 912(%rsp)
 131      24900300 
 131      00
 132 00e7 C5FD2984 		vmovapd	%ymm0, 1200(%rsp)
 132      24B00400 
 132      00
 133 00f0 C4C17D10 		vmovupd	128(%r12), %ymm0
 133      84248000 
 133      0000
 134 00fa C5FD29B4 		vmovapd	%ymm6, 944(%rsp)
 134      24B00300 
 134      00
 135 0103 C5FD2984 		vmovapd	%ymm0, 1232(%rsp)
 135      24D00400 
 135      00
 136 010c C4C17D10 		vmovupd	160(%r12), %ymm0
 136      8424A000 
 136      0000
 137 0116 C5FD29B4 		vmovapd	%ymm6, 976(%rsp)
 137      24D00300 
 137      00
 138 011f C5FD2984 		vmovapd	%ymm0, 1264(%rsp)
 138      24F00400 
 138      00
 139 0128 C4C17D10 		vmovupd	192(%r12), %ymm0
 139      8424C000 
 139      0000
 140 0132 C5FD29B4 		vmovapd	%ymm6, 1008(%rsp)
 140      24F00300 
 140      00
 141 013b C5FD2984 		vmovapd	%ymm0, 1296(%rsp)
 141      24100500 
 141      00
 142 0144 C4C17D10 		vmovupd	224(%r12), %ymm0
 142      8424E000 
 142      0000
 143 014e C5FD29B4 		vmovapd	%ymm6, 1040(%rsp)
 143      24100400 
 143      00
 144 0157 C5FD2984 		vmovapd	%ymm0, 1328(%rsp)
 144      24300500 
 144      00
 145 0160 C4C17D10 		vmovupd	256(%r12), %ymm0
 145      84240001 
 145      0000
 146 016a C5FD29B4 		vmovapd	%ymm6, 1072(%rsp)
 146      24300400 
 146      00
 147 0173 C5FD2984 		vmovapd	%ymm0, 1360(%rsp)
 147      24500500 
GAS LISTING /tmp/ccIui4bX.s 			page 5


 147      00
 148 017c 0F1F4000 		.p2align 4,,10
 149              		.p2align 3
 150              	.L28:
 151 0180 4C89F0   		movq	%r14, %rax
 152              		.p2align 4,,10
 153 0183 0F1F4400 		.p2align 3
 153      00
 154              	.L19:
 155 0188 C5FD2880 		vmovapd	288(%rax), %ymm0
 155      20010000 
 156 0190 4883C020 		addq	$32, %rax
 157 0194 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 158 0198 C5FD5C80 		vsubpd	544(%rax), %ymm0, %ymm0
 158      20020000 
 159 01a0 C5FD2980 		vmovapd	%ymm0, -320(%rax)
 159      C0FEFFFF 
 160 01a8 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 161 01ac C5FD5880 		vaddpd	256(%rax), %ymm0, %ymm0
 161      00010000 
 162 01b4 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 162      E0
 163 01b9 4C39E8   		cmpq	%r13, %rax
 164 01bc 75CA     		jne	.L19
 165 01be 4C89F2   		movq	%r14, %rdx
 166              		.p2align 4,,10
 167 01c1 0F1F8000 		.p2align 3
 167      000000
 168              	.L15:
 169 01c8 C5FD2802 		vmovapd	(%rdx), %ymm0
 170 01cc 4883C220 		addq	$32, %rdx
 171 01d0 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 172 01d4 C5FD5C82 		vsubpd	544(%rdx), %ymm0, %ymm0
 172      20020000 
 173 01dc C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 174 01e0 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 175 01e4 C5E5589A 		vaddpd	-320(%rdx), %ymm3, %ymm3
 175      C0FEFFFF 
 176 01ec C5FD5882 		vaddpd	256(%rdx), %ymm0, %ymm0
 176      00010000 
 177 01f4 C5FD299A 		vmovapd	%ymm3, -320(%rdx)
 177      C0FEFFFF 
 178 01fc C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 178      E0
 179 0201 4939D5   		cmpq	%rdx, %r13
 180 0204 75C2     		jne	.L15
 181 0206 4C89F2   		movq	%r14, %rdx
 182 0209 0F1F8000 		.p2align 4,,10
 182      000000
 183              		.p2align 3
 184              	.L17:
 185 0210 C5FD2802 		vmovapd	(%rdx), %ymm0
 186 0214 4883C220 		addq	$32, %rdx
 187 0218 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 188 021c C5FD5C82 		vsubpd	544(%rdx), %ymm0, %ymm0
 188      20020000 
 189 0224 C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
GAS LISTING /tmp/ccIui4bX.s 			page 6


 190 0228 C5D559C0 		vmulpd	%ymm0, %ymm5, %ymm0
 191 022c C5E5589A 		vaddpd	-320(%rdx), %ymm3, %ymm3
 191      C0FEFFFF 
 192 0234 C5FD5882 		vaddpd	256(%rdx), %ymm0, %ymm0
 192      00010000 
 193 023c C5FD299A 		vmovapd	%ymm3, -320(%rdx)
 193      C0FEFFFF 
 194 0244 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 194      E0
 195 0249 4939D5   		cmpq	%rdx, %r13
 196 024c 75C2     		jne	.L17
 197 024e C57D28AC 		vmovapd	528(%rsp), %ymm13
 197      24100200 
 197      00
 198 0257 83EE01   		subl	$1, %esi
 199 025a C57D28A4 		vmovapd	560(%rsp), %ymm12
 199      24300200 
 199      00
 200 0263 C57D289C 		vmovapd	592(%rsp), %ymm11
 200      24500200 
 200      00
 201 026c C4411559 		vmulpd	%ymm13, %ymm13, %ymm13
 201      ED
 202 0271 C57D2894 		vmovapd	624(%rsp), %ymm10
 202      24700200 
 202      00
 203 027a C57D288C 		vmovapd	656(%rsp), %ymm9
 203      24900200 
 203      00
 204 0283 C4411D59 		vmulpd	%ymm12, %ymm12, %ymm12
 204      E4
 205 0288 C57D2884 		vmovapd	688(%rsp), %ymm8
 205      24B00200 
 205      00
 206 0291 C5FD28BC 		vmovapd	720(%rsp), %ymm7
 206      24D00200 
 206      00
 207 029a C4412559 		vmulpd	%ymm11, %ymm11, %ymm11
 207      DB
 208 029f C5155CAC 		vsubpd	1104(%rsp), %ymm13, %ymm13
 208      24500400 
 208      00
 209 02a8 C4412D59 		vmulpd	%ymm10, %ymm10, %ymm10
 209      D2
 210 02ad C51D5CA4 		vsubpd	1136(%rsp), %ymm12, %ymm12
 210      24700400 
 210      00
 211 02b6 C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 211      C9
 212 02bb C5255C9C 		vsubpd	1168(%rsp), %ymm11, %ymm11
 212      24900400 
 212      00
 213 02c4 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 213      C0
 214 02c9 C52D5C94 		vsubpd	1200(%rsp), %ymm10, %ymm10
 214      24B00400 
 214      00
GAS LISTING /tmp/ccIui4bX.s 			page 7


 215 02d2 C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 216 02d6 C57D29AC 		vmovapd	%ymm13, 528(%rsp)
 216      24100200 
 216      00
 217 02df C5355C8C 		vsubpd	1232(%rsp), %ymm9, %ymm9
 217      24D00400 
 217      00
 218 02e8 C57D29A4 		vmovapd	%ymm12, 560(%rsp)
 218      24300200 
 218      00
 219 02f1 C53D5C84 		vsubpd	1264(%rsp), %ymm8, %ymm8
 219      24F00400 
 219      00
 220 02fa C57D299C 		vmovapd	%ymm11, 592(%rsp)
 220      24500200 
 220      00
 221 0303 C5C55CBC 		vsubpd	1296(%rsp), %ymm7, %ymm7
 221      24100500 
 221      00
 222 030c C57D2994 		vmovapd	%ymm10, 624(%rsp)
 222      24700200 
 222      00
 223 0315 C51558AC 		vaddpd	240(%rsp), %ymm13, %ymm13
 223      24F00000 
 223      00
 224 031e C57D298C 		vmovapd	%ymm9, 656(%rsp)
 224      24900200 
 224      00
 225 0327 C51D58A4 		vaddpd	272(%rsp), %ymm12, %ymm12
 225      24100100 
 225      00
 226 0330 C57D2984 		vmovapd	%ymm8, 688(%rsp)
 226      24B00200 
 226      00
 227 0339 C525589C 		vaddpd	304(%rsp), %ymm11, %ymm11
 227      24300100 
 227      00
 228 0342 C5FD29BC 		vmovapd	%ymm7, 720(%rsp)
 228      24D00200 
 228      00
 229 034b C52D5894 		vaddpd	336(%rsp), %ymm10, %ymm10
 229      24500100 
 229      00
 230 0354 C57D29AC 		vmovapd	%ymm13, 240(%rsp)
 230      24F00000 
 230      00
 231 035d C51559EC 		vmulpd	%ymm4, %ymm13, %ymm13
 232 0361 C535588C 		vaddpd	368(%rsp), %ymm9, %ymm9
 232      24700100 
 232      00
 233 036a C57D29A4 		vmovapd	%ymm12, 272(%rsp)
 233      24100100 
 233      00
 234 0373 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 235 0377 C53D5884 		vaddpd	400(%rsp), %ymm8, %ymm8
 235      24900100 
 235      00
GAS LISTING /tmp/ccIui4bX.s 			page 8


 236 0380 C57D299C 		vmovapd	%ymm11, 304(%rsp)
 236      24300100 
 236      00
 237 0389 C52559DC 		vmulpd	%ymm4, %ymm11, %ymm11
 238 038d C5C558BC 		vaddpd	432(%rsp), %ymm7, %ymm7
 238      24B00100 
 238      00
 239 0396 C57D2994 		vmovapd	%ymm10, 336(%rsp)
 239      24500100 
 239      00
 240 039f C52D59D4 		vmulpd	%ymm4, %ymm10, %ymm10
 241 03a3 C57D298C 		vmovapd	%ymm9, 368(%rsp)
 241      24700100 
 241      00
 242 03ac C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 243 03b0 C57D2984 		vmovapd	%ymm8, 400(%rsp)
 243      24900100 
 243      00
 244 03b9 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 245 03bd C5FD29BC 		vmovapd	%ymm7, 432(%rsp)
 245      24B00100 
 245      00
 246 03c6 C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 247 03ca C5FD289C 		vmovapd	752(%rsp), %ymm3
 247      24F00200 
 247      00
 248 03d3 C5FD2884 		vmovapd	784(%rsp), %ymm0
 248      24100300 
 248      00
 249 03dc C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 250 03e0 C51558AC 		vaddpd	816(%rsp), %ymm13, %ymm13
 250      24300300 
 250      00
 251 03e9 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 252 03ed C51D58A4 		vaddpd	848(%rsp), %ymm12, %ymm12
 252      24500300 
 252      00
 253 03f6 C5E55C9C 		vsubpd	1328(%rsp), %ymm3, %ymm3
 253      24300500 
 253      00
 254 03ff C5FD5C84 		vsubpd	1360(%rsp), %ymm0, %ymm0
 254      24500500 
 254      00
 255 0408 C57D29AC 		vmovapd	%ymm13, 816(%rsp)
 255      24300300 
 255      00
 256 0411 C525589C 		vaddpd	880(%rsp), %ymm11, %ymm11
 256      24700300 
 256      00
 257 041a C57D29A4 		vmovapd	%ymm12, 848(%rsp)
 257      24500300 
 257      00
 258 0423 C5FD299C 		vmovapd	%ymm3, 752(%rsp)
 258      24F00200 
 258      00
 259 042c C5E5589C 		vaddpd	464(%rsp), %ymm3, %ymm3
 259      24D00100 
GAS LISTING /tmp/ccIui4bX.s 			page 9


 259      00
 260 0435 C5FD2984 		vmovapd	%ymm0, 784(%rsp)
 260      24100300 
 260      00
 261 043e C5FD5884 		vaddpd	496(%rsp), %ymm0, %ymm0
 261      24F00100 
 261      00
 262 0447 C52D5894 		vaddpd	912(%rsp), %ymm10, %ymm10
 262      24900300 
 262      00
 263 0450 C57D299C 		vmovapd	%ymm11, 880(%rsp)
 263      24700300 
 263      00
 264 0459 C5FD299C 		vmovapd	%ymm3, 464(%rsp)
 264      24D00100 
 264      00
 265 0462 C5E559DC 		vmulpd	%ymm4, %ymm3, %ymm3
 266 0466 C535588C 		vaddpd	944(%rsp), %ymm9, %ymm9
 266      24B00300 
 266      00
 267 046f C5FD2984 		vmovapd	%ymm0, 496(%rsp)
 267      24F00100 
 267      00
 268 0478 C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 269 047c C53D5884 		vaddpd	976(%rsp), %ymm8, %ymm8
 269      24D00300 
 269      00
 270 0485 C57D2994 		vmovapd	%ymm10, 912(%rsp)
 270      24900300 
 270      00
 271 048e C5C558BC 		vaddpd	1008(%rsp), %ymm7, %ymm7
 271      24F00300 
 271      00
 272 0497 C5E5589C 		vaddpd	1040(%rsp), %ymm3, %ymm3
 272      24100400 
 272      00
 273 04a0 C57D298C 		vmovapd	%ymm9, 944(%rsp)
 273      24B00300 
 273      00
 274 04a9 C5FD5884 		vaddpd	1072(%rsp), %ymm0, %ymm0
 274      24300400 
 274      00
 275 04b2 C57D2984 		vmovapd	%ymm8, 976(%rsp)
 275      24D00300 
 275      00
 276 04bb C5FD29BC 		vmovapd	%ymm7, 1008(%rsp)
 276      24F00300 
 276      00
 277 04c4 C5FD299C 		vmovapd	%ymm3, 1040(%rsp)
 277      24100400 
 277      00
 278 04cd C5FD2984 		vmovapd	%ymm0, 1072(%rsp)
 278      24300400 
 278      00
 279 04d6 0F85A4FC 		jne	.L28
 279      FFFF
 280 04dc B8AD8BDB 		movl	$1759218605, %eax
GAS LISTING /tmp/ccIui4bX.s 			page 10


 280      68
 281 04e1 F7EB     		imull	%ebx
 282 04e3 89D8     		movl	%ebx, %eax
 283 04e5 C1F81F   		sarl	$31, %eax
 284 04e8 C1FA0B   		sarl	$11, %edx
 285 04eb 29C2     		subl	%eax, %edx
 286 04ed 89D8     		movl	%ebx, %eax
 287 04ef 69D28813 		imull	$5000, %edx, %edx
 287      0000
 288 04f5 29D0     		subl	%edx, %eax
 289 04f7 83F801   		cmpl	$1, %eax
 290 04fa 0F849000 		je	.L20
 290      0000
 291              	.L26:
 292 0500 83C324   		addl	$36, %ebx
 293 0503 4981C420 		addq	$288, %r12
 293      010000
 294 050a 81FBC0C4 		cmpl	$181440, %ebx
 294      0200
 295 0510 0F8572FB 		jne	.L12
 295      FFFF
 296 0516 C5F877   		vzeroupper
 297 0519 E8000000 		call	clock
 297      00
 298 051e BA0C0000 		movl	$12, %edx
 298      00
 299 0523 4889C3   		movq	%rax, %rbx
 300 0526 BE000000 		movl	$.LC9, %esi
 300      00
 301 052b BF000000 		movl	$_ZSt4cout, %edi
 301      00
 302 0530 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 302      00
 303 0535 4889D9   		movq	%rbx, %rcx
 304 0538 482B0C24 		subq	(%rsp), %rcx
 305 053c 48BECFF7 		movabsq	$2361183241434822607, %rsi
 305      53E3A59B 
 305      C420
 306 0546 BF000000 		movl	$_ZSt4cout, %edi
 306      00
 307 054b 4889C8   		movq	%rcx, %rax
 308 054e 48C1F93F 		sarq	$63, %rcx
 309 0552 48F7EE   		imulq	%rsi
 310 0555 4889D6   		movq	%rdx, %rsi
 311 0558 48C1FE07 		sarq	$7, %rsi
 312 055c 4829CE   		subq	%rcx, %rsi
 313 055f E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 313      00
 314 0564 BE000000 		movl	$.LC10, %esi
 314      00
 315 0569 4889C7   		movq	%rax, %rdi
 316 056c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 316      00
 317 0571 4889C7   		movq	%rax, %rdi
 318 0574 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 318      00
 319 0579 488D65D8 		leaq	-40(%rbp), %rsp
GAS LISTING /tmp/ccIui4bX.s 			page 11


 320 057d 31C0     		xorl	%eax, %eax
 321 057f 5B       		popq	%rbx
 322 0580 415C     		popq	%r12
 323 0582 415D     		popq	%r13
 324 0584 415E     		popq	%r14
 325 0586 415F     		popq	%r15
 326 0588 5D       		popq	%rbp
 327              		.cfi_remember_state
 328              		.cfi_def_cfa 7, 8
 329 0589 C3       		ret
 330 058a 660F1F44 		.p2align 4,,10
 330      0000
 331              		.p2align 3
 332              	.L20:
 333              		.cfi_restore_state
 334 0590 4D89EF   		movq	%r13, %r15
 335 0593 EB77     		jmp	.L27
 336              	.L32:
 337 0595 0FB64243 		movzbl	67(%rdx), %eax
 338              	.L25:
 339 0599 0FBEF0   		movsbl	%al, %esi
 340 059c 4C89D7   		movq	%r10, %rdi
 341 059f C5FD2974 		vmovapd	%ymm6, 80(%rsp)
 341      2450
 342 05a5 C5FD2964 		vmovapd	%ymm4, 112(%rsp)
 342      2470
 343 05ab C5FD29AC 		vmovapd	%ymm5, 144(%rsp)
 343      24900000 
 343      00
 344 05b4 C5FD298C 		vmovapd	%ymm1, 176(%rsp)
 344      24B00000 
 344      00
 345 05bd C5FD2994 		vmovapd	%ymm2, 208(%rsp)
 345      24D00000 
 345      00
 346 05c6 C5F877   		vzeroupper
 347 05c9 4983C720 		addq	$32, %r15
 348 05cd E8000000 		call	_ZNSo3putEc
 348      00
 349 05d2 4889C7   		movq	%rax, %rdi
 350 05d5 E8000000 		call	_ZNSo5flushEv
 350      00
 351 05da 4C3B7C24 		cmpq	8(%rsp), %r15
 351      08
 352 05df C5FD2894 		vmovapd	208(%rsp), %ymm2
 352      24D00000 
 352      00
 353 05e8 C5FD288C 		vmovapd	176(%rsp), %ymm1
 353      24B00000 
 353      00
 354 05f1 C5FD28AC 		vmovapd	144(%rsp), %ymm5
 354      24900000 
 354      00
 355 05fa C5FD2864 		vmovapd	112(%rsp), %ymm4
 355      2470
 356 0600 C5FD2874 		vmovapd	80(%rsp), %ymm6
 356      2450
GAS LISTING /tmp/ccIui4bX.s 			page 12


 357 0606 0F84F4FE 		je	.L26
 357      FFFF
 358              	.L27:
 359 060c C4C17B10 		vmovsd	(%r15), %xmm3
 359      1F
 360 0611 BA040000 		movl	$4, %edx
 360      00
 361 0616 BE000000 		movl	$.LC6, %esi
 361      00
 362 061b C4C17B10 		vmovsd	288(%r15), %xmm0
 362      87200100 
 362      00
 363 0624 BF000000 		movl	$_ZSt4cout, %edi
 363      00
 364 0629 C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 364      2410
 365 062f C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 365      2430
 366 0635 C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 366      2450
 367 063b C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 367      2470
 368 0641 C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 368      24900000 
 368      00
 369 064a C5FB119C 		vmovsd	%xmm3, 176(%rsp)
 369      24B00000 
 369      00
 370 0653 C5FB1184 		vmovsd	%xmm0, 208(%rsp)
 370      24D00000 
 370      00
 371 065c C5F877   		vzeroupper
 372 065f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 372      00
 373 0664 C5FB1084 		vmovsd	208(%rsp), %xmm0
 373      24D00000 
 373      00
 374 066d BF000000 		movl	$_ZSt4cout, %edi
 374      00
 375 0672 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 375      00
 376 0677 BA030000 		movl	$3, %edx
 376      00
 377 067c BE000000 		movl	$.LC7, %esi
 377      00
 378 0681 4889C7   		movq	%rax, %rdi
 379 0684 48898424 		movq	%rax, 208(%rsp)
 379      D0000000 
 380 068c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 380      00
 381 0691 4C8B9424 		movq	208(%rsp), %r10
 381      D0000000 
 382 0699 C5FB109C 		vmovsd	176(%rsp), %xmm3
 382      24B00000 
 382      00
 383 06a2 C5F928C3 		vmovapd	%xmm3, %xmm0
 384 06a6 4C89D7   		movq	%r10, %rdi
GAS LISTING /tmp/ccIui4bX.s 			page 13


 385 06a9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 385      00
 386 06ae 4989C2   		movq	%rax, %r10
 387 06b1 488B00   		movq	(%rax), %rax
 388 06b4 C5FD2894 		vmovapd	144(%rsp), %ymm2
 388      24900000 
 388      00
 389 06bd C5FD284C 		vmovapd	112(%rsp), %ymm1
 389      2470
 390 06c3 C5FD286C 		vmovapd	80(%rsp), %ymm5
 390      2450
 391 06c9 488B40E8 		movq	-24(%rax), %rax
 392 06cd C5FD2864 		vmovapd	48(%rsp), %ymm4
 392      2430
 393 06d3 C5FD2874 		vmovapd	16(%rsp), %ymm6
 393      2410
 394 06d9 498B9402 		movq	240(%r10,%rax), %rdx
 394      F0000000 
 395 06e1 4885D2   		testq	%rdx, %rdx
 396 06e4 0F848A00 		je	.L31
 396      0000
 397 06ea 807A3800 		cmpb	$0, 56(%rdx)
 398 06ee 0F85A1FE 		jne	.L32
 398      FFFF
 399 06f4 4889D7   		movq	%rdx, %rdi
 400 06f7 C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 400      2410
 401 06fd 4C899424 		movq	%r10, 176(%rsp)
 401      B0000000 
 402 0705 C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 402      2430
 403 070b 48899424 		movq	%rdx, 208(%rsp)
 403      D0000000 
 404 0713 C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 404      2450
 405 0719 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 405      2470
 406 071f C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 406      24900000 
 406      00
 407 0728 C5F877   		vzeroupper
 408 072b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 408      00
 409 0730 488B9424 		movq	208(%rsp), %rdx
 409      D0000000 
 410 0738 BE0A0000 		movl	$10, %esi
 410      00
 411 073d 488B02   		movq	(%rdx), %rax
 412 0740 4889D7   		movq	%rdx, %rdi
 413 0743 FF5030   		call	*48(%rax)
 414 0746 C5FD2874 		vmovapd	16(%rsp), %ymm6
 414      2410
 415 074c 4C8B9424 		movq	176(%rsp), %r10
 415      B0000000 
 416 0754 C5FD2864 		vmovapd	48(%rsp), %ymm4
 416      2430
 417 075a C5FD286C 		vmovapd	80(%rsp), %ymm5
GAS LISTING /tmp/ccIui4bX.s 			page 14


 417      2450
 418 0760 C5FD284C 		vmovapd	112(%rsp), %ymm1
 418      2470
 419 0766 C5FD2894 		vmovapd	144(%rsp), %ymm2
 419      24900000 
 419      00
 420 076f E925FEFF 		jmp	.L25
 420      FF
 421              	.L31:
 422 0774 C5F877   		vzeroupper
 423 0777 E8000000 		call	_ZSt16__throw_bad_castv
 423      00
 424              		.cfi_endproc
 425              	.LFE4383:
 426              		.size	main, .-main
 427 077c 0F1F4000 		.p2align 4,,15
 428              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 429              	_GLOBAL__sub_I__Z8linspaceddi:
 430              	.LFB4595:
 431              		.cfi_startproc
 432 0780 4883EC08 		subq	$8, %rsp
 433              		.cfi_def_cfa_offset 16
 434 0784 BF000000 		movl	$_ZStL8__ioinit, %edi
 434      00
 435 0789 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 435      00
 436 078e BA000000 		movl	$__dso_handle, %edx
 436      00
 437 0793 BE000000 		movl	$_ZStL8__ioinit, %esi
 437      00
 438 0798 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 438      00
 439 079d 4883C408 		addq	$8, %rsp
 440              		.cfi_def_cfa_offset 8
 441 07a1 E9000000 		jmp	__cxa_atexit
 441      00
 442              		.cfi_endproc
 443              	.LFE4595:
 444              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 445              		.section	.init_array,"aw"
 446              		.align 8
 447 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 447      00000000 
 448              		.local	_ZStL8__ioinit
 449              		.comm	_ZStL8__ioinit,1,1
 450              		.section	.rodata.cst8,"aM",@progbits,8
 451              		.align 8
 452              	.LC0:
 453 0000 00000000 		.long	0
 454 0004 0000F03F 		.long	1072693248
 455              		.align 8
 456              	.LC1:
 457 0008 9A999999 		.long	2576980378
 458 000c 9999B93F 		.long	1069128089
 459              		.section	.rodata.cst32,"aM",@progbits,32
 460              		.align 32
 461              	.LC2:
GAS LISTING /tmp/ccIui4bX.s 			page 15


 462 0000 7B14AE47 		.long	1202590843
 463 0004 E17A743F 		.long	1064598241
 464 0008 7B14AE47 		.long	1202590843
 465 000c E17A743F 		.long	1064598241
 466 0010 7B14AE47 		.long	1202590843
 467 0014 E17A743F 		.long	1064598241
 468 0018 7B14AE47 		.long	1202590843
 469 001c E17A743F 		.long	1064598241
 470              		.align 32
 471              	.LC3:
 472 0020 00000000 		.long	0
 473 0024 00000040 		.long	1073741824
 474 0028 00000000 		.long	0
 475 002c 00000040 		.long	1073741824
 476 0030 00000000 		.long	0
 477 0034 00000040 		.long	1073741824
 478 0038 00000000 		.long	0
 479 003c 00000040 		.long	1073741824
 480              		.align 32
 481              	.LC4:
 482 0040 7B14AE47 		.long	1202590843
 483 0044 E17A843F 		.long	1065646817
 484 0048 7B14AE47 		.long	1202590843
 485 004c E17A843F 		.long	1065646817
 486 0050 7B14AE47 		.long	1202590843
 487 0054 E17A843F 		.long	1065646817
 488 0058 7B14AE47 		.long	1202590843
 489 005c E17A843F 		.long	1065646817
 490              		.align 32
 491              	.LC5:
 492 0060 4F1BE8B4 		.long	3035110223
 493 0064 814E5B3F 		.long	1062948481
 494 0068 4F1BE8B4 		.long	3035110223
 495 006c 814E5B3F 		.long	1062948481
 496 0070 4F1BE8B4 		.long	3035110223
 497 0074 814E5B3F 		.long	1062948481
 498 0078 4F1BE8B4 		.long	3035110223
 499 007c 814E5B3F 		.long	1062948481
 500              		.align 32
 501              	.LC8:
 502 0080 00000000 		.long	0
 503 0084 0000E0BF 		.long	-1075838976
 504 0088 00000000 		.long	0
 505 008c 0000E0BF 		.long	-1075838976
 506 0090 00000000 		.long	0
 507 0094 0000E0BF 		.long	-1075838976
 508 0098 00000000 		.long	0
 509 009c 0000E0BF 		.long	-1075838976
 510              		.hidden	__dso_handle
 511              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 512              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccIui4bX.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/ccIui4bX.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccIui4bX.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccIui4bX.s:81     .text.startup:0000000000000000 main
     /tmp/ccIui4bX.s:429    .text.startup:0000000000000780 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccIui4bX.s:452    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccIui4bX.s:456    .rodata.cst8:0000000000000008 .LC1
     /tmp/ccIui4bX.s:461    .rodata.cst32:0000000000000000 .LC2
     /tmp/ccIui4bX.s:471    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccIui4bX.s:481    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccIui4bX.s:491    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccIui4bX.s:501    .rodata.cst32:0000000000000080 .LC8

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
