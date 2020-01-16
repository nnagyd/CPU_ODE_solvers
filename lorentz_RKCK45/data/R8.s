GAS LISTING /tmp/ccn2Dd5N.s 			page 1


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
GAS LISTING /tmp/ccn2Dd5N.s 			page 2


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
GAS LISTING /tmp/ccn2Dd5N.s 			page 3


  97 0008 4155     		pushq	%r13
  98 000a 4154     		pushq	%r12
  99 000c 53       		pushq	%rbx
 100 000d 4883E4E0 		andq	$-32, %rsp
 101 0011 4881EC60 		subq	$8032, %rsp
 101      1F0000
 102              		.cfi_offset 15, -24
 103              		.cfi_offset 14, -32
 104              		.cfi_offset 13, -40
 105              		.cfi_offset 12, -48
 106              		.cfi_offset 3, -56
 107 0018 488D8424 		leaq	352(%rsp), %rax
 107      60010000 
 108 0020 C57D282D 		vmovapd	.LC0(%rip), %ymm13
 108      00000000 
 109 0028 488D9000 		leaq	768(%rax), %rdx
 109      030000
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
GAS LISTING /tmp/ccn2Dd5N.s 			page 4


 133      00
 134 00b5 C5F5570D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 134      00000000 
 135 00bd C5FD298C 		vmovapd	%ymm1, 224(%rsp)
 135      24E00000 
 135      00
 136              	.L14:
 137 00c6 C5FD2803 		vmovapd	(%rbx), %ymm0
 138 00ca B9600000 		movl	$96, %ecx
 138      00
 139 00cf 488DBC24 		leaq	6496(%rsp), %rdi
 139      60190000 
 140 00d7 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 140      00000000 
 141 00df 488DB424 		leaq	352(%rsp), %rsi
 141      60010000 
 142 00e7 31D2     		xorl	%edx, %edx
 143 00e9 C5FD2984 		vmovapd	%ymm0, 7776(%rsp)
 143      24601E00 
 143      00
 144 00f2 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 145 00f6 C5FD298C 		vmovapd	%ymm1, 7520(%rsp)
 145      24601D00 
 145      00
 146 00ff 4531ED   		xorl	%r13d, %r13d
 147 0102 4C8D8424 		leaq	1376(%rsp), %r8
 147      60050000 
 148 010a 4C8D8C24 		leaq	7776(%rsp), %r9
 148      601E0000 
 149 0112 C5FD2984 		vmovapd	%ymm0, 7264(%rsp)
 149      24601C00 
 149      00
 150 011b C5FD284B 		vmovapd	32(%rbx), %ymm1
 150      20
 151 0120 C5FD2984 		vmovapd	%ymm0, 7296(%rsp)
 151      24801C00 
 151      00
 152 0129 C5FD298C 		vmovapd	%ymm1, 7808(%rsp)
 152      24801E00 
 152      00
 153 0132 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 153      00000000 
 154 013a C5FD298C 		vmovapd	%ymm1, 7552(%rsp)
 154      24801D00 
 154      00
 155 0143 C5FD284B 		vmovapd	64(%rbx), %ymm1
 155      40
 156 0148 C5FD2984 		vmovapd	%ymm0, 7328(%rsp)
 156      24A01C00 
 156      00
 157 0151 C5FD298C 		vmovapd	%ymm1, 7840(%rsp)
 157      24A01E00 
 157      00
 158 015a C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 158      00000000 
 159 0162 C5FD298C 		vmovapd	%ymm1, 7584(%rsp)
 159      24A01D00 
GAS LISTING /tmp/ccn2Dd5N.s 			page 5


 159      00
 160 016b C5FD284B 		vmovapd	96(%rbx), %ymm1
 160      60
 161 0170 C5FD2984 		vmovapd	%ymm0, 7360(%rsp)
 161      24C01C00 
 161      00
 162 0179 C5FD298C 		vmovapd	%ymm1, 7872(%rsp)
 162      24C01E00 
 162      00
 163 0182 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 163      00000000 
 164 018a C5FD298C 		vmovapd	%ymm1, 7616(%rsp)
 164      24C01D00 
 164      00
 165 0193 C5FD288B 		vmovapd	128(%rbx), %ymm1
 165      80000000 
 166 019b C5FD2984 		vmovapd	%ymm0, 7392(%rsp)
 166      24E01C00 
 166      00
 167 01a4 C5FD298C 		vmovapd	%ymm1, 7904(%rsp)
 167      24E01E00 
 167      00
 168 01ad C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 168      00000000 
 169 01b5 C5FD298C 		vmovapd	%ymm1, 7648(%rsp)
 169      24E01D00 
 169      00
 170 01be C5FD288B 		vmovapd	160(%rbx), %ymm1
 170      A0000000 
 171 01c6 C5FD2984 		vmovapd	%ymm0, 7424(%rsp)
 171      24001D00 
 171      00
 172 01cf C5FD298C 		vmovapd	%ymm1, 7936(%rsp)
 172      24001F00 
 172      00
 173 01d8 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 173      00000000 
 174 01e0 C5FD298C 		vmovapd	%ymm1, 7680(%rsp)
 174      24001E00 
 174      00
 175 01e9 C5FD288B 		vmovapd	192(%rbx), %ymm1
 175      C0000000 
 176 01f1 C5FD298C 		vmovapd	%ymm1, 7968(%rsp)
 176      24201F00 
 176      00
 177 01fa C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 177      00000000 
 178 0202 C5FD298C 		vmovapd	%ymm1, 7712(%rsp)
 178      24201E00 
 178      00
 179 020b C5FD2984 		vmovapd	%ymm0, 7456(%rsp)
 179      24201D00 
 179      00
 180 0214 C5FD288B 		vmovapd	224(%rbx), %ymm1
 180      E0000000 
 181 021c F348A5   		rep movsq
 182 021f C5FD298C 		vmovapd	%ymm1, 8000(%rsp)
GAS LISTING /tmp/ccn2Dd5N.s 			page 6


 182      24401F00 
 182      00
 183 0228 488DB424 		leaq	6496(%rsp), %rsi
 183      60190000 
 184 0230 488DBC24 		leaq	1888(%rsp), %rdi
 184      60070000 
 185 0238 C5FD280D 		vmovapd	.LC79(%rip), %ymm1
 185      00000000 
 186 0240 C5FD2984 		vmovapd	%ymm0, 7488(%rsp)
 186      24401D00 
 186      00
 187 0249 C5FD298C 		vmovapd	%ymm1, 7744(%rsp)
 187      24401E00 
 187      00
 188 0252 E9890000 		jmp	.L49
 188      00
 189 0257 660F1F84 		.p2align 4,,10
 189      00000000 
 189      00
 190              		.p2align 3
 191              	.L15:
 192 0260 4963C5   		movslq	%r13d, %rax
 193 0263 4C63DA   		movslq	%edx, %r11
 194 0266 4183C503 		addl	$3, %r13d
 195 026a 48C1E005 		salq	$5, %rax
 196 026e 49C1E305 		salq	$5, %r11
 197 0272 83C201   		addl	$1, %edx
 198 0275 4C8D7020 		leaq	32(%rax), %r14
 199 0279 4C8D1406 		leaq	(%rsi,%rax), %r10
 200 027d 4A8D0C36 		leaq	(%rsi,%r14), %rcx
 201 0281 C5FD2801 		vmovapd	(%rcx), %ymm0
 202 0285 C4C17D5C 		vsubpd	(%r10), %ymm0, %ymm0
 202      02
 203 028a C59559C0 		vmulpd	%ymm0, %ymm13, %ymm0
 204 028e C5FD2984 		vmovapd	%ymm0, 3424(%rsp,%rax)
 204      04600D00 
 204      00
 205 0297 4883C040 		addq	$64, %rax
 206 029b 4C8D3C06 		leaq	(%rsi,%rax), %r15
 207 029f C4C17D28 		vmovapd	(%r10), %ymm0
 207      02
 208 02a4 C4C17D59 		vmulpd	(%r15), %ymm0, %ymm1
 208      0F
 209 02a9 C4A17D59 		vmulpd	7776(%rsp,%r11), %ymm0, %ymm0
 209      841C601E 
 209      0000
 210 02b3 C5FD5C01 		vsubpd	(%rcx), %ymm0, %ymm0
 211 02b7 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 212 02bb C4A17D29 		vmovapd	%ymm0, 3424(%rsp,%r14)
 212      8434600D 
 212      0000
 213 02c5 C4C17D28 		vmovapd	(%r10), %ymm0
 213      02
 214 02ca C4C16559 		vmulpd	(%r15), %ymm3, %ymm1
 214      0F
 215 02cf C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 216 02d3 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
GAS LISTING /tmp/ccn2Dd5N.s 			page 7


 217 02d7 C5FD2984 		vmovapd	%ymm0, 3424(%rsp,%rax)
 217      04600D00 
 217      00
 218              	.L49:
 219 02e0 83FA07   		cmpl	$7, %edx
 220 02e3 0F8E77FF 		jle	.L15
 220      FFFF
 221 02e9 488D8424 		leaq	5728(%rsp), %rax
 221      60160000 
 222 02f1 488D9424 		leaq	1120(%rsp), %rdx
 222      60040000 
 223 02f9 0F1F8000 		.p2align 4,,10
 223      000000
 224              		.p2align 3
 225              	.L17:
 226 0300 C59D5980 		vmulpd	-2304(%rax), %ymm12, %ymm0
 226      00F7FFFF 
 227 0308 4883C220 		addq	$32, %rdx
 228 030c 4883C060 		addq	$96, %rax
 229 0310 C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 229      E0180000 
 230 0318 C5FD5880 		vaddpd	672(%rax), %ymm0, %ymm0
 230      A0020000 
 231 0320 C5FD2940 		vmovapd	%ymm0, -96(%rax)
 231      A0
 232 0325 C59D5980 		vmulpd	-2368(%rax), %ymm12, %ymm0
 232      C0F6FFFF 
 233 032d C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 233      E0180000 
 234 0335 C5FD5880 		vaddpd	704(%rax), %ymm0, %ymm0
 234      C0020000 
 235 033d C5FD2940 		vmovapd	%ymm0, -64(%rax)
 235      C0
 236 0342 C59D5980 		vmulpd	-2336(%rax), %ymm12, %ymm0
 236      E0F6FFFF 
 237 034a C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 237      E0180000 
 238 0352 C5FD5880 		vaddpd	736(%rax), %ymm0, %ymm0
 238      E0020000 
 239 035a C5FD2940 		vmovapd	%ymm0, -32(%rax)
 239      E0
 240 035f 4C39C2   		cmpq	%r8, %rdx
 241 0362 759C     		jne	.L17
 242 0364 488D8C24 		leaq	5728(%rsp), %rcx
 242      60160000 
 243 036c 4C89CA   		movq	%r9, %rdx
 244 036f 4889C8   		movq	%rcx, %rax
 245              		.p2align 4,,10
 246 0372 660F1F44 		.p2align 3
 246      0000
 247              	.L19:
 248 0378 C5FD2800 		vmovapd	(%rax), %ymm0
 249 037c 4883C060 		addq	$96, %rax
 250 0380 4883C220 		addq	$32, %rdx
 251 0384 C5FD2848 		vmovapd	-64(%rax), %ymm1
 251      C0
 252 0389 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
GAS LISTING /tmp/ccn2Dd5N.s 			page 8


 252      E0
 253 038e C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 254 0392 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 255 0396 C5FD2990 		vmovapd	%ymm2, -4704(%rax)
 255      A0EDFFFF 
 256 039e C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 256      E0
 257 03a3 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 258 03a7 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 259 03ab C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 260 03af C5FD2990 		vmovapd	%ymm2, -4672(%rax)
 260      C0EDFFFF 
 261 03b7 C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
 261      E0
 262 03bc C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 263 03c0 C5FD2980 		vmovapd	%ymm0, -4640(%rax)
 263      E0EDFFFF 
 264 03c8 4839F0   		cmpq	%rsi, %rax
 265 03cb 75AB     		jne	.L19
 266 03cd 488D9424 		leaq	1120(%rsp), %rdx
 266      60040000 
 267 03d5 4889D0   		movq	%rdx, %rax
 268 03d8 0F1F8400 		.p2align 4,,10
 268      00000000 
 269              		.p2align 3
 270              	.L21:
 271 03e0 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 271      00000000 
 272 03e8 4883C060 		addq	$96, %rax
 273 03ec 4883C220 		addq	$32, %rdx
 274 03f0 C5F55940 		vmulpd	-96(%rax), %ymm1, %ymm0
 274      A0
 275 03f5 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 275      00000000 
 276 03fd C5F55988 		vmulpd	2208(%rax), %ymm1, %ymm1
 276      A0080000 
 277 0405 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 278 0409 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 278      00000000 
 279 0411 C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 279      E0180000 
 280 0419 C5FD5880 		vaddpd	5280(%rax), %ymm0, %ymm0
 280      A0140000 
 281 0421 C5FD2980 		vmovapd	%ymm0, 4512(%rax)
 281      A0110000 
 282 0429 C5F55940 		vmulpd	-64(%rax), %ymm1, %ymm0
 282      C0
 283 042e C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 283      00000000 
 284 0436 C5F55988 		vmulpd	2240(%rax), %ymm1, %ymm1
 284      C0080000 
 285 043e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 286 0442 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 286      00000000 
 287 044a C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 287      E0180000 
 288 0452 C5FD5880 		vaddpd	5312(%rax), %ymm0, %ymm0
GAS LISTING /tmp/ccn2Dd5N.s 			page 9


 288      C0140000 
 289 045a C5FD2980 		vmovapd	%ymm0, 4544(%rax)
 289      C0110000 
 290 0462 C5F55940 		vmulpd	-32(%rax), %ymm1, %ymm0
 290      E0
 291 0467 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 291      00000000 
 292 046f C5F55988 		vmulpd	2272(%rax), %ymm1, %ymm1
 292      E0080000 
 293 0477 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 294 047b C5FD5982 		vmulpd	6368(%rdx), %ymm0, %ymm0
 294      E0180000 
 295 0483 C5FD5880 		vaddpd	5344(%rax), %ymm0, %ymm0
 295      E0140000 
 296 048b C5FD2980 		vmovapd	%ymm0, 4576(%rax)
 296      E0110000 
 297 0493 4839F8   		cmpq	%rdi, %rax
 298 0496 0F8544FF 		jne	.L21
 298      FFFF
 299 049c 4C89C8   		movq	%r9, %rax
 300 049f 4889CA   		movq	%rcx, %rdx
 301              		.p2align 4,,10
 302 04a2 660F1F44 		.p2align 3
 302      0000
 303              	.L23:
 304 04a8 C5FD2802 		vmovapd	(%rdx), %ymm0
 305 04ac 4883C260 		addq	$96, %rdx
 306 04b0 4883C020 		addq	$32, %rax
 307 04b4 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 307      C0
 308 04b9 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 308      E0
 309 04be C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 310 04c2 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 311 04c6 C5FD2992 		vmovapd	%ymm2, -1632(%rdx)
 311      A0F9FFFF 
 312 04ce C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 312      E0
 313 04d3 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 314 04d7 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 315 04db C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 316 04df C5FD2992 		vmovapd	%ymm2, -1600(%rdx)
 316      C0F9FFFF 
 317 04e7 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 317      E0
 318 04ec C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 319 04f0 C5FD2982 		vmovapd	%ymm0, -1568(%rdx)
 319      E0F9FFFF 
 320 04f8 4839D6   		cmpq	%rdx, %rsi
 321 04fb 75AB     		jne	.L23
 322 04fd 488D8424 		leaq	1120(%rsp), %rax
 322      60040000 
 323 0505 C5FD2825 		vmovapd	.LC9(%rip), %ymm4
 323      00000000 
 324 050d 31D2     		xorl	%edx, %edx
 325 050f 4C8D9800 		leaq	6400(%rax), %r11
 325      190000
GAS LISTING /tmp/ccn2Dd5N.s 			page 10


 326 0516 662E0F1F 		.p2align 4,,10
 326      84000000 
 326      0000
 327              		.p2align 3
 328              	.L25:
 329 0520 C5FD282D 		vmovapd	.LC7(%rip), %ymm5
 329      00000000 
 330 0528 4E8D141A 		leaq	(%rdx,%r11), %r10
 331 052c 4883C220 		addq	$32, %rdx
 332 0530 C5DD5990 		vmulpd	2304(%rax), %ymm4, %ymm2
 332      00090000 
 333 0538 4883C060 		addq	$96, %rax
 334 053c C5D55988 		vmulpd	2976(%rax), %ymm5, %ymm1
 334      A00B0000 
 335 0544 C5FD282D 		vmovapd	.LC8(%rip), %ymm5
 335      00000000 
 336 054c C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 336      A0
 337 0551 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 338 0555 C5DD5990 		vmulpd	2240(%rax), %ymm4, %ymm2
 338      C0080000 
 339 055d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 340 0561 C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 340      00000000 
 341 0569 C5F55988 		vmulpd	3008(%rax), %ymm1, %ymm1
 341      C00B0000 
 342 0571 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 342      02
 343 0576 C5FD5880 		vaddpd	5280(%rax), %ymm0, %ymm0
 343      A0140000 
 344 057e C5FD2980 		vmovapd	%ymm0, 4512(%rax)
 344      A0110000 
 345 0586 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 345      C0
 346 058b C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 347 058f C5DD5990 		vmulpd	2272(%rax), %ymm4, %ymm2
 347      E0080000 
 348 0597 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 349 059b C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 349      00000000 
 350 05a3 C5F55988 		vmulpd	3040(%rax), %ymm1, %ymm1
 350      E00B0000 
 351 05ab C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 351      02
 352 05b0 C5FD5880 		vaddpd	5312(%rax), %ymm0, %ymm0
 352      C0140000 
 353 05b8 C5FD2980 		vmovapd	%ymm0, 4544(%rax)
 353      C0110000 
 354 05c0 C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 354      E0
 355 05c5 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 356 05c9 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 357 05cd C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 357      02
 358 05d2 C5FD5880 		vaddpd	5344(%rax), %ymm0, %ymm0
 358      E0140000 
 359 05da C5FD2980 		vmovapd	%ymm0, 4576(%rax)
GAS LISTING /tmp/ccn2Dd5N.s 			page 11


 359      E0110000 
 360 05e2 4881FA00 		cmpq	$256, %rdx
 360      010000
 361 05e9 0F8531FF 		jne	.L25
 361      FFFF
 362 05ef 4C89C8   		movq	%r9, %rax
 363 05f2 4889CA   		movq	%rcx, %rdx
 364              		.p2align 4,,10
 365 05f5 0F1F00   		.p2align 3
 366              	.L27:
 367 05f8 C5FD2802 		vmovapd	(%rdx), %ymm0
 368 05fc 4883C260 		addq	$96, %rdx
 369 0600 4883C020 		addq	$32, %rax
 370 0604 C5FD284A 		vmovapd	-64(%rdx), %ymm1
 370      C0
 371 0609 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 371      E0
 372 060e C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 373 0612 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 374 0616 C5FD2992 		vmovapd	%ymm2, -864(%rdx)
 374      A0FCFFFF 
 375 061e C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 375      E0
 376 0623 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 377 0627 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 378 062b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 379 062f C5FD2992 		vmovapd	%ymm2, -832(%rdx)
 379      C0FCFFFF 
 380 0637 C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 380      E0
 381 063c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 382 0640 C5FD2982 		vmovapd	%ymm0, -800(%rdx)
 382      E0FCFFFF 
 383 0648 4839D6   		cmpq	%rdx, %rsi
 384 064b 75AB     		jne	.L27
 385 064d 488D8424 		leaq	1120(%rsp), %rax
 385      60040000 
 386 0655 31D2     		xorl	%edx, %edx
 387 0657 4C8D9800 		leaq	6400(%rax), %r11
 387      190000
 388 065e 6690     		.p2align 4,,10
 389              		.p2align 3
 390              	.L29:
 391 0660 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 391      00000000 
 392 0668 4E8D141A 		leaq	(%rdx,%r11), %r10
 393 066c 4883C220 		addq	$32, %rdx
 394 0670 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 394      00000000 
 395 0678 4883C060 		addq	$96, %rax
 396 067c C5D55990 		vmulpd	2976(%rax), %ymm5, %ymm2
 396      A00B0000 
 397 0684 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 397      00000000 
 398 068c C5DD5940 		vmulpd	-96(%rax), %ymm4, %ymm0
 398      A0
 399 0691 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
GAS LISTING /tmp/ccn2Dd5N.s 			page 12


 399      00000000 
 400 0699 C5D559A0 		vmulpd	2208(%rax), %ymm5, %ymm4
 400      A0080000 
 401 06a1 C5FD282D 		vmovapd	.LC12(%rip), %ymm5
 401      00000000 
 402 06a9 C5F55988 		vmulpd	3744(%rax), %ymm1, %ymm1
 402      A00E0000 
 403 06b1 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 404 06b5 C5FD2825 		vmovapd	.LC11(%rip), %ymm4
 404      00000000 
 405 06bd C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 406 06c1 C5DD5990 		vmulpd	3008(%rax), %ymm4, %ymm2
 406      C00B0000 
 407 06c9 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 407      00000000 
 408 06d1 C5DD59A0 		vmulpd	2240(%rax), %ymm4, %ymm4
 408      C0080000 
 409 06d9 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 410 06dd C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 410      00000000 
 411 06e5 C5F55988 		vmulpd	3776(%rax), %ymm1, %ymm1
 411      C00E0000 
 412 06ed C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 412      02
 413 06f2 C5FD5880 		vaddpd	5280(%rax), %ymm0, %ymm0
 413      A0140000 
 414 06fa C5FD2980 		vmovapd	%ymm0, 4512(%rax)
 414      A0110000 
 415 0702 C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 415      C0
 416 0707 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 416      00000000 
 417 070f C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 418 0713 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 418      00000000 
 419 071b C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 420 071f C5D55990 		vmulpd	3040(%rax), %ymm5, %ymm2
 420      E00B0000 
 421 0727 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 421      00000000 
 422 072f C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 423 0733 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 423      00000000 
 424 073b C5F55988 		vmulpd	3808(%rax), %ymm1, %ymm1
 424      E00E0000 
 425 0743 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 425      02
 426 0748 C5FD5880 		vaddpd	5312(%rax), %ymm0, %ymm0
 426      C0140000 
 427 0750 C5FD2980 		vmovapd	%ymm0, 4544(%rax)
 427      C0110000 
 428 0758 C5DD5940 		vmulpd	-32(%rax), %ymm4, %ymm0
 428      E0
 429 075d C5D559A0 		vmulpd	2272(%rax), %ymm5, %ymm4
 429      E0080000 
 430 0765 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 431 0769 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
GAS LISTING /tmp/ccn2Dd5N.s 			page 13


 432 076d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 433 0771 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 433      02
 434 0776 C5FD5880 		vaddpd	5344(%rax), %ymm0, %ymm0
 434      E0140000 
 435 077e C5FD2980 		vmovapd	%ymm0, 4576(%rax)
 435      E0110000 
 436 0786 4881FA00 		cmpq	$256, %rdx
 436      010000
 437 078d 0F85CDFE 		jne	.L29
 437      FFFF
 438 0793 4C89C8   		movq	%r9, %rax
 439 0796 4889CA   		movq	%rcx, %rdx
 440 0799 0F1F8000 		.p2align 4,,10
 440      000000
 441              		.p2align 3
 442              	.L31:
 443 07a0 C5FD2802 		vmovapd	(%rdx), %ymm0
 444 07a4 4883C260 		addq	$96, %rdx
 445 07a8 4883C020 		addq	$32, %rax
 446 07ac C5FD284A 		vmovapd	-64(%rdx), %ymm1
 446      C0
 447 07b1 C5FD5962 		vmulpd	-32(%rdx), %ymm0, %ymm4
 447      E0
 448 07b6 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 449 07ba C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 450 07be C5FD2992 		vmovapd	%ymm2, -3168(%rdx)
 450      A0F3FFFF 
 451 07c6 C5FD5950 		vmulpd	-32(%rax), %ymm0, %ymm2
 451      E0
 452 07cb C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 453 07cf C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 454 07d3 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 455 07d7 C5FD2992 		vmovapd	%ymm2, -3136(%rdx)
 455      C0F3FFFF 
 456 07df C5E55952 		vmulpd	-32(%rdx), %ymm3, %ymm2
 456      E0
 457 07e4 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 458 07e8 C5FD2982 		vmovapd	%ymm0, -3104(%rdx)
 458      E0F3FFFF 
 459 07f0 4839D6   		cmpq	%rdx, %rsi
 460 07f3 75AB     		jne	.L31
 461 07f5 488D8424 		leaq	1120(%rsp), %rax
 461      60040000 
 462 07fd 31D2     		xorl	%edx, %edx
 463 07ff 4C8D9800 		leaq	6400(%rax), %r11
 463      190000
 464 0806 662E0F1F 		.p2align 4,,10
 464      84000000 
 464      0000
 465              		.p2align 3
 466              	.L33:
 467 0810 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 467      00000000 
 468 0818 4E8D141A 		leaq	(%rdx,%r11), %r10
 469 081c 4883C220 		addq	$32, %rdx
 470 0820 C5FD2835 		vmovapd	.LC16(%rip), %ymm6
GAS LISTING /tmp/ccn2Dd5N.s 			page 14


 470      00000000 
 471 0828 4883C060 		addq	$96, %rax
 472 082c C5DD5990 		vmulpd	3744(%rax), %ymm4, %ymm2
 472      A00E0000 
 473 0834 C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 473      00000000 
 474 083c C5CD59A0 		vmulpd	2976(%rax), %ymm6, %ymm4
 474      A00B0000 
 475 0844 C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 475      00000000 
 476 084c C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 476      A0
 477 0851 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 477      00000000 
 478 0859 C5CD59A8 		vmulpd	2208(%rax), %ymm6, %ymm5
 478      A0080000 
 479 0861 C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 479      00000000 
 480 0869 C5F55988 		vmulpd	1440(%rax), %ymm1, %ymm1
 480      A0050000 
 481 0871 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 482 0875 C5FD282D 		vmovapd	.LC16(%rip), %ymm5
 482      00000000 
 483 087d C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 484 0881 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 484      00000000 
 485 0889 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 486 088d C5DD5990 		vmulpd	3776(%rax), %ymm4, %ymm2
 486      C00E0000 
 487 0895 C5D559A0 		vmulpd	3008(%rax), %ymm5, %ymm4
 487      C00B0000 
 488 089d C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 488      00000000 
 489 08a5 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 490 08a9 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 490      00000000 
 491 08b1 C5D559A8 		vmulpd	2240(%rax), %ymm5, %ymm5
 491      C0080000 
 492 08b9 C5F55988 		vmulpd	1472(%rax), %ymm1, %ymm1
 492      C0050000 
 493 08c1 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 493      02
 494 08c6 C5FD5880 		vaddpd	5280(%rax), %ymm0, %ymm0
 494      A0140000 
 495 08ce C5FD2980 		vmovapd	%ymm0, 4512(%rax)
 495      A0110000 
 496 08d6 C5CD5940 		vmulpd	-64(%rax), %ymm6, %ymm0
 496      C0
 497 08db C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 498 08df C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 498      00000000 
 499 08e7 C5D559A8 		vmulpd	2272(%rax), %ymm5, %ymm5
 499      E0080000 
 500 08ef C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 501 08f3 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 501      00000000 
 502 08fb C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
GAS LISTING /tmp/ccn2Dd5N.s 			page 15


 503 08ff C5DD5990 		vmulpd	3808(%rax), %ymm4, %ymm2
 503      E00E0000 
 504 0907 C5FD2825 		vmovapd	.LC16(%rip), %ymm4
 504      00000000 
 505 090f C5DD59A0 		vmulpd	3040(%rax), %ymm4, %ymm4
 505      E00B0000 
 506 0917 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 507 091b C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 507      00000000 
 508 0923 C5F55988 		vmulpd	1504(%rax), %ymm1, %ymm1
 508      E0050000 
 509 092b C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 509      02
 510 0930 C5FD5880 		vaddpd	5312(%rax), %ymm0, %ymm0
 510      C0140000 
 511 0938 C5FD2980 		vmovapd	%ymm0, 4544(%rax)
 511      C0110000 
 512 0940 C5CD5940 		vmulpd	-32(%rax), %ymm6, %ymm0
 512      E0
 513 0945 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 514 0949 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 515 094d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 516 0951 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 517 0955 C4C17D59 		vmulpd	(%r10), %ymm0, %ymm0
 517      02
 518 095a C5FD5880 		vaddpd	5344(%rax), %ymm0, %ymm0
 518      E0140000 
 519 0962 C5FD2980 		vmovapd	%ymm0, 4576(%rax)
 519      E0110000 
 520 096a 4881FA00 		cmpq	$256, %rdx
 520      010000
 521 0971 0F8599FE 		jne	.L33
 521      FFFF
 522 0977 4C89CA   		movq	%r9, %rdx
 523 097a 4889C8   		movq	%rcx, %rax
 524 097d 0F1F00   		.p2align 4,,10
 525              		.p2align 3
 526              	.L35:
 527 0980 C5FD2800 		vmovapd	(%rax), %ymm0
 528 0984 4883C060 		addq	$96, %rax
 529 0988 4883C220 		addq	$32, %rdx
 530 098c C5FD2848 		vmovapd	-64(%rax), %ymm1
 530      C0
 531 0991 C5FD5960 		vmulpd	-32(%rax), %ymm0, %ymm4
 531      E0
 532 0996 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 533 099a C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 534 099e C5FD2990 		vmovapd	%ymm2, -3936(%rax)
 534      A0F0FFFF 
 535 09a6 C5FD5952 		vmulpd	-32(%rdx), %ymm0, %ymm2
 535      E0
 536 09ab C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 537 09af C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 538 09b3 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 539 09b7 C5FD2990 		vmovapd	%ymm2, -3904(%rax)
 539      C0F0FFFF 
 540 09bf C5E55950 		vmulpd	-32(%rax), %ymm3, %ymm2
GAS LISTING /tmp/ccn2Dd5N.s 			page 16


 540      E0
 541 09c4 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 542 09c8 C5FD2980 		vmovapd	%ymm0, -3872(%rax)
 542      E0F0FFFF 
 543 09d0 4839C6   		cmpq	%rax, %rsi
 544 09d3 75AB     		jne	.L35
 545 09d5 488D8424 		leaq	1120(%rsp), %rax
 545      60040000 
 546 09dd C5FD280D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 546      00000000 
 547 09e5 4C8D9C24 		leaq	2656(%rsp), %r11
 547      600A0000 
 548 09ed 4989FA   		movq	%rdi, %r10
 549 09f0 4889C1   		movq	%rax, %rcx
 550              		.p2align 4,,10
 551 09f3 0F1F4400 		.p2align 3
 551      00
 552              	.L39:
 553 09f8 4C89D0   		movq	%r10, %rax
 554 09fb BA030000 		movl	$3, %edx
 554      00
 555              	.L37:
 556 0a00 C5FD2835 		vmovapd	.LC19(%rip), %ymm6
 556      00000000 
 557 0a08 4883C020 		addq	$32, %rax
 558 0a0c C5FD282D 		vmovapd	.LC22(%rip), %ymm5
 558      00000000 
 559 0a14 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 559      E0
 560 0a19 C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 560      00000000 
 561 0a21 C5D559A8 		vmulpd	1504(%rax), %ymm5, %ymm5
 561      E0050000 
 562 0a29 C5CD59A0 		vmulpd	3040(%rax), %ymm6, %ymm4
 562      E00B0000 
 563 0a31 C5FD2835 		vmovapd	.LC21(%rip), %ymm6
 563      00000000 
 564 0a39 C5CD5980 		vmulpd	2272(%rax), %ymm6, %ymm0
 564      E0080000 
 565 0a41 C5FD2835 		vmovapd	.LC23(%rip), %ymm6
 565      00000000 
 566 0a49 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 567 0a4d C5FD282D 		vmovapd	.LC24(%rip), %ymm5
 567      00000000 
 568 0a55 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 569 0a59 C5D559A0 		vmulpd	736(%rax), %ymm5, %ymm4
 569      E0020000 
 570 0a61 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 571 0a65 C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 571      E0
 572 0a6a C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 572      00000000 
 573 0a72 C5CD59A8 		vmulpd	3040(%rax), %ymm6, %ymm5
 573      E00B0000 
 574 0a7a C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 574      00000000 
 575 0a82 C5FD5981 		vmulpd	6400(%rcx), %ymm0, %ymm0
GAS LISTING /tmp/ccn2Dd5N.s 			page 17


 575      00190000 
 576 0a8a C5FD5880 		vaddpd	4576(%rax), %ymm0, %ymm0
 576      E0110000 
 577 0a92 C5FD2980 		vmovapd	%ymm0, 3808(%rax)
 577      E00E0000 
 578 0a9a C5CD5980 		vmulpd	2272(%rax), %ymm6, %ymm0
 578      E0080000 
 579 0aa2 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 579      00000000 
 580 0aaa C5CD59B0 		vmulpd	1504(%rax), %ymm6, %ymm6
 580      E0050000 
 581 0ab2 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 582 0ab6 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 583 0aba C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 584 0abe C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 585 0ac2 C5F55490 		vandpd	3808(%rax), %ymm1, %ymm2
 585      E00E0000 
 586 0aca C5FD5981 		vmulpd	6400(%rcx), %ymm0, %ymm0
 586      00190000 
 587 0ad2 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 588 0ad6 C5C558D2 		vaddpd	%ymm2, %ymm7, %ymm2
 589 0ada C5FD2980 		vmovapd	%ymm0, -800(%rax)
 589      E0FCFFFF 
 590 0ae2 C5ED5EC0 		vdivpd	%ymm0, %ymm2, %ymm0
 591 0ae6 C5FD2950 		vmovapd	%ymm2, -32(%rax)
 591      E0
 592 0aeb C5FD54C1 		vandpd	%ymm1, %ymm0, %ymm0
 593 0aef C5FD2980 		vmovapd	%ymm0, 736(%rax)
 593      E0020000 
 594 0af7 83EA01   		subl	$1, %edx
 595 0afa 0F8500FF 		jne	.L37
 595      FFFF
 596 0b00 4983C260 		addq	$96, %r10
 597 0b04 4883C120 		addq	$32, %rcx
 598 0b08 4D39DA   		cmpq	%r11, %r10
 599 0b0b 0F85E7FE 		jne	.L39
 599      FFFF
 600 0b11 C5FD2884 		vmovapd	2656(%rsp), %ymm0
 600      24600A00 
 600      00
 601 0b1a 4889F2   		movq	%rsi, %rdx
 602 0b1d 488D8424 		leaq	7520(%rsp), %rax
 602      601D0000 
 603 0b25 C5FD28A4 		vmovapd	192(%rsp), %ymm4
 603      24C00000 
 603      00
 604 0b2e 4C8D9424 		leaq	7264(%rsp), %r10
 604      601C0000 
 605 0b36 C5FD5D84 		vminpd	2688(%rsp), %ymm0, %ymm0
 605      24800A00 
 605      00
 606 0b3f C5FD5D84 		vminpd	2720(%rsp), %ymm0, %ymm0
 606      24A00A00 
 606      00
 607 0b48 C5FD2984 		vmovapd	%ymm0, 1888(%rsp)
 607      24600700 
 607      00
GAS LISTING /tmp/ccn2Dd5N.s 			page 18


 608 0b51 C5FD2884 		vmovapd	2752(%rsp), %ymm0
 608      24C00A00 
 608      00
 609 0b5a C5FD5D84 		vminpd	2784(%rsp), %ymm0, %ymm0
 609      24E00A00 
 609      00
 610 0b63 C5FD5D84 		vminpd	2816(%rsp), %ymm0, %ymm0
 610      24000B00 
 610      00
 611 0b6c C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 611      24800700 
 611      00
 612 0b75 C5FD2884 		vmovapd	2848(%rsp), %ymm0
 612      24200B00 
 612      00
 613 0b7e C5FD5D84 		vminpd	2880(%rsp), %ymm0, %ymm0
 613      24400B00 
 613      00
 614 0b87 C5FD5D84 		vminpd	2912(%rsp), %ymm0, %ymm0
 614      24600B00 
 614      00
 615 0b90 C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 615      24A00700 
 615      00
 616 0b99 C5FD2884 		vmovapd	2944(%rsp), %ymm0
 616      24800B00 
 616      00
 617 0ba2 C5FD5D84 		vminpd	2976(%rsp), %ymm0, %ymm0
 617      24A00B00 
 617      00
 618 0bab C5FD5D84 		vminpd	3008(%rsp), %ymm0, %ymm0
 618      24C00B00 
 618      00
 619 0bb4 C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 619      24C00700 
 619      00
 620 0bbd C5FD2884 		vmovapd	3040(%rsp), %ymm0
 620      24E00B00 
 620      00
 621 0bc6 C5FD5D84 		vminpd	3072(%rsp), %ymm0, %ymm0
 621      24000C00 
 621      00
 622 0bcf C5FD5D84 		vminpd	3104(%rsp), %ymm0, %ymm0
 622      24200C00 
 622      00
 623 0bd8 C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 623      24E00700 
 623      00
 624 0be1 C5FD2884 		vmovapd	3136(%rsp), %ymm0
 624      24400C00 
 624      00
 625 0bea C5FD5D84 		vminpd	3168(%rsp), %ymm0, %ymm0
 625      24600C00 
 625      00
 626 0bf3 C5FD5D84 		vminpd	3200(%rsp), %ymm0, %ymm0
 626      24800C00 
 626      00
GAS LISTING /tmp/ccn2Dd5N.s 			page 19


 627 0bfc C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 627      24000800 
 627      00
 628 0c05 C5FD2884 		vmovapd	3232(%rsp), %ymm0
 628      24A00C00 
 628      00
 629 0c0e C5FD5D84 		vminpd	3264(%rsp), %ymm0, %ymm0
 629      24C00C00 
 629      00
 630 0c17 C5FD5D84 		vminpd	3296(%rsp), %ymm0, %ymm0
 630      24E00C00 
 630      00
 631 0c20 C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 631      24200800 
 631      00
 632 0c29 C5FD2884 		vmovapd	3328(%rsp), %ymm0
 632      24000D00 
 632      00
 633 0c32 C5FD5D84 		vminpd	3360(%rsp), %ymm0, %ymm0
 633      24200D00 
 633      00
 634 0c3b C5FD5D84 		vminpd	3392(%rsp), %ymm0, %ymm0
 634      24400D00 
 634      00
 635 0c44 C5FD2984 		vmovapd	%ymm0, 2112(%rsp)
 635      24400800 
 635      00
 636 0c4d C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 636      24200100 
 636      00
 637 0c56 C5FD298C 		vmovapd	%ymm1, 256(%rsp)
 637      24000100 
 637      00
 638 0c5f E9ED0000 		jmp	.L45
 638      00
 639              		.p2align 4,,10
 640 0c64 0F1F4000 		.p2align 3
 641              	.L43:
 642 0c68 C5FD2800 		vmovapd	(%rax), %ymm0
 643 0c6c C58DC290 		vcmppd	$2, -5632(%rax), %ymm14, %ymm2
 643      00EAFFFF 
 643      02
 644 0c75 C5FD280D 		vmovapd	.LC71(%rip), %ymm1
 644      00000000 
 645 0c7d 4883C260 		addq	$96, %rdx
 646 0c81 4883C020 		addq	$32, %rax
 647 0c85 C5FDC205 		vcmppd	$2, .LC70(%rip), %ymm0, %ymm0
 647      00000000 
 647      02
 648 0c8e C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 649 0c92 C5F5C2D6 		vcmppd	$1, %ymm6, %ymm1, %ymm2
 649      01
 650 0c97 C4E34D4B 		vblendvpd	%ymm2, %ymm1, %ymm6, %ymm6
 650      F120
 651 0c9d C5FD280D 		vmovapd	.LC73(%rip), %ymm1
 651      00000000 
 652 0ca5 C4C14DC2 		vcmppd	$1, %ymm12, %ymm6, %ymm2
GAS LISTING /tmp/ccn2Dd5N.s 			page 20


 652      D401
 653 0cab C4C34D4B 		vblendvpd	%ymm2, %ymm12, %ymm6, %ymm6
 653      F420
 654 0cb1 C5FD29B0 		vmovapd	%ymm6, -4896(%rax)
 654      E0ECFFFF 
 655 0cb9 C5FD2852 		vmovapd	-96(%rdx), %ymm2
 655      A0
 656 0cbe C4E36D4B 		vblendvpd	%ymm0, -864(%rdx), %ymm2, %ymm2
 656      92A0FCFF 
 656      FF00
 657 0cc8 C5FD2952 		vmovapd	%ymm2, -96(%rdx)
 657      A0
 658 0ccd C5FD2852 		vmovapd	-64(%rdx), %ymm2
 658      C0
 659 0cd2 C4E36D4B 		vblendvpd	%ymm0, -832(%rdx), %ymm2, %ymm2
 659      92C0FCFF 
 659      FF00
 660 0cdc C5FD2952 		vmovapd	%ymm2, -64(%rdx)
 660      C0
 661 0ce1 C5FD2852 		vmovapd	-32(%rdx), %ymm2
 661      E0
 662 0ce6 C4E36D4B 		vblendvpd	%ymm0, -800(%rdx), %ymm2, %ymm2
 662      92E0FCFF 
 662      FF00
 663 0cf0 C5FD2952 		vmovapd	%ymm2, -32(%rdx)
 663      E0
 664 0cf5 C5FD2890 		vmovapd	-288(%rax), %ymm2
 664      E0FEFFFF 
 665 0cfd C5ED5860 		vaddpd	-32(%rax), %ymm2, %ymm4
 665      E0
 666 0d02 C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 666      C400
 667 0d08 C5FD2980 		vmovapd	%ymm0, -288(%rax)
 667      E0FEFFFF 
 668 0d10 C5FD2880 		vmovapd	-4896(%rax), %ymm0
 668      E0ECFFFF 
 669 0d18 C5FD5940 		vmulpd	-32(%rax), %ymm0, %ymm0
 669      E0
 670 0d1d C5FD5905 		vmulpd	.LC72(%rip), %ymm0, %ymm0
 670      00000000 
 671 0d25 C5F5C2D0 		vcmppd	$1, %ymm0, %ymm1, %ymm2
 671      01
 672 0d2a C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 672      C120
 673 0d30 C5FDC215 		vcmppd	$1, .LC70(%rip), %ymm0, %ymm2
 673      00000000 
 673      01
 674 0d39 C4E37D4B 		vblendvpd	%ymm2, .LC70(%rip), %ymm0, %ymm0
 674      05000000 
 674      0020
 675 0d43 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 675      E0
 676 0d48 4C39D2   		cmpq	%r10, %rdx
 677 0d4b 0F843F04 		je	.L52
 677      0000
 678              	.L45:
 679 0d51 C5FD28B0 		vmovapd	-5632(%rax), %ymm6
GAS LISTING /tmp/ccn2Dd5N.s 			page 21


 679      00EAFFFF 
 680 0d59 C5F1EFC9 		vpxor	%xmm1, %xmm1, %xmm1
 681 0d5d C5FD2815 		vmovapd	.LC33(%rip), %ymm2
 681      00000000 
 682 0d65 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 682      F501
 683 0d6b C5F928E6 		vmovapd	%xmm6, %xmm4
 684 0d6f C559DB0D 		vpand	.LC29(%rip), %xmm4, %xmm9
 684      00000000 
 685 0d77 C5B973D4 		vpsrlq	$52, %xmm4, %xmm8
 685      34
 686 0d7c C5D1DB05 		vpand	.LC29(%rip), %xmm5, %xmm0
 686      00000000 
 687 0d84 C539EB05 		vpor	.LC31(%rip), %xmm8, %xmm8
 687      00000000 
 688 0d8c C531EB0D 		vpor	.LC30(%rip), %xmm9, %xmm9
 688      00000000 
 689 0d94 C5F9EB05 		vpor	.LC30(%rip), %xmm0, %xmm0
 689      00000000 
 690 0d9c C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 690      C801
 691 0da2 C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 691      34
 692 0da7 C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 692      00000000 
 693 0daf C4C16DC2 		vcmppd	$1, %ymm9, %ymm2, %ymm2
 693      D101
 694 0db5 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 694      D201
 695 0dbb C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 695      C001
 696 0dc1 C5F928C2 		vmovapd	%xmm2, %xmm0
 697 0dc5 C4C16D54 		vandpd	%ymm14, %ymm2, %ymm2
 697      D6
 698 0dca C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 698      00000000 
 699 0dd2 C53D5C05 		vsubpd	.LC32(%rip), %ymm8, %ymm8
 699      00000000 
 700 0dda C5F95705 		vxorpd	.LC34(%rip), %xmm0, %xmm0
 700      00000000 
 701 0de2 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 701      C201
 702 0de8 C53D58C2 		vaddpd	%ymm2, %ymm8, %ymm8
 703 0dec C4C17D54 		vandpd	%ymm9, %ymm0, %ymm0
 703      C1
 704 0df1 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 704      C1
 705 0df6 C4C17D5C 		vsubpd	%ymm14, %ymm0, %ymm0
 705      C6
 706 0dfb C57D591D 		vmulpd	.LC38(%rip), %ymm0, %ymm11
 706      00000000 
 707 0e03 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 708 0e07 C57D593D 		vmulpd	.LC36(%rip), %ymm0, %ymm15
 708      00000000 
 709 0e0f C57D5915 		vmulpd	.LC40(%rip), %ymm0, %ymm10
 709      00000000 
 710 0e17 C525581D 		vaddpd	.LC39(%rip), %ymm11, %ymm11
GAS LISTING /tmp/ccn2Dd5N.s 			page 22


 710      00000000 
 711 0e1f C56D59CA 		vmulpd	%ymm2, %ymm2, %ymm9
 712 0e23 C505583D 		vaddpd	.LC37(%rip), %ymm15, %ymm15
 712      00000000 
 713 0e2b C52D5815 		vaddpd	.LC41(%rip), %ymm10, %ymm10
 713      00000000 
 714 0e33 C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 714      D9
 715 0e38 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 715      DF
 716 0e3d C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 717 0e41 C57D583D 		vaddpd	.LC44(%rip), %ymm0, %ymm15
 717      00000000 
 718 0e49 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 718      D3
 719 0e4e C57D59DA 		vmulpd	%ymm2, %ymm0, %ymm11
 720 0e52 C4410559 		vmulpd	%ymm9, %ymm15, %ymm9
 720      C9
 721 0e57 C4412D59 		vmulpd	%ymm11, %ymm10, %ymm10
 721      D3
 722 0e5c C57D591D 		vmulpd	.LC42(%rip), %ymm0, %ymm11
 722      00000000 
 723 0e64 C525581D 		vaddpd	.LC43(%rip), %ymm11, %ymm11
 723      00000000 
 724 0e6c C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 724      DB
 725 0e71 C57D590D 		vmulpd	.LC45(%rip), %ymm0, %ymm9
 725      00000000 
 726 0e79 C535580D 		vaddpd	.LC46(%rip), %ymm9, %ymm9
 726      00000000 
 727 0e81 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 728 0e85 C5ED5915 		vmulpd	.LC48(%rip), %ymm2, %ymm2
 728      00000000 
 729 0e8d C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 729      DB
 730 0e92 C53D590D 		vmulpd	.LC47(%rip), %ymm8, %ymm9
 730      00000000 
 731 0e9a C53D5905 		vmulpd	.LC49(%rip), %ymm8, %ymm8
 731      00000000 
 732 0ea2 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 733 0ea6 C5E973F4 		vpsllq	$1, %xmm4, %xmm2
 733      01
 734 0eab C4412D5E 		vdivpd	%ymm11, %ymm10, %ymm10
 734      D3
 735 0eb0 C4413558 		vaddpd	%ymm10, %ymm9, %ymm10
 735      D2
 736 0eb5 C5AD58C0 		vaddpd	%ymm0, %ymm10, %ymm0
 737 0eb9 C569DB15 		vpand	.LC50(%rip), %xmm2, %xmm10
 737      00000000 
 738 0ec1 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 739 0ec5 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 739      01
 740 0eca C539DB0D 		vpand	.LC50(%rip), %xmm8, %xmm9
 740      00000000 
 741 0ed2 C4622929 		vpcmpeqq	.LC50(%rip), %xmm10, %xmm10
 741      15000000 
 741      00
GAS LISTING /tmp/ccn2Dd5N.s 			page 23


 742 0edb C4623929 		vpcmpeqq	.LC50(%rip), %xmm8, %xmm8
 742      05000000 
 742      00
 743 0ee4 C529EF15 		vpxor	.LC82(%rip), %xmm10, %xmm10
 743      00000000 
 744 0eec C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 744      0D000000 
 744      00
 745 0ef5 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 745      00000000 
 746 0efd C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm10
 746      D101
 747 0f03 C4437D19 		vextractf128	$0x1, %ymm10, %xmm9
 747      D101
 748 0f09 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 748      00000000 
 749 0f11 C531570D 		vxorpd	.LC34(%rip), %xmm9, %xmm9
 749      00000000 
 750 0f19 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm9
 750      C901
 751 0f1f C54DC215 		vcmppd	$1, .LC51(%rip), %ymm6, %ymm10
 751      00000000 
 751      01
 752 0f28 C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 752      D9
 753 0f2d C4637D4B 		vblendvpd	%ymm10, .LC52(%rip), %ymm0, %ymm10
 753      15000000 
 753      00A0
 754 0f37 C4437D19 		vextractf128	$0x1, %ymm11, %xmm15
 754      DF01
 755 0f3d C4412156 		vorpd	%xmm15, %xmm11, %xmm11
 755      DF
 756 0f42 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 756      FF
 757 0f47 C4C17950 		vmovmskpd	%xmm11, %ecx
 757      CB
 758 0f4c C551DB1D 		vpand	.LC54(%rip), %xmm5, %xmm11
 758      00000000 
 759 0f54 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 759      1F
 760 0f59 85C9     		testl	%ecx, %ecx
 761 0f5b C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 761      DF
 762 0f60 C559DB3D 		vpand	.LC54(%rip), %xmm4, %xmm15
 762      00000000 
 763 0f68 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 763      1F
 764 0f6d C4620129 		vpcmpeqq	%xmm1, %xmm15, %xmm15
 764      F9
 765 0f72 C4430518 		vinsertf128	$0x1, %xmm11, %ymm15, %ymm11
 765      DB01
 766 0f78 C4632D4B 		vblendvpd	%ymm11, 224(%rsp), %ymm10, %ymm10
 766      9424E000 
 766      0000B0
 767 0f83 C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 767      CE90
 768 0f89 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
GAS LISTING /tmp/ccn2Dd5N.s 			page 24


 768      20
 769 0f8e C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 769      EDCC
 770 0f94 C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 770      20
 771 0f99 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 771      E4CC
 772 0f9f C4E26929 		vpcmpeqq	.LC50(%rip), %xmm2, %xmm6
 772      35000000 
 772      00
 773 0fa8 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 773      ED01
 774 0fae C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 774      F001
 775 0fb4 C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 776 0fb8 C4E3354B 		vblendvpd	%ymm6, .LC52(%rip), %ymm9, %ymm6
 776      35000000 
 776      0060
 777 0fc2 7504     		jne	.L41
 778 0fc4 C5FD28F0 		vmovapd	%ymm0, %ymm6
 779              	.L41:
 780 0fc8 C4C14D59 		vmulpd	%ymm12, %ymm6, %ymm6
 780      F4
 781 0fcd C5FD288C 		vmovapd	288(%rsp), %ymm1
 781      24200100 
 781      00
 782 0fd6 C5CD592D 		vmulpd	.LC55(%rip), %ymm6, %ymm5
 782      00000000 
 783 0fde C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 783      ED08
 784 0fe4 C5D55905 		vmulpd	.LC56(%rip), %ymm5, %ymm0
 784      00000000 
 785 0fec C5D55915 		vmulpd	.LC57(%rip), %ymm5, %ymm2
 785      00000000 
 786 0ff4 C5D5582D 		vaddpd	.LC32(%rip), %ymm5, %ymm5
 786      00000000 
 787 0ffc C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 788 1000 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 789 1004 C57D591D 		vmulpd	.LC61(%rip), %ymm0, %ymm11
 789      00000000 
 790 100c C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 790      00000000 
 791 1014 C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 791      00000000 
 792 101c C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 793 1020 C525581D 		vaddpd	.LC62(%rip), %ymm11, %ymm11
 793      00000000 
 794 1028 C52D5815 		vaddpd	.LC48(%rip), %ymm10, %ymm10
 794      00000000 
 795 1030 C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 795      00000000 
 796 1038 C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
 797 103c C52559DA 		vmulpd	%ymm2, %ymm11, %ymm11
 798 1040 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 799 1044 C55D59CC 		vmulpd	%ymm4, %ymm4, %ymm9
 800 1048 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 800      C0
GAS LISTING /tmp/ccn2Dd5N.s 			page 25


 801 104d C57D591D 		vmulpd	.LC65(%rip), %ymm0, %ymm11
 801      00000000 
 802 1055 C52D58D0 		vaddpd	%ymm0, %ymm10, %ymm10
 803 1059 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 804 105d C525581D 		vaddpd	.LC66(%rip), %ymm11, %ymm11
 804      00000000 
 805 1065 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 805      C2
 806 106a C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
 806      00000000 
 807 1072 C5FD5905 		vmulpd	.LC67(%rip), %ymm0, %ymm0
 807      00000000 
 808 107a C5A559D2 		vmulpd	%ymm2, %ymm11, %ymm2
 809 107e C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 809      00000000 
 810 1086 C5FD5805 		vaddpd	.LC68(%rip), %ymm0, %ymm0
 810      00000000 
 811 108e C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 811      D2
 812 1093 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm2
 812      EA01
 813 1099 C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 814 109d C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 814      34
 815 10a2 C5E973F2 		vpsllq	$52, %xmm2, %xmm2
 815      34
 816 10a7 C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
 816      C201
 817 10ad C5F928D6 		vmovapd	%xmm6, %xmm2
 818 10b1 C5CD54AC 		vandpd	256(%rsp), %ymm6, %ymm5
 818      24000100 
 818      00
 819 10ba C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 819      E2
 820 10bf C5D5C22D 		vcmppd	$1, .LC69(%rip), %ymm5, %ymm5
 820      00000000 
 820      01
 821 10c8 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm9
 821      C9
 822 10cd C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 822      F401
 823 10d3 C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 823      C0
 824 10d8 C5B173F4 		vpsllq	$1, %xmm4, %xmm9
 824      01
 825 10dd C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 825      1F
 826 10e2 C531DB0D 		vpand	.LC50(%rip), %xmm9, %xmm9
 826      00000000 
 827 10ea C4413D58 		vaddpd	%ymm14, %ymm8, %ymm8
 827      C6
 828 10ef C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 828      0D000000 
 828      00
 829 10f8 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 829      00000000 
 830 1100 C53D59C0 		vmulpd	%ymm0, %ymm8, %ymm8
GAS LISTING /tmp/ccn2Dd5N.s 			page 26


 831 1104 C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 831      01
 832 1109 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 832      1F
 833 110e C5F9DB05 		vpand	.LC50(%rip), %xmm0, %xmm0
 833      00000000 
 834 1116 C4E27929 		vpcmpeqq	.LC50(%rip), %xmm0, %xmm0
 834      05000000 
 834      00
 835 111f C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 835      00000000 
 836 1127 C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 836      C101
 837 112d C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 838 1131 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 838      C501
 839 1137 C57928C8 		vmovapd	%xmm0, %xmm9
 840 113b C5B154ED 		vandpd	%xmm5, %xmm9, %xmm5
 841 113f C5F950CD 		vmovmskpd	%xmm5, %ecx
 842 1143 C5D173D4 		vpsrlq	$32, %xmm4, %xmm5
 842      20
 843 1148 C4E3510E 		vpblendw	$204, %xmm4, %xmm5, %xmm4
 843      E4CC
 844 114e C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 844      20
 845 1153 C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 845      D2CC
 846 1159 C5D157ED 		vxorpd	%xmm5, %xmm5, %xmm5
 847 115d 83F903   		cmpl	$3, %ecx
 848 1160 C4E36D18 		vinsertf128	$0x1, %xmm4, %ymm2, %ymm4
 848      E401
 849 1166 C5CDC2D6 		vcmppd	$4, %ymm6, %ymm6, %ymm2
 849      04
 850 116b C4E3754B 		vblendvpd	%ymm4, %ymm5, %ymm1, %ymm4
 850      E540
 851 1171 C4C35D4B 		vblendvpd	%ymm0, %ymm8, %ymm4, %ymm0
 851      C000
 852 1177 C4E37D4B 		vblendvpd	%ymm2, %ymm6, %ymm0, %ymm6
 852      F620
 853 117d 0F85E5FA 		jne	.L43
 853      FFFF
 854 1183 C57D29C6 		vmovapd	%ymm8, %ymm6
 855 1187 E9DCFAFF 		jmp	.L43
 855      FF
 856 118c 0F1F4000 		.p2align 4,,10
 857              		.p2align 3
 858              	.L52:
 859 1190 C5FD2884 		vmovapd	7264(%rsp), %ymm0
 859      24601C00 
 859      00
 860 1199 C5FD280D 		vmovapd	.LC74(%rip), %ymm1
 860      00000000 
 861 11a1 C5FD5D84 		vminpd	7296(%rsp), %ymm0, %ymm0
 861      24801C00 
 861      00
 862 11aa C5FD5D84 		vminpd	7328(%rsp), %ymm0, %ymm0
 862      24A01C00 
GAS LISTING /tmp/ccn2Dd5N.s 			page 27


 862      00
 863 11b3 C5FD5D84 		vminpd	7360(%rsp), %ymm0, %ymm0
 863      24C01C00 
 863      00
 864 11bc C5FD5D84 		vminpd	7392(%rsp), %ymm0, %ymm0
 864      24E01C00 
 864      00
 865 11c5 C5FD5D84 		vminpd	7424(%rsp), %ymm0, %ymm0
 865      24001D00 
 865      00
 866 11ce C5FD5D84 		vminpd	7456(%rsp), %ymm0, %ymm0
 866      24201D00 
 866      00
 867 11d7 C5FD5D84 		vminpd	7488(%rsp), %ymm0, %ymm0
 867      24401D00 
 867      00
 868 11e0 C5F5C2C0 		vcmppd	$2, %ymm0, %ymm1, %ymm0
 868      02
 869 11e5 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 869      C101
 870 11eb C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 871 11ef C5F950C0 		vmovmskpd	%xmm0, %eax
 872 11f3 83F803   		cmpl	$3, %eax
 873 11f6 740A     		je	.L53
 874 11f8 31D2     		xorl	%edx, %edx
 875 11fa 4531ED   		xorl	%r13d, %r13d
 876 11fd E95EF0FF 		jmp	.L15
 876      FF
 877              	.L53:
 878 1202 4489E0   		movl	%r12d, %eax
 879 1205 BAAD8BDB 		movl	$1759218605, %edx
 879      68
 880 120a F7EA     		imull	%edx
 881 120c 4489E0   		movl	%r12d, %eax
 882 120f C1F81F   		sarl	$31, %eax
 883 1212 C1FA0C   		sarl	$12, %edx
 884 1215 29C2     		subl	%eax, %edx
 885 1217 4489E0   		movl	%r12d, %eax
 886 121a 69D21027 		imull	$10000, %edx, %edx
 886      0000
 887 1220 29D0     		subl	%edx, %eax
 888 1222 83F801   		cmpl	$1, %eax
 889 1225 0F848D00 		je	.L54
 889      0000
 890              	.L47:
 891 122b 4183C420 		addl	$32, %r12d
 892 122f 4881C300 		addq	$256, %rbx
 892      010000
 893 1236 4181FC80 		cmpl	$40320, %r12d
 893      9D0000
 894 123d 0F8583EE 		jne	.L14
 894      FFFF
 895 1243 C5F877   		vzeroupper
 896 1246 E8000000 		call	clock
 896      00
 897 124b BE000000 		movl	$.LC80, %esi
 897      00
GAS LISTING /tmp/ccn2Dd5N.s 			page 28


 898 1250 BF000000 		movl	$_ZSt4cout, %edi
 898      00
 899 1255 4889C3   		movq	%rax, %rbx
 900 1258 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 900      00
 901 125d 482B9C24 		subq	184(%rsp), %rbx
 901      B8000000 
 902 1265 4889C7   		movq	%rax, %rdi
 903 1268 48BECFF7 		movabsq	$2361183241434822607, %rsi
 903      53E3A59B 
 903      C420
 904 1272 4889D8   		movq	%rbx, %rax
 905 1275 4889D9   		movq	%rbx, %rcx
 906 1278 48F7EE   		imulq	%rsi
 907 127b 48C1F93F 		sarq	$63, %rcx
 908 127f 4889D6   		movq	%rdx, %rsi
 909 1282 48C1FE07 		sarq	$7, %rsi
 910 1286 4829CE   		subq	%rcx, %rsi
 911 1289 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 911      00
 912 128e BE000000 		movl	$.LC81, %esi
 912      00
 913 1293 4889C7   		movq	%rax, %rdi
 914 1296 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 914      00
 915 129b 4889C7   		movq	%rax, %rdi
 916 129e E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 916      00
 917 12a3 488D65D8 		leaq	-40(%rbp), %rsp
 918 12a7 31C0     		xorl	%eax, %eax
 919 12a9 5B       		popq	%rbx
 920 12aa 415C     		popq	%r12
 921 12ac 415D     		popq	%r13
 922 12ae 415E     		popq	%r14
 923 12b0 415F     		popq	%r15
 924 12b2 5D       		popq	%rbp
 925              		.cfi_remember_state
 926              		.cfi_def_cfa 7, 8
 927 12b3 C3       		ret
 928              		.p2align 4,,10
 929 12b4 0F1F4000 		.p2align 3
 930              	.L54:
 931              		.cfi_restore_state
 932 12b8 BA390000 		movl	$57, %edx
 932      00
 933 12bd BE000000 		movl	$.LC75, %esi
 933      00
 934 12c2 BF000000 		movl	$_ZSt4cout, %edi
 934      00
 935 12c7 C57D2934 		vmovapd	%ymm14, (%rsp)
 935      24
 936 12cc C57D2964 		vmovapd	%ymm12, 32(%rsp)
 936      2420
 937 12d2 C5FD295C 		vmovapd	%ymm3, 64(%rsp)
 937      2440
 938 12d8 C57D296C 		vmovapd	%ymm13, 96(%rsp)
 938      2460
GAS LISTING /tmp/ccn2Dd5N.s 			page 29


 939 12de C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 939      24800000 
 939      00
 940 12e7 C5F877   		vzeroupper
 941 12ea E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 941      00
 942 12ef C5FD2884 		vmovapd	6496(%rsp), %ymm0
 942      24601900 
 942      00
 943 12f8 4489E6   		movl	%r12d, %esi
 944 12fb BF000000 		movl	$_ZSt4cout, %edi
 944      00
 945 1300 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 945      24400100 
 945      00
 946 1309 C5FD2884 		vmovapd	7776(%rsp), %ymm0
 946      24601E00 
 946      00
 947 1312 C5FB108C 		vmovsd	320(%rsp), %xmm1
 947      24400100 
 947      00
 948 131b C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 948      24400100 
 948      00
 949 1324 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 949      24000100 
 949      00
 950 132d C5FB1084 		vmovsd	320(%rsp), %xmm0
 950      24400100 
 950      00
 951 1336 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 951      24200100 
 951      00
 952 133f C5F877   		vzeroupper
 953 1342 E8000000 		call	_ZNSolsEi
 953      00
 954 1347 BA060000 		movl	$6, %edx
 954      00
 955 134c BE000000 		movl	$.LC76, %esi
 955      00
 956 1351 4889C7   		movq	%rax, %rdi
 957 1354 4989C5   		movq	%rax, %r13
 958 1357 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 958      00
 959 135c C5FB1084 		vmovsd	288(%rsp), %xmm0
 959      24200100 
 959      00
 960 1365 4C89EF   		movq	%r13, %rdi
 961 1368 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 961      00
 962 136d BA030000 		movl	$3, %edx
 962      00
 963 1372 BE000000 		movl	$.LC77, %esi
 963      00
 964 1377 4889C7   		movq	%rax, %rdi
 965 137a 4989C5   		movq	%rax, %r13
 966 137d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/ccn2Dd5N.s 			page 30


 966      00
 967 1382 C5FB108C 		vmovsd	256(%rsp), %xmm1
 967      24000100 
 967      00
 968 138b 4C89EF   		movq	%r13, %rdi
 969 138e C5F928C1 		vmovapd	%xmm1, %xmm0
 970 1392 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 970      00
 971 1397 BA010000 		movl	$1, %edx
 971      00
 972 139c BE000000 		movl	$.LC78, %esi
 972      00
 973 13a1 4889C7   		movq	%rax, %rdi
 974 13a4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 974      00
 975 13a9 C5FD2884 		vmovapd	6528(%rsp), %ymm0
 975      24801900 
 975      00
 976 13b2 4489E6   		movl	%r12d, %esi
 977 13b5 BF000000 		movl	$_ZSt4cout, %edi
 977      00
 978 13ba C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 978      24400100 
 978      00
 979 13c3 C5FD2884 		vmovapd	7808(%rsp), %ymm0
 979      24801E00 
 979      00
 980 13cc C5FB108C 		vmovsd	320(%rsp), %xmm1
 980      24400100 
 980      00
 981 13d5 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 981      24400100 
 981      00
 982 13de C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 982      24000100 
 982      00
 983 13e7 C5FB1084 		vmovsd	320(%rsp), %xmm0
 983      24400100 
 983      00
 984 13f0 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 984      24200100 
 984      00
 985 13f9 C5F877   		vzeroupper
 986 13fc E8000000 		call	_ZNSolsEi
 986      00
 987 1401 BA060000 		movl	$6, %edx
 987      00
 988 1406 BE000000 		movl	$.LC76, %esi
 988      00
 989 140b 4889C7   		movq	%rax, %rdi
 990 140e 4989C5   		movq	%rax, %r13
 991 1411 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 991      00
 992 1416 C5FB1084 		vmovsd	288(%rsp), %xmm0
 992      24200100 
 992      00
 993 141f 4C89EF   		movq	%r13, %rdi
GAS LISTING /tmp/ccn2Dd5N.s 			page 31


 994 1422 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 994      00
 995 1427 BA030000 		movl	$3, %edx
 995      00
 996 142c BE000000 		movl	$.LC77, %esi
 996      00
 997 1431 4889C7   		movq	%rax, %rdi
 998 1434 4989C5   		movq	%rax, %r13
 999 1437 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 999      00
 1000 143c C5FB108C 		vmovsd	256(%rsp), %xmm1
 1000      24000100 
 1000      00
 1001 1445 4C89EF   		movq	%r13, %rdi
 1002 1448 C5F928C1 		vmovapd	%xmm1, %xmm0
 1003 144c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1003      00
 1004 1451 BA010000 		movl	$1, %edx
 1004      00
 1005 1456 BE000000 		movl	$.LC78, %esi
 1005      00
 1006 145b 4889C7   		movq	%rax, %rdi
 1007 145e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1007      00
 1008 1463 C5FD2884 		vmovapd	6560(%rsp), %ymm0
 1008      24A01900 
 1008      00
 1009 146c 4489E6   		movl	%r12d, %esi
 1010 146f BF000000 		movl	$_ZSt4cout, %edi
 1010      00
 1011 1474 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1011      24400100 
 1011      00
 1012 147d C5FD2884 		vmovapd	7840(%rsp), %ymm0
 1012      24A01E00 
 1012      00
 1013 1486 C5FB108C 		vmovsd	320(%rsp), %xmm1
 1013      24400100 
 1013      00
 1014 148f C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1014      24400100 
 1014      00
 1015 1498 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1015      24000100 
 1015      00
 1016 14a1 C5FB1084 		vmovsd	320(%rsp), %xmm0
 1016      24400100 
 1016      00
 1017 14aa C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1017      24200100 
 1017      00
 1018 14b3 C5F877   		vzeroupper
 1019 14b6 E8000000 		call	_ZNSolsEi
 1019      00
 1020 14bb BA060000 		movl	$6, %edx
 1020      00
 1021 14c0 BE000000 		movl	$.LC76, %esi
GAS LISTING /tmp/ccn2Dd5N.s 			page 32


 1021      00
 1022 14c5 4889C7   		movq	%rax, %rdi
 1023 14c8 4989C5   		movq	%rax, %r13
 1024 14cb E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1024      00
 1025 14d0 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1025      24200100 
 1025      00
 1026 14d9 4C89EF   		movq	%r13, %rdi
 1027 14dc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1027      00
 1028 14e1 BA030000 		movl	$3, %edx
 1028      00
 1029 14e6 BE000000 		movl	$.LC77, %esi
 1029      00
 1030 14eb 4889C7   		movq	%rax, %rdi
 1031 14ee 4989C5   		movq	%rax, %r13
 1032 14f1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1032      00
 1033 14f6 C5FB108C 		vmovsd	256(%rsp), %xmm1
 1033      24000100 
 1033      00
 1034 14ff 4C89EF   		movq	%r13, %rdi
 1035 1502 C5F928C1 		vmovapd	%xmm1, %xmm0
 1036 1506 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1036      00
 1037 150b BA010000 		movl	$1, %edx
 1037      00
 1038 1510 BE000000 		movl	$.LC78, %esi
 1038      00
 1039 1515 4889C7   		movq	%rax, %rdi
 1040 1518 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1040      00
 1041 151d C57D2834 		vmovapd	(%rsp), %ymm14
 1041      24
 1042 1522 C57D2864 		vmovapd	32(%rsp), %ymm12
 1042      2420
 1043 1528 C5FD285C 		vmovapd	64(%rsp), %ymm3
 1043      2440
 1044 152e C57D286C 		vmovapd	96(%rsp), %ymm13
 1044      2460
 1045 1534 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 1045      24800000 
 1045      00
 1046 153d E9E9FCFF 		jmp	.L47
 1046      FF
 1047              		.cfi_endproc
 1048              	.LFE4635:
 1049              		.size	main, .-main
 1050 1542 66666666 		.p2align 4,,15
 1050      662E0F1F 
 1050      84000000 
 1050      0000
 1051              		.type	_GLOBAL__sub_I_main, @function
 1052              	_GLOBAL__sub_I_main:
 1053              	.LFB4900:
 1054              		.cfi_startproc
GAS LISTING /tmp/ccn2Dd5N.s 			page 33


 1055 1550 4883EC08 		subq	$8, %rsp
 1056              		.cfi_def_cfa_offset 16
 1057 1554 BF000000 		movl	$_ZStL8__ioinit, %edi
 1057      00
 1058 1559 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1058      00
 1059 155e BA000000 		movl	$__dso_handle, %edx
 1059      00
 1060 1563 BE000000 		movl	$_ZStL8__ioinit, %esi
 1060      00
 1061 1568 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1061      00
 1062 156d 4883C408 		addq	$8, %rsp
 1063              		.cfi_def_cfa_offset 8
 1064 1571 E9000000 		jmp	__cxa_atexit
 1064      00
 1065              		.cfi_endproc
 1066              	.LFE4900:
 1067              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1068              		.section	.init_array,"aw"
 1069              		.align 8
 1070 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1070      00000000 
 1071              		.section	.rodata
 1072              		.align 32
 1073              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1074              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1075              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1076 0000 00000000 		.long	0
 1077 0004 00000080 		.long	-2147483648
 1078 0008 00000000 		.long	0
 1079 000c 00000080 		.long	-2147483648
 1080 0010 00000000 		.long	0
 1081 0014 00000080 		.long	-2147483648
 1082 0018 00000000 		.long	0
 1083 001c 00000080 		.long	-2147483648
 1084              		.align 32
 1085              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1086              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1087              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1088 0020 FFFFFFFF 		.long	-1
 1089 0024 FFFFFF7F 		.long	2147483647
 1090 0028 FFFFFFFF 		.long	-1
 1091 002c FFFFFF7F 		.long	2147483647
 1092 0030 FFFFFFFF 		.long	-1
 1093 0034 FFFFFF7F 		.long	2147483647
 1094 0038 FFFFFFFF 		.long	-1
 1095 003c FFFFFF7F 		.long	2147483647
 1096              		.local	_ZStL8__ioinit
 1097              		.comm	_ZStL8__ioinit,1,1
 1098              		.section	.rodata.cst32,"aM",@progbits,32
 1099              		.align 32
 1100              	.LC0:
 1101 0000 00000000 		.long	0
 1102 0004 00002440 		.long	1076101120
 1103 0008 00000000 		.long	0
 1104 000c 00002440 		.long	1076101120
GAS LISTING /tmp/ccn2Dd5N.s 			page 34


 1105 0010 00000000 		.long	0
 1106 0014 00002440 		.long	1076101120
 1107 0018 00000000 		.long	0
 1108 001c 00002440 		.long	1076101120
 1109              		.section	.rodata.cst8,"aM",@progbits,8
 1110              		.align 8
 1111              	.LC1:
 1112 0000 00000000 		.long	0
 1113 0004 00003540 		.long	1077215232
 1114              		.section	.rodata.cst32
 1115              		.align 32
 1116              	.LC3:
 1117 0020 55555555 		.long	1431655765
 1118 0024 55550540 		.long	1074091349
 1119 0028 55555555 		.long	1431655765
 1120 002c 55550540 		.long	1074091349
 1121 0030 55555555 		.long	1431655765
 1122 0034 55550540 		.long	1074091349
 1123 0038 55555555 		.long	1431655765
 1124 003c 55550540 		.long	1074091349
 1125              		.align 32
 1126              	.LC4:
 1127 0040 9A999999 		.long	2576980378
 1128 0044 9999C93F 		.long	1070176665
 1129 0048 9A999999 		.long	2576980378
 1130 004c 9999C93F 		.long	1070176665
 1131 0050 9A999999 		.long	2576980378
 1132 0054 9999C93F 		.long	1070176665
 1133 0058 9A999999 		.long	2576980378
 1134 005c 9999C93F 		.long	1070176665
 1135              		.align 32
 1136              	.LC5:
 1137 0060 CDCCCCCC 		.long	3435973837
 1138 0064 CCCCCC3F 		.long	1070386380
 1139 0068 CDCCCCCC 		.long	3435973837
 1140 006c CCCCCC3F 		.long	1070386380
 1141 0070 CDCCCCCC 		.long	3435973837
 1142 0074 CCCCCC3F 		.long	1070386380
 1143 0078 CDCCCCCC 		.long	3435973837
 1144 007c CCCCCC3F 		.long	1070386380
 1145              		.align 32
 1146              	.LC6:
 1147 0080 33333333 		.long	858993459
 1148 0084 3333B33F 		.long	1068708659
 1149 0088 33333333 		.long	858993459
 1150 008c 3333B33F 		.long	1068708659
 1151 0090 33333333 		.long	858993459
 1152 0094 3333B33F 		.long	1068708659
 1153 0098 33333333 		.long	858993459
 1154 009c 3333B33F 		.long	1068708659
 1155              		.align 32
 1156              	.LC7:
 1157 00a0 33333333 		.long	858993459
 1158 00a4 3333F33F 		.long	1072902963
 1159 00a8 33333333 		.long	858993459
 1160 00ac 3333F33F 		.long	1072902963
 1161 00b0 33333333 		.long	858993459
GAS LISTING /tmp/ccn2Dd5N.s 			page 35


 1162 00b4 3333F33F 		.long	1072902963
 1163 00b8 33333333 		.long	858993459
 1164 00bc 3333F33F 		.long	1072902963
 1165              		.align 32
 1166              	.LC8:
 1167 00c0 CDCCCCCC 		.long	3435973837
 1168 00c4 CCCCECBF 		.long	-1075000116
 1169 00c8 CDCCCCCC 		.long	3435973837
 1170 00cc CCCCECBF 		.long	-1075000116
 1171 00d0 CDCCCCCC 		.long	3435973837
 1172 00d4 CCCCECBF 		.long	-1075000116
 1173 00d8 CDCCCCCC 		.long	3435973837
 1174 00dc CCCCECBF 		.long	-1075000116
 1175              		.align 32
 1176              	.LC9:
 1177 00e0 33333333 		.long	858993459
 1178 00e4 3333D33F 		.long	1070805811
 1179 00e8 33333333 		.long	858993459
 1180 00ec 3333D33F 		.long	1070805811
 1181 00f0 33333333 		.long	858993459
 1182 00f4 3333D33F 		.long	1070805811
 1183 00f8 33333333 		.long	858993459
 1184 00fc 3333D33F 		.long	1070805811
 1185              		.align 32
 1186              	.LC10:
 1187 0100 DA4B682F 		.long	795364314
 1188 0104 A1BDF43F 		.long	1073003937
 1189 0108 DA4B682F 		.long	795364314
 1190 010c A1BDF43F 		.long	1073003937
 1191 0110 DA4B682F 		.long	795364314
 1192 0114 A1BDF43F 		.long	1073003937
 1193 0118 DA4B682F 		.long	795364314
 1194 011c A1BDF43F 		.long	1073003937
 1195              		.align 32
 1196              	.LC11:
 1197 0120 D94B682F 		.long	795364313
 1198 0124 A1BD04C0 		.long	-1073431135
 1199 0128 D94B682F 		.long	795364313
 1200 012c A1BD04C0 		.long	-1073431135
 1201 0130 D94B682F 		.long	795364313
 1202 0134 A1BD04C0 		.long	-1073431135
 1203 0138 D94B682F 		.long	795364313
 1204 013c A1BD04C0 		.long	-1073431135
 1205              		.align 32
 1206              	.LC12:
 1207 0140 00000000 		.long	0
 1208 0144 00000440 		.long	1074003968
 1209 0148 00000000 		.long	0
 1210 014c 00000440 		.long	1074003968
 1211 0150 00000000 		.long	0
 1212 0154 00000440 		.long	1074003968
 1213 0158 00000000 		.long	0
 1214 015c 00000440 		.long	1074003968
 1215              		.align 32
 1216              	.LC13:
 1217 0160 16A1BD84 		.long	2227020054
 1218 0164 F612CABF 		.long	-1077275914
GAS LISTING /tmp/ccn2Dd5N.s 			page 36


 1219 0168 16A1BD84 		.long	2227020054
 1220 016c F612CABF 		.long	-1077275914
 1221 0170 16A1BD84 		.long	2227020054
 1222 0174 F612CABF 		.long	-1077275914
 1223 0178 16A1BD84 		.long	2227020054
 1224 017c F612CABF 		.long	-1077275914
 1225              		.align 32
 1226              	.LC14:
 1227 0180 00000000 		.long	0
 1228 0184 00A0AF3F 		.long	1068474368
 1229 0188 00000000 		.long	0
 1230 018c 00A0AF3F 		.long	1068474368
 1231 0190 00000000 		.long	0
 1232 0194 00A0AF3F 		.long	1068474368
 1233 0198 00000000 		.long	0
 1234 019c 00A0AF3F 		.long	1068474368
 1235              		.align 32
 1236              	.LC15:
 1237 01a0 B397D05E 		.long	1590728627
 1238 01a4 429FD93F 		.long	1071226690
 1239 01a8 B397D05E 		.long	1590728627
 1240 01ac 429FD93F 		.long	1071226690
 1241 01b0 B397D05E 		.long	1590728627
 1242 01b4 429FD93F 		.long	1071226690
 1243 01b8 B397D05E 		.long	1590728627
 1244 01bc 429FD93F 		.long	1071226690
 1245              		.align 32
 1246              	.LC16:
 1247 01c0 BD84F612 		.long	318145725
 1248 01c4 DA4BA53F 		.long	1067797466
 1249 01c8 BD84F612 		.long	318145725
 1250 01cc DA4BA53F 		.long	1067797466
 1251 01d0 BD84F612 		.long	318145725
 1252 01d4 DA4BA53F 		.long	1067797466
 1253 01d8 BD84F612 		.long	318145725
 1254 01dc DA4BA53F 		.long	1067797466
 1255              		.align 32
 1256              	.LC17:
 1257 01e0 00000000 		.long	0
 1258 01e4 00E0D53F 		.long	1070981120
 1259 01e8 00000000 		.long	0
 1260 01ec 00E0D53F 		.long	1070981120
 1261 01f0 00000000 		.long	0
 1262 01f4 00E0D53F 		.long	1070981120
 1263 01f8 00000000 		.long	0
 1264 01fc 00E0D53F 		.long	1070981120
 1265              		.align 32
 1266              	.LC18:
 1267 0200 347B09ED 		.long	3976821556
 1268 0204 25349E3F 		.long	1067332645
 1269 0208 347B09ED 		.long	3976821556
 1270 020c 25349E3F 		.long	1067332645
 1271 0210 347B09ED 		.long	3976821556
 1272 0214 25349E3F 		.long	1067332645
 1273 0218 347B09ED 		.long	3976821556
 1274 021c 25349E3F 		.long	1067332645
 1275              		.align 32
GAS LISTING /tmp/ccn2Dd5N.s 			page 37


 1276              	.LC19:
 1277 0220 B0B4DA85 		.long	2245702832
 1278 0224 A680D23F 		.long	1070760102
 1279 0228 B0B4DA85 		.long	2245702832
 1280 022c A680D23F 		.long	1070760102
 1281 0230 B0B4DA85 		.long	2245702832
 1282 0234 A680D23F 		.long	1070760102
 1283 0238 B0B4DA85 		.long	2245702832
 1284 023c A680D23F 		.long	1070760102
 1285              		.align 32
 1286              	.LC20:
 1287 0240 27691676 		.long	1981180199
 1288 0244 9FEFCA3F 		.long	1070264223
 1289 0248 27691676 		.long	1981180199
 1290 024c 9FEFCA3F 		.long	1070264223
 1291 0250 27691676 		.long	1981180199
 1292 0254 9FEFCA3F 		.long	1070264223
 1293 0258 27691676 		.long	1981180199
 1294 025c 9FEFCA3F 		.long	1070264223
 1295              		.align 32
 1296              	.LC21:
 1297 0260 7EB22B2E 		.long	774615678
 1298 0264 D0C3D93F 		.long	1071236048
 1299 0268 7EB22B2E 		.long	774615678
 1300 026c D0C3D93F 		.long	1071236048
 1301 0270 7EB22B2E 		.long	774615678
 1302 0274 D0C3D93F 		.long	1071236048
 1303 0278 7EB22B2E 		.long	774615678
 1304 027c D0C3D93F 		.long	1071236048
 1305              		.align 32
 1306              	.LC22:
 1307 0280 E890B943 		.long	1136234728
 1308 0284 E60EB93F 		.long	1069092582
 1309 0288 E890B943 		.long	1136234728
 1310 028c E60EB93F 		.long	1069092582
 1311 0290 E890B943 		.long	1136234728
 1312 0294 E60EB93F 		.long	1069092582
 1313 0298 E890B943 		.long	1136234728
 1314 029c E60EB93F 		.long	1069092582
 1315              		.align 32
 1316              	.LC23:
 1317 02a0 48A5D52E 		.long	785753416
 1318 02a4 3405A4BF 		.long	-1079769804
 1319 02a8 48A5D52E 		.long	785753416
 1320 02ac 3405A4BF 		.long	-1079769804
 1321 02b0 48A5D52E 		.long	785753416
 1322 02b4 3405A4BF 		.long	-1079769804
 1323 02b8 48A5D52E 		.long	785753416
 1324 02bc 3405A4BF 		.long	-1079769804
 1325              		.align 32
 1326              	.LC24:
 1327 02c0 82244992 		.long	2454267010
 1328 02c4 24C9933F 		.long	1066649892
 1329 02c8 82244992 		.long	2454267010
 1330 02cc 24C9933F 		.long	1066649892
 1331 02d0 82244992 		.long	2454267010
 1332 02d4 24C9933F 		.long	1066649892
GAS LISTING /tmp/ccn2Dd5N.s 			page 38


 1333 02d8 82244992 		.long	2454267010
 1334 02dc 24C9933F 		.long	1066649892
 1335              		.align 32
 1336              	.LC25:
 1337 02e0 06F37686 		.long	2255942406
 1338 02e4 C47CA13F 		.long	1067547844
 1339 02e8 06F37686 		.long	2255942406
 1340 02ec C47CA13F 		.long	1067547844
 1341 02f0 06F37686 		.long	2255942406
 1342 02f4 C47CA13F 		.long	1067547844
 1343 02f8 06F37686 		.long	2255942406
 1344 02fc C47CA13F 		.long	1067547844
 1345              		.align 32
 1346              	.LC26:
 1347 0300 1A55F19A 		.long	2599507226
 1348 0304 DB1D93BF 		.long	-1080877605
 1349 0308 1A55F19A 		.long	2599507226
 1350 030c DB1D93BF 		.long	-1080877605
 1351 0310 1A55F19A 		.long	2599507226
 1352 0314 DB1D93BF 		.long	-1080877605
 1353 0318 1A55F19A 		.long	2599507226
 1354 031c DB1D93BF 		.long	-1080877605
 1355              		.align 32
 1356              	.LC27:
 1357 0320 64599665 		.long	1704352100
 1358 0324 5996713F 		.long	1064408665
 1359 0328 64599665 		.long	1704352100
 1360 032c 5996713F 		.long	1064408665
 1361 0330 64599665 		.long	1704352100
 1362 0334 5996713F 		.long	1064408665
 1363 0338 64599665 		.long	1704352100
 1364 033c 5996713F 		.long	1064408665
 1365              		.align 32
 1366              	.LC28:
 1367 0340 95D626E8 		.long	3894859413
 1368 0344 0B2E113E 		.long	1041313291
 1369 0348 95D626E8 		.long	3894859413
 1370 034c 0B2E113E 		.long	1041313291
 1371 0350 95D626E8 		.long	3894859413
 1372 0354 0B2E113E 		.long	1041313291
 1373 0358 95D626E8 		.long	3894859413
 1374 035c 0B2E113E 		.long	1041313291
 1375              		.section	.rodata.cst16,"aM",@progbits,16
 1376              		.align 16
 1377              	.LC29:
 1378 0000 FFFFFFFF 		.quad	4503599627370495
 1378      FFFF0F00 
 1379 0008 FFFFFFFF 		.quad	4503599627370495
 1379      FFFF0F00 
 1380              		.align 16
 1381              	.LC30:
 1382 0010 00000000 		.quad	4602678819172646912
 1382      0000E03F 
 1383 0018 00000000 		.quad	4602678819172646912
 1383      0000E03F 
 1384              		.align 16
 1385              	.LC31:
GAS LISTING /tmp/ccn2Dd5N.s 			page 39


 1386 0020 00000000 		.quad	4841369599423283200
 1386      00003043 
 1387 0028 00000000 		.quad	4841369599423283200
 1387      00003043 
 1388              		.section	.rodata.cst32
 1389              		.align 32
 1390              	.LC32:
 1391 0360 FF030000 		.long	1023
 1392 0364 00003043 		.long	1127219200
 1393 0368 FF030000 		.long	1023
 1394 036c 00003043 		.long	1127219200
 1395 0370 FF030000 		.long	1023
 1396 0374 00003043 		.long	1127219200
 1397 0378 FF030000 		.long	1023
 1398 037c 00003043 		.long	1127219200
 1399              		.align 32
 1400              	.LC33:
 1401 0380 CD3B7F66 		.long	1719614413
 1402 0384 9EA0E63F 		.long	1072079006
 1403 0388 CD3B7F66 		.long	1719614413
 1404 038c 9EA0E63F 		.long	1072079006
 1405 0390 CD3B7F66 		.long	1719614413
 1406 0394 9EA0E63F 		.long	1072079006
 1407 0398 CD3B7F66 		.long	1719614413
 1408 039c 9EA0E63F 		.long	1072079006
 1409              		.section	.rodata.cst16
 1410              		.align 16
 1411              	.LC34:
 1412 0030 FFFFFFFF 		.long	4294967295
 1413 0034 FFFFFFFF 		.long	-1
 1414 0038 FFFFFFFF 		.long	4294967295
 1415 003c FFFFFFFF 		.long	-1
 1416              		.section	.rodata.cst32
 1417              		.align 32
 1418              	.LC35:
 1419 03a0 00000000 		.long	0
 1420 03a4 0000F03F 		.long	1072693248
 1421 03a8 00000000 		.long	0
 1422 03ac 0000F03F 		.long	1072693248
 1423 03b0 00000000 		.long	0
 1424 03b4 0000F03F 		.long	1072693248
 1425 03b8 00000000 		.long	0
 1426 03bc 0000F03F 		.long	1072693248
 1427              		.align 32
 1428              	.LC36:
 1429 03c0 4DC84B92 		.long	2454440013
 1430 03c4 D6EF3140 		.long	1077014486
 1431 03c8 4DC84B92 		.long	2454440013
 1432 03cc D6EF3140 		.long	1077014486
 1433 03d0 4DC84B92 		.long	2454440013
 1434 03d4 D6EF3140 		.long	1077014486
 1435 03d8 4DC84B92 		.long	2454440013
 1436 03dc D6EF3140 		.long	1077014486
 1437              		.align 32
 1438              	.LC37:
 1439 03e0 F8DC7E7D 		.long	2105466104
 1440 03e4 63D51E40 		.long	1075762531
GAS LISTING /tmp/ccn2Dd5N.s 			page 40


 1441 03e8 F8DC7E7D 		.long	2105466104
 1442 03ec 63D51E40 		.long	1075762531
 1443 03f0 F8DC7E7D 		.long	2105466104
 1444 03f4 63D51E40 		.long	1075762531
 1445 03f8 F8DC7E7D 		.long	2105466104
 1446 03fc 63D51E40 		.long	1075762531
 1447              		.align 32
 1448              	.LC38:
 1449 0400 B01BC393 		.long	2479037360
 1450 0404 C2B41A3F 		.long	1058714818
 1451 0408 B01BC393 		.long	2479037360
 1452 040c C2B41A3F 		.long	1058714818
 1453 0410 B01BC393 		.long	2479037360
 1454 0414 C2B41A3F 		.long	1058714818
 1455 0418 B01BC393 		.long	2479037360
 1456 041c C2B41A3F 		.long	1058714818
 1457              		.align 32
 1458              	.LC39:
 1459 0420 F252563F 		.long	1062621938
 1460 0424 F5D6DF3F 		.long	1071634165
 1461 0428 F252563F 		.long	1062621938
 1462 042c F5D6DF3F 		.long	1071634165
 1463 0430 F252563F 		.long	1062621938
 1464 0434 F5D6DF3F 		.long	1071634165
 1465 0438 F252563F 		.long	1062621938
 1466 043c F5D6DF3F 		.long	1071634165
 1467              		.align 32
 1468              	.LC40:
 1469 0440 116992ED 		.long	3985795345
 1470 0444 BAD21240 		.long	1074975418
 1471 0448 116992ED 		.long	3985795345
 1472 044c BAD21240 		.long	1074975418
 1473 0450 116992ED 		.long	3985795345
 1474 0454 BAD21240 		.long	1074975418
 1475 0458 116992ED 		.long	3985795345
 1476 045c BAD21240 		.long	1074975418
 1477              		.align 32
 1478              	.LC41:
 1479 0460 2EEB3EC6 		.long	3326012206
 1480 0464 72FF2C40 		.long	1076690802
 1481 0468 2EEB3EC6 		.long	3326012206
 1482 046c 72FF2C40 		.long	1076690802
 1483 0470 2EEB3EC6 		.long	3326012206
 1484 0474 72FF2C40 		.long	1076690802
 1485 0478 2EEB3EC6 		.long	3326012206
 1486 047c 72FF2C40 		.long	1076690802
 1487              		.align 32
 1488              	.LC42:
 1489 0480 21AE5EEB 		.long	3948850721
 1490 0484 E2C95140 		.long	1079101922
 1491 0488 21AE5EEB 		.long	3948850721
 1492 048c E2C95140 		.long	1079101922
 1493 0490 21AE5EEB 		.long	3948850721
 1494 0494 E2C95140 		.long	1079101922
 1495 0498 21AE5EEB 		.long	3948850721
 1496 049c E2C95140 		.long	1079101922
 1497              		.align 32
GAS LISTING /tmp/ccn2Dd5N.s 			page 41


 1498              	.LC43:
 1499 04a0 B2251F9E 		.long	2652841394
 1500 04a4 0A203740 		.long	1077354506
 1501 04a8 B2251F9E 		.long	2652841394
 1502 04ac 0A203740 		.long	1077354506
 1503 04b0 B2251F9E 		.long	2652841394
 1504 04b4 0A203740 		.long	1077354506
 1505 04b8 B2251F9E 		.long	2652841394
 1506 04bc 0A203740 		.long	1077354506
 1507              		.align 32
 1508              	.LC44:
 1509 04c0 8EEF97AE 		.long	2929192846
 1510 04c4 20932640 		.long	1076269856
 1511 04c8 8EEF97AE 		.long	2929192846
 1512 04cc 20932640 		.long	1076269856
 1513 04d0 8EEF97AE 		.long	2929192846
 1514 04d4 20932640 		.long	1076269856
 1515 04d8 8EEF97AE 		.long	2929192846
 1516 04dc 20932640 		.long	1076269856
 1517              		.align 32
 1518              	.LC45:
 1519 04e0 33C0194E 		.long	1310310451
 1520 04e4 2C9D4640 		.long	1078369580
 1521 04e8 33C0194E 		.long	1310310451
 1522 04ec 2C9D4640 		.long	1078369580
 1523 04f0 33C0194E 		.long	1310310451
 1524 04f4 2C9D4640 		.long	1078369580
 1525 04f8 33C0194E 		.long	1310310451
 1526 04fc 2C9D4640 		.long	1078369580
 1527              		.align 32
 1528              	.LC46:
 1529 0500 BDBD26A3 		.long	2737225149
 1530 0504 33BF5440 		.long	1079295795
 1531 0508 BDBD26A3 		.long	2737225149
 1532 050c 33BF5440 		.long	1079295795
 1533 0510 BDBD26A3 		.long	2737225149
 1534 0514 33BF5440 		.long	1079295795
 1535 0518 BDBD26A3 		.long	2737225149
 1536 051c 33BF5440 		.long	1079295795
 1537              		.align 32
 1538              	.LC47:
 1539 0520 A80C615C 		.long	1549864104
 1540 0524 10D02BBF 		.long	-1087647728
 1541 0528 A80C615C 		.long	1549864104
 1542 052c 10D02BBF 		.long	-1087647728
 1543 0530 A80C615C 		.long	1549864104
 1544 0534 10D02BBF 		.long	-1087647728
 1545 0538 A80C615C 		.long	1549864104
 1546 053c 10D02BBF 		.long	-1087647728
 1547              		.align 32
 1548              	.LC48:
 1549 0540 00000000 		.long	0
 1550 0544 0000E03F 		.long	1071644672
 1551 0548 00000000 		.long	0
 1552 054c 0000E03F 		.long	1071644672
 1553 0550 00000000 		.long	0
 1554 0554 0000E03F 		.long	1071644672
GAS LISTING /tmp/ccn2Dd5N.s 			page 42


 1555 0558 00000000 		.long	0
 1556 055c 0000E03F 		.long	1071644672
 1557              		.align 32
 1558              	.LC49:
 1559 0560 00000000 		.long	0
 1560 0564 0030E63F 		.long	1072050176
 1561 0568 00000000 		.long	0
 1562 056c 0030E63F 		.long	1072050176
 1563 0570 00000000 		.long	0
 1564 0574 0030E63F 		.long	1072050176
 1565 0578 00000000 		.long	0
 1566 057c 0030E63F 		.long	1072050176
 1567              		.section	.rodata.cst16
 1568              		.align 16
 1569              	.LC50:
 1570 0040 00000000 		.quad	-9007199254740992
 1570      0000E0FF 
 1571 0048 00000000 		.quad	-9007199254740992
 1571      0000E0FF 
 1572              		.section	.rodata.cst32
 1573              		.align 32
 1574              	.LC51:
 1575 0580 00000000 		.long	0
 1576 0584 00001000 		.long	1048576
 1577 0588 00000000 		.long	0
 1578 058c 00001000 		.long	1048576
 1579 0590 00000000 		.long	0
 1580 0594 00001000 		.long	1048576
 1581 0598 00000000 		.long	0
 1582 059c 00001000 		.long	1048576
 1583              		.align 32
 1584              	.LC52:
 1585 05a0 00000020 		.long	536870912
 1586 05a4 2000F87F 		.long	2146959392
 1587 05a8 00000020 		.long	536870912
 1588 05ac 2000F87F 		.long	2146959392
 1589 05b0 00000020 		.long	536870912
 1590 05b4 2000F87F 		.long	2146959392
 1591 05b8 00000020 		.long	536870912
 1592 05bc 2000F87F 		.long	2146959392
 1593              		.section	.rodata.cst16
 1594              		.align 16
 1595              	.LC53:
 1596 0050 00000000 		.long	0
 1597 0054 0000F07F 		.long	2146435072
 1598 0058 00000000 		.long	0
 1599 005c 0000F07F 		.long	2146435072
 1600              		.align 16
 1601              	.LC54:
 1602 0060 00000000 		.quad	9218868437227405312
 1602      0000F07F 
 1603 0068 00000000 		.quad	9218868437227405312
 1603      0000F07F 
 1604              		.section	.rodata.cst32
 1605              		.align 32
 1606              	.LC55:
 1607 05c0 FE822B65 		.long	1697350398
GAS LISTING /tmp/ccn2Dd5N.s 			page 43


 1608 05c4 4715F73F 		.long	1073157447
 1609 05c8 FE822B65 		.long	1697350398
 1610 05cc 4715F73F 		.long	1073157447
 1611 05d0 FE822B65 		.long	1697350398
 1612 05d4 4715F73F 		.long	1073157447
 1613 05d8 FE822B65 		.long	1697350398
 1614 05dc 4715F73F 		.long	1073157447
 1615              		.align 32
 1616              	.LC56:
 1617 05e0 00000000 		.long	0
 1618 05e4 402EE63F 		.long	1072049728
 1619 05e8 00000000 		.long	0
 1620 05ec 402EE63F 		.long	1072049728
 1621 05f0 00000000 		.long	0
 1622 05f4 402EE63F 		.long	1072049728
 1623 05f8 00000000 		.long	0
 1624 05fc 402EE63F 		.long	1072049728
 1625              		.align 32
 1626              	.LC57:
 1627 0600 CAAB79CF 		.long	3480857546
 1628 0604 D1F7B73E 		.long	1052243921
 1629 0608 CAAB79CF 		.long	3480857546
 1630 060c D1F7B73E 		.long	1052243921
 1631 0610 CAAB79CF 		.long	3480857546
 1632 0614 D1F7B73E 		.long	1052243921
 1633 0618 CAAB79CF 		.long	3480857546
 1634 061c D1F7B73E 		.long	1052243921
 1635              		.align 32
 1636              	.LC58:
 1637 0620 55555555 		.long	1431655765
 1638 0624 5555C53F 		.long	1069897045
 1639 0628 55555555 		.long	1431655765
 1640 062c 5555C53F 		.long	1069897045
 1641 0630 55555555 		.long	1431655765
 1642 0634 5555C53F 		.long	1069897045
 1643 0638 55555555 		.long	1431655765
 1644 063c 5555C53F 		.long	1069897045
 1645              		.align 32
 1646              	.LC59:
 1647 0640 11111111 		.long	286331153
 1648 0644 1111813F 		.long	1065423121
 1649 0648 11111111 		.long	286331153
 1650 064c 1111813F 		.long	1065423121
 1651 0650 11111111 		.long	286331153
 1652 0654 1111813F 		.long	1065423121
 1653 0658 11111111 		.long	286331153
 1654 065c 1111813F 		.long	1065423121
 1655              		.align 32
 1656              	.LC60:
 1657 0660 55555555 		.long	1431655765
 1658 0664 5555A53F 		.long	1067799893
 1659 0668 55555555 		.long	1431655765
 1660 066c 5555A53F 		.long	1067799893
 1661 0670 55555555 		.long	1431655765
 1662 0674 5555A53F 		.long	1067799893
 1663 0678 55555555 		.long	1431655765
 1664 067c 5555A53F 		.long	1067799893
GAS LISTING /tmp/ccn2Dd5N.s 			page 44


 1665              		.align 32
 1666              	.LC61:
 1667 0680 1AA0011A 		.long	436314138
 1668 0684 A0012A3F 		.long	1059717536
 1669 0688 1AA0011A 		.long	436314138
 1670 068c A0012A3F 		.long	1059717536
 1671 0690 1AA0011A 		.long	436314138
 1672 0694 A0012A3F 		.long	1059717536
 1673 0698 1AA0011A 		.long	436314138
 1674 069c A0012A3F 		.long	1059717536
 1675              		.align 32
 1676              	.LC62:
 1677 06a0 176CC116 		.long	381774871
 1678 06a4 6CC1563F 		.long	1062650220
 1679 06a8 176CC116 		.long	381774871
 1680 06ac 6CC1563F 		.long	1062650220
 1681 06b0 176CC116 		.long	381774871
 1682 06b4 6CC1563F 		.long	1062650220
 1683 06b8 176CC116 		.long	381774871
 1684 06bc 6CC1563F 		.long	1062650220
 1685              		.align 32
 1686              	.LC63:
 1687 06c0 34C756A5 		.long	2773927732
 1688 06c4 E31DC73E 		.long	1053236707
 1689 06c8 34C756A5 		.long	2773927732
 1690 06cc E31DC73E 		.long	1053236707
 1691 06d0 34C756A5 		.long	2773927732
 1692 06d4 E31DC73E 		.long	1053236707
 1693 06d8 34C756A5 		.long	2773927732
 1694 06dc E31DC73E 		.long	1053236707
 1695              		.align 32
 1696              	.LC64:
 1697 06e0 1AA0011A 		.long	436314138
 1698 06e4 A001FA3E 		.long	1056571808
 1699 06e8 1AA0011A 		.long	436314138
 1700 06ec A001FA3E 		.long	1056571808
 1701 06f0 1AA0011A 		.long	436314138
 1702 06f4 A001FA3E 		.long	1056571808
 1703 06f8 1AA0011A 		.long	436314138
 1704 06fc A001FA3E 		.long	1056571808
 1705              		.align 32
 1706              	.LC65:
 1707 0700 E444F567 		.long	1744127204
 1708 0704 45E65A3E 		.long	1046144581
 1709 0708 E444F567 		.long	1744127204
 1710 070c 45E65A3E 		.long	1046144581
 1711 0710 E444F567 		.long	1744127204
 1712 0714 45E65A3E 		.long	1046144581
 1713 0718 E444F567 		.long	1744127204
 1714 071c 45E65A3E 		.long	1046144581
 1715              		.align 32
 1716              	.LC66:
 1717 0720 5C9F78B7 		.long	3078135644
 1718 0724 4F7E923E 		.long	1049787983
 1719 0728 5C9F78B7 		.long	3078135644
 1720 072c 4F7E923E 		.long	1049787983
 1721 0730 5C9F78B7 		.long	3078135644
GAS LISTING /tmp/ccn2Dd5N.s 			page 45


 1722 0734 4F7E923E 		.long	1049787983
 1723 0738 5C9F78B7 		.long	3078135644
 1724 073c 4F7E923E 		.long	1049787983
 1725              		.align 32
 1726              	.LC67:
 1727 0740 096DA813 		.long	329805065
 1728 0744 4612E63D 		.long	1038488134
 1729 0748 096DA813 		.long	329805065
 1730 074c 4612E63D 		.long	1038488134
 1731 0750 096DA813 		.long	329805065
 1732 0754 4612E63D 		.long	1038488134
 1733 0758 096DA813 		.long	329805065
 1734 075c 4612E63D 		.long	1038488134
 1735              		.align 32
 1736              	.LC68:
 1737 0760 98D8F8EF 		.long	4026063000
 1738 0764 D8EE213E 		.long	1042411224
 1739 0768 98D8F8EF 		.long	4026063000
 1740 076c D8EE213E 		.long	1042411224
 1741 0770 98D8F8EF 		.long	4026063000
 1742 0774 D8EE213E 		.long	1042411224
 1743 0778 98D8F8EF 		.long	4026063000
 1744 077c D8EE213E 		.long	1042411224
 1745              		.align 32
 1746              	.LC69:
 1747 0780 85EB51B8 		.long	3092376453
 1748 0784 1E238640 		.long	1082532638
 1749 0788 85EB51B8 		.long	3092376453
 1750 078c 1E238640 		.long	1082532638
 1751 0790 85EB51B8 		.long	3092376453
 1752 0794 1E238640 		.long	1082532638
 1753 0798 85EB51B8 		.long	3092376453
 1754 079c 1E238640 		.long	1082532638
 1755              		.align 32
 1756              	.LC70:
 1757 07a0 2D431CEB 		.long	3944497965
 1758 07a4 E2361A3F 		.long	1058682594
 1759 07a8 2D431CEB 		.long	3944497965
 1760 07ac E2361A3F 		.long	1058682594
 1761 07b0 2D431CEB 		.long	3944497965
 1762 07b4 E2361A3F 		.long	1058682594
 1763 07b8 2D431CEB 		.long	3944497965
 1764 07bc E2361A3F 		.long	1058682594
 1765              		.align 32
 1766              	.LC71:
 1767 07c0 00000000 		.long	0
 1768 07c4 00001440 		.long	1075052544
 1769 07c8 00000000 		.long	0
 1770 07cc 00001440 		.long	1075052544
 1771 07d0 00000000 		.long	0
 1772 07d4 00001440 		.long	1075052544
 1773 07d8 00000000 		.long	0
 1774 07dc 00001440 		.long	1075052544
 1775              		.align 32
 1776              	.LC72:
 1777 07e0 9A999999 		.long	2576980378
 1778 07e4 9999E93F 		.long	1072273817
GAS LISTING /tmp/ccn2Dd5N.s 			page 46


 1779 07e8 9A999999 		.long	2576980378
 1780 07ec 9999E93F 		.long	1072273817
 1781 07f0 9A999999 		.long	2576980378
 1782 07f4 9999E93F 		.long	1072273817
 1783 07f8 9A999999 		.long	2576980378
 1784 07fc 9999E93F 		.long	1072273817
 1785              		.align 32
 1786              	.LC73:
 1787 0800 00000000 		.long	0
 1788 0804 00408F40 		.long	1083129856
 1789 0808 00000000 		.long	0
 1790 080c 00408F40 		.long	1083129856
 1791 0810 00000000 		.long	0
 1792 0814 00408F40 		.long	1083129856
 1793 0818 00000000 		.long	0
 1794 081c 00408F40 		.long	1083129856
 1795              		.align 32
 1796              	.LC74:
 1797 0820 00000000 		.long	0
 1798 0824 00005940 		.long	1079574528
 1799 0828 00000000 		.long	0
 1800 082c 00005940 		.long	1079574528
 1801 0830 00000000 		.long	0
 1802 0834 00005940 		.long	1079574528
 1803 0838 00000000 		.long	0
 1804 083c 00005940 		.long	1079574528
 1805              		.align 32
 1806              	.LC79:
 1807 0840 7B14AE47 		.long	1202590843
 1808 0844 E17A843F 		.long	1065646817
 1809 0848 7B14AE47 		.long	1202590843
 1810 084c E17A843F 		.long	1065646817
 1811 0850 7B14AE47 		.long	1202590843
 1812 0854 E17A843F 		.long	1065646817
 1813 0858 7B14AE47 		.long	1202590843
 1814 085c E17A843F 		.long	1065646817
 1815              		.section	.rodata.cst16
 1816              		.align 16
 1817              	.LC82:
 1818 0070 FFFFFFFF 		.quad	-1
 1818      FFFFFFFF 
 1819 0078 FFFFFFFF 		.quad	-1
 1819      FFFFFFFF 
 1820              		.hidden	__dso_handle
 1821              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1822              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccn2Dd5N.s 			page 47


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccn2Dd5N.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccn2Dd5N.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccn2Dd5N.s:87     .text.startup:0000000000000000 main
     /tmp/ccn2Dd5N.s:1075   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccn2Dd5N.s:1087   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccn2Dd5N.s:1052   .text.startup:0000000000001550 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccn2Dd5N.s:1100   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccn2Dd5N.s:1111   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccn2Dd5N.s:1595   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccn2Dd5N.s:1116   .rodata.cst32:0000000000000020 .LC3
     /tmp/ccn2Dd5N.s:1126   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccn2Dd5N.s:1366   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccn2Dd5N.s:1418   .rodata.cst32:00000000000003a0 .LC35
     /tmp/ccn2Dd5N.s:1806   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccn2Dd5N.s:1136   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccn2Dd5N.s:1146   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccn2Dd5N.s:1176   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccn2Dd5N.s:1156   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccn2Dd5N.s:1166   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccn2Dd5N.s:1196   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccn2Dd5N.s:1206   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccn2Dd5N.s:1216   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccn2Dd5N.s:1186   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccn2Dd5N.s:1236   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccn2Dd5N.s:1246   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccn2Dd5N.s:1256   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccn2Dd5N.s:1266   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccn2Dd5N.s:1226   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccn2Dd5N.s:1276   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccn2Dd5N.s:1306   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccn2Dd5N.s:1286   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccn2Dd5N.s:1296   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccn2Dd5N.s:1316   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccn2Dd5N.s:1326   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccn2Dd5N.s:1336   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccn2Dd5N.s:1346   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccn2Dd5N.s:1356   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccn2Dd5N.s:1766   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccn2Dd5N.s:1756   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccn2Dd5N.s:1786   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccn2Dd5N.s:1776   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccn2Dd5N.s:1400   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccn2Dd5N.s:1377   .rodata.cst16:0000000000000000 .LC29
     /tmp/ccn2Dd5N.s:1385   .rodata.cst16:0000000000000020 .LC31
     /tmp/ccn2Dd5N.s:1381   .rodata.cst16:0000000000000010 .LC30
     /tmp/ccn2Dd5N.s:1411   .rodata.cst16:0000000000000030 .LC34
     /tmp/ccn2Dd5N.s:1390   .rodata.cst32:0000000000000360 .LC32
     /tmp/ccn2Dd5N.s:1448   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccn2Dd5N.s:1428   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccn2Dd5N.s:1468   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccn2Dd5N.s:1458   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccn2Dd5N.s:1438   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccn2Dd5N.s:1478   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccn2Dd5N.s:1508   .rodata.cst32:00000000000004c0 .LC44
GAS LISTING /tmp/ccn2Dd5N.s 			page 48


     /tmp/ccn2Dd5N.s:1488   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccn2Dd5N.s:1498   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccn2Dd5N.s:1518   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccn2Dd5N.s:1528   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccn2Dd5N.s:1548   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccn2Dd5N.s:1538   .rodata.cst32:0000000000000520 .LC47
     /tmp/ccn2Dd5N.s:1558   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccn2Dd5N.s:1569   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccn2Dd5N.s:1817   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccn2Dd5N.s:1574   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccn2Dd5N.s:1584   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccn2Dd5N.s:1601   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccn2Dd5N.s:1606   .rodata.cst32:00000000000005c0 .LC55
     /tmp/ccn2Dd5N.s:1616   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccn2Dd5N.s:1626   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccn2Dd5N.s:1666   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccn2Dd5N.s:1636   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccn2Dd5N.s:1646   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccn2Dd5N.s:1676   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccn2Dd5N.s:1656   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccn2Dd5N.s:1706   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccn2Dd5N.s:1716   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccn2Dd5N.s:1686   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccn2Dd5N.s:1726   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccn2Dd5N.s:1696   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccn2Dd5N.s:1736   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccn2Dd5N.s:1746   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccn2Dd5N.s:1796   .rodata.cst32:0000000000000820 .LC74

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZNSo9_M_insertIlEERSoT_
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSolsEi
_ZNSo9_M_insertIdEERSoT_
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
