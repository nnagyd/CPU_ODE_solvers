GAS LISTING /tmp/ccfQIiPr.s 			page 1


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
GAS LISTING /tmp/ccfQIiPr.s 			page 2


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
GAS LISTING /tmp/ccfQIiPr.s 			page 3


  97 0011 4155     		pushq	%r13
  98 0013 4154     		pushq	%r12
  99 0015 53       		pushq	%rbx
 100 0016 4883E4E0 		andq	$-32, %rsp
 101 001a 4881EC80 		subq	$3456, %rsp
 101      0D0000
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
 121 009d C5FD29A4 		vmovapd	%ymm4, 768(%rsp)
 121      24000300 
 121      00
 122 00a6 C5FD29A4 		vmovapd	%ymm4, 800(%rsp)
 122      24200300 
 122      00
GAS LISTING /tmp/ccfQIiPr.s 			page 4


 123 00af C5FD29A4 		vmovapd	%ymm4, 832(%rsp)
 123      24400300 
 123      00
 124 00b8 C5FD29A4 		vmovapd	%ymm4, 864(%rsp)
 124      24600300 
 124      00
 125 00c1 C5FD29A4 		vmovapd	%ymm4, 896(%rsp)
 125      24800300 
 125      00
 126 00ca C5FD29A4 		vmovapd	%ymm4, 928(%rsp)
 126      24A00300 
 126      00
 127 00d3 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 127      24200100 
 127      00
 128 00dc C5F877   		vzeroupper
 129 00df 4C8DB424 		leaq	3264(%rsp), %r14
 129      C00C0000 
 130 00e7 E8000000 		call	_Z8linspaceddi
 130      00
 131 00ec 4889C3   		movq	%rax, %rbx
 132 00ef 4C8DAC24 		leaq	2688(%rsp), %r13
 132      800A0000 
 133 00f7 4C8DBC24 		leaq	1536(%rsp), %r15
 133      00060000 
 134 00ff E8000000 		call	clock
 134      00
 135 0104 4989DC   		movq	%rbx, %r12
 136 0107 C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 136      00000000 
 137 010f 488D9C24 		leaq	2112(%rsp), %rbx
 137      40080000 
 138 0117 C5FD2815 		vmovapd	.LC4(%rip), %ymm2
 138      00000000 
 139 011f 48898424 		movq	%rax, 336(%rsp)
 139      50010000 
 140 0127 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 140      00000000 
 141 012f C784245C 		movl	$0, 348(%rsp)
 141      01000000 
 141      000000
 142 013a C5FD283D 		vmovapd	.LC6(%rip), %ymm7
 142      00000000 
 143 0142 C5FD2835 		vmovapd	.LC7(%rip), %ymm6
 143      00000000 
 144 014a C5FD28A4 		vmovapd	288(%rsp), %ymm4
 144      24200100 
 144      00
 145              	.L12:
 146 0153 C4C17D28 		vmovapd	(%r12), %ymm0
 146      0424
 147 0159 B9480000 		movl	$72, %ecx
 147      00
 148 015e 488DBC24 		leaq	2112(%rsp), %rdi
 148      40080000 
 149 0166 488DB424 		leaq	384(%rsp), %rsi
 149      80010000 
GAS LISTING /tmp/ccfQIiPr.s 			page 5


 150 016e BA102700 		movl	$10000, %edx
 150      00
 151 0173 C5FD2984 		vmovapd	%ymm0, 3264(%rsp)
 151      24C00C00 
 151      00
 152 017c C4C17D28 		vmovapd	32(%r12), %ymm0
 152      442420
 153 0183 F348A5   		rep movsq
 154 0186 C5FD2984 		vmovapd	%ymm0, 3296(%rsp)
 154      24E00C00 
 154      00
 155 018f C4C17D28 		vmovapd	64(%r12), %ymm0
 155      442440
 156 0196 C5FD2984 		vmovapd	%ymm0, 3328(%rsp)
 156      24000D00 
 156      00
 157 019f C4C17D28 		vmovapd	96(%r12), %ymm0
 157      442460
 158 01a6 C5FD2984 		vmovapd	%ymm0, 3360(%rsp)
 158      24200D00 
 158      00
 159 01af C4C17D28 		vmovapd	128(%r12), %ymm0
 159      84248000 
 159      0000
 160 01b9 C5FD2984 		vmovapd	%ymm0, 3392(%rsp)
 160      24400D00 
 160      00
 161 01c2 C4C17D28 		vmovapd	160(%r12), %ymm0
 161      8424A000 
 161      0000
 162 01cc C5FD2984 		vmovapd	%ymm0, 3424(%rsp)
 162      24600D00 
 162      00
 163              		.p2align 4,,10
 164 01d5 0F1F00   		.p2align 3
 165              	.L35:
 166 01d8 4889D8   		movq	%rbx, %rax
 167 01db 4C89F1   		movq	%r14, %rcx
 168 01de 6690     		.p2align 4,,10
 169              		.p2align 3
 170              	.L29:
 171 01e0 C5FD2800 		vmovapd	(%rax), %ymm0
 172 01e4 4883C060 		addq	$96, %rax
 173 01e8 4883C120 		addq	$32, %rcx
 174 01ec C5FD2858 		vmovapd	-64(%rax), %ymm3
 174      C0
 175 01f1 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 175      E0
 176 01f6 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 177 01fa C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 177      C0
 178 01ff C57D2980 		vmovapd	%ymm8, -1248(%rax)
 178      20FBFFFF 
 179 0207 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 179      E0
 180 020c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 181 0210 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
GAS LISTING /tmp/ccfQIiPr.s 			page 6


 182 0214 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 182      C1
 183 0219 C57D2980 		vmovapd	%ymm8, -1216(%rax)
 183      40FBFFFF 
 184 0221 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 184      E0
 185 0226 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 185      C0
 186 022b C5FD2980 		vmovapd	%ymm0, -1184(%rax)
 186      60FBFFFF 
 187 0233 4C39E8   		cmpq	%r13, %rax
 188 0236 75A8     		jne	.L29
 189 0238 488D8424 		leaq	960(%rsp), %rax
 189      C0030000 
 190              		.p2align 4,,10
 191              		.p2align 3
 192              	.L15:
 193 0240 C5FD2800 		vmovapd	(%rax), %ymm0
 194 0244 4883C020 		addq	$32, %rax
 195 0248 C5FD2980 		vmovapd	%ymm0, 544(%rax)
 195      20020000 
 196 0250 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 197 0254 C5FD5880 		vaddpd	1120(%rax), %ymm0, %ymm0
 197      60040000 
 198 025c C5FD2980 		vmovapd	%ymm0, 1696(%rax)
 198      A0060000 
 199 0264 4C39F8   		cmpq	%r15, %rax
 200 0267 75D7     		jne	.L15
 201 0269 4C89F1   		movq	%r14, %rcx
 202 026c 4C89E8   		movq	%r13, %rax
 203 026f 90       		.p2align 4,,10
 204              		.p2align 3
 205              	.L17:
 206 0270 C5FD2800 		vmovapd	(%rax), %ymm0
 207 0274 4883C060 		addq	$96, %rax
 208 0278 4883C120 		addq	$32, %rcx
 209 027c C5FD2858 		vmovapd	-64(%rax), %ymm3
 209      C0
 210 0281 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 210      E0
 211 0286 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 212 028a C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 212      C0
 213 028f C57D2980 		vmovapd	%ymm8, -1824(%rax)
 213      E0F8FFFF 
 214 0297 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 214      E0
 215 029c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 216 02a0 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 217 02a4 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 217      C1
 218 02a9 C57D2980 		vmovapd	%ymm8, -1792(%rax)
 218      00F9FFFF 
 219 02b1 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 219      E0
 220 02b6 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 220      C0
GAS LISTING /tmp/ccfQIiPr.s 			page 7


 221 02bb C5FD2980 		vmovapd	%ymm0, -1760(%rax)
 221      20F9FFFF 
 222 02c3 4C39F0   		cmpq	%r14, %rax
 223 02c6 75A8     		jne	.L17
 224 02c8 4C89F8   		movq	%r15, %rax
 225 02cb 0F1F4400 		.p2align 4,,10
 225      00
 226              		.p2align 3
 227              	.L19:
 228 02d0 C5FD2880 		vmovapd	-576(%rax), %ymm0
 228      C0FDFFFF 
 229 02d8 4883C020 		addq	$32, %rax
 230 02dc C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 231 02e0 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 232 02e4 C5E55858 		vaddpd	-32(%rax), %ymm3, %ymm3
 232      E0
 233 02e9 C5FD5880 		vaddpd	544(%rax), %ymm0, %ymm0
 233      20020000 
 234 02f1 C5FD2958 		vmovapd	%ymm3, -32(%rax)
 234      E0
 235 02f6 C5FD2980 		vmovapd	%ymm0, 1120(%rax)
 235      60040000 
 236 02fe 4839D8   		cmpq	%rbx, %rax
 237 0301 75CD     		jne	.L19
 238 0303 4C89F1   		movq	%r14, %rcx
 239 0306 4C89E8   		movq	%r13, %rax
 240 0309 0F1F8000 		.p2align 4,,10
 240      000000
 241              		.p2align 3
 242              	.L21:
 243 0310 C5FD2800 		vmovapd	(%rax), %ymm0
 244 0314 4883C060 		addq	$96, %rax
 245 0318 4883C120 		addq	$32, %rcx
 246 031c C5FD2858 		vmovapd	-64(%rax), %ymm3
 246      C0
 247 0321 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 247      E0
 248 0326 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 249 032a C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 249      C0
 250 032f C57D2980 		vmovapd	%ymm8, -1824(%rax)
 250      E0F8FFFF 
 251 0337 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 251      E0
 252 033c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 253 0340 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 254 0344 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 254      C1
 255 0349 C57D2980 		vmovapd	%ymm8, -1792(%rax)
 255      00F9FFFF 
 256 0351 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 256      E0
 257 0356 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 257      C0
 258 035b C5FD2980 		vmovapd	%ymm0, -1760(%rax)
 258      20F9FFFF 
 259 0363 4939C6   		cmpq	%rax, %r14
GAS LISTING /tmp/ccfQIiPr.s 			page 8


 260 0366 75A8     		jne	.L21
 261 0368 4C89F8   		movq	%r15, %rax
 262 036b 0F1F4400 		.p2align 4,,10
 262      00
 263              		.p2align 3
 264              	.L23:
 265 0370 C5FD2880 		vmovapd	-576(%rax), %ymm0
 265      C0FDFFFF 
 266 0378 4883C020 		addq	$32, %rax
 267 037c C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 268 0380 C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
 269 0384 C5E55858 		vaddpd	-32(%rax), %ymm3, %ymm3
 269      E0
 270 0389 C5FD5880 		vaddpd	544(%rax), %ymm0, %ymm0
 270      20020000 
 271 0391 C5FD2958 		vmovapd	%ymm3, -32(%rax)
 271      E0
 272 0396 C5FD2980 		vmovapd	%ymm0, 1120(%rax)
 272      60040000 
 273 039e 4839D8   		cmpq	%rbx, %rax
 274 03a1 75CD     		jne	.L23
 275 03a3 4C89F1   		movq	%r14, %rcx
 276 03a6 4C89E8   		movq	%r13, %rax
 277 03a9 0F1F8000 		.p2align 4,,10
 277      000000
 278              		.p2align 3
 279              	.L25:
 280 03b0 C5FD2800 		vmovapd	(%rax), %ymm0
 281 03b4 4883C060 		addq	$96, %rax
 282 03b8 4883C120 		addq	$32, %rcx
 283 03bc C5FD2858 		vmovapd	-64(%rax), %ymm3
 283      C0
 284 03c1 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 284      E0
 285 03c6 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 286 03ca C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 286      C0
 287 03cf C57D2980 		vmovapd	%ymm8, -1824(%rax)
 287      E0F8FFFF 
 288 03d7 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 288      E0
 289 03dc C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 290 03e0 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 291 03e4 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 291      C1
 292 03e9 C57D2980 		vmovapd	%ymm8, -1792(%rax)
 292      00F9FFFF 
 293 03f1 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 293      E0
 294 03f6 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 294      C0
 295 03fb C5FD2980 		vmovapd	%ymm0, -1760(%rax)
 295      20F9FFFF 
 296 0403 4939C6   		cmpq	%rax, %r14
 297 0406 75A8     		jne	.L25
 298 0408 4C89F8   		movq	%r15, %rax
 299 040b 0F1F4400 		.p2align 4,,10
GAS LISTING /tmp/ccfQIiPr.s 			page 9


 299      00
 300              		.p2align 3
 301              	.L27:
 302 0410 C5FD2800 		vmovapd	(%rax), %ymm0
 303 0414 4883C020 		addq	$32, %rax
 304 0418 C5FD5880 		vaddpd	-608(%rax), %ymm0, %ymm0
 304      A0FDFFFF 
 305 0420 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 305      E0
 306 0425 C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 307 0429 C5FD5880 		vaddpd	544(%rax), %ymm0, %ymm0
 307      20020000 
 308 0431 C5FD2980 		vmovapd	%ymm0, 544(%rax)
 308      20020000 
 309 0439 4839D8   		cmpq	%rbx, %rax
 310 043c 75D2     		jne	.L27
 311 043e 83EA01   		subl	$1, %edx
 312 0441 0F8591FD 		jne	.L35
 312      FFFF
 313 0447 8B84245C 		movl	348(%rsp), %eax
 313      010000
 314 044e 8BB4245C 		movl	348(%rsp), %esi
 314      010000
 315 0455 BAAD8BDB 		movl	$1759218605, %edx
 315      68
 316 045a F7EA     		imull	%edx
 317 045c 89F0     		movl	%esi, %eax
 318 045e C1F81F   		sarl	$31, %eax
 319 0461 C1FA0C   		sarl	$12, %edx
 320 0464 29C2     		subl	%eax, %edx
 321 0466 89F0     		movl	%esi, %eax
 322 0468 69D21027 		imull	$10000, %edx, %edx
 322      0000
 323 046e 29D0     		subl	%edx, %eax
 324 0470 83F801   		cmpl	$1, %eax
 325 0473 0F849700 		je	.L37
 325      0000
 326              	.L30:
 327 0479 8384245C 		addl	$24, 348(%rsp)
 327      01000018 
 328 0481 4981C4C0 		addq	$192, %r12
 328      000000
 329 0488 81BC245C 		cmpl	$40320, 348(%rsp)
 329      01000080 
 329      9D0000
 330 0493 0F85BAFC 		jne	.L12
 330      FFFF
 331 0499 C5F877   		vzeroupper
 332 049c E8000000 		call	clock
 332      00
 333 04a1 BE000000 		movl	$.LC12, %esi
 333      00
 334 04a6 4889C3   		movq	%rax, %rbx
 335 04a9 BF000000 		movl	$_ZSt4cout, %edi
 335      00
 336 04ae E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 336      00
GAS LISTING /tmp/ccfQIiPr.s 			page 10


 337 04b3 4889D9   		movq	%rbx, %rcx
 338 04b6 482B8C24 		subq	336(%rsp), %rcx
 338      50010000 
 339 04be 4889C7   		movq	%rax, %rdi
 340 04c1 48BECFF7 		movabsq	$2361183241434822607, %rsi
 340      53E3A59B 
 340      C420
 341 04cb 4889C8   		movq	%rcx, %rax
 342 04ce 48C1F93F 		sarq	$63, %rcx
 343 04d2 48F7EE   		imulq	%rsi
 344 04d5 4889D6   		movq	%rdx, %rsi
 345 04d8 48C1FE07 		sarq	$7, %rsi
 346 04dc 4829CE   		subq	%rcx, %rsi
 347 04df E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 347      00
 348 04e4 BE000000 		movl	$.LC13, %esi
 348      00
 349 04e9 4889C7   		movq	%rax, %rdi
 350 04ec E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 350      00
 351 04f1 4889C7   		movq	%rax, %rdi
 352 04f4 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 352      00
 353 04f9 488D65D8 		leaq	-40(%rbp), %rsp
 354 04fd 31C0     		xorl	%eax, %eax
 355 04ff 5B       		popq	%rbx
 356 0500 415C     		popq	%r12
 357 0502 415D     		popq	%r13
 358 0504 415E     		popq	%r14
 359 0506 415F     		popq	%r15
 360 0508 5D       		popq	%rbp
 361              		.cfi_remember_state
 362              		.cfi_def_cfa 7, 8
 363 0509 C3       		ret
 364 050a 660F1F44 		.p2align 4,,10
 364      0000
 365              		.p2align 3
 366              	.L37:
 367              		.cfi_restore_state
 368 0510 C5FD2884 		vmovapd	3264(%rsp), %ymm0
 368      24C00C00 
 368      00
 369 0519 BA050000 		movl	$5, %edx
 369      00
 370 051e BE000000 		movl	$.LC8, %esi
 370      00
 371 0523 BF000000 		movl	$_ZSt4cout, %edi
 371      00
 372 0528 C5FD2934 		vmovapd	%ymm6, (%rsp)
 372      24
 373 052d C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 373      24600100 
 373      00
 374 0536 C5FD2884 		vmovapd	2176(%rsp), %ymm0
 374      24800800 
 374      00
 375 053f C5FB109C 		vmovsd	352(%rsp), %xmm3
GAS LISTING /tmp/ccfQIiPr.s 			page 11


 375      24600100 
 375      00
 376 0548 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 376      24600100 
 376      00
 377 0551 C5FD2884 		vmovapd	2144(%rsp), %ymm0
 377      24600800 
 377      00
 378 055a C57B1084 		vmovsd	352(%rsp), %xmm8
 378      24600100 
 378      00
 379 0563 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 379      24600100 
 379      00
 380 056c C5FD2884 		vmovapd	2112(%rsp), %ymm0
 380      24400800 
 380      00
 381 0575 C57B108C 		vmovsd	352(%rsp), %xmm9
 381      24600100 
 381      00
 382 057e C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 382      24600100 
 382      00
 383 0587 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 383      2420
 384 058d C5FB1084 		vmovsd	352(%rsp), %xmm0
 384      24600100 
 384      00
 385 0596 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 385      2440
 386 059c C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 386      2460
 387 05a2 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 387      24800000 
 387      00
 388 05ab C5FD29A4 		vmovapd	%ymm4, 160(%rsp)
 388      24A00000 
 388      00
 389 05b4 C5FB119C 		vmovsd	%xmm3, 192(%rsp)
 389      24C00000 
 389      00
 390 05bd C57B1184 		vmovsd	%xmm8, 224(%rsp)
 390      24E00000 
 390      00
 391 05c6 C57B118C 		vmovsd	%xmm9, 256(%rsp)
 391      24000100 
 391      00
 392 05cf C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 392      24200100 
 392      00
 393 05d8 C5F877   		vzeroupper
 394 05db E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 394      00
 395 05e0 C5FB1084 		vmovsd	288(%rsp), %xmm0
 395      24200100 
 395      00
 396 05e9 BF000000 		movl	$_ZSt4cout, %edi
GAS LISTING /tmp/ccfQIiPr.s 			page 12


 396      00
 397 05ee E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 397      00
 398 05f3 BA060000 		movl	$6, %edx
 398      00
 399 05f8 BE000000 		movl	$.LC9, %esi
 399      00
 400 05fd 4889C7   		movq	%rax, %rdi
 401 0600 48898424 		movq	%rax, 288(%rsp)
 401      20010000 
 402 0608 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 402      00
 403 060d C57B108C 		vmovsd	256(%rsp), %xmm9
 403      24000100 
 403      00
 404 0616 488B8C24 		movq	288(%rsp), %rcx
 404      20010000 
 405 061e C57929C8 		vmovapd	%xmm9, %xmm0
 406 0622 4889CF   		movq	%rcx, %rdi
 407 0625 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 407      00
 408 062a BA060000 		movl	$6, %edx
 408      00
 409 062f BE000000 		movl	$.LC10, %esi
 409      00
 410 0634 4889C7   		movq	%rax, %rdi
 411 0637 48898424 		movq	%rax, 288(%rsp)
 411      20010000 
 412 063f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 412      00
 413 0644 C57B1084 		vmovsd	224(%rsp), %xmm8
 413      24E00000 
 413      00
 414 064d 488B8C24 		movq	288(%rsp), %rcx
 414      20010000 
 415 0655 C57929C0 		vmovapd	%xmm8, %xmm0
 416 0659 4889CF   		movq	%rcx, %rdi
 417 065c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 417      00
 418 0661 BA040000 		movl	$4, %edx
 418      00
 419 0666 BE000000 		movl	$.LC11, %esi
 419      00
 420 066b 4889C7   		movq	%rax, %rdi
 421 066e 48898424 		movq	%rax, 288(%rsp)
 421      20010000 
 422 0676 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 422      00
 423 067b 488B8C24 		movq	288(%rsp), %rcx
 423      20010000 
 424 0683 C5FB109C 		vmovsd	192(%rsp), %xmm3
 424      24C00000 
 424      00
 425 068c C5F928C3 		vmovapd	%xmm3, %xmm0
 426 0690 4889CF   		movq	%rcx, %rdi
 427 0693 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 427      00
GAS LISTING /tmp/ccfQIiPr.s 			page 13


 428 0698 4889C1   		movq	%rax, %rcx
 429 069b 488B00   		movq	(%rax), %rax
 430 069e C5FD28A4 		vmovapd	160(%rsp), %ymm4
 430      24A00000 
 430      00
 431 06a7 C5FD28AC 		vmovapd	128(%rsp), %ymm5
 431      24800000 
 431      00
 432 06b0 C5FD2854 		vmovapd	96(%rsp), %ymm2
 432      2460
 433 06b6 488B40E8 		movq	-24(%rax), %rax
 434 06ba C5FD284C 		vmovapd	64(%rsp), %ymm1
 434      2440
 435 06c0 C5FD287C 		vmovapd	32(%rsp), %ymm7
 435      2420
 436 06c6 C5FD2834 		vmovapd	(%rsp), %ymm6
 436      24
 437 06cb 488B9401 		movq	240(%rcx,%rax), %rdx
 437      F0000000 
 438 06d3 4885D2   		testq	%rdx, %rdx
 439 06d6 0F843301 		je	.L38
 439      0000
 440 06dc 807A3800 		cmpb	$0, 56(%rdx)
 441 06e0 0F848B00 		je	.L32
 441      0000
 442 06e6 0FB64243 		movzbl	67(%rdx), %eax
 443              	.L33:
 444 06ea 0FBEF0   		movsbl	%al, %esi
 445 06ed 4889CF   		movq	%rcx, %rdi
 446 06f0 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 446      24800000 
 446      00
 447 06f9 C5FD29BC 		vmovapd	%ymm7, 160(%rsp)
 447      24A00000 
 447      00
 448 0702 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 448      24C00000 
 448      00
 449 070b C5FD2994 		vmovapd	%ymm2, 224(%rsp)
 449      24E00000 
 449      00
 450 0714 C5FD29AC 		vmovapd	%ymm5, 256(%rsp)
 450      24000100 
 450      00
 451 071d C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 451      24200100 
 451      00
 452 0726 C5F877   		vzeroupper
 453 0729 E8000000 		call	_ZNSo3putEc
 453      00
 454 072e 4889C7   		movq	%rax, %rdi
 455 0731 E8000000 		call	_ZNSo5flushEv
 455      00
 456 0736 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 456      24800000 
 456      00
 457 073f C5FD28BC 		vmovapd	160(%rsp), %ymm7
GAS LISTING /tmp/ccfQIiPr.s 			page 14


 457      24A00000 
 457      00
 458 0748 C5FD288C 		vmovapd	192(%rsp), %ymm1
 458      24C00000 
 458      00
 459 0751 C5FD2894 		vmovapd	224(%rsp), %ymm2
 459      24E00000 
 459      00
 460 075a C5FD28AC 		vmovapd	256(%rsp), %ymm5
 460      24000100 
 460      00
 461 0763 C5FD28A4 		vmovapd	288(%rsp), %ymm4
 461      24200100 
 461      00
 462 076c E908FDFF 		jmp	.L30
 462      FF
 463              	.L32:
 464 0771 4889D7   		movq	%rdx, %rdi
 465 0774 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 465      2440
 466 077a 48898C24 		movq	%rcx, 256(%rsp)
 466      00010000 
 467 0782 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 467      2460
 468 0788 48899424 		movq	%rdx, 288(%rsp)
 468      20010000 
 469 0790 C5FD298C 		vmovapd	%ymm1, 128(%rsp)
 469      24800000 
 469      00
 470 0799 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 470      24A00000 
 470      00
 471 07a2 C5FD29AC 		vmovapd	%ymm5, 192(%rsp)
 471      24C00000 
 471      00
 472 07ab C5FD29A4 		vmovapd	%ymm4, 224(%rsp)
 472      24E00000 
 472      00
 473 07b4 C5F877   		vzeroupper
 474 07b7 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 474      00
 475 07bc 488B9424 		movq	288(%rsp), %rdx
 475      20010000 
 476 07c4 BE0A0000 		movl	$10, %esi
 476      00
 477 07c9 488B02   		movq	(%rdx), %rax
 478 07cc 4889D7   		movq	%rdx, %rdi
 479 07cf FF5030   		call	*48(%rax)
 480 07d2 C5FD2874 		vmovapd	64(%rsp), %ymm6
 480      2440
 481 07d8 488B8C24 		movq	256(%rsp), %rcx
 481      00010000 
 482 07e0 C5FD287C 		vmovapd	96(%rsp), %ymm7
 482      2460
 483 07e6 C5FD288C 		vmovapd	128(%rsp), %ymm1
 483      24800000 
 483      00
GAS LISTING /tmp/ccfQIiPr.s 			page 15


 484 07ef C5FD2894 		vmovapd	160(%rsp), %ymm2
 484      24A00000 
 484      00
 485 07f8 C5FD28AC 		vmovapd	192(%rsp), %ymm5
 485      24C00000 
 485      00
 486 0801 C5FD28A4 		vmovapd	224(%rsp), %ymm4
 486      24E00000 
 486      00
 487 080a E9DBFEFF 		jmp	.L33
 487      FF
 488              	.L38:
 489 080f C5F877   		vzeroupper
 490 0812 E8000000 		call	_ZSt16__throw_bad_castv
 490      00
 491              		.cfi_endproc
 492              	.LFE4383:
 493              		.size	main, .-main
 494 0817 660F1F84 		.p2align 4,,15
 494      00000000 
 494      00
 495              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 496              	_GLOBAL__sub_I__Z8linspaceddi:
 497              	.LFB4596:
 498              		.cfi_startproc
 499 0820 4883EC08 		subq	$8, %rsp
 500              		.cfi_def_cfa_offset 16
 501 0824 BF000000 		movl	$_ZStL8__ioinit, %edi
 501      00
 502 0829 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 502      00
 503 082e BA000000 		movl	$__dso_handle, %edx
 503      00
 504 0833 BE000000 		movl	$_ZStL8__ioinit, %esi
 504      00
 505 0838 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 505      00
 506 083d 4883C408 		addq	$8, %rsp
 507              		.cfi_def_cfa_offset 8
 508 0841 E9000000 		jmp	__cxa_atexit
 508      00
 509              		.cfi_endproc
 510              	.LFE4596:
 511              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 512              		.section	.init_array,"aw"
 513              		.align 8
 514 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 514      00000000 
 515              		.local	_ZStL8__ioinit
 516              		.comm	_ZStL8__ioinit,1,1
 517              		.section	.rodata.cst32,"aM",@progbits,32
 518              		.align 32
 519              	.LC0:
 520 0000 00000000 		.long	0
 521 0004 00002440 		.long	1076101120
 522 0008 00000000 		.long	0
 523 000c 00002440 		.long	1076101120
GAS LISTING /tmp/ccfQIiPr.s 			page 16


 524 0010 00000000 		.long	0
 525 0014 00002440 		.long	1076101120
 526 0018 00000000 		.long	0
 527 001c 00002440 		.long	1076101120
 528              		.section	.rodata.cst8,"aM",@progbits,8
 529              		.align 8
 530              	.LC1:
 531 0000 00000000 		.long	0
 532 0004 00003540 		.long	1077215232
 533              		.section	.rodata.cst32
 534              		.align 32
 535              	.LC3:
 536 0020 55555555 		.long	1431655765
 537 0024 55550540 		.long	1074091349
 538 0028 55555555 		.long	1431655765
 539 002c 55550540 		.long	1074091349
 540 0030 55555555 		.long	1431655765
 541 0034 55550540 		.long	1074091349
 542 0038 55555555 		.long	1431655765
 543 003c 55550540 		.long	1074091349
 544              		.align 32
 545              	.LC4:
 546 0040 7B14AE47 		.long	1202590843
 547 0044 E17A743F 		.long	1064598241
 548 0048 7B14AE47 		.long	1202590843
 549 004c E17A743F 		.long	1064598241
 550 0050 7B14AE47 		.long	1202590843
 551 0054 E17A743F 		.long	1064598241
 552 0058 7B14AE47 		.long	1202590843
 553 005c E17A743F 		.long	1064598241
 554              		.align 32
 555              	.LC5:
 556 0060 00000000 		.long	0
 557 0064 00000040 		.long	1073741824
 558 0068 00000000 		.long	0
 559 006c 00000040 		.long	1073741824
 560 0070 00000000 		.long	0
 561 0074 00000040 		.long	1073741824
 562 0078 00000000 		.long	0
 563 007c 00000040 		.long	1073741824
 564              		.align 32
 565              	.LC6:
 566 0080 7B14AE47 		.long	1202590843
 567 0084 E17A843F 		.long	1065646817
 568 0088 7B14AE47 		.long	1202590843
 569 008c E17A843F 		.long	1065646817
 570 0090 7B14AE47 		.long	1202590843
 571 0094 E17A843F 		.long	1065646817
 572 0098 7B14AE47 		.long	1202590843
 573 009c E17A843F 		.long	1065646817
 574              		.align 32
 575              	.LC7:
 576 00a0 4F1BE8B4 		.long	3035110223
 577 00a4 814E5B3F 		.long	1062948481
 578 00a8 4F1BE8B4 		.long	3035110223
 579 00ac 814E5B3F 		.long	1062948481
 580 00b0 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/ccfQIiPr.s 			page 17


 581 00b4 814E5B3F 		.long	1062948481
 582 00b8 4F1BE8B4 		.long	3035110223
 583 00bc 814E5B3F 		.long	1062948481
 584              		.hidden	__dso_handle
 585              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 586              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccfQIiPr.s 			page 18


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/ccfQIiPr.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccfQIiPr.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccfQIiPr.s:85     .text.startup:0000000000000000 main
     /tmp/ccfQIiPr.s:496    .text.startup:0000000000000820 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccfQIiPr.s:519    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccfQIiPr.s:530    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccfQIiPr.s:535    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccfQIiPr.s:545    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccfQIiPr.s:555    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccfQIiPr.s:565    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccfQIiPr.s:575    .rodata.cst32:00000000000000a0 .LC7

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
