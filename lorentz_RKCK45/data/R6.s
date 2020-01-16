GAS LISTING /tmp/ccpWqck0.s 			page 1


   1              		.file	"RKCK45_unions.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4904:
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
  18              	.LFE4904:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4636:
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
GAS LISTING /tmp/ccpWqck0.s 			page 2


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
  66              	.LFE4636:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.8,"aMS",@progbits,1
  69              		.align 8
  70              	.LC75:
  71 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  72              		.section	.rodata.str1.1,"aMS",@progbits,1
  73              	.LC76:
  74 0000 09207020 		.string	"\t p = "
  74      3D2000
  75              	.LC77:
  76 0007 09207800 		.string	"\t x"
  77              	.LC78:
  78 000b 0A00     		.string	"\n"
  79              	.LC80:
  80 000d 456C6170 		.string	"Elapsed time: "
  80      73656420 
  80      74696D65 
  80      3A2000
  81              	.LC81:
  82 001c 206D7300 		.string	" ms"
  83              		.section	.text.startup,"ax",@progbits
  84              		.p2align 4,,15
  85              		.globl	main
  86              		.type	main, @function
  87              	main:
  88              	.LFB4635:
  89              		.cfi_startproc
  90 0000 55       		pushq	%rbp
  91              		.cfi_def_cfa_offset 16
  92              		.cfi_offset 6, -16
  93 0001 4889E5   		movq	%rsp, %rbp
  94              		.cfi_def_cfa_register 6
  95 0004 4157     		pushq	%r15
  96 0006 4156     		pushq	%r14
GAS LISTING /tmp/ccpWqck0.s 			page 3


  97 0008 4155     		pushq	%r13
  98 000a 4154     		pushq	%r12
  99 000c 53       		pushq	%rbx
 100 000d 4883E4E0 		andq	$-32, %rsp
 101 0011 4881ECE0 		subq	$6112, %rsp
 101      170000
 102              		.cfi_offset 15, -24
 103              		.cfi_offset 14, -32
 104              		.cfi_offset 13, -40
 105              		.cfi_offset 12, -48
 106              		.cfi_offset 3, -56
 107 0018 488D8424 		leaq	352(%rsp), %rax
 107      60010000 
 108 0020 C57D282D 		vmovapd	.LC0(%rip), %ymm13
 108      00000000 
 109 0028 488D9040 		leaq	576(%rax), %rdx
 109      020000
 110              	.L13:
 111 002f C57D2928 		vmovapd	%ymm13, (%rax)
 112 0033 4883C020 		addq	$32, %rax
 113 0037 4839D0   		cmpq	%rdx, %rax
 114 003a 75F3     		jne	.L13
 115 003c C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 116 0040 BF809D00 		movl	$40320, %edi
 116      00
 117 0045 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 117      00000000 
 118 004d C57D29AC 		vmovapd	%ymm13, 288(%rsp)
 118      24200100 
 118      00
 119 0056 C5F877   		vzeroupper
 120 0059 E8000000 		call	_Z8linspaceddi
 120      00
 121 005e 4889C3   		movq	%rax, %rbx
 122 0061 4531E4   		xorl	%r12d, %r12d
 123 0064 E8000000 		call	clock
 123      00
 124 0069 C5F8280D 		vmovaps	.LC53(%rip), %xmm1
 124      00000000 
 125 0071 48898424 		movq	%rax, 184(%rsp)
 125      B8000000 
 126 0079 C5F828C1 		vmovaps	%xmm1, %xmm0
 127 007d C5FD281D 		vmovapd	.LC3(%rip), %ymm3
 127      00000000 
 128 0085 C57D2825 		vmovapd	.LC4(%rip), %ymm12
 128      00000000 
 129 008d C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm1
 129      C901
 130 0093 C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 130      00000000 
 131 009b C57D2835 		vmovapd	.LC35(%rip), %ymm14
 131      00000000 
 132 00a3 C57D28AC 		vmovapd	288(%rsp), %ymm13
 132      24200100 
 132      00
 133 00ac C5FC298C 		vmovaps	%ymm1, 192(%rsp)
 133      24C00000 
GAS LISTING /tmp/ccpWqck0.s 			page 4


 133      00
 134 00b5 C5F5570D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 134      00000000 
 135 00bd C5FD298C 		vmovapd	%ymm1, 224(%rsp)
 135      24E00000 
 135      00
 136              	.L14:
 137 00c6 C5FD2803 		vmovapd	(%rbx), %ymm0
 138 00ca B9480000 		movl	$72, %ecx
 138      00
 139 00cf 488DBC24 		leaq	4960(%rsp), %rdi
 139      60130000 
 140 00d7 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 140      00000000 
 141 00df 488DB424 		leaq	352(%rsp), %rsi
 141      60010000 
 142 00e7 31D2     		xorl	%edx, %edx
 143 00e9 C5FD2984 		vmovapd	%ymm0, 5920(%rsp)
 143      24201700 
 143      00
 144 00f2 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 145 00f6 C5FD298C 		vmovapd	%ymm1, 5728(%rsp)
 145      24601600 
 145      00
 146 00ff 4531ED   		xorl	%r13d, %r13d
 147 0102 4C8D8424 		leaq	1120(%rsp), %r8
 147      60040000 
 148 010a 4C8D8C24 		leaq	5920(%rsp), %r9
 148      20170000 
 149 0112 C5FD2984 		vmovapd	%ymm0, 5536(%rsp)
 149      24A01500 
 149      00
 150 011b C5FD284B 		vmovapd	32(%rbx), %ymm1
 150      20
 151 0120 C5FD2984 		vmovapd	%ymm0, 5568(%rsp)
 151      24C01500 
 151      00
 152 0129 C5FD298C 		vmovapd	%ymm1, 5952(%rsp)
 152      24401700 
 152      00
 153 0132 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 153      00000000 
 154 013a C5FD298C 		vmovapd	%ymm1, 5760(%rsp)
 154      24801600 
 154      00
 155 0143 C5FD284B 		vmovapd	64(%rbx), %ymm1
 155      40
 156 0148 C5FD2984 		vmovapd	%ymm0, 5600(%rsp)
 156      24E01500 
 156      00
 157 0151 C5FD298C 		vmovapd	%ymm1, 5984(%rsp)
 157      24601700 
 157      00
 158 015a C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 158      00000000 
 159 0162 C5FD298C 		vmovapd	%ymm1, 5792(%rsp)
 159      24A01600 
GAS LISTING /tmp/ccpWqck0.s 			page 5


 159      00
 160 016b C5FD284B 		vmovapd	96(%rbx), %ymm1
 160      60
 161 0170 C5FD2984 		vmovapd	%ymm0, 5632(%rsp)
 161      24001600 
 161      00
 162 0179 C5FD298C 		vmovapd	%ymm1, 6016(%rsp)
 162      24801700 
 162      00
 163 0182 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 163      00000000 
 164 018a C5FD298C 		vmovapd	%ymm1, 5824(%rsp)
 164      24C01600 
 164      00
 165 0193 C5FD288B 		vmovapd	128(%rbx), %ymm1
 165      80000000 
 166 019b C5FD2984 		vmovapd	%ymm0, 5664(%rsp)
 166      24201600 
 166      00
 167 01a4 C5FD298C 		vmovapd	%ymm1, 6048(%rsp)
 167      24A01700 
 167      00
 168 01ad C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 168      00000000 
 169 01b5 C5FD298C 		vmovapd	%ymm1, 5856(%rsp)
 169      24E01600 
 169      00
 170 01be C5FD288B 		vmovapd	160(%rbx), %ymm1
 170      A0000000 
 171 01c6 F348A5   		rep movsq
 172 01c9 C5FD298C 		vmovapd	%ymm1, 6080(%rsp)
 172      24C01700 
 172      00
 173 01d2 488DB424 		leaq	4960(%rsp), %rsi
 173      60130000 
 174 01da 488DBC24 		leaq	1504(%rsp), %rdi
 174      E0050000 
 175 01e2 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 175      00000000 
 176 01ea C5FD2984 		vmovapd	%ymm0, 5696(%rsp)
 176      24401600 
 176      00
 177 01f3 C5FD298C 		vmovapd	%ymm1, 5888(%rsp)
 177      24001700 
 177      00
 178 01fc E9870000 		jmp	.L49
 178      00
 179              		.p2align 4,,10
 180 0201 0F1F8000 		.p2align 3
 180      000000
 181              	.L15:
 182 0208 4963C5   		movslq	%r13d, %rax
 183 020b 4C63DA   		movslq	%edx, %r11
 184 020e 4183C503 		addl	$3, %r13d
 185 0212 48C1E005 		salq	$5, %rax
 186 0216 49C1E305 		salq	$5, %r11
 187 021a 83C201   		addl	$1, %edx
GAS LISTING /tmp/ccpWqck0.s 			page 6


 188 021d 4C8D7020 		leaq	32(%rax), %r14
 189 0221 4C8D1406 		leaq	(%rsi,%rax), %r10
 190 0225 4A8D0C36 		leaq	(%rsi,%r14), %rcx
 191 0229 C5FD2801 		vmovapd	(%rcx), %ymm0
 192 022d C4C17D5C 		vsubpd	(%r10), %ymm0, %ymm0
 192      02
 193 0232 C59559C0 		vmulpd	%ymm0, %ymm13, %ymm0
 194 0236 C5FD2984 		vmovapd	%ymm0, 2656(%rsp,%rax)
 194      04600A00 
 194      00
 195 023f 4883C040 		addq	$64, %rax
 196 0243 4C8D3C06 		leaq	(%rsi,%rax), %r15
 197 0247 C4C17D28 		vmovapd	(%r10), %ymm0
 197      02
 198 024c C4C17D59 		vmulpd	(%r15), %ymm0, %ymm1
 198      0F
 199 0251 C4A17D59 		vmulpd	5920(%rsp,%r11), %ymm0, %ymm0
 199      841C2017 
 199      0000
 200 025b C5FD5C01 		vsubpd	(%rcx), %ymm0, %ymm0
 201 025f C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 202 0263 C4A17D29 		vmovapd	%ymm0, 2656(%rsp,%r14)
 202      8434600A 
 202      0000
 203 026d C4C17D28 		vmovapd	(%r10), %ymm0
 203      02
 204 0272 C4C16559 		vmulpd	(%r15), %ymm3, %ymm1
 204      0F
 205 0277 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 206 027b C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 207 027f C5FD2984 		vmovapd	%ymm0, 2656(%rsp,%rax)
 207      04600A00 
 207      00
 208              	.L49:
 209 0288 83FA05   		cmpl	$5, %edx
 210 028b 0F8E77FF 		jle	.L15
 210      FFFF
 211 0291 488D8424 		leaq	4384(%rsp), %rax
 211      20110000 
 212 0299 488D9424 		leaq	928(%rsp), %rdx
 212      A0030000 
 213              		.p2align 4,,10
 214 02a1 0F1F8000 		.p2align 3
 214      000000
 215              	.L17:
 216 02a8 C59D5980 		vmulpd	-1728(%rax), %ymm12, %ymm0
 216      40F9FFFF 
 217 02b0 4883C220 		addq	$32, %rdx
 218 02b4 4883C060 		addq	$96, %rax
 219 02b8 C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 219      A0120000 
 220 02c0 C5FD5880 		vaddpd	480(%rax), %ymm0, %ymm0
 220      E0010000 
 221 02c8 C5FD2940 		vmovapd	%ymm0, -96(%rax)
 221      A0
 222 02cd C59D5980 		vmulpd	-1792(%rax), %ymm12, %ymm0
 222      00F9FFFF 
GAS LISTING /tmp/ccpWqck0.s 			page 7


 223 02d5 C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 223      A0120000 
 224 02dd C5FD5880 		vaddpd	512(%rax), %ymm0, %ymm0
 224      00020000 
 225 02e5 C5FD2940 		vmovapd	%ymm0, -64(%rax)
 225      C0
 226 02ea C59D5980 		vmulpd	-1760(%rax), %ymm12, %ymm0
 226      20F9FFFF 
 227 02f2 C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 227      A0120000 
 228 02fa C5FD5880 		vaddpd	544(%rax), %ymm0, %ymm0
 228      20020000 
 229 0302 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 229      E0
 230 0307 4C39C2   		cmpq	%r8, %rdx
 231 030a 759C     		jne	.L17
 232 030c 488D8C24 		leaq	4384(%rsp), %rcx
 232      20110000 
 233 0314 4C89CA   		movq	%r9, %rdx
 234 0317 4889C8   		movq	%rcx, %rax
 235 031a 660F1F44 		.p2align 4,,10
 235      0000
 236              		.p2align 3
 237              	.L19:
 238 0320 C5FD2800 		vmovapd	(%rax), %ymm0
 239 0324 4883C060 		addq	$96, %rax
 240 0328 4883C220 		addq	$32, %rdx
 241 032c C5FD2848 		vmovapd	-64(%rax), %ymm1
 241      C0
 242 0331 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
 242      E0
 243 0336 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 244 033a C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 245 033e C5FD2990 		vmovapd	%ymm2, -3552(%rax)
 245      20F2FFFF 
 246 0346 C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 246      E0
 247 034b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 248 034f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 249 0353 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 250 0357 C5FD2990 		vmovapd	%ymm2, -3520(%rax)
 250      40F2FFFF 
 251 035f C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
 251      E0
 252 0364 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 253 0368 C5FD2980 		vmovapd	%ymm0, -3488(%rax)
 253      60F2FFFF 
 254 0370 4839F0   		cmpq	%rsi, %rax
 255 0373 75AB     		jne	.L19
 256 0375 488D9424 		leaq	928(%rsp), %rdx
 256      A0030000 
 257 037d 4889D0   		movq	%rdx, %rax
 258              		.p2align 4,,10
 259              		.p2align 3
 260              	.L21:
 261 0380 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 261      00000000 
GAS LISTING /tmp/ccpWqck0.s 			page 8


 262 0388 4883C060 		addq	$96, %rax
 263 038c 4883C220 		addq	$32, %rdx
 264 0390 C5F55940 		vmulpd	-96(%rax), %ymm1, %ymm0
 264      A0
 265 0395 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 265      00000000 
 266 039d C5F55988 		vmulpd	1632(%rax), %ymm1, %ymm1
 266      60060000 
 267 03a5 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 268 03a9 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 268      00000000 
 269 03b1 C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 269      A0120000 
 270 03b9 C5FD5880 		vaddpd	3936(%rax), %ymm0, %ymm0
 270      600F0000 
 271 03c1 C5FD2980 		vmovapd	%ymm0, 3360(%rax)
 271      200D0000 
 272 03c9 C5F55940 		vmulpd	-64(%rax), %ymm1, %ymm0
 272      C0
 273 03ce C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 273      00000000 
 274 03d6 C5F55988 		vmulpd	1664(%rax), %ymm1, %ymm1
 274      80060000 
 275 03de C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 276 03e2 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 276      00000000 
 277 03ea C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 277      A0120000 
 278 03f2 C5FD5880 		vaddpd	3968(%rax), %ymm0, %ymm0
 278      800F0000 
 279 03fa C5FD2980 		vmovapd	%ymm0, 3392(%rax)
 279      400D0000 
 280 0402 C5F55940 		vmulpd	-32(%rax), %ymm1, %ymm0
 280      E0
 281 0407 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 281      00000000 
 282 040f C5F55988 		vmulpd	1696(%rax), %ymm1, %ymm1
 282      A0060000 
 283 0417 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 284 041b C5FD5982 		vmulpd	4768(%rdx), %ymm0, %ymm0
 284      A0120000 
 285 0423 C5FD5880 		vaddpd	4000(%rax), %ymm0, %ymm0
 285      A00F0000 
 286 042b C5FD2980 		vmovapd	%ymm0, 3424(%rax)
 286      600D0000 
 287 0433 4839F8   		cmpq	%rdi, %rax
 288 0436 0F8544FF 		jne	.L21
 288      FFFF
 289 043c 4C89C8   		movq	%r9, %rax
 290 043f 4889CA   		movq	%rcx, %rdx
 291              		.p2align 4,,10
 292 0442 660F1F44 		.p2align 3
 292      0000
 293              	.L23:
 294 0448 C5FD2802 		vmovapd	(%rdx), %ymm0
 295 044c 4883C260 		addq	$96, %rdx
 296 0450 4883C020 		addq	$32, %rax
GAS LISTING /tmp/ccpWqck0.s 			page 9


 297 0454 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 297      C0
 298 0459 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 298      E0
 299 045e C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 300 0462 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 301 0466 C5FD2992 		vmovapd	%ymm2, -1248(%rdx)
 301      20FBFFFF 
 302 046e C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 302      E0
 303 0473 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 304 0477 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 305 047b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 306 047f C5FD2992 		vmovapd	%ymm2, -1216(%rdx)
 306      40FBFFFF 
 307 0487 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 307      E0
 308 048c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 309 0490 C5FD2982 		vmovapd	%ymm0, -1184(%rdx)
 309      60FBFFFF 
 310 0498 4839D6   		cmpq	%rdx, %rsi
 311 049b 75AB     		jne	.L23
 312 049d 488D8424 		leaq	928(%rsp), %rax
 312      A0030000 
 313 04a5 C5FD2825 		vmovapd	.LC9(%rip), %ymm4
 313      00000000 
 314 04ad 31D2     		xorl	%edx, %edx
 315 04af 4C8D98C0 		leaq	4800(%rax), %r11
 315      120000
 316 04b6 662E0F1F 		.p2align 4,,10
 316      84000000 
 316      0000
 317              		.p2align 3
 318              	.L25:
 319 04c0 C5FD282D 		vmovapd	.LC7(%rip), %ymm5
 319      00000000 
 320 04c8 4E8D141A 		leaq	(%rdx,%r11), %r10
 321 04cc 4883C220 		addq	$32, %rdx
 322 04d0 C5DD5990 		vmulpd	1728(%rax), %ymm4, %ymm2
 322      C0060000 
 323 04d8 4883C060 		addq	$96, %rax
 324 04dc C5D55988 		vmulpd	2208(%rax), %ymm5, %ymm1
 324      A0080000 
 325 04e4 C5FD282D 		vmovapd	.LC8(%rip), %ymm5
 325      00000000 
 326 04ec C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 326      A0
 327 04f1 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 328 04f5 C5DD5990 		vmulpd	1664(%rax), %ymm4, %ymm2
 328      80060000 
 329 04fd C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 330 0501 C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 330      00000000 
 331 0509 C5F55988 		vmulpd	2240(%rax), %ymm1, %ymm1
 331      C0080000 
 332 0511 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 332      02
GAS LISTING /tmp/ccpWqck0.s 			page 10


 333 0516 C5FD5880 		vaddpd	3936(%rax), %ymm0, %ymm0
 333      600F0000 
 334 051e C5FD2980 		vmovapd	%ymm0, 3360(%rax)
 334      200D0000 
 335 0526 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 335      C0
 336 052b C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 337 052f C5DD5990 		vmulpd	1696(%rax), %ymm4, %ymm2
 337      A0060000 
 338 0537 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 339 053b C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 339      00000000 
 340 0543 C5F55988 		vmulpd	2272(%rax), %ymm1, %ymm1
 340      E0080000 
 341 054b C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 341      02
 342 0550 C5FD5880 		vaddpd	3968(%rax), %ymm0, %ymm0
 342      800F0000 
 343 0558 C5FD2980 		vmovapd	%ymm0, 3392(%rax)
 343      400D0000 
 344 0560 C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 344      E0
 345 0565 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 346 0569 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 347 056d C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 347      02
 348 0572 C5FD5880 		vaddpd	4000(%rax), %ymm0, %ymm0
 348      A00F0000 
 349 057a C5FD2980 		vmovapd	%ymm0, 3424(%rax)
 349      600D0000 
 350 0582 4881FAC0 		cmpq	$192, %rdx
 350      000000
 351 0589 0F8531FF 		jne	.L25
 351      FFFF
 352 058f 4C89C8   		movq	%r9, %rax
 353 0592 4889CA   		movq	%rcx, %rdx
 354              		.p2align 4,,10
 355 0595 0F1F00   		.p2align 3
 356              	.L27:
 357 0598 C5FD2802 		vmovapd	(%rdx), %ymm0
 358 059c 4883C260 		addq	$96, %rdx
 359 05a0 4883C020 		addq	$32, %rax
 360 05a4 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 360      C0
 361 05a9 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 361      E0
 362 05ae C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 363 05b2 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 364 05b6 C5FD2992 		vmovapd	%ymm2, -672(%rdx)
 364      60FDFFFF 
 365 05be C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 365      E0
 366 05c3 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 367 05c7 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 368 05cb C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 369 05cf C5FD2992 		vmovapd	%ymm2, -640(%rdx)
 369      80FDFFFF 
GAS LISTING /tmp/ccpWqck0.s 			page 11


 370 05d7 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 370      E0
 371 05dc C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 372 05e0 C5FD2982 		vmovapd	%ymm0, -608(%rdx)
 372      A0FDFFFF 
 373 05e8 4839D6   		cmpq	%rdx, %rsi
 374 05eb 75AB     		jne	.L27
 375 05ed 488D8424 		leaq	928(%rsp), %rax
 375      A0030000 
 376 05f5 31D2     		xorl	%edx, %edx
 377 05f7 4C8D98C0 		leaq	4800(%rax), %r11
 377      120000
 378 05fe 6690     		.p2align 4,,10
 379              		.p2align 3
 380              	.L29:
 381 0600 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 381      00000000 
 382 0608 4E8D141A 		leaq	(%rdx,%r11), %r10
 383 060c 4883C220 		addq	$32, %rdx
 384 0610 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 384      00000000 
 385 0618 4883C060 		addq	$96, %rax
 386 061c C5D55990 		vmulpd	2208(%rax), %ymm5, %ymm2
 386      A0080000 
 387 0624 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 387      00000000 
 388 062c C5DD5940 		vmulpd	-96(%rax), %ymm4, %ymm0
 388      A0
 389 0631 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 389      00000000 
 390 0639 C5D559A0 		vmulpd	1632(%rax), %ymm5, %ymm4
 390      60060000 
 391 0641 C5FD282D 		vmovapd	.LC12(%rip), %ymm5
 391      00000000 
 392 0649 C5F55988 		vmulpd	2784(%rax), %ymm1, %ymm1
 392      E00A0000 
 393 0651 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 394 0655 C5FD2825 		vmovapd	.LC11(%rip), %ymm4
 394      00000000 
 395 065d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 396 0661 C5DD5990 		vmulpd	2240(%rax), %ymm4, %ymm2
 396      C0080000 
 397 0669 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 397      00000000 
 398 0671 C5DD59A0 		vmulpd	1664(%rax), %ymm4, %ymm4
 398      80060000 
 399 0679 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 400 067d C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 400      00000000 
 401 0685 C5F55988 		vmulpd	2816(%rax), %ymm1, %ymm1
 401      000B0000 
 402 068d C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 402      02
 403 0692 C5FD5880 		vaddpd	3936(%rax), %ymm0, %ymm0
 403      600F0000 
 404 069a C5FD2980 		vmovapd	%ymm0, 3360(%rax)
 404      200D0000 
GAS LISTING /tmp/ccpWqck0.s 			page 12


 405 06a2 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 405      C0
 406 06a7 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 406      00000000 
 407 06af C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 408 06b3 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 408      00000000 
 409 06bb C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 410 06bf C5D55990 		vmulpd	2272(%rax), %ymm5, %ymm2
 410      E0080000 
 411 06c7 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 411      00000000 
 412 06cf C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 413 06d3 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 413      00000000 
 414 06db C5F55988 		vmulpd	2848(%rax), %ymm1, %ymm1
 414      200B0000 
 415 06e3 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 415      02
 416 06e8 C5FD5880 		vaddpd	3968(%rax), %ymm0, %ymm0
 416      800F0000 
 417 06f0 C5FD2980 		vmovapd	%ymm0, 3392(%rax)
 417      400D0000 
 418 06f8 C5DD5940 		vmulpd	-32(%rax), %ymm4, %ymm0
 418      E0
 419 06fd C5D559A0 		vmulpd	1696(%rax), %ymm5, %ymm4
 419      A0060000 
 420 0705 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 421 0709 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 422 070d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 423 0711 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 423      02
 424 0716 C5FD5880 		vaddpd	4000(%rax), %ymm0, %ymm0
 424      A00F0000 
 425 071e C5FD2980 		vmovapd	%ymm0, 3424(%rax)
 425      600D0000 
 426 0726 4881FAC0 		cmpq	$192, %rdx
 426      000000
 427 072d 0F85CDFE 		jne	.L29
 427      FFFF
 428 0733 4C89C8   		movq	%r9, %rax
 429 0736 4889CA   		movq	%rcx, %rdx
 430 0739 0F1F8000 		.p2align 4,,10
 430      000000
 431              		.p2align 3
 432              	.L31:
 433 0740 C5FD2802 		vmovapd	(%rdx), %ymm0
 434 0744 4883C260 		addq	$96, %rdx
 435 0748 4883C020 		addq	$32, %rax
 436 074c C5FD284A 		vmovapd	-64(%rdx), %ymm1
 436      C0
 437 0751 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 437      E0
 438 0756 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 439 075a C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 440 075e C5FD2992 		vmovapd	%ymm2, -2400(%rdx)
 440      A0F6FFFF 
GAS LISTING /tmp/ccpWqck0.s 			page 13


 441 0766 C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 441      E0
 442 076b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 443 076f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 444 0773 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 445 0777 C5FD2992 		vmovapd	%ymm2, -2368(%rdx)
 445      C0F6FFFF 
 446 077f C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 446      E0
 447 0784 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 448 0788 C5FD2982 		vmovapd	%ymm0, -2336(%rdx)
 448      E0F6FFFF 
 449 0790 4839D6   		cmpq	%rdx, %rsi
 450 0793 75AB     		jne	.L31
 451 0795 488D8424 		leaq	928(%rsp), %rax
 451      A0030000 
 452 079d 31D2     		xorl	%edx, %edx
 453 079f 4C8D98C0 		leaq	4800(%rax), %r11
 453      120000
 454 07a6 662E0F1F 		.p2align 4,,10
 454      84000000 
 454      0000
 455              		.p2align 3
 456              	.L33:
 457 07b0 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 457      00000000 
 458 07b8 4E8D141A 		leaq	(%rdx,%r11), %r10
 459 07bc 4883C220 		addq	$32, %rdx
 460 07c0 C5FD2835 		vmovapd	.LC16(%rip), %ymm6
 460      00000000 
 461 07c8 4883C060 		addq	$96, %rax
 462 07cc C5DD5990 		vmulpd	2784(%rax), %ymm4, %ymm2
 462      E00A0000 
 463 07d4 C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 463      00000000 
 464 07dc C5CD59A0 		vmulpd	2208(%rax), %ymm6, %ymm4
 464      A0080000 
 465 07e4 C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 465      00000000 
 466 07ec C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 466      A0
 467 07f1 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 467      00000000 
 468 07f9 C5CD59A8 		vmulpd	1632(%rax), %ymm6, %ymm5
 468      60060000 
 469 0801 C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 469      00000000 
 470 0809 C5F55988 		vmulpd	1056(%rax), %ymm1, %ymm1
 470      20040000 
 471 0811 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 472 0815 C5FD282D 		vmovapd	.LC16(%rip), %ymm5
 472      00000000 
 473 081d C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 474 0821 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 474      00000000 
 475 0829 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 476 082d C5DD5990 		vmulpd	2816(%rax), %ymm4, %ymm2
GAS LISTING /tmp/ccpWqck0.s 			page 14


 476      000B0000 
 477 0835 C5D559A0 		vmulpd	2240(%rax), %ymm5, %ymm4
 477      C0080000 
 478 083d C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 478      00000000 
 479 0845 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 480 0849 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 480      00000000 
 481 0851 C5D559A8 		vmulpd	1664(%rax), %ymm5, %ymm5
 481      80060000 
 482 0859 C5F55988 		vmulpd	1088(%rax), %ymm1, %ymm1
 482      40040000 
 483 0861 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 483      02
 484 0866 C5FD5880 		vaddpd	3936(%rax), %ymm0, %ymm0
 484      600F0000 
 485 086e C5FD2980 		vmovapd	%ymm0, 3360(%rax)
 485      200D0000 
 486 0876 C5CD5940 		vmulpd	-64(%rax), %ymm6, %ymm0
 486      C0
 487 087b C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 488 087f C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 488      00000000 
 489 0887 C5D559A8 		vmulpd	1696(%rax), %ymm5, %ymm5
 489      A0060000 
 490 088f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 491 0893 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 491      00000000 
 492 089b C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 493 089f C5DD5990 		vmulpd	2848(%rax), %ymm4, %ymm2
 493      200B0000 
 494 08a7 C5FD2825 		vmovapd	.LC16(%rip), %ymm4
 494      00000000 
 495 08af C5DD59A0 		vmulpd	2272(%rax), %ymm4, %ymm4
 495      E0080000 
 496 08b7 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 497 08bb C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 497      00000000 
 498 08c3 C5F55988 		vmulpd	1120(%rax), %ymm1, %ymm1
 498      60040000 
 499 08cb C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 499      02
 500 08d0 C5FD5880 		vaddpd	3968(%rax), %ymm0, %ymm0
 500      800F0000 
 501 08d8 C5FD2980 		vmovapd	%ymm0, 3392(%rax)
 501      400D0000 
 502 08e0 C5CD5940 		vmulpd	-32(%rax), %ymm6, %ymm0
 502      E0
 503 08e5 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 504 08e9 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 505 08ed C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 506 08f1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 507 08f5 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 507      02
 508 08fa C5FD5880 		vaddpd	4000(%rax), %ymm0, %ymm0
 508      A00F0000 
 509 0902 C5FD2980 		vmovapd	%ymm0, 3424(%rax)
GAS LISTING /tmp/ccpWqck0.s 			page 15


 509      600D0000 
 510 090a 4881FAC0 		cmpq	$192, %rdx
 510      000000
 511 0911 0F8599FE 		jne	.L33
 511      FFFF
 512 0917 4C89CA   		movq	%r9, %rdx
 513 091a 4889C8   		movq	%rcx, %rax
 514 091d 0F1F00   		.p2align 4,,10
 515              		.p2align 3
 516              	.L35:
 517 0920 C5FD2800 		vmovapd	(%rax), %ymm0
 518 0924 4883C060 		addq	$96, %rax
 519 0928 4883C220 		addq	$32, %rdx
 520 092c C5FD2848 		vmovapd	-64(%rax), %ymm1
 520      C0
 521 0931 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
 521      E0
 522 0936 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 523 093a C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 524 093e C5FD2990 		vmovapd	%ymm2, -2976(%rax)
 524      60F4FFFF 
 525 0946 C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 525      E0
 526 094b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 527 094f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 528 0953 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 529 0957 C5FD2990 		vmovapd	%ymm2, -2944(%rax)
 529      80F4FFFF 
 530 095f C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
 530      E0
 531 0964 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 532 0968 C5FD2980 		vmovapd	%ymm0, -2912(%rax)
 532      A0F4FFFF 
 533 0970 4839C6   		cmpq	%rax, %rsi
 534 0973 75AB     		jne	.L35
 535 0975 488D8424 		leaq	928(%rsp), %rax
 535      A0030000 
 536 097d C5FD280D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 536      00000000 
 537 0985 4C8D9C24 		leaq	2080(%rsp), %r11
 537      20080000 
 538 098d 4989FA   		movq	%rdi, %r10
 539 0990 4889C1   		movq	%rax, %rcx
 540              		.p2align 4,,10
 541 0993 0F1F4400 		.p2align 3
 541      00
 542              	.L39:
 543 0998 4C89D0   		movq	%r10, %rax
 544 099b BA030000 		movl	$3, %edx
 544      00
 545              	.L37:
 546 09a0 C5FD2835 		vmovapd	.LC19(%rip), %ymm6
 546      00000000 
 547 09a8 4883C020 		addq	$32, %rax
 548 09ac C5FD282D 		vmovapd	.LC22(%rip), %ymm5
 548      00000000 
 549 09b4 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
GAS LISTING /tmp/ccpWqck0.s 			page 16


 549      E0
 550 09b9 C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 550      00000000 
 551 09c1 C5D559A8 		vmulpd	1120(%rax), %ymm5, %ymm5
 551      60040000 
 552 09c9 C5CD59A0 		vmulpd	2272(%rax), %ymm6, %ymm4
 552      E0080000 
 553 09d1 C5FD2835 		vmovapd	.LC21(%rip), %ymm6
 553      00000000 
 554 09d9 C5CD5980 		vmulpd	1696(%rax), %ymm6, %ymm0
 554      A0060000 
 555 09e1 C5FD2835 		vmovapd	.LC23(%rip), %ymm6
 555      00000000 
 556 09e9 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 557 09ed C5FD282D 		vmovapd	.LC24(%rip), %ymm5
 557      00000000 
 558 09f5 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 559 09f9 C5D559A0 		vmulpd	544(%rax), %ymm5, %ymm4
 559      20020000 
 560 0a01 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 561 0a05 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 561      E0
 562 0a0a C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 562      00000000 
 563 0a12 C5CD59A8 		vmulpd	2272(%rax), %ymm6, %ymm5
 563      E0080000 
 564 0a1a C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 564      00000000 
 565 0a22 C5FD5981 		vmulpd	4800(%rcx), %ymm0, %ymm0
 565      C0120000 
 566 0a2a C5FD5880 		vaddpd	3424(%rax), %ymm0, %ymm0
 566      600D0000 
 567 0a32 C5FD2980 		vmovapd	%ymm0, 2848(%rax)
 567      200B0000 
 568 0a3a C5CD5980 		vmulpd	1696(%rax), %ymm6, %ymm0
 568      A0060000 
 569 0a42 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 569      00000000 
 570 0a4a C5CD59B0 		vmulpd	1120(%rax), %ymm6, %ymm6
 570      60040000 
 571 0a52 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 572 0a56 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 573 0a5a C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 574 0a5e C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 575 0a62 C5F55490 		vandpd	2848(%rax), %ymm1, %ymm2
 575      200B0000 
 576 0a6a C5FD5981 		vmulpd	4800(%rcx), %ymm0, %ymm0
 576      C0120000 
 577 0a72 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 578 0a76 C5C558D2 		vaddpd	%ymm2, %ymm7, %ymm2
 579 0a7a C5FD2980 		vmovapd	%ymm0, -608(%rax)
 579      A0FDFFFF 
 580 0a82 C5ED5EC0 		vdivpd	%ymm0, %ymm2, %ymm0
 581 0a86 C5FD2950 		vmovapd	%ymm2, -32(%rax)
 581      E0
 582 0a8b C5FD54C1 		vandpd	%ymm1, %ymm0, %ymm0
 583 0a8f C5FD2980 		vmovapd	%ymm0, 544(%rax)
GAS LISTING /tmp/ccpWqck0.s 			page 17


 583      20020000 
 584 0a97 83EA01   		subl	$1, %edx
 585 0a9a 0F8500FF 		jne	.L37
 585      FFFF
 586 0aa0 4983C260 		addq	$96, %r10
 587 0aa4 4883C120 		addq	$32, %rcx
 588 0aa8 4D39DA   		cmpq	%r11, %r10
 589 0aab 0F85E7FE 		jne	.L39
 589      FFFF
 590 0ab1 C5FD2884 		vmovapd	2080(%rsp), %ymm0
 590      24200800 
 590      00
 591 0aba 4889F2   		movq	%rsi, %rdx
 592 0abd 488D8424 		leaq	5728(%rsp), %rax
 592      60160000 
 593 0ac5 C5FD28A4 		vmovapd	192(%rsp), %ymm4
 593      24C00000 
 593      00
 594 0ace 4C8D9424 		leaq	5536(%rsp), %r10
 594      A0150000 
 595 0ad6 C5FD5D84 		vminpd	2112(%rsp), %ymm0, %ymm0
 595      24400800 
 595      00
 596 0adf C5FD298C 		vmovapd	%ymm1, 256(%rsp)
 596      24000100 
 596      00
 597 0ae8 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 597      24200100 
 597      00
 598 0af1 C5FD5D84 		vminpd	2144(%rsp), %ymm0, %ymm0
 598      24600800 
 598      00
 599 0afa C5FD2984 		vmovapd	%ymm0, 1504(%rsp)
 599      24E00500 
 599      00
 600 0b03 C5FD2884 		vmovapd	2176(%rsp), %ymm0
 600      24800800 
 600      00
 601 0b0c C5FD5D84 		vminpd	2208(%rsp), %ymm0, %ymm0
 601      24A00800 
 601      00
 602 0b15 C5FD5D84 		vminpd	2240(%rsp), %ymm0, %ymm0
 602      24C00800 
 602      00
 603 0b1e C5FD2984 		vmovapd	%ymm0, 1536(%rsp)
 603      24000600 
 603      00
 604 0b27 C5FD2884 		vmovapd	2272(%rsp), %ymm0
 604      24E00800 
 604      00
 605 0b30 C5FD5D84 		vminpd	2304(%rsp), %ymm0, %ymm0
 605      24000900 
 605      00
 606 0b39 C5FD5D84 		vminpd	2336(%rsp), %ymm0, %ymm0
 606      24200900 
 606      00
 607 0b42 C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
GAS LISTING /tmp/ccpWqck0.s 			page 18


 607      24200600 
 607      00
 608 0b4b C5FD2884 		vmovapd	2368(%rsp), %ymm0
 608      24400900 
 608      00
 609 0b54 C5FD5D84 		vminpd	2400(%rsp), %ymm0, %ymm0
 609      24600900 
 609      00
 610 0b5d C5FD5D84 		vminpd	2432(%rsp), %ymm0, %ymm0
 610      24800900 
 610      00
 611 0b66 C5FD2984 		vmovapd	%ymm0, 1600(%rsp)
 611      24400600 
 611      00
 612 0b6f C5FD2884 		vmovapd	2464(%rsp), %ymm0
 612      24A00900 
 612      00
 613 0b78 C5FD5D84 		vminpd	2496(%rsp), %ymm0, %ymm0
 613      24C00900 
 613      00
 614 0b81 C5FD5D84 		vminpd	2528(%rsp), %ymm0, %ymm0
 614      24E00900 
 614      00
 615 0b8a C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 615      24600600 
 615      00
 616 0b93 C5FD2884 		vmovapd	2560(%rsp), %ymm0
 616      24000A00 
 616      00
 617 0b9c C5FD5D84 		vminpd	2592(%rsp), %ymm0, %ymm0
 617      24200A00 
 617      00
 618 0ba5 C5FD5D84 		vminpd	2624(%rsp), %ymm0, %ymm0
 618      24400A00 
 618      00
 619 0bae C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 619      24800600 
 619      00
 620 0bb7 E9ED0000 		jmp	.L45
 620      00
 621 0bbc 0F1F4000 		.p2align 4,,10
 622              		.p2align 3
 623              	.L43:
 624 0bc0 C5FD2800 		vmovapd	(%rax), %ymm0
 625 0bc4 C58DC290 		vcmppd	$2, -4224(%rax), %ymm14, %ymm2
 625      80EFFFFF 
 625      02
 626 0bcd C5FD280D 		vmovapd	.LC71(%rip), %ymm1
 626      00000000 
 627 0bd5 4883C260 		addq	$96, %rdx
 628 0bd9 4883C020 		addq	$32, %rax
 629 0bdd C5FDC205 		vcmppd	$2, .LC70(%rip), %ymm0, %ymm0
 629      00000000 
 629      02
 630 0be6 C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 631 0bea C5F5C2D6 		vcmppd	$1, %ymm6, %ymm1, %ymm2
 631      01
GAS LISTING /tmp/ccpWqck0.s 			page 19


 632 0bef C4E34D4B 		vblendvpd	%ymm2, %ymm1, %ymm6, %ymm6
 632      F120
 633 0bf5 C5FD280D 		vmovapd	.LC73(%rip), %ymm1
 633      00000000 
 634 0bfd C4C14DC2 		vcmppd	$1, %ymm12, %ymm6, %ymm2
 634      D401
 635 0c03 C4C34D4B 		vblendvpd	%ymm2, %ymm12, %ymm6, %ymm6
 635      F420
 636 0c09 C5FD29B0 		vmovapd	%ymm6, -3680(%rax)
 636      A0F1FFFF 
 637 0c11 C5FD2852 		vmovapd	-96(%rdx), %ymm2
 637      A0
 638 0c16 C4E36D4B 		vblendvpd	%ymm0, -672(%rdx), %ymm2, %ymm2
 638      9260FDFF 
 638      FF00
 639 0c20 C5FD2952 		vmovapd	%ymm2, -96(%rdx)
 639      A0
 640 0c25 C5FD2852 		vmovapd	-64(%rdx), %ymm2
 640      C0
 641 0c2a C4E36D4B 		vblendvpd	%ymm0, -640(%rdx), %ymm2, %ymm2
 641      9280FDFF 
 641      FF00
 642 0c34 C5FD2952 		vmovapd	%ymm2, -64(%rdx)
 642      C0
 643 0c39 C5FD2852 		vmovapd	-32(%rdx), %ymm2
 643      E0
 644 0c3e C4E36D4B 		vblendvpd	%ymm0, -608(%rdx), %ymm2, %ymm2
 644      92A0FDFF 
 644      FF00
 645 0c48 C5FD2952 		vmovapd	%ymm2, -32(%rdx)
 645      E0
 646 0c4d C5FD2890 		vmovapd	-224(%rax), %ymm2
 646      20FFFFFF 
 647 0c55 C5ED5860 		vaddpd	-32(%rax), %ymm2, %ymm4
 647      E0
 648 0c5a C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 648      C400
 649 0c60 C5FD2980 		vmovapd	%ymm0, -224(%rax)
 649      20FFFFFF 
 650 0c68 C5FD2880 		vmovapd	-3680(%rax), %ymm0
 650      A0F1FFFF 
 651 0c70 C5FD5940 		vmulpd	-32(%rax), %ymm0, %ymm0
 651      E0
 652 0c75 C5FD5905 		vmulpd	.LC72(%rip), %ymm0, %ymm0
 652      00000000 
 653 0c7d C5F5C2D0 		vcmppd	$1, %ymm0, %ymm1, %ymm2
 653      01
 654 0c82 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 654      C120
 655 0c88 C5FDC215 		vcmppd	$1, .LC70(%rip), %ymm0, %ymm2
 655      00000000 
 655      01
 656 0c91 C4E37D4B 		vblendvpd	%ymm2, .LC70(%rip), %ymm0, %ymm0
 656      05000000 
 656      0020
 657 0c9b C5FD2940 		vmovapd	%ymm0, -32(%rax)
 657      E0
GAS LISTING /tmp/ccpWqck0.s 			page 20


 658 0ca0 4C39D2   		cmpq	%r10, %rdx
 659 0ca3 0F843F04 		je	.L52
 659      0000
 660              	.L45:
 661 0ca9 C5FD28B0 		vmovapd	-4224(%rax), %ymm6
 661      80EFFFFF 
 662 0cb1 C5F1EFC9 		vpxor	%xmm1, %xmm1, %xmm1
 663 0cb5 C5FD2815 		vmovapd	.LC33(%rip), %ymm2
 663      00000000 
 664 0cbd C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 664      F501
 665 0cc3 C5F928E6 		vmovapd	%xmm6, %xmm4
 666 0cc7 C559DB0D 		vpand	.LC29(%rip), %xmm4, %xmm9
 666      00000000 
 667 0ccf C5B973D4 		vpsrlq	$52, %xmm4, %xmm8
 667      34
 668 0cd4 C5D1DB05 		vpand	.LC29(%rip), %xmm5, %xmm0
 668      00000000 
 669 0cdc C539EB05 		vpor	.LC31(%rip), %xmm8, %xmm8
 669      00000000 
 670 0ce4 C531EB0D 		vpor	.LC30(%rip), %xmm9, %xmm9
 670      00000000 
 671 0cec C5F9EB05 		vpor	.LC30(%rip), %xmm0, %xmm0
 671      00000000 
 672 0cf4 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 672      C801
 673 0cfa C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 673      34
 674 0cff C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 674      00000000 
 675 0d07 C4C16DC2 		vcmppd	$1, %ymm9, %ymm2, %ymm2
 675      D101
 676 0d0d C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 676      D201
 677 0d13 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 677      C001
 678 0d19 C5F928C2 		vmovapd	%xmm2, %xmm0
 679 0d1d C4C16D54 		vandpd	%ymm14, %ymm2, %ymm2
 679      D6
 680 0d22 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 680      00000000 
 681 0d2a C53D5C05 		vsubpd	.LC32(%rip), %ymm8, %ymm8
 681      00000000 
 682 0d32 C5F95705 		vxorpd	.LC34(%rip), %xmm0, %xmm0
 682      00000000 
 683 0d3a C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 683      C201
 684 0d40 C53D58C2 		vaddpd	%ymm2, %ymm8, %ymm8
 685 0d44 C4C17D54 		vandpd	%ymm9, %ymm0, %ymm0
 685      C1
 686 0d49 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 686      C1
 687 0d4e C4C17D5C 		vsubpd	%ymm14, %ymm0, %ymm0
 687      C6
 688 0d53 C57D591D 		vmulpd	.LC38(%rip), %ymm0, %ymm11
 688      00000000 
 689 0d5b C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
GAS LISTING /tmp/ccpWqck0.s 			page 21


 690 0d5f C57D593D 		vmulpd	.LC36(%rip), %ymm0, %ymm15
 690      00000000 
 691 0d67 C57D5915 		vmulpd	.LC40(%rip), %ymm0, %ymm10
 691      00000000 
 692 0d6f C525581D 		vaddpd	.LC39(%rip), %ymm11, %ymm11
 692      00000000 
 693 0d77 C56D59CA 		vmulpd	%ymm2, %ymm2, %ymm9
 694 0d7b C505583D 		vaddpd	.LC37(%rip), %ymm15, %ymm15
 694      00000000 
 695 0d83 C52D5815 		vaddpd	.LC41(%rip), %ymm10, %ymm10
 695      00000000 
 696 0d8b C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 696      D9
 697 0d90 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 697      DF
 698 0d95 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 699 0d99 C57D583D 		vaddpd	.LC44(%rip), %ymm0, %ymm15
 699      00000000 
 700 0da1 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 700      D3
 701 0da6 C57D59DA 		vmulpd	%ymm2, %ymm0, %ymm11
 702 0daa C4410559 		vmulpd	%ymm9, %ymm15, %ymm9
 702      C9
 703 0daf C4412D59 		vmulpd	%ymm11, %ymm10, %ymm10
 703      D3
 704 0db4 C57D591D 		vmulpd	.LC42(%rip), %ymm0, %ymm11
 704      00000000 
 705 0dbc C525581D 		vaddpd	.LC43(%rip), %ymm11, %ymm11
 705      00000000 
 706 0dc4 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 706      DB
 707 0dc9 C57D590D 		vmulpd	.LC45(%rip), %ymm0, %ymm9
 707      00000000 
 708 0dd1 C535580D 		vaddpd	.LC46(%rip), %ymm9, %ymm9
 708      00000000 
 709 0dd9 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 710 0ddd C5ED5915 		vmulpd	.LC48(%rip), %ymm2, %ymm2
 710      00000000 
 711 0de5 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 711      DB
 712 0dea C53D590D 		vmulpd	.LC47(%rip), %ymm8, %ymm9
 712      00000000 
 713 0df2 C53D5905 		vmulpd	.LC49(%rip), %ymm8, %ymm8
 713      00000000 
 714 0dfa C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 715 0dfe C5E973F4 		vpsllq	$1, %xmm4, %xmm2
 715      01
 716 0e03 C4412D5E 		vdivpd	%ymm11, %ymm10, %ymm10
 716      D3
 717 0e08 C4413558 		vaddpd	%ymm10, %ymm9, %ymm10
 717      D2
 718 0e0d C5AD58C0 		vaddpd	%ymm0, %ymm10, %ymm0
 719 0e11 C569DB15 		vpand	.LC50(%rip), %xmm2, %xmm10
 719      00000000 
 720 0e19 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 721 0e1d C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 721      01
GAS LISTING /tmp/ccpWqck0.s 			page 22


 722 0e22 C539DB0D 		vpand	.LC50(%rip), %xmm8, %xmm9
 722      00000000 
 723 0e2a C4622929 		vpcmpeqq	.LC50(%rip), %xmm10, %xmm10
 723      15000000 
 723      00
 724 0e33 C4623929 		vpcmpeqq	.LC50(%rip), %xmm8, %xmm8
 724      05000000 
 724      00
 725 0e3c C529EF15 		vpxor	.LC82(%rip), %xmm10, %xmm10
 725      00000000 
 726 0e44 C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 726      0D000000 
 726      00
 727 0e4d C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 727      00000000 
 728 0e55 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm10
 728      D101
 729 0e5b C4437D19 		vextractf128	$0x1, %ymm10, %xmm9
 729      D101
 730 0e61 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 730      00000000 
 731 0e69 C531570D 		vxorpd	.LC34(%rip), %xmm9, %xmm9
 731      00000000 
 732 0e71 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm9
 732      C901
 733 0e77 C54DC215 		vcmppd	$1, .LC51(%rip), %ymm6, %ymm10
 733      00000000 
 733      01
 734 0e80 C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 734      D9
 735 0e85 C4637D4B 		vblendvpd	%ymm10, .LC52(%rip), %ymm0, %ymm10
 735      15000000 
 735      00A0
 736 0e8f C4437D19 		vextractf128	$0x1, %ymm11, %xmm15
 736      DF01
 737 0e95 C4412156 		vorpd	%xmm15, %xmm11, %xmm11
 737      DF
 738 0e9a C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 738      FF
 739 0e9f C4C17950 		vmovmskpd	%xmm11, %ecx
 739      CB
 740 0ea4 C551DB1D 		vpand	.LC54(%rip), %xmm5, %xmm11
 740      00000000 
 741 0eac C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 741      1F
 742 0eb1 85C9     		testl	%ecx, %ecx
 743 0eb3 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 743      DF
 744 0eb8 C559DB3D 		vpand	.LC54(%rip), %xmm4, %xmm15
 744      00000000 
 745 0ec0 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 745      1F
 746 0ec5 C4620129 		vpcmpeqq	%xmm1, %xmm15, %xmm15
 746      F9
 747 0eca C4430518 		vinsertf128	$0x1, %xmm11, %ymm15, %ymm11
 747      DB01
 748 0ed0 C4632D4B 		vblendvpd	%ymm11, 224(%rsp), %ymm10, %ymm10
GAS LISTING /tmp/ccpWqck0.s 			page 23


 748      9424E000 
 748      0000B0
 749 0edb C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 749      CE90
 750 0ee1 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 750      20
 751 0ee6 C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 751      EDCC
 752 0eec C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 752      20
 753 0ef1 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 753      E4CC
 754 0ef7 C4E26929 		vpcmpeqq	.LC50(%rip), %xmm2, %xmm6
 754      35000000 
 754      00
 755 0f00 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 755      ED01
 756 0f06 C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 756      F001
 757 0f0c C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 758 0f10 C4E3354B 		vblendvpd	%ymm6, .LC52(%rip), %ymm9, %ymm6
 758      35000000 
 758      0060
 759 0f1a 7504     		jne	.L41
 760 0f1c C5FD28F0 		vmovapd	%ymm0, %ymm6
 761              	.L41:
 762 0f20 C4C14D59 		vmulpd	%ymm12, %ymm6, %ymm6
 762      F4
 763 0f25 C5FD288C 		vmovapd	288(%rsp), %ymm1
 763      24200100 
 763      00
 764 0f2e C5CD592D 		vmulpd	.LC55(%rip), %ymm6, %ymm5
 764      00000000 
 765 0f36 C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 765      ED08
 766 0f3c C5D55905 		vmulpd	.LC56(%rip), %ymm5, %ymm0
 766      00000000 
 767 0f44 C5D55915 		vmulpd	.LC57(%rip), %ymm5, %ymm2
 767      00000000 
 768 0f4c C5D5582D 		vaddpd	.LC32(%rip), %ymm5, %ymm5
 768      00000000 
 769 0f54 C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 770 0f58 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 771 0f5c C57D591D 		vmulpd	.LC61(%rip), %ymm0, %ymm11
 771      00000000 
 772 0f64 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 772      00000000 
 773 0f6c C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 773      00000000 
 774 0f74 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 775 0f78 C525581D 		vaddpd	.LC62(%rip), %ymm11, %ymm11
 775      00000000 
 776 0f80 C52D5815 		vaddpd	.LC48(%rip), %ymm10, %ymm10
 776      00000000 
 777 0f88 C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 777      00000000 
 778 0f90 C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
GAS LISTING /tmp/ccpWqck0.s 			page 24


 779 0f94 C52559DA 		vmulpd	%ymm2, %ymm11, %ymm11
 780 0f98 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 781 0f9c C55D59CC 		vmulpd	%ymm4, %ymm4, %ymm9
 782 0fa0 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 782      C0
 783 0fa5 C57D591D 		vmulpd	.LC65(%rip), %ymm0, %ymm11
 783      00000000 
 784 0fad C52D58D0 		vaddpd	%ymm0, %ymm10, %ymm10
 785 0fb1 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 786 0fb5 C525581D 		vaddpd	.LC66(%rip), %ymm11, %ymm11
 786      00000000 
 787 0fbd C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 787      C2
 788 0fc2 C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
 788      00000000 
 789 0fca C5FD5905 		vmulpd	.LC67(%rip), %ymm0, %ymm0
 789      00000000 
 790 0fd2 C5A559D2 		vmulpd	%ymm2, %ymm11, %ymm2
 791 0fd6 C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 791      00000000 
 792 0fde C5FD5805 		vaddpd	.LC68(%rip), %ymm0, %ymm0
 792      00000000 
 793 0fe6 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 793      D2
 794 0feb C4E37D19 		vextractf128	$0x1, %ymm5, %xmm2
 794      EA01
 795 0ff1 C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 796 0ff5 C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 796      34
 797 0ffa C5E973F2 		vpsllq	$52, %xmm2, %xmm2
 797      34
 798 0fff C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
 798      C201
 799 1005 C5F928D6 		vmovapd	%xmm6, %xmm2
 800 1009 C5CD54AC 		vandpd	256(%rsp), %ymm6, %ymm5
 800      24000100 
 800      00
 801 1012 C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 801      E2
 802 1017 C5D5C22D 		vcmppd	$1, .LC69(%rip), %ymm5, %ymm5
 802      00000000 
 802      01
 803 1020 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm9
 803      C9
 804 1025 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 804      F401
 805 102b C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 805      C0
 806 1030 C5B173F4 		vpsllq	$1, %xmm4, %xmm9
 806      01
 807 1035 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 807      1F
 808 103a C531DB0D 		vpand	.LC50(%rip), %xmm9, %xmm9
 808      00000000 
 809 1042 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm8
 809      C6
 810 1047 C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
GAS LISTING /tmp/ccpWqck0.s 			page 25


 810      0D000000 
 810      00
 811 1050 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 811      00000000 
 812 1058 C53D59C0 		vmulpd	%ymm0, %ymm8, %ymm8
 813 105c C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 813      01
 814 1061 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 814      1F
 815 1066 C5F9DB05 		vpand	.LC50(%rip), %xmm0, %xmm0
 815      00000000 
 816 106e C4E27929 		vpcmpeqq	.LC50(%rip), %xmm0, %xmm0
 816      05000000 
 816      00
 817 1077 C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 817      00000000 
 818 107f C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 818      C101
 819 1085 C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 820 1089 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 820      C501
 821 108f C57928C8 		vmovapd	%xmm0, %xmm9
 822 1093 C5B154ED 		vandpd	%xmm5, %xmm9, %xmm5
 823 1097 C5F950CD 		vmovmskpd	%xmm5, %ecx
 824 109b C5D173D4 		vpsrlq	$32, %xmm4, %xmm5
 824      20
 825 10a0 C4E3510E 		vpblendw	$204, %xmm4, %xmm5, %xmm4
 825      E4CC
 826 10a6 C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 826      20
 827 10ab C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 827      D2CC
 828 10b1 C5D157ED 		vxorpd	%xmm5, %xmm5, %xmm5
 829 10b5 83F903   		cmpl	$3, %ecx
 830 10b8 C4E36D18 		vinsertf128	$0x1, %xmm4, %ymm2, %ymm4
 830      E401
 831 10be C5CDC2D6 		vcmppd	$4, %ymm6, %ymm6, %ymm2
 831      04
 832 10c3 C4E3754B 		vblendvpd	%ymm4, %ymm5, %ymm1, %ymm4
 832      E540
 833 10c9 C4C35D4B 		vblendvpd	%ymm0, %ymm8, %ymm4, %ymm0
 833      C000
 834 10cf C4E37D4B 		vblendvpd	%ymm2, %ymm6, %ymm0, %ymm6
 834      F620
 835 10d5 0F85E5FA 		jne	.L43
 835      FFFF
 836 10db C57D29C6 		vmovapd	%ymm8, %ymm6
 837 10df E9DCFAFF 		jmp	.L43
 837      FF
 838              		.p2align 4,,10
 839 10e4 0F1F4000 		.p2align 3
 840              	.L52:
 841 10e8 C5FD2884 		vmovapd	5536(%rsp), %ymm0
 841      24A01500 
 841      00
 842 10f1 C5FD280D 		vmovapd	.LC74(%rip), %ymm1
 842      00000000 
GAS LISTING /tmp/ccpWqck0.s 			page 26


 843 10f9 C5FD5D84 		vminpd	5568(%rsp), %ymm0, %ymm0
 843      24C01500 
 843      00
 844 1102 C5FD5D84 		vminpd	5600(%rsp), %ymm0, %ymm0
 844      24E01500 
 844      00
 845 110b C5FD5D84 		vminpd	5632(%rsp), %ymm0, %ymm0
 845      24001600 
 845      00
 846 1114 C5FD5D84 		vminpd	5664(%rsp), %ymm0, %ymm0
 846      24201600 
 846      00
 847 111d C5FD5D84 		vminpd	5696(%rsp), %ymm0, %ymm0
 847      24401600 
 847      00
 848 1126 C5F5C2C0 		vcmppd	$2, %ymm0, %ymm1, %ymm0
 848      02
 849 112b C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 849      C101
 850 1131 C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 851 1135 C5F950C0 		vmovmskpd	%xmm0, %eax
 852 1139 83F803   		cmpl	$3, %eax
 853 113c 740A     		je	.L53
 854 113e 31D2     		xorl	%edx, %edx
 855 1140 4531ED   		xorl	%r13d, %r13d
 856 1143 E9C0F0FF 		jmp	.L15
 856      FF
 857              	.L53:
 858 1148 4489E0   		movl	%r12d, %eax
 859 114b BAAD8BDB 		movl	$1759218605, %edx
 859      68
 860 1150 F7EA     		imull	%edx
 861 1152 4489E0   		movl	%r12d, %eax
 862 1155 C1F81F   		sarl	$31, %eax
 863 1158 C1FA0C   		sarl	$12, %edx
 864 115b 29C2     		subl	%eax, %edx
 865 115d 4489E0   		movl	%r12d, %eax
 866 1160 69D21027 		imull	$10000, %edx, %edx
 866      0000
 867 1166 29D0     		subl	%edx, %eax
 868 1168 83F801   		cmpl	$1, %eax
 869 116b 0F849700 		je	.L54
 869      0000
 870              	.L47:
 871 1171 4183C418 		addl	$24, %r12d
 872 1175 4881C3C0 		addq	$192, %rbx
 872      000000
 873 117c 4181FC80 		cmpl	$40320, %r12d
 873      9D0000
 874 1183 0F853DEF 		jne	.L14
 874      FFFF
 875 1189 C5F877   		vzeroupper
 876 118c E8000000 		call	clock
 876      00
 877 1191 BA0E0000 		movl	$14, %edx
 877      00
 878 1196 BE000000 		movl	$.LC80, %esi
GAS LISTING /tmp/ccpWqck0.s 			page 27


 878      00
 879 119b BF000000 		movl	$_ZSt4cout, %edi
 879      00
 880 11a0 4889C3   		movq	%rax, %rbx
 881 11a3 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 881      00
 882 11a8 482B9C24 		subq	184(%rsp), %rbx
 882      B8000000 
 883 11b0 48BECFF7 		movabsq	$2361183241434822607, %rsi
 883      53E3A59B 
 883      C420
 884 11ba BF000000 		movl	$_ZSt4cout, %edi
 884      00
 885 11bf 4889D8   		movq	%rbx, %rax
 886 11c2 4889D9   		movq	%rbx, %rcx
 887 11c5 48F7EE   		imulq	%rsi
 888 11c8 48C1F93F 		sarq	$63, %rcx
 889 11cc 4889D6   		movq	%rdx, %rsi
 890 11cf 48C1FE07 		sarq	$7, %rsi
 891 11d3 4829CE   		subq	%rcx, %rsi
 892 11d6 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 892      00
 893 11db BE000000 		movl	$.LC81, %esi
 893      00
 894 11e0 4889C7   		movq	%rax, %rdi
 895 11e3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 895      00
 896 11e8 4889C7   		movq	%rax, %rdi
 897 11eb E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 897      00
 898 11f0 488D65D8 		leaq	-40(%rbp), %rsp
 899 11f4 31C0     		xorl	%eax, %eax
 900 11f6 5B       		popq	%rbx
 901 11f7 415C     		popq	%r12
 902 11f9 415D     		popq	%r13
 903 11fb 415E     		popq	%r14
 904 11fd 415F     		popq	%r15
 905 11ff 5D       		popq	%rbp
 906              		.cfi_remember_state
 907              		.cfi_def_cfa 7, 8
 908 1200 C3       		ret
 909              		.p2align 4,,10
 910 1201 0F1F8000 		.p2align 3
 910      000000
 911              	.L54:
 912              		.cfi_restore_state
 913 1208 BA390000 		movl	$57, %edx
 913      00
 914 120d BE000000 		movl	$.LC75, %esi
 914      00
 915 1212 BF000000 		movl	$_ZSt4cout, %edi
 915      00
 916 1217 C5FD293C 		vmovapd	%ymm7, (%rsp)
 916      24
 917 121c C57D2964 		vmovapd	%ymm12, 32(%rsp)
 917      2420
 918 1222 C5FD295C 		vmovapd	%ymm3, 64(%rsp)
GAS LISTING /tmp/ccpWqck0.s 			page 28


 918      2440
 919 1228 C57D296C 		vmovapd	%ymm13, 96(%rsp)
 919      2460
 920 122e C57D29B4 		vmovapd	%ymm14, 128(%rsp)
 920      24800000 
 920      00
 921 1237 C5F877   		vzeroupper
 922 123a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 922      00
 923 123f C5FD2884 		vmovapd	4960(%rsp), %ymm0
 923      24601300 
 923      00
 924 1248 4489E6   		movl	%r12d, %esi
 925 124b BF000000 		movl	$_ZSt4cout, %edi
 925      00
 926 1250 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 926      24400100 
 926      00
 927 1259 C5FD2884 		vmovapd	5920(%rsp), %ymm0
 927      24201700 
 927      00
 928 1262 C5FB108C 		vmovsd	320(%rsp), %xmm1
 928      24400100 
 928      00
 929 126b C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 929      24400100 
 929      00
 930 1274 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 930      24000100 
 930      00
 931 127d C5FB1084 		vmovsd	320(%rsp), %xmm0
 931      24400100 
 931      00
 932 1286 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 932      24200100 
 932      00
 933 128f C5F877   		vzeroupper
 934 1292 E8000000 		call	_ZNSolsEi
 934      00
 935 1297 BA060000 		movl	$6, %edx
 935      00
 936 129c BE000000 		movl	$.LC76, %esi
 936      00
 937 12a1 4889C7   		movq	%rax, %rdi
 938 12a4 4989C5   		movq	%rax, %r13
 939 12a7 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 939      00
 940 12ac C5FB1084 		vmovsd	288(%rsp), %xmm0
 940      24200100 
 940      00
 941 12b5 4C89EF   		movq	%r13, %rdi
 942 12b8 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 942      00
 943 12bd BA030000 		movl	$3, %edx
 943      00
 944 12c2 BE000000 		movl	$.LC77, %esi
 944      00
GAS LISTING /tmp/ccpWqck0.s 			page 29


 945 12c7 4889C7   		movq	%rax, %rdi
 946 12ca 4989C5   		movq	%rax, %r13
 947 12cd E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 947      00
 948 12d2 C5FB108C 		vmovsd	256(%rsp), %xmm1
 948      24000100 
 948      00
 949 12db 4C89EF   		movq	%r13, %rdi
 950 12de C5F928C1 		vmovapd	%xmm1, %xmm0
 951 12e2 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 951      00
 952 12e7 BA010000 		movl	$1, %edx
 952      00
 953 12ec BE000000 		movl	$.LC78, %esi
 953      00
 954 12f1 4889C7   		movq	%rax, %rdi
 955 12f4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 955      00
 956 12f9 C5FD2884 		vmovapd	4992(%rsp), %ymm0
 956      24801300 
 956      00
 957 1302 4489E6   		movl	%r12d, %esi
 958 1305 BF000000 		movl	$_ZSt4cout, %edi
 958      00
 959 130a C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 959      24400100 
 959      00
 960 1313 C5FD2884 		vmovapd	5952(%rsp), %ymm0
 960      24401700 
 960      00
 961 131c C5FB108C 		vmovsd	320(%rsp), %xmm1
 961      24400100 
 961      00
 962 1325 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 962      24400100 
 962      00
 963 132e C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 963      24000100 
 963      00
 964 1337 C5FB1084 		vmovsd	320(%rsp), %xmm0
 964      24400100 
 964      00
 965 1340 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 965      24200100 
 965      00
 966 1349 C5F877   		vzeroupper
 967 134c E8000000 		call	_ZNSolsEi
 967      00
 968 1351 BA060000 		movl	$6, %edx
 968      00
 969 1356 BE000000 		movl	$.LC76, %esi
 969      00
 970 135b 4889C7   		movq	%rax, %rdi
 971 135e 4989C5   		movq	%rax, %r13
 972 1361 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 972      00
 973 1366 C5FB1084 		vmovsd	288(%rsp), %xmm0
GAS LISTING /tmp/ccpWqck0.s 			page 30


 973      24200100 
 973      00
 974 136f 4C89EF   		movq	%r13, %rdi
 975 1372 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 975      00
 976 1377 BA030000 		movl	$3, %edx
 976      00
 977 137c BE000000 		movl	$.LC77, %esi
 977      00
 978 1381 4889C7   		movq	%rax, %rdi
 979 1384 4989C5   		movq	%rax, %r13
 980 1387 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 980      00
 981 138c C5FB108C 		vmovsd	256(%rsp), %xmm1
 981      24000100 
 981      00
 982 1395 4C89EF   		movq	%r13, %rdi
 983 1398 C5F928C1 		vmovapd	%xmm1, %xmm0
 984 139c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 984      00
 985 13a1 BA010000 		movl	$1, %edx
 985      00
 986 13a6 BE000000 		movl	$.LC78, %esi
 986      00
 987 13ab 4889C7   		movq	%rax, %rdi
 988 13ae E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 988      00
 989 13b3 C5FD2884 		vmovapd	5024(%rsp), %ymm0
 989      24A01300 
 989      00
 990 13bc 4489E6   		movl	%r12d, %esi
 991 13bf BF000000 		movl	$_ZSt4cout, %edi
 991      00
 992 13c4 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 992      24400100 
 992      00
 993 13cd C5FD2884 		vmovapd	5984(%rsp), %ymm0
 993      24601700 
 993      00
 994 13d6 C5FB108C 		vmovsd	320(%rsp), %xmm1
 994      24400100 
 994      00
 995 13df C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 995      24400100 
 995      00
 996 13e8 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 996      24000100 
 996      00
 997 13f1 C5FB1084 		vmovsd	320(%rsp), %xmm0
 997      24400100 
 997      00
 998 13fa C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 998      24200100 
 998      00
 999 1403 C5F877   		vzeroupper
 1000 1406 E8000000 		call	_ZNSolsEi
 1000      00
GAS LISTING /tmp/ccpWqck0.s 			page 31


 1001 140b BA060000 		movl	$6, %edx
 1001      00
 1002 1410 BE000000 		movl	$.LC76, %esi
 1002      00
 1003 1415 4889C7   		movq	%rax, %rdi
 1004 1418 4989C5   		movq	%rax, %r13
 1005 141b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1005      00
 1006 1420 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1006      24200100 
 1006      00
 1007 1429 4C89EF   		movq	%r13, %rdi
 1008 142c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1008      00
 1009 1431 BA030000 		movl	$3, %edx
 1009      00
 1010 1436 BE000000 		movl	$.LC77, %esi
 1010      00
 1011 143b 4889C7   		movq	%rax, %rdi
 1012 143e 4989C5   		movq	%rax, %r13
 1013 1441 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1013      00
 1014 1446 C5FB108C 		vmovsd	256(%rsp), %xmm1
 1014      24000100 
 1014      00
 1015 144f 4C89EF   		movq	%r13, %rdi
 1016 1452 C5F928C1 		vmovapd	%xmm1, %xmm0
 1017 1456 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1017      00
 1018 145b BA010000 		movl	$1, %edx
 1018      00
 1019 1460 BE000000 		movl	$.LC78, %esi
 1019      00
 1020 1465 4889C7   		movq	%rax, %rdi
 1021 1468 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1021      00
 1022 146d C5FD283C 		vmovapd	(%rsp), %ymm7
 1022      24
 1023 1472 C57D2864 		vmovapd	32(%rsp), %ymm12
 1023      2420
 1024 1478 C5FD285C 		vmovapd	64(%rsp), %ymm3
 1024      2440
 1025 147e C57D286C 		vmovapd	96(%rsp), %ymm13
 1025      2460
 1026 1484 C57D28B4 		vmovapd	128(%rsp), %ymm14
 1026      24800000 
 1026      00
 1027 148d E9DFFCFF 		jmp	.L47
 1027      FF
 1028              		.cfi_endproc
 1029              	.LFE4635:
 1030              		.size	main, .-main
 1031 1492 66666666 		.p2align 4,,15
 1031      662E0F1F 
 1031      84000000 
 1031      0000
 1032              		.type	_GLOBAL__sub_I_main, @function
GAS LISTING /tmp/ccpWqck0.s 			page 32


 1033              	_GLOBAL__sub_I_main:
 1034              	.LFB4900:
 1035              		.cfi_startproc
 1036 14a0 4883EC08 		subq	$8, %rsp
 1037              		.cfi_def_cfa_offset 16
 1038 14a4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1038      00
 1039 14a9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1039      00
 1040 14ae BA000000 		movl	$__dso_handle, %edx
 1040      00
 1041 14b3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1041      00
 1042 14b8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1042      00
 1043 14bd 4883C408 		addq	$8, %rsp
 1044              		.cfi_def_cfa_offset 8
 1045 14c1 E9000000 		jmp	__cxa_atexit
 1045      00
 1046              		.cfi_endproc
 1047              	.LFE4900:
 1048              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1049              		.section	.init_array,"aw"
 1050              		.align 8
 1051 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1051      00000000 
 1052              		.section	.rodata
 1053              		.align 32
 1054              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1055              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1056              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1057 0000 00000000 		.long	0
 1058 0004 00000080 		.long	-2147483648
 1059 0008 00000000 		.long	0
 1060 000c 00000080 		.long	-2147483648
 1061 0010 00000000 		.long	0
 1062 0014 00000080 		.long	-2147483648
 1063 0018 00000000 		.long	0
 1064 001c 00000080 		.long	-2147483648
 1065              		.align 32
 1066              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1067              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1068              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1069 0020 FFFFFFFF 		.long	-1
 1070 0024 FFFFFF7F 		.long	2147483647
 1071 0028 FFFFFFFF 		.long	-1
 1072 002c FFFFFF7F 		.long	2147483647
 1073 0030 FFFFFFFF 		.long	-1
 1074 0034 FFFFFF7F 		.long	2147483647
 1075 0038 FFFFFFFF 		.long	-1
 1076 003c FFFFFF7F 		.long	2147483647
 1077              		.local	_ZStL8__ioinit
 1078              		.comm	_ZStL8__ioinit,1,1
 1079              		.section	.rodata.cst32,"aM",@progbits,32
 1080              		.align 32
 1081              	.LC0:
 1082 0000 00000000 		.long	0
GAS LISTING /tmp/ccpWqck0.s 			page 33


 1083 0004 00002440 		.long	1076101120
 1084 0008 00000000 		.long	0
 1085 000c 00002440 		.long	1076101120
 1086 0010 00000000 		.long	0
 1087 0014 00002440 		.long	1076101120
 1088 0018 00000000 		.long	0
 1089 001c 00002440 		.long	1076101120
 1090              		.section	.rodata.cst8,"aM",@progbits,8
 1091              		.align 8
 1092              	.LC1:
 1093 0000 00000000 		.long	0
 1094 0004 00003540 		.long	1077215232
 1095              		.section	.rodata.cst32
 1096              		.align 32
 1097              	.LC3:
 1098 0020 55555555 		.long	1431655765
 1099 0024 55550540 		.long	1074091349
 1100 0028 55555555 		.long	1431655765
 1101 002c 55550540 		.long	1074091349
 1102 0030 55555555 		.long	1431655765
 1103 0034 55550540 		.long	1074091349
 1104 0038 55555555 		.long	1431655765
 1105 003c 55550540 		.long	1074091349
 1106              		.align 32
 1107              	.LC4:
 1108 0040 9A999999 		.long	2576980378
 1109 0044 9999C93F 		.long	1070176665
 1110 0048 9A999999 		.long	2576980378
 1111 004c 9999C93F 		.long	1070176665
 1112 0050 9A999999 		.long	2576980378
 1113 0054 9999C93F 		.long	1070176665
 1114 0058 9A999999 		.long	2576980378
 1115 005c 9999C93F 		.long	1070176665
 1116              		.align 32
 1117              	.LC5:
 1118 0060 CDCCCCCC 		.long	3435973837
 1119 0064 CCCCCC3F 		.long	1070386380
 1120 0068 CDCCCCCC 		.long	3435973837
 1121 006c CCCCCC3F 		.long	1070386380
 1122 0070 CDCCCCCC 		.long	3435973837
 1123 0074 CCCCCC3F 		.long	1070386380
 1124 0078 CDCCCCCC 		.long	3435973837
 1125 007c CCCCCC3F 		.long	1070386380
 1126              		.align 32
 1127              	.LC6:
 1128 0080 33333333 		.long	858993459
 1129 0084 3333B33F 		.long	1068708659
 1130 0088 33333333 		.long	858993459
 1131 008c 3333B33F 		.long	1068708659
 1132 0090 33333333 		.long	858993459
 1133 0094 3333B33F 		.long	1068708659
 1134 0098 33333333 		.long	858993459
 1135 009c 3333B33F 		.long	1068708659
 1136              		.align 32
 1137              	.LC7:
 1138 00a0 33333333 		.long	858993459
 1139 00a4 3333F33F 		.long	1072902963
GAS LISTING /tmp/ccpWqck0.s 			page 34


 1140 00a8 33333333 		.long	858993459
 1141 00ac 3333F33F 		.long	1072902963
 1142 00b0 33333333 		.long	858993459
 1143 00b4 3333F33F 		.long	1072902963
 1144 00b8 33333333 		.long	858993459
 1145 00bc 3333F33F 		.long	1072902963
 1146              		.align 32
 1147              	.LC8:
 1148 00c0 CDCCCCCC 		.long	3435973837
 1149 00c4 CCCCECBF 		.long	-1075000116
 1150 00c8 CDCCCCCC 		.long	3435973837
 1151 00cc CCCCECBF 		.long	-1075000116
 1152 00d0 CDCCCCCC 		.long	3435973837
 1153 00d4 CCCCECBF 		.long	-1075000116
 1154 00d8 CDCCCCCC 		.long	3435973837
 1155 00dc CCCCECBF 		.long	-1075000116
 1156              		.align 32
 1157              	.LC9:
 1158 00e0 33333333 		.long	858993459
 1159 00e4 3333D33F 		.long	1070805811
 1160 00e8 33333333 		.long	858993459
 1161 00ec 3333D33F 		.long	1070805811
 1162 00f0 33333333 		.long	858993459
 1163 00f4 3333D33F 		.long	1070805811
 1164 00f8 33333333 		.long	858993459
 1165 00fc 3333D33F 		.long	1070805811
 1166              		.align 32
 1167              	.LC10:
 1168 0100 DA4B682F 		.long	795364314
 1169 0104 A1BDF43F 		.long	1073003937
 1170 0108 DA4B682F 		.long	795364314
 1171 010c A1BDF43F 		.long	1073003937
 1172 0110 DA4B682F 		.long	795364314
 1173 0114 A1BDF43F 		.long	1073003937
 1174 0118 DA4B682F 		.long	795364314
 1175 011c A1BDF43F 		.long	1073003937
 1176              		.align 32
 1177              	.LC11:
 1178 0120 D94B682F 		.long	795364313
 1179 0124 A1BD04C0 		.long	-1073431135
 1180 0128 D94B682F 		.long	795364313
 1181 012c A1BD04C0 		.long	-1073431135
 1182 0130 D94B682F 		.long	795364313
 1183 0134 A1BD04C0 		.long	-1073431135
 1184 0138 D94B682F 		.long	795364313
 1185 013c A1BD04C0 		.long	-1073431135
 1186              		.align 32
 1187              	.LC12:
 1188 0140 00000000 		.long	0
 1189 0144 00000440 		.long	1074003968
 1190 0148 00000000 		.long	0
 1191 014c 00000440 		.long	1074003968
 1192 0150 00000000 		.long	0
 1193 0154 00000440 		.long	1074003968
 1194 0158 00000000 		.long	0
 1195 015c 00000440 		.long	1074003968
 1196              		.align 32
GAS LISTING /tmp/ccpWqck0.s 			page 35


 1197              	.LC13:
 1198 0160 16A1BD84 		.long	2227020054
 1199 0164 F612CABF 		.long	-1077275914
 1200 0168 16A1BD84 		.long	2227020054
 1201 016c F612CABF 		.long	-1077275914
 1202 0170 16A1BD84 		.long	2227020054
 1203 0174 F612CABF 		.long	-1077275914
 1204 0178 16A1BD84 		.long	2227020054
 1205 017c F612CABF 		.long	-1077275914
 1206              		.align 32
 1207              	.LC14:
 1208 0180 00000000 		.long	0
 1209 0184 00A0AF3F 		.long	1068474368
 1210 0188 00000000 		.long	0
 1211 018c 00A0AF3F 		.long	1068474368
 1212 0190 00000000 		.long	0
 1213 0194 00A0AF3F 		.long	1068474368
 1214 0198 00000000 		.long	0
 1215 019c 00A0AF3F 		.long	1068474368
 1216              		.align 32
 1217              	.LC15:
 1218 01a0 B397D05E 		.long	1590728627
 1219 01a4 429FD93F 		.long	1071226690
 1220 01a8 B397D05E 		.long	1590728627
 1221 01ac 429FD93F 		.long	1071226690
 1222 01b0 B397D05E 		.long	1590728627
 1223 01b4 429FD93F 		.long	1071226690
 1224 01b8 B397D05E 		.long	1590728627
 1225 01bc 429FD93F 		.long	1071226690
 1226              		.align 32
 1227              	.LC16:
 1228 01c0 BD84F612 		.long	318145725
 1229 01c4 DA4BA53F 		.long	1067797466
 1230 01c8 BD84F612 		.long	318145725
 1231 01cc DA4BA53F 		.long	1067797466
 1232 01d0 BD84F612 		.long	318145725
 1233 01d4 DA4BA53F 		.long	1067797466
 1234 01d8 BD84F612 		.long	318145725
 1235 01dc DA4BA53F 		.long	1067797466
 1236              		.align 32
 1237              	.LC17:
 1238 01e0 00000000 		.long	0
 1239 01e4 00E0D53F 		.long	1070981120
 1240 01e8 00000000 		.long	0
 1241 01ec 00E0D53F 		.long	1070981120
 1242 01f0 00000000 		.long	0
 1243 01f4 00E0D53F 		.long	1070981120
 1244 01f8 00000000 		.long	0
 1245 01fc 00E0D53F 		.long	1070981120
 1246              		.align 32
 1247              	.LC18:
 1248 0200 347B09ED 		.long	3976821556
 1249 0204 25349E3F 		.long	1067332645
 1250 0208 347B09ED 		.long	3976821556
 1251 020c 25349E3F 		.long	1067332645
 1252 0210 347B09ED 		.long	3976821556
 1253 0214 25349E3F 		.long	1067332645
GAS LISTING /tmp/ccpWqck0.s 			page 36


 1254 0218 347B09ED 		.long	3976821556
 1255 021c 25349E3F 		.long	1067332645
 1256              		.align 32
 1257              	.LC19:
 1258 0220 B0B4DA85 		.long	2245702832
 1259 0224 A680D23F 		.long	1070760102
 1260 0228 B0B4DA85 		.long	2245702832
 1261 022c A680D23F 		.long	1070760102
 1262 0230 B0B4DA85 		.long	2245702832
 1263 0234 A680D23F 		.long	1070760102
 1264 0238 B0B4DA85 		.long	2245702832
 1265 023c A680D23F 		.long	1070760102
 1266              		.align 32
 1267              	.LC20:
 1268 0240 27691676 		.long	1981180199
 1269 0244 9FEFCA3F 		.long	1070264223
 1270 0248 27691676 		.long	1981180199
 1271 024c 9FEFCA3F 		.long	1070264223
 1272 0250 27691676 		.long	1981180199
 1273 0254 9FEFCA3F 		.long	1070264223
 1274 0258 27691676 		.long	1981180199
 1275 025c 9FEFCA3F 		.long	1070264223
 1276              		.align 32
 1277              	.LC21:
 1278 0260 7EB22B2E 		.long	774615678
 1279 0264 D0C3D93F 		.long	1071236048
 1280 0268 7EB22B2E 		.long	774615678
 1281 026c D0C3D93F 		.long	1071236048
 1282 0270 7EB22B2E 		.long	774615678
 1283 0274 D0C3D93F 		.long	1071236048
 1284 0278 7EB22B2E 		.long	774615678
 1285 027c D0C3D93F 		.long	1071236048
 1286              		.align 32
 1287              	.LC22:
 1288 0280 E890B943 		.long	1136234728
 1289 0284 E60EB93F 		.long	1069092582
 1290 0288 E890B943 		.long	1136234728
 1291 028c E60EB93F 		.long	1069092582
 1292 0290 E890B943 		.long	1136234728
 1293 0294 E60EB93F 		.long	1069092582
 1294 0298 E890B943 		.long	1136234728
 1295 029c E60EB93F 		.long	1069092582
 1296              		.align 32
 1297              	.LC23:
 1298 02a0 48A5D52E 		.long	785753416
 1299 02a4 3405A4BF 		.long	-1079769804
 1300 02a8 48A5D52E 		.long	785753416
 1301 02ac 3405A4BF 		.long	-1079769804
 1302 02b0 48A5D52E 		.long	785753416
 1303 02b4 3405A4BF 		.long	-1079769804
 1304 02b8 48A5D52E 		.long	785753416
 1305 02bc 3405A4BF 		.long	-1079769804
 1306              		.align 32
 1307              	.LC24:
 1308 02c0 82244992 		.long	2454267010
 1309 02c4 24C9933F 		.long	1066649892
 1310 02c8 82244992 		.long	2454267010
GAS LISTING /tmp/ccpWqck0.s 			page 37


 1311 02cc 24C9933F 		.long	1066649892
 1312 02d0 82244992 		.long	2454267010
 1313 02d4 24C9933F 		.long	1066649892
 1314 02d8 82244992 		.long	2454267010
 1315 02dc 24C9933F 		.long	1066649892
 1316              		.align 32
 1317              	.LC25:
 1318 02e0 06F37686 		.long	2255942406
 1319 02e4 C47CA13F 		.long	1067547844
 1320 02e8 06F37686 		.long	2255942406
 1321 02ec C47CA13F 		.long	1067547844
 1322 02f0 06F37686 		.long	2255942406
 1323 02f4 C47CA13F 		.long	1067547844
 1324 02f8 06F37686 		.long	2255942406
 1325 02fc C47CA13F 		.long	1067547844
 1326              		.align 32
 1327              	.LC26:
 1328 0300 1A55F19A 		.long	2599507226
 1329 0304 DB1D93BF 		.long	-1080877605
 1330 0308 1A55F19A 		.long	2599507226
 1331 030c DB1D93BF 		.long	-1080877605
 1332 0310 1A55F19A 		.long	2599507226
 1333 0314 DB1D93BF 		.long	-1080877605
 1334 0318 1A55F19A 		.long	2599507226
 1335 031c DB1D93BF 		.long	-1080877605
 1336              		.align 32
 1337              	.LC27:
 1338 0320 64599665 		.long	1704352100
 1339 0324 5996713F 		.long	1064408665
 1340 0328 64599665 		.long	1704352100
 1341 032c 5996713F 		.long	1064408665
 1342 0330 64599665 		.long	1704352100
 1343 0334 5996713F 		.long	1064408665
 1344 0338 64599665 		.long	1704352100
 1345 033c 5996713F 		.long	1064408665
 1346              		.align 32
 1347              	.LC28:
 1348 0340 95D626E8 		.long	3894859413
 1349 0344 0B2E113E 		.long	1041313291
 1350 0348 95D626E8 		.long	3894859413
 1351 034c 0B2E113E 		.long	1041313291
 1352 0350 95D626E8 		.long	3894859413
 1353 0354 0B2E113E 		.long	1041313291
 1354 0358 95D626E8 		.long	3894859413
 1355 035c 0B2E113E 		.long	1041313291
 1356              		.section	.rodata.cst16,"aM",@progbits,16
 1357              		.align 16
 1358              	.LC29:
 1359 0000 FFFFFFFF 		.quad	4503599627370495
 1359      FFFF0F00 
 1360 0008 FFFFFFFF 		.quad	4503599627370495
 1360      FFFF0F00 
 1361              		.align 16
 1362              	.LC30:
 1363 0010 00000000 		.quad	4602678819172646912
 1363      0000E03F 
 1364 0018 00000000 		.quad	4602678819172646912
GAS LISTING /tmp/ccpWqck0.s 			page 38


 1364      0000E03F 
 1365              		.align 16
 1366              	.LC31:
 1367 0020 00000000 		.quad	4841369599423283200
 1367      00003043 
 1368 0028 00000000 		.quad	4841369599423283200
 1368      00003043 
 1369              		.section	.rodata.cst32
 1370              		.align 32
 1371              	.LC32:
 1372 0360 FF030000 		.long	1023
 1373 0364 00003043 		.long	1127219200
 1374 0368 FF030000 		.long	1023
 1375 036c 00003043 		.long	1127219200
 1376 0370 FF030000 		.long	1023
 1377 0374 00003043 		.long	1127219200
 1378 0378 FF030000 		.long	1023
 1379 037c 00003043 		.long	1127219200
 1380              		.align 32
 1381              	.LC33:
 1382 0380 CD3B7F66 		.long	1719614413
 1383 0384 9EA0E63F 		.long	1072079006
 1384 0388 CD3B7F66 		.long	1719614413
 1385 038c 9EA0E63F 		.long	1072079006
 1386 0390 CD3B7F66 		.long	1719614413
 1387 0394 9EA0E63F 		.long	1072079006
 1388 0398 CD3B7F66 		.long	1719614413
 1389 039c 9EA0E63F 		.long	1072079006
 1390              		.section	.rodata.cst16
 1391              		.align 16
 1392              	.LC34:
 1393 0030 FFFFFFFF 		.long	4294967295
 1394 0034 FFFFFFFF 		.long	-1
 1395 0038 FFFFFFFF 		.long	4294967295
 1396 003c FFFFFFFF 		.long	-1
 1397              		.section	.rodata.cst32
 1398              		.align 32
 1399              	.LC35:
 1400 03a0 00000000 		.long	0
 1401 03a4 0000F03F 		.long	1072693248
 1402 03a8 00000000 		.long	0
 1403 03ac 0000F03F 		.long	1072693248
 1404 03b0 00000000 		.long	0
 1405 03b4 0000F03F 		.long	1072693248
 1406 03b8 00000000 		.long	0
 1407 03bc 0000F03F 		.long	1072693248
 1408              		.align 32
 1409              	.LC36:
 1410 03c0 4DC84B92 		.long	2454440013
 1411 03c4 D6EF3140 		.long	1077014486
 1412 03c8 4DC84B92 		.long	2454440013
 1413 03cc D6EF3140 		.long	1077014486
 1414 03d0 4DC84B92 		.long	2454440013
 1415 03d4 D6EF3140 		.long	1077014486
 1416 03d8 4DC84B92 		.long	2454440013
 1417 03dc D6EF3140 		.long	1077014486
 1418              		.align 32
GAS LISTING /tmp/ccpWqck0.s 			page 39


 1419              	.LC37:
 1420 03e0 F8DC7E7D 		.long	2105466104
 1421 03e4 63D51E40 		.long	1075762531
 1422 03e8 F8DC7E7D 		.long	2105466104
 1423 03ec 63D51E40 		.long	1075762531
 1424 03f0 F8DC7E7D 		.long	2105466104
 1425 03f4 63D51E40 		.long	1075762531
 1426 03f8 F8DC7E7D 		.long	2105466104
 1427 03fc 63D51E40 		.long	1075762531
 1428              		.align 32
 1429              	.LC38:
 1430 0400 B01BC393 		.long	2479037360
 1431 0404 C2B41A3F 		.long	1058714818
 1432 0408 B01BC393 		.long	2479037360
 1433 040c C2B41A3F 		.long	1058714818
 1434 0410 B01BC393 		.long	2479037360
 1435 0414 C2B41A3F 		.long	1058714818
 1436 0418 B01BC393 		.long	2479037360
 1437 041c C2B41A3F 		.long	1058714818
 1438              		.align 32
 1439              	.LC39:
 1440 0420 F252563F 		.long	1062621938
 1441 0424 F5D6DF3F 		.long	1071634165
 1442 0428 F252563F 		.long	1062621938
 1443 042c F5D6DF3F 		.long	1071634165
 1444 0430 F252563F 		.long	1062621938
 1445 0434 F5D6DF3F 		.long	1071634165
 1446 0438 F252563F 		.long	1062621938
 1447 043c F5D6DF3F 		.long	1071634165
 1448              		.align 32
 1449              	.LC40:
 1450 0440 116992ED 		.long	3985795345
 1451 0444 BAD21240 		.long	1074975418
 1452 0448 116992ED 		.long	3985795345
 1453 044c BAD21240 		.long	1074975418
 1454 0450 116992ED 		.long	3985795345
 1455 0454 BAD21240 		.long	1074975418
 1456 0458 116992ED 		.long	3985795345
 1457 045c BAD21240 		.long	1074975418
 1458              		.align 32
 1459              	.LC41:
 1460 0460 2EEB3EC6 		.long	3326012206
 1461 0464 72FF2C40 		.long	1076690802
 1462 0468 2EEB3EC6 		.long	3326012206
 1463 046c 72FF2C40 		.long	1076690802
 1464 0470 2EEB3EC6 		.long	3326012206
 1465 0474 72FF2C40 		.long	1076690802
 1466 0478 2EEB3EC6 		.long	3326012206
 1467 047c 72FF2C40 		.long	1076690802
 1468              		.align 32
 1469              	.LC42:
 1470 0480 21AE5EEB 		.long	3948850721
 1471 0484 E2C95140 		.long	1079101922
 1472 0488 21AE5EEB 		.long	3948850721
 1473 048c E2C95140 		.long	1079101922
 1474 0490 21AE5EEB 		.long	3948850721
 1475 0494 E2C95140 		.long	1079101922
GAS LISTING /tmp/ccpWqck0.s 			page 40


 1476 0498 21AE5EEB 		.long	3948850721
 1477 049c E2C95140 		.long	1079101922
 1478              		.align 32
 1479              	.LC43:
 1480 04a0 B2251F9E 		.long	2652841394
 1481 04a4 0A203740 		.long	1077354506
 1482 04a8 B2251F9E 		.long	2652841394
 1483 04ac 0A203740 		.long	1077354506
 1484 04b0 B2251F9E 		.long	2652841394
 1485 04b4 0A203740 		.long	1077354506
 1486 04b8 B2251F9E 		.long	2652841394
 1487 04bc 0A203740 		.long	1077354506
 1488              		.align 32
 1489              	.LC44:
 1490 04c0 8EEF97AE 		.long	2929192846
 1491 04c4 20932640 		.long	1076269856
 1492 04c8 8EEF97AE 		.long	2929192846
 1493 04cc 20932640 		.long	1076269856
 1494 04d0 8EEF97AE 		.long	2929192846
 1495 04d4 20932640 		.long	1076269856
 1496 04d8 8EEF97AE 		.long	2929192846
 1497 04dc 20932640 		.long	1076269856
 1498              		.align 32
 1499              	.LC45:
 1500 04e0 33C0194E 		.long	1310310451
 1501 04e4 2C9D4640 		.long	1078369580
 1502 04e8 33C0194E 		.long	1310310451
 1503 04ec 2C9D4640 		.long	1078369580
 1504 04f0 33C0194E 		.long	1310310451
 1505 04f4 2C9D4640 		.long	1078369580
 1506 04f8 33C0194E 		.long	1310310451
 1507 04fc 2C9D4640 		.long	1078369580
 1508              		.align 32
 1509              	.LC46:
 1510 0500 BDBD26A3 		.long	2737225149
 1511 0504 33BF5440 		.long	1079295795
 1512 0508 BDBD26A3 		.long	2737225149
 1513 050c 33BF5440 		.long	1079295795
 1514 0510 BDBD26A3 		.long	2737225149
 1515 0514 33BF5440 		.long	1079295795
 1516 0518 BDBD26A3 		.long	2737225149
 1517 051c 33BF5440 		.long	1079295795
 1518              		.align 32
 1519              	.LC47:
 1520 0520 A80C615C 		.long	1549864104
 1521 0524 10D02BBF 		.long	-1087647728
 1522 0528 A80C615C 		.long	1549864104
 1523 052c 10D02BBF 		.long	-1087647728
 1524 0530 A80C615C 		.long	1549864104
 1525 0534 10D02BBF 		.long	-1087647728
 1526 0538 A80C615C 		.long	1549864104
 1527 053c 10D02BBF 		.long	-1087647728
 1528              		.align 32
 1529              	.LC48:
 1530 0540 00000000 		.long	0
 1531 0544 0000E03F 		.long	1071644672
 1532 0548 00000000 		.long	0
GAS LISTING /tmp/ccpWqck0.s 			page 41


 1533 054c 0000E03F 		.long	1071644672
 1534 0550 00000000 		.long	0
 1535 0554 0000E03F 		.long	1071644672
 1536 0558 00000000 		.long	0
 1537 055c 0000E03F 		.long	1071644672
 1538              		.align 32
 1539              	.LC49:
 1540 0560 00000000 		.long	0
 1541 0564 0030E63F 		.long	1072050176
 1542 0568 00000000 		.long	0
 1543 056c 0030E63F 		.long	1072050176
 1544 0570 00000000 		.long	0
 1545 0574 0030E63F 		.long	1072050176
 1546 0578 00000000 		.long	0
 1547 057c 0030E63F 		.long	1072050176
 1548              		.section	.rodata.cst16
 1549              		.align 16
 1550              	.LC50:
 1551 0040 00000000 		.quad	-9007199254740992
 1551      0000E0FF 
 1552 0048 00000000 		.quad	-9007199254740992
 1552      0000E0FF 
 1553              		.section	.rodata.cst32
 1554              		.align 32
 1555              	.LC51:
 1556 0580 00000000 		.long	0
 1557 0584 00001000 		.long	1048576
 1558 0588 00000000 		.long	0
 1559 058c 00001000 		.long	1048576
 1560 0590 00000000 		.long	0
 1561 0594 00001000 		.long	1048576
 1562 0598 00000000 		.long	0
 1563 059c 00001000 		.long	1048576
 1564              		.align 32
 1565              	.LC52:
 1566 05a0 00000020 		.long	536870912
 1567 05a4 2000F87F 		.long	2146959392
 1568 05a8 00000020 		.long	536870912
 1569 05ac 2000F87F 		.long	2146959392
 1570 05b0 00000020 		.long	536870912
 1571 05b4 2000F87F 		.long	2146959392
 1572 05b8 00000020 		.long	536870912
 1573 05bc 2000F87F 		.long	2146959392
 1574              		.section	.rodata.cst16
 1575              		.align 16
 1576              	.LC53:
 1577 0050 00000000 		.long	0
 1578 0054 0000F07F 		.long	2146435072
 1579 0058 00000000 		.long	0
 1580 005c 0000F07F 		.long	2146435072
 1581              		.align 16
 1582              	.LC54:
 1583 0060 00000000 		.quad	9218868437227405312
 1583      0000F07F 
 1584 0068 00000000 		.quad	9218868437227405312
 1584      0000F07F 
 1585              		.section	.rodata.cst32
GAS LISTING /tmp/ccpWqck0.s 			page 42


 1586              		.align 32
 1587              	.LC55:
 1588 05c0 FE822B65 		.long	1697350398
 1589 05c4 4715F73F 		.long	1073157447
 1590 05c8 FE822B65 		.long	1697350398
 1591 05cc 4715F73F 		.long	1073157447
 1592 05d0 FE822B65 		.long	1697350398
 1593 05d4 4715F73F 		.long	1073157447
 1594 05d8 FE822B65 		.long	1697350398
 1595 05dc 4715F73F 		.long	1073157447
 1596              		.align 32
 1597              	.LC56:
 1598 05e0 00000000 		.long	0
 1599 05e4 402EE63F 		.long	1072049728
 1600 05e8 00000000 		.long	0
 1601 05ec 402EE63F 		.long	1072049728
 1602 05f0 00000000 		.long	0
 1603 05f4 402EE63F 		.long	1072049728
 1604 05f8 00000000 		.long	0
 1605 05fc 402EE63F 		.long	1072049728
 1606              		.align 32
 1607              	.LC57:
 1608 0600 CAAB79CF 		.long	3480857546
 1609 0604 D1F7B73E 		.long	1052243921
 1610 0608 CAAB79CF 		.long	3480857546
 1611 060c D1F7B73E 		.long	1052243921
 1612 0610 CAAB79CF 		.long	3480857546
 1613 0614 D1F7B73E 		.long	1052243921
 1614 0618 CAAB79CF 		.long	3480857546
 1615 061c D1F7B73E 		.long	1052243921
 1616              		.align 32
 1617              	.LC58:
 1618 0620 55555555 		.long	1431655765
 1619 0624 5555C53F 		.long	1069897045
 1620 0628 55555555 		.long	1431655765
 1621 062c 5555C53F 		.long	1069897045
 1622 0630 55555555 		.long	1431655765
 1623 0634 5555C53F 		.long	1069897045
 1624 0638 55555555 		.long	1431655765
 1625 063c 5555C53F 		.long	1069897045
 1626              		.align 32
 1627              	.LC59:
 1628 0640 11111111 		.long	286331153
 1629 0644 1111813F 		.long	1065423121
 1630 0648 11111111 		.long	286331153
 1631 064c 1111813F 		.long	1065423121
 1632 0650 11111111 		.long	286331153
 1633 0654 1111813F 		.long	1065423121
 1634 0658 11111111 		.long	286331153
 1635 065c 1111813F 		.long	1065423121
 1636              		.align 32
 1637              	.LC60:
 1638 0660 55555555 		.long	1431655765
 1639 0664 5555A53F 		.long	1067799893
 1640 0668 55555555 		.long	1431655765
 1641 066c 5555A53F 		.long	1067799893
 1642 0670 55555555 		.long	1431655765
GAS LISTING /tmp/ccpWqck0.s 			page 43


 1643 0674 5555A53F 		.long	1067799893
 1644 0678 55555555 		.long	1431655765
 1645 067c 5555A53F 		.long	1067799893
 1646              		.align 32
 1647              	.LC61:
 1648 0680 1AA0011A 		.long	436314138
 1649 0684 A0012A3F 		.long	1059717536
 1650 0688 1AA0011A 		.long	436314138
 1651 068c A0012A3F 		.long	1059717536
 1652 0690 1AA0011A 		.long	436314138
 1653 0694 A0012A3F 		.long	1059717536
 1654 0698 1AA0011A 		.long	436314138
 1655 069c A0012A3F 		.long	1059717536
 1656              		.align 32
 1657              	.LC62:
 1658 06a0 176CC116 		.long	381774871
 1659 06a4 6CC1563F 		.long	1062650220
 1660 06a8 176CC116 		.long	381774871
 1661 06ac 6CC1563F 		.long	1062650220
 1662 06b0 176CC116 		.long	381774871
 1663 06b4 6CC1563F 		.long	1062650220
 1664 06b8 176CC116 		.long	381774871
 1665 06bc 6CC1563F 		.long	1062650220
 1666              		.align 32
 1667              	.LC63:
 1668 06c0 34C756A5 		.long	2773927732
 1669 06c4 E31DC73E 		.long	1053236707
 1670 06c8 34C756A5 		.long	2773927732
 1671 06cc E31DC73E 		.long	1053236707
 1672 06d0 34C756A5 		.long	2773927732
 1673 06d4 E31DC73E 		.long	1053236707
 1674 06d8 34C756A5 		.long	2773927732
 1675 06dc E31DC73E 		.long	1053236707
 1676              		.align 32
 1677              	.LC64:
 1678 06e0 1AA0011A 		.long	436314138
 1679 06e4 A001FA3E 		.long	1056571808
 1680 06e8 1AA0011A 		.long	436314138
 1681 06ec A001FA3E 		.long	1056571808
 1682 06f0 1AA0011A 		.long	436314138
 1683 06f4 A001FA3E 		.long	1056571808
 1684 06f8 1AA0011A 		.long	436314138
 1685 06fc A001FA3E 		.long	1056571808
 1686              		.align 32
 1687              	.LC65:
 1688 0700 E444F567 		.long	1744127204
 1689 0704 45E65A3E 		.long	1046144581
 1690 0708 E444F567 		.long	1744127204
 1691 070c 45E65A3E 		.long	1046144581
 1692 0710 E444F567 		.long	1744127204
 1693 0714 45E65A3E 		.long	1046144581
 1694 0718 E444F567 		.long	1744127204
 1695 071c 45E65A3E 		.long	1046144581
 1696              		.align 32
 1697              	.LC66:
 1698 0720 5C9F78B7 		.long	3078135644
 1699 0724 4F7E923E 		.long	1049787983
GAS LISTING /tmp/ccpWqck0.s 			page 44


 1700 0728 5C9F78B7 		.long	3078135644
 1701 072c 4F7E923E 		.long	1049787983
 1702 0730 5C9F78B7 		.long	3078135644
 1703 0734 4F7E923E 		.long	1049787983
 1704 0738 5C9F78B7 		.long	3078135644
 1705 073c 4F7E923E 		.long	1049787983
 1706              		.align 32
 1707              	.LC67:
 1708 0740 096DA813 		.long	329805065
 1709 0744 4612E63D 		.long	1038488134
 1710 0748 096DA813 		.long	329805065
 1711 074c 4612E63D 		.long	1038488134
 1712 0750 096DA813 		.long	329805065
 1713 0754 4612E63D 		.long	1038488134
 1714 0758 096DA813 		.long	329805065
 1715 075c 4612E63D 		.long	1038488134
 1716              		.align 32
 1717              	.LC68:
 1718 0760 98D8F8EF 		.long	4026063000
 1719 0764 D8EE213E 		.long	1042411224
 1720 0768 98D8F8EF 		.long	4026063000
 1721 076c D8EE213E 		.long	1042411224
 1722 0770 98D8F8EF 		.long	4026063000
 1723 0774 D8EE213E 		.long	1042411224
 1724 0778 98D8F8EF 		.long	4026063000
 1725 077c D8EE213E 		.long	1042411224
 1726              		.align 32
 1727              	.LC69:
 1728 0780 85EB51B8 		.long	3092376453
 1729 0784 1E238640 		.long	1082532638
 1730 0788 85EB51B8 		.long	3092376453
 1731 078c 1E238640 		.long	1082532638
 1732 0790 85EB51B8 		.long	3092376453
 1733 0794 1E238640 		.long	1082532638
 1734 0798 85EB51B8 		.long	3092376453
 1735 079c 1E238640 		.long	1082532638
 1736              		.align 32
 1737              	.LC70:
 1738 07a0 2D431CEB 		.long	3944497965
 1739 07a4 E2361A3F 		.long	1058682594
 1740 07a8 2D431CEB 		.long	3944497965
 1741 07ac E2361A3F 		.long	1058682594
 1742 07b0 2D431CEB 		.long	3944497965
 1743 07b4 E2361A3F 		.long	1058682594
 1744 07b8 2D431CEB 		.long	3944497965
 1745 07bc E2361A3F 		.long	1058682594
 1746              		.align 32
 1747              	.LC71:
 1748 07c0 00000000 		.long	0
 1749 07c4 00001440 		.long	1075052544
 1750 07c8 00000000 		.long	0
 1751 07cc 00001440 		.long	1075052544
 1752 07d0 00000000 		.long	0
 1753 07d4 00001440 		.long	1075052544
 1754 07d8 00000000 		.long	0
 1755 07dc 00001440 		.long	1075052544
 1756              		.align 32
GAS LISTING /tmp/ccpWqck0.s 			page 45


 1757              	.LC72:
 1758 07e0 9A999999 		.long	2576980378
 1759 07e4 9999E93F 		.long	1072273817
 1760 07e8 9A999999 		.long	2576980378
 1761 07ec 9999E93F 		.long	1072273817
 1762 07f0 9A999999 		.long	2576980378
 1763 07f4 9999E93F 		.long	1072273817
 1764 07f8 9A999999 		.long	2576980378
 1765 07fc 9999E93F 		.long	1072273817
 1766              		.align 32
 1767              	.LC73:
 1768 0800 00000000 		.long	0
 1769 0804 00408F40 		.long	1083129856
 1770 0808 00000000 		.long	0
 1771 080c 00408F40 		.long	1083129856
 1772 0810 00000000 		.long	0
 1773 0814 00408F40 		.long	1083129856
 1774 0818 00000000 		.long	0
 1775 081c 00408F40 		.long	1083129856
 1776              		.align 32
 1777              	.LC74:
 1778 0820 00000000 		.long	0
 1779 0824 00005940 		.long	1079574528
 1780 0828 00000000 		.long	0
 1781 082c 00005940 		.long	1079574528
 1782 0830 00000000 		.long	0
 1783 0834 00005940 		.long	1079574528
 1784 0838 00000000 		.long	0
 1785 083c 00005940 		.long	1079574528
 1786              		.align 32
 1787              	.LC79:
 1788 0840 7B14AE47 		.long	1202590843
 1789 0844 E17A843F 		.long	1065646817
 1790 0848 7B14AE47 		.long	1202590843
 1791 084c E17A843F 		.long	1065646817
 1792 0850 7B14AE47 		.long	1202590843
 1793 0854 E17A843F 		.long	1065646817
 1794 0858 7B14AE47 		.long	1202590843
 1795 085c E17A843F 		.long	1065646817
 1796              		.section	.rodata.cst16
 1797              		.align 16
 1798              	.LC82:
 1799 0070 FFFFFFFF 		.quad	-1
 1799      FFFFFFFF 
 1800 0078 FFFFFFFF 		.quad	-1
 1800      FFFFFFFF 
 1801              		.hidden	__dso_handle
 1802              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1803              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccpWqck0.s 			page 46


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccpWqck0.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccpWqck0.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccpWqck0.s:87     .text.startup:0000000000000000 main
     /tmp/ccpWqck0.s:1056   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccpWqck0.s:1068   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccpWqck0.s:1033   .text.startup:00000000000014a0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccpWqck0.s:1081   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccpWqck0.s:1092   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccpWqck0.s:1576   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccpWqck0.s:1097   .rodata.cst32:0000000000000020 .LC3
     /tmp/ccpWqck0.s:1107   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccpWqck0.s:1347   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccpWqck0.s:1399   .rodata.cst32:00000000000003a0 .LC35
     /tmp/ccpWqck0.s:1787   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccpWqck0.s:1117   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccpWqck0.s:1127   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccpWqck0.s:1157   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccpWqck0.s:1137   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccpWqck0.s:1147   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccpWqck0.s:1177   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccpWqck0.s:1187   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccpWqck0.s:1197   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccpWqck0.s:1167   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccpWqck0.s:1217   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccpWqck0.s:1227   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccpWqck0.s:1237   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccpWqck0.s:1247   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccpWqck0.s:1207   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccpWqck0.s:1257   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccpWqck0.s:1287   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccpWqck0.s:1267   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccpWqck0.s:1277   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccpWqck0.s:1297   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccpWqck0.s:1307   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccpWqck0.s:1317   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccpWqck0.s:1327   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccpWqck0.s:1337   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccpWqck0.s:1747   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccpWqck0.s:1737   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccpWqck0.s:1767   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccpWqck0.s:1757   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccpWqck0.s:1381   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccpWqck0.s:1358   .rodata.cst16:0000000000000000 .LC29
     /tmp/ccpWqck0.s:1366   .rodata.cst16:0000000000000020 .LC31
     /tmp/ccpWqck0.s:1362   .rodata.cst16:0000000000000010 .LC30
     /tmp/ccpWqck0.s:1392   .rodata.cst16:0000000000000030 .LC34
     /tmp/ccpWqck0.s:1371   .rodata.cst32:0000000000000360 .LC32
     /tmp/ccpWqck0.s:1429   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccpWqck0.s:1409   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccpWqck0.s:1449   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccpWqck0.s:1439   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccpWqck0.s:1419   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccpWqck0.s:1459   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccpWqck0.s:1489   .rodata.cst32:00000000000004c0 .LC44
GAS LISTING /tmp/ccpWqck0.s 			page 47


     /tmp/ccpWqck0.s:1469   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccpWqck0.s:1479   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccpWqck0.s:1499   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccpWqck0.s:1509   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccpWqck0.s:1529   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccpWqck0.s:1519   .rodata.cst32:0000000000000520 .LC47
     /tmp/ccpWqck0.s:1539   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccpWqck0.s:1550   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccpWqck0.s:1798   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccpWqck0.s:1555   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccpWqck0.s:1565   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccpWqck0.s:1582   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccpWqck0.s:1587   .rodata.cst32:00000000000005c0 .LC55
     /tmp/ccpWqck0.s:1597   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccpWqck0.s:1607   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccpWqck0.s:1647   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccpWqck0.s:1617   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccpWqck0.s:1627   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccpWqck0.s:1657   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccpWqck0.s:1637   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccpWqck0.s:1687   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccpWqck0.s:1697   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccpWqck0.s:1667   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccpWqck0.s:1707   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccpWqck0.s:1677   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccpWqck0.s:1717   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccpWqck0.s:1727   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccpWqck0.s:1777   .rodata.cst32:0000000000000820 .LC74

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSolsEi
_ZNSo9_M_insertIdEERSoT_
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
