GAS LISTING /tmp/cckPiZow.s 			page 1


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
GAS LISTING /tmp/cckPiZow.s 			page 2


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
  96 0016 4881ECF0 		subq	$1520, %rsp
  96      050000
GAS LISTING /tmp/cckPiZow.s 			page 3


  97              		.cfi_offset 15, -24
  98              		.cfi_offset 14, -32
  99              		.cfi_offset 13, -40
 100              		.cfi_offset 12, -48
 101              		.cfi_offset 3, -56
 102 001d C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 102      00000000 
 103 0025 4C8DB424 		leaq	560(%rsp), %r14
 103      30020000 
 104 002d 4C8DAC24 		leaq	880(%rsp), %r13
 104      70030000 
 105 0035 C5FB1005 		vmovsd	.LC1(%rip), %xmm0
 105      00000000 
 106 003d E8000000 		call	_Z8linspaceddi
 106      00
 107 0042 4889C3   		movq	%rax, %rbx
 108 0045 E8000000 		call	clock
 108      00
 109 004a 48890424 		movq	%rax, (%rsp)
 110 004e 488D8424 		leaq	1200(%rsp), %rax
 110      B0040000 
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
 122 0093 C5FD29B4 		vmovapd	%ymm6, 880(%rsp)
 122      24700300 
 122      00
 123 009c C5FD2984 		vmovapd	%ymm0, 1200(%rsp)
 123      24B00400 
 123      00
 124 00a5 C4C17D10 		vmovupd	32(%r12), %ymm0
 124      442420
 125 00ac C5FD29B4 		vmovapd	%ymm6, 912(%rsp)
 125      24900300 
 125      00
 126 00b5 C5FD2984 		vmovapd	%ymm0, 1232(%rsp)
 126      24D00400 
 126      00
 127 00be C4C17D10 		vmovupd	64(%r12), %ymm0
 127      442440
 128 00c5 C5FD29B4 		vmovapd	%ymm6, 944(%rsp)
GAS LISTING /tmp/cckPiZow.s 			page 4


 128      24B00300 
 128      00
 129 00ce C5FD2984 		vmovapd	%ymm0, 1264(%rsp)
 129      24F00400 
 129      00
 130 00d7 C4C17D10 		vmovupd	96(%r12), %ymm0
 130      442460
 131 00de C5FD29B4 		vmovapd	%ymm6, 976(%rsp)
 131      24D00300 
 131      00
 132 00e7 C5FD2984 		vmovapd	%ymm0, 1296(%rsp)
 132      24100500 
 132      00
 133 00f0 C4C17D10 		vmovupd	128(%r12), %ymm0
 133      84248000 
 133      0000
 134 00fa C5FD29B4 		vmovapd	%ymm6, 1008(%rsp)
 134      24F00300 
 134      00
 135 0103 C5FD2984 		vmovapd	%ymm0, 1328(%rsp)
 135      24300500 
 135      00
 136 010c C4C17D10 		vmovupd	160(%r12), %ymm0
 136      8424A000 
 136      0000
 137 0116 C5FD29B4 		vmovapd	%ymm6, 1040(%rsp)
 137      24100400 
 137      00
 138 011f C5FD2984 		vmovapd	%ymm0, 1360(%rsp)
 138      24500500 
 138      00
 139 0128 C4C17D10 		vmovupd	192(%r12), %ymm0
 139      8424C000 
 139      0000
 140 0132 C5FD29B4 		vmovapd	%ymm6, 1072(%rsp)
 140      24300400 
 140      00
 141 013b C5FD2984 		vmovapd	%ymm0, 1392(%rsp)
 141      24700500 
 141      00
 142 0144 C4C17D10 		vmovupd	224(%r12), %ymm0
 142      8424E000 
 142      0000
 143 014e C5FD29B4 		vmovapd	%ymm6, 1104(%rsp)
 143      24500400 
 143      00
 144 0157 C5FD2984 		vmovapd	%ymm0, 1424(%rsp)
 144      24900500 
 144      00
 145 0160 C4C17D10 		vmovupd	256(%r12), %ymm0
 145      84240001 
 145      0000
 146 016a C5FD29B4 		vmovapd	%ymm6, 1136(%rsp)
 146      24700400 
 146      00
 147 0173 C5FD2984 		vmovapd	%ymm0, 1456(%rsp)
 147      24B00500 
GAS LISTING /tmp/cckPiZow.s 			page 5


 147      00
 148 017c C4C17D10 		vmovupd	288(%r12), %ymm0
 148      84242001 
 148      0000
 149 0186 C5FD29B4 		vmovapd	%ymm6, 1168(%rsp)
 149      24900400 
 149      00
 150 018f C5FD2984 		vmovapd	%ymm0, 1488(%rsp)
 150      24D00500 
 150      00
 151 0198 0F1F8400 		.p2align 4,,10
 151      00000000 
 152              		.p2align 3
 153              	.L28:
 154 01a0 4C89F0   		movq	%r14, %rax
 155              		.p2align 4,,10
 156 01a3 0F1F4400 		.p2align 3
 156      00
 157              	.L19:
 158 01a8 C5FD2880 		vmovapd	320(%rax), %ymm0
 158      40010000 
 159 01b0 4883C020 		addq	$32, %rax
 160 01b4 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 161 01b8 C5FD5C80 		vsubpd	608(%rax), %ymm0, %ymm0
 161      60020000 
 162 01c0 C5FD2980 		vmovapd	%ymm0, -352(%rax)
 162      A0FEFFFF 
 163 01c8 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 164 01cc C5FD5880 		vaddpd	288(%rax), %ymm0, %ymm0
 164      20010000 
 165 01d4 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 165      E0
 166 01d9 4C39E8   		cmpq	%r13, %rax
 167 01dc 75CA     		jne	.L19
 168 01de 4C89F2   		movq	%r14, %rdx
 169              		.p2align 4,,10
 170 01e1 0F1F8000 		.p2align 3
 170      000000
 171              	.L15:
 172 01e8 C5FD2802 		vmovapd	(%rdx), %ymm0
 173 01ec 4883C220 		addq	$32, %rdx
 174 01f0 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 175 01f4 C5FD5C82 		vsubpd	608(%rdx), %ymm0, %ymm0
 175      60020000 
 176 01fc C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 177 0200 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 178 0204 C5E5589A 		vaddpd	-352(%rdx), %ymm3, %ymm3
 178      A0FEFFFF 
 179 020c C5FD5882 		vaddpd	288(%rdx), %ymm0, %ymm0
 179      20010000 
 180 0214 C5FD299A 		vmovapd	%ymm3, -352(%rdx)
 180      A0FEFFFF 
 181 021c C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 181      E0
 182 0221 4939D5   		cmpq	%rdx, %r13
 183 0224 75C2     		jne	.L15
 184 0226 4C89F2   		movq	%r14, %rdx
GAS LISTING /tmp/cckPiZow.s 			page 6


 185 0229 0F1F8000 		.p2align 4,,10
 185      000000
 186              		.p2align 3
 187              	.L17:
 188 0230 C5FD2802 		vmovapd	(%rdx), %ymm0
 189 0234 4883C220 		addq	$32, %rdx
 190 0238 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 191 023c C5FD5C82 		vsubpd	608(%rdx), %ymm0, %ymm0
 191      60020000 
 192 0244 C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 193 0248 C5D559C0 		vmulpd	%ymm0, %ymm5, %ymm0
 194 024c C5E5589A 		vaddpd	-352(%rdx), %ymm3, %ymm3
 194      A0FEFFFF 
 195 0254 C5FD5882 		vaddpd	288(%rdx), %ymm0, %ymm0
 195      20010000 
 196 025c C5FD299A 		vmovapd	%ymm3, -352(%rdx)
 196      A0FEFFFF 
 197 0264 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 197      E0
 198 0269 4939D5   		cmpq	%rdx, %r13
 199 026c 75C2     		jne	.L17
 200 026e C57D28B4 		vmovapd	560(%rsp), %ymm14
 200      24300200 
 200      00
 201 0277 83EE01   		subl	$1, %esi
 202 027a C57D28AC 		vmovapd	592(%rsp), %ymm13
 202      24500200 
 202      00
 203 0283 C57D28A4 		vmovapd	624(%rsp), %ymm12
 203      24700200 
 203      00
 204 028c C4410D59 		vmulpd	%ymm14, %ymm14, %ymm14
 204      F6
 205 0291 C57D289C 		vmovapd	656(%rsp), %ymm11
 205      24900200 
 205      00
 206 029a C57D2894 		vmovapd	688(%rsp), %ymm10
 206      24B00200 
 206      00
 207 02a3 C4411559 		vmulpd	%ymm13, %ymm13, %ymm13
 207      ED
 208 02a8 C57D288C 		vmovapd	720(%rsp), %ymm9
 208      24D00200 
 208      00
 209 02b1 C57D2884 		vmovapd	752(%rsp), %ymm8
 209      24F00200 
 209      00
 210 02ba C4411D59 		vmulpd	%ymm12, %ymm12, %ymm12
 210      E4
 211 02bf C50D5CB4 		vsubpd	1200(%rsp), %ymm14, %ymm14
 211      24B00400 
 211      00
 212 02c8 C4412559 		vmulpd	%ymm11, %ymm11, %ymm11
 212      DB
 213 02cd C5155CAC 		vsubpd	1232(%rsp), %ymm13, %ymm13
 213      24D00400 
 213      00
GAS LISTING /tmp/cckPiZow.s 			page 7


 214 02d6 C4412D59 		vmulpd	%ymm10, %ymm10, %ymm10
 214      D2
 215 02db C51D5CA4 		vsubpd	1264(%rsp), %ymm12, %ymm12
 215      24F00400 
 215      00
 216 02e4 C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 216      C9
 217 02e9 C5255C9C 		vsubpd	1296(%rsp), %ymm11, %ymm11
 217      24100500 
 217      00
 218 02f2 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 218      C0
 219 02f7 C57D29B4 		vmovapd	%ymm14, 560(%rsp)
 219      24300200 
 219      00
 220 0300 C52D5C94 		vsubpd	1328(%rsp), %ymm10, %ymm10
 220      24300500 
 220      00
 221 0309 C57D29AC 		vmovapd	%ymm13, 592(%rsp)
 221      24500200 
 221      00
 222 0312 C5355C8C 		vsubpd	1360(%rsp), %ymm9, %ymm9
 222      24500500 
 222      00
 223 031b C57D29A4 		vmovapd	%ymm12, 624(%rsp)
 223      24700200 
 223      00
 224 0324 C53D5C84 		vsubpd	1392(%rsp), %ymm8, %ymm8
 224      24700500 
 224      00
 225 032d C57D299C 		vmovapd	%ymm11, 656(%rsp)
 225      24900200 
 225      00
 226 0336 C50D58B4 		vaddpd	240(%rsp), %ymm14, %ymm14
 226      24F00000 
 226      00
 227 033f C57D2994 		vmovapd	%ymm10, 688(%rsp)
 227      24B00200 
 227      00
 228 0348 C51558AC 		vaddpd	272(%rsp), %ymm13, %ymm13
 228      24100100 
 228      00
 229 0351 C57D298C 		vmovapd	%ymm9, 720(%rsp)
 229      24D00200 
 229      00
 230 035a C51D58A4 		vaddpd	304(%rsp), %ymm12, %ymm12
 230      24300100 
 230      00
 231 0363 C57D2984 		vmovapd	%ymm8, 752(%rsp)
 231      24F00200 
 231      00
 232 036c C525589C 		vaddpd	336(%rsp), %ymm11, %ymm11
 232      24500100 
 232      00
 233 0375 C57D29B4 		vmovapd	%ymm14, 240(%rsp)
 233      24F00000 
 233      00
GAS LISTING /tmp/cckPiZow.s 			page 8


 234 037e C50D59F4 		vmulpd	%ymm4, %ymm14, %ymm14
 235 0382 C52D5894 		vaddpd	368(%rsp), %ymm10, %ymm10
 235      24700100 
 235      00
 236 038b C57D29AC 		vmovapd	%ymm13, 272(%rsp)
 236      24100100 
 236      00
 237 0394 C51559EC 		vmulpd	%ymm4, %ymm13, %ymm13
 238 0398 C535588C 		vaddpd	400(%rsp), %ymm9, %ymm9
 238      24900100 
 238      00
 239 03a1 C57D29A4 		vmovapd	%ymm12, 304(%rsp)
 239      24300100 
 239      00
 240 03aa C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 241 03ae C53D5884 		vaddpd	432(%rsp), %ymm8, %ymm8
 241      24B00100 
 241      00
 242 03b7 C57D299C 		vmovapd	%ymm11, 336(%rsp)
 242      24500100 
 242      00
 243 03c0 C52559DC 		vmulpd	%ymm4, %ymm11, %ymm11
 244 03c4 C57D2994 		vmovapd	%ymm10, 368(%rsp)
 244      24700100 
 244      00
 245 03cd C52D59D4 		vmulpd	%ymm4, %ymm10, %ymm10
 246 03d1 C57D298C 		vmovapd	%ymm9, 400(%rsp)
 246      24900100 
 246      00
 247 03da C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 248 03de C57D2984 		vmovapd	%ymm8, 432(%rsp)
 248      24B00100 
 248      00
 249 03e7 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 250 03eb C5FD28BC 		vmovapd	784(%rsp), %ymm7
 250      24100300 
 250      00
 251 03f4 C5FD289C 		vmovapd	816(%rsp), %ymm3
 251      24300300 
 251      00
 252 03fd C5FD2884 		vmovapd	848(%rsp), %ymm0
 252      24500300 
 252      00
 253 0406 C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 254 040a C50D58B4 		vaddpd	880(%rsp), %ymm14, %ymm14
 254      24700300 
 254      00
 255 0413 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 256 0417 C51558AC 		vaddpd	912(%rsp), %ymm13, %ymm13
 256      24900300 
 256      00
 257 0420 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 258 0424 C5C55CBC 		vsubpd	1424(%rsp), %ymm7, %ymm7
 258      24900500 
 258      00
 259 042d C5E55C9C 		vsubpd	1456(%rsp), %ymm3, %ymm3
 259      24B00500 
GAS LISTING /tmp/cckPiZow.s 			page 9


 259      00
 260 0436 C57D29B4 		vmovapd	%ymm14, 880(%rsp)
 260      24700300 
 260      00
 261 043f C5FD5C84 		vsubpd	1488(%rsp), %ymm0, %ymm0
 261      24D00500 
 261      00
 262 0448 C57D29AC 		vmovapd	%ymm13, 912(%rsp)
 262      24900300 
 262      00
 263 0451 C51D58A4 		vaddpd	944(%rsp), %ymm12, %ymm12
 263      24B00300 
 263      00
 264 045a C5FD29BC 		vmovapd	%ymm7, 784(%rsp)
 264      24100300 
 264      00
 265 0463 C5C558BC 		vaddpd	464(%rsp), %ymm7, %ymm7
 265      24D00100 
 265      00
 266 046c C5FD299C 		vmovapd	%ymm3, 816(%rsp)
 266      24300300 
 266      00
 267 0475 C5E5589C 		vaddpd	496(%rsp), %ymm3, %ymm3
 267      24F00100 
 267      00
 268 047e C5FD2984 		vmovapd	%ymm0, 848(%rsp)
 268      24500300 
 268      00
 269 0487 C5FD5884 		vaddpd	528(%rsp), %ymm0, %ymm0
 269      24100200 
 269      00
 270 0490 C57D29A4 		vmovapd	%ymm12, 944(%rsp)
 270      24B00300 
 270      00
 271 0499 C525589C 		vaddpd	976(%rsp), %ymm11, %ymm11
 271      24D00300 
 271      00
 272 04a2 C5FD29BC 		vmovapd	%ymm7, 464(%rsp)
 272      24D00100 
 272      00
 273 04ab C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 274 04af C52D5894 		vaddpd	1008(%rsp), %ymm10, %ymm10
 274      24F00300 
 274      00
 275 04b8 C5FD299C 		vmovapd	%ymm3, 496(%rsp)
 275      24F00100 
 275      00
 276 04c1 C5E559DC 		vmulpd	%ymm4, %ymm3, %ymm3
 277 04c5 C535588C 		vaddpd	1040(%rsp), %ymm9, %ymm9
 277      24100400 
 277      00
 278 04ce C5FD2984 		vmovapd	%ymm0, 528(%rsp)
 278      24100200 
 278      00
 279 04d7 C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 280 04db C53D5884 		vaddpd	1072(%rsp), %ymm8, %ymm8
 280      24300400 
GAS LISTING /tmp/cckPiZow.s 			page 10


 280      00
 281 04e4 C57D299C 		vmovapd	%ymm11, 976(%rsp)
 281      24D00300 
 281      00
 282 04ed C5C558BC 		vaddpd	1104(%rsp), %ymm7, %ymm7
 282      24500400 
 282      00
 283 04f6 C57D2994 		vmovapd	%ymm10, 1008(%rsp)
 283      24F00300 
 283      00
 284 04ff C5E5589C 		vaddpd	1136(%rsp), %ymm3, %ymm3
 284      24700400 
 284      00
 285 0508 C57D298C 		vmovapd	%ymm9, 1040(%rsp)
 285      24100400 
 285      00
 286 0511 C5FD5884 		vaddpd	1168(%rsp), %ymm0, %ymm0
 286      24900400 
 286      00
 287 051a C57D2984 		vmovapd	%ymm8, 1072(%rsp)
 287      24300400 
 287      00
 288 0523 C5FD29BC 		vmovapd	%ymm7, 1104(%rsp)
 288      24500400 
 288      00
 289 052c C5FD299C 		vmovapd	%ymm3, 1136(%rsp)
 289      24700400 
 289      00
 290 0535 C5FD2984 		vmovapd	%ymm0, 1168(%rsp)
 290      24900400 
 290      00
 291 053e 0F855CFC 		jne	.L28
 291      FFFF
 292 0544 B8AD8BDB 		movl	$1759218605, %eax
 292      68
 293 0549 F7EB     		imull	%ebx
 294 054b 89D8     		movl	%ebx, %eax
 295 054d C1F81F   		sarl	$31, %eax
 296 0550 C1FA0B   		sarl	$11, %edx
 297 0553 29C2     		subl	%eax, %edx
 298 0555 89D8     		movl	%ebx, %eax
 299 0557 69D28813 		imull	$5000, %edx, %edx
 299      0000
 300 055d 29D0     		subl	%edx, %eax
 301 055f 83F801   		cmpl	$1, %eax
 302 0562 0F849000 		je	.L20
 302      0000
 303              	.L26:
 304 0568 83C328   		addl	$40, %ebx
 305 056b 4981C440 		addq	$320, %r12
 305      010000
 306 0572 81FBC0C4 		cmpl	$181440, %ebx
 306      0200
 307 0578 0F850AFB 		jne	.L12
 307      FFFF
 308 057e C5F877   		vzeroupper
 309 0581 E8000000 		call	clock
GAS LISTING /tmp/cckPiZow.s 			page 11


 309      00
 310 0586 BA0C0000 		movl	$12, %edx
 310      00
 311 058b 4889C3   		movq	%rax, %rbx
 312 058e BE000000 		movl	$.LC9, %esi
 312      00
 313 0593 BF000000 		movl	$_ZSt4cout, %edi
 313      00
 314 0598 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 314      00
 315 059d 4889D9   		movq	%rbx, %rcx
 316 05a0 482B0C24 		subq	(%rsp), %rcx
 317 05a4 48BECFF7 		movabsq	$2361183241434822607, %rsi
 317      53E3A59B 
 317      C420
 318 05ae BF000000 		movl	$_ZSt4cout, %edi
 318      00
 319 05b3 4889C8   		movq	%rcx, %rax
 320 05b6 48C1F93F 		sarq	$63, %rcx
 321 05ba 48F7EE   		imulq	%rsi
 322 05bd 4889D6   		movq	%rdx, %rsi
 323 05c0 48C1FE07 		sarq	$7, %rsi
 324 05c4 4829CE   		subq	%rcx, %rsi
 325 05c7 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 325      00
 326 05cc BE000000 		movl	$.LC10, %esi
 326      00
 327 05d1 4889C7   		movq	%rax, %rdi
 328 05d4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 328      00
 329 05d9 4889C7   		movq	%rax, %rdi
 330 05dc E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 330      00
 331 05e1 488D65D8 		leaq	-40(%rbp), %rsp
 332 05e5 31C0     		xorl	%eax, %eax
 333 05e7 5B       		popq	%rbx
 334 05e8 415C     		popq	%r12
 335 05ea 415D     		popq	%r13
 336 05ec 415E     		popq	%r14
 337 05ee 415F     		popq	%r15
 338 05f0 5D       		popq	%rbp
 339              		.cfi_remember_state
 340              		.cfi_def_cfa 7, 8
 341 05f1 C3       		ret
 342              		.p2align 4,,10
 343 05f2 660F1F44 		.p2align 3
 343      0000
 344              	.L20:
 345              		.cfi_restore_state
 346 05f8 4D89EF   		movq	%r13, %r15
 347 05fb EB77     		jmp	.L27
 348              	.L32:
 349 05fd 0FB64243 		movzbl	67(%rdx), %eax
 350              	.L25:
 351 0601 0FBEF0   		movsbl	%al, %esi
 352 0604 4C89D7   		movq	%r10, %rdi
 353 0607 C5FD2974 		vmovapd	%ymm6, 80(%rsp)
GAS LISTING /tmp/cckPiZow.s 			page 12


 353      2450
 354 060d C5FD2964 		vmovapd	%ymm4, 112(%rsp)
 354      2470
 355 0613 C5FD29AC 		vmovapd	%ymm5, 144(%rsp)
 355      24900000 
 355      00
 356 061c C5FD298C 		vmovapd	%ymm1, 176(%rsp)
 356      24B00000 
 356      00
 357 0625 C5FD2994 		vmovapd	%ymm2, 208(%rsp)
 357      24D00000 
 357      00
 358 062e C5F877   		vzeroupper
 359 0631 4983C720 		addq	$32, %r15
 360 0635 E8000000 		call	_ZNSo3putEc
 360      00
 361 063a 4889C7   		movq	%rax, %rdi
 362 063d E8000000 		call	_ZNSo5flushEv
 362      00
 363 0642 4C3B7C24 		cmpq	8(%rsp), %r15
 363      08
 364 0647 C5FD2894 		vmovapd	208(%rsp), %ymm2
 364      24D00000 
 364      00
 365 0650 C5FD288C 		vmovapd	176(%rsp), %ymm1
 365      24B00000 
 365      00
 366 0659 C5FD28AC 		vmovapd	144(%rsp), %ymm5
 366      24900000 
 366      00
 367 0662 C5FD2864 		vmovapd	112(%rsp), %ymm4
 367      2470
 368 0668 C5FD2874 		vmovapd	80(%rsp), %ymm6
 368      2450
 369 066e 0F84F4FE 		je	.L26
 369      FFFF
 370              	.L27:
 371 0674 C4C17B10 		vmovsd	(%r15), %xmm3
 371      1F
 372 0679 BA040000 		movl	$4, %edx
 372      00
 373 067e BE000000 		movl	$.LC6, %esi
 373      00
 374 0683 C4C17B10 		vmovsd	320(%r15), %xmm0
 374      87400100 
 374      00
 375 068c BF000000 		movl	$_ZSt4cout, %edi
 375      00
 376 0691 C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 376      2410
 377 0697 C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 377      2430
 378 069d C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 378      2450
 379 06a3 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 379      2470
 380 06a9 C5FD2994 		vmovapd	%ymm2, 144(%rsp)
GAS LISTING /tmp/cckPiZow.s 			page 13


 380      24900000 
 380      00
 381 06b2 C5FB119C 		vmovsd	%xmm3, 176(%rsp)
 381      24B00000 
 381      00
 382 06bb C5FB1184 		vmovsd	%xmm0, 208(%rsp)
 382      24D00000 
 382      00
 383 06c4 C5F877   		vzeroupper
 384 06c7 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 384      00
 385 06cc C5FB1084 		vmovsd	208(%rsp), %xmm0
 385      24D00000 
 385      00
 386 06d5 BF000000 		movl	$_ZSt4cout, %edi
 386      00
 387 06da E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 387      00
 388 06df BA030000 		movl	$3, %edx
 388      00
 389 06e4 BE000000 		movl	$.LC7, %esi
 389      00
 390 06e9 4889C7   		movq	%rax, %rdi
 391 06ec 48898424 		movq	%rax, 208(%rsp)
 391      D0000000 
 392 06f4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 392      00
 393 06f9 4C8B9424 		movq	208(%rsp), %r10
 393      D0000000 
 394 0701 C5FB109C 		vmovsd	176(%rsp), %xmm3
 394      24B00000 
 394      00
 395 070a C5F928C3 		vmovapd	%xmm3, %xmm0
 396 070e 4C89D7   		movq	%r10, %rdi
 397 0711 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 397      00
 398 0716 4989C2   		movq	%rax, %r10
 399 0719 488B00   		movq	(%rax), %rax
 400 071c C5FD2894 		vmovapd	144(%rsp), %ymm2
 400      24900000 
 400      00
 401 0725 C5FD284C 		vmovapd	112(%rsp), %ymm1
 401      2470
 402 072b C5FD286C 		vmovapd	80(%rsp), %ymm5
 402      2450
 403 0731 488B40E8 		movq	-24(%rax), %rax
 404 0735 C5FD2864 		vmovapd	48(%rsp), %ymm4
 404      2430
 405 073b C5FD2874 		vmovapd	16(%rsp), %ymm6
 405      2410
 406 0741 498B9402 		movq	240(%r10,%rax), %rdx
 406      F0000000 
 407 0749 4885D2   		testq	%rdx, %rdx
 408 074c 0F848A00 		je	.L31
 408      0000
 409 0752 807A3800 		cmpb	$0, 56(%rdx)
 410 0756 0F85A1FE 		jne	.L32
GAS LISTING /tmp/cckPiZow.s 			page 14


 410      FFFF
 411 075c 4889D7   		movq	%rdx, %rdi
 412 075f C5FD2974 		vmovapd	%ymm6, 16(%rsp)
 412      2410
 413 0765 4C899424 		movq	%r10, 176(%rsp)
 413      B0000000 
 414 076d C5FD2964 		vmovapd	%ymm4, 48(%rsp)
 414      2430
 415 0773 48899424 		movq	%rdx, 208(%rsp)
 415      D0000000 
 416 077b C5FD296C 		vmovapd	%ymm5, 80(%rsp)
 416      2450
 417 0781 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 417      2470
 418 0787 C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 418      24900000 
 418      00
 419 0790 C5F877   		vzeroupper
 420 0793 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 420      00
 421 0798 488B9424 		movq	208(%rsp), %rdx
 421      D0000000 
 422 07a0 BE0A0000 		movl	$10, %esi
 422      00
 423 07a5 488B02   		movq	(%rdx), %rax
 424 07a8 4889D7   		movq	%rdx, %rdi
 425 07ab FF5030   		call	*48(%rax)
 426 07ae C5FD2874 		vmovapd	16(%rsp), %ymm6
 426      2410
 427 07b4 4C8B9424 		movq	176(%rsp), %r10
 427      B0000000 
 428 07bc C5FD2864 		vmovapd	48(%rsp), %ymm4
 428      2430
 429 07c2 C5FD286C 		vmovapd	80(%rsp), %ymm5
 429      2450
 430 07c8 C5FD284C 		vmovapd	112(%rsp), %ymm1
 430      2470
 431 07ce C5FD2894 		vmovapd	144(%rsp), %ymm2
 431      24900000 
 431      00
 432 07d7 E925FEFF 		jmp	.L25
 432      FF
 433              	.L31:
 434 07dc C5F877   		vzeroupper
 435 07df E8000000 		call	_ZSt16__throw_bad_castv
 435      00
 436              		.cfi_endproc
 437              	.LFE4383:
 438              		.size	main, .-main
 439 07e4 6666662E 		.p2align 4,,15
 439      0F1F8400 
 439      00000000 
 440              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 441              	_GLOBAL__sub_I__Z8linspaceddi:
 442              	.LFB4595:
 443              		.cfi_startproc
 444 07f0 4883EC08 		subq	$8, %rsp
GAS LISTING /tmp/cckPiZow.s 			page 15


 445              		.cfi_def_cfa_offset 16
 446 07f4 BF000000 		movl	$_ZStL8__ioinit, %edi
 446      00
 447 07f9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 447      00
 448 07fe BA000000 		movl	$__dso_handle, %edx
 448      00
 449 0803 BE000000 		movl	$_ZStL8__ioinit, %esi
 449      00
 450 0808 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 450      00
 451 080d 4883C408 		addq	$8, %rsp
 452              		.cfi_def_cfa_offset 8
 453 0811 E9000000 		jmp	__cxa_atexit
 453      00
 454              		.cfi_endproc
 455              	.LFE4595:
 456              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 457              		.section	.init_array,"aw"
 458              		.align 8
 459 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 459      00000000 
 460              		.local	_ZStL8__ioinit
 461              		.comm	_ZStL8__ioinit,1,1
 462              		.section	.rodata.cst8,"aM",@progbits,8
 463              		.align 8
 464              	.LC0:
 465 0000 00000000 		.long	0
 466 0004 0000F03F 		.long	1072693248
 467              		.align 8
 468              	.LC1:
 469 0008 9A999999 		.long	2576980378
 470 000c 9999B93F 		.long	1069128089
 471              		.section	.rodata.cst32,"aM",@progbits,32
 472              		.align 32
 473              	.LC2:
 474 0000 7B14AE47 		.long	1202590843
 475 0004 E17A743F 		.long	1064598241
 476 0008 7B14AE47 		.long	1202590843
 477 000c E17A743F 		.long	1064598241
 478 0010 7B14AE47 		.long	1202590843
 479 0014 E17A743F 		.long	1064598241
 480 0018 7B14AE47 		.long	1202590843
 481 001c E17A743F 		.long	1064598241
 482              		.align 32
 483              	.LC3:
 484 0020 00000000 		.long	0
 485 0024 00000040 		.long	1073741824
 486 0028 00000000 		.long	0
 487 002c 00000040 		.long	1073741824
 488 0030 00000000 		.long	0
 489 0034 00000040 		.long	1073741824
 490 0038 00000000 		.long	0
 491 003c 00000040 		.long	1073741824
 492              		.align 32
 493              	.LC4:
 494 0040 7B14AE47 		.long	1202590843
GAS LISTING /tmp/cckPiZow.s 			page 16


 495 0044 E17A843F 		.long	1065646817
 496 0048 7B14AE47 		.long	1202590843
 497 004c E17A843F 		.long	1065646817
 498 0050 7B14AE47 		.long	1202590843
 499 0054 E17A843F 		.long	1065646817
 500 0058 7B14AE47 		.long	1202590843
 501 005c E17A843F 		.long	1065646817
 502              		.align 32
 503              	.LC5:
 504 0060 4F1BE8B4 		.long	3035110223
 505 0064 814E5B3F 		.long	1062948481
 506 0068 4F1BE8B4 		.long	3035110223
 507 006c 814E5B3F 		.long	1062948481
 508 0070 4F1BE8B4 		.long	3035110223
 509 0074 814E5B3F 		.long	1062948481
 510 0078 4F1BE8B4 		.long	3035110223
 511 007c 814E5B3F 		.long	1062948481
 512              		.align 32
 513              	.LC8:
 514 0080 00000000 		.long	0
 515 0084 0000E0BF 		.long	-1075838976
 516 0088 00000000 		.long	0
 517 008c 0000E0BF 		.long	-1075838976
 518 0090 00000000 		.long	0
 519 0094 0000E0BF 		.long	-1075838976
 520 0098 00000000 		.long	0
 521 009c 0000E0BF 		.long	-1075838976
 522              		.hidden	__dso_handle
 523              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 524              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cckPiZow.s 			page 17


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/cckPiZow.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cckPiZow.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cckPiZow.s:81     .text.startup:0000000000000000 main
     /tmp/cckPiZow.s:441    .text.startup:00000000000007f0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cckPiZow.s:464    .rodata.cst8:0000000000000000 .LC0
     /tmp/cckPiZow.s:468    .rodata.cst8:0000000000000008 .LC1
     /tmp/cckPiZow.s:473    .rodata.cst32:0000000000000000 .LC2
     /tmp/cckPiZow.s:483    .rodata.cst32:0000000000000020 .LC3
     /tmp/cckPiZow.s:493    .rodata.cst32:0000000000000040 .LC4
     /tmp/cckPiZow.s:503    .rodata.cst32:0000000000000060 .LC5
     /tmp/cckPiZow.s:513    .rodata.cst32:0000000000000080 .LC8

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
