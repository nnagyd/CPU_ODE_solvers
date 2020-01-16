GAS LISTING /tmp/ccoMFGZU.s 			page 1


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
GAS LISTING /tmp/ccoMFGZU.s 			page 2


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
GAS LISTING /tmp/ccoMFGZU.s 			page 3


  97 0011 4155     		pushq	%r13
  98 0013 4154     		pushq	%r12
  99 0015 53       		pushq	%rbx
 100 0016 4883E4E0 		andq	$-32, %rsp
 101 001a 4881EC80 		subq	$2432, %rsp
 101      090000
 102              		.cfi_offset 15, -24
 103              		.cfi_offset 14, -32
 104              		.cfi_offset 13, -40
 105              		.cfi_offset 12, -48
 106              		.cfi_offset 3, -56
 107 0021 C5FD2825 		vmovapd	.LC0(%rip), %ymm4
 107      00000000 
 108 0029 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 108      00000000 
 109 0031 C5FD29A4 		vmovapd	%ymm4, 384(%rsp)
 109      24800100 
 109      00
 110 003a C5FD29A4 		vmovapd	%ymm4, 416(%rsp)
 110      24A00100 
 110      00
 111 0043 C5FD29A4 		vmovapd	%ymm4, 448(%rsp)
 111      24C00100 
 111      00
 112 004c C5FD29A4 		vmovapd	%ymm4, 480(%rsp)
 112      24E00100 
 112      00
 113 0055 C5FD29A4 		vmovapd	%ymm4, 512(%rsp)
 113      24000200 
 113      00
 114 005e C5FD29A4 		vmovapd	%ymm4, 544(%rsp)
 114      24200200 
 114      00
 115 0067 C5FD29A4 		vmovapd	%ymm4, 576(%rsp)
 115      24400200 
 115      00
 116 0070 C5FD29A4 		vmovapd	%ymm4, 608(%rsp)
 116      24600200 
 116      00
 117 0079 C5FD29A4 		vmovapd	%ymm4, 640(%rsp)
 117      24800200 
 117      00
 118 0082 C5FD29A4 		vmovapd	%ymm4, 672(%rsp)
 118      24A00200 
 118      00
 119 008b C5FD29A4 		vmovapd	%ymm4, 704(%rsp)
 119      24C00200 
 119      00
 120 0094 C5FD29A4 		vmovapd	%ymm4, 736(%rsp)
 120      24E00200 
 120      00
 121 009d C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 121      24200100 
 121      00
 122 00a6 C5F877   		vzeroupper
 123 00a9 4C8DBC24 		leaq	1152(%rsp), %r15
 123      80040000 
GAS LISTING /tmp/ccoMFGZU.s 			page 4


 124 00b1 E8000000 		call	_Z8linspaceddi
 124      00
 125 00b6 4C8DB424 		leaq	1536(%rsp), %r14
 125      00060000 
 126 00be 4889C3   		movq	%rax, %rbx
 127 00c1 E8000000 		call	clock
 127      00
 128 00c6 C5FD2815 		vmovapd	.LC3(%rip), %ymm2
 128      00000000 
 129 00ce 4989DC   		movq	%rbx, %r12
 130 00d1 48898424 		movq	%rax, 344(%rsp)
 130      58010000 
 131 00d9 C5FD282D 		vmovapd	.LC4(%rip), %ymm5
 131      00000000 
 132 00e1 31DB     		xorl	%ebx, %ebx
 133 00e3 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 133      00000000 
 134 00eb C5FD283D 		vmovapd	.LC6(%rip), %ymm7
 134      00000000 
 135 00f3 C5FD2835 		vmovapd	.LC7(%rip), %ymm6
 135      00000000 
 136 00fb C5FD28A4 		vmovapd	288(%rsp), %ymm4
 136      24200100 
 136      00
 137              	.L12:
 138 0104 C4C17D28 		vmovapd	(%r12), %ymm0
 138      0424
 139 010a B8102700 		movl	$10000, %eax
 139      00
 140 010f C5FD2984 		vmovapd	%ymm0, 2304(%rsp)
 140      24000900 
 140      00
 141 0118 C4C17D28 		vmovapd	32(%r12), %ymm0
 141      442420
 142 011f C5FD2984 		vmovapd	%ymm0, 2336(%rsp)
 142      24200900 
 142      00
 143 0128 C4C17D28 		vmovapd	64(%r12), %ymm0
 143      442440
 144 012f C5FD2984 		vmovapd	%ymm0, 2368(%rsp)
 144      24400900 
 144      00
 145 0138 C4C17D28 		vmovapd	96(%r12), %ymm0
 145      442460
 146 013f C5FD2984 		vmovapd	%ymm0, 2400(%rsp)
 146      24600900 
 146      00
 147 0148 C5FD2884 		vmovapd	384(%rsp), %ymm0
 147      24800100 
 147      00
 148 0151 C5FD2984 		vmovapd	%ymm0, 1536(%rsp)
 148      24000600 
 148      00
 149 015a C5FD2884 		vmovapd	416(%rsp), %ymm0
 149      24A00100 
 149      00
 150 0163 C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
GAS LISTING /tmp/ccoMFGZU.s 			page 5


 150      24200600 
 150      00
 151 016c C5FD2884 		vmovapd	448(%rsp), %ymm0
 151      24C00100 
 151      00
 152 0175 C5FD2984 		vmovapd	%ymm0, 1600(%rsp)
 152      24400600 
 152      00
 153 017e C5FD2884 		vmovapd	480(%rsp), %ymm0
 153      24E00100 
 153      00
 154 0187 C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 154      24600600 
 154      00
 155 0190 C5FD2884 		vmovapd	512(%rsp), %ymm0
 155      24000200 
 155      00
 156 0199 C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 156      24800600 
 156      00
 157 01a2 C5FD2884 		vmovapd	544(%rsp), %ymm0
 157      24200200 
 157      00
 158 01ab C5FD2984 		vmovapd	%ymm0, 1696(%rsp)
 158      24A00600 
 158      00
 159 01b4 C5FD2884 		vmovapd	576(%rsp), %ymm0
 159      24400200 
 159      00
 160 01bd C5FD2984 		vmovapd	%ymm0, 1728(%rsp)
 160      24C00600 
 160      00
 161 01c6 C5FD2884 		vmovapd	608(%rsp), %ymm0
 161      24600200 
 161      00
 162 01cf C5FD2984 		vmovapd	%ymm0, 1760(%rsp)
 162      24E00600 
 162      00
 163 01d8 C5FD2884 		vmovapd	640(%rsp), %ymm0
 163      24800200 
 163      00
 164 01e1 C5FD2984 		vmovapd	%ymm0, 1792(%rsp)
 164      24000700 
 164      00
 165 01ea C5FD2884 		vmovapd	672(%rsp), %ymm0
 165      24A00200 
 165      00
 166 01f3 C5FD2984 		vmovapd	%ymm0, 1824(%rsp)
 166      24200700 
 166      00
 167 01fc C5FD2884 		vmovapd	704(%rsp), %ymm0
 167      24C00200 
 167      00
 168 0205 C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 168      24400700 
 168      00
 169 020e C5FD2884 		vmovapd	736(%rsp), %ymm0
GAS LISTING /tmp/ccoMFGZU.s 			page 6


 169      24E00200 
 169      00
 170 0217 C5FD2984 		vmovapd	%ymm0, 1888(%rsp)
 170      24600700 
 170      00
 171              		.p2align 4,,10
 172              		.p2align 3
 173              	.L27:
 174 0220 C5FD2884 		vmovapd	1536(%rsp), %ymm0
 174      24000600 
 174      00
 175 0229 488D9424 		leaq	768(%rsp), %rdx
 175      00030000 
 176 0231 C5FD289C 		vmovapd	1568(%rsp), %ymm3
 176      24200600 
 176      00
 177 023a C57D598C 		vmulpd	1600(%rsp), %ymm0, %ymm9
 177      24400600 
 177      00
 178 0243 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 179 0247 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 179      C0
 180 024c C57D2984 		vmovapd	%ymm8, 768(%rsp)
 180      24000300 
 180      00
 181 0255 C57D5984 		vmulpd	2304(%rsp), %ymm0, %ymm8
 181      24000900 
 181      00
 182 025e C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 183 0262 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 184 0266 C5FD289C 		vmovapd	1664(%rsp), %ymm3
 184      24800600 
 184      00
 185 026f C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 185      C1
 186 0274 C57D2984 		vmovapd	%ymm8, 800(%rsp)
 186      24200300 
 186      00
 187 027d C5555984 		vmulpd	1600(%rsp), %ymm5, %ymm8
 187      24400600 
 187      00
 188 0286 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 188      C0
 189 028b C5FD2984 		vmovapd	%ymm0, 832(%rsp)
 189      24400300 
 189      00
 190 0294 C5FD2884 		vmovapd	1632(%rsp), %ymm0
 190      24600600 
 190      00
 191 029d C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 192 02a1 C57D598C 		vmulpd	1696(%rsp), %ymm0, %ymm9
 192      24A00600 
 192      00
 193 02aa C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 193      C0
 194 02af C57D2984 		vmovapd	%ymm8, 864(%rsp)
 194      24600300 
GAS LISTING /tmp/ccoMFGZU.s 			page 7


 194      00
 195 02b8 C57D5984 		vmulpd	2336(%rsp), %ymm0, %ymm8
 195      24200900 
 195      00
 196 02c1 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 197 02c5 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 198 02c9 C5FD289C 		vmovapd	1760(%rsp), %ymm3
 198      24E00600 
 198      00
 199 02d2 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 199      C1
 200 02d7 C57D2984 		vmovapd	%ymm8, 896(%rsp)
 200      24800300 
 200      00
 201 02e0 C5555984 		vmulpd	1696(%rsp), %ymm5, %ymm8
 201      24A00600 
 201      00
 202 02e9 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 202      C0
 203 02ee C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 203      24A00300 
 203      00
 204 02f7 C5FD2884 		vmovapd	1728(%rsp), %ymm0
 204      24C00600 
 204      00
 205 0300 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 206 0304 C57D598C 		vmulpd	1792(%rsp), %ymm0, %ymm9
 206      24000700 
 206      00
 207 030d C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 207      C0
 208 0312 C57D2984 		vmovapd	%ymm8, 960(%rsp)
 208      24C00300 
 208      00
 209 031b C57D5984 		vmulpd	2368(%rsp), %ymm0, %ymm8
 209      24400900 
 209      00
 210 0324 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 211 0328 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 212 032c C5FD289C 		vmovapd	1856(%rsp), %ymm3
 212      24400700 
 212      00
 213 0335 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 213      C1
 214 033a C57D2984 		vmovapd	%ymm8, 992(%rsp)
 214      24E00300 
 214      00
 215 0343 C5555984 		vmulpd	1792(%rsp), %ymm5, %ymm8
 215      24000700 
 215      00
 216 034c C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 216      C0
 217 0351 C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 217      24000400 
 217      00
 218 035a C5FD2884 		vmovapd	1824(%rsp), %ymm0
 218      24200700 
GAS LISTING /tmp/ccoMFGZU.s 			page 8


 218      00
 219 0363 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 220 0367 C57D598C 		vmulpd	1888(%rsp), %ymm0, %ymm9
 220      24600700 
 220      00
 221 0370 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 221      C0
 222 0375 C57D2984 		vmovapd	%ymm8, 1056(%rsp)
 222      24200400 
 222      00
 223 037e C57D5984 		vmulpd	2400(%rsp), %ymm0, %ymm8
 223      24600900 
 223      00
 224 0387 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 225 038b C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 226 038f C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 226      C1
 227 0394 C57D2984 		vmovapd	%ymm8, 1088(%rsp)
 227      24400400 
 227      00
 228 039d C5555984 		vmulpd	1888(%rsp), %ymm5, %ymm8
 228      24600700 
 228      00
 229 03a6 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 229      C0
 230 03ab C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 230      24600400 
 230      00
 231              		.p2align 4,,10
 232 03b4 0F1F4000 		.p2align 3
 233              	.L14:
 234 03b8 C5FD2802 		vmovapd	(%rdx), %ymm0
 235 03bc 4883C220 		addq	$32, %rdx
 236 03c0 C5FD2982 		vmovapd	%ymm0, 352(%rdx)
 236      60010000 
 237 03c8 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 238 03cc C5FD5882 		vaddpd	736(%rdx), %ymm0, %ymm0
 238      E0020000 
 239 03d4 C5FD2982 		vmovapd	%ymm0, 1120(%rdx)
 239      60040000 
 240 03dc 4C39FA   		cmpq	%r15, %rdx
 241 03df 75D7     		jne	.L14
 242 03e1 C5FD2884 		vmovapd	1920(%rsp), %ymm0
 242      24800700 
 242      00
 243 03ea 4C89FA   		movq	%r15, %rdx
 244 03ed C5FD289C 		vmovapd	1952(%rsp), %ymm3
 244      24A00700 
 244      00
 245 03f6 C57D598C 		vmulpd	1984(%rsp), %ymm0, %ymm9
 245      24C00700 
 245      00
 246 03ff C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 247 0403 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 247      C0
 248 0408 C57D2984 		vmovapd	%ymm8, 768(%rsp)
 248      24000300 
GAS LISTING /tmp/ccoMFGZU.s 			page 9


 248      00
 249 0411 C57D5984 		vmulpd	2304(%rsp), %ymm0, %ymm8
 249      24000900 
 249      00
 250 041a C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 251 041e C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 252 0422 C5FD289C 		vmovapd	2048(%rsp), %ymm3
 252      24000800 
 252      00
 253 042b C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 253      C1
 254 0430 C57D2984 		vmovapd	%ymm8, 800(%rsp)
 254      24200300 
 254      00
 255 0439 C5555984 		vmulpd	1984(%rsp), %ymm5, %ymm8
 255      24C00700 
 255      00
 256 0442 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 256      C0
 257 0447 C5FD2984 		vmovapd	%ymm0, 832(%rsp)
 257      24400300 
 257      00
 258 0450 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 258      24E00700 
 258      00
 259 0459 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 260 045d C57D598C 		vmulpd	2080(%rsp), %ymm0, %ymm9
 260      24200800 
 260      00
 261 0466 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 261      C0
 262 046b C57D2984 		vmovapd	%ymm8, 864(%rsp)
 262      24600300 
 262      00
 263 0474 C57D5984 		vmulpd	2336(%rsp), %ymm0, %ymm8
 263      24200900 
 263      00
 264 047d C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 265 0481 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 266 0485 C5FD289C 		vmovapd	2144(%rsp), %ymm3
 266      24600800 
 266      00
 267 048e C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 267      C1
 268 0493 C57D2984 		vmovapd	%ymm8, 896(%rsp)
 268      24800300 
 268      00
 269 049c C5555984 		vmulpd	2080(%rsp), %ymm5, %ymm8
 269      24200800 
 269      00
 270 04a5 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 270      C0
 271 04aa C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 271      24A00300 
 271      00
 272 04b3 C5FD2884 		vmovapd	2112(%rsp), %ymm0
 272      24400800 
GAS LISTING /tmp/ccoMFGZU.s 			page 10


 272      00
 273 04bc C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 274 04c0 C57D598C 		vmulpd	2176(%rsp), %ymm0, %ymm9
 274      24800800 
 274      00
 275 04c9 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 275      C0
 276 04ce C57D2984 		vmovapd	%ymm8, 960(%rsp)
 276      24C00300 
 276      00
 277 04d7 C57D5984 		vmulpd	2368(%rsp), %ymm0, %ymm8
 277      24400900 
 277      00
 278 04e0 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 279 04e4 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 280 04e8 C5FD289C 		vmovapd	2240(%rsp), %ymm3
 280      24C00800 
 280      00
 281 04f1 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 281      C1
 282 04f6 C57D2984 		vmovapd	%ymm8, 992(%rsp)
 282      24E00300 
 282      00
 283 04ff C5555984 		vmulpd	2176(%rsp), %ymm5, %ymm8
 283      24800800 
 283      00
 284 0508 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 284      C0
 285 050d C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 285      24000400 
 285      00
 286 0516 C5FD2884 		vmovapd	2208(%rsp), %ymm0
 286      24A00800 
 286      00
 287 051f C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 288 0523 C57D598C 		vmulpd	2272(%rsp), %ymm0, %ymm9
 288      24E00800 
 288      00
 289 052c C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 289      C0
 290 0531 C57D2984 		vmovapd	%ymm8, 1056(%rsp)
 290      24200400 
 290      00
 291 053a C57D5984 		vmulpd	2400(%rsp), %ymm0, %ymm8
 291      24600900 
 291      00
 292 0543 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 293 0547 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 294 054b C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 294      C1
 295 0550 C57D2984 		vmovapd	%ymm8, 1088(%rsp)
 295      24400400 
 295      00
 296 0559 C5555984 		vmulpd	2272(%rsp), %ymm5, %ymm8
 296      24E00800 
 296      00
 297 0562 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
GAS LISTING /tmp/ccoMFGZU.s 			page 11


 297      C0
 298 0567 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 298      24600400 
 298      00
 299              		.p2align 4,,10
 300              		.p2align 3
 301              	.L16:
 302 0570 C5FD2882 		vmovapd	-384(%rdx), %ymm0
 302      80FEFFFF 
 303 0578 4883C220 		addq	$32, %rdx
 304 057c C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 305 0580 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 306 0584 C5E5585A 		vaddpd	-32(%rdx), %ymm3, %ymm3
 306      E0
 307 0589 C5FD5882 		vaddpd	352(%rdx), %ymm0, %ymm0
 307      60010000 
 308 0591 C5FD295A 		vmovapd	%ymm3, -32(%rdx)
 308      E0
 309 0596 C5FD2982 		vmovapd	%ymm0, 736(%rdx)
 309      E0020000 
 310 059e 4C39F2   		cmpq	%r14, %rdx
 311 05a1 75CD     		jne	.L16
 312 05a3 C5FD2884 		vmovapd	1920(%rsp), %ymm0
 312      24800700 
 312      00
 313 05ac 4C89FA   		movq	%r15, %rdx
 314 05af C5FD289C 		vmovapd	1952(%rsp), %ymm3
 314      24A00700 
 314      00
 315 05b8 C57D598C 		vmulpd	1984(%rsp), %ymm0, %ymm9
 315      24C00700 
 315      00
 316 05c1 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 317 05c5 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 317      C0
 318 05ca C57D2984 		vmovapd	%ymm8, 768(%rsp)
 318      24000300 
 318      00
 319 05d3 C57D5984 		vmulpd	2304(%rsp), %ymm0, %ymm8
 319      24000900 
 319      00
 320 05dc C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 321 05e0 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 322 05e4 C5FD289C 		vmovapd	2048(%rsp), %ymm3
 322      24000800 
 322      00
 323 05ed C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 323      C1
 324 05f2 C57D2984 		vmovapd	%ymm8, 800(%rsp)
 324      24200300 
 324      00
 325 05fb C5555984 		vmulpd	1984(%rsp), %ymm5, %ymm8
 325      24C00700 
 325      00
 326 0604 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 326      C0
 327 0609 C5FD2984 		vmovapd	%ymm0, 832(%rsp)
GAS LISTING /tmp/ccoMFGZU.s 			page 12


 327      24400300 
 327      00
 328 0612 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 328      24E00700 
 328      00
 329 061b C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 330 061f C57D598C 		vmulpd	2080(%rsp), %ymm0, %ymm9
 330      24200800 
 330      00
 331 0628 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 331      C0
 332 062d C57D2984 		vmovapd	%ymm8, 864(%rsp)
 332      24600300 
 332      00
 333 0636 C57D5984 		vmulpd	2336(%rsp), %ymm0, %ymm8
 333      24200900 
 333      00
 334 063f C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 335 0643 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 336 0647 C5FD289C 		vmovapd	2144(%rsp), %ymm3
 336      24600800 
 336      00
 337 0650 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 337      C1
 338 0655 C57D2984 		vmovapd	%ymm8, 896(%rsp)
 338      24800300 
 338      00
 339 065e C5555984 		vmulpd	2080(%rsp), %ymm5, %ymm8
 339      24200800 
 339      00
 340 0667 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 340      C0
 341 066c C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 341      24A00300 
 341      00
 342 0675 C5FD2884 		vmovapd	2112(%rsp), %ymm0
 342      24400800 
 342      00
 343 067e C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 344 0682 C57D598C 		vmulpd	2176(%rsp), %ymm0, %ymm9
 344      24800800 
 344      00
 345 068b C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 345      C0
 346 0690 C57D2984 		vmovapd	%ymm8, 960(%rsp)
 346      24C00300 
 346      00
 347 0699 C57D5984 		vmulpd	2368(%rsp), %ymm0, %ymm8
 347      24400900 
 347      00
 348 06a2 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 349 06a6 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 350 06aa C5FD289C 		vmovapd	2240(%rsp), %ymm3
 350      24C00800 
 350      00
 351 06b3 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 351      C1
GAS LISTING /tmp/ccoMFGZU.s 			page 13


 352 06b8 C57D2984 		vmovapd	%ymm8, 992(%rsp)
 352      24E00300 
 352      00
 353 06c1 C5555984 		vmulpd	2176(%rsp), %ymm5, %ymm8
 353      24800800 
 353      00
 354 06ca C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 354      C0
 355 06cf C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 355      24000400 
 355      00
 356 06d8 C5FD2884 		vmovapd	2208(%rsp), %ymm0
 356      24A00800 
 356      00
 357 06e1 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 358 06e5 C57D598C 		vmulpd	2272(%rsp), %ymm0, %ymm9
 358      24E00800 
 358      00
 359 06ee C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 359      C0
 360 06f3 C57D2984 		vmovapd	%ymm8, 1056(%rsp)
 360      24200400 
 360      00
 361 06fc C57D5984 		vmulpd	2400(%rsp), %ymm0, %ymm8
 361      24600900 
 361      00
 362 0705 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 363 0709 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 364 070d C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 364      C1
 365 0712 C57D2984 		vmovapd	%ymm8, 1088(%rsp)
 365      24400400 
 365      00
 366 071b C5555984 		vmulpd	2272(%rsp), %ymm5, %ymm8
 366      24E00800 
 366      00
 367 0724 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 367      C0
 368 0729 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 368      24600400 
 368      00
 369              		.p2align 4,,10
 370 0732 660F1F44 		.p2align 3
 370      0000
 371              	.L18:
 372 0738 C5FD2882 		vmovapd	-384(%rdx), %ymm0
 372      80FEFFFF 
 373 0740 4883C220 		addq	$32, %rdx
 374 0744 C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 375 0748 C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
 376 074c C5E5585A 		vaddpd	-32(%rdx), %ymm3, %ymm3
 376      E0
 377 0751 C5FD5882 		vaddpd	352(%rdx), %ymm0, %ymm0
 377      60010000 
 378 0759 C5FD295A 		vmovapd	%ymm3, -32(%rdx)
 378      E0
 379 075e C5FD2982 		vmovapd	%ymm0, 736(%rdx)
GAS LISTING /tmp/ccoMFGZU.s 			page 14


 379      E0020000 
 380 0766 4939D6   		cmpq	%rdx, %r14
 381 0769 75CD     		jne	.L18
 382 076b C5FD2884 		vmovapd	1920(%rsp), %ymm0
 382      24800700 
 382      00
 383 0774 4C89FA   		movq	%r15, %rdx
 384 0777 C5FD289C 		vmovapd	1952(%rsp), %ymm3
 384      24A00700 
 384      00
 385 0780 C57D598C 		vmulpd	1984(%rsp), %ymm0, %ymm9
 385      24C00700 
 385      00
 386 0789 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 387 078d C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 387      C0
 388 0792 C57D2984 		vmovapd	%ymm8, 768(%rsp)
 388      24000300 
 388      00
 389 079b C57D5984 		vmulpd	2304(%rsp), %ymm0, %ymm8
 389      24000900 
 389      00
 390 07a4 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 391 07a8 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 392 07ac C5FD289C 		vmovapd	2048(%rsp), %ymm3
 392      24000800 
 392      00
 393 07b5 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 393      C1
 394 07ba C57D2984 		vmovapd	%ymm8, 800(%rsp)
 394      24200300 
 394      00
 395 07c3 C5555984 		vmulpd	1984(%rsp), %ymm5, %ymm8
 395      24C00700 
 395      00
 396 07cc C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 396      C0
 397 07d1 C5FD2984 		vmovapd	%ymm0, 832(%rsp)
 397      24400300 
 397      00
 398 07da C5FD2884 		vmovapd	2016(%rsp), %ymm0
 398      24E00700 
 398      00
 399 07e3 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 400 07e7 C57D598C 		vmulpd	2080(%rsp), %ymm0, %ymm9
 400      24200800 
 400      00
 401 07f0 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 401      C0
 402 07f5 C57D2984 		vmovapd	%ymm8, 864(%rsp)
 402      24600300 
 402      00
 403 07fe C57D5984 		vmulpd	2336(%rsp), %ymm0, %ymm8
 403      24200900 
 403      00
 404 0807 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 405 080b C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
GAS LISTING /tmp/ccoMFGZU.s 			page 15


 406 080f C5FD289C 		vmovapd	2144(%rsp), %ymm3
 406      24600800 
 406      00
 407 0818 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 407      C1
 408 081d C57D2984 		vmovapd	%ymm8, 896(%rsp)
 408      24800300 
 408      00
 409 0826 C5555984 		vmulpd	2080(%rsp), %ymm5, %ymm8
 409      24200800 
 409      00
 410 082f C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 410      C0
 411 0834 C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 411      24A00300 
 411      00
 412 083d C5FD2884 		vmovapd	2112(%rsp), %ymm0
 412      24400800 
 412      00
 413 0846 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 414 084a C57D598C 		vmulpd	2176(%rsp), %ymm0, %ymm9
 414      24800800 
 414      00
 415 0853 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 415      C0
 416 0858 C57D2984 		vmovapd	%ymm8, 960(%rsp)
 416      24C00300 
 416      00
 417 0861 C57D5984 		vmulpd	2368(%rsp), %ymm0, %ymm8
 417      24400900 
 417      00
 418 086a C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 419 086e C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 420 0872 C5FD289C 		vmovapd	2240(%rsp), %ymm3
 420      24C00800 
 420      00
 421 087b C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 421      C1
 422 0880 C57D2984 		vmovapd	%ymm8, 992(%rsp)
 422      24E00300 
 422      00
 423 0889 C5555984 		vmulpd	2176(%rsp), %ymm5, %ymm8
 423      24800800 
 423      00
 424 0892 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 424      C0
 425 0897 C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 425      24000400 
 425      00
 426 08a0 C5FD2884 		vmovapd	2208(%rsp), %ymm0
 426      24A00800 
 426      00
 427 08a9 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 428 08ad C57D598C 		vmulpd	2272(%rsp), %ymm0, %ymm9
 428      24E00800 
 428      00
 429 08b6 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
GAS LISTING /tmp/ccoMFGZU.s 			page 16


 429      C0
 430 08bb C57D2984 		vmovapd	%ymm8, 1056(%rsp)
 430      24200400 
 430      00
 431 08c4 C57D5984 		vmulpd	2400(%rsp), %ymm0, %ymm8
 431      24600900 
 431      00
 432 08cd C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 433 08d1 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 434 08d5 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 434      C1
 435 08da C57D2984 		vmovapd	%ymm8, 1088(%rsp)
 435      24400400 
 435      00
 436 08e3 C5555984 		vmulpd	2272(%rsp), %ymm5, %ymm8
 436      24E00800 
 436      00
 437 08ec C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 437      C0
 438 08f1 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 438      24600400 
 438      00
 439 08fa 660F1F44 		.p2align 4,,10
 439      0000
 440              		.p2align 3
 441              	.L20:
 442 0900 C5FD2802 		vmovapd	(%rdx), %ymm0
 443 0904 4883C220 		addq	$32, %rdx
 444 0908 C5FD5882 		vaddpd	-416(%rdx), %ymm0, %ymm0
 444      60FEFFFF 
 445 0910 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 445      E0
 446 0915 C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 447 0919 C5FD5882 		vaddpd	352(%rdx), %ymm0, %ymm0
 447      60010000 
 448 0921 C5FD2982 		vmovapd	%ymm0, 352(%rdx)
 448      60010000 
 449 0929 4939D6   		cmpq	%rdx, %r14
 450 092c 75D2     		jne	.L20
 451 092e 83E801   		subl	$1, %eax
 452 0931 0F85E9F8 		jne	.L27
 452      FFFF
 453 0937 B8AD8BDB 		movl	$1759218605, %eax
 453      68
 454 093c F7EB     		imull	%ebx
 455 093e 89D8     		movl	%ebx, %eax
 456 0940 C1F81F   		sarl	$31, %eax
 457 0943 C1FA0C   		sarl	$12, %edx
 458 0946 29C2     		subl	%eax, %edx
 459 0948 89D8     		movl	%ebx, %eax
 460 094a 69D21027 		imull	$10000, %edx, %edx
 460      0000
 461 0950 29D0     		subl	%edx, %eax
 462 0952 83F801   		cmpl	$1, %eax
 463 0955 0F848500 		je	.L29
 463      0000
 464              	.L22:
GAS LISTING /tmp/ccoMFGZU.s 			page 17


 465 095b 83C310   		addl	$16, %ebx
 466 095e 4983EC80 		subq	$-128, %r12
 467 0962 81FB809D 		cmpl	$40320, %ebx
 467      0000
 468 0968 0F8596F7 		jne	.L12
 468      FFFF
 469 096e C5F877   		vzeroupper
 470 0971 E8000000 		call	clock
 470      00
 471 0976 BE000000 		movl	$.LC12, %esi
 471      00
 472 097b 4889C3   		movq	%rax, %rbx
 473 097e BF000000 		movl	$_ZSt4cout, %edi
 473      00
 474 0983 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 474      00
 475 0988 4889D9   		movq	%rbx, %rcx
 476 098b 482B8C24 		subq	344(%rsp), %rcx
 476      58010000 
 477 0993 4889C7   		movq	%rax, %rdi
 478 0996 48BECFF7 		movabsq	$2361183241434822607, %rsi
 478      53E3A59B 
 478      C420
 479 09a0 4889C8   		movq	%rcx, %rax
 480 09a3 48C1F93F 		sarq	$63, %rcx
 481 09a7 48F7EE   		imulq	%rsi
 482 09aa 4889D6   		movq	%rdx, %rsi
 483 09ad 48C1FE07 		sarq	$7, %rsi
 484 09b1 4829CE   		subq	%rcx, %rsi
 485 09b4 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 485      00
 486 09b9 BE000000 		movl	$.LC13, %esi
 486      00
 487 09be 4889C7   		movq	%rax, %rdi
 488 09c1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 488      00
 489 09c6 4889C7   		movq	%rax, %rdi
 490 09c9 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 490      00
 491 09ce 488D65D8 		leaq	-40(%rbp), %rsp
 492 09d2 31C0     		xorl	%eax, %eax
 493 09d4 5B       		popq	%rbx
 494 09d5 415C     		popq	%r12
 495 09d7 415D     		popq	%r13
 496 09d9 415E     		popq	%r14
 497 09db 415F     		popq	%r15
 498 09dd 5D       		popq	%rbp
 499              		.cfi_remember_state
 500              		.cfi_def_cfa 7, 8
 501 09de C3       		ret
 502 09df 90       		.p2align 4,,10
 503              		.p2align 3
 504              	.L29:
 505              		.cfi_restore_state
 506 09e0 C5FD2884 		vmovapd	2304(%rsp), %ymm0
 506      24000900 
 506      00
GAS LISTING /tmp/ccoMFGZU.s 			page 18


 507 09e9 BA050000 		movl	$5, %edx
 507      00
 508 09ee BE000000 		movl	$.LC8, %esi
 508      00
 509 09f3 BF000000 		movl	$_ZSt4cout, %edi
 509      00
 510 09f8 C5FD2934 		vmovapd	%ymm6, (%rsp)
 510      24
 511 09fd C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 511      24600100 
 511      00
 512 0a06 C5FD2884 		vmovapd	1600(%rsp), %ymm0
 512      24400600 
 512      00
 513 0a0f C5FB109C 		vmovsd	352(%rsp), %xmm3
 513      24600100 
 513      00
 514 0a18 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 514      24600100 
 514      00
 515 0a21 C5FD2884 		vmovapd	1568(%rsp), %ymm0
 515      24200600 
 515      00
 516 0a2a C57B1084 		vmovsd	352(%rsp), %xmm8
 516      24600100 
 516      00
 517 0a33 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 517      24600100 
 517      00
 518 0a3c C5FD2884 		vmovapd	1536(%rsp), %ymm0
 518      24000600 
 518      00
 519 0a45 C57B108C 		vmovsd	352(%rsp), %xmm9
 519      24600100 
 519      00
 520 0a4e C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 520      24600100 
 520      00
 521 0a57 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 521      2420
 522 0a5d C5FB1084 		vmovsd	352(%rsp), %xmm0
 522      24600100 
 522      00
 523 0a66 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 523      2440
 524 0a6c C5FD296C 		vmovapd	%ymm5, 96(%rsp)
 524      2460
 525 0a72 C5FD2994 		vmovapd	%ymm2, 128(%rsp)
 525      24800000 
 525      00
 526 0a7b C5FD29A4 		vmovapd	%ymm4, 160(%rsp)
 526      24A00000 
 526      00
 527 0a84 C5FB119C 		vmovsd	%xmm3, 192(%rsp)
 527      24C00000 
 527      00
 528 0a8d C57B1184 		vmovsd	%xmm8, 224(%rsp)
GAS LISTING /tmp/ccoMFGZU.s 			page 19


 528      24E00000 
 528      00
 529 0a96 C57B118C 		vmovsd	%xmm9, 256(%rsp)
 529      24000100 
 529      00
 530 0a9f C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 530      24200100 
 530      00
 531 0aa8 C5F877   		vzeroupper
 532 0aab E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 532      00
 533 0ab0 C5FB1084 		vmovsd	288(%rsp), %xmm0
 533      24200100 
 533      00
 534 0ab9 BF000000 		movl	$_ZSt4cout, %edi
 534      00
 535 0abe E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 535      00
 536 0ac3 BA060000 		movl	$6, %edx
 536      00
 537 0ac8 BE000000 		movl	$.LC9, %esi
 537      00
 538 0acd 4889C7   		movq	%rax, %rdi
 539 0ad0 4989C5   		movq	%rax, %r13
 540 0ad3 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 540      00
 541 0ad8 C57B108C 		vmovsd	256(%rsp), %xmm9
 541      24000100 
 541      00
 542 0ae1 4C89EF   		movq	%r13, %rdi
 543 0ae4 C57929C8 		vmovapd	%xmm9, %xmm0
 544 0ae8 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 544      00
 545 0aed BA060000 		movl	$6, %edx
 545      00
 546 0af2 BE000000 		movl	$.LC10, %esi
 546      00
 547 0af7 4889C7   		movq	%rax, %rdi
 548 0afa 4989C5   		movq	%rax, %r13
 549 0afd E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 549      00
 550 0b02 C57B1084 		vmovsd	224(%rsp), %xmm8
 550      24E00000 
 550      00
 551 0b0b 4C89EF   		movq	%r13, %rdi
 552 0b0e C57929C0 		vmovapd	%xmm8, %xmm0
 553 0b12 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 553      00
 554 0b17 BA040000 		movl	$4, %edx
 554      00
 555 0b1c BE000000 		movl	$.LC11, %esi
 555      00
 556 0b21 4889C7   		movq	%rax, %rdi
 557 0b24 4989C5   		movq	%rax, %r13
 558 0b27 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 558      00
 559 0b2c C5FB109C 		vmovsd	192(%rsp), %xmm3
GAS LISTING /tmp/ccoMFGZU.s 			page 20


 559      24C00000 
 559      00
 560 0b35 4C89EF   		movq	%r13, %rdi
 561 0b38 C5F928C3 		vmovapd	%xmm3, %xmm0
 562 0b3c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 562      00
 563 0b41 4989C5   		movq	%rax, %r13
 564 0b44 488B00   		movq	(%rax), %rax
 565 0b47 C5FD28A4 		vmovapd	160(%rsp), %ymm4
 565      24A00000 
 565      00
 566 0b50 C5FD2894 		vmovapd	128(%rsp), %ymm2
 566      24800000 
 566      00
 567 0b59 C5FD286C 		vmovapd	96(%rsp), %ymm5
 567      2460
 568 0b5f 488B40E8 		movq	-24(%rax), %rax
 569 0b63 C5FD284C 		vmovapd	64(%rsp), %ymm1
 569      2440
 570 0b69 C5FD287C 		vmovapd	32(%rsp), %ymm7
 570      2420
 571 0b6f C5FD2834 		vmovapd	(%rsp), %ymm6
 571      24
 572 0b74 498B9405 		movq	240(%r13,%rax), %rdx
 572      F0000000 
 573 0b7c 4885D2   		testq	%rdx, %rdx
 574 0b7f 0F842901 		je	.L30
 574      0000
 575 0b85 807A3800 		cmpb	$0, 56(%rdx)
 576 0b89 0F848B00 		je	.L24
 576      0000
 577 0b8f 0FB64243 		movzbl	67(%rdx), %eax
 578              	.L25:
 579 0b93 0FBEF0   		movsbl	%al, %esi
 580 0b96 4C89EF   		movq	%r13, %rdi
 581 0b99 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 581      24800000 
 581      00
 582 0ba2 C5FD29BC 		vmovapd	%ymm7, 160(%rsp)
 582      24A00000 
 582      00
 583 0bab C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 583      24C00000 
 583      00
 584 0bb4 C5FD29AC 		vmovapd	%ymm5, 224(%rsp)
 584      24E00000 
 584      00
 585 0bbd C5FD2994 		vmovapd	%ymm2, 256(%rsp)
 585      24000100 
 585      00
 586 0bc6 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 586      24200100 
 586      00
 587 0bcf C5F877   		vzeroupper
 588 0bd2 E8000000 		call	_ZNSo3putEc
 588      00
 589 0bd7 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/ccoMFGZU.s 			page 21


 590 0bda E8000000 		call	_ZNSo5flushEv
 590      00
 591 0bdf C5FD28B4 		vmovapd	128(%rsp), %ymm6
 591      24800000 
 591      00
 592 0be8 C5FD28BC 		vmovapd	160(%rsp), %ymm7
 592      24A00000 
 592      00
 593 0bf1 C5FD288C 		vmovapd	192(%rsp), %ymm1
 593      24C00000 
 593      00
 594 0bfa C5FD28AC 		vmovapd	224(%rsp), %ymm5
 594      24E00000 
 594      00
 595 0c03 C5FD2894 		vmovapd	256(%rsp), %ymm2
 595      24000100 
 595      00
 596 0c0c C5FD28A4 		vmovapd	288(%rsp), %ymm4
 596      24200100 
 596      00
 597 0c15 E941FDFF 		jmp	.L22
 597      FF
 598              	.L24:
 599 0c1a 4889D7   		movq	%rdx, %rdi
 600 0c1d C5FD2974 		vmovapd	%ymm6, 96(%rsp)
 600      2460
 601 0c23 48899424 		movq	%rdx, 288(%rsp)
 601      20010000 
 602 0c2b C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 602      24800000 
 602      00
 603 0c34 C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 603      24A00000 
 603      00
 604 0c3d C5FD29AC 		vmovapd	%ymm5, 192(%rsp)
 604      24C00000 
 604      00
 605 0c46 C5FD2994 		vmovapd	%ymm2, 224(%rsp)
 605      24E00000 
 605      00
 606 0c4f C5FD29A4 		vmovapd	%ymm4, 256(%rsp)
 606      24000100 
 606      00
 607 0c58 C5F877   		vzeroupper
 608 0c5b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 608      00
 609 0c60 488B9424 		movq	288(%rsp), %rdx
 609      20010000 
 610 0c68 BE0A0000 		movl	$10, %esi
 610      00
 611 0c6d 488B02   		movq	(%rdx), %rax
 612 0c70 4889D7   		movq	%rdx, %rdi
 613 0c73 FF5030   		call	*48(%rax)
 614 0c76 C5FD2874 		vmovapd	96(%rsp), %ymm6
 614      2460
 615 0c7c C5FD28BC 		vmovapd	128(%rsp), %ymm7
 615      24800000 
GAS LISTING /tmp/ccoMFGZU.s 			page 22


 615      00
 616 0c85 C5FD288C 		vmovapd	160(%rsp), %ymm1
 616      24A00000 
 616      00
 617 0c8e C5FD28AC 		vmovapd	192(%rsp), %ymm5
 617      24C00000 
 617      00
 618 0c97 C5FD2894 		vmovapd	224(%rsp), %ymm2
 618      24E00000 
 618      00
 619 0ca0 C5FD28A4 		vmovapd	256(%rsp), %ymm4
 619      24000100 
 619      00
 620 0ca9 E9E5FEFF 		jmp	.L25
 620      FF
 621              	.L30:
 622 0cae C5F877   		vzeroupper
 623 0cb1 E8000000 		call	_ZSt16__throw_bad_castv
 623      00
 624              		.cfi_endproc
 625              	.LFE4383:
 626              		.size	main, .-main
 627 0cb6 662E0F1F 		.p2align 4,,15
 627      84000000 
 627      0000
 628              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 629              	_GLOBAL__sub_I__Z8linspaceddi:
 630              	.LFB4596:
 631              		.cfi_startproc
 632 0cc0 4883EC08 		subq	$8, %rsp
 633              		.cfi_def_cfa_offset 16
 634 0cc4 BF000000 		movl	$_ZStL8__ioinit, %edi
 634      00
 635 0cc9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 635      00
 636 0cce BA000000 		movl	$__dso_handle, %edx
 636      00
 637 0cd3 BE000000 		movl	$_ZStL8__ioinit, %esi
 637      00
 638 0cd8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 638      00
 639 0cdd 4883C408 		addq	$8, %rsp
 640              		.cfi_def_cfa_offset 8
 641 0ce1 E9000000 		jmp	__cxa_atexit
 641      00
 642              		.cfi_endproc
 643              	.LFE4596:
 644              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 645              		.section	.init_array,"aw"
 646              		.align 8
 647 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 647      00000000 
 648              		.local	_ZStL8__ioinit
 649              		.comm	_ZStL8__ioinit,1,1
 650              		.section	.rodata.cst32,"aM",@progbits,32
 651              		.align 32
 652              	.LC0:
GAS LISTING /tmp/ccoMFGZU.s 			page 23


 653 0000 00000000 		.long	0
 654 0004 00002440 		.long	1076101120
 655 0008 00000000 		.long	0
 656 000c 00002440 		.long	1076101120
 657 0010 00000000 		.long	0
 658 0014 00002440 		.long	1076101120
 659 0018 00000000 		.long	0
 660 001c 00002440 		.long	1076101120
 661              		.section	.rodata.cst8,"aM",@progbits,8
 662              		.align 8
 663              	.LC1:
 664 0000 00000000 		.long	0
 665 0004 00003540 		.long	1077215232
 666              		.section	.rodata.cst32
 667              		.align 32
 668              	.LC3:
 669 0020 7B14AE47 		.long	1202590843
 670 0024 E17A743F 		.long	1064598241
 671 0028 7B14AE47 		.long	1202590843
 672 002c E17A743F 		.long	1064598241
 673 0030 7B14AE47 		.long	1202590843
 674 0034 E17A743F 		.long	1064598241
 675 0038 7B14AE47 		.long	1202590843
 676 003c E17A743F 		.long	1064598241
 677              		.align 32
 678              	.LC4:
 679 0040 55555555 		.long	1431655765
 680 0044 55550540 		.long	1074091349
 681 0048 55555555 		.long	1431655765
 682 004c 55550540 		.long	1074091349
 683 0050 55555555 		.long	1431655765
 684 0054 55550540 		.long	1074091349
 685 0058 55555555 		.long	1431655765
 686 005c 55550540 		.long	1074091349
 687              		.align 32
 688              	.LC5:
 689 0060 00000000 		.long	0
 690 0064 00000040 		.long	1073741824
 691 0068 00000000 		.long	0
 692 006c 00000040 		.long	1073741824
 693 0070 00000000 		.long	0
 694 0074 00000040 		.long	1073741824
 695 0078 00000000 		.long	0
 696 007c 00000040 		.long	1073741824
 697              		.align 32
 698              	.LC6:
 699 0080 7B14AE47 		.long	1202590843
 700 0084 E17A843F 		.long	1065646817
 701 0088 7B14AE47 		.long	1202590843
 702 008c E17A843F 		.long	1065646817
 703 0090 7B14AE47 		.long	1202590843
 704 0094 E17A843F 		.long	1065646817
 705 0098 7B14AE47 		.long	1202590843
 706 009c E17A843F 		.long	1065646817
 707              		.align 32
 708              	.LC7:
 709 00a0 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/ccoMFGZU.s 			page 24


 710 00a4 814E5B3F 		.long	1062948481
 711 00a8 4F1BE8B4 		.long	3035110223
 712 00ac 814E5B3F 		.long	1062948481
 713 00b0 4F1BE8B4 		.long	3035110223
 714 00b4 814E5B3F 		.long	1062948481
 715 00b8 4F1BE8B4 		.long	3035110223
 716 00bc 814E5B3F 		.long	1062948481
 717              		.hidden	__dso_handle
 718              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 719              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccoMFGZU.s 			page 25


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/ccoMFGZU.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccoMFGZU.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccoMFGZU.s:85     .text.startup:0000000000000000 main
     /tmp/ccoMFGZU.s:629    .text.startup:0000000000000cc0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccoMFGZU.s:652    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccoMFGZU.s:663    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccoMFGZU.s:668    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccoMFGZU.s:678    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccoMFGZU.s:688    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccoMFGZU.s:698    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccoMFGZU.s:708    .rodata.cst32:00000000000000a0 .LC7

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
