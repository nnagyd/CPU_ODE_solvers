GAS LISTING /tmp/ccmYVtAb.s 			page 1


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
GAS LISTING /tmp/ccmYVtAb.s 			page 2


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
GAS LISTING /tmp/ccmYVtAb.s 			page 3


  97 0011 4155     		pushq	%r13
  98 0013 4154     		pushq	%r12
  99 0015 53       		pushq	%rbx
 100 0016 4883E4E0 		andq	$-32, %rsp
 101 001a 4881EC80 		subq	$4480, %rsp
 101      110000
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
GAS LISTING /tmp/ccmYVtAb.s 			page 4


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
 127 00d3 C5FD29A4 		vmovapd	%ymm4, 960(%rsp)
 127      24C00300 
 127      00
 128 00dc C5FD29A4 		vmovapd	%ymm4, 992(%rsp)
 128      24E00300 
 128      00
 129 00e5 C5FD29A4 		vmovapd	%ymm4, 1024(%rsp)
 129      24000400 
 129      00
 130 00ee C5FD29A4 		vmovapd	%ymm4, 1056(%rsp)
 130      24200400 
 130      00
 131 00f7 C5FD29A4 		vmovapd	%ymm4, 1088(%rsp)
 131      24400400 
 131      00
 132 0100 C5FD29A4 		vmovapd	%ymm4, 1120(%rsp)
 132      24600400 
 132      00
 133 0109 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 133      24200100 
 133      00
 134 0112 C5F877   		vzeroupper
 135 0115 4C8DB424 		leaq	4224(%rsp), %r14
 135      80100000 
 136 011d E8000000 		call	_Z8linspaceddi
 136      00
 137 0122 4889C3   		movq	%rax, %rbx
 138 0125 4C8DAC24 		leaq	3456(%rsp), %r13
 138      800D0000 
 139 012d 4C8DBC24 		leaq	1920(%rsp), %r15
 139      80070000 
 140 0135 E8000000 		call	clock
 140      00
 141 013a 4989DC   		movq	%rbx, %r12
 142 013d C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 142      00000000 
 143 0145 488D9C24 		leaq	2688(%rsp), %rbx
 143      800A0000 
 144 014d C5FD2815 		vmovapd	.LC4(%rip), %ymm2
 144      00000000 
 145 0155 48898424 		movq	%rax, 336(%rsp)
 145      50010000 
 146 015d C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 146      00000000 
 147 0165 C784245C 		movl	$0, 348(%rsp)
GAS LISTING /tmp/ccmYVtAb.s 			page 5


 147      01000000 
 147      000000
 148 0170 C5FD283D 		vmovapd	.LC6(%rip), %ymm7
 148      00000000 
 149 0178 C5FD2835 		vmovapd	.LC7(%rip), %ymm6
 149      00000000 
 150 0180 C5FD28A4 		vmovapd	288(%rsp), %ymm4
 150      24200100 
 150      00
 151              	.L12:
 152 0189 C4C17D28 		vmovapd	(%r12), %ymm0
 152      0424
 153 018f B9600000 		movl	$96, %ecx
 153      00
 154 0194 488DBC24 		leaq	2688(%rsp), %rdi
 154      800A0000 
 155 019c 488DB424 		leaq	384(%rsp), %rsi
 155      80010000 
 156 01a4 BA102700 		movl	$10000, %edx
 156      00
 157 01a9 C5FD2984 		vmovapd	%ymm0, 4224(%rsp)
 157      24801000 
 157      00
 158 01b2 C4C17D28 		vmovapd	32(%r12), %ymm0
 158      442420
 159 01b9 F348A5   		rep movsq
 160 01bc C5FD2984 		vmovapd	%ymm0, 4256(%rsp)
 160      24A01000 
 160      00
 161 01c5 C4C17D28 		vmovapd	64(%r12), %ymm0
 161      442440
 162 01cc C5FD2984 		vmovapd	%ymm0, 4288(%rsp)
 162      24C01000 
 162      00
 163 01d5 C4C17D28 		vmovapd	96(%r12), %ymm0
 163      442460
 164 01dc C5FD2984 		vmovapd	%ymm0, 4320(%rsp)
 164      24E01000 
 164      00
 165 01e5 C4C17D28 		vmovapd	128(%r12), %ymm0
 165      84248000 
 165      0000
 166 01ef C5FD2984 		vmovapd	%ymm0, 4352(%rsp)
 166      24001100 
 166      00
 167 01f8 C4C17D28 		vmovapd	160(%r12), %ymm0
 167      8424A000 
 167      0000
 168 0202 C5FD2984 		vmovapd	%ymm0, 4384(%rsp)
 168      24201100 
 168      00
 169 020b C4C17D28 		vmovapd	192(%r12), %ymm0
 169      8424C000 
 169      0000
 170 0215 C5FD2984 		vmovapd	%ymm0, 4416(%rsp)
 170      24401100 
 170      00
GAS LISTING /tmp/ccmYVtAb.s 			page 6


 171 021e C4C17D28 		vmovapd	224(%r12), %ymm0
 171      8424E000 
 171      0000
 172 0228 C5FD2984 		vmovapd	%ymm0, 4448(%rsp)
 172      24601100 
 172      00
 173              		.p2align 4,,10
 174 0231 0F1F8000 		.p2align 3
 174      000000
 175              	.L35:
 176 0238 4889D8   		movq	%rbx, %rax
 177 023b 4C89F1   		movq	%r14, %rcx
 178 023e 6690     		.p2align 4,,10
 179              		.p2align 3
 180              	.L29:
 181 0240 C5FD2800 		vmovapd	(%rax), %ymm0
 182 0244 4883C060 		addq	$96, %rax
 183 0248 4883C120 		addq	$32, %rcx
 184 024c C5FD2858 		vmovapd	-64(%rax), %ymm3
 184      C0
 185 0251 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 185      E0
 186 0256 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 187 025a C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 187      C0
 188 025f C57D2980 		vmovapd	%ymm8, -1632(%rax)
 188      A0F9FFFF 
 189 0267 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 189      E0
 190 026c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 191 0270 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 192 0274 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 192      C1
 193 0279 C57D2980 		vmovapd	%ymm8, -1600(%rax)
 193      C0F9FFFF 
 194 0281 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 194      E0
 195 0286 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 195      C0
 196 028b C5FD2980 		vmovapd	%ymm0, -1568(%rax)
 196      E0F9FFFF 
 197 0293 4C39E8   		cmpq	%r13, %rax
 198 0296 75A8     		jne	.L29
 199 0298 488D8424 		leaq	1152(%rsp), %rax
 199      80040000 
 200              		.p2align 4,,10
 201              		.p2align 3
 202              	.L15:
 203 02a0 C5FD2800 		vmovapd	(%rax), %ymm0
 204 02a4 4883C020 		addq	$32, %rax
 205 02a8 C5FD2980 		vmovapd	%ymm0, 736(%rax)
 205      E0020000 
 206 02b0 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 207 02b4 C5FD5880 		vaddpd	1504(%rax), %ymm0, %ymm0
 207      E0050000 
 208 02bc C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 208      E0080000 
GAS LISTING /tmp/ccmYVtAb.s 			page 7


 209 02c4 4C39F8   		cmpq	%r15, %rax
 210 02c7 75D7     		jne	.L15
 211 02c9 4C89F1   		movq	%r14, %rcx
 212 02cc 4C89E8   		movq	%r13, %rax
 213 02cf 90       		.p2align 4,,10
 214              		.p2align 3
 215              	.L17:
 216 02d0 C5FD2800 		vmovapd	(%rax), %ymm0
 217 02d4 4883C060 		addq	$96, %rax
 218 02d8 4883C120 		addq	$32, %rcx
 219 02dc C5FD2858 		vmovapd	-64(%rax), %ymm3
 219      C0
 220 02e1 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 220      E0
 221 02e6 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 222 02ea C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 222      C0
 223 02ef C57D2980 		vmovapd	%ymm8, -2400(%rax)
 223      A0F6FFFF 
 224 02f7 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 224      E0
 225 02fc C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 226 0300 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 227 0304 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 227      C1
 228 0309 C57D2980 		vmovapd	%ymm8, -2368(%rax)
 228      C0F6FFFF 
 229 0311 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 229      E0
 230 0316 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 230      C0
 231 031b C5FD2980 		vmovapd	%ymm0, -2336(%rax)
 231      E0F6FFFF 
 232 0323 4C39F0   		cmpq	%r14, %rax
 233 0326 75A8     		jne	.L17
 234 0328 4C89F8   		movq	%r15, %rax
 235 032b 0F1F4400 		.p2align 4,,10
 235      00
 236              		.p2align 3
 237              	.L19:
 238 0330 C5FD2880 		vmovapd	-768(%rax), %ymm0
 238      00FDFFFF 
 239 0338 4883C020 		addq	$32, %rax
 240 033c C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 241 0340 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 242 0344 C5E55858 		vaddpd	-32(%rax), %ymm3, %ymm3
 242      E0
 243 0349 C5FD5880 		vaddpd	736(%rax), %ymm0, %ymm0
 243      E0020000 
 244 0351 C5FD2958 		vmovapd	%ymm3, -32(%rax)
 244      E0
 245 0356 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 245      E0050000 
 246 035e 4839D8   		cmpq	%rbx, %rax
 247 0361 75CD     		jne	.L19
 248 0363 4C89F1   		movq	%r14, %rcx
 249 0366 4C89E8   		movq	%r13, %rax
GAS LISTING /tmp/ccmYVtAb.s 			page 8


 250 0369 0F1F8000 		.p2align 4,,10
 250      000000
 251              		.p2align 3
 252              	.L21:
 253 0370 C5FD2800 		vmovapd	(%rax), %ymm0
 254 0374 4883C060 		addq	$96, %rax
 255 0378 4883C120 		addq	$32, %rcx
 256 037c C5FD2858 		vmovapd	-64(%rax), %ymm3
 256      C0
 257 0381 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 257      E0
 258 0386 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 259 038a C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 259      C0
 260 038f C57D2980 		vmovapd	%ymm8, -2400(%rax)
 260      A0F6FFFF 
 261 0397 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 261      E0
 262 039c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 263 03a0 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 264 03a4 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 264      C1
 265 03a9 C57D2980 		vmovapd	%ymm8, -2368(%rax)
 265      C0F6FFFF 
 266 03b1 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 266      E0
 267 03b6 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 267      C0
 268 03bb C5FD2980 		vmovapd	%ymm0, -2336(%rax)
 268      E0F6FFFF 
 269 03c3 4939C6   		cmpq	%rax, %r14
 270 03c6 75A8     		jne	.L21
 271 03c8 4C89F8   		movq	%r15, %rax
 272 03cb 0F1F4400 		.p2align 4,,10
 272      00
 273              		.p2align 3
 274              	.L23:
 275 03d0 C5FD2880 		vmovapd	-768(%rax), %ymm0
 275      00FDFFFF 
 276 03d8 4883C020 		addq	$32, %rax
 277 03dc C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 278 03e0 C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
 279 03e4 C5E55858 		vaddpd	-32(%rax), %ymm3, %ymm3
 279      E0
 280 03e9 C5FD5880 		vaddpd	736(%rax), %ymm0, %ymm0
 280      E0020000 
 281 03f1 C5FD2958 		vmovapd	%ymm3, -32(%rax)
 281      E0
 282 03f6 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 282      E0050000 
 283 03fe 4839D8   		cmpq	%rbx, %rax
 284 0401 75CD     		jne	.L23
 285 0403 4C89F1   		movq	%r14, %rcx
 286 0406 4C89E8   		movq	%r13, %rax
 287 0409 0F1F8000 		.p2align 4,,10
 287      000000
 288              		.p2align 3
GAS LISTING /tmp/ccmYVtAb.s 			page 9


 289              	.L25:
 290 0410 C5FD2800 		vmovapd	(%rax), %ymm0
 291 0414 4883C060 		addq	$96, %rax
 292 0418 4883C120 		addq	$32, %rcx
 293 041c C5FD2858 		vmovapd	-64(%rax), %ymm3
 293      C0
 294 0421 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 294      E0
 295 0426 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 296 042a C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 296      C0
 297 042f C57D2980 		vmovapd	%ymm8, -2400(%rax)
 297      A0F6FFFF 
 298 0437 C57D5941 		vmulpd	-32(%rcx), %ymm0, %ymm8
 298      E0
 299 043c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 300 0440 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 301 0444 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 301      C1
 302 0449 C57D2980 		vmovapd	%ymm8, -2368(%rax)
 302      C0F6FFFF 
 303 0451 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 303      E0
 304 0456 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 304      C0
 305 045b C5FD2980 		vmovapd	%ymm0, -2336(%rax)
 305      E0F6FFFF 
 306 0463 4939C6   		cmpq	%rax, %r14
 307 0466 75A8     		jne	.L25
 308 0468 4C89F8   		movq	%r15, %rax
 309 046b 0F1F4400 		.p2align 4,,10
 309      00
 310              		.p2align 3
 311              	.L27:
 312 0470 C5FD2800 		vmovapd	(%rax), %ymm0
 313 0474 4883C020 		addq	$32, %rax
 314 0478 C5FD5880 		vaddpd	-800(%rax), %ymm0, %ymm0
 314      E0FCFFFF 
 315 0480 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 315      E0
 316 0485 C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 317 0489 C5FD5880 		vaddpd	736(%rax), %ymm0, %ymm0
 317      E0020000 
 318 0491 C5FD2980 		vmovapd	%ymm0, 736(%rax)
 318      E0020000 
 319 0499 4839D8   		cmpq	%rbx, %rax
 320 049c 75D2     		jne	.L27
 321 049e 83EA01   		subl	$1, %edx
 322 04a1 0F8591FD 		jne	.L35
 322      FFFF
 323 04a7 8B84245C 		movl	348(%rsp), %eax
 323      010000
 324 04ae 8BB4245C 		movl	348(%rsp), %esi
 324      010000
 325 04b5 BAAD8BDB 		movl	$1759218605, %edx
 325      68
 326 04ba F7EA     		imull	%edx
GAS LISTING /tmp/ccmYVtAb.s 			page 10


 327 04bc 89F0     		movl	%esi, %eax
 328 04be C1F81F   		sarl	$31, %eax
 329 04c1 C1FA0C   		sarl	$12, %edx
 330 04c4 29C2     		subl	%eax, %edx
 331 04c6 89F0     		movl	%esi, %eax
 332 04c8 69D21027 		imull	$10000, %edx, %edx
 332      0000
 333 04ce 29D0     		subl	%edx, %eax
 334 04d0 83F801   		cmpl	$1, %eax
 335 04d3 0F849700 		je	.L37
 335      0000
 336              	.L30:
 337 04d9 8384245C 		addl	$32, 348(%rsp)
 337      01000020 
 338 04e1 4981C400 		addq	$256, %r12
 338      010000
 339 04e8 81BC245C 		cmpl	$40320, 348(%rsp)
 339      01000080 
 339      9D0000
 340 04f3 0F8590FC 		jne	.L12
 340      FFFF
 341 04f9 C5F877   		vzeroupper
 342 04fc E8000000 		call	clock
 342      00
 343 0501 BE000000 		movl	$.LC12, %esi
 343      00
 344 0506 4889C3   		movq	%rax, %rbx
 345 0509 BF000000 		movl	$_ZSt4cout, %edi
 345      00
 346 050e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 346      00
 347 0513 4889D9   		movq	%rbx, %rcx
 348 0516 482B8C24 		subq	336(%rsp), %rcx
 348      50010000 
 349 051e 4889C7   		movq	%rax, %rdi
 350 0521 48BECFF7 		movabsq	$2361183241434822607, %rsi
 350      53E3A59B 
 350      C420
 351 052b 4889C8   		movq	%rcx, %rax
 352 052e 48C1F93F 		sarq	$63, %rcx
 353 0532 48F7EE   		imulq	%rsi
 354 0535 4889D6   		movq	%rdx, %rsi
 355 0538 48C1FE07 		sarq	$7, %rsi
 356 053c 4829CE   		subq	%rcx, %rsi
 357 053f E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 357      00
 358 0544 BE000000 		movl	$.LC13, %esi
 358      00
 359 0549 4889C7   		movq	%rax, %rdi
 360 054c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 360      00
 361 0551 4889C7   		movq	%rax, %rdi
 362 0554 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 362      00
 363 0559 488D65D8 		leaq	-40(%rbp), %rsp
 364 055d 31C0     		xorl	%eax, %eax
 365 055f 5B       		popq	%rbx
GAS LISTING /tmp/ccmYVtAb.s 			page 11


 366 0560 415C     		popq	%r12
 367 0562 415D     		popq	%r13
 368 0564 415E     		popq	%r14
 369 0566 415F     		popq	%r15
 370 0568 5D       		popq	%rbp
 371              		.cfi_remember_state
 372              		.cfi_def_cfa 7, 8
 373 0569 C3       		ret
 374 056a 660F1F44 		.p2align 4,,10
 374      0000
 375              		.p2align 3
 376              	.L37:
 377              		.cfi_restore_state
 378 0570 C5FD2884 		vmovapd	4224(%rsp), %ymm0
 378      24801000 
 378      00
 379 0579 BA050000 		movl	$5, %edx
 379      00
 380 057e BE000000 		movl	$.LC8, %esi
 380      00
 381 0583 BF000000 		movl	$_ZSt4cout, %edi
 381      00
 382 0588 C5FD2934 		vmovapd	%ymm6, (%rsp)
 382      24
 383 058d C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 383      24600100 
 383      00
 384 0596 C5FD2884 		vmovapd	2752(%rsp), %ymm0
 384      24C00A00 
 384      00
 385 059f C5FB109C 		vmovsd	352(%rsp), %xmm3
 385      24600100 
 385      00
 386 05a8 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 386      24600100 
 386      00
 387 05b1 C5FD2884 		vmovapd	2720(%rsp), %ymm0
 387      24A00A00 
 387      00
 388 05ba C57B1084 		vmovsd	352(%rsp), %xmm8
 388      24600100 
 388      00
 389 05c3 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 389      24600100 
 389      00
 390 05cc C5FD2884 		vmovapd	2688(%rsp), %ymm0
 390      24800A00 
 390      00
 391 05d5 C57B108C 		vmovsd	352(%rsp), %xmm9
 391      24600100 
 391      00
 392 05de C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 392      24600100 
 392      00
 393 05e7 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 393      2420
 394 05ed C5FB1084 		vmovsd	352(%rsp), %xmm0
GAS LISTING /tmp/ccmYVtAb.s 			page 12


 394      24600100 
 394      00
 395 05f6 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 395      2440
 396 05fc C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 396      2460
 397 0602 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 397      24800000 
 397      00
 398 060b C5FD29A4 		vmovapd	%ymm4, 160(%rsp)
 398      24A00000 
 398      00
 399 0614 C5FB119C 		vmovsd	%xmm3, 192(%rsp)
 399      24C00000 
 399      00
 400 061d C57B1184 		vmovsd	%xmm8, 224(%rsp)
 400      24E00000 
 400      00
 401 0626 C57B118C 		vmovsd	%xmm9, 256(%rsp)
 401      24000100 
 401      00
 402 062f C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 402      24200100 
 402      00
 403 0638 C5F877   		vzeroupper
 404 063b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 404      00
 405 0640 C5FB1084 		vmovsd	288(%rsp), %xmm0
 405      24200100 
 405      00
 406 0649 BF000000 		movl	$_ZSt4cout, %edi
 406      00
 407 064e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 407      00
 408 0653 BA060000 		movl	$6, %edx
 408      00
 409 0658 BE000000 		movl	$.LC9, %esi
 409      00
 410 065d 4889C7   		movq	%rax, %rdi
 411 0660 48898424 		movq	%rax, 288(%rsp)
 411      20010000 
 412 0668 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 412      00
 413 066d C57B108C 		vmovsd	256(%rsp), %xmm9
 413      24000100 
 413      00
 414 0676 488B8C24 		movq	288(%rsp), %rcx
 414      20010000 
 415 067e C57929C8 		vmovapd	%xmm9, %xmm0
 416 0682 4889CF   		movq	%rcx, %rdi
 417 0685 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 417      00
 418 068a BA060000 		movl	$6, %edx
 418      00
 419 068f BE000000 		movl	$.LC10, %esi
 419      00
 420 0694 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/ccmYVtAb.s 			page 13


 421 0697 48898424 		movq	%rax, 288(%rsp)
 421      20010000 
 422 069f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 422      00
 423 06a4 C57B1084 		vmovsd	224(%rsp), %xmm8
 423      24E00000 
 423      00
 424 06ad 488B8C24 		movq	288(%rsp), %rcx
 424      20010000 
 425 06b5 C57929C0 		vmovapd	%xmm8, %xmm0
 426 06b9 4889CF   		movq	%rcx, %rdi
 427 06bc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 427      00
 428 06c1 BA040000 		movl	$4, %edx
 428      00
 429 06c6 BE000000 		movl	$.LC11, %esi
 429      00
 430 06cb 4889C7   		movq	%rax, %rdi
 431 06ce 48898424 		movq	%rax, 288(%rsp)
 431      20010000 
 432 06d6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 432      00
 433 06db 488B8C24 		movq	288(%rsp), %rcx
 433      20010000 
 434 06e3 C5FB109C 		vmovsd	192(%rsp), %xmm3
 434      24C00000 
 434      00
 435 06ec C5F928C3 		vmovapd	%xmm3, %xmm0
 436 06f0 4889CF   		movq	%rcx, %rdi
 437 06f3 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 437      00
 438 06f8 4889C1   		movq	%rax, %rcx
 439 06fb 488B00   		movq	(%rax), %rax
 440 06fe C5FD28A4 		vmovapd	160(%rsp), %ymm4
 440      24A00000 
 440      00
 441 0707 C5FD28AC 		vmovapd	128(%rsp), %ymm5
 441      24800000 
 441      00
 442 0710 C5FD2854 		vmovapd	96(%rsp), %ymm2
 442      2460
 443 0716 488B40E8 		movq	-24(%rax), %rax
 444 071a C5FD284C 		vmovapd	64(%rsp), %ymm1
 444      2440
 445 0720 C5FD287C 		vmovapd	32(%rsp), %ymm7
 445      2420
 446 0726 C5FD2834 		vmovapd	(%rsp), %ymm6
 446      24
 447 072b 488B9401 		movq	240(%rcx,%rax), %rdx
 447      F0000000 
 448 0733 4885D2   		testq	%rdx, %rdx
 449 0736 0F843301 		je	.L38
 449      0000
 450 073c 807A3800 		cmpb	$0, 56(%rdx)
 451 0740 0F848B00 		je	.L32
 451      0000
 452 0746 0FB64243 		movzbl	67(%rdx), %eax
GAS LISTING /tmp/ccmYVtAb.s 			page 14


 453              	.L33:
 454 074a 0FBEF0   		movsbl	%al, %esi
 455 074d 4889CF   		movq	%rcx, %rdi
 456 0750 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 456      24800000 
 456      00
 457 0759 C5FD29BC 		vmovapd	%ymm7, 160(%rsp)
 457      24A00000 
 457      00
 458 0762 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 458      24C00000 
 458      00
 459 076b C5FD2994 		vmovapd	%ymm2, 224(%rsp)
 459      24E00000 
 459      00
 460 0774 C5FD29AC 		vmovapd	%ymm5, 256(%rsp)
 460      24000100 
 460      00
 461 077d C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 461      24200100 
 461      00
 462 0786 C5F877   		vzeroupper
 463 0789 E8000000 		call	_ZNSo3putEc
 463      00
 464 078e 4889C7   		movq	%rax, %rdi
 465 0791 E8000000 		call	_ZNSo5flushEv
 465      00
 466 0796 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 466      24800000 
 466      00
 467 079f C5FD28BC 		vmovapd	160(%rsp), %ymm7
 467      24A00000 
 467      00
 468 07a8 C5FD288C 		vmovapd	192(%rsp), %ymm1
 468      24C00000 
 468      00
 469 07b1 C5FD2894 		vmovapd	224(%rsp), %ymm2
 469      24E00000 
 469      00
 470 07ba C5FD28AC 		vmovapd	256(%rsp), %ymm5
 470      24000100 
 470      00
 471 07c3 C5FD28A4 		vmovapd	288(%rsp), %ymm4
 471      24200100 
 471      00
 472 07cc E908FDFF 		jmp	.L30
 472      FF
 473              	.L32:
 474 07d1 4889D7   		movq	%rdx, %rdi
 475 07d4 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 475      2440
 476 07da 48898C24 		movq	%rcx, 256(%rsp)
 476      00010000 
 477 07e2 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 477      2460
 478 07e8 48899424 		movq	%rdx, 288(%rsp)
 478      20010000 
GAS LISTING /tmp/ccmYVtAb.s 			page 15


 479 07f0 C5FD298C 		vmovapd	%ymm1, 128(%rsp)
 479      24800000 
 479      00
 480 07f9 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 480      24A00000 
 480      00
 481 0802 C5FD29AC 		vmovapd	%ymm5, 192(%rsp)
 481      24C00000 
 481      00
 482 080b C5FD29A4 		vmovapd	%ymm4, 224(%rsp)
 482      24E00000 
 482      00
 483 0814 C5F877   		vzeroupper
 484 0817 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 484      00
 485 081c 488B9424 		movq	288(%rsp), %rdx
 485      20010000 
 486 0824 BE0A0000 		movl	$10, %esi
 486      00
 487 0829 488B02   		movq	(%rdx), %rax
 488 082c 4889D7   		movq	%rdx, %rdi
 489 082f FF5030   		call	*48(%rax)
 490 0832 C5FD2874 		vmovapd	64(%rsp), %ymm6
 490      2440
 491 0838 488B8C24 		movq	256(%rsp), %rcx
 491      00010000 
 492 0840 C5FD287C 		vmovapd	96(%rsp), %ymm7
 492      2460
 493 0846 C5FD288C 		vmovapd	128(%rsp), %ymm1
 493      24800000 
 493      00
 494 084f C5FD2894 		vmovapd	160(%rsp), %ymm2
 494      24A00000 
 494      00
 495 0858 C5FD28AC 		vmovapd	192(%rsp), %ymm5
 495      24C00000 
 495      00
 496 0861 C5FD28A4 		vmovapd	224(%rsp), %ymm4
 496      24E00000 
 496      00
 497 086a E9DBFEFF 		jmp	.L33
 497      FF
 498              	.L38:
 499 086f C5F877   		vzeroupper
 500 0872 E8000000 		call	_ZSt16__throw_bad_castv
 500      00
 501              		.cfi_endproc
 502              	.LFE4383:
 503              		.size	main, .-main
 504 0877 660F1F84 		.p2align 4,,15
 504      00000000 
 504      00
 505              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 506              	_GLOBAL__sub_I__Z8linspaceddi:
 507              	.LFB4596:
 508              		.cfi_startproc
 509 0880 4883EC08 		subq	$8, %rsp
GAS LISTING /tmp/ccmYVtAb.s 			page 16


 510              		.cfi_def_cfa_offset 16
 511 0884 BF000000 		movl	$_ZStL8__ioinit, %edi
 511      00
 512 0889 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 512      00
 513 088e BA000000 		movl	$__dso_handle, %edx
 513      00
 514 0893 BE000000 		movl	$_ZStL8__ioinit, %esi
 514      00
 515 0898 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 515      00
 516 089d 4883C408 		addq	$8, %rsp
 517              		.cfi_def_cfa_offset 8
 518 08a1 E9000000 		jmp	__cxa_atexit
 518      00
 519              		.cfi_endproc
 520              	.LFE4596:
 521              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 522              		.section	.init_array,"aw"
 523              		.align 8
 524 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 524      00000000 
 525              		.local	_ZStL8__ioinit
 526              		.comm	_ZStL8__ioinit,1,1
 527              		.section	.rodata.cst32,"aM",@progbits,32
 528              		.align 32
 529              	.LC0:
 530 0000 00000000 		.long	0
 531 0004 00002440 		.long	1076101120
 532 0008 00000000 		.long	0
 533 000c 00002440 		.long	1076101120
 534 0010 00000000 		.long	0
 535 0014 00002440 		.long	1076101120
 536 0018 00000000 		.long	0
 537 001c 00002440 		.long	1076101120
 538              		.section	.rodata.cst8,"aM",@progbits,8
 539              		.align 8
 540              	.LC1:
 541 0000 00000000 		.long	0
 542 0004 00003540 		.long	1077215232
 543              		.section	.rodata.cst32
 544              		.align 32
 545              	.LC3:
 546 0020 55555555 		.long	1431655765
 547 0024 55550540 		.long	1074091349
 548 0028 55555555 		.long	1431655765
 549 002c 55550540 		.long	1074091349
 550 0030 55555555 		.long	1431655765
 551 0034 55550540 		.long	1074091349
 552 0038 55555555 		.long	1431655765
 553 003c 55550540 		.long	1074091349
 554              		.align 32
 555              	.LC4:
 556 0040 7B14AE47 		.long	1202590843
 557 0044 E17A743F 		.long	1064598241
 558 0048 7B14AE47 		.long	1202590843
 559 004c E17A743F 		.long	1064598241
GAS LISTING /tmp/ccmYVtAb.s 			page 17


 560 0050 7B14AE47 		.long	1202590843
 561 0054 E17A743F 		.long	1064598241
 562 0058 7B14AE47 		.long	1202590843
 563 005c E17A743F 		.long	1064598241
 564              		.align 32
 565              	.LC5:
 566 0060 00000000 		.long	0
 567 0064 00000040 		.long	1073741824
 568 0068 00000000 		.long	0
 569 006c 00000040 		.long	1073741824
 570 0070 00000000 		.long	0
 571 0074 00000040 		.long	1073741824
 572 0078 00000000 		.long	0
 573 007c 00000040 		.long	1073741824
 574              		.align 32
 575              	.LC6:
 576 0080 7B14AE47 		.long	1202590843
 577 0084 E17A843F 		.long	1065646817
 578 0088 7B14AE47 		.long	1202590843
 579 008c E17A843F 		.long	1065646817
 580 0090 7B14AE47 		.long	1202590843
 581 0094 E17A843F 		.long	1065646817
 582 0098 7B14AE47 		.long	1202590843
 583 009c E17A843F 		.long	1065646817
 584              		.align 32
 585              	.LC7:
 586 00a0 4F1BE8B4 		.long	3035110223
 587 00a4 814E5B3F 		.long	1062948481
 588 00a8 4F1BE8B4 		.long	3035110223
 589 00ac 814E5B3F 		.long	1062948481
 590 00b0 4F1BE8B4 		.long	3035110223
 591 00b4 814E5B3F 		.long	1062948481
 592 00b8 4F1BE8B4 		.long	3035110223
 593 00bc 814E5B3F 		.long	1062948481
 594              		.hidden	__dso_handle
 595              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 596              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccmYVtAb.s 			page 18


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/ccmYVtAb.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccmYVtAb.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccmYVtAb.s:85     .text.startup:0000000000000000 main
     /tmp/ccmYVtAb.s:506    .text.startup:0000000000000880 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccmYVtAb.s:529    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccmYVtAb.s:540    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccmYVtAb.s:545    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccmYVtAb.s:555    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccmYVtAb.s:565    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccmYVtAb.s:575    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccmYVtAb.s:585    .rodata.cst32:00000000000000a0 .LC7

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
