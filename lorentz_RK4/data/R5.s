GAS LISTING /tmp/cclgC9p2.s 			page 1


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
GAS LISTING /tmp/cclgC9p2.s 			page 2


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
GAS LISTING /tmp/cclgC9p2.s 			page 3


  97 0011 4155     		pushq	%r13
  98 0013 4154     		pushq	%r12
  99 0015 53       		pushq	%rbx
 100 0016 4883E4E0 		andq	$-32, %rsp
 101 001a 4881EC80 		subq	$2944, %rsp
 101      0B0000
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
GAS LISTING /tmp/cclgC9p2.s 			page 4


 123 00af C5FD29A4 		vmovapd	%ymm4, 832(%rsp)
 123      24400300 
 123      00
 124 00b8 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 124      24200100 
 124      00
 125 00c1 C5F877   		vzeroupper
 126 00c4 4C8DAC24 		leaq	1824(%rsp), %r13
 126      20070000 
 127 00cc E8000000 		call	_Z8linspaceddi
 127      00
 128 00d1 4C8DB424 		leaq	2784(%rsp), %r14
 128      E00A0000 
 129 00d9 4889C3   		movq	%rax, %rbx
 130 00dc 4C8DA424 		leaq	2304(%rsp), %r12
 130      00090000 
 131 00e4 E8000000 		call	clock
 131      00
 132 00e9 4C8DBC24 		leaq	1344(%rsp), %r15
 132      40050000 
 133 00f1 C5FD282D 		vmovapd	.LC3(%rip), %ymm5
 133      00000000 
 134 00f9 48898424 		movq	%rax, 336(%rsp)
 134      50010000 
 135 0101 C5FD2815 		vmovapd	.LC4(%rip), %ymm2
 135      00000000 
 136 0109 C784245C 		movl	$0, 348(%rsp)
 136      01000000 
 136      000000
 137 0114 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 137      00000000 
 138 011c C5FD283D 		vmovapd	.LC6(%rip), %ymm7
 138      00000000 
 139 0124 C5FD2835 		vmovapd	.LC7(%rip), %ymm6
 139      00000000 
 140 012c C5FD28A4 		vmovapd	288(%rsp), %ymm4
 140      24200100 
 140      00
 141              	.L12:
 142 0135 C5FD2803 		vmovapd	(%rbx), %ymm0
 143 0139 BE102700 		movl	$10000, %esi
 143      00
 144 013e C5FD2984 		vmovapd	%ymm0, 2784(%rsp)
 144      24E00A00 
 144      00
 145 0147 C5FD2843 		vmovapd	32(%rbx), %ymm0
 145      20
 146 014c C5FD2984 		vmovapd	%ymm0, 2816(%rsp)
 146      24000B00 
 146      00
 147 0155 C5FD2843 		vmovapd	64(%rbx), %ymm0
 147      40
 148 015a C5FD2984 		vmovapd	%ymm0, 2848(%rsp)
 148      24200B00 
 148      00
 149 0163 C5FD2843 		vmovapd	96(%rbx), %ymm0
 149      60
GAS LISTING /tmp/cclgC9p2.s 			page 5


 150 0168 C5FD2984 		vmovapd	%ymm0, 2880(%rsp)
 150      24400B00 
 150      00
 151 0171 C5FD2883 		vmovapd	128(%rbx), %ymm0
 151      80000000 
 152 0179 C5FD2984 		vmovapd	%ymm0, 2912(%rsp)
 152      24600B00 
 152      00
 153 0182 C5FD2884 		vmovapd	384(%rsp), %ymm0
 153      24800100 
 153      00
 154 018b C5FD2984 		vmovapd	%ymm0, 1824(%rsp)
 154      24200700 
 154      00
 155 0194 C5FD2884 		vmovapd	416(%rsp), %ymm0
 155      24A00100 
 155      00
 156 019d C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 156      24400700 
 156      00
 157 01a6 C5FD2884 		vmovapd	448(%rsp), %ymm0
 157      24C00100 
 157      00
 158 01af C5FD2984 		vmovapd	%ymm0, 1888(%rsp)
 158      24600700 
 158      00
 159 01b8 C5FD2884 		vmovapd	480(%rsp), %ymm0
 159      24E00100 
 159      00
 160 01c1 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 160      24800700 
 160      00
 161 01ca C5FD2884 		vmovapd	512(%rsp), %ymm0
 161      24000200 
 161      00
 162 01d3 C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 162      24A00700 
 162      00
 163 01dc C5FD2884 		vmovapd	544(%rsp), %ymm0
 163      24200200 
 163      00
 164 01e5 C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 164      24C00700 
 164      00
 165 01ee C5FD2884 		vmovapd	576(%rsp), %ymm0
 165      24400200 
 165      00
 166 01f7 C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 166      24E00700 
 166      00
 167 0200 C5FD2884 		vmovapd	608(%rsp), %ymm0
 167      24600200 
 167      00
 168 0209 C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 168      24000800 
 168      00
 169 0212 C5FD2884 		vmovapd	640(%rsp), %ymm0
GAS LISTING /tmp/cclgC9p2.s 			page 6


 169      24800200 
 169      00
 170 021b C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 170      24200800 
 170      00
 171 0224 C5FD2884 		vmovapd	672(%rsp), %ymm0
 171      24A00200 
 171      00
 172 022d C5FD2984 		vmovapd	%ymm0, 2112(%rsp)
 172      24400800 
 172      00
 173 0236 C5FD2884 		vmovapd	704(%rsp), %ymm0
 173      24C00200 
 173      00
 174 023f C5FD2984 		vmovapd	%ymm0, 2144(%rsp)
 174      24600800 
 174      00
 175 0248 C5FD2884 		vmovapd	736(%rsp), %ymm0
 175      24E00200 
 175      00
 176 0251 C5FD2984 		vmovapd	%ymm0, 2176(%rsp)
 176      24800800 
 176      00
 177 025a C5FD2884 		vmovapd	768(%rsp), %ymm0
 177      24000300 
 177      00
 178 0263 C5FD2984 		vmovapd	%ymm0, 2208(%rsp)
 178      24A00800 
 178      00
 179 026c C5FD2884 		vmovapd	800(%rsp), %ymm0
 179      24200300 
 179      00
 180 0275 C5FD2984 		vmovapd	%ymm0, 2240(%rsp)
 180      24C00800 
 180      00
 181 027e C5FD2884 		vmovapd	832(%rsp), %ymm0
 181      24400300 
 181      00
 182 0287 C5FD2984 		vmovapd	%ymm0, 2272(%rsp)
 182      24E00800 
 182      00
 183              		.p2align 4,,10
 184              		.p2align 3
 185              	.L35:
 186 0290 4C89E8   		movq	%r13, %rax
 187 0293 4C89F2   		movq	%r14, %rdx
 188              	.L29:
 189 0296 C5FD2800 		vmovapd	(%rax), %ymm0
 190 029a 4883C060 		addq	$96, %rax
 191 029e 4883C220 		addq	$32, %rdx
 192 02a2 C5FD2858 		vmovapd	-64(%rax), %ymm3
 192      C0
 193 02a7 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 193      E0
 194 02ac C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 195 02b0 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 195      C0
GAS LISTING /tmp/cclgC9p2.s 			page 7


 196 02b5 C57D2980 		vmovapd	%ymm8, -1056(%rax)
 196      E0FBFFFF 
 197 02bd C57D5942 		vmulpd	-32(%rdx), %ymm0, %ymm8
 197      E0
 198 02c2 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 199 02c6 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 200 02ca C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 200      C1
 201 02cf C57D2980 		vmovapd	%ymm8, -1024(%rax)
 201      00FCFFFF 
 202 02d7 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 202      E0
 203 02dc C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 203      C0
 204 02e1 C5FD2980 		vmovapd	%ymm0, -992(%rax)
 204      20FCFFFF 
 205 02e9 4C39E0   		cmpq	%r12, %rax
 206 02ec 75A8     		jne	.L29
 207 02ee 488D8424 		leaq	864(%rsp), %rax
 207      60030000 
 208 02f6 662E0F1F 		.p2align 4,,10
 208      84000000 
 208      0000
 209              		.p2align 3
 210              	.L15:
 211 0300 C5FD2800 		vmovapd	(%rax), %ymm0
 212 0304 4883C020 		addq	$32, %rax
 213 0308 C5FD2980 		vmovapd	%ymm0, 448(%rax)
 213      C0010000 
 214 0310 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 215 0314 C5FD5880 		vaddpd	928(%rax), %ymm0, %ymm0
 215      A0030000 
 216 031c C5FD2980 		vmovapd	%ymm0, 1408(%rax)
 216      80050000 
 217 0324 4C39F8   		cmpq	%r15, %rax
 218 0327 75D7     		jne	.L15
 219 0329 4C89F2   		movq	%r14, %rdx
 220 032c 4C89E0   		movq	%r12, %rax
 221              	.L17:
 222 032f C5FD2800 		vmovapd	(%rax), %ymm0
 223 0333 4883C060 		addq	$96, %rax
 224 0337 4883C220 		addq	$32, %rdx
 225 033b C5FD2858 		vmovapd	-64(%rax), %ymm3
 225      C0
 226 0340 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 226      E0
 227 0345 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 228 0349 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 228      C0
 229 034e C57D2980 		vmovapd	%ymm8, -1536(%rax)
 229      00FAFFFF 
 230 0356 C57D5942 		vmulpd	-32(%rdx), %ymm0, %ymm8
 230      E0
 231 035b C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 232 035f C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 233 0363 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 233      C1
GAS LISTING /tmp/cclgC9p2.s 			page 8


 234 0368 C57D2980 		vmovapd	%ymm8, -1504(%rax)
 234      20FAFFFF 
 235 0370 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 235      E0
 236 0375 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 236      C0
 237 037a C5FD2980 		vmovapd	%ymm0, -1472(%rax)
 237      40FAFFFF 
 238 0382 4C39F0   		cmpq	%r14, %rax
 239 0385 75A8     		jne	.L17
 240 0387 4C89FA   		movq	%r15, %rdx
 241 038a 660F1F44 		.p2align 4,,10
 241      0000
 242              		.p2align 3
 243              	.L19:
 244 0390 C5FD2882 		vmovapd	-480(%rdx), %ymm0
 244      20FEFFFF 
 245 0398 4883C220 		addq	$32, %rdx
 246 039c C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 247 03a0 C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 248 03a4 C5E5585A 		vaddpd	-32(%rdx), %ymm3, %ymm3
 248      E0
 249 03a9 C5FD5882 		vaddpd	448(%rdx), %ymm0, %ymm0
 249      C0010000 
 250 03b1 C5FD295A 		vmovapd	%ymm3, -32(%rdx)
 250      E0
 251 03b6 C5FD2982 		vmovapd	%ymm0, 928(%rdx)
 251      A0030000 
 252 03be 4C39EA   		cmpq	%r13, %rdx
 253 03c1 75CD     		jne	.L19
 254 03c3 4C89F2   		movq	%r14, %rdx
 255 03c6 4C89E0   		movq	%r12, %rax
 256              	.L21:
 257 03c9 C5FD2800 		vmovapd	(%rax), %ymm0
 258 03cd 4883C060 		addq	$96, %rax
 259 03d1 4883C220 		addq	$32, %rdx
 260 03d5 C5FD2858 		vmovapd	-64(%rax), %ymm3
 260      C0
 261 03da C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 261      E0
 262 03df C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 263 03e3 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 263      C0
 264 03e8 C57D2980 		vmovapd	%ymm8, -1536(%rax)
 264      00FAFFFF 
 265 03f0 C57D5942 		vmulpd	-32(%rdx), %ymm0, %ymm8
 265      E0
 266 03f5 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 267 03f9 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 268 03fd C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 268      C1
 269 0402 C57D2980 		vmovapd	%ymm8, -1504(%rax)
 269      20FAFFFF 
 270 040a C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 270      E0
 271 040f C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 271      C0
GAS LISTING /tmp/cclgC9p2.s 			page 9


 272 0414 C5FD2980 		vmovapd	%ymm0, -1472(%rax)
 272      40FAFFFF 
 273 041c 4939C6   		cmpq	%rax, %r14
 274 041f 75A8     		jne	.L21
 275 0421 4C89FA   		movq	%r15, %rdx
 276              		.p2align 4,,10
 277 0424 0F1F4000 		.p2align 3
 278              	.L23:
 279 0428 C5FD2882 		vmovapd	-480(%rdx), %ymm0
 279      20FEFFFF 
 280 0430 4883C220 		addq	$32, %rdx
 281 0434 C5F559D8 		vmulpd	%ymm0, %ymm1, %ymm3
 282 0438 C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
 283 043c C5E5585A 		vaddpd	-32(%rdx), %ymm3, %ymm3
 283      E0
 284 0441 C5FD5882 		vaddpd	448(%rdx), %ymm0, %ymm0
 284      C0010000 
 285 0449 C5FD295A 		vmovapd	%ymm3, -32(%rdx)
 285      E0
 286 044e C5FD2982 		vmovapd	%ymm0, 928(%rdx)
 286      A0030000 
 287 0456 4939D5   		cmpq	%rdx, %r13
 288 0459 75CD     		jne	.L23
 289 045b 4C89F2   		movq	%r14, %rdx
 290 045e 4C89E0   		movq	%r12, %rax
 291              	.L25:
 292 0461 C5FD2800 		vmovapd	(%rax), %ymm0
 293 0465 4883C060 		addq	$96, %rax
 294 0469 4883C220 		addq	$32, %rdx
 295 046d C5FD2858 		vmovapd	-64(%rax), %ymm3
 295      C0
 296 0472 C57D5948 		vmulpd	-32(%rax), %ymm0, %ymm9
 296      E0
 297 0477 C5655CC0 		vsubpd	%ymm0, %ymm3, %ymm8
 298 047b C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 298      C0
 299 0480 C57D2980 		vmovapd	%ymm8, -1536(%rax)
 299      00FAFFFF 
 300 0488 C57D5942 		vmulpd	-32(%rdx), %ymm0, %ymm8
 300      E0
 301 048d C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 302 0491 C53D5CC3 		vsubpd	%ymm3, %ymm8, %ymm8
 303 0495 C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 303      C1
 304 049a C57D2980 		vmovapd	%ymm8, -1504(%rax)
 304      20FAFFFF 
 305 04a2 C5555940 		vmulpd	-32(%rax), %ymm5, %ymm8
 305      E0
 306 04a7 C4C17D5C 		vsubpd	%ymm8, %ymm0, %ymm0
 306      C0
 307 04ac C5FD2980 		vmovapd	%ymm0, -1472(%rax)
 307      40FAFFFF 
 308 04b4 4939C6   		cmpq	%rax, %r14
 309 04b7 75A8     		jne	.L25
 310 04b9 4C89FA   		movq	%r15, %rdx
 311 04bc 0F1F4000 		.p2align 4,,10
 312              		.p2align 3
GAS LISTING /tmp/cclgC9p2.s 			page 10


 313              	.L27:
 314 04c0 C5FD2802 		vmovapd	(%rdx), %ymm0
 315 04c4 4883C220 		addq	$32, %rdx
 316 04c8 C5FD5882 		vaddpd	-512(%rdx), %ymm0, %ymm0
 316      00FEFFFF 
 317 04d0 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 317      E0
 318 04d5 C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 319 04d9 C5FD5882 		vaddpd	448(%rdx), %ymm0, %ymm0
 319      C0010000 
 320 04e1 C5FD2982 		vmovapd	%ymm0, 448(%rdx)
 320      C0010000 
 321 04e9 4939D5   		cmpq	%rdx, %r13
 322 04ec 75D2     		jne	.L27
 323 04ee 83EE01   		subl	$1, %esi
 324 04f1 0F8599FD 		jne	.L35
 324      FFFF
 325 04f7 8B84245C 		movl	348(%rsp), %eax
 325      010000
 326 04fe 8B8C245C 		movl	348(%rsp), %ecx
 326      010000
 327 0505 BAAD8BDB 		movl	$1759218605, %edx
 327      68
 328 050a F7EA     		imull	%edx
 329 050c 89C8     		movl	%ecx, %eax
 330 050e C1F81F   		sarl	$31, %eax
 331 0511 C1FA0C   		sarl	$12, %edx
 332 0514 29C2     		subl	%eax, %edx
 333 0516 89C8     		movl	%ecx, %eax
 334 0518 69D21027 		imull	$10000, %edx, %edx
 334      0000
 335 051e 29D0     		subl	%edx, %eax
 336 0520 83F801   		cmpl	$1, %eax
 337 0523 0F849700 		je	.L37
 337      0000
 338              	.L30:
 339 0529 8384245C 		addl	$20, 348(%rsp)
 339      01000014 
 340 0531 4881C3A0 		addq	$160, %rbx
 340      000000
 341 0538 81BC245C 		cmpl	$40320, 348(%rsp)
 341      01000080 
 341      9D0000
 342 0543 0F85ECFB 		jne	.L12
 342      FFFF
 343 0549 C5F877   		vzeroupper
 344 054c E8000000 		call	clock
 344      00
 345 0551 BE000000 		movl	$.LC12, %esi
 345      00
 346 0556 4889C3   		movq	%rax, %rbx
 347 0559 BF000000 		movl	$_ZSt4cout, %edi
 347      00
 348 055e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 348      00
 349 0563 4889D9   		movq	%rbx, %rcx
 350 0566 482B8C24 		subq	336(%rsp), %rcx
GAS LISTING /tmp/cclgC9p2.s 			page 11


 350      50010000 
 351 056e 4889C7   		movq	%rax, %rdi
 352 0571 48BECFF7 		movabsq	$2361183241434822607, %rsi
 352      53E3A59B 
 352      C420
 353 057b 4889C8   		movq	%rcx, %rax
 354 057e 48C1F93F 		sarq	$63, %rcx
 355 0582 48F7EE   		imulq	%rsi
 356 0585 4889D6   		movq	%rdx, %rsi
 357 0588 48C1FE07 		sarq	$7, %rsi
 358 058c 4829CE   		subq	%rcx, %rsi
 359 058f E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 359      00
 360 0594 BE000000 		movl	$.LC13, %esi
 360      00
 361 0599 4889C7   		movq	%rax, %rdi
 362 059c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 362      00
 363 05a1 4889C7   		movq	%rax, %rdi
 364 05a4 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 364      00
 365 05a9 488D65D8 		leaq	-40(%rbp), %rsp
 366 05ad 31C0     		xorl	%eax, %eax
 367 05af 5B       		popq	%rbx
 368 05b0 415C     		popq	%r12
 369 05b2 415D     		popq	%r13
 370 05b4 415E     		popq	%r14
 371 05b6 415F     		popq	%r15
 372 05b8 5D       		popq	%rbp
 373              		.cfi_remember_state
 374              		.cfi_def_cfa 7, 8
 375 05b9 C3       		ret
 376 05ba 660F1F44 		.p2align 4,,10
 376      0000
 377              		.p2align 3
 378              	.L37:
 379              		.cfi_restore_state
 380 05c0 C5FD2884 		vmovapd	2784(%rsp), %ymm0
 380      24E00A00 
 380      00
 381 05c9 BA050000 		movl	$5, %edx
 381      00
 382 05ce BE000000 		movl	$.LC8, %esi
 382      00
 383 05d3 BF000000 		movl	$_ZSt4cout, %edi
 383      00
 384 05d8 C5FD2934 		vmovapd	%ymm6, (%rsp)
 384      24
 385 05dd C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 385      24600100 
 385      00
 386 05e6 C5FD2884 		vmovapd	1888(%rsp), %ymm0
 386      24600700 
 386      00
 387 05ef C5FB109C 		vmovsd	352(%rsp), %xmm3
 387      24600100 
 387      00
GAS LISTING /tmp/cclgC9p2.s 			page 12


 388 05f8 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 388      24600100 
 388      00
 389 0601 C5FD2884 		vmovapd	1856(%rsp), %ymm0
 389      24400700 
 389      00
 390 060a C57B1084 		vmovsd	352(%rsp), %xmm8
 390      24600100 
 390      00
 391 0613 C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 391      24600100 
 391      00
 392 061c C5FD2884 		vmovapd	1824(%rsp), %ymm0
 392      24200700 
 392      00
 393 0625 C57B108C 		vmovsd	352(%rsp), %xmm9
 393      24600100 
 393      00
 394 062e C5FD1184 		vmovupd	%ymm0, 352(%rsp)
 394      24600100 
 394      00
 395 0637 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 395      2420
 396 063d C5FB1084 		vmovsd	352(%rsp), %xmm0
 396      24600100 
 396      00
 397 0646 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 397      2440
 398 064c C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 398      2460
 399 0652 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 399      24800000 
 399      00
 400 065b C5FD29A4 		vmovapd	%ymm4, 160(%rsp)
 400      24A00000 
 400      00
 401 0664 C5FB119C 		vmovsd	%xmm3, 192(%rsp)
 401      24C00000 
 401      00
 402 066d C57B1184 		vmovsd	%xmm8, 224(%rsp)
 402      24E00000 
 402      00
 403 0676 C57B118C 		vmovsd	%xmm9, 256(%rsp)
 403      24000100 
 403      00
 404 067f C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 404      24200100 
 404      00
 405 0688 C5F877   		vzeroupper
 406 068b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 406      00
 407 0690 C5FB1084 		vmovsd	288(%rsp), %xmm0
 407      24200100 
 407      00
 408 0699 BF000000 		movl	$_ZSt4cout, %edi
 408      00
 409 069e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/cclgC9p2.s 			page 13


 409      00
 410 06a3 BA060000 		movl	$6, %edx
 410      00
 411 06a8 BE000000 		movl	$.LC9, %esi
 411      00
 412 06ad 4889C7   		movq	%rax, %rdi
 413 06b0 48898424 		movq	%rax, 288(%rsp)
 413      20010000 
 414 06b8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 414      00
 415 06bd C57B108C 		vmovsd	256(%rsp), %xmm9
 415      24000100 
 415      00
 416 06c6 4C8B8C24 		movq	288(%rsp), %r9
 416      20010000 
 417 06ce C57929C8 		vmovapd	%xmm9, %xmm0
 418 06d2 4C89CF   		movq	%r9, %rdi
 419 06d5 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 419      00
 420 06da BA060000 		movl	$6, %edx
 420      00
 421 06df BE000000 		movl	$.LC10, %esi
 421      00
 422 06e4 4889C7   		movq	%rax, %rdi
 423 06e7 48898424 		movq	%rax, 288(%rsp)
 423      20010000 
 424 06ef E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 424      00
 425 06f4 C57B1084 		vmovsd	224(%rsp), %xmm8
 425      24E00000 
 425      00
 426 06fd 4C8B8C24 		movq	288(%rsp), %r9
 426      20010000 
 427 0705 C57929C0 		vmovapd	%xmm8, %xmm0
 428 0709 4C89CF   		movq	%r9, %rdi
 429 070c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 429      00
 430 0711 BA040000 		movl	$4, %edx
 430      00
 431 0716 BE000000 		movl	$.LC11, %esi
 431      00
 432 071b 4889C7   		movq	%rax, %rdi
 433 071e 48898424 		movq	%rax, 288(%rsp)
 433      20010000 
 434 0726 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 434      00
 435 072b 4C8B8C24 		movq	288(%rsp), %r9
 435      20010000 
 436 0733 C5FB109C 		vmovsd	192(%rsp), %xmm3
 436      24C00000 
 436      00
 437 073c C5F928C3 		vmovapd	%xmm3, %xmm0
 438 0740 4C89CF   		movq	%r9, %rdi
 439 0743 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 439      00
 440 0748 4989C1   		movq	%rax, %r9
 441 074b 488B00   		movq	(%rax), %rax
GAS LISTING /tmp/cclgC9p2.s 			page 14


 442 074e C5FD28A4 		vmovapd	160(%rsp), %ymm4
 442      24A00000 
 442      00
 443 0757 C5FD28AC 		vmovapd	128(%rsp), %ymm5
 443      24800000 
 443      00
 444 0760 C5FD2854 		vmovapd	96(%rsp), %ymm2
 444      2460
 445 0766 488B40E8 		movq	-24(%rax), %rax
 446 076a C5FD284C 		vmovapd	64(%rsp), %ymm1
 446      2440
 447 0770 C5FD287C 		vmovapd	32(%rsp), %ymm7
 447      2420
 448 0776 C5FD2834 		vmovapd	(%rsp), %ymm6
 448      24
 449 077b 498B9401 		movq	240(%r9,%rax), %rdx
 449      F0000000 
 450 0783 4885D2   		testq	%rdx, %rdx
 451 0786 0F843301 		je	.L38
 451      0000
 452 078c 807A3800 		cmpb	$0, 56(%rdx)
 453 0790 0F848B00 		je	.L32
 453      0000
 454 0796 0FB64243 		movzbl	67(%rdx), %eax
 455              	.L33:
 456 079a 0FBEF0   		movsbl	%al, %esi
 457 079d 4C89CF   		movq	%r9, %rdi
 458 07a0 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 458      24800000 
 458      00
 459 07a9 C5FD29BC 		vmovapd	%ymm7, 160(%rsp)
 459      24A00000 
 459      00
 460 07b2 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 460      24C00000 
 460      00
 461 07bb C5FD2994 		vmovapd	%ymm2, 224(%rsp)
 461      24E00000 
 461      00
 462 07c4 C5FD29AC 		vmovapd	%ymm5, 256(%rsp)
 462      24000100 
 462      00
 463 07cd C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 463      24200100 
 463      00
 464 07d6 C5F877   		vzeroupper
 465 07d9 E8000000 		call	_ZNSo3putEc
 465      00
 466 07de 4889C7   		movq	%rax, %rdi
 467 07e1 E8000000 		call	_ZNSo5flushEv
 467      00
 468 07e6 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 468      24800000 
 468      00
 469 07ef C5FD28BC 		vmovapd	160(%rsp), %ymm7
 469      24A00000 
 469      00
GAS LISTING /tmp/cclgC9p2.s 			page 15


 470 07f8 C5FD288C 		vmovapd	192(%rsp), %ymm1
 470      24C00000 
 470      00
 471 0801 C5FD2894 		vmovapd	224(%rsp), %ymm2
 471      24E00000 
 471      00
 472 080a C5FD28AC 		vmovapd	256(%rsp), %ymm5
 472      24000100 
 472      00
 473 0813 C5FD28A4 		vmovapd	288(%rsp), %ymm4
 473      24200100 
 473      00
 474 081c E908FDFF 		jmp	.L30
 474      FF
 475              	.L32:
 476 0821 4889D7   		movq	%rdx, %rdi
 477 0824 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 477      2440
 478 082a 4C898C24 		movq	%r9, 256(%rsp)
 478      00010000 
 479 0832 C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 479      2460
 480 0838 48899424 		movq	%rdx, 288(%rsp)
 480      20010000 
 481 0840 C5FD298C 		vmovapd	%ymm1, 128(%rsp)
 481      24800000 
 481      00
 482 0849 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 482      24A00000 
 482      00
 483 0852 C5FD29AC 		vmovapd	%ymm5, 192(%rsp)
 483      24C00000 
 483      00
 484 085b C5FD29A4 		vmovapd	%ymm4, 224(%rsp)
 484      24E00000 
 484      00
 485 0864 C5F877   		vzeroupper
 486 0867 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 486      00
 487 086c 488B9424 		movq	288(%rsp), %rdx
 487      20010000 
 488 0874 BE0A0000 		movl	$10, %esi
 488      00
 489 0879 488B02   		movq	(%rdx), %rax
 490 087c 4889D7   		movq	%rdx, %rdi
 491 087f FF5030   		call	*48(%rax)
 492 0882 C5FD2874 		vmovapd	64(%rsp), %ymm6
 492      2440
 493 0888 4C8B8C24 		movq	256(%rsp), %r9
 493      00010000 
 494 0890 C5FD287C 		vmovapd	96(%rsp), %ymm7
 494      2460
 495 0896 C5FD288C 		vmovapd	128(%rsp), %ymm1
 495      24800000 
 495      00
 496 089f C5FD2894 		vmovapd	160(%rsp), %ymm2
 496      24A00000 
GAS LISTING /tmp/cclgC9p2.s 			page 16


 496      00
 497 08a8 C5FD28AC 		vmovapd	192(%rsp), %ymm5
 497      24C00000 
 497      00
 498 08b1 C5FD28A4 		vmovapd	224(%rsp), %ymm4
 498      24E00000 
 498      00
 499 08ba E9DBFEFF 		jmp	.L33
 499      FF
 500              	.L38:
 501 08bf C5F877   		vzeroupper
 502 08c2 E8000000 		call	_ZSt16__throw_bad_castv
 502      00
 503              		.cfi_endproc
 504              	.LFE4383:
 505              		.size	main, .-main
 506 08c7 660F1F84 		.p2align 4,,15
 506      00000000 
 506      00
 507              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 508              	_GLOBAL__sub_I__Z8linspaceddi:
 509              	.LFB4596:
 510              		.cfi_startproc
 511 08d0 4883EC08 		subq	$8, %rsp
 512              		.cfi_def_cfa_offset 16
 513 08d4 BF000000 		movl	$_ZStL8__ioinit, %edi
 513      00
 514 08d9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 514      00
 515 08de BA000000 		movl	$__dso_handle, %edx
 515      00
 516 08e3 BE000000 		movl	$_ZStL8__ioinit, %esi
 516      00
 517 08e8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 517      00
 518 08ed 4883C408 		addq	$8, %rsp
 519              		.cfi_def_cfa_offset 8
 520 08f1 E9000000 		jmp	__cxa_atexit
 520      00
 521              		.cfi_endproc
 522              	.LFE4596:
 523              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 524              		.section	.init_array,"aw"
 525              		.align 8
 526 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 526      00000000 
 527              		.local	_ZStL8__ioinit
 528              		.comm	_ZStL8__ioinit,1,1
 529              		.section	.rodata.cst32,"aM",@progbits,32
 530              		.align 32
 531              	.LC0:
 532 0000 00000000 		.long	0
 533 0004 00002440 		.long	1076101120
 534 0008 00000000 		.long	0
 535 000c 00002440 		.long	1076101120
 536 0010 00000000 		.long	0
 537 0014 00002440 		.long	1076101120
GAS LISTING /tmp/cclgC9p2.s 			page 17


 538 0018 00000000 		.long	0
 539 001c 00002440 		.long	1076101120
 540              		.section	.rodata.cst8,"aM",@progbits,8
 541              		.align 8
 542              	.LC1:
 543 0000 00000000 		.long	0
 544 0004 00003540 		.long	1077215232
 545              		.section	.rodata.cst32
 546              		.align 32
 547              	.LC3:
 548 0020 55555555 		.long	1431655765
 549 0024 55550540 		.long	1074091349
 550 0028 55555555 		.long	1431655765
 551 002c 55550540 		.long	1074091349
 552 0030 55555555 		.long	1431655765
 553 0034 55550540 		.long	1074091349
 554 0038 55555555 		.long	1431655765
 555 003c 55550540 		.long	1074091349
 556              		.align 32
 557              	.LC4:
 558 0040 7B14AE47 		.long	1202590843
 559 0044 E17A743F 		.long	1064598241
 560 0048 7B14AE47 		.long	1202590843
 561 004c E17A743F 		.long	1064598241
 562 0050 7B14AE47 		.long	1202590843
 563 0054 E17A743F 		.long	1064598241
 564 0058 7B14AE47 		.long	1202590843
 565 005c E17A743F 		.long	1064598241
 566              		.align 32
 567              	.LC5:
 568 0060 00000000 		.long	0
 569 0064 00000040 		.long	1073741824
 570 0068 00000000 		.long	0
 571 006c 00000040 		.long	1073741824
 572 0070 00000000 		.long	0
 573 0074 00000040 		.long	1073741824
 574 0078 00000000 		.long	0
 575 007c 00000040 		.long	1073741824
 576              		.align 32
 577              	.LC6:
 578 0080 7B14AE47 		.long	1202590843
 579 0084 E17A843F 		.long	1065646817
 580 0088 7B14AE47 		.long	1202590843
 581 008c E17A843F 		.long	1065646817
 582 0090 7B14AE47 		.long	1202590843
 583 0094 E17A843F 		.long	1065646817
 584 0098 7B14AE47 		.long	1202590843
 585 009c E17A843F 		.long	1065646817
 586              		.align 32
 587              	.LC7:
 588 00a0 4F1BE8B4 		.long	3035110223
 589 00a4 814E5B3F 		.long	1062948481
 590 00a8 4F1BE8B4 		.long	3035110223
 591 00ac 814E5B3F 		.long	1062948481
 592 00b0 4F1BE8B4 		.long	3035110223
 593 00b4 814E5B3F 		.long	1062948481
 594 00b8 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/cclgC9p2.s 			page 18


 595 00bc 814E5B3F 		.long	1062948481
 596              		.hidden	__dso_handle
 597              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 598              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cclgC9p2.s 			page 19


DEFINED SYMBOLS
                            *ABS*:0000000000000000 lorentz_RK4.cpp
     /tmp/cclgC9p2.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cclgC9p2.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cclgC9p2.s:85     .text.startup:0000000000000000 main
     /tmp/cclgC9p2.s:508    .text.startup:00000000000008d0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cclgC9p2.s:531    .rodata.cst32:0000000000000000 .LC0
     /tmp/cclgC9p2.s:542    .rodata.cst8:0000000000000000 .LC1
     /tmp/cclgC9p2.s:547    .rodata.cst32:0000000000000020 .LC3
     /tmp/cclgC9p2.s:557    .rodata.cst32:0000000000000040 .LC4
     /tmp/cclgC9p2.s:567    .rodata.cst32:0000000000000060 .LC5
     /tmp/cclgC9p2.s:577    .rodata.cst32:0000000000000080 .LC6
     /tmp/cclgC9p2.s:587    .rodata.cst32:00000000000000a0 .LC7

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
