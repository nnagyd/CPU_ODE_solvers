GAS LISTING /tmp/ccwFkTOd.s 			page 1


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
GAS LISTING /tmp/ccwFkTOd.s 			page 2


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
  70              	.LC76:
  71 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  72              		.section	.rodata.str1.1,"aMS",@progbits,1
  73              	.LC77:
  74 0000 09207020 		.string	"\t p = "
  74      3D2000
  75              	.LC78:
  76 0007 09207800 		.string	"\t x"
  77              	.LC79:
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
  93 0001 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
  94 0005 BF809D00 		movl	$40320, %edi
  94      00
  95 000a 4889E5   		movq	%rsp, %rbp
GAS LISTING /tmp/ccwFkTOd.s 			page 3


  96              		.cfi_def_cfa_register 6
  97 000d 4156     		pushq	%r14
  98 000f 4155     		pushq	%r13
  99 0011 4154     		pushq	%r12
 100 0013 53       		pushq	%rbx
 101 0014 4883E4E0 		andq	$-32, %rsp
 102 0018 4881EC80 		subq	$2432, %rsp
 102      090000
 103              		.cfi_offset 14, -24
 104              		.cfi_offset 13, -32
 105              		.cfi_offset 12, -40
 106              		.cfi_offset 3, -48
 107 001f C5FD283D 		vmovapd	.LC1(%rip), %ymm7
 107      00000000 
 108 0027 C5FB100D 		vmovsd	.LC2(%rip), %xmm1
 108      00000000 
 109 002f C5FD29BC 		vmovapd	%ymm7, 512(%rsp)
 109      24000200 
 109      00
 110 0038 C5FD29BC 		vmovapd	%ymm7, 544(%rsp)
 110      24200200 
 110      00
 111 0041 C5FD29BC 		vmovapd	%ymm7, 576(%rsp)
 111      24400200 
 111      00
 112 004a C5FD29BC 		vmovapd	%ymm7, 608(%rsp)
 112      24600200 
 112      00
 113 0053 C5FD29BC 		vmovapd	%ymm7, 640(%rsp)
 113      24800200 
 113      00
 114 005c C5FD29BC 		vmovapd	%ymm7, 672(%rsp)
 114      24A00200 
 114      00
 115 0065 C5F877   		vzeroupper
 116 0068 4531E4   		xorl	%r12d, %r12d
 117 006b E8000000 		call	_Z8linspaceddi
 117      00
 118 0070 4989C5   		movq	%rax, %r13
 119 0073 E8000000 		call	clock
 119      00
 120 0078 C5F8280D 		vmovaps	.LC54(%rip), %xmm1
 120      00000000 
 121 0080 4889C3   		movq	%rax, %rbx
 122 0083 C5F828C1 		vmovaps	%xmm1, %xmm0
 123 0087 C57D282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 123      00000000 
 124 008f C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm7
 124      F901
 125 0095 C5FC293C 		vmovaps	%ymm7, (%rsp)
 125      24
 126 009a C5C5573D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 126      00000000 
 127 00a2 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 127      2420
 128 00a8 0F1F8400 		.p2align 4,,10
 128      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 4


 129              		.p2align 3
 130              	.L12:
 131 00b0 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 132 00b4 C4C17D28 		vmovapd	0(%r13), %ymm0
 132      4500
 133 00ba 4C8D8424 		leaq	2304(%rsp), %r8
 133      00090000 
 134 00c2 C5FD283D 		vmovapd	.LC0(%rip), %ymm7
 134      00000000 
 135 00ca 488DB424 		leaq	768(%rsp), %rsi
 135      00030000 
 136 00d2 C5FD2984 		vmovapd	%ymm0, 2368(%rsp)
 136      24400900 
 136      00
 137 00db C5FD2994 		vmovapd	%ymm2, 2240(%rsp)
 137      24C00800 
 137      00
 138 00e4 C5FD28DF 		vmovapd	%ymm7, %ymm3
 139 00e8 C5FD29BC 		vmovapd	%ymm7, 2304(%rsp)
 139      24000900 
 139      00
 140 00f1 C5FD2944 		vmovapd	%ymm0, 96(%rsp)
 140      2460
 141 00f7 C4C17D28 		vmovapd	32(%r13), %ymm1
 141      4D20
 142 00fd C5FD2994 		vmovapd	%ymm2, 2272(%rsp)
 142      24E00800 
 142      00
 143 0106 C5FD2894 		vmovapd	512(%rsp), %ymm2
 143      24000200 
 143      00
 144 010f C5FD298C 		vmovapd	%ymm1, 2400(%rsp)
 144      24600900 
 144      00
 145 0118 C5FD2994 		vmovapd	%ymm2, 2048(%rsp)
 145      24000800 
 145      00
 146 0121 C5FD2894 		vmovapd	544(%rsp), %ymm2
 146      24200200 
 146      00
 147 012a C5FD29BC 		vmovapd	%ymm7, 2336(%rsp)
 147      24200900 
 147      00
 148 0133 C5FD2994 		vmovapd	%ymm2, 2080(%rsp)
 148      24200800 
 148      00
 149 013c C5FD2894 		vmovapd	576(%rsp), %ymm2
 149      24400200 
 149      00
 150 0145 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 150      2440
 151 014b C5FD2994 		vmovapd	%ymm2, 2112(%rsp)
 151      24400800 
 151      00
 152 0154 C5FD2894 		vmovapd	608(%rsp), %ymm2
 152      24600200 
 152      00
GAS LISTING /tmp/ccwFkTOd.s 			page 5


 153 015d C5FD2994 		vmovapd	%ymm2, 2144(%rsp)
 153      24600800 
 153      00
 154 0166 C5FD2894 		vmovapd	640(%rsp), %ymm2
 154      24800200 
 154      00
 155 016f C5FD2994 		vmovapd	%ymm2, 2176(%rsp)
 155      24800800 
 155      00
 156 0178 C5FD2894 		vmovapd	672(%rsp), %ymm2
 156      24A00200 
 156      00
 157 0181 C5FD2994 		vmovapd	%ymm2, 2208(%rsp)
 157      24A00800 
 157      00
 158 018a C5FD28D7 		vmovapd	%ymm7, %ymm2
 159 018e 6690     		.p2align 4,,10
 160              		.p2align 3
 161              	.L28:
 162 0190 C5FD288C 		vmovapd	2048(%rsp), %ymm1
 162      24000800 
 162      00
 163 0199 488D9424 		leaq	704(%rsp), %rdx
 163      C0020000 
 164 01a1 31C9     		xorl	%ecx, %ecx
 165 01a3 C5FD28B4 		vmovapd	2080(%rsp), %ymm6
 165      24200800 
 165      00
 166 01ac C5F55964 		vmulpd	96(%rsp), %ymm1, %ymm4
 166      2460
 167 01b2 C5CD5CC1 		vsubpd	%ymm1, %ymm6, %ymm0
 168 01b6 C5FD28AC 		vmovapd	2112(%rsp), %ymm5
 168      24400800 
 168      00
 169 01bf C57D2825 		vmovapd	.LC4(%rip), %ymm12
 169      00000000 
 170 01c7 C5FD593D 		vmulpd	.LC1(%rip), %ymm0, %ymm7
 170      00000000 
 171 01cf C5DD5CE6 		vsubpd	%ymm6, %ymm4, %ymm4
 172 01d3 C5F559C5 		vmulpd	%ymm5, %ymm1, %ymm0
 173 01d7 C57D28F7 		vmovapd	%ymm7, %ymm14
 174 01db C5FD29BC 		vmovapd	%ymm7, 1280(%rsp)
 174      24000500 
 174      00
 175 01e4 C5DD5CF8 		vsubpd	%ymm0, %ymm4, %ymm7
 176 01e8 C5D55905 		vmulpd	.LC4(%rip), %ymm5, %ymm0
 176      00000000 
 177 01f0 C57D29B4 		vmovapd	%ymm14, 384(%rsp)
 177      24800100 
 177      00
 178 01f9 C5F559E6 		vmulpd	%ymm6, %ymm1, %ymm4
 179 01fd C57D28FF 		vmovapd	%ymm7, %ymm15
 180 0201 C5FD29BC 		vmovapd	%ymm7, 1312(%rsp)
 180      24200500 
 180      00
 181 020a C5DD5CF8 		vsubpd	%ymm0, %ymm4, %ymm7
 182 020e C5FD2884 		vmovapd	2144(%rsp), %ymm0
GAS LISTING /tmp/ccwFkTOd.s 			page 6


 182      24600800 
 182      00
 183 0217 C5FD28A4 		vmovapd	2176(%rsp), %ymm4
 183      24800800 
 183      00
 184 0220 C57D5944 		vmulpd	64(%rsp), %ymm0, %ymm8
 184      2440
 185 0226 C57D29BC 		vmovapd	%ymm15, 352(%rsp)
 185      24600100 
 185      00
 186 022f C57D28DF 		vmovapd	%ymm7, %ymm11
 187 0233 C5FD29BC 		vmovapd	%ymm7, 1344(%rsp)
 187      24400500 
 187      00
 188 023c C5DD5CF8 		vsubpd	%ymm0, %ymm4, %ymm7
 189 0240 C5055915 		vmulpd	.LC5(%rip), %ymm15, %ymm10
 189      00000000 
 190 0248 C57D299C 		vmovapd	%ymm11, 320(%rsp)
 190      24400100 
 190      00
 191 0251 C53D5CC4 		vsubpd	%ymm4, %ymm8, %ymm8
 192 0255 C5C5593D 		vmulpd	.LC1(%rip), %ymm7, %ymm7
 192      00000000 
 193 025d C4416D59 		vmulpd	%ymm10, %ymm2, %ymm10
 193      D2
 194 0262 C57D28CF 		vmovapd	%ymm7, %ymm9
 195 0266 C5FD29BC 		vmovapd	%ymm7, 1376(%rsp)
 195      24600500 
 195      00
 196 026f C5FD59BC 		vmulpd	2208(%rsp), %ymm0, %ymm7
 196      24A00800 
 196      00
 197 0278 C4414D58 		vaddpd	%ymm10, %ymm6, %ymm10
 197      D2
 198 027d C57D298C 		vmovapd	%ymm9, 288(%rsp)
 198      24200100 
 198      00
 199 0286 C5BD5CFF 		vsubpd	%ymm7, %ymm8, %ymm7
 200 028a C57D59C4 		vmulpd	%ymm4, %ymm0, %ymm8
 201 028e C5FD29BC 		vmovapd	%ymm7, 448(%rsp)
 201      24C00100 
 201      00
 202 0297 C5FD29BC 		vmovapd	%ymm7, 1408(%rsp)
 202      24800500 
 202      00
 203 02a0 C59D59BC 		vmulpd	2208(%rsp), %ymm12, %ymm7
 203      24A00800 
 203      00
 204 02a9 C57D28BC 		vmovapd	448(%rsp), %ymm15
 204      24C00100 
 204      00
 205 02b2 C53D5CE7 		vsubpd	%ymm7, %ymm8, %ymm12
 206 02b6 C50D5905 		vmulpd	.LC5(%rip), %ymm14, %ymm8
 206      00000000 
 207 02be C5B5593D 		vmulpd	.LC5(%rip), %ymm9, %ymm7
 207      00000000 
 208 02c6 C57D29A4 		vmovapd	%ymm12, 416(%rsp)
GAS LISTING /tmp/ccwFkTOd.s 			page 7


 208      24A00100 
 208      00
 209 02cf C505590D 		vmulpd	.LC5(%rip), %ymm15, %ymm9
 209      00000000 
 210 02d7 C57D29A4 		vmovapd	%ymm12, 1440(%rsp)
 210      24A00500 
 210      00
 211 02e0 C57D28B4 		vmovapd	416(%rsp), %ymm14
 211      24A00100 
 211      00
 212 02e9 C4416D59 		vmulpd	%ymm8, %ymm2, %ymm8
 212      C0
 213 02ee C5255925 		vmulpd	.LC5(%rip), %ymm11, %ymm12
 213      00000000 
 214 02f6 C50D591D 		vmulpd	.LC5(%rip), %ymm14, %ymm11
 214      00000000 
 215 02fe C4417558 		vaddpd	%ymm8, %ymm1, %ymm8
 215      C0
 216 0303 C5E559FF 		vmulpd	%ymm7, %ymm3, %ymm7
 217 0307 C4416559 		vmulpd	%ymm9, %ymm3, %ymm9
 217      C9
 218 030c C4412D5C 		vsubpd	%ymm8, %ymm10, %ymm14
 218      F0
 219 0311 C4416D59 		vmulpd	%ymm12, %ymm2, %ymm12
 219      E4
 220 0316 C5FD58FF 		vaddpd	%ymm7, %ymm0, %ymm7
 221 031a C4416559 		vmulpd	%ymm11, %ymm3, %ymm11
 221      DB
 222 031f C4415D58 		vaddpd	%ymm9, %ymm4, %ymm9
 222      C9
 223 0324 C50D593D 		vmulpd	.LC1(%rip), %ymm14, %ymm15
 223      00000000 
 224 032c C4415558 		vaddpd	%ymm12, %ymm5, %ymm12
 224      E4
 225 0331 C525589C 		vaddpd	2208(%rsp), %ymm11, %ymm11
 225      24A00800 
 225      00
 226 033a C4413D59 		vmulpd	%ymm12, %ymm8, %ymm14
 226      F4
 227 033f C57D29BC 		vmovapd	%ymm15, 256(%rsp)
 227      24000100 
 227      00
 228 0348 C51D5925 		vmulpd	.LC4(%rip), %ymm12, %ymm12
 228      00000000 
 229 0350 C57D29BC 		vmovapd	%ymm15, 704(%rsp)
 229      24C00200 
 229      00
 230 0359 C53D597C 		vmulpd	96(%rsp), %ymm8, %ymm15
 230      2460
 231 035f C4413D59 		vmulpd	%ymm10, %ymm8, %ymm8
 231      C2
 232 0364 C4413D5C 		vsubpd	%ymm12, %ymm8, %ymm8
 232      C4
 233 0369 C441055C 		vsubpd	%ymm10, %ymm15, %ymm15
 233      FA
 234 036e C57D2984 		vmovapd	%ymm8, 192(%rsp)
 234      24C00000 
GAS LISTING /tmp/ccwFkTOd.s 			page 8


 234      00
 235 0377 C57D2984 		vmovapd	%ymm8, 768(%rsp)
 235      24000300 
 235      00
 236 0380 C5355CC7 		vsubpd	%ymm7, %ymm9, %ymm8
 237 0384 C441055C 		vsubpd	%ymm14, %ymm15, %ymm14
 237      F6
 238 0389 C53D5915 		vmulpd	.LC1(%rip), %ymm8, %ymm10
 238      00000000 
 239 0391 C4414559 		vmulpd	%ymm11, %ymm7, %ymm8
 239      C3
 240 0396 C57D29B4 		vmovapd	%ymm14, 224(%rsp)
 240      24E00000 
 240      00
 241 039f C57D29B4 		vmovapd	%ymm14, 736(%rsp)
 241      24E00200 
 241      00
 242 03a8 C57D28B4 		vmovapd	384(%rsp), %ymm14
 242      24800100 
 242      00
 243 03b1 C525591D 		vmulpd	.LC4(%rip), %ymm11, %ymm11
 243      00000000 
 244 03b9 C57D2994 		vmovapd	%ymm10, 160(%rsp)
 244      24A00000 
 244      00
 245 03c2 C57D2994 		vmovapd	%ymm10, 800(%rsp)
 245      24200300 
 245      00
 246 03cb C5455954 		vmulpd	64(%rsp), %ymm7, %ymm10
 246      2440
 247 03d1 C4C14559 		vmulpd	%ymm9, %ymm7, %ymm7
 247      F9
 248 03d6 C4412D5C 		vsubpd	%ymm9, %ymm10, %ymm10
 248      D1
 249 03db C57D288C 		vmovapd	288(%rsp), %ymm9
 249      24200100 
 249      00
 250 03e4 C441455C 		vsubpd	%ymm11, %ymm7, %ymm12
 250      E3
 251 03e9 C57D289C 		vmovapd	320(%rsp), %ymm11
 251      24400100 
 251      00
 252 03f2 C4412D5C 		vsubpd	%ymm8, %ymm10, %ymm15
 252      F8
 253 03f7 C57D2894 		vmovapd	256(%rsp), %ymm10
 253      24000100 
 253      00
 254 0400 C50D5905 		vmulpd	.LC7(%rip), %ymm14, %ymm8
 254      00000000 
 255 0408 C57D29A4 		vmovapd	%ymm12, 128(%rsp)
 255      24800000 
 255      00
 256 0411 C5AD593D 		vmulpd	.LC6(%rip), %ymm10, %ymm7
 256      00000000 
 257 0419 C57D29A4 		vmovapd	%ymm12, 864(%rsp)
 257      24600300 
 257      00
GAS LISTING /tmp/ccwFkTOd.s 			page 9


 258 0422 C57D28A4 		vmovapd	352(%rsp), %ymm12
 258      24600100 
 258      00
 259 042b C57D2894 		vmovapd	416(%rsp), %ymm10
 259      24A00100 
 259      00
 260 0434 C57D29BC 		vmovapd	%ymm15, 832(%rsp)
 260      24400300 
 260      00
 261 043d C5BD58FF 		vaddpd	%ymm7, %ymm8, %ymm7
 262 0441 C51D5905 		vmulpd	.LC7(%rip), %ymm12, %ymm8
 262      00000000 
 263 0449 C5ED59FF 		vmulpd	%ymm7, %ymm2, %ymm7
 264 044d C5F558FF 		vaddpd	%ymm7, %ymm1, %ymm7
 265 0451 C5FD288C 		vmovapd	224(%rsp), %ymm1
 265      24E00000 
 265      00
 266 045a C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 266      00000000 
 267 0462 C5BD58C9 		vaddpd	%ymm1, %ymm8, %ymm1
 268 0466 C57D2884 		vmovapd	192(%rsp), %ymm8
 268      24C00000 
 268      00
 269 046f C5ED59C9 		vmulpd	%ymm1, %ymm2, %ymm1
 270 0473 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 271 0477 C5BD590D 		vmulpd	.LC6(%rip), %ymm8, %ymm1
 271      00000000 
 272 047f C5255905 		vmulpd	.LC7(%rip), %ymm11, %ymm8
 272      00000000 
 273 0487 C5BD58C9 		vaddpd	%ymm1, %ymm8, %ymm1
 274 048b C5ED59C9 		vmulpd	%ymm1, %ymm2, %ymm1
 275 048f C5FD2894 		vmovapd	160(%rsp), %ymm2
 275      24A00000 
 275      00
 276 0498 C5D558E9 		vaddpd	%ymm1, %ymm5, %ymm5
 277 049c C5ED590D 		vmulpd	.LC6(%rip), %ymm2, %ymm1
 277      00000000 
 278 04a4 C5B55915 		vmulpd	.LC7(%rip), %ymm9, %ymm2
 278      00000000 
 279 04ac C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 280 04b0 C5FD2894 		vmovapd	448(%rsp), %ymm2
 280      24C00100 
 280      00
 281 04b9 C5ED5915 		vmulpd	.LC7(%rip), %ymm2, %ymm2
 281      00000000 
 282 04c1 C5E559C9 		vmulpd	%ymm1, %ymm3, %ymm1
 283 04c5 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 284 04c9 C585590D 		vmulpd	.LC6(%rip), %ymm15, %ymm1
 284      00000000 
 285 04d1 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 286 04d5 C5AD5915 		vmulpd	.LC7(%rip), %ymm10, %ymm2
 286      00000000 
 287 04dd C54D5CD7 		vsubpd	%ymm7, %ymm6, %ymm10
 288 04e1 C5E559C9 		vmulpd	%ymm1, %ymm3, %ymm1
 289 04e5 C52D5915 		vmulpd	.LC1(%rip), %ymm10, %ymm10
 289      00000000 
 290 04ed C5DD58E1 		vaddpd	%ymm1, %ymm4, %ymm4
GAS LISTING /tmp/ccwFkTOd.s 			page 10


 291 04f1 C5FD288C 		vmovapd	128(%rsp), %ymm1
 291      24800000 
 291      00
 292 04fa C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 292      00000000 
 293 0502 C55D5CC8 		vsubpd	%ymm0, %ymm4, %ymm9
 294 0506 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 295 050a C5E559D9 		vmulpd	%ymm1, %ymm3, %ymm3
 296 050e C5C559CD 		vmulpd	%ymm5, %ymm7, %ymm1
 297 0512 C5E5589C 		vaddpd	2208(%rsp), %ymm3, %ymm3
 297      24A00800 
 297      00
 298 051b C57D2994 		vmovapd	%ymm10, 1472(%rsp)
 298      24C00500 
 298      00
 299 0524 C5455944 		vmulpd	96(%rsp), %ymm7, %ymm8
 299      2460
 300 052a C5D5592D 		vmulpd	.LC4(%rip), %ymm5, %ymm5
 300      00000000 
 301 0532 C535590D 		vmulpd	.LC1(%rip), %ymm9, %ymm9
 301      00000000 
 302 053a C5FD59D3 		vmulpd	%ymm3, %ymm0, %ymm2
 303 053e C53D5CC6 		vsubpd	%ymm6, %ymm8, %ymm8
 304 0542 C5E5591D 		vmulpd	.LC4(%rip), %ymm3, %ymm3
 304      00000000 
 305 054a C57D298C 		vmovapd	%ymm9, 1568(%rsp)
 305      24200600 
 305      00
 306 0553 C53D5CC1 		vsubpd	%ymm1, %ymm8, %ymm8
 307 0557 C5C559CE 		vmulpd	%ymm6, %ymm7, %ymm1
 308 055b C5FD28B4 		vmovapd	192(%rsp), %ymm6
 308      24C00000 
 308      00
 309 0564 C5FD597C 		vmulpd	64(%rsp), %ymm0, %ymm7
 309      2440
 310 056a C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 311 056e C5F55CCD 		vsubpd	%ymm5, %ymm1, %ymm1
 312 0572 C57D2984 		vmovapd	%ymm8, 1504(%rsp)
 312      24E00500 
 312      00
 313 057b C5FD5CEB 		vsubpd	%ymm3, %ymm0, %ymm5
 314 057f C58D591D 		vmulpd	.LC10(%rip), %ymm14, %ymm3
 314      00000000 
 315 0587 C5FD298C 		vmovapd	%ymm1, 1536(%rsp)
 315      24000600 
 315      00
 316 0590 C5C55CFC 		vsubpd	%ymm4, %ymm7, %ymm7
 317 0594 C5FD28A4 		vmovapd	224(%rsp), %ymm4
 317      24E00000 
 317      00
 318 059d C57D28B4 		vmovapd	416(%rsp), %ymm14
 318      24A00100 
 318      00
 319 05a6 C5AD5905 		vmulpd	.LC8(%rip), %ymm10, %ymm0
 319      00000000 
 320 05ae C5FD296C 		vmovapd	%ymm5, 96(%rsp)
 320      2460
GAS LISTING /tmp/ccwFkTOd.s 			page 11


 321 05b4 C5FD29AC 		vmovapd	%ymm5, 1632(%rsp)
 321      24600600 
 321      00
 322 05bd C5FD28AC 		vmovapd	256(%rsp), %ymm5
 322      24000100 
 322      00
 323 05c6 C5C55CFA 		vsubpd	%ymm2, %ymm7, %ymm7
 324 05ca C5D55915 		vmulpd	.LC9(%rip), %ymm5, %ymm2
 324      00000000 
 325 05d2 C5A5592D 		vmulpd	.LC10(%rip), %ymm11, %ymm5
 325      00000000 
 326 05da C5FD29BC 		vmovapd	%ymm7, 1600(%rsp)
 326      24400600 
 326      00
 327 05e3 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 328 05e7 C5DD591D 		vmulpd	.LC9(%rip), %ymm4, %ymm3
 328      00000000 
 329 05ef C59D5925 		vmulpd	.LC10(%rip), %ymm12, %ymm4
 329      00000000 
 330 05f7 C57D28A4 		vmovapd	448(%rsp), %ymm12
 330      24C00100 
 330      00
 331 0600 C5ED58D0 		vaddpd	%ymm0, %ymm2, %ymm2
 332 0604 C5BD5905 		vmulpd	.LC8(%rip), %ymm8, %ymm0
 332      00000000 
 333 060c C51D591D 		vmulpd	.LC10(%rip), %ymm12, %ymm11
 333      00000000 
 334 0614 C57D28A4 		vmovapd	128(%rsp), %ymm12
 334      24800000 
 334      00
 335 061d C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 336 0621 C5ED5994 		vmulpd	2304(%rsp), %ymm2, %ymm2
 336      24000900 
 336      00
 337 062a C5E558E0 		vaddpd	%ymm0, %ymm3, %ymm4
 338 062e C5CD591D 		vmulpd	.LC9(%rip), %ymm6, %ymm3
 338      00000000 
 339 0636 C5FD28B4 		vmovapd	288(%rsp), %ymm6
 339      24200100 
 339      00
 340 063f C5F55905 		vmulpd	.LC8(%rip), %ymm1, %ymm0
 340      00000000 
 341 0647 C5ED5894 		vaddpd	2048(%rsp), %ymm2, %ymm2
 341      24000800 
 341      00
 342 0650 C5CD5935 		vmulpd	.LC10(%rip), %ymm6, %ymm6
 342      00000000 
 343 0658 C5DD59A4 		vmulpd	2304(%rsp), %ymm4, %ymm4
 343      24000900 
 343      00
 344 0661 C5D558DB 		vaddpd	%ymm3, %ymm5, %ymm3
 345 0665 C5E558E8 		vaddpd	%ymm0, %ymm3, %ymm5
 346 0669 C5FD289C 		vmovapd	160(%rsp), %ymm3
 346      24A00000 
 346      00
 347 0672 C5B55905 		vmulpd	.LC8(%rip), %ymm9, %ymm0
 347      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 12


 348 067a C5DD58A4 		vaddpd	2080(%rsp), %ymm4, %ymm4
 348      24200800 
 348      00
 349 0683 C5E5591D 		vmulpd	.LC9(%rip), %ymm3, %ymm3
 349      00000000 
 350 068b C5D559AC 		vmulpd	2304(%rsp), %ymm5, %ymm5
 350      24000900 
 350      00
 351 0694 C5CD58DB 		vaddpd	%ymm3, %ymm6, %ymm3
 352 0698 C5855935 		vmulpd	.LC9(%rip), %ymm15, %ymm6
 352      00000000 
 353 06a0 C5D558AC 		vaddpd	2112(%rsp), %ymm5, %ymm5
 353      24400800 
 353      00
 354 06a9 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 355 06ad C5C5591D 		vmulpd	.LC8(%rip), %ymm7, %ymm3
 355      00000000 
 356 06b5 C5A558F6 		vaddpd	%ymm6, %ymm11, %ymm6
 357 06b9 C51D591D 		vmulpd	.LC9(%rip), %ymm12, %ymm11
 357      00000000 
 358 06c1 C50D5925 		vmulpd	.LC10(%rip), %ymm14, %ymm12
 358      00000000 
 359 06c9 C5CD58DB 		vaddpd	%ymm3, %ymm6, %ymm3
 360 06cd C5FD2874 		vmovapd	96(%rsp), %ymm6
 360      2460
 361 06d3 C5FD5984 		vmulpd	2336(%rsp), %ymm0, %ymm0
 361      24200900 
 361      00
 362 06dc C5CD5935 		vmulpd	.LC8(%rip), %ymm6, %ymm6
 362      00000000 
 363 06e4 C4411D58 		vaddpd	%ymm11, %ymm12, %ymm11
 363      DB
 364 06e9 C5E5599C 		vmulpd	2336(%rsp), %ymm3, %ymm3
 364      24200900 
 364      00
 365 06f2 C5FD5884 		vaddpd	2144(%rsp), %ymm0, %ymm0
 365      24600800 
 365      00
 366 06fb C56D59F5 		vmulpd	%ymm5, %ymm2, %ymm14
 367 06ff C52558E6 		vaddpd	%ymm6, %ymm11, %ymm12
 368 0703 C55D5CDA 		vsubpd	%ymm2, %ymm4, %ymm11
 369 0707 C5E5589C 		vaddpd	2176(%rsp), %ymm3, %ymm3
 369      24800800 
 369      00
 370 0710 C51D59A4 		vmulpd	2336(%rsp), %ymm12, %ymm12
 370      24200900 
 370      00
 371 0719 C525591D 		vmulpd	.LC1(%rip), %ymm11, %ymm11
 371      00000000 
 372 0721 C51D58A4 		vaddpd	2208(%rsp), %ymm12, %ymm12
 372      24A00800 
 372      00
 373 072a C57D299C 		vmovapd	%ymm11, 1664(%rsp)
 373      24800600 
 373      00
 374 0733 C5ED59B4 		vmulpd	2368(%rsp), %ymm2, %ymm6
 374      24400900 
GAS LISTING /tmp/ccwFkTOd.s 			page 13


 374      00
 375 073c C5ED59D4 		vmulpd	%ymm4, %ymm2, %ymm2
 376 0740 C5D5592D 		vmulpd	.LC4(%rip), %ymm5, %ymm5
 376      00000000 
 377 0748 C52D5915 		vmulpd	.LC12(%rip), %ymm10, %ymm10
 377      00000000 
 378 0750 C5CD5CF4 		vsubpd	%ymm4, %ymm6, %ymm6
 379 0754 C4C17D59 		vmulpd	%ymm12, %ymm0, %ymm4
 379      E4
 380 0759 C51D5925 		vmulpd	.LC4(%rip), %ymm12, %ymm12
 380      00000000 
 381 0761 C5ED5CD5 		vsubpd	%ymm5, %ymm2, %ymm2
 382 0765 C525591D 		vmulpd	.LC11(%rip), %ymm11, %ymm11
 382      00000000 
 383 076d C4C14D5C 		vsubpd	%ymm14, %ymm6, %ymm6
 383      F6
 384 0772 C57D59B4 		vmulpd	2400(%rsp), %ymm0, %ymm14
 384      24600900 
 384      00
 385 077b C5E55CE8 		vsubpd	%ymm0, %ymm3, %ymm5
 386 077f C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 387 0783 C5FD2994 		vmovapd	%ymm2, 1728(%rsp)
 387      24C00600 
 387      00
 388 078c C5FD29B4 		vmovapd	%ymm6, 1696(%rsp)
 388      24A00600 
 388      00
 389 0795 C53D5905 		vmulpd	.LC12(%rip), %ymm8, %ymm8
 389      00000000 
 390 079d C50D5CF3 		vsubpd	%ymm3, %ymm14, %ymm14
 391 07a1 C5CD5935 		vmulpd	.LC11(%rip), %ymm6, %ymm6
 391      00000000 
 392 07a9 C4417D5C 		vsubpd	%ymm12, %ymm0, %ymm12
 392      E4
 393 07ae C5FD2884 		vmovapd	256(%rsp), %ymm0
 393      24000100 
 393      00
 394 07b7 C5F5590D 		vmulpd	.LC12(%rip), %ymm1, %ymm1
 394      00000000 
 395 07bf C58D5CE4 		vsubpd	%ymm4, %ymm14, %ymm4
 396 07c3 C57D28B4 		vmovapd	384(%rsp), %ymm14
 396      24800100 
 396      00
 397 07cc C5FD5905 		vmulpd	.LC13(%rip), %ymm0, %ymm0
 397      00000000 
 398 07d4 C57D29A4 		vmovapd	%ymm12, 1824(%rsp)
 398      24200700 
 398      00
 399 07dd C58D591D 		vmulpd	.LC14(%rip), %ymm14, %ymm3
 399      00000000 
 400 07e5 C5ED5915 		vmulpd	.LC11(%rip), %ymm2, %ymm2
 400      00000000 
 401 07ed C5FD29A4 		vmovapd	%ymm4, 1792(%rsp)
 401      24000700 
 401      00
 402 07f6 C5D5592D 		vmulpd	.LC1(%rip), %ymm5, %ymm5
 402      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 14


 403 07fe C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 404 0802 C5FD289C 		vmovapd	352(%rsp), %ymm3
 404      24600100 
 404      00
 405 080b C5E5591D 		vmulpd	.LC14(%rip), %ymm3, %ymm3
 405      00000000 
 406 0813 C4417D58 		vaddpd	%ymm10, %ymm0, %ymm10
 406      D2
 407 0818 C5FD29AC 		vmovapd	%ymm5, 1760(%rsp)
 407      24E00600 
 407      00
 408 0821 C4C12D58 		vaddpd	%ymm11, %ymm10, %ymm0
 408      C3
 409 0826 C57D2894 		vmovapd	224(%rsp), %ymm10
 409      24E00000 
 409      00
 410 082f C57D289C 		vmovapd	320(%rsp), %ymm11
 410      24400100 
 410      00
 411 0838 C52D5935 		vmulpd	.LC13(%rip), %ymm10, %ymm14
 411      00000000 
 412 0840 C5FD5984 		vmulpd	2304(%rsp), %ymm0, %ymm0
 412      24000900 
 412      00
 413 0849 C4416558 		vaddpd	%ymm14, %ymm3, %ymm14
 413      F6
 414 084e C5A5591D 		vmulpd	.LC14(%rip), %ymm11, %ymm3
 414      00000000 
 415 0856 C5FD5884 		vaddpd	2048(%rsp), %ymm0, %ymm0
 415      24000800 
 415      00
 416 085f C4410D58 		vaddpd	%ymm8, %ymm14, %ymm8
 416      C0
 417 0864 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 418 0868 C57D2884 		vmovapd	192(%rsp), %ymm8
 418      24C00000 
 418      00
 419 0871 C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 419      24400700 
 419      00
 420 087a C53D5905 		vmulpd	.LC13(%rip), %ymm8, %ymm8
 420      00000000 
 421 0882 C5CD59B4 		vmulpd	2304(%rsp), %ymm6, %ymm6
 421      24000900 
 421      00
 422 088b C4416558 		vaddpd	%ymm8, %ymm3, %ymm8
 422      C0
 423 0890 C5CD58B4 		vaddpd	2080(%rsp), %ymm6, %ymm6
 423      24200800 
 423      00
 424 0899 C5BD58C9 		vaddpd	%ymm1, %ymm8, %ymm1
 425 089d C5F558CA 		vaddpd	%ymm2, %ymm1, %ymm1
 426 08a1 C5FD29B4 		vmovapd	%ymm6, 1888(%rsp)
 426      24600700 
 426      00
 427 08aa C5F5598C 		vmulpd	2304(%rsp), %ymm1, %ymm1
 427      24000900 
GAS LISTING /tmp/ccwFkTOd.s 			page 15


 427      00
 428 08b3 C5F5588C 		vaddpd	2112(%rsp), %ymm1, %ymm1
 428      24400800 
 428      00
 429 08bc C5FD298C 		vmovapd	%ymm1, 1920(%rsp)
 429      24800700 
 429      00
 430 08c5 C5055915 		vmulpd	.LC13(%rip), %ymm15, %ymm10
 430      00000000 
 431 08cd C57D289C 		vmovapd	160(%rsp), %ymm11
 431      24A00000 
 431      00
 432 08d6 C5FD289C 		vmovapd	288(%rsp), %ymm3
 432      24200100 
 432      00
 433 08df C5255905 		vmulpd	.LC13(%rip), %ymm11, %ymm8
 433      00000000 
 434 08e7 C57D28B4 		vmovapd	416(%rsp), %ymm14
 434      24A00100 
 434      00
 435 08f0 C5E55915 		vmulpd	.LC14(%rip), %ymm3, %ymm2
 435      00000000 
 436 08f8 C5C5593D 		vmulpd	.LC12(%rip), %ymm7, %ymm7
 436      00000000 
 437 0900 C5DD5925 		vmulpd	.LC11(%rip), %ymm4, %ymm4
 437      00000000 
 438 0908 C535590D 		vmulpd	.LC12(%rip), %ymm9, %ymm9
 438      00000000 
 439 0910 C4416D58 		vaddpd	%ymm8, %ymm2, %ymm8
 439      C0
 440 0915 C5FD2894 		vmovapd	448(%rsp), %ymm2
 440      24C00100 
 440      00
 441 091e C5D5592D 		vmulpd	.LC11(%rip), %ymm5, %ymm5
 441      00000000 
 442 0926 C5ED5915 		vmulpd	.LC14(%rip), %ymm2, %ymm2
 442      00000000 
 443 092e C58D591D 		vmulpd	.LC14(%rip), %ymm14, %ymm3
 443      00000000 
 444 0936 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm9
 444      C9
 445 093b C51D5925 		vmulpd	.LC11(%rip), %ymm12, %ymm12
 445      00000000 
 446 0943 C4C16D58 		vaddpd	%ymm10, %ymm2, %ymm2
 446      D2
 447 0948 C5B558ED 		vaddpd	%ymm5, %ymm9, %ymm5
 448 094c C5ED58D7 		vaddpd	%ymm7, %ymm2, %ymm2
 449 0950 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 449      24800000 
 449      00
 450 0959 C545591D 		vmulpd	.LC13(%rip), %ymm7, %ymm11
 450      00000000 
 451 0961 C5D559AC 		vmulpd	2336(%rsp), %ymm5, %ymm5
 451      24200900 
 451      00
 452 096a C5ED58D4 		vaddpd	%ymm4, %ymm2, %ymm2
 453 096e C5FD2864 		vmovapd	96(%rsp), %ymm4
GAS LISTING /tmp/ccwFkTOd.s 			page 16


 453      2460
 454 0974 C5FD59F9 		vmulpd	%ymm1, %ymm0, %ymm7
 455 0978 C55D593D 		vmulpd	.LC12(%rip), %ymm4, %ymm15
 455      00000000 
 456 0980 C5CD5CE0 		vsubpd	%ymm0, %ymm6, %ymm4
 457 0984 C5ED5994 		vmulpd	2336(%rsp), %ymm2, %ymm2
 457      24200900 
 457      00
 458 098d C4C16558 		vaddpd	%ymm11, %ymm3, %ymm3
 458      DB
 459 0992 C5F5590D 		vmulpd	.LC4(%rip), %ymm1, %ymm1
 459      00000000 
 460 099a C5D558AC 		vaddpd	2144(%rsp), %ymm5, %ymm5
 460      24600800 
 460      00
 461 09a3 C5DD5925 		vmulpd	.LC1(%rip), %ymm4, %ymm4
 461      00000000 
 462 09ab C4C16558 		vaddpd	%ymm15, %ymm3, %ymm3
 462      DF
 463 09b0 C5ED5894 		vaddpd	2176(%rsp), %ymm2, %ymm2
 463      24800800 
 463      00
 464 09b9 C5FD29AC 		vmovapd	%ymm5, 1952(%rsp)
 464      24A00700 
 464      00
 465 09c2 C5FD29A4 		vmovapd	%ymm4, 1088(%rsp)
 465      24400400 
 465      00
 466 09cb C5FD59A4 		vmulpd	2368(%rsp), %ymm0, %ymm4
 466      24400900 
 466      00
 467 09d4 C4C16558 		vaddpd	%ymm12, %ymm3, %ymm3
 467      DC
 468 09d9 C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 469 09dd C5FD2994 		vmovapd	%ymm2, 1984(%rsp)
 469      24C00700 
 469      00
 470 09e6 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 471 09ea C5E5599C 		vmulpd	2336(%rsp), %ymm3, %ymm3
 471      24200900 
 471      00
 472 09f3 C5DD5CE6 		vsubpd	%ymm6, %ymm4, %ymm4
 473 09f7 C5FD2984 		vmovapd	%ymm0, 1152(%rsp)
 473      24800400 
 473      00
 474 0a00 C5ED5CC5 		vsubpd	%ymm5, %ymm2, %ymm0
 475 0a04 C5DD5CE7 		vsubpd	%ymm7, %ymm4, %ymm4
 476 0a08 C5E5589C 		vaddpd	2208(%rsp), %ymm3, %ymm3
 476      24A00800 
 476      00
 477 0a11 C5FD5905 		vmulpd	.LC1(%rip), %ymm0, %ymm0
 477      00000000 
 478 0a19 C5FD29A4 		vmovapd	%ymm4, 1120(%rsp)
 478      24600400 
 478      00
 479 0a22 C5FD299C 		vmovapd	%ymm3, 2016(%rsp)
 479      24E00700 
GAS LISTING /tmp/ccwFkTOd.s 			page 17


 479      00
 480 0a2b C5D559CB 		vmulpd	%ymm3, %ymm5, %ymm1
 481 0a2f C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 481      24A00400 
 481      00
 482 0a38 C5D55984 		vmulpd	2400(%rsp), %ymm5, %ymm0
 482      24600900 
 482      00
 483 0a41 C5E5591D 		vmulpd	.LC4(%rip), %ymm3, %ymm3
 483      00000000 
 484 0a49 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 485 0a4d C5D559D2 		vmulpd	%ymm2, %ymm5, %ymm2
 486 0a51 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 487 0a55 C5ED5CD3 		vsubpd	%ymm3, %ymm2, %ymm2
 488 0a59 C5FD2984 		vmovapd	%ymm0, 1216(%rsp)
 488      24C00400 
 488      00
 489 0a62 C5FD2994 		vmovapd	%ymm2, 1248(%rsp)
 489      24E00400 
 489      00
 490              	.L14:
 491 0a6b C5FD2835 		vmovapd	.LC15(%rip), %ymm6
 491      00000000 
 492 0a73 4A8D0401 		leaq	(%rcx,%r8), %rax
 493 0a77 4883C120 		addq	$32, %rcx
 494 0a7b C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 494      00000000 
 495 0a83 4883C260 		addq	$96, %rdx
 496 0a87 C5CD598A 		vmulpd	288(%rdx), %ymm6, %ymm1
 496      20010000 
 497 0a8f C5FD2835 		vmovapd	.LC16(%rip), %ymm6
 497      00000000 
 498 0a97 C5D5599A 		vmulpd	672(%rdx), %ymm5, %ymm3
 498      A0020000 
 499 0a9f C5FD282D 		vmovapd	.LC19(%rip), %ymm5
 499      00000000 
 500 0aa7 C5CD5992 		vmulpd	864(%rdx), %ymm6, %ymm2
 500      60030000 
 501 0aaf C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 501      00000000 
 502 0ab7 C5D559A2 		vmulpd	480(%rdx), %ymm5, %ymm4
 502      E0010000 
 503 0abf C5FD282D 		vmovapd	.LC16(%rip), %ymm5
 503      00000000 
 504 0ac7 C5CD5942 		vmulpd	-96(%rdx), %ymm6, %ymm0
 504      A0
 505 0acc C5FD2835 		vmovapd	.LC15(%rip), %ymm6
 505      00000000 
 506 0ad4 C5FD283D 		vmovapd	.LC16(%rip), %ymm7
 506      00000000 
 507 0adc C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 508 0ae0 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 509 0ae4 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 510 0ae8 C5D55992 		vmulpd	896(%rdx), %ymm5, %ymm2
 510      80030000 
 511 0af0 C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 511      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 18


 512 0af8 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 513 0afc C5CD598A 		vmulpd	320(%rdx), %ymm6, %ymm1
 513      40010000 
 514 0b04 C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 514      00000000 
 515 0b0c C5CD599A 		vmulpd	704(%rdx), %ymm6, %ymm3
 515      C0020000 
 516 0b14 C5FD2835 		vmovapd	.LC19(%rip), %ymm6
 516      00000000 
 517 0b1c C5FD5900 		vmulpd	(%rax), %ymm0, %ymm0
 518 0b20 C5CD59A2 		vmulpd	512(%rdx), %ymm6, %ymm4
 518      00020000 
 519 0b28 C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 519      00000000 
 520 0b30 C5FD5882 		vaddpd	1248(%rdx), %ymm0, %ymm0
 520      E0040000 
 521 0b38 C5FD2982 		vmovapd	%ymm0, 1056(%rdx)
 521      20040000 
 522 0b40 C5D55942 		vmulpd	-64(%rdx), %ymm5, %ymm0
 522      C0
 523 0b45 C5FD282D 		vmovapd	.LC15(%rip), %ymm5
 523      00000000 
 524 0b4d C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 525 0b51 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 526 0b55 C5CD599A 		vmulpd	736(%rdx), %ymm6, %ymm3
 526      E0020000 
 527 0b5d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 528 0b61 C5C55992 		vmulpd	928(%rdx), %ymm7, %ymm2
 528      A0030000 
 529 0b69 C5FD283D 		vmovapd	.LC19(%rip), %ymm7
 529      00000000 
 530 0b71 C5C559A2 		vmulpd	544(%rdx), %ymm7, %ymm4
 530      20020000 
 531 0b79 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 532 0b7d C5D5598A 		vmulpd	352(%rdx), %ymm5, %ymm1
 532      60010000 
 533 0b85 C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 533      00000000 
 534 0b8d C5FD5900 		vmulpd	(%rax), %ymm0, %ymm0
 535 0b91 C5FD5882 		vaddpd	1280(%rdx), %ymm0, %ymm0
 535      00050000 
 536 0b99 C5FD2982 		vmovapd	%ymm0, 1088(%rdx)
 536      40040000 
 537 0ba1 C5D55942 		vmulpd	-32(%rdx), %ymm5, %ymm0
 537      E0
 538 0ba6 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 539 0baa C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 540 0bae C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 541 0bb2 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 542 0bb6 C5FD5900 		vmulpd	(%rax), %ymm0, %ymm0
 543 0bba C5FD5882 		vaddpd	1312(%rdx), %ymm0, %ymm0
 543      20050000 
 544 0bc2 C5FD2982 		vmovapd	%ymm0, 1120(%rdx)
 544      60040000 
 545 0bca 4883F940 		cmpq	$64, %rcx
 546 0bce 0F8597FE 		jne	.L14
 546      FFFF
GAS LISTING /tmp/ccwFkTOd.s 			page 19


 547 0bd4 C5FD2884 		vmovapd	1856(%rsp), %ymm0
 547      24400700 
 547      00
 548 0bdd 488D8424 		leaq	896(%rsp), %rax
 548      80030000 
 549 0be5 488DBC24 		leaq	704(%rsp), %rdi
 549      C0020000 
 550 0bed C5FD288C 		vmovapd	1888(%rsp), %ymm1
 550      24600700 
 550      00
 551 0bf6 C5FD599C 		vmulpd	2368(%rsp), %ymm0, %ymm3
 551      24400900 
 551      00
 552 0bff C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 553 0c03 C5ED5915 		vmulpd	.LC1(%rip), %ymm2, %ymm2
 553      00000000 
 554 0c0b C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 555 0c0f C5FD2994 		vmovapd	%ymm2, 896(%rsp)
 555      24800300 
 555      00
 556 0c18 C5FD2894 		vmovapd	1920(%rsp), %ymm2
 556      24800700 
 556      00
 557 0c21 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 558 0c25 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 558      00000000 
 559 0c2d C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 560 0c31 C5FD288C 		vmovapd	1984(%rsp), %ymm1
 560      24C00700 
 560      00
 561 0c3a C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 562 0c3e C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 563 0c42 C5FD299C 		vmovapd	%ymm3, 928(%rsp)
 563      24A00300 
 563      00
 564 0c4b C5FD2984 		vmovapd	%ymm0, 960(%rsp)
 564      24C00300 
 564      00
 565 0c54 C5FD2884 		vmovapd	1952(%rsp), %ymm0
 565      24A00700 
 565      00
 566 0c5d C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 567 0c61 C5FD599C 		vmulpd	2400(%rsp), %ymm0, %ymm3
 567      24600900 
 567      00
 568 0c6a C5ED5915 		vmulpd	.LC1(%rip), %ymm2, %ymm2
 568      00000000 
 569 0c72 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 570 0c76 C5FD2994 		vmovapd	%ymm2, 992(%rsp)
 570      24E00300 
 570      00
 571 0c7f C5FD2894 		vmovapd	2016(%rsp), %ymm2
 571      24E00700 
 571      00
 572 0c88 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 573 0c8c C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 573      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 20


 574 0c94 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 575 0c98 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 576 0c9c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 577 0ca0 C5FD299C 		vmovapd	%ymm3, 1024(%rsp)
 577      24000400 
 577      00
 578 0ca9 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 578      24200400 
 578      00
 579              	.L18:
 580 0cb2 4889C2   		movq	%rax, %rdx
 581 0cb5 B9030000 		movl	$3, %ecx
 581      00
 582              	.L16:
 583 0cba C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 583      00000000 
 584 0cc2 4883C220 		addq	$32, %rdx
 585 0cc6 C5FD283D 		vmovapd	.LC21(%rip), %ymm7
 585      00000000 
 586 0cce C5CD594A 		vmulpd	-32(%rdx), %ymm6, %ymm1
 586      E0
 587 0cd3 C5FD2835 		vmovapd	.LC22(%rip), %ymm6
 587      00000000 
 588 0cdb C5C55992 		vmulpd	736(%rdx), %ymm7, %ymm2
 588      E0020000 
 589 0ce3 C5FD283D 		vmovapd	.LC23(%rip), %ymm7
 589      00000000 
 590 0ceb C5CD5982 		vmulpd	544(%rdx), %ymm6, %ymm0
 590      20020000 
 591 0cf3 C5FD2835 		vmovapd	.LC24(%rip), %ymm6
 591      00000000 
 592 0cfb C5C5599A 		vmulpd	352(%rdx), %ymm7, %ymm3
 592      60010000 
 593 0d03 C5FD283D 		vmovapd	.LC25(%rip), %ymm7
 593      00000000 
 594 0d0b C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 595 0d0f C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 596 0d13 C5C55992 		vmulpd	160(%rdx), %ymm7, %ymm2
 596      A0000000 
 597 0d1b C5FD283D 		vmovapd	.LC27(%rip), %ymm7
 597      00000000 
 598 0d23 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 599 0d27 C5CD594A 		vmulpd	-32(%rdx), %ymm6, %ymm1
 599      E0
 600 0d2c C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 600      00000000 
 601 0d34 C5CD599A 		vmulpd	736(%rdx), %ymm6, %ymm3
 601      E0020000 
 602 0d3c C5FD2835 		vmovapd	.LC28(%rip), %ymm6
 602      00000000 
 603 0d44 C5FD5987 		vmulpd	1600(%rdi), %ymm0, %ymm0
 603      40060000 
 604 0d4c C5CD59A2 		vmulpd	352(%rdx), %ymm6, %ymm4
 604      60010000 
 605 0d54 C5FD5882 		vaddpd	1120(%rdx), %ymm0, %ymm0
 605      60040000 
 606 0d5c C5FD2982 		vmovapd	%ymm0, 928(%rdx)
GAS LISTING /tmp/ccwFkTOd.s 			page 21


 606      A0030000 
 607 0d64 C5C55982 		vmulpd	544(%rdx), %ymm7, %ymm0
 607      20020000 
 608 0d6c C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 609 0d70 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 610 0d74 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 611 0d78 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 612 0d7c C595548A 		vandpd	928(%rdx), %ymm13, %ymm1
 612      A0030000 
 613 0d84 C5FD5987 		vmulpd	1600(%rdi), %ymm0, %ymm0
 613      40060000 
 614 0d8c C5F5590D 		vmulpd	.LC29(%rip), %ymm1, %ymm1
 614      00000000 
 615 0d94 C5FD2982 		vmovapd	%ymm0, -224(%rdx)
 615      20FFFFFF 
 616 0d9c C5F5580D 		vaddpd	.LC29(%rip), %ymm1, %ymm1
 616      00000000 
 617 0da4 C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 618 0da8 C5FD294A 		vmovapd	%ymm1, -32(%rdx)
 618      E0
 619 0dad C4C17D54 		vandpd	%ymm13, %ymm0, %ymm0
 619      C5
 620 0db2 C5FD2982 		vmovapd	%ymm0, 160(%rdx)
 620      A0000000 
 621 0dba 83E901   		subl	$1, %ecx
 622 0dbd 0F85F7FE 		jne	.L16
 622      FFFF
 623 0dc3 4883C720 		addq	$32, %rdi
 624 0dc7 4883C060 		addq	$96, %rax
 625 0dcb 4839F7   		cmpq	%rsi, %rdi
 626 0dce 0F85DEFE 		jne	.L18
 626      FFFF
 627 0dd4 C5FD2884 		vmovapd	1088(%rsp), %ymm0
 627      24400400 
 627      00
 628 0ddd 488D8C24 		leaq	704(%rsp), %rcx
 628      C0020000 
 629 0de5 C5C957F6 		vxorpd	%xmm6, %xmm6, %xmm6
 630 0de9 C5FD283C 		vmovapd	(%rsp), %ymm7
 630      24
 631 0dee C5FD5D84 		vminpd	1120(%rsp), %ymm0, %ymm0
 631      24600400 
 631      00
 632 0df7 4889CA   		movq	%rcx, %rdx
 633 0dfa C5FD5D84 		vminpd	1152(%rsp), %ymm0, %ymm0
 633      24800400 
 633      00
 634 0e03 C5FD2984 		vmovapd	%ymm0, 896(%rsp)
 634      24800300 
 634      00
 635 0e0c C5FD2884 		vmovapd	1184(%rsp), %ymm0
 635      24A00400 
 635      00
 636 0e15 C5FD5D84 		vminpd	1216(%rsp), %ymm0, %ymm0
 636      24C00400 
 636      00
 637 0e1e C5FD5D84 		vminpd	1248(%rsp), %ymm0, %ymm0
GAS LISTING /tmp/ccwFkTOd.s 			page 22


 637      24E00400 
 637      00
 638 0e27 C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 638      24A00300 
 638      00
 639              	.L24:
 640 0e30 C5FD28AA 		vmovapd	192(%rdx), %ymm5
 640      C0000000 
 641 0e38 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 641      FF
 642 0e3d C5FD280D 		vmovapd	.LC34(%rip), %ymm1
 642      00000000 
 643 0e45 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm4
 643      EC01
 644 0e4b C5F928DD 		vmovapd	%xmm5, %xmm3
 645 0e4f C5E1DB15 		vpand	.LC30(%rip), %xmm3, %xmm2
 645      00000000 
 646 0e57 C5B973D3 		vpsrlq	$52, %xmm3, %xmm8
 646      34
 647 0e5c C5D9DB05 		vpand	.LC30(%rip), %xmm4, %xmm0
 647      00000000 
 648 0e64 C539EB05 		vpor	.LC32(%rip), %xmm8, %xmm8
 648      00000000 
 649 0e6c C5E9EB15 		vpor	.LC31(%rip), %xmm2, %xmm2
 649      00000000 
 650 0e74 C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 650      00000000 
 651 0e7c C4E36D18 		vinsertf128	$0x1, %xmm0, %ymm2, %ymm2
 651      D001
 652 0e82 C5F973D4 		vpsrlq	$52, %xmm4, %xmm0
 652      34
 653 0e87 C5F9EB05 		vpor	.LC32(%rip), %xmm0, %xmm0
 653      00000000 
 654 0e8f C5F5C2CA 		vcmppd	$1, %ymm2, %ymm1, %ymm1
 654      01
 655 0e94 C4C37D19 		vextractf128	$0x1, %ymm1, %xmm9
 655      C901
 656 0e9a C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 656      C001
 657 0ea0 C5F928C1 		vmovapd	%xmm1, %xmm0
 658 0ea4 C5F5540D 		vandpd	.LC36(%rip), %ymm1, %ymm1
 658      00000000 
 659 0eac C531570D 		vxorpd	.LC35(%rip), %xmm9, %xmm9
 659      00000000 
 660 0eb4 C53D5C05 		vsubpd	.LC33(%rip), %ymm8, %ymm8
 660      00000000 
 661 0ebc C5F95705 		vxorpd	.LC35(%rip), %xmm0, %xmm0
 661      00000000 
 662 0ec4 C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 662      C101
 663 0eca C5BD58C9 		vaddpd	%ymm1, %ymm8, %ymm1
 664 0ece C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 665 0ed2 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 666 0ed6 C5FD5C05 		vsubpd	.LC36(%rip), %ymm0, %ymm0
 666      00000000 
 667 0ede C57D5915 		vmulpd	.LC39(%rip), %ymm0, %ymm10
 667      00000000 
GAS LISTING /tmp/ccwFkTOd.s 			page 23


 668 0ee6 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 669 0eea C57D591D 		vmulpd	.LC37(%rip), %ymm0, %ymm11
 669      00000000 
 670 0ef2 C57D590D 		vmulpd	.LC41(%rip), %ymm0, %ymm9
 670      00000000 
 671 0efa C52D5815 		vaddpd	.LC40(%rip), %ymm10, %ymm10
 671      00000000 
 672 0f02 C56D59C2 		vmulpd	%ymm2, %ymm2, %ymm8
 673 0f06 C525581D 		vaddpd	.LC38(%rip), %ymm11, %ymm11
 673      00000000 
 674 0f0e C535580D 		vaddpd	.LC42(%rip), %ymm9, %ymm9
 674      00000000 
 675 0f16 C4412D59 		vmulpd	%ymm8, %ymm10, %ymm10
 675      D0
 676 0f1b C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 676      D3
 677 0f20 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 678 0f24 C57D591D 		vmulpd	.LC43(%rip), %ymm0, %ymm11
 678      00000000 
 679 0f2c C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 679      CA
 680 0f31 C57D59D2 		vmulpd	%ymm2, %ymm0, %ymm10
 681 0f35 C525581D 		vaddpd	.LC44(%rip), %ymm11, %ymm11
 681      00000000 
 682 0f3d C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 682      CA
 683 0f42 C57D5815 		vaddpd	.LC45(%rip), %ymm0, %ymm10
 683      00000000 
 684 0f4a C4412D59 		vmulpd	%ymm8, %ymm10, %ymm8
 684      C0
 685 0f4f C4413D58 		vaddpd	%ymm11, %ymm8, %ymm10
 685      D3
 686 0f54 C57D5905 		vmulpd	.LC46(%rip), %ymm0, %ymm8
 686      00000000 
 687 0f5c C53D5805 		vaddpd	.LC47(%rip), %ymm8, %ymm8
 687      00000000 
 688 0f64 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 689 0f68 C5ED5915 		vmulpd	.LC49(%rip), %ymm2, %ymm2
 689      00000000 
 690 0f70 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 690      C2
 691 0f75 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 692 0f79 C5E973F3 		vpsllq	$1, %xmm3, %xmm2
 692      01
 693 0f7e C441355E 		vdivpd	%ymm8, %ymm9, %ymm8
 693      C0
 694 0f83 C575590D 		vmulpd	.LC48(%rip), %ymm1, %ymm9
 694      00000000 
 695 0f8b C5F5590D 		vmulpd	.LC50(%rip), %ymm1, %ymm1
 695      00000000 
 696 0f93 C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 696      C0
 697 0f98 C569DB0D 		vpand	.LC51(%rip), %xmm2, %xmm9
 697      00000000 
 698 0fa0 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 699 0fa4 C5B973F4 		vpsllq	$1, %xmm4, %xmm8
 699      01
GAS LISTING /tmp/ccwFkTOd.s 			page 24


 700 0fa9 C4623129 		vpcmpeqq	.LC51(%rip), %xmm9, %xmm9
 700      0D000000 
 700      00
 701 0fb2 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 701      00000000 
 702 0fba C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 703 0fbe C5B9DB0D 		vpand	.LC51(%rip), %xmm8, %xmm1
 703      00000000 
 704 0fc6 C4623929 		vpcmpeqq	.LC51(%rip), %xmm8, %xmm8
 704      05000000 
 704      00
 705 0fcf C4E27129 		vpcmpeqq	.LC51(%rip), %xmm1, %xmm1
 705      0D000000 
 705      00
 706 0fd8 C5F1EF0D 		vpxor	.LC82(%rip), %xmm1, %xmm1
 706      00000000 
 707 0fe0 C4633518 		vinsertf128	$0x1, %xmm1, %ymm9, %ymm9
 707      C901
 708 0fe6 C4437D19 		vextractf128	$0x1, %ymm9, %xmm10
 708      CA01
 709 0fec C57929C9 		vmovapd	%xmm9, %xmm1
 710 0ff0 C555C20D 		vcmppd	$1, .LC52(%rip), %ymm5, %ymm9
 710      00000000 
 710      01
 711 0ff9 C5295715 		vxorpd	.LC35(%rip), %xmm10, %xmm10
 711      00000000 
 712 1001 C5F1570D 		vxorpd	.LC35(%rip), %xmm1, %xmm1
 712      00000000 
 713 1009 C4C37518 		vinsertf128	$0x1, %xmm10, %ymm1, %ymm1
 713      CA01
 714 100f C53556D1 		vorpd	%ymm1, %ymm9, %ymm10
 715 1013 C4637D4B 		vblendvpd	%ymm9, .LC53(%rip), %ymm0, %ymm9
 715      0D000000 
 715      0090
 716 101d C4437D19 		vextractf128	$0x1, %ymm10, %xmm11
 716      D301
 717 1023 C4412956 		vorpd	%xmm11, %xmm10, %xmm10
 717      D3
 718 1028 C559DB1D 		vpand	.LC55(%rip), %xmm4, %xmm11
 718      00000000 
 719 1030 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 719      1F
 720 1035 C4C17950 		vmovmskpd	%xmm10, %eax
 720      C2
 721 103a C561DB15 		vpand	.LC55(%rip), %xmm3, %xmm10
 721      00000000 
 722 1042 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 722      1F
 723 1047 85C0     		testl	%eax, %eax
 724 1049 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 724      DF
 725 104e C4422929 		vpcmpeqq	%xmm15, %xmm10, %xmm10
 725      D7
 726 1053 C4432D18 		vinsertf128	$0x1, %xmm11, %ymm10, %ymm10
 726      D301
 727 1059 C463354B 		vblendvpd	%ymm10, 32(%rsp), %ymm9, %ymm9
 727      4C2420A0 
GAS LISTING /tmp/ccwFkTOd.s 			page 25


 728 1061 C4E3354B 		vblendvpd	%ymm1, %ymm5, %ymm9, %ymm5
 728      ED10
 729 1067 C5F173D4 		vpsrlq	$32, %xmm4, %xmm1
 729      20
 730 106c C4E3710E 		vpblendw	$204, %xmm4, %xmm1, %xmm4
 730      E4CC
 731 1072 C5F173D3 		vpsrlq	$32, %xmm3, %xmm1
 731      20
 732 1077 C4E3710E 		vpblendw	$204, %xmm3, %xmm1, %xmm3
 732      DBCC
 733 107d C4E26929 		vpcmpeqq	.LC51(%rip), %xmm2, %xmm1
 733      0D000000 
 733      00
 734 1086 C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm4
 734      E401
 735 108c C4C37518 		vinsertf128	$0x1, %xmm8, %ymm1, %ymm1
 735      C801
 736 1092 C5F554CC 		vandpd	%ymm4, %ymm1, %ymm1
 737 1096 C4E3554B 		vblendvpd	%ymm1, .LC53(%rip), %ymm5, %ymm1
 737      0D000000 
 737      0010
 738 10a0 7504     		jne	.L20
 739 10a2 C5FD28C8 		vmovapd	%ymm0, %ymm1
 740              	.L20:
 741 10a6 C5F5590D 		vmulpd	.LC5(%rip), %ymm1, %ymm1
 741      00000000 
 742 10ae C5F55925 		vmulpd	.LC56(%rip), %ymm1, %ymm4
 742      00000000 
 743 10b6 C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 743      E408
 744 10bc C5DD5905 		vmulpd	.LC57(%rip), %ymm4, %ymm0
 744      00000000 
 745 10c4 C5DD5915 		vmulpd	.LC58(%rip), %ymm4, %ymm2
 745      00000000 
 746 10cc C5DD5825 		vaddpd	.LC33(%rip), %ymm4, %ymm4
 746      00000000 
 747 10d4 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 748 10d8 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 749 10dc C5FD592D 		vmulpd	.LC62(%rip), %ymm0, %ymm5
 749      00000000 
 750 10e4 C57D590D 		vmulpd	.LC59(%rip), %ymm0, %ymm9
 750      00000000 
 751 10ec C57D5915 		vmulpd	.LC60(%rip), %ymm0, %ymm10
 751      00000000 
 752 10f4 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 753 10f8 C5D5582D 		vaddpd	.LC63(%rip), %ymm5, %ymm5
 753      00000000 
 754 1100 C535580D 		vaddpd	.LC49(%rip), %ymm9, %ymm9
 754      00000000 
 755 1108 C52D5815 		vaddpd	.LC61(%rip), %ymm10, %ymm10
 755      00000000 
 756 1110 C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 757 1114 C5D559EA 		vmulpd	%ymm2, %ymm5, %ymm5
 758 1118 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 759 111c C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 760 1120 C4C15558 		vaddpd	%ymm10, %ymm5, %ymm5
 760      EA
GAS LISTING /tmp/ccwFkTOd.s 			page 26


 761 1125 C57D5915 		vmulpd	.LC64(%rip), %ymm0, %ymm10
 761      00000000 
 762 112d C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 763 1131 C5D559EB 		vmulpd	%ymm3, %ymm5, %ymm5
 764 1135 C52D5815 		vaddpd	.LC65(%rip), %ymm10, %ymm10
 764      00000000 
 765 113d C4C15558 		vaddpd	%ymm9, %ymm5, %ymm5
 765      E9
 766 1142 C57D590D 		vmulpd	.LC66(%rip), %ymm0, %ymm9
 766      00000000 
 767 114a C535580D 		vaddpd	.LC67(%rip), %ymm9, %ymm9
 767      00000000 
 768 1152 C5B559D2 		vmulpd	%ymm2, %ymm9, %ymm2
 769 1156 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm9
 769      CA
 770 115b C5FD5915 		vmulpd	.LC68(%rip), %ymm0, %ymm2
 770      00000000 
 771 1163 C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 771      34
 772 1168 C5ED5815 		vaddpd	.LC69(%rip), %ymm2, %ymm2
 772      00000000 
 773 1170 C5ED59D3 		vmulpd	%ymm3, %ymm2, %ymm2
 774 1174 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 774      E301
 775 117a C4C16D58 		vaddpd	%ymm9, %ymm2, %ymm2
 775      D1
 776 117f C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 776      34
 777 1184 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 777      C301
 778 118a C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 778      CB01
 779 1190 C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 779      D0
 780 1195 C5B973F3 		vpsllq	$1, %xmm3, %xmm8
 780      01
 781 119a C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 781      1F
 782 119f C539DB05 		vpand	.LC51(%rip), %xmm8, %xmm8
 782      00000000 
 783 11a7 C5ED58D5 		vaddpd	%ymm5, %ymm2, %ymm2
 784 11ab C4C17554 		vandpd	%ymm13, %ymm1, %ymm5
 784      ED
 785 11b0 C4623929 		vpcmpeqq	.LC51(%rip), %xmm8, %xmm8
 785      05000000 
 785      00
 786 11b9 C539EF05 		vpxor	.LC82(%rip), %xmm8, %xmm8
 786      00000000 
 787 11c1 C5ED5825 		vaddpd	.LC36(%rip), %ymm2, %ymm4
 787      00000000 
 788 11c9 C5F928D1 		vmovapd	%xmm1, %xmm2
 789 11cd C5D5C22D 		vcmppd	$1, .LC70(%rip), %ymm5, %ymm5
 789      00000000 
 789      01
 790 11d6 C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 791 11da C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 791      01
GAS LISTING /tmp/ccwFkTOd.s 			page 27


 792 11df C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 792      1F
 793 11e4 C5F9DB05 		vpand	.LC51(%rip), %xmm0, %xmm0
 793      00000000 
 794 11ec C4E27929 		vpcmpeqq	.LC51(%rip), %xmm0, %xmm0
 794      05000000 
 794      00
 795 11f5 C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 795      00000000 
 796 11fd C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 796      C001
 797 1203 C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 798 1207 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 798      C501
 799 120d C57928C0 		vmovapd	%xmm0, %xmm8
 800 1211 C5B954ED 		vandpd	%xmm5, %xmm8, %xmm5
 801 1215 C5F950C5 		vmovmskpd	%xmm5, %eax
 802 1219 C5D173D3 		vpsrlq	$32, %xmm3, %xmm5
 802      20
 803 121e C4E3510E 		vpblendw	$204, %xmm3, %xmm5, %xmm3
 803      DBCC
 804 1224 C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 804      20
 805 1229 C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 805      D2CC
 806 122f 83F803   		cmpl	$3, %eax
 807 1232 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 807      DB01
 808 1238 C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 808      04
 809 123d C4E3454B 		vblendvpd	%ymm3, %ymm6, %ymm7, %ymm3
 809      DE30
 810 1243 C4E3654B 		vblendvpd	%ymm0, %ymm4, %ymm3, %ymm0
 810      C400
 811 1249 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm1
 811      C920
 812 124f 0F848301 		je	.L30
 812      0000
 813              	.L22:
 814 1255 C5FD2882 		vmovapd	1600(%rdx), %ymm0
 814      40060000 
 815 125d 4883C220 		addq	$32, %rdx
 816 1261 4883C160 		addq	$96, %rcx
 817 1265 C5FD2825 		vmovapd	.LC36(%rip), %ymm4
 817      00000000 
 818 126d C5FDC205 		vcmppd	$2, .LC71(%rip), %ymm0, %ymm0
 818      00000000 
 818      02
 819 1276 C5FD282D 		vmovapd	.LC72(%rip), %ymm5
 819      00000000 
 820 127e C5DDC292 		vcmppd	$2, 160(%rdx), %ymm4, %ymm2
 820      A0000000 
 820      02
 821 1287 C5FD2825 		vmovapd	.LC74(%rip), %ymm4
 821      00000000 
 822 128f C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 823 1293 C5D5C2D1 		vcmppd	$1, %ymm1, %ymm5, %ymm2
GAS LISTING /tmp/ccwFkTOd.s 			page 28


 823      01
 824 1298 C4E3754B 		vblendvpd	%ymm2, %ymm5, %ymm1, %ymm1
 824      CD20
 825 129e C5F5C215 		vcmppd	$1, .LC5(%rip), %ymm1, %ymm2
 825      00000000 
 825      01
 826 12a7 C4E3754B 		vblendvpd	%ymm2, .LC5(%rip), %ymm1, %ymm1
 826      0D000000 
 826      0020
 827 12b1 C5FD298A 		vmovapd	%ymm1, 352(%rdx)
 827      60010000 
 828 12b9 C5FD2889 		vmovapd	1248(%rcx), %ymm1
 828      E0040000 
 829 12c1 C4E3754B 		vblendvpd	%ymm0, 1056(%rcx), %ymm1, %ymm1
 829      89200400 
 829      0000
 830 12cb C5FD2989 		vmovapd	%ymm1, 1248(%rcx)
 830      E0040000 
 831 12d3 C5FD2889 		vmovapd	1280(%rcx), %ymm1
 831      00050000 
 832 12db C4E3754B 		vblendvpd	%ymm0, 1088(%rcx), %ymm1, %ymm1
 832      89400400 
 832      0000
 833 12e5 C5FD2989 		vmovapd	%ymm1, 1280(%rcx)
 833      00050000 
 834 12ed C5FD2889 		vmovapd	1312(%rcx), %ymm1
 834      20050000 
 835 12f5 C4E3754B 		vblendvpd	%ymm0, 1120(%rcx), %ymm1, %ymm1
 835      89600400 
 835      0000
 836 12ff C5FD2989 		vmovapd	%ymm1, 1312(%rcx)
 836      20050000 
 837 1307 C5FD288A 		vmovapd	1504(%rdx), %ymm1
 837      E0050000 
 838 130f C5F55892 		vaddpd	1568(%rdx), %ymm1, %ymm2
 838      20060000 
 839 1317 C4E3754B 		vblendvpd	%ymm0, %ymm2, %ymm1, %ymm0
 839      C200
 840 131d C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 840      E0050000 
 841 1325 C5FD2882 		vmovapd	352(%rdx), %ymm0
 841      60010000 
 842 132d C5FD5982 		vmulpd	1568(%rdx), %ymm0, %ymm0
 842      20060000 
 843 1335 C5FD5905 		vmulpd	.LC73(%rip), %ymm0, %ymm0
 843      00000000 
 844 133d C5DDC2C8 		vcmppd	$1, %ymm0, %ymm4, %ymm1
 844      01
 845 1342 C4E37D4B 		vblendvpd	%ymm1, %ymm4, %ymm0, %ymm0
 845      C410
 846 1348 C5FDC20D 		vcmppd	$1, .LC71(%rip), %ymm0, %ymm1
 846      00000000 
 846      01
 847 1351 C4E37D4B 		vblendvpd	%ymm1, .LC71(%rip), %ymm0, %ymm0
 847      05000000 
 847      0010
 848 135b C5FD2982 		vmovapd	%ymm0, 1568(%rdx)
GAS LISTING /tmp/ccwFkTOd.s 			page 29


 848      20060000 
 849 1363 4839D6   		cmpq	%rdx, %rsi
 850 1366 0F85C4FA 		jne	.L24
 850      FFFF
 851 136c C5FD2884 		vmovapd	2240(%rsp), %ymm0
 851      24C00800 
 851      00
 852 1375 C5FD2835 		vmovapd	.LC75(%rip), %ymm6
 852      00000000 
 853 137d C5FD5D84 		vminpd	2272(%rsp), %ymm0, %ymm0
 853      24E00800 
 853      00
 854 1386 C5CDC2C0 		vcmppd	$2, %ymm0, %ymm6, %ymm0
 854      02
 855 138b C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 855      C101
 856 1391 C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 857 1395 C5F950C0 		vmovmskpd	%xmm0, %eax
 858 1399 83F803   		cmpl	$3, %eax
 859 139c 744A     		je	.L31
 860 139e C5FD28BC 		vmovapd	2368(%rsp), %ymm7
 860      24400900 
 860      00
 861 13a7 C5FD28B4 		vmovapd	2400(%rsp), %ymm6
 861      24600900 
 861      00
 862 13b0 C5FD2894 		vmovapd	2304(%rsp), %ymm2
 862      24000900 
 862      00
 863 13b9 C5FD289C 		vmovapd	2336(%rsp), %ymm3
 863      24200900 
 863      00
 864 13c2 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 864      2460
 865 13c8 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 865      2440
 866 13ce E9BDEDFF 		jmp	.L28
 866      FF
 867              		.p2align 4,,10
 868 13d3 0F1F4400 		.p2align 3
 868      00
 869              	.L30:
 870 13d8 C5FD28CC 		vmovapd	%ymm4, %ymm1
 871 13dc E974FEFF 		jmp	.L22
 871      FF
 872              		.p2align 4,,10
 873 13e1 0F1F8000 		.p2align 3
 873      000000
 874              	.L31:
 875 13e8 4489E0   		movl	%r12d, %eax
 876 13eb BAAD8BDB 		movl	$1759218605, %edx
 876      68
 877 13f0 F7EA     		imull	%edx
 878 13f2 4489E0   		movl	%r12d, %eax
 879 13f5 C1F81F   		sarl	$31, %eax
 880 13f8 C1FA0C   		sarl	$12, %edx
 881 13fb 29C2     		subl	%eax, %edx
GAS LISTING /tmp/ccwFkTOd.s 			page 30


 882 13fd 4489E0   		movl	%r12d, %eax
 883 1400 69D21027 		imull	$10000, %edx, %edx
 883      0000
 884 1406 29D0     		subl	%edx, %eax
 885 1408 83F801   		cmpl	$1, %eax
 886 140b 0F848600 		je	.L32
 886      0000
 887              	.L26:
 888 1411 4183C408 		addl	$8, %r12d
 889 1415 4983C540 		addq	$64, %r13
 890 1419 4181FC80 		cmpl	$40320, %r12d
 890      9D0000
 891 1420 0F858AEC 		jne	.L12
 891      FFFF
 892 1426 C5F877   		vzeroupper
 893 1429 E8000000 		call	clock
 893      00
 894 142e BA0E0000 		movl	$14, %edx
 894      00
 895 1433 4989C4   		movq	%rax, %r12
 896 1436 BE000000 		movl	$.LC80, %esi
 896      00
 897 143b BF000000 		movl	$_ZSt4cout, %edi
 897      00
 898 1440 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 898      00
 899 1445 4C89E1   		movq	%r12, %rcx
 900 1448 48BECFF7 		movabsq	$2361183241434822607, %rsi
 900      53E3A59B 
 900      C420
 901 1452 BF000000 		movl	$_ZSt4cout, %edi
 901      00
 902 1457 4829D9   		subq	%rbx, %rcx
 903 145a 4889C8   		movq	%rcx, %rax
 904 145d 48C1F93F 		sarq	$63, %rcx
 905 1461 48F7EE   		imulq	%rsi
 906 1464 4889D6   		movq	%rdx, %rsi
 907 1467 48C1FE07 		sarq	$7, %rsi
 908 146b 4829CE   		subq	%rcx, %rsi
 909 146e E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 909      00
 910 1473 BE000000 		movl	$.LC81, %esi
 910      00
 911 1478 4889C7   		movq	%rax, %rdi
 912 147b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 912      00
 913 1480 4889C7   		movq	%rax, %rdi
 914 1483 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 914      00
 915 1488 488D65E0 		leaq	-32(%rbp), %rsp
 916 148c 31C0     		xorl	%eax, %eax
 917 148e 5B       		popq	%rbx
 918 148f 415C     		popq	%r12
 919 1491 415D     		popq	%r13
 920 1493 415E     		popq	%r14
 921 1495 5D       		popq	%rbp
 922              		.cfi_remember_state
GAS LISTING /tmp/ccwFkTOd.s 			page 31


 923              		.cfi_def_cfa 7, 8
 924 1496 C3       		ret
 925              	.L32:
 926              		.cfi_restore_state
 927 1497 BA390000 		movl	$57, %edx
 927      00
 928 149c BE000000 		movl	$.LC76, %esi
 928      00
 929 14a1 BF000000 		movl	$_ZSt4cout, %edi
 929      00
 930 14a6 C57D29AC 		vmovapd	%ymm13, 384(%rsp)
 930      24800100 
 930      00
 931 14af C5F877   		vzeroupper
 932 14b2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 932      00
 933 14b7 C5FD2884 		vmovapd	2048(%rsp), %ymm0
 933      24000800 
 933      00
 934 14c0 4489E6   		movl	%r12d, %esi
 935 14c3 BF000000 		movl	$_ZSt4cout, %edi
 935      00
 936 14c8 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 936      24E00100 
 936      00
 937 14d1 C5FD2884 		vmovapd	2368(%rsp), %ymm0
 937      24400900 
 937      00
 938 14da C5FB108C 		vmovsd	480(%rsp), %xmm1
 938      24E00100 
 938      00
 939 14e3 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 939      24E00100 
 939      00
 940 14ec C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 940      24A00100 
 940      00
 941 14f5 C5FB1084 		vmovsd	480(%rsp), %xmm0
 941      24E00100 
 941      00
 942 14fe C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 942      24C00100 
 942      00
 943 1507 C5F877   		vzeroupper
 944 150a E8000000 		call	_ZNSolsEi
 944      00
 945 150f BA060000 		movl	$6, %edx
 945      00
 946 1514 BE000000 		movl	$.LC77, %esi
 946      00
 947 1519 4889C7   		movq	%rax, %rdi
 948 151c 4989C6   		movq	%rax, %r14
 949 151f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 949      00
 950 1524 C5FB1084 		vmovsd	448(%rsp), %xmm0
 950      24C00100 
 950      00
GAS LISTING /tmp/ccwFkTOd.s 			page 32


 951 152d 4C89F7   		movq	%r14, %rdi
 952 1530 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 952      00
 953 1535 BA030000 		movl	$3, %edx
 953      00
 954 153a BE000000 		movl	$.LC78, %esi
 954      00
 955 153f 4889C7   		movq	%rax, %rdi
 956 1542 4989C6   		movq	%rax, %r14
 957 1545 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 957      00
 958 154a C5FB108C 		vmovsd	416(%rsp), %xmm1
 958      24A00100 
 958      00
 959 1553 4C89F7   		movq	%r14, %rdi
 960 1556 C5F928C1 		vmovapd	%xmm1, %xmm0
 961 155a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 961      00
 962 155f BA010000 		movl	$1, %edx
 962      00
 963 1564 BE000000 		movl	$.LC79, %esi
 963      00
 964 1569 4889C7   		movq	%rax, %rdi
 965 156c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 965      00
 966 1571 C5FD2884 		vmovapd	2080(%rsp), %ymm0
 966      24200800 
 966      00
 967 157a 4489E6   		movl	%r12d, %esi
 968 157d BF000000 		movl	$_ZSt4cout, %edi
 968      00
 969 1582 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 969      24E00100 
 969      00
 970 158b C5FD2884 		vmovapd	2400(%rsp), %ymm0
 970      24600900 
 970      00
 971 1594 C5FB108C 		vmovsd	480(%rsp), %xmm1
 971      24E00100 
 971      00
 972 159d C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 972      24E00100 
 972      00
 973 15a6 C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 973      24A00100 
 973      00
 974 15af C5FB1084 		vmovsd	480(%rsp), %xmm0
 974      24E00100 
 974      00
 975 15b8 C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 975      24C00100 
 975      00
 976 15c1 C5F877   		vzeroupper
 977 15c4 E8000000 		call	_ZNSolsEi
 977      00
 978 15c9 BA060000 		movl	$6, %edx
 978      00
GAS LISTING /tmp/ccwFkTOd.s 			page 33


 979 15ce BE000000 		movl	$.LC77, %esi
 979      00
 980 15d3 4889C7   		movq	%rax, %rdi
 981 15d6 4989C6   		movq	%rax, %r14
 982 15d9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 982      00
 983 15de C5FB1084 		vmovsd	448(%rsp), %xmm0
 983      24C00100 
 983      00
 984 15e7 4C89F7   		movq	%r14, %rdi
 985 15ea E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 985      00
 986 15ef BA030000 		movl	$3, %edx
 986      00
 987 15f4 BE000000 		movl	$.LC78, %esi
 987      00
 988 15f9 4889C7   		movq	%rax, %rdi
 989 15fc 4989C6   		movq	%rax, %r14
 990 15ff E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 990      00
 991 1604 C5FB108C 		vmovsd	416(%rsp), %xmm1
 991      24A00100 
 991      00
 992 160d 4C89F7   		movq	%r14, %rdi
 993 1610 C5F928C1 		vmovapd	%xmm1, %xmm0
 994 1614 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 994      00
 995 1619 BA010000 		movl	$1, %edx
 995      00
 996 161e BE000000 		movl	$.LC79, %esi
 996      00
 997 1623 4889C7   		movq	%rax, %rdi
 998 1626 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 998      00
 999 162b C5FD2884 		vmovapd	2112(%rsp), %ymm0
 999      24400800 
 999      00
 1000 1634 4489E6   		movl	%r12d, %esi
 1001 1637 BF000000 		movl	$_ZSt4cout, %edi
 1001      00
 1002 163c C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1002      24E00100 
 1002      00
 1003 1645 C5FD2884 		vmovapd	2432(%rsp), %ymm0
 1003      24800900 
 1003      00
 1004 164e C5FB108C 		vmovsd	480(%rsp), %xmm1
 1004      24E00100 
 1004      00
 1005 1657 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1005      24E00100 
 1005      00
 1006 1660 C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 1006      24A00100 
 1006      00
 1007 1669 C5FB1084 		vmovsd	480(%rsp), %xmm0
 1007      24E00100 
GAS LISTING /tmp/ccwFkTOd.s 			page 34


 1007      00
 1008 1672 C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 1008      24C00100 
 1008      00
 1009 167b C5F877   		vzeroupper
 1010 167e E8000000 		call	_ZNSolsEi
 1010      00
 1011 1683 BA060000 		movl	$6, %edx
 1011      00
 1012 1688 BE000000 		movl	$.LC77, %esi
 1012      00
 1013 168d 4889C7   		movq	%rax, %rdi
 1014 1690 4989C6   		movq	%rax, %r14
 1015 1693 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1015      00
 1016 1698 C5FB1084 		vmovsd	448(%rsp), %xmm0
 1016      24C00100 
 1016      00
 1017 16a1 4C89F7   		movq	%r14, %rdi
 1018 16a4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1018      00
 1019 16a9 BA030000 		movl	$3, %edx
 1019      00
 1020 16ae BE000000 		movl	$.LC78, %esi
 1020      00
 1021 16b3 4889C7   		movq	%rax, %rdi
 1022 16b6 4989C6   		movq	%rax, %r14
 1023 16b9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1023      00
 1024 16be C5FB108C 		vmovsd	416(%rsp), %xmm1
 1024      24A00100 
 1024      00
 1025 16c7 4C89F7   		movq	%r14, %rdi
 1026 16ca C5F928C1 		vmovapd	%xmm1, %xmm0
 1027 16ce E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1027      00
 1028 16d3 BA010000 		movl	$1, %edx
 1028      00
 1029 16d8 BE000000 		movl	$.LC79, %esi
 1029      00
 1030 16dd 4889C7   		movq	%rax, %rdi
 1031 16e0 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1031      00
 1032 16e5 C57D28AC 		vmovapd	384(%rsp), %ymm13
 1032      24800100 
 1032      00
 1033 16ee E91EFDFF 		jmp	.L26
 1033      FF
 1034              		.cfi_endproc
 1035              	.LFE4635:
 1036              		.size	main, .-main
 1037 16f3 66666666 		.p2align 4,,15
 1037      2E0F1F84 
 1037      00000000 
 1037      00
 1038              		.type	_GLOBAL__sub_I_main, @function
 1039              	_GLOBAL__sub_I_main:
GAS LISTING /tmp/ccwFkTOd.s 			page 35


 1040              	.LFB4900:
 1041              		.cfi_startproc
 1042 1700 4883EC08 		subq	$8, %rsp
 1043              		.cfi_def_cfa_offset 16
 1044 1704 BF000000 		movl	$_ZStL8__ioinit, %edi
 1044      00
 1045 1709 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1045      00
 1046 170e BA000000 		movl	$__dso_handle, %edx
 1046      00
 1047 1713 BE000000 		movl	$_ZStL8__ioinit, %esi
 1047      00
 1048 1718 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1048      00
 1049 171d 4883C408 		addq	$8, %rsp
 1050              		.cfi_def_cfa_offset 8
 1051 1721 E9000000 		jmp	__cxa_atexit
 1051      00
 1052              		.cfi_endproc
 1053              	.LFE4900:
 1054              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1055              		.section	.init_array,"aw"
 1056              		.align 8
 1057 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1057      00000000 
 1058              		.section	.rodata
 1059              		.align 32
 1060              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1061              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1062              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1063 0000 00000000 		.long	0
 1064 0004 00000080 		.long	-2147483648
 1065 0008 00000000 		.long	0
 1066 000c 00000080 		.long	-2147483648
 1067 0010 00000000 		.long	0
 1068 0014 00000080 		.long	-2147483648
 1069 0018 00000000 		.long	0
 1070 001c 00000080 		.long	-2147483648
 1071              		.align 32
 1072              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1073              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1074              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1075 0020 FFFFFFFF 		.long	-1
 1076 0024 FFFFFF7F 		.long	2147483647
 1077 0028 FFFFFFFF 		.long	-1
 1078 002c FFFFFF7F 		.long	2147483647
 1079 0030 FFFFFFFF 		.long	-1
 1080 0034 FFFFFF7F 		.long	2147483647
 1081 0038 FFFFFFFF 		.long	-1
 1082 003c FFFFFF7F 		.long	2147483647
 1083              		.local	_ZStL8__ioinit
 1084              		.comm	_ZStL8__ioinit,1,1
 1085              		.section	.rodata.cst32,"aM",@progbits,32
 1086              		.align 32
 1087              	.LC0:
 1088 0000 7B14AE47 		.long	1202590843
 1089 0004 E17A843F 		.long	1065646817
GAS LISTING /tmp/ccwFkTOd.s 			page 36


 1090 0008 7B14AE47 		.long	1202590843
 1091 000c E17A843F 		.long	1065646817
 1092 0010 7B14AE47 		.long	1202590843
 1093 0014 E17A843F 		.long	1065646817
 1094 0018 7B14AE47 		.long	1202590843
 1095 001c E17A843F 		.long	1065646817
 1096              		.align 32
 1097              	.LC1:
 1098 0020 00000000 		.long	0
 1099 0024 00002440 		.long	1076101120
 1100 0028 00000000 		.long	0
 1101 002c 00002440 		.long	1076101120
 1102 0030 00000000 		.long	0
 1103 0034 00002440 		.long	1076101120
 1104 0038 00000000 		.long	0
 1105 003c 00002440 		.long	1076101120
 1106              		.section	.rodata.cst8,"aM",@progbits,8
 1107              		.align 8
 1108              	.LC2:
 1109 0000 00000000 		.long	0
 1110 0004 00003540 		.long	1077215232
 1111              		.section	.rodata.cst32
 1112              		.align 32
 1113              	.LC4:
 1114 0040 55555555 		.long	1431655765
 1115 0044 55550540 		.long	1074091349
 1116 0048 55555555 		.long	1431655765
 1117 004c 55550540 		.long	1074091349
 1118 0050 55555555 		.long	1431655765
 1119 0054 55550540 		.long	1074091349
 1120 0058 55555555 		.long	1431655765
 1121 005c 55550540 		.long	1074091349
 1122              		.align 32
 1123              	.LC5:
 1124 0060 9A999999 		.long	2576980378
 1125 0064 9999C93F 		.long	1070176665
 1126 0068 9A999999 		.long	2576980378
 1127 006c 9999C93F 		.long	1070176665
 1128 0070 9A999999 		.long	2576980378
 1129 0074 9999C93F 		.long	1070176665
 1130 0078 9A999999 		.long	2576980378
 1131 007c 9999C93F 		.long	1070176665
 1132              		.align 32
 1133              	.LC6:
 1134 0080 CDCCCCCC 		.long	3435973837
 1135 0084 CCCCCC3F 		.long	1070386380
 1136 0088 CDCCCCCC 		.long	3435973837
 1137 008c CCCCCC3F 		.long	1070386380
 1138 0090 CDCCCCCC 		.long	3435973837
 1139 0094 CCCCCC3F 		.long	1070386380
 1140 0098 CDCCCCCC 		.long	3435973837
 1141 009c CCCCCC3F 		.long	1070386380
 1142              		.align 32
 1143              	.LC7:
 1144 00a0 33333333 		.long	858993459
 1145 00a4 3333B33F 		.long	1068708659
 1146 00a8 33333333 		.long	858993459
GAS LISTING /tmp/ccwFkTOd.s 			page 37


 1147 00ac 3333B33F 		.long	1068708659
 1148 00b0 33333333 		.long	858993459
 1149 00b4 3333B33F 		.long	1068708659
 1150 00b8 33333333 		.long	858993459
 1151 00bc 3333B33F 		.long	1068708659
 1152              		.align 32
 1153              	.LC8:
 1154 00c0 33333333 		.long	858993459
 1155 00c4 3333F33F 		.long	1072902963
 1156 00c8 33333333 		.long	858993459
 1157 00cc 3333F33F 		.long	1072902963
 1158 00d0 33333333 		.long	858993459
 1159 00d4 3333F33F 		.long	1072902963
 1160 00d8 33333333 		.long	858993459
 1161 00dc 3333F33F 		.long	1072902963
 1162              		.align 32
 1163              	.LC9:
 1164 00e0 CDCCCCCC 		.long	3435973837
 1165 00e4 CCCCECBF 		.long	-1075000116
 1166 00e8 CDCCCCCC 		.long	3435973837
 1167 00ec CCCCECBF 		.long	-1075000116
 1168 00f0 CDCCCCCC 		.long	3435973837
 1169 00f4 CCCCECBF 		.long	-1075000116
 1170 00f8 CDCCCCCC 		.long	3435973837
 1171 00fc CCCCECBF 		.long	-1075000116
 1172              		.align 32
 1173              	.LC10:
 1174 0100 33333333 		.long	858993459
 1175 0104 3333D33F 		.long	1070805811
 1176 0108 33333333 		.long	858993459
 1177 010c 3333D33F 		.long	1070805811
 1178 0110 33333333 		.long	858993459
 1179 0114 3333D33F 		.long	1070805811
 1180 0118 33333333 		.long	858993459
 1181 011c 3333D33F 		.long	1070805811
 1182              		.align 32
 1183              	.LC11:
 1184 0120 DA4B682F 		.long	795364314
 1185 0124 A1BDF43F 		.long	1073003937
 1186 0128 DA4B682F 		.long	795364314
 1187 012c A1BDF43F 		.long	1073003937
 1188 0130 DA4B682F 		.long	795364314
 1189 0134 A1BDF43F 		.long	1073003937
 1190 0138 DA4B682F 		.long	795364314
 1191 013c A1BDF43F 		.long	1073003937
 1192              		.align 32
 1193              	.LC12:
 1194 0140 D94B682F 		.long	795364313
 1195 0144 A1BD04C0 		.long	-1073431135
 1196 0148 D94B682F 		.long	795364313
 1197 014c A1BD04C0 		.long	-1073431135
 1198 0150 D94B682F 		.long	795364313
 1199 0154 A1BD04C0 		.long	-1073431135
 1200 0158 D94B682F 		.long	795364313
 1201 015c A1BD04C0 		.long	-1073431135
 1202              		.align 32
 1203              	.LC13:
GAS LISTING /tmp/ccwFkTOd.s 			page 38


 1204 0160 00000000 		.long	0
 1205 0164 00000440 		.long	1074003968
 1206 0168 00000000 		.long	0
 1207 016c 00000440 		.long	1074003968
 1208 0170 00000000 		.long	0
 1209 0174 00000440 		.long	1074003968
 1210 0178 00000000 		.long	0
 1211 017c 00000440 		.long	1074003968
 1212              		.align 32
 1213              	.LC14:
 1214 0180 16A1BD84 		.long	2227020054
 1215 0184 F612CABF 		.long	-1077275914
 1216 0188 16A1BD84 		.long	2227020054
 1217 018c F612CABF 		.long	-1077275914
 1218 0190 16A1BD84 		.long	2227020054
 1219 0194 F612CABF 		.long	-1077275914
 1220 0198 16A1BD84 		.long	2227020054
 1221 019c F612CABF 		.long	-1077275914
 1222              		.align 32
 1223              	.LC15:
 1224 01a0 00000000 		.long	0
 1225 01a4 00A0AF3F 		.long	1068474368
 1226 01a8 00000000 		.long	0
 1227 01ac 00A0AF3F 		.long	1068474368
 1228 01b0 00000000 		.long	0
 1229 01b4 00A0AF3F 		.long	1068474368
 1230 01b8 00000000 		.long	0
 1231 01bc 00A0AF3F 		.long	1068474368
 1232              		.align 32
 1233              	.LC16:
 1234 01c0 B397D05E 		.long	1590728627
 1235 01c4 429FD93F 		.long	1071226690
 1236 01c8 B397D05E 		.long	1590728627
 1237 01cc 429FD93F 		.long	1071226690
 1238 01d0 B397D05E 		.long	1590728627
 1239 01d4 429FD93F 		.long	1071226690
 1240 01d8 B397D05E 		.long	1590728627
 1241 01dc 429FD93F 		.long	1071226690
 1242              		.align 32
 1243              	.LC17:
 1244 01e0 BD84F612 		.long	318145725
 1245 01e4 DA4BA53F 		.long	1067797466
 1246 01e8 BD84F612 		.long	318145725
 1247 01ec DA4BA53F 		.long	1067797466
 1248 01f0 BD84F612 		.long	318145725
 1249 01f4 DA4BA53F 		.long	1067797466
 1250 01f8 BD84F612 		.long	318145725
 1251 01fc DA4BA53F 		.long	1067797466
 1252              		.align 32
 1253              	.LC18:
 1254 0200 00000000 		.long	0
 1255 0204 00E0D53F 		.long	1070981120
 1256 0208 00000000 		.long	0
 1257 020c 00E0D53F 		.long	1070981120
 1258 0210 00000000 		.long	0
 1259 0214 00E0D53F 		.long	1070981120
 1260 0218 00000000 		.long	0
GAS LISTING /tmp/ccwFkTOd.s 			page 39


 1261 021c 00E0D53F 		.long	1070981120
 1262              		.align 32
 1263              	.LC19:
 1264 0220 347B09ED 		.long	3976821556
 1265 0224 25349E3F 		.long	1067332645
 1266 0228 347B09ED 		.long	3976821556
 1267 022c 25349E3F 		.long	1067332645
 1268 0230 347B09ED 		.long	3976821556
 1269 0234 25349E3F 		.long	1067332645
 1270 0238 347B09ED 		.long	3976821556
 1271 023c 25349E3F 		.long	1067332645
 1272              		.align 32
 1273              	.LC20:
 1274 0240 B0B4DA85 		.long	2245702832
 1275 0244 A680D23F 		.long	1070760102
 1276 0248 B0B4DA85 		.long	2245702832
 1277 024c A680D23F 		.long	1070760102
 1278 0250 B0B4DA85 		.long	2245702832
 1279 0254 A680D23F 		.long	1070760102
 1280 0258 B0B4DA85 		.long	2245702832
 1281 025c A680D23F 		.long	1070760102
 1282              		.align 32
 1283              	.LC21:
 1284 0260 27691676 		.long	1981180199
 1285 0264 9FEFCA3F 		.long	1070264223
 1286 0268 27691676 		.long	1981180199
 1287 026c 9FEFCA3F 		.long	1070264223
 1288 0270 27691676 		.long	1981180199
 1289 0274 9FEFCA3F 		.long	1070264223
 1290 0278 27691676 		.long	1981180199
 1291 027c 9FEFCA3F 		.long	1070264223
 1292              		.align 32
 1293              	.LC22:
 1294 0280 7EB22B2E 		.long	774615678
 1295 0284 D0C3D93F 		.long	1071236048
 1296 0288 7EB22B2E 		.long	774615678
 1297 028c D0C3D93F 		.long	1071236048
 1298 0290 7EB22B2E 		.long	774615678
 1299 0294 D0C3D93F 		.long	1071236048
 1300 0298 7EB22B2E 		.long	774615678
 1301 029c D0C3D93F 		.long	1071236048
 1302              		.align 32
 1303              	.LC23:
 1304 02a0 E890B943 		.long	1136234728
 1305 02a4 E60EB93F 		.long	1069092582
 1306 02a8 E890B943 		.long	1136234728
 1307 02ac E60EB93F 		.long	1069092582
 1308 02b0 E890B943 		.long	1136234728
 1309 02b4 E60EB93F 		.long	1069092582
 1310 02b8 E890B943 		.long	1136234728
 1311 02bc E60EB93F 		.long	1069092582
 1312              		.align 32
 1313              	.LC24:
 1314 02c0 48A5D52E 		.long	785753416
 1315 02c4 3405A4BF 		.long	-1079769804
 1316 02c8 48A5D52E 		.long	785753416
 1317 02cc 3405A4BF 		.long	-1079769804
GAS LISTING /tmp/ccwFkTOd.s 			page 40


 1318 02d0 48A5D52E 		.long	785753416
 1319 02d4 3405A4BF 		.long	-1079769804
 1320 02d8 48A5D52E 		.long	785753416
 1321 02dc 3405A4BF 		.long	-1079769804
 1322              		.align 32
 1323              	.LC25:
 1324 02e0 82244992 		.long	2454267010
 1325 02e4 24C9933F 		.long	1066649892
 1326 02e8 82244992 		.long	2454267010
 1327 02ec 24C9933F 		.long	1066649892
 1328 02f0 82244992 		.long	2454267010
 1329 02f4 24C9933F 		.long	1066649892
 1330 02f8 82244992 		.long	2454267010
 1331 02fc 24C9933F 		.long	1066649892
 1332              		.align 32
 1333              	.LC26:
 1334 0300 06F37686 		.long	2255942406
 1335 0304 C47CA13F 		.long	1067547844
 1336 0308 06F37686 		.long	2255942406
 1337 030c C47CA13F 		.long	1067547844
 1338 0310 06F37686 		.long	2255942406
 1339 0314 C47CA13F 		.long	1067547844
 1340 0318 06F37686 		.long	2255942406
 1341 031c C47CA13F 		.long	1067547844
 1342              		.align 32
 1343              	.LC27:
 1344 0320 1A55F19A 		.long	2599507226
 1345 0324 DB1D93BF 		.long	-1080877605
 1346 0328 1A55F19A 		.long	2599507226
 1347 032c DB1D93BF 		.long	-1080877605
 1348 0330 1A55F19A 		.long	2599507226
 1349 0334 DB1D93BF 		.long	-1080877605
 1350 0338 1A55F19A 		.long	2599507226
 1351 033c DB1D93BF 		.long	-1080877605
 1352              		.align 32
 1353              	.LC28:
 1354 0340 64599665 		.long	1704352100
 1355 0344 5996713F 		.long	1064408665
 1356 0348 64599665 		.long	1704352100
 1357 034c 5996713F 		.long	1064408665
 1358 0350 64599665 		.long	1704352100
 1359 0354 5996713F 		.long	1064408665
 1360 0358 64599665 		.long	1704352100
 1361 035c 5996713F 		.long	1064408665
 1362              		.align 32
 1363              	.LC29:
 1364 0360 95D626E8 		.long	3894859413
 1365 0364 0B2E113E 		.long	1041313291
 1366 0368 95D626E8 		.long	3894859413
 1367 036c 0B2E113E 		.long	1041313291
 1368 0370 95D626E8 		.long	3894859413
 1369 0374 0B2E113E 		.long	1041313291
 1370 0378 95D626E8 		.long	3894859413
 1371 037c 0B2E113E 		.long	1041313291
 1372              		.section	.rodata.cst16,"aM",@progbits,16
 1373              		.align 16
 1374              	.LC30:
GAS LISTING /tmp/ccwFkTOd.s 			page 41


 1375 0000 FFFFFFFF 		.quad	4503599627370495
 1375      FFFF0F00 
 1376 0008 FFFFFFFF 		.quad	4503599627370495
 1376      FFFF0F00 
 1377              		.align 16
 1378              	.LC31:
 1379 0010 00000000 		.quad	4602678819172646912
 1379      0000E03F 
 1380 0018 00000000 		.quad	4602678819172646912
 1380      0000E03F 
 1381              		.align 16
 1382              	.LC32:
 1383 0020 00000000 		.quad	4841369599423283200
 1383      00003043 
 1384 0028 00000000 		.quad	4841369599423283200
 1384      00003043 
 1385              		.section	.rodata.cst32
 1386              		.align 32
 1387              	.LC33:
 1388 0380 FF030000 		.long	1023
 1389 0384 00003043 		.long	1127219200
 1390 0388 FF030000 		.long	1023
 1391 038c 00003043 		.long	1127219200
 1392 0390 FF030000 		.long	1023
 1393 0394 00003043 		.long	1127219200
 1394 0398 FF030000 		.long	1023
 1395 039c 00003043 		.long	1127219200
 1396              		.align 32
 1397              	.LC34:
 1398 03a0 CD3B7F66 		.long	1719614413
 1399 03a4 9EA0E63F 		.long	1072079006
 1400 03a8 CD3B7F66 		.long	1719614413
 1401 03ac 9EA0E63F 		.long	1072079006
 1402 03b0 CD3B7F66 		.long	1719614413
 1403 03b4 9EA0E63F 		.long	1072079006
 1404 03b8 CD3B7F66 		.long	1719614413
 1405 03bc 9EA0E63F 		.long	1072079006
 1406              		.section	.rodata.cst16
 1407              		.align 16
 1408              	.LC35:
 1409 0030 FFFFFFFF 		.long	4294967295
 1410 0034 FFFFFFFF 		.long	-1
 1411 0038 FFFFFFFF 		.long	4294967295
 1412 003c FFFFFFFF 		.long	-1
 1413              		.section	.rodata.cst32
 1414              		.align 32
 1415              	.LC36:
 1416 03c0 00000000 		.long	0
 1417 03c4 0000F03F 		.long	1072693248
 1418 03c8 00000000 		.long	0
 1419 03cc 0000F03F 		.long	1072693248
 1420 03d0 00000000 		.long	0
 1421 03d4 0000F03F 		.long	1072693248
 1422 03d8 00000000 		.long	0
 1423 03dc 0000F03F 		.long	1072693248
 1424              		.align 32
 1425              	.LC37:
GAS LISTING /tmp/ccwFkTOd.s 			page 42


 1426 03e0 4DC84B92 		.long	2454440013
 1427 03e4 D6EF3140 		.long	1077014486
 1428 03e8 4DC84B92 		.long	2454440013
 1429 03ec D6EF3140 		.long	1077014486
 1430 03f0 4DC84B92 		.long	2454440013
 1431 03f4 D6EF3140 		.long	1077014486
 1432 03f8 4DC84B92 		.long	2454440013
 1433 03fc D6EF3140 		.long	1077014486
 1434              		.align 32
 1435              	.LC38:
 1436 0400 F8DC7E7D 		.long	2105466104
 1437 0404 63D51E40 		.long	1075762531
 1438 0408 F8DC7E7D 		.long	2105466104
 1439 040c 63D51E40 		.long	1075762531
 1440 0410 F8DC7E7D 		.long	2105466104
 1441 0414 63D51E40 		.long	1075762531
 1442 0418 F8DC7E7D 		.long	2105466104
 1443 041c 63D51E40 		.long	1075762531
 1444              		.align 32
 1445              	.LC39:
 1446 0420 B01BC393 		.long	2479037360
 1447 0424 C2B41A3F 		.long	1058714818
 1448 0428 B01BC393 		.long	2479037360
 1449 042c C2B41A3F 		.long	1058714818
 1450 0430 B01BC393 		.long	2479037360
 1451 0434 C2B41A3F 		.long	1058714818
 1452 0438 B01BC393 		.long	2479037360
 1453 043c C2B41A3F 		.long	1058714818
 1454              		.align 32
 1455              	.LC40:
 1456 0440 F252563F 		.long	1062621938
 1457 0444 F5D6DF3F 		.long	1071634165
 1458 0448 F252563F 		.long	1062621938
 1459 044c F5D6DF3F 		.long	1071634165
 1460 0450 F252563F 		.long	1062621938
 1461 0454 F5D6DF3F 		.long	1071634165
 1462 0458 F252563F 		.long	1062621938
 1463 045c F5D6DF3F 		.long	1071634165
 1464              		.align 32
 1465              	.LC41:
 1466 0460 116992ED 		.long	3985795345
 1467 0464 BAD21240 		.long	1074975418
 1468 0468 116992ED 		.long	3985795345
 1469 046c BAD21240 		.long	1074975418
 1470 0470 116992ED 		.long	3985795345
 1471 0474 BAD21240 		.long	1074975418
 1472 0478 116992ED 		.long	3985795345
 1473 047c BAD21240 		.long	1074975418
 1474              		.align 32
 1475              	.LC42:
 1476 0480 2EEB3EC6 		.long	3326012206
 1477 0484 72FF2C40 		.long	1076690802
 1478 0488 2EEB3EC6 		.long	3326012206
 1479 048c 72FF2C40 		.long	1076690802
 1480 0490 2EEB3EC6 		.long	3326012206
 1481 0494 72FF2C40 		.long	1076690802
 1482 0498 2EEB3EC6 		.long	3326012206
GAS LISTING /tmp/ccwFkTOd.s 			page 43


 1483 049c 72FF2C40 		.long	1076690802
 1484              		.align 32
 1485              	.LC43:
 1486 04a0 21AE5EEB 		.long	3948850721
 1487 04a4 E2C95140 		.long	1079101922
 1488 04a8 21AE5EEB 		.long	3948850721
 1489 04ac E2C95140 		.long	1079101922
 1490 04b0 21AE5EEB 		.long	3948850721
 1491 04b4 E2C95140 		.long	1079101922
 1492 04b8 21AE5EEB 		.long	3948850721
 1493 04bc E2C95140 		.long	1079101922
 1494              		.align 32
 1495              	.LC44:
 1496 04c0 B2251F9E 		.long	2652841394
 1497 04c4 0A203740 		.long	1077354506
 1498 04c8 B2251F9E 		.long	2652841394
 1499 04cc 0A203740 		.long	1077354506
 1500 04d0 B2251F9E 		.long	2652841394
 1501 04d4 0A203740 		.long	1077354506
 1502 04d8 B2251F9E 		.long	2652841394
 1503 04dc 0A203740 		.long	1077354506
 1504              		.align 32
 1505              	.LC45:
 1506 04e0 8EEF97AE 		.long	2929192846
 1507 04e4 20932640 		.long	1076269856
 1508 04e8 8EEF97AE 		.long	2929192846
 1509 04ec 20932640 		.long	1076269856
 1510 04f0 8EEF97AE 		.long	2929192846
 1511 04f4 20932640 		.long	1076269856
 1512 04f8 8EEF97AE 		.long	2929192846
 1513 04fc 20932640 		.long	1076269856
 1514              		.align 32
 1515              	.LC46:
 1516 0500 33C0194E 		.long	1310310451
 1517 0504 2C9D4640 		.long	1078369580
 1518 0508 33C0194E 		.long	1310310451
 1519 050c 2C9D4640 		.long	1078369580
 1520 0510 33C0194E 		.long	1310310451
 1521 0514 2C9D4640 		.long	1078369580
 1522 0518 33C0194E 		.long	1310310451
 1523 051c 2C9D4640 		.long	1078369580
 1524              		.align 32
 1525              	.LC47:
 1526 0520 BDBD26A3 		.long	2737225149
 1527 0524 33BF5440 		.long	1079295795
 1528 0528 BDBD26A3 		.long	2737225149
 1529 052c 33BF5440 		.long	1079295795
 1530 0530 BDBD26A3 		.long	2737225149
 1531 0534 33BF5440 		.long	1079295795
 1532 0538 BDBD26A3 		.long	2737225149
 1533 053c 33BF5440 		.long	1079295795
 1534              		.align 32
 1535              	.LC48:
 1536 0540 A80C615C 		.long	1549864104
 1537 0544 10D02BBF 		.long	-1087647728
 1538 0548 A80C615C 		.long	1549864104
 1539 054c 10D02BBF 		.long	-1087647728
GAS LISTING /tmp/ccwFkTOd.s 			page 44


 1540 0550 A80C615C 		.long	1549864104
 1541 0554 10D02BBF 		.long	-1087647728
 1542 0558 A80C615C 		.long	1549864104
 1543 055c 10D02BBF 		.long	-1087647728
 1544              		.align 32
 1545              	.LC49:
 1546 0560 00000000 		.long	0
 1547 0564 0000E03F 		.long	1071644672
 1548 0568 00000000 		.long	0
 1549 056c 0000E03F 		.long	1071644672
 1550 0570 00000000 		.long	0
 1551 0574 0000E03F 		.long	1071644672
 1552 0578 00000000 		.long	0
 1553 057c 0000E03F 		.long	1071644672
 1554              		.align 32
 1555              	.LC50:
 1556 0580 00000000 		.long	0
 1557 0584 0030E63F 		.long	1072050176
 1558 0588 00000000 		.long	0
 1559 058c 0030E63F 		.long	1072050176
 1560 0590 00000000 		.long	0
 1561 0594 0030E63F 		.long	1072050176
 1562 0598 00000000 		.long	0
 1563 059c 0030E63F 		.long	1072050176
 1564              		.section	.rodata.cst16
 1565              		.align 16
 1566              	.LC51:
 1567 0040 00000000 		.quad	-9007199254740992
 1567      0000E0FF 
 1568 0048 00000000 		.quad	-9007199254740992
 1568      0000E0FF 
 1569              		.section	.rodata.cst32
 1570              		.align 32
 1571              	.LC52:
 1572 05a0 00000000 		.long	0
 1573 05a4 00001000 		.long	1048576
 1574 05a8 00000000 		.long	0
 1575 05ac 00001000 		.long	1048576
 1576 05b0 00000000 		.long	0
 1577 05b4 00001000 		.long	1048576
 1578 05b8 00000000 		.long	0
 1579 05bc 00001000 		.long	1048576
 1580              		.align 32
 1581              	.LC53:
 1582 05c0 00000020 		.long	536870912
 1583 05c4 2000F87F 		.long	2146959392
 1584 05c8 00000020 		.long	536870912
 1585 05cc 2000F87F 		.long	2146959392
 1586 05d0 00000020 		.long	536870912
 1587 05d4 2000F87F 		.long	2146959392
 1588 05d8 00000020 		.long	536870912
 1589 05dc 2000F87F 		.long	2146959392
 1590              		.section	.rodata.cst16
 1591              		.align 16
 1592              	.LC54:
 1593 0050 00000000 		.long	0
 1594 0054 0000F07F 		.long	2146435072
GAS LISTING /tmp/ccwFkTOd.s 			page 45


 1595 0058 00000000 		.long	0
 1596 005c 0000F07F 		.long	2146435072
 1597              		.align 16
 1598              	.LC55:
 1599 0060 00000000 		.quad	9218868437227405312
 1599      0000F07F 
 1600 0068 00000000 		.quad	9218868437227405312
 1600      0000F07F 
 1601              		.section	.rodata.cst32
 1602              		.align 32
 1603              	.LC56:
 1604 05e0 FE822B65 		.long	1697350398
 1605 05e4 4715F73F 		.long	1073157447
 1606 05e8 FE822B65 		.long	1697350398
 1607 05ec 4715F73F 		.long	1073157447
 1608 05f0 FE822B65 		.long	1697350398
 1609 05f4 4715F73F 		.long	1073157447
 1610 05f8 FE822B65 		.long	1697350398
 1611 05fc 4715F73F 		.long	1073157447
 1612              		.align 32
 1613              	.LC57:
 1614 0600 00000000 		.long	0
 1615 0604 402EE63F 		.long	1072049728
 1616 0608 00000000 		.long	0
 1617 060c 402EE63F 		.long	1072049728
 1618 0610 00000000 		.long	0
 1619 0614 402EE63F 		.long	1072049728
 1620 0618 00000000 		.long	0
 1621 061c 402EE63F 		.long	1072049728
 1622              		.align 32
 1623              	.LC58:
 1624 0620 CAAB79CF 		.long	3480857546
 1625 0624 D1F7B73E 		.long	1052243921
 1626 0628 CAAB79CF 		.long	3480857546
 1627 062c D1F7B73E 		.long	1052243921
 1628 0630 CAAB79CF 		.long	3480857546
 1629 0634 D1F7B73E 		.long	1052243921
 1630 0638 CAAB79CF 		.long	3480857546
 1631 063c D1F7B73E 		.long	1052243921
 1632              		.align 32
 1633              	.LC59:
 1634 0640 55555555 		.long	1431655765
 1635 0644 5555C53F 		.long	1069897045
 1636 0648 55555555 		.long	1431655765
 1637 064c 5555C53F 		.long	1069897045
 1638 0650 55555555 		.long	1431655765
 1639 0654 5555C53F 		.long	1069897045
 1640 0658 55555555 		.long	1431655765
 1641 065c 5555C53F 		.long	1069897045
 1642              		.align 32
 1643              	.LC60:
 1644 0660 11111111 		.long	286331153
 1645 0664 1111813F 		.long	1065423121
 1646 0668 11111111 		.long	286331153
 1647 066c 1111813F 		.long	1065423121
 1648 0670 11111111 		.long	286331153
 1649 0674 1111813F 		.long	1065423121
GAS LISTING /tmp/ccwFkTOd.s 			page 46


 1650 0678 11111111 		.long	286331153
 1651 067c 1111813F 		.long	1065423121
 1652              		.align 32
 1653              	.LC61:
 1654 0680 55555555 		.long	1431655765
 1655 0684 5555A53F 		.long	1067799893
 1656 0688 55555555 		.long	1431655765
 1657 068c 5555A53F 		.long	1067799893
 1658 0690 55555555 		.long	1431655765
 1659 0694 5555A53F 		.long	1067799893
 1660 0698 55555555 		.long	1431655765
 1661 069c 5555A53F 		.long	1067799893
 1662              		.align 32
 1663              	.LC62:
 1664 06a0 1AA0011A 		.long	436314138
 1665 06a4 A0012A3F 		.long	1059717536
 1666 06a8 1AA0011A 		.long	436314138
 1667 06ac A0012A3F 		.long	1059717536
 1668 06b0 1AA0011A 		.long	436314138
 1669 06b4 A0012A3F 		.long	1059717536
 1670 06b8 1AA0011A 		.long	436314138
 1671 06bc A0012A3F 		.long	1059717536
 1672              		.align 32
 1673              	.LC63:
 1674 06c0 176CC116 		.long	381774871
 1675 06c4 6CC1563F 		.long	1062650220
 1676 06c8 176CC116 		.long	381774871
 1677 06cc 6CC1563F 		.long	1062650220
 1678 06d0 176CC116 		.long	381774871
 1679 06d4 6CC1563F 		.long	1062650220
 1680 06d8 176CC116 		.long	381774871
 1681 06dc 6CC1563F 		.long	1062650220
 1682              		.align 32
 1683              	.LC64:
 1684 06e0 34C756A5 		.long	2773927732
 1685 06e4 E31DC73E 		.long	1053236707
 1686 06e8 34C756A5 		.long	2773927732
 1687 06ec E31DC73E 		.long	1053236707
 1688 06f0 34C756A5 		.long	2773927732
 1689 06f4 E31DC73E 		.long	1053236707
 1690 06f8 34C756A5 		.long	2773927732
 1691 06fc E31DC73E 		.long	1053236707
 1692              		.align 32
 1693              	.LC65:
 1694 0700 1AA0011A 		.long	436314138
 1695 0704 A001FA3E 		.long	1056571808
 1696 0708 1AA0011A 		.long	436314138
 1697 070c A001FA3E 		.long	1056571808
 1698 0710 1AA0011A 		.long	436314138
 1699 0714 A001FA3E 		.long	1056571808
 1700 0718 1AA0011A 		.long	436314138
 1701 071c A001FA3E 		.long	1056571808
 1702              		.align 32
 1703              	.LC66:
 1704 0720 E444F567 		.long	1744127204
 1705 0724 45E65A3E 		.long	1046144581
 1706 0728 E444F567 		.long	1744127204
GAS LISTING /tmp/ccwFkTOd.s 			page 47


 1707 072c 45E65A3E 		.long	1046144581
 1708 0730 E444F567 		.long	1744127204
 1709 0734 45E65A3E 		.long	1046144581
 1710 0738 E444F567 		.long	1744127204
 1711 073c 45E65A3E 		.long	1046144581
 1712              		.align 32
 1713              	.LC67:
 1714 0740 5C9F78B7 		.long	3078135644
 1715 0744 4F7E923E 		.long	1049787983
 1716 0748 5C9F78B7 		.long	3078135644
 1717 074c 4F7E923E 		.long	1049787983
 1718 0750 5C9F78B7 		.long	3078135644
 1719 0754 4F7E923E 		.long	1049787983
 1720 0758 5C9F78B7 		.long	3078135644
 1721 075c 4F7E923E 		.long	1049787983
 1722              		.align 32
 1723              	.LC68:
 1724 0760 096DA813 		.long	329805065
 1725 0764 4612E63D 		.long	1038488134
 1726 0768 096DA813 		.long	329805065
 1727 076c 4612E63D 		.long	1038488134
 1728 0770 096DA813 		.long	329805065
 1729 0774 4612E63D 		.long	1038488134
 1730 0778 096DA813 		.long	329805065
 1731 077c 4612E63D 		.long	1038488134
 1732              		.align 32
 1733              	.LC69:
 1734 0780 98D8F8EF 		.long	4026063000
 1735 0784 D8EE213E 		.long	1042411224
 1736 0788 98D8F8EF 		.long	4026063000
 1737 078c D8EE213E 		.long	1042411224
 1738 0790 98D8F8EF 		.long	4026063000
 1739 0794 D8EE213E 		.long	1042411224
 1740 0798 98D8F8EF 		.long	4026063000
 1741 079c D8EE213E 		.long	1042411224
 1742              		.align 32
 1743              	.LC70:
 1744 07a0 85EB51B8 		.long	3092376453
 1745 07a4 1E238640 		.long	1082532638
 1746 07a8 85EB51B8 		.long	3092376453
 1747 07ac 1E238640 		.long	1082532638
 1748 07b0 85EB51B8 		.long	3092376453
 1749 07b4 1E238640 		.long	1082532638
 1750 07b8 85EB51B8 		.long	3092376453
 1751 07bc 1E238640 		.long	1082532638
 1752              		.align 32
 1753              	.LC71:
 1754 07c0 2D431CEB 		.long	3944497965
 1755 07c4 E2361A3F 		.long	1058682594
 1756 07c8 2D431CEB 		.long	3944497965
 1757 07cc E2361A3F 		.long	1058682594
 1758 07d0 2D431CEB 		.long	3944497965
 1759 07d4 E2361A3F 		.long	1058682594
 1760 07d8 2D431CEB 		.long	3944497965
 1761 07dc E2361A3F 		.long	1058682594
 1762              		.align 32
 1763              	.LC72:
GAS LISTING /tmp/ccwFkTOd.s 			page 48


 1764 07e0 00000000 		.long	0
 1765 07e4 00001440 		.long	1075052544
 1766 07e8 00000000 		.long	0
 1767 07ec 00001440 		.long	1075052544
 1768 07f0 00000000 		.long	0
 1769 07f4 00001440 		.long	1075052544
 1770 07f8 00000000 		.long	0
 1771 07fc 00001440 		.long	1075052544
 1772              		.align 32
 1773              	.LC73:
 1774 0800 9A999999 		.long	2576980378
 1775 0804 9999E93F 		.long	1072273817
 1776 0808 9A999999 		.long	2576980378
 1777 080c 9999E93F 		.long	1072273817
 1778 0810 9A999999 		.long	2576980378
 1779 0814 9999E93F 		.long	1072273817
 1780 0818 9A999999 		.long	2576980378
 1781 081c 9999E93F 		.long	1072273817
 1782              		.align 32
 1783              	.LC74:
 1784 0820 00000000 		.long	0
 1785 0824 00408F40 		.long	1083129856
 1786 0828 00000000 		.long	0
 1787 082c 00408F40 		.long	1083129856
 1788 0830 00000000 		.long	0
 1789 0834 00408F40 		.long	1083129856
 1790 0838 00000000 		.long	0
 1791 083c 00408F40 		.long	1083129856
 1792              		.align 32
 1793              	.LC75:
 1794 0840 00000000 		.long	0
 1795 0844 00005940 		.long	1079574528
 1796 0848 00000000 		.long	0
 1797 084c 00005940 		.long	1079574528
 1798 0850 00000000 		.long	0
 1799 0854 00005940 		.long	1079574528
 1800 0858 00000000 		.long	0
 1801 085c 00005940 		.long	1079574528
 1802              		.section	.rodata.cst16
 1803              		.align 16
 1804              	.LC82:
 1805 0070 FFFFFFFF 		.quad	-1
 1805      FFFFFFFF 
 1806 0078 FFFFFFFF 		.quad	-1
 1806      FFFFFFFF 
 1807              		.hidden	__dso_handle
 1808              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1809              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccwFkTOd.s 			page 49


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccwFkTOd.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccwFkTOd.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccwFkTOd.s:87     .text.startup:0000000000000000 main
     /tmp/ccwFkTOd.s:1074   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccwFkTOd.s:1062   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccwFkTOd.s:1039   .text.startup:0000000000001700 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccwFkTOd.s:1097   .rodata.cst32:0000000000000020 .LC1
     /tmp/ccwFkTOd.s:1108   .rodata.cst8:0000000000000000 .LC2
     /tmp/ccwFkTOd.s:1592   .rodata.cst16:0000000000000050 .LC54
     /tmp/ccwFkTOd.s:1087   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccwFkTOd.s:1113   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccwFkTOd.s:1123   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccwFkTOd.s:1143   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccwFkTOd.s:1133   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccwFkTOd.s:1173   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccwFkTOd.s:1153   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccwFkTOd.s:1163   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccwFkTOd.s:1193   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccwFkTOd.s:1183   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccwFkTOd.s:1203   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccwFkTOd.s:1213   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccwFkTOd.s:1223   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccwFkTOd.s:1243   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccwFkTOd.s:1233   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccwFkTOd.s:1263   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccwFkTOd.s:1253   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccwFkTOd.s:1273   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccwFkTOd.s:1283   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccwFkTOd.s:1293   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccwFkTOd.s:1303   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccwFkTOd.s:1313   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccwFkTOd.s:1323   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccwFkTOd.s:1343   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccwFkTOd.s:1333   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccwFkTOd.s:1353   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccwFkTOd.s:1363   .rodata.cst32:0000000000000360 .LC29
     /tmp/ccwFkTOd.s:1397   .rodata.cst32:00000000000003a0 .LC34
     /tmp/ccwFkTOd.s:1374   .rodata.cst16:0000000000000000 .LC30
     /tmp/ccwFkTOd.s:1382   .rodata.cst16:0000000000000020 .LC32
     /tmp/ccwFkTOd.s:1378   .rodata.cst16:0000000000000010 .LC31
     /tmp/ccwFkTOd.s:1415   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccwFkTOd.s:1408   .rodata.cst16:0000000000000030 .LC35
     /tmp/ccwFkTOd.s:1387   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccwFkTOd.s:1445   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccwFkTOd.s:1425   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccwFkTOd.s:1465   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccwFkTOd.s:1455   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccwFkTOd.s:1435   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccwFkTOd.s:1475   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccwFkTOd.s:1485   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccwFkTOd.s:1495   .rodata.cst32:00000000000004c0 .LC44
     /tmp/ccwFkTOd.s:1505   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccwFkTOd.s:1515   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccwFkTOd.s:1525   .rodata.cst32:0000000000000520 .LC47
GAS LISTING /tmp/ccwFkTOd.s 			page 50


     /tmp/ccwFkTOd.s:1545   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccwFkTOd.s:1535   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccwFkTOd.s:1555   .rodata.cst32:0000000000000580 .LC50
     /tmp/ccwFkTOd.s:1566   .rodata.cst16:0000000000000040 .LC51
     /tmp/ccwFkTOd.s:1804   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccwFkTOd.s:1571   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccwFkTOd.s:1581   .rodata.cst32:00000000000005c0 .LC53
     /tmp/ccwFkTOd.s:1598   .rodata.cst16:0000000000000060 .LC55
     /tmp/ccwFkTOd.s:1603   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccwFkTOd.s:1613   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccwFkTOd.s:1623   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccwFkTOd.s:1663   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccwFkTOd.s:1633   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccwFkTOd.s:1643   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccwFkTOd.s:1673   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccwFkTOd.s:1653   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccwFkTOd.s:1683   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccwFkTOd.s:1693   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccwFkTOd.s:1703   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccwFkTOd.s:1713   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccwFkTOd.s:1723   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccwFkTOd.s:1733   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccwFkTOd.s:1743   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccwFkTOd.s:1753   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccwFkTOd.s:1763   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccwFkTOd.s:1783   .rodata.cst32:0000000000000820 .LC74
     /tmp/ccwFkTOd.s:1773   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccwFkTOd.s:1793   .rodata.cst32:0000000000000840 .LC75

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
