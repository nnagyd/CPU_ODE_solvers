GAS LISTING /tmp/ccnjYhOJ.s 			page 1


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
GAS LISTING /tmp/ccnjYhOJ.s 			page 2


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
  95 0012 4883E4E0 		andq	$-32, %rsp
  96 0016 4881EC90 		subq	$1168, %rsp
  96      040000
GAS LISTING /tmp/ccnjYhOJ.s 			page 3


  97              		.cfi_offset 15, -24
  98              		.cfi_offset 14, -32
  99              		.cfi_offset 13, -40
 100              		.cfi_offset 12, -48
 101              		.cfi_offset 3, -56
 102 001d C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 102      00000000 
 103 0025 4C8DB424 		leaq	400(%rsp), %r14
 103      90010000 
 104 002d 4C8DAC24 		leaq	656(%rsp), %r13
 104      90020000 
 105 0035 C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 105      00000000 
 106 003d E8000000 		call	_Z8linspaceddi
 106      00
 107 0042 4889C3   		movq	%rax, %rbx
 108 0045 E8000000 		call	clock
 108      00
 109 004a 48890424 		movq	%rax, (%rsp)
 110 004e 488D8424 		leaq	912(%rsp), %rax
 110      90030000 
 111 0056 C57D281D 		vmovapd	.LC3(%rip), %ymm11
 111      00000000 
 112 005e C57D2805 		vmovapd	.LC4(%rip), %ymm8
 112      00000000 
 113 0066 4989DC   		movq	%rbx, %r12
 114 0069 31DB     		xorl	%ebx, %ebx
 115 006b 48894424 		movq	%rax, 8(%rsp)
 115      08
 116              	.L12:
 117 0070 C4417D10 		vmovupd	(%r12), %ymm15
 117      3C24
 118 0076 B8102700 		movl	$10000, %eax
 118      00
 119 007b C5FD281D 		vmovapd	.LC1(%rip), %ymm3
 119      00000000 
 120 0083 C57D29BC 		vmovapd	%ymm15, 912(%rsp)
 120      24900300 
 120      00
 121 008c C5FD299C 		vmovapd	%ymm3, 656(%rsp)
 121      24900200 
 121      00
 122 0095 C5FD28F3 		vmovapd	%ymm3, %ymm6
 123 0099 C5FD28D3 		vmovapd	%ymm3, %ymm2
 124 009d C5FD28E3 		vmovapd	%ymm3, %ymm4
 125 00a1 C5FD28EB 		vmovapd	%ymm3, %ymm5
 126 00a5 C4417D10 		vmovupd	32(%r12), %ymm14
 126      742420
 127 00ac C5FD28FB 		vmovapd	%ymm3, %ymm7
 128 00b0 C5FD299C 		vmovapd	%ymm3, 688(%rsp)
 128      24B00200 
 128      00
 129 00b9 C57D29B4 		vmovapd	%ymm14, 944(%rsp)
 129      24B00300 
 129      00
 130 00c2 C4417D10 		vmovupd	64(%r12), %ymm13
 130      6C2440
GAS LISTING /tmp/ccnjYhOJ.s 			page 4


 131 00c9 C5FD299C 		vmovapd	%ymm3, 720(%rsp)
 131      24D00200 
 131      00
 132 00d2 C57D29AC 		vmovapd	%ymm13, 976(%rsp)
 132      24D00300 
 132      00
 133 00db C4C17D10 		vmovupd	96(%r12), %ymm0
 133      442460
 134 00e2 C5FD299C 		vmovapd	%ymm3, 752(%rsp)
 134      24F00200 
 134      00
 135 00eb C5FD2984 		vmovapd	%ymm0, 1008(%rsp)
 135      24F00300 
 135      00
 136 00f4 C4C17D10 		vmovupd	128(%r12), %ymm1
 136      8C248000 
 136      0000
 137 00fe C5FD299C 		vmovapd	%ymm3, 784(%rsp)
 137      24100300 
 137      00
 138 0107 C5FD298C 		vmovapd	%ymm1, 1040(%rsp)
 138      24100400 
 138      00
 139 0110 C4417D10 		vmovupd	160(%r12), %ymm9
 139      8C24A000 
 139      0000
 140 011a C5FD299C 		vmovapd	%ymm3, 816(%rsp)
 140      24300300 
 140      00
 141 0123 C57D298C 		vmovapd	%ymm9, 1072(%rsp)
 141      24300400 
 141      00
 142 012c C4417D10 		vmovupd	192(%r12), %ymm10
 142      9424C000 
 142      0000
 143 0136 C5FD299C 		vmovapd	%ymm3, 848(%rsp)
 143      24500300 
 143      00
 144 013f C57D2994 		vmovapd	%ymm10, 1104(%rsp)
 144      24500400 
 144      00
 145 0148 C4417D10 		vmovupd	224(%r12), %ymm12
 145      A424E000 
 145      0000
 146 0152 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 146      2470
 147 0158 C5FD28CB 		vmovapd	%ymm3, %ymm1
 148 015c C5FD2944 		vmovapd	%ymm0, 48(%rsp)
 148      2430
 149 0162 C5FD28C3 		vmovapd	%ymm3, %ymm0
 150 0166 C57D29A4 		vmovapd	%ymm12, 1136(%rsp)
 150      24700400 
 150      00
 151 016f C5FD299C 		vmovapd	%ymm3, 880(%rsp)
 151      24700300 
 151      00
 152 0178 0F1F8400 		.p2align 4,,10
GAS LISTING /tmp/ccnjYhOJ.s 			page 5


 152      00000000 
 153              		.p2align 3
 154              	.L26:
 155 0180 C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 156 0184 4C89F2   		movq	%r14, %rdx
 157 0187 C4C1455C 		vsubpd	%ymm15, %ymm7, %ymm7
 157      FF
 158 018c C5FD29BC 		vmovapd	%ymm7, 144(%rsp)
 158      24900000 
 158      00
 159 0195 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 160 0199 C5C558BC 		vaddpd	656(%rsp), %ymm7, %ymm7
 160      24900200 
 160      00
 161 01a2 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 161      24900100 
 161      00
 162 01ab C5CD59FE 		vmulpd	%ymm6, %ymm6, %ymm7
 163 01af C441455C 		vsubpd	%ymm14, %ymm7, %ymm14
 163      F6
 164 01b4 C57D29B4 		vmovapd	%ymm14, 176(%rsp)
 164      24B00000 
 164      00
 165 01bd C4413D59 		vmulpd	%ymm14, %ymm8, %ymm14
 165      F6
 166 01c2 C4C14D58 		vaddpd	%ymm14, %ymm6, %ymm6
 166      F6
 167 01c7 C5FD29B4 		vmovapd	%ymm6, 432(%rsp)
 167      24B00100 
 167      00
 168 01d0 C5D559F5 		vmulpd	%ymm5, %ymm5, %ymm6
 169 01d4 C4414D5C 		vsubpd	%ymm13, %ymm6, %ymm13
 169      ED
 170 01d9 C57D29AC 		vmovapd	%ymm13, 208(%rsp)
 170      24D00000 
 170      00
 171 01e2 C4413D59 		vmulpd	%ymm13, %ymm8, %ymm13
 171      ED
 172 01e7 C4C15558 		vaddpd	%ymm13, %ymm5, %ymm5
 172      ED
 173 01ec C5FD29AC 		vmovapd	%ymm5, 464(%rsp)
 173      24D00100 
 173      00
 174 01f5 C5DD59EC 		vmulpd	%ymm4, %ymm4, %ymm5
 175 01f9 C5D55C6C 		vsubpd	48(%rsp), %ymm5, %ymm5
 175      2430
 176 01ff C5FD29AC 		vmovapd	%ymm5, 240(%rsp)
 176      24F00000 
 176      00
 177 0208 C5BD59ED 		vmulpd	%ymm5, %ymm8, %ymm5
 178 020c C5DD58E5 		vaddpd	%ymm5, %ymm4, %ymm4
 179 0210 C5FD29A4 		vmovapd	%ymm4, 496(%rsp)
 179      24F00100 
 179      00
 180 0219 C5E559E3 		vmulpd	%ymm3, %ymm3, %ymm4
 181 021d C5DD5C64 		vsubpd	112(%rsp), %ymm4, %ymm4
 181      2470
GAS LISTING /tmp/ccnjYhOJ.s 			page 6


 182 0223 C5FD29A4 		vmovapd	%ymm4, 272(%rsp)
 182      24100100 
 182      00
 183 022c C5BD59E4 		vmulpd	%ymm4, %ymm8, %ymm4
 184 0230 C5E558DC 		vaddpd	%ymm4, %ymm3, %ymm3
 185 0234 C5FD299C 		vmovapd	%ymm3, 528(%rsp)
 185      24100200 
 185      00
 186 023d C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 187 0241 C441655C 		vsubpd	%ymm9, %ymm3, %ymm9
 187      C9
 188 0246 C57D298C 		vmovapd	%ymm9, 304(%rsp)
 188      24300100 
 188      00
 189 024f C4413D59 		vmulpd	%ymm9, %ymm8, %ymm9
 189      C9
 190 0254 C4C16D58 		vaddpd	%ymm9, %ymm2, %ymm2
 190      D1
 191 0259 C5FD2994 		vmovapd	%ymm2, 560(%rsp)
 191      24300200 
 191      00
 192 0262 C5F559D1 		vmulpd	%ymm1, %ymm1, %ymm2
 193 0266 C4416D5C 		vsubpd	%ymm10, %ymm2, %ymm10
 193      D2
 194 026b C57D2994 		vmovapd	%ymm10, 336(%rsp)
 194      24500100 
 194      00
 195 0274 C4413D59 		vmulpd	%ymm10, %ymm8, %ymm10
 195      D2
 196 0279 C4C17558 		vaddpd	%ymm10, %ymm1, %ymm1
 196      CA
 197 027e C5FD298C 		vmovapd	%ymm1, 592(%rsp)
 197      24500200 
 197      00
 198 0287 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 199 028b C441755C 		vsubpd	%ymm12, %ymm1, %ymm12
 199      E4
 200 0290 C57D29A4 		vmovapd	%ymm12, 368(%rsp)
 200      24700100 
 200      00
 201 0299 C4413D59 		vmulpd	%ymm12, %ymm8, %ymm12
 201      E4
 202 029e C4C17D58 		vaddpd	%ymm12, %ymm0, %ymm0
 202      C4
 203 02a3 C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 203      24700200 
 203      00
 204 02ac 0F1F4000 		.p2align 4,,10
 205              		.p2align 3
 206              	.L17:
 207 02b0 C5FD2802 		vmovapd	(%rdx), %ymm0
 208 02b4 4883C220 		addq	$32, %rdx
 209 02b8 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 210 02bc C5FD5C82 		vsubpd	480(%rdx), %ymm0, %ymm0
 210      E0010000 
 211 02c4 C5A559C8 		vmulpd	%ymm0, %ymm11, %ymm1
 212 02c8 C5BD59C0 		vmulpd	%ymm0, %ymm8, %ymm0
GAS LISTING /tmp/ccnjYhOJ.s 			page 7


 213 02cc C5F5588A 		vaddpd	-288(%rdx), %ymm1, %ymm1
 213      E0FEFFFF 
 214 02d4 C5FD5882 		vaddpd	224(%rdx), %ymm0, %ymm0
 214      E0000000 
 215 02dc C5FD298A 		vmovapd	%ymm1, -288(%rdx)
 215      E0FEFFFF 
 216 02e4 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 216      E0
 217 02e9 4C39EA   		cmpq	%r13, %rdx
 218 02ec 75C2     		jne	.L17
 219 02ee 4C89F2   		movq	%r14, %rdx
 220              		.p2align 4,,10
 221 02f1 0F1F8000 		.p2align 3
 221      000000
 222              	.L15:
 223 02f8 C5FD2802 		vmovapd	(%rdx), %ymm0
 224 02fc 4883C220 		addq	$32, %rdx
 225 0300 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 226 0304 C5FD5C82 		vsubpd	480(%rdx), %ymm0, %ymm0
 226      E0010000 
 227 030c C5A559C8 		vmulpd	%ymm0, %ymm11, %ymm1
 228 0310 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 228      00000000 
 229 0318 C5F5588A 		vaddpd	-288(%rdx), %ymm1, %ymm1
 229      E0FEFFFF 
 230 0320 C5FD5882 		vaddpd	224(%rdx), %ymm0, %ymm0
 230      E0000000 
 231 0328 C5FD298A 		vmovapd	%ymm1, -288(%rdx)
 231      E0FEFFFF 
 232 0330 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 232      E0
 233 0335 4939D5   		cmpq	%rdx, %r13
 234 0338 75BE     		jne	.L15
 235 033a C5FD289C 		vmovapd	528(%rsp), %ymm3
 235      24100200 
 235      00
 236 0343 83E801   		subl	$1, %eax
 237 0346 C5FD2894 		vmovapd	1040(%rsp), %ymm2
 237      24100400 
 237      00
 238 034f C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 239 0353 C5FD28BC 		vmovapd	400(%rsp), %ymm7
 239      24900100 
 239      00
 240 035c C5FD28B4 		vmovapd	432(%rsp), %ymm6
 240      24B00100 
 240      00
 241 0365 C5FD28AC 		vmovapd	464(%rsp), %ymm5
 241      24D00100 
 241      00
 242 036e C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 243 0372 C5FD28A4 		vmovapd	496(%rsp), %ymm4
 243      24F00100 
 243      00
 244 037b C5FD2954 		vmovapd	%ymm2, 112(%rsp)
 244      2470
 245 0381 C5CD59F6 		vmulpd	%ymm6, %ymm6, %ymm6
GAS LISTING /tmp/ccnjYhOJ.s 			page 8


 246 0385 C5E55CDA 		vsubpd	%ymm2, %ymm3, %ymm3
 247 0389 C5FD2894 		vmovapd	560(%rsp), %ymm2
 247      24300200 
 247      00
 248 0392 C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 249 0396 C5FD288C 		vmovapd	1072(%rsp), %ymm1
 249      24300400 
 249      00
 250 039f C57D28BC 		vmovapd	912(%rsp), %ymm15
 250      24900300 
 250      00
 251 03a8 C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 252 03ac C57D28B4 		vmovapd	944(%rsp), %ymm14
 252      24B00300 
 252      00
 253 03b5 C57D28AC 		vmovapd	976(%rsp), %ymm13
 253      24D00300 
 253      00
 254 03be C4C1455C 		vsubpd	%ymm15, %ymm7, %ymm7
 254      FF
 255 03c3 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 256 03c7 C57D288C 		vmovapd	1008(%rsp), %ymm9
 256      24F00300 
 256      00
 257 03d0 C4C14D5C 		vsubpd	%ymm14, %ymm6, %ymm6
 257      F6
 258 03d5 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 258      2450
 259 03db C5FD299C 		vmovapd	%ymm3, 528(%rsp)
 259      24100200 
 259      00
 260 03e4 C4C1555C 		vsubpd	%ymm13, %ymm5, %ymm5
 260      ED
 261 03e9 C57D2894 		vmovapd	1104(%rsp), %ymm10
 261      24500400 
 261      00
 262 03f2 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 262      24900100 
 262      00
 263 03fb C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 264 03ff C5FD288C 		vmovapd	592(%rsp), %ymm1
 264      24500200 
 264      00
 265 0408 C5FD29B4 		vmovapd	%ymm6, 432(%rsp)
 265      24B00100 
 265      00
 266 0411 C4C15D5C 		vsubpd	%ymm9, %ymm4, %ymm4
 266      E1
 267 0416 C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 268 041a C5FD29AC 		vmovapd	%ymm5, 464(%rsp)
 268      24D00100 
 268      00
 269 0423 C5C558BC 		vaddpd	144(%rsp), %ymm7, %ymm7
 269      24900000 
 269      00
 270 042c C5FD2994 		vmovapd	%ymm2, 560(%rsp)
 270      24300200 
GAS LISTING /tmp/ccnjYhOJ.s 			page 9


 270      00
 271 0435 C5CD58B4 		vaddpd	176(%rsp), %ymm6, %ymm6
 271      24B00000 
 271      00
 272 043e C5FD29A4 		vmovapd	%ymm4, 496(%rsp)
 272      24F00100 
 272      00
 273 0447 C5D558AC 		vaddpd	208(%rsp), %ymm5, %ymm5
 273      24D00000 
 273      00
 274 0450 C5DD58A4 		vaddpd	240(%rsp), %ymm4, %ymm4
 274      24F00000 
 274      00
 275 0459 C5FD29BC 		vmovapd	%ymm7, 144(%rsp)
 275      24900000 
 275      00
 276 0462 C5E5589C 		vaddpd	272(%rsp), %ymm3, %ymm3
 276      24100100 
 276      00
 277 046b C5FD29B4 		vmovapd	%ymm6, 176(%rsp)
 277      24B00000 
 277      00
 278 0474 C5ED5894 		vaddpd	304(%rsp), %ymm2, %ymm2
 278      24300100 
 278      00
 279 047d C5FD29AC 		vmovapd	%ymm5, 208(%rsp)
 279      24D00000 
 279      00
 280 0486 C4C1755C 		vsubpd	%ymm10, %ymm1, %ymm1
 280      CA
 281 048b C5FD29A4 		vmovapd	%ymm4, 240(%rsp)
 281      24F00000 
 281      00
 282 0494 C5FD299C 		vmovapd	%ymm3, 272(%rsp)
 282      24100100 
 282      00
 283 049d C5FD2994 		vmovapd	%ymm2, 304(%rsp)
 283      24300100 
 283      00
 284 04a6 C5FD298C 		vmovapd	%ymm1, 592(%rsp)
 284      24500200 
 284      00
 285 04af C5F5588C 		vaddpd	336(%rsp), %ymm1, %ymm1
 285      24500100 
 285      00
 286 04b8 C5FD2884 		vmovapd	624(%rsp), %ymm0
 286      24700200 
 286      00
 287 04c1 C57D28A4 		vmovapd	1136(%rsp), %ymm12
 287      24700400 
 287      00
 288 04ca C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 289 04ce C5C5593D 		vmulpd	.LC6(%rip), %ymm7, %ymm7
 289      00000000 
 290 04d6 C5FD298C 		vmovapd	%ymm1, 336(%rsp)
 290      24500100 
 290      00
GAS LISTING /tmp/ccnjYhOJ.s 			page 10


 291 04df C5CD5935 		vmulpd	.LC6(%rip), %ymm6, %ymm6
 291      00000000 
 292 04e7 C4C17D5C 		vsubpd	%ymm12, %ymm0, %ymm0
 292      C4
 293 04ec C5D5592D 		vmulpd	.LC6(%rip), %ymm5, %ymm5
 293      00000000 
 294 04f4 C5DD5925 		vmulpd	.LC6(%rip), %ymm4, %ymm4
 294      00000000 
 295 04fc C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 295      24700200 
 295      00
 296 0505 C5FD5884 		vaddpd	368(%rsp), %ymm0, %ymm0
 296      24700100 
 296      00
 297 050e C5E5591D 		vmulpd	.LC6(%rip), %ymm3, %ymm3
 297      00000000 
 298 0516 C5ED5915 		vmulpd	.LC6(%rip), %ymm2, %ymm2
 298      00000000 
 299 051e C5C558BC 		vaddpd	656(%rsp), %ymm7, %ymm7
 299      24900200 
 299      00
 300 0527 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 300      00000000 
 301 052f C5CD58B4 		vaddpd	688(%rsp), %ymm6, %ymm6
 301      24B00200 
 301      00
 302 0538 C5FD2984 		vmovapd	%ymm0, 368(%rsp)
 302      24700100 
 302      00
 303 0541 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 303      00000000 
 304 0549 C5D558AC 		vaddpd	720(%rsp), %ymm5, %ymm5
 304      24D00200 
 304      00
 305 0552 C5DD58A4 		vaddpd	752(%rsp), %ymm4, %ymm4
 305      24F00200 
 305      00
 306 055b C5FD29BC 		vmovapd	%ymm7, 656(%rsp)
 306      24900200 
 306      00
 307 0564 C5E5589C 		vaddpd	784(%rsp), %ymm3, %ymm3
 307      24100300 
 307      00
 308 056d C5FD29B4 		vmovapd	%ymm6, 688(%rsp)
 308      24B00200 
 308      00
 309 0576 C5ED5894 		vaddpd	816(%rsp), %ymm2, %ymm2
 309      24300300 
 309      00
 310 057f C5FD29AC 		vmovapd	%ymm5, 720(%rsp)
 310      24D00200 
 310      00
 311 0588 C5F5588C 		vaddpd	848(%rsp), %ymm1, %ymm1
 311      24500300 
 311      00
 312 0591 C5FD29A4 		vmovapd	%ymm4, 752(%rsp)
 312      24F00200 
GAS LISTING /tmp/ccnjYhOJ.s 			page 11


 312      00
 313 059a C5FD5884 		vaddpd	880(%rsp), %ymm0, %ymm0
 313      24700300 
 313      00
 314 05a3 C5FD299C 		vmovapd	%ymm3, 784(%rsp)
 314      24100300 
 314      00
 315 05ac C5FD2994 		vmovapd	%ymm2, 816(%rsp)
 315      24300300 
 315      00
 316 05b5 C5FD298C 		vmovapd	%ymm1, 848(%rsp)
 316      24500300 
 316      00
 317 05be C5FD2984 		vmovapd	%ymm0, 880(%rsp)
 317      24700300 
 317      00
 318 05c7 7411     		je	.L16
 319 05c9 C57D294C 		vmovapd	%ymm9, 48(%rsp)
 319      2430
 320 05cf C57D284C 		vmovapd	80(%rsp), %ymm9
 320      2450
 321 05d5 E9A6FBFF 		jmp	.L26
 321      FF
 322              	.L16:
 323 05da B8AD8BDB 		movl	$1759218605, %eax
 323      68
 324 05df F7EB     		imull	%ebx
 325 05e1 89D8     		movl	%ebx, %eax
 326 05e3 C1F81F   		sarl	$31, %eax
 327 05e6 C1FA0B   		sarl	$11, %edx
 328 05e9 29C2     		subl	%eax, %edx
 329 05eb 89D8     		movl	%ebx, %eax
 330 05ed 69D28813 		imull	$5000, %edx, %edx
 330      0000
 331 05f3 29D0     		subl	%edx, %eax
 332 05f5 83F801   		cmpl	$1, %eax
 333 05f8 0F849200 		je	.L18
 333      0000
 334              	.L24:
 335 05fe 83C320   		addl	$32, %ebx
 336 0601 4981C400 		addq	$256, %r12
 336      010000
 337 0608 81FBC0C4 		cmpl	$181440, %ebx
 337      0200
 338 060e 0F855CFA 		jne	.L12
 338      FFFF
 339 0614 C5F877   		vzeroupper
 340 0617 E8000000 		call	clock
 340      00
 341 061c BA0C0000 		movl	$12, %edx
 341      00
 342 0621 4889C3   		movq	%rax, %rbx
 343 0624 BE000000 		movl	$.LC9, %esi
 343      00
 344 0629 BF000000 		movl	$_ZSt4cout, %edi
 344      00
 345 062e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/ccnjYhOJ.s 			page 12


 345      00
 346 0633 4889D9   		movq	%rbx, %rcx
 347 0636 482B0C24 		subq	(%rsp), %rcx
 348 063a 48BECFF7 		movabsq	$2361183241434822607, %rsi
 348      53E3A59B 
 348      C420
 349 0644 BF000000 		movl	$_ZSt4cout, %edi
 349      00
 350 0649 4889C8   		movq	%rcx, %rax
 351 064c 48C1F93F 		sarq	$63, %rcx
 352 0650 48F7EE   		imulq	%rsi
 353 0653 4889D6   		movq	%rdx, %rsi
 354 0656 48C1FE07 		sarq	$7, %rsi
 355 065a 4829CE   		subq	%rcx, %rsi
 356 065d E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 356      00
 357 0662 BE000000 		movl	$.LC10, %esi
 357      00
 358 0667 4889C7   		movq	%rax, %rdi
 359 066a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 359      00
 360 066f 4889C7   		movq	%rax, %rdi
 361 0672 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 361      00
 362 0677 488D65D8 		leaq	-40(%rbp), %rsp
 363 067b 31C0     		xorl	%eax, %eax
 364 067d 5B       		popq	%rbx
 365 067e 415C     		popq	%r12
 366 0680 415D     		popq	%r13
 367 0682 415E     		popq	%r14
 368 0684 415F     		popq	%r15
 369 0686 5D       		popq	%rbp
 370              		.cfi_remember_state
 371              		.cfi_def_cfa 7, 8
 372 0687 C3       		ret
 373 0688 0F1F8400 		.p2align 4,,10
 373      00000000 
 374              		.p2align 3
 375              	.L18:
 376              		.cfi_restore_state
 377 0690 4D89EF   		movq	%r13, %r15
 378 0693 EB41     		jmp	.L25
 379              	.L30:
 380 0695 0FB64243 		movzbl	67(%rdx), %eax
 381              	.L23:
 382 0699 0FBEF0   		movsbl	%al, %esi
 383 069c 4C89D7   		movq	%r10, %rdi
 384 069f C57D2944 		vmovapd	%ymm8, 80(%rsp)
 384      2450
 385 06a5 C57D295C 		vmovapd	%ymm11, 112(%rsp)
 385      2470
 386 06ab C5F877   		vzeroupper
 387 06ae 4983C720 		addq	$32, %r15
 388 06b2 E8000000 		call	_ZNSo3putEc
 388      00
 389 06b7 4889C7   		movq	%rax, %rdi
 390 06ba E8000000 		call	_ZNSo5flushEv
GAS LISTING /tmp/ccnjYhOJ.s 			page 13


 390      00
 391 06bf 4C3B7C24 		cmpq	8(%rsp), %r15
 391      08
 392 06c4 C57D285C 		vmovapd	112(%rsp), %ymm11
 392      2470
 393 06ca C57D2844 		vmovapd	80(%rsp), %ymm8
 393      2450
 394 06d0 0F8428FF 		je	.L24
 394      FFFF
 395              	.L25:
 396 06d6 C4C17B10 		vmovsd	(%r15), %xmm1
 396      0F
 397 06db BA040000 		movl	$4, %edx
 397      00
 398 06e0 BE000000 		movl	$.LC7, %esi
 398      00
 399 06e5 C4C17B10 		vmovsd	256(%r15), %xmm0
 399      87000100 
 399      00
 400 06ee BF000000 		movl	$_ZSt4cout, %edi
 400      00
 401 06f3 C57D2944 		vmovapd	%ymm8, 16(%rsp)
 401      2410
 402 06f9 C57D295C 		vmovapd	%ymm11, 48(%rsp)
 402      2430
 403 06ff C5FB114C 		vmovsd	%xmm1, 80(%rsp)
 403      2450
 404 0705 C5FB1144 		vmovsd	%xmm0, 112(%rsp)
 404      2470
 405 070b C5F877   		vzeroupper
 406 070e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 406      00
 407 0713 C5FB1044 		vmovsd	112(%rsp), %xmm0
 407      2470
 408 0719 BF000000 		movl	$_ZSt4cout, %edi
 408      00
 409 071e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 409      00
 410 0723 BA030000 		movl	$3, %edx
 410      00
 411 0728 BE000000 		movl	$.LC8, %esi
 411      00
 412 072d 4889C7   		movq	%rax, %rdi
 413 0730 48894424 		movq	%rax, 112(%rsp)
 413      70
 414 0735 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 414      00
 415 073a 4C8B5424 		movq	112(%rsp), %r10
 415      70
 416 073f C5FB104C 		vmovsd	80(%rsp), %xmm1
 416      2450
 417 0745 C5F928C1 		vmovapd	%xmm1, %xmm0
 418 0749 4C89D7   		movq	%r10, %rdi
 419 074c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 419      00
 420 0751 4989C2   		movq	%rax, %r10
 421 0754 488B00   		movq	(%rax), %rax
GAS LISTING /tmp/ccnjYhOJ.s 			page 14


 422 0757 C57D285C 		vmovapd	48(%rsp), %ymm11
 422      2430
 423 075d C57D2844 		vmovapd	16(%rsp), %ymm8
 423      2410
 424 0763 488B40E8 		movq	-24(%rax), %rax
 425 0767 498B9402 		movq	240(%r10,%rax), %rdx
 425      F0000000 
 426 076f 4885D2   		testq	%rdx, %rdx
 427 0772 7454     		je	.L29
 428 0774 807A3800 		cmpb	$0, 56(%rdx)
 429 0778 0F8517FF 		jne	.L30
 429      FFFF
 430 077e 4889D7   		movq	%rdx, %rdi
 431 0781 C57D2944 		vmovapd	%ymm8, 16(%rsp)
 431      2410
 432 0787 4C895424 		movq	%r10, 80(%rsp)
 432      50
 433 078c C57D295C 		vmovapd	%ymm11, 48(%rsp)
 433      2430
 434 0792 48895424 		movq	%rdx, 112(%rsp)
 434      70
 435 0797 C5F877   		vzeroupper
 436 079a E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 436      00
 437 079f 488B5424 		movq	112(%rsp), %rdx
 437      70
 438 07a4 BE0A0000 		movl	$10, %esi
 438      00
 439 07a9 488B02   		movq	(%rdx), %rax
 440 07ac 4889D7   		movq	%rdx, %rdi
 441 07af FF5030   		call	*48(%rax)
 442 07b2 C57D2844 		vmovapd	16(%rsp), %ymm8
 442      2410
 443 07b8 4C8B5424 		movq	80(%rsp), %r10
 443      50
 444 07bd C57D285C 		vmovapd	48(%rsp), %ymm11
 444      2430
 445 07c3 E9D1FEFF 		jmp	.L23
 445      FF
 446              	.L29:
 447 07c8 C5F877   		vzeroupper
 448 07cb E8000000 		call	_ZSt16__throw_bad_castv
 448      00
 449              		.cfi_endproc
 450              	.LFE4383:
 451              		.size	main, .-main
 452              		.p2align 4,,15
 453              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 454              	_GLOBAL__sub_I__Z8linspaceddi:
 455              	.LFB4595:
 456              		.cfi_startproc
 457 07d0 4883EC08 		subq	$8, %rsp
 458              		.cfi_def_cfa_offset 16
 459 07d4 BF000000 		movl	$_ZStL8__ioinit, %edi
 459      00
 460 07d9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 460      00
GAS LISTING /tmp/ccnjYhOJ.s 			page 15


 461 07de BA000000 		movl	$__dso_handle, %edx
 461      00
 462 07e3 BE000000 		movl	$_ZStL8__ioinit, %esi
 462      00
 463 07e8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 463      00
 464 07ed 4883C408 		addq	$8, %rsp
 465              		.cfi_def_cfa_offset 8
 466 07f1 E9000000 		jmp	__cxa_atexit
 466      00
 467              		.cfi_endproc
 468              	.LFE4595:
 469              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 470              		.section	.init_array,"aw"
 471              		.align 8
 472 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 472      00000000 
 473              		.local	_ZStL8__ioinit
 474              		.comm	_ZStL8__ioinit,1,1
 475              		.section	.rodata.cst8,"aM",@progbits,8
 476              		.align 8
 477              	.LC0:
 478 0000 00000000 		.long	0
 479 0004 0000F03F 		.long	1072693248
 480              		.section	.rodata.cst32,"aM",@progbits,32
 481              		.align 32
 482              	.LC1:
 483 0000 00000000 		.long	0
 484 0004 0000E0BF 		.long	-1075838976
 485 0008 00000000 		.long	0
 486 000c 0000E0BF 		.long	-1075838976
 487 0010 00000000 		.long	0
 488 0014 0000E0BF 		.long	-1075838976
 489 0018 00000000 		.long	0
 490 001c 0000E0BF 		.long	-1075838976
 491              		.section	.rodata.cst8
 492              		.align 8
 493              	.LC2:
 494 0008 9A999999 		.long	2576980378
 495 000c 9999B93F 		.long	1069128089
 496              		.section	.rodata.cst32
 497              		.align 32
 498              	.LC3:
 499 0020 00000000 		.long	0
 500 0024 00000040 		.long	1073741824
 501 0028 00000000 		.long	0
 502 002c 00000040 		.long	1073741824
 503 0030 00000000 		.long	0
 504 0034 00000040 		.long	1073741824
 505 0038 00000000 		.long	0
 506 003c 00000040 		.long	1073741824
 507              		.align 32
 508              	.LC4:
 509 0040 7B14AE47 		.long	1202590843
 510 0044 E17A743F 		.long	1064598241
 511 0048 7B14AE47 		.long	1202590843
 512 004c E17A743F 		.long	1064598241
GAS LISTING /tmp/ccnjYhOJ.s 			page 16


 513 0050 7B14AE47 		.long	1202590843
 514 0054 E17A743F 		.long	1064598241
 515 0058 7B14AE47 		.long	1202590843
 516 005c E17A743F 		.long	1064598241
 517              		.align 32
 518              	.LC5:
 519 0060 7B14AE47 		.long	1202590843
 520 0064 E17A843F 		.long	1065646817
 521 0068 7B14AE47 		.long	1202590843
 522 006c E17A843F 		.long	1065646817
 523 0070 7B14AE47 		.long	1202590843
 524 0074 E17A843F 		.long	1065646817
 525 0078 7B14AE47 		.long	1202590843
 526 007c E17A843F 		.long	1065646817
 527              		.align 32
 528              	.LC6:
 529 0080 4F1BE8B4 		.long	3035110223
 530 0084 814E5B3F 		.long	1062948481
 531 0088 4F1BE8B4 		.long	3035110223
 532 008c 814E5B3F 		.long	1062948481
 533 0090 4F1BE8B4 		.long	3035110223
 534 0094 814E5B3F 		.long	1062948481
 535 0098 4F1BE8B4 		.long	3035110223
 536 009c 814E5B3F 		.long	1062948481
 537              		.hidden	__dso_handle
 538              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 539              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccnjYhOJ.s 			page 17


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/ccnjYhOJ.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccnjYhOJ.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccnjYhOJ.s:81     .text.startup:0000000000000000 main
     /tmp/ccnjYhOJ.s:454    .text.startup:00000000000007d0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccnjYhOJ.s:477    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccnjYhOJ.s:493    .rodata.cst8:0000000000000008 .LC2
     /tmp/ccnjYhOJ.s:498    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccnjYhOJ.s:508    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccnjYhOJ.s:482    .rodata.cst32:0000000000000000 .LC1
     /tmp/ccnjYhOJ.s:518    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccnjYhOJ.s:528    .rodata.cst32:0000000000000080 .LC6

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
