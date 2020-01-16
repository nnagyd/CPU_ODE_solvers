GAS LISTING /tmp/ccgx2aRa.s 			page 1


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
GAS LISTING /tmp/ccgx2aRa.s 			page 2


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
GAS LISTING /tmp/ccgx2aRa.s 			page 3


  96              		.cfi_def_cfa_register 6
  97 000d 4156     		pushq	%r14
  98 000f 4155     		pushq	%r13
  99 0011 4154     		pushq	%r12
 100 0013 53       		pushq	%rbx
 101 0014 4883E4E0 		andq	$-32, %rsp
 102 0018 4881EC40 		subq	$3392, %rsp
 102      0D0000
 103              		.cfi_offset 14, -24
 104              		.cfi_offset 13, -32
 105              		.cfi_offset 12, -40
 106              		.cfi_offset 3, -48
 107 001f C57D2825 		vmovapd	.LC1(%rip), %ymm12
 107      00000000 
 108 0027 C5FB100D 		vmovsd	.LC2(%rip), %xmm1
 108      00000000 
 109 002f C57D29A4 		vmovapd	%ymm12, 512(%rsp)
 109      24000200 
 109      00
 110 0038 C57D29A4 		vmovapd	%ymm12, 544(%rsp)
 110      24200200 
 110      00
 111 0041 C57D29A4 		vmovapd	%ymm12, 576(%rsp)
 111      24400200 
 111      00
 112 004a C57D29A4 		vmovapd	%ymm12, 608(%rsp)
 112      24600200 
 112      00
 113 0053 C57D29A4 		vmovapd	%ymm12, 640(%rsp)
 113      24800200 
 113      00
 114 005c C57D29A4 		vmovapd	%ymm12, 672(%rsp)
 114      24A00200 
 114      00
 115 0065 C57D29A4 		vmovapd	%ymm12, 704(%rsp)
 115      24C00200 
 115      00
 116 006e C57D29A4 		vmovapd	%ymm12, 736(%rsp)
 116      24E00200 
 116      00
 117 0077 C57D29A4 		vmovapd	%ymm12, 768(%rsp)
 117      24000300 
 117      00
 118 0080 C57D29A4 		vmovapd	%ymm12, 448(%rsp)
 118      24C00100 
 118      00
 119 0089 C5F877   		vzeroupper
 120 008c 4531E4   		xorl	%r12d, %r12d
 121 008f E8000000 		call	_Z8linspaceddi
 121      00
 122 0094 4989C5   		movq	%rax, %r13
 123 0097 E8000000 		call	clock
 123      00
 124 009c C5F8280D 		vmovaps	.LC54(%rip), %xmm1
 124      00000000 
 125 00a4 4889C3   		movq	%rax, %rbx
 126 00a7 C5F828C1 		vmovaps	%xmm1, %xmm0
GAS LISTING /tmp/ccgx2aRa.s 			page 4


 127 00ab C57D282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 127      00000000 
 128 00b3 C57D2835 		vmovapd	.LC29(%rip), %ymm14
 128      00000000 
 129 00bb C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm7
 129      F901
 130 00c1 C57D28A4 		vmovapd	448(%rsp), %ymm12
 130      24C00100 
 130      00
 131 00ca C5FC297C 		vmovaps	%ymm7, 32(%rsp)
 131      2420
 132 00d0 C5C5573D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 132      00000000 
 133 00d8 C5FD293C 		vmovapd	%ymm7, (%rsp)
 133      24
 134              	.L12:
 135 00dd C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 136 00e1 C4417D28 		vmovapd	0(%r13), %ymm15
 136      7D00
 137 00e7 488DB424 		leaq	3200(%rsp), %rsi
 137      800C0000 
 138 00ef C5FD282D 		vmovapd	.LC0(%rip), %ymm5
 138      00000000 
 139 00f7 488DBC24 		leaq	896(%rsp), %rdi
 139      80030000 
 140 00ff C57D29BC 		vmovapd	%ymm15, 3296(%rsp)
 140      24E00C00 
 140      00
 141 0108 C5FD2984 		vmovapd	%ymm0, 3104(%rsp)
 141      24200C00 
 141      00
 142 0111 C57D28CD 		vmovapd	%ymm5, %ymm9
 143 0115 C5FD29AC 		vmovapd	%ymm5, 3200(%rsp)
 143      24800C00 
 143      00
 144 011e C4C17D28 		vmovapd	32(%r13), %ymm2
 144      5520
 145 0124 C5FD2984 		vmovapd	%ymm0, 3136(%rsp)
 145      24400C00 
 145      00
 146 012d C5FD2994 		vmovapd	%ymm2, 3328(%rsp)
 146      24000D00 
 146      00
 147 0136 C5FD29AC 		vmovapd	%ymm5, 3232(%rsp)
 147      24A00C00 
 147      00
 148 013f C5FD2994 		vmovapd	%ymm2, 128(%rsp)
 148      24800000 
 148      00
 149 0148 C4C17D28 		vmovapd	64(%r13), %ymm1
 149      4D40
 150 014e C5FD2984 		vmovapd	%ymm0, 3168(%rsp)
 150      24600C00 
 150      00
 151 0157 C5FD2884 		vmovapd	512(%rsp), %ymm0
 151      24000200 
 151      00
GAS LISTING /tmp/ccgx2aRa.s 			page 5


 152 0160 C5FD298C 		vmovapd	%ymm1, 3360(%rsp)
 152      24200D00 
 152      00
 153 0169 C5FD2984 		vmovapd	%ymm0, 2816(%rsp)
 153      24000B00 
 153      00
 154 0172 C5FD2884 		vmovapd	544(%rsp), %ymm0
 154      24200200 
 154      00
 155 017b C5FD29AC 		vmovapd	%ymm5, 3264(%rsp)
 155      24C00C00 
 155      00
 156 0184 C5FD2984 		vmovapd	%ymm0, 2848(%rsp)
 156      24200B00 
 156      00
 157 018d C5FD2884 		vmovapd	576(%rsp), %ymm0
 157      24400200 
 157      00
 158 0196 C5FD294C 		vmovapd	%ymm1, 96(%rsp)
 158      2460
 159 019c C5FD2984 		vmovapd	%ymm0, 2880(%rsp)
 159      24400B00 
 159      00
 160 01a5 C5FD2884 		vmovapd	608(%rsp), %ymm0
 160      24600200 
 160      00
 161 01ae C5FD2984 		vmovapd	%ymm0, 2912(%rsp)
 161      24600B00 
 161      00
 162 01b7 C5FD2884 		vmovapd	640(%rsp), %ymm0
 162      24800200 
 162      00
 163 01c0 C5FD2984 		vmovapd	%ymm0, 2944(%rsp)
 163      24800B00 
 163      00
 164 01c9 C5FD2884 		vmovapd	672(%rsp), %ymm0
 164      24A00200 
 164      00
 165 01d2 C5FD2984 		vmovapd	%ymm0, 2976(%rsp)
 165      24A00B00 
 165      00
 166 01db C5FD2884 		vmovapd	704(%rsp), %ymm0
 166      24C00200 
 166      00
 167 01e4 C5FD2984 		vmovapd	%ymm0, 3008(%rsp)
 167      24C00B00 
 167      00
 168 01ed C5FD2884 		vmovapd	736(%rsp), %ymm0
 168      24E00200 
 168      00
 169 01f6 C5FD2984 		vmovapd	%ymm0, 3040(%rsp)
 169      24E00B00 
 169      00
 170 01ff C5FD2884 		vmovapd	768(%rsp), %ymm0
 170      24000300 
 170      00
 171 0208 C5FD2984 		vmovapd	%ymm0, 3072(%rsp)
GAS LISTING /tmp/ccgx2aRa.s 			page 6


 171      24000C00 
 171      00
 172 0211 C57D29BC 		vmovapd	%ymm15, 160(%rsp)
 172      24A00000 
 172      00
 173 021a C57D28FD 		vmovapd	%ymm5, %ymm15
 174 021e C5FD296C 		vmovapd	%ymm5, 64(%rsp)
 174      2440
 175              		.p2align 4,,10
 176 0224 0F1F4000 		.p2align 3
 177              	.L32:
 178 0228 C5FD2894 		vmovapd	2816(%rsp), %ymm2
 178      24000B00 
 178      00
 179 0231 488D9424 		leaq	800(%rsp), %rdx
 179      20030000 
 180 0239 31C0     		xorl	%eax, %eax
 181 023b C57D2884 		vmovapd	2848(%rsp), %ymm8
 181      24200B00 
 181      00
 182 0244 C5ED598C 		vmulpd	160(%rsp), %ymm2, %ymm1
 182      24A00000 
 182      00
 183 024d C5BD5CC2 		vsubpd	%ymm2, %ymm8, %ymm0
 184 0251 C5FD28BC 		vmovapd	2880(%rsp), %ymm7
 184      24400B00 
 184      00
 185 025a C59D59F0 		vmulpd	%ymm0, %ymm12, %ymm6
 186 025e C4C1755C 		vsubpd	%ymm8, %ymm1, %ymm1
 186      C8
 187 0263 C5ED59C7 		vmulpd	%ymm7, %ymm2, %ymm0
 188 0267 C5FD29B4 		vmovapd	%ymm6, 448(%rsp)
 188      24C00100 
 188      00
 189 0270 C5FD29B4 		vmovapd	%ymm6, 1664(%rsp)
 189      24800600 
 189      00
 190 0279 C5F55CE8 		vsubpd	%ymm0, %ymm1, %ymm5
 191 027d C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm1
 191      C8
 192 0282 C5FD28B4 		vmovapd	2976(%rsp), %ymm6
 192      24A00B00 
 192      00
 193 028b C5C55905 		vmulpd	.LC4(%rip), %ymm7, %ymm0
 193      00000000 
 194 0293 C5FD29AC 		vmovapd	%ymm5, 416(%rsp)
 194      24A00100 
 194      00
 195 029c C5FD29AC 		vmovapd	%ymm5, 1696(%rsp)
 195      24A00600 
 195      00
 196 02a5 C5F55CE0 		vsubpd	%ymm0, %ymm1, %ymm4
 197 02a9 C5FD288C 		vmovapd	2912(%rsp), %ymm1
 197      24600B00 
 197      00
 198 02b2 C5FD29A4 		vmovapd	%ymm4, 384(%rsp)
 198      24800100 
GAS LISTING /tmp/ccgx2aRa.s 			page 7


 198      00
 199 02bb C5FD29A4 		vmovapd	%ymm4, 1728(%rsp)
 199      24C00600 
 199      00
 200 02c4 C5FD28A4 		vmovapd	2944(%rsp), %ymm4
 200      24800B00 
 200      00
 201 02cd C5DD5CC1 		vsubpd	%ymm1, %ymm4, %ymm0
 202 02d1 C59D59D8 		vmulpd	%ymm0, %ymm12, %ymm3
 203 02d5 C5F559C6 		vmulpd	%ymm6, %ymm1, %ymm0
 204 02d9 C5FD299C 		vmovapd	%ymm3, 352(%rsp)
 204      24600100 
 204      00
 205 02e2 C5FD299C 		vmovapd	%ymm3, 1760(%rsp)
 205      24E00600 
 205      00
 206 02eb C5F5599C 		vmulpd	128(%rsp), %ymm1, %ymm3
 206      24800000 
 206      00
 207 02f4 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 208 02f8 C5E55CC0 		vsubpd	%ymm0, %ymm3, %ymm0
 209 02fc C5F559DC 		vmulpd	%ymm4, %ymm1, %ymm3
 210 0300 C5FD2984 		vmovapd	%ymm0, 320(%rsp)
 210      24400100 
 210      00
 211 0309 C5FD2984 		vmovapd	%ymm0, 1792(%rsp)
 211      24000700 
 211      00
 212 0312 C5CD5905 		vmulpd	.LC4(%rip), %ymm6, %ymm0
 212      00000000 
 213 031a C5655CD8 		vsubpd	%ymm0, %ymm3, %ymm11
 214 031e C5FD2884 		vmovapd	3008(%rsp), %ymm0
 214      24C00B00 
 214      00
 215 0327 C5FD289C 		vmovapd	3040(%rsp), %ymm3
 215      24E00B00 
 215      00
 216 0330 C5E55CE8 		vsubpd	%ymm0, %ymm3, %ymm5
 217 0334 C57D299C 		vmovapd	%ymm11, 288(%rsp)
 217      24200100 
 217      00
 218 033d C57D299C 		vmovapd	%ymm11, 1824(%rsp)
 218      24200700 
 218      00
 219 0346 C57D595C 		vmulpd	96(%rsp), %ymm0, %ymm11
 219      2460
 220 034c C51D59D5 		vmulpd	%ymm5, %ymm12, %ymm10
 221 0350 C5FD28AC 		vmovapd	3072(%rsp), %ymm5
 221      24000C00 
 221      00
 222 0359 C57D2994 		vmovapd	%ymm10, 256(%rsp)
 222      24000100 
 222      00
 223 0362 C5255CDB 		vsubpd	%ymm3, %ymm11, %ymm11
 224 0366 C57D2994 		vmovapd	%ymm10, 1856(%rsp)
 224      24400700 
 224      00
GAS LISTING /tmp/ccgx2aRa.s 			page 8


 225 036f C57D59D5 		vmulpd	%ymm5, %ymm0, %ymm10
 226 0373 C441255C 		vsubpd	%ymm10, %ymm11, %ymm11
 226      DA
 227 0378 C5555915 		vmulpd	.LC4(%rip), %ymm5, %ymm10
 227      00000000 
 228 0380 C57D299C 		vmovapd	%ymm11, 224(%rsp)
 228      24E00000 
 228      00
 229 0389 C57D299C 		vmovapd	%ymm11, 1888(%rsp)
 229      24600700 
 229      00
 230 0392 C57D59DB 		vmulpd	%ymm3, %ymm0, %ymm11
 231 0396 C441255C 		vsubpd	%ymm10, %ymm11, %ymm10
 231      D2
 232 039b C57D289C 		vmovapd	416(%rsp), %ymm11
 232      24A00100 
 232      00
 233 03a4 C57D2994 		vmovapd	%ymm10, 192(%rsp)
 233      24C00000 
 233      00
 234 03ad C57D2994 		vmovapd	%ymm10, 1920(%rsp)
 234      24800700 
 234      00
 235 03b6 C57D2894 		vmovapd	448(%rsp), %ymm10
 235      24C00100 
 235      00
 236 03bf C52D5915 		vmulpd	.LC5(%rip), %ymm10, %ymm10
 236      00000000 
 237 03c7 C4410559 		vmulpd	%ymm10, %ymm15, %ymm10
 237      D2
 238 03cc C4C16D58 		vaddpd	%ymm10, %ymm2, %ymm2
 238      D2
 239 03d1 C5255915 		vmulpd	.LC5(%rip), %ymm11, %ymm10
 239      00000000 
 240 03d9 C57D289C 		vmovapd	288(%rsp), %ymm11
 240      24200100 
 240      00
 241 03e2 C4410559 		vmulpd	%ymm10, %ymm15, %ymm10
 241      D2
 242 03e7 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 242      C2
 243 03ec C57D2894 		vmovapd	384(%rsp), %ymm10
 243      24800100 
 243      00
 244 03f5 C52D5915 		vmulpd	.LC5(%rip), %ymm10, %ymm10
 244      00000000 
 245 03fd C4410559 		vmulpd	%ymm10, %ymm15, %ymm15
 245      FA
 246 0402 C4C14558 		vaddpd	%ymm15, %ymm7, %ymm7
 246      FF
 247 0407 C57D28BC 		vmovapd	352(%rsp), %ymm15
 247      24600100 
 247      00
 248 0410 C5055915 		vmulpd	.LC5(%rip), %ymm15, %ymm10
 248      00000000 
 249 0418 C57D28BC 		vmovapd	320(%rsp), %ymm15
 249      24400100 
GAS LISTING /tmp/ccgx2aRa.s 			page 9


 249      00
 250 0421 C4413559 		vmulpd	%ymm10, %ymm9, %ymm10
 250      D2
 251 0426 C4C17558 		vaddpd	%ymm10, %ymm1, %ymm1
 251      CA
 252 042b C5055915 		vmulpd	.LC5(%rip), %ymm15, %ymm10
 252      00000000 
 253 0433 C57D287C 		vmovapd	64(%rsp), %ymm15
 253      2440
 254 0439 C4413559 		vmulpd	%ymm10, %ymm9, %ymm10
 254      D2
 255 043e C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 255      E2
 256 0443 C5255915 		vmulpd	.LC5(%rip), %ymm11, %ymm10
 256      00000000 
 257 044b C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 257      CA
 258 0450 C53D5CD2 		vsubpd	%ymm2, %ymm8, %ymm10
 259 0454 C4C14D58 		vaddpd	%ymm9, %ymm6, %ymm6
 259      F1
 260 0459 C57D288C 		vmovapd	256(%rsp), %ymm9
 260      24000100 
 260      00
 261 0462 C4411D59 		vmulpd	%ymm10, %ymm12, %ymm10
 261      D2
 262 0467 C535590D 		vmulpd	.LC5(%rip), %ymm9, %ymm9
 262      00000000 
 263 046f C4413559 		vmulpd	%ymm15, %ymm9, %ymm9
 263      CF
 264 0474 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 264      C1
 265 0479 C57D288C 		vmovapd	224(%rsp), %ymm9
 265      24E00000 
 265      00
 266 0482 C535590D 		vmulpd	.LC5(%rip), %ymm9, %ymm9
 266      00000000 
 267 048a C4413559 		vmulpd	%ymm15, %ymm9, %ymm9
 267      CF
 268 048f C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
 268      D9
 269 0494 C57D288C 		vmovapd	192(%rsp), %ymm9
 269      24C00000 
 269      00
 270 049d C535590D 		vmulpd	.LC5(%rip), %ymm9, %ymm9
 270      00000000 
 271 04a5 C57D2994 		vmovapd	%ymm10, 800(%rsp)
 271      24200300 
 271      00
 272 04ae C56D599C 		vmulpd	160(%rsp), %ymm2, %ymm11
 272      24A00000 
 272      00
 273 04b7 C52D5915 		vmulpd	.LC6(%rip), %ymm10, %ymm10
 273      00000000 
 274 04bf C4413559 		vmulpd	%ymm15, %ymm9, %ymm9
 274      CF
 275 04c4 C57559BC 		vmulpd	128(%rsp), %ymm1, %ymm15
 275      24800000 
GAS LISTING /tmp/ccgx2aRa.s 			page 10


 275      00
 276 04cd C441255C 		vsubpd	%ymm8, %ymm11, %ymm11
 276      D8
 277 04d2 C4C15558 		vaddpd	%ymm9, %ymm5, %ymm5
 277      E9
 278 04d7 C56D59CF 		vmulpd	%ymm7, %ymm2, %ymm9
 279 04db C5C5593D 		vmulpd	.LC4(%rip), %ymm7, %ymm7
 279      00000000 
 280 04e3 C5055CFC 		vsubpd	%ymm4, %ymm15, %ymm15
 281 04e7 C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 281      D0
 282 04ec C441255C 		vsubpd	%ymm9, %ymm11, %ymm11
 282      D9
 283 04f1 C57559C6 		vmulpd	%ymm6, %ymm1, %ymm8
 284 04f5 C5655CC8 		vsubpd	%ymm0, %ymm3, %ymm9
 285 04f9 C5CD5935 		vmulpd	.LC4(%rip), %ymm6, %ymm6
 285      00000000 
 286 0501 C5ED5CFF 		vsubpd	%ymm7, %ymm2, %ymm7
 287 0505 C57D299C 		vmovapd	%ymm11, 832(%rsp)
 287      24400300 
 287      00
 288 050e C525591D 		vmulpd	.LC6(%rip), %ymm11, %ymm11
 288      00000000 
 289 0516 C5DD5CD1 		vsubpd	%ymm1, %ymm4, %ymm2
 290 051a C5F559CC 		vmulpd	%ymm4, %ymm1, %ymm1
 291 051e C441055C 		vsubpd	%ymm8, %ymm15, %ymm15
 291      F8
 292 0523 C5FD59E5 		vmulpd	%ymm5, %ymm0, %ymm4
 293 0527 C5FD29BC 		vmovapd	%ymm7, 864(%rsp)
 293      24600300 
 293      00
 294 0530 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 295 0534 C5F55CCE 		vsubpd	%ymm6, %ymm1, %ymm1
 296 0538 C5FD5974 		vmulpd	96(%rsp), %ymm0, %ymm6
 296      2460
 297 053e C57D29BC 		vmovapd	%ymm15, 928(%rsp)
 297      24A00300 
 297      00
 298 0547 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 299 054b C5FD2994 		vmovapd	%ymm2, 896(%rsp)
 299      24800300 
 299      00
 300 0554 C5D5592D 		vmulpd	.LC4(%rip), %ymm5, %ymm5
 300      00000000 
 301 055c C5FD298C 		vmovapd	%ymm1, 960(%rsp)
 301      24C00300 
 301      00
 302 0565 C4411D59 		vmulpd	%ymm9, %ymm12, %ymm9
 302      C9
 303 056a C5CD5CF3 		vsubpd	%ymm3, %ymm6, %ymm6
 304 056e C5FD289C 		vmovapd	352(%rsp), %ymm3
 304      24600100 
 304      00
 305 0577 C5C5593D 		vmulpd	.LC6(%rip), %ymm7, %ymm7
 305      00000000 
 306 057f C5ED5915 		vmulpd	.LC6(%rip), %ymm2, %ymm2
 306      00000000 
GAS LISTING /tmp/ccgx2aRa.s 			page 11


 307 0587 C5FD5CED 		vsubpd	%ymm5, %ymm0, %ymm5
 308 058b C57D298C 		vmovapd	%ymm9, 992(%rsp)
 308      24E00300 
 308      00
 309 0594 C5CD5CE4 		vsubpd	%ymm4, %ymm6, %ymm4
 310 0598 C5FD28B4 		vmovapd	448(%rsp), %ymm6
 310      24C00100 
 310      00
 311 05a1 C5CD5905 		vmulpd	.LC7(%rip), %ymm6, %ymm0
 311      00000000 
 312 05a9 C5FD28B4 		vmovapd	416(%rsp), %ymm6
 312      24A00100 
 312      00
 313 05b2 C5FD29AC 		vmovapd	%ymm5, 1056(%rsp)
 313      24200400 
 313      00
 314 05bb C5FD29A4 		vmovapd	%ymm4, 1024(%rsp)
 314      24000400 
 314      00
 315 05c4 C4417D58 		vaddpd	%ymm10, %ymm0, %ymm10
 315      D2
 316 05c9 C5CD5905 		vmulpd	.LC7(%rip), %ymm6, %ymm0
 316      00000000 
 317 05d1 C52D5984 		vmulpd	3200(%rsp), %ymm10, %ymm8
 317      24800C00 
 317      00
 318 05da C57D2894 		vmovapd	384(%rsp), %ymm10
 318      24800100 
 318      00
 319 05e3 C4417D58 		vaddpd	%ymm11, %ymm0, %ymm11
 319      DB
 320 05e8 C5AD5905 		vmulpd	.LC7(%rip), %ymm10, %ymm0
 320      00000000 
 321 05f0 C53D5884 		vaddpd	2816(%rsp), %ymm8, %ymm8
 321      24000B00 
 321      00
 322 05f9 C5A559B4 		vmulpd	3200(%rsp), %ymm11, %ymm6
 322      24800C00 
 322      00
 323 0602 C5FD58FF 		vaddpd	%ymm7, %ymm0, %ymm7
 324 0606 C5E55905 		vmulpd	.LC7(%rip), %ymm3, %ymm0
 324      00000000 
 325 060e C57D2984 		vmovapd	%ymm8, 2528(%rsp)
 325      24E00900 
 325      00
 326 0617 C5CD58B4 		vaddpd	2848(%rsp), %ymm6, %ymm6
 326      24200B00 
 326      00
 327 0620 C5C559BC 		vmulpd	3200(%rsp), %ymm7, %ymm7
 327      24800C00 
 327      00
 328 0629 C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
 329 062d C5FD29B4 		vmovapd	%ymm6, 2560(%rsp)
 329      24000A00 
 329      00
 330 0636 C4C14D5C 		vsubpd	%ymm8, %ymm6, %ymm3
 330      D8
GAS LISTING /tmp/ccgx2aRa.s 			page 12


 331 063b C5ED5994 		vmulpd	3232(%rsp), %ymm2, %ymm2
 331      24A00C00 
 331      00
 332 0644 C5C558BC 		vaddpd	2880(%rsp), %ymm7, %ymm7
 332      24400B00 
 332      00
 333 064d C59D59DB 		vmulpd	%ymm3, %ymm12, %ymm3
 334 0651 C5ED5894 		vaddpd	2912(%rsp), %ymm2, %ymm2
 334      24600B00 
 334      00
 335 065a C5FD29BC 		vmovapd	%ymm7, 2592(%rsp)
 335      24200A00 
 335      00
 336 0663 C5FD2994 		vmovapd	%ymm2, 2624(%rsp)
 336      24400A00 
 336      00
 337 066c C505593D 		vmulpd	.LC6(%rip), %ymm15, %ymm15
 337      00000000 
 338 0674 C5FD2884 		vmovapd	320(%rsp), %ymm0
 338      24400100 
 338      00
 339 067d C57D289C 		vmovapd	288(%rsp), %ymm11
 339      24200100 
 339      00
 340 0686 C5FD5905 		vmulpd	.LC7(%rip), %ymm0, %ymm0
 340      00000000 
 341 068e C5FD299C 		vmovapd	%ymm3, 1952(%rsp)
 341      24A00700 
 341      00
 342 0697 C57D2894 		vmovapd	256(%rsp), %ymm10
 342      24000100 
 342      00
 343 06a0 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 343      00000000 
 344 06a8 C5DD5925 		vmulpd	.LC6(%rip), %ymm4, %ymm4
 344      00000000 
 345 06b0 C4417D58 		vaddpd	%ymm15, %ymm0, %ymm15
 345      FF
 346 06b5 C5A55905 		vmulpd	.LC7(%rip), %ymm11, %ymm0
 346      00000000 
 347 06bd C57D289C 		vmovapd	224(%rsp), %ymm11
 347      24E00000 
 347      00
 348 06c6 C535590D 		vmulpd	.LC6(%rip), %ymm9, %ymm9
 348      00000000 
 349 06ce C5D5592D 		vmulpd	.LC6(%rip), %ymm5, %ymm5
 349      00000000 
 350 06d6 C5BD599C 		vmulpd	3296(%rsp), %ymm8, %ymm3
 350      24E00C00 
 350      00
 351 06df C5FD58C9 		vaddpd	%ymm1, %ymm0, %ymm1
 352 06e3 C5AD5905 		vmulpd	.LC7(%rip), %ymm10, %ymm0
 352      00000000 
 353 06eb C5255915 		vmulpd	.LC7(%rip), %ymm11, %ymm10
 353      00000000 
 354 06f3 C50559BC 		vmulpd	3232(%rsp), %ymm15, %ymm15
 354      24A00C00 
GAS LISTING /tmp/ccgx2aRa.s 			page 13


 354      00
 355 06fc C5E55CDE 		vsubpd	%ymm6, %ymm3, %ymm3
 356 0700 C5F5598C 		vmulpd	3232(%rsp), %ymm1, %ymm1
 356      24A00C00 
 356      00
 357 0709 C4417D58 		vaddpd	%ymm9, %ymm0, %ymm9
 357      C9
 358 070e C5BD59F6 		vmulpd	%ymm6, %ymm8, %ymm6
 359 0712 C5AD58E4 		vaddpd	%ymm4, %ymm10, %ymm4
 360 0716 C57D2894 		vmovapd	192(%rsp), %ymm10
 360      24C00000 
 360      00
 361 071f C5AD5905 		vmulpd	.LC7(%rip), %ymm10, %ymm0
 361      00000000 
 362 0727 C50558BC 		vaddpd	2944(%rsp), %ymm15, %ymm15
 362      24800B00 
 362      00
 363 0730 C535598C 		vmulpd	3264(%rsp), %ymm9, %ymm9
 363      24C00C00 
 363      00
 364 0739 C5F5588C 		vaddpd	2976(%rsp), %ymm1, %ymm1
 364      24A00B00 
 364      00
 365 0742 C5DD59A4 		vmulpd	3264(%rsp), %ymm4, %ymm4
 365      24C00C00 
 365      00
 366 074b C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 367 074f C5BD59EF 		vmulpd	%ymm7, %ymm8, %ymm5
 368 0753 C57D29BC 		vmovapd	%ymm15, 2656(%rsp)
 368      24600A00 
 368      00
 369 075c C535588C 		vaddpd	3008(%rsp), %ymm9, %ymm9
 369      24C00B00 
 369      00
 370 0765 C5FD298C 		vmovapd	%ymm1, 2688(%rsp)
 370      24800A00 
 370      00
 371 076e C5C5593D 		vmulpd	.LC4(%rip), %ymm7, %ymm7
 371      00000000 
 372 0776 C5FD5984 		vmulpd	3264(%rsp), %ymm0, %ymm0
 372      24C00C00 
 372      00
 373 077f C5E55CDD 		vsubpd	%ymm5, %ymm3, %ymm3
 374 0783 C5ED59E9 		vmulpd	%ymm1, %ymm2, %ymm5
 375 0787 C5DD58A4 		vaddpd	3040(%rsp), %ymm4, %ymm4
 375      24E00B00 
 375      00
 376 0790 C57D298C 		vmovapd	%ymm9, 2720(%rsp)
 376      24A00A00 
 376      00
 377 0799 C5CD5CF7 		vsubpd	%ymm7, %ymm6, %ymm6
 378 079d C5FD299C 		vmovapd	%ymm3, 1984(%rsp)
 378      24C00700 
 378      00
 379 07a6 C5855CDA 		vsubpd	%ymm2, %ymm15, %ymm3
 380 07aa C5FD5884 		vaddpd	3072(%rsp), %ymm0, %ymm0
 380      24000C00 
GAS LISTING /tmp/ccgx2aRa.s 			page 14


 380      00
 381 07b3 C5FD29A4 		vmovapd	%ymm4, 2752(%rsp)
 381      24C00A00 
 381      00
 382 07bc C59D59DB 		vmulpd	%ymm3, %ymm12, %ymm3
 383 07c0 C5FD2984 		vmovapd	%ymm0, 2784(%rsp)
 383      24E00A00 
 383      00
 384 07c9 C5FD29B4 		vmovapd	%ymm6, 2016(%rsp)
 384      24E00700 
 384      00
 385 07d2 C5F5590D 		vmulpd	.LC4(%rip), %ymm1, %ymm1
 385      00000000 
 386 07da C5FD299C 		vmovapd	%ymm3, 2048(%rsp)
 386      24000800 
 386      00
 387 07e3 C5FD283D 		vmovapd	.LC8(%rip), %ymm7
 387      00000000 
 388 07eb C5ED599C 		vmulpd	3328(%rsp), %ymm2, %ymm3
 388      24000D00 
 388      00
 389 07f4 C4C16D59 		vmulpd	%ymm15, %ymm2, %ymm2
 389      D7
 390 07f9 C5ED5CC9 		vsubpd	%ymm1, %ymm2, %ymm1
 391 07fd C5B559D0 		vmulpd	%ymm0, %ymm9, %ymm2
 392 0801 C4C1655C 		vsubpd	%ymm15, %ymm3, %ymm3
 392      DF
 393 0806 C5FD5905 		vmulpd	.LC4(%rip), %ymm0, %ymm0
 393      00000000 
 394 080e C5FD298C 		vmovapd	%ymm1, 2112(%rsp)
 394      24400800 
 394      00
 395 0817 C4C15D5C 		vsubpd	%ymm9, %ymm4, %ymm1
 395      C9
 396 081c C5E55CDD 		vsubpd	%ymm5, %ymm3, %ymm3
 397 0820 C59D59C9 		vmulpd	%ymm1, %ymm12, %ymm1
 398 0824 C5FD299C 		vmovapd	%ymm3, 2080(%rsp)
 398      24200800 
 398      00
 399 082d C5FD298C 		vmovapd	%ymm1, 2144(%rsp)
 399      24600800 
 399      00
 400 0836 C5B5598C 		vmulpd	3360(%rsp), %ymm9, %ymm1
 400      24200D00 
 400      00
 401 083f C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 402 0843 C5F55CCC 		vsubpd	%ymm4, %ymm1, %ymm1
 403 0847 C5B55CC0 		vsubpd	%ymm0, %ymm9, %ymm0
 404 084b C5F55CCA 		vsubpd	%ymm2, %ymm1, %ymm1
 405 084f C5FD2984 		vmovapd	%ymm0, 2208(%rsp)
 405      24A00800 
 405      00
 406 0858 C5FD298C 		vmovapd	%ymm1, 2176(%rsp)
 406      24800800 
 406      00
 407              	.L14:
 408 0861 C5FD282D 		vmovapd	.LC8(%rip), %ymm5
GAS LISTING /tmp/ccgx2aRa.s 			page 15


 408      00000000 
 409 0869 488D0C30 		leaq	(%rax,%rsi), %rcx
 410 086d 4883C020 		addq	$32, %rax
 411 0871 C5FD2835 		vmovapd	.LC9(%rip), %ymm6
 411      00000000 
 412 0879 4883C260 		addq	$96, %rdx
 413 087d C5D5598A 		vmulpd	1056(%rdx), %ymm5, %ymm1
 413      20040000 
 414 0885 C5FD282D 		vmovapd	.LC10(%rip), %ymm5
 414      00000000 
 415 088d C5CD5942 		vmulpd	-96(%rdx), %ymm6, %ymm0
 415      A0
 416 0892 C5D55992 		vmulpd	768(%rdx), %ymm5, %ymm2
 416      00030000 
 417 089a C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 418 089e C5D55992 		vmulpd	800(%rdx), %ymm5, %ymm2
 418      20030000 
 419 08a6 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 420 08aa C5C5598A 		vmulpd	1088(%rdx), %ymm7, %ymm1
 420      40040000 
 421 08b2 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 422 08b6 C5FD5882 		vaddpd	1920(%rdx), %ymm0, %ymm0
 422      80070000 
 423 08be C5FD2982 		vmovapd	%ymm0, 1632(%rdx)
 423      60060000 
 424 08c6 C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 424      C0
 425 08cb C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 426 08cf C5D55992 		vmulpd	832(%rdx), %ymm5, %ymm2
 426      40030000 
 427 08d7 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 428 08db C5C5598A 		vmulpd	1120(%rdx), %ymm7, %ymm1
 428      60040000 
 429 08e3 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 430 08e7 C5FD5882 		vaddpd	1952(%rdx), %ymm0, %ymm0
 430      A0070000 
 431 08ef C5FD2982 		vmovapd	%ymm0, 1664(%rdx)
 431      80060000 
 432 08f7 C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 432      E0
 433 08fc C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 434 0900 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 435 0904 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 436 0908 C5FD5882 		vaddpd	1984(%rdx), %ymm0, %ymm0
 436      C0070000 
 437 0910 C5FD2982 		vmovapd	%ymm0, 1696(%rdx)
 437      A0060000 
 438 0918 4883F860 		cmpq	$96, %rax
 439 091c 0F853FFF 		jne	.L14
 439      FFFF
 440 0922 C5FD2884 		vmovapd	2528(%rsp), %ymm0
 440      24E00900 
 440      00
 441 092b 488D9424 		leaq	800(%rsp), %rdx
 441      20030000 
 442 0933 30C0     		xorb	%al, %al
 443 0935 C5FD288C 		vmovapd	2560(%rsp), %ymm1
GAS LISTING /tmp/ccgx2aRa.s 			page 16


 443      24000A00 
 443      00
 444 093e C5FD599C 		vmulpd	3296(%rsp), %ymm0, %ymm3
 444      24E00C00 
 444      00
 445 0947 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 446 094b C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 446      00000000 
 447 0953 C5FD283D 		vmovapd	.LC12(%rip), %ymm7
 447      00000000 
 448 095b C5FD2835 		vmovapd	.LC14(%rip), %ymm6
 448      00000000 
 449 0963 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 450 0967 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 451 096b C5FD2994 		vmovapd	%ymm2, 2240(%rsp)
 451      24C00800 
 451      00
 452 0974 C5FD2894 		vmovapd	2592(%rsp), %ymm2
 452      24200A00 
 452      00
 453 097d C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 454 0981 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 454      00000000 
 455 0989 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 456 098d C5FD288C 		vmovapd	2656(%rsp), %ymm1
 456      24600A00 
 456      00
 457 0996 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 458 099a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 459 099e C5FD299C 		vmovapd	%ymm3, 2272(%rsp)
 459      24E00800 
 459      00
 460 09a7 C5FD2984 		vmovapd	%ymm0, 2304(%rsp)
 460      24000900 
 460      00
 461 09b0 C5FD2884 		vmovapd	2624(%rsp), %ymm0
 461      24400A00 
 461      00
 462 09b9 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 463 09bd C5FD599C 		vmulpd	3328(%rsp), %ymm0, %ymm3
 463      24000D00 
 463      00
 464 09c6 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 465 09ca C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 466 09ce C5FD2994 		vmovapd	%ymm2, 2336(%rsp)
 466      24200900 
 466      00
 467 09d7 C5FD2894 		vmovapd	2688(%rsp), %ymm2
 467      24800A00 
 467      00
 468 09e0 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 469 09e4 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 469      00000000 
 470 09ec C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 471 09f0 C5FD288C 		vmovapd	2752(%rsp), %ymm1
 471      24C00A00 
 471      00
GAS LISTING /tmp/ccgx2aRa.s 			page 17


 472 09f9 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 473 09fd C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 474 0a01 C5FD299C 		vmovapd	%ymm3, 2368(%rsp)
 474      24400900 
 474      00
 475 0a0a C5FD2984 		vmovapd	%ymm0, 2400(%rsp)
 475      24600900 
 475      00
 476 0a13 C5FD2884 		vmovapd	2720(%rsp), %ymm0
 476      24A00A00 
 476      00
 477 0a1c C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 478 0a20 C5FD599C 		vmulpd	3360(%rsp), %ymm0, %ymm3
 478      24200D00 
 478      00
 479 0a29 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 480 0a2d C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 481 0a31 C5FD2994 		vmovapd	%ymm2, 2432(%rsp)
 481      24800900 
 481      00
 482 0a3a C5FD2894 		vmovapd	2784(%rsp), %ymm2
 482      24E00A00 
 482      00
 483 0a43 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 484 0a47 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 484      00000000 
 485 0a4f C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 486 0a53 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 487 0a57 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 487      00000000 
 488 0a5f C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 489 0a63 C5FD299C 		vmovapd	%ymm3, 2464(%rsp)
 489      24A00900 
 489      00
 490 0a6c C5FD2984 		vmovapd	%ymm0, 2496(%rsp)
 490      24C00900 
 490      00
 491              	.L16:
 492 0a75 C5CD599A 		vmulpd	864(%rdx), %ymm6, %ymm3
 492      60030000 
 493 0a7d 488D0C30 		leaq	(%rax,%rsi), %rcx
 494 0a81 4883C020 		addq	$32, %rax
 495 0a85 4883C260 		addq	$96, %rdx
 496 0a89 C5DD5942 		vmulpd	-96(%rdx), %ymm4, %ymm0
 496      A0
 497 0a8e C5C55992 		vmulpd	1056(%rdx), %ymm7, %ymm2
 497      20040000 
 498 0a96 C5D5598A 		vmulpd	1344(%rdx), %ymm5, %ymm1
 498      40050000 
 499 0a9e C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 500 0aa2 C5CD599A 		vmulpd	800(%rdx), %ymm6, %ymm3
 500      20030000 
 501 0aaa C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 502 0aae C5C55992 		vmulpd	1088(%rdx), %ymm7, %ymm2
 502      40040000 
 503 0ab6 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 504 0aba C5D5598A 		vmulpd	1376(%rdx), %ymm5, %ymm1
GAS LISTING /tmp/ccgx2aRa.s 			page 18


 504      60050000 
 505 0ac2 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 506 0ac6 C5FD5882 		vaddpd	1920(%rdx), %ymm0, %ymm0
 506      80070000 
 507 0ace C5FD2982 		vmovapd	%ymm0, 1632(%rdx)
 507      60060000 
 508 0ad6 C5DD5942 		vmulpd	-64(%rdx), %ymm4, %ymm0
 508      C0
 509 0adb C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 510 0adf C5CD599A 		vmulpd	832(%rdx), %ymm6, %ymm3
 510      40030000 
 511 0ae7 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 512 0aeb C5C55992 		vmulpd	1120(%rdx), %ymm7, %ymm2
 512      60040000 
 513 0af3 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 514 0af7 C5D5598A 		vmulpd	1408(%rdx), %ymm5, %ymm1
 514      80050000 
 515 0aff C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 516 0b03 C5FD5882 		vaddpd	1952(%rdx), %ymm0, %ymm0
 516      A0070000 
 517 0b0b C5FD2982 		vmovapd	%ymm0, 1664(%rdx)
 517      80060000 
 518 0b13 C5DD5942 		vmulpd	-32(%rdx), %ymm4, %ymm0
 518      E0
 519 0b18 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 520 0b1c C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 521 0b20 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 522 0b24 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 523 0b28 C5FD5882 		vaddpd	1984(%rdx), %ymm0, %ymm0
 523      C0070000 
 524 0b30 C5FD2982 		vmovapd	%ymm0, 1696(%rdx)
 524      A0060000 
 525 0b38 4883F860 		cmpq	$96, %rax
 526 0b3c 0F8533FF 		jne	.L16
 526      FFFF
 527 0b42 C5FD2884 		vmovapd	2528(%rsp), %ymm0
 527      24E00900 
 527      00
 528 0b4b 488D9424 		leaq	800(%rsp), %rdx
 528      20030000 
 529 0b53 30C0     		xorb	%al, %al
 530 0b55 C5FD288C 		vmovapd	2560(%rsp), %ymm1
 530      24000A00 
 530      00
 531 0b5e C5FD599C 		vmulpd	3296(%rsp), %ymm0, %ymm3
 531      24E00C00 
 531      00
 532 0b67 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 533 0b6b C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 534 0b6f C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 535 0b73 C5FD2994 		vmovapd	%ymm2, 1376(%rsp)
 535      24600500 
 535      00
 536 0b7c C5FD2894 		vmovapd	2592(%rsp), %ymm2
 536      24200A00 
 536      00
 537 0b85 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
GAS LISTING /tmp/ccgx2aRa.s 			page 19


 538 0b89 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 538      00000000 
 539 0b91 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 540 0b95 C5FD288C 		vmovapd	2656(%rsp), %ymm1
 540      24600A00 
 540      00
 541 0b9e C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 542 0ba2 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 543 0ba6 C5FD299C 		vmovapd	%ymm3, 1408(%rsp)
 543      24800500 
 543      00
 544 0baf C5FD2984 		vmovapd	%ymm0, 1440(%rsp)
 544      24A00500 
 544      00
 545 0bb8 C5FD2884 		vmovapd	2624(%rsp), %ymm0
 545      24400A00 
 545      00
 546 0bc1 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 547 0bc5 C5FD599C 		vmulpd	3328(%rsp), %ymm0, %ymm3
 547      24000D00 
 547      00
 548 0bce C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 549 0bd2 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 550 0bd6 C5FD2994 		vmovapd	%ymm2, 1472(%rsp)
 550      24C00500 
 550      00
 551 0bdf C5FD2894 		vmovapd	2688(%rsp), %ymm2
 551      24800A00 
 551      00
 552 0be8 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 553 0bec C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 553      00000000 
 554 0bf4 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 555 0bf8 C5FD288C 		vmovapd	2752(%rsp), %ymm1
 555      24C00A00 
 555      00
 556 0c01 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 557 0c05 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 558 0c09 C5FD299C 		vmovapd	%ymm3, 1504(%rsp)
 558      24E00500 
 558      00
 559 0c12 C5FD2984 		vmovapd	%ymm0, 1536(%rsp)
 559      24000600 
 559      00
 560 0c1b C5FD2884 		vmovapd	2720(%rsp), %ymm0
 560      24A00A00 
 560      00
 561 0c24 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 562 0c28 C5FD599C 		vmulpd	3360(%rsp), %ymm0, %ymm3
 562      24200D00 
 562      00
 563 0c31 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 564 0c35 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 565 0c39 C5FD2994 		vmovapd	%ymm2, 1568(%rsp)
 565      24200600 
 565      00
 566 0c42 C5FD2894 		vmovapd	2784(%rsp), %ymm2
GAS LISTING /tmp/ccgx2aRa.s 			page 20


 566      24E00A00 
 566      00
 567 0c4b C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 568 0c4f C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 568      00000000 
 569 0c57 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 570 0c5b C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 571 0c5f C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 572 0c63 C5FD299C 		vmovapd	%ymm3, 1600(%rsp)
 572      24400600 
 572      00
 573 0c6c C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 573      24600600 
 573      00
 574              	.L18:
 575 0c75 C5FD282D 		vmovapd	.LC15(%rip), %ymm5
 575      00000000 
 576 0c7d 488D0C30 		leaq	(%rax,%rsi), %rcx
 577 0c81 4883C020 		addq	$32, %rax
 578 0c85 C5FD2825 		vmovapd	.LC17(%rip), %ymm4
 578      00000000 
 579 0c8d 4883C260 		addq	$96, %rdx
 580 0c91 C5D5598A 		vmulpd	480(%rdx), %ymm5, %ymm1
 580      E0010000 
 581 0c99 C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 581      00000000 
 582 0ca1 C5FD282D 		vmovapd	.LC19(%rip), %ymm5
 582      00000000 
 583 0ca9 C5DD599A 		vmulpd	1056(%rdx), %ymm4, %ymm3
 583      20040000 
 584 0cb1 C5FD283D 		vmovapd	.LC16(%rip), %ymm7
 584      00000000 
 585 0cb9 C5D559A2 		vmulpd	768(%rdx), %ymm5, %ymm4
 585      00030000 
 586 0cc1 C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 586      00000000 
 587 0cc9 C5CD5942 		vmulpd	-96(%rdx), %ymm6, %ymm0
 587      A0
 588 0cce C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 588      00000000 
 589 0cd6 C5C55992 		vmulpd	1344(%rdx), %ymm7, %ymm2
 589      40050000 
 590 0cde C5FD283D 		vmovapd	.LC15(%rip), %ymm7
 590      00000000 
 591 0ce6 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 592 0cea C5FD2825 		vmovapd	.LC16(%rip), %ymm4
 592      00000000 
 593 0cf2 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 594 0cf6 C5CD599A 		vmulpd	1088(%rdx), %ymm6, %ymm3
 594      40040000 
 595 0cfe C5FD2835 		vmovapd	.LC16(%rip), %ymm6
 595      00000000 
 596 0d06 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 597 0d0a C5DD5992 		vmulpd	1376(%rdx), %ymm4, %ymm2
 597      60050000 
 598 0d12 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 599 0d16 C5C5598A 		vmulpd	512(%rdx), %ymm7, %ymm1
GAS LISTING /tmp/ccgx2aRa.s 			page 21


 599      00020000 
 600 0d1e C5FD283D 		vmovapd	.LC19(%rip), %ymm7
 600      00000000 
 601 0d26 C5C559A2 		vmulpd	800(%rdx), %ymm7, %ymm4
 601      20030000 
 602 0d2e C5FD283D 		vmovapd	.LC18(%rip), %ymm7
 602      00000000 
 603 0d36 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 604 0d3a C5FD5882 		vaddpd	1920(%rdx), %ymm0, %ymm0
 604      80070000 
 605 0d42 C5FD2982 		vmovapd	%ymm0, 1632(%rdx)
 605      60060000 
 606 0d4a C5D55942 		vmulpd	-64(%rdx), %ymm5, %ymm0
 606      C0
 607 0d4f C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 607      00000000 
 608 0d57 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 609 0d5b C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 609      00000000 
 610 0d63 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 611 0d67 C5D5599A 		vmulpd	1120(%rdx), %ymm5, %ymm3
 611      60040000 
 612 0d6f C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 613 0d73 C5CD5992 		vmulpd	1408(%rdx), %ymm6, %ymm2
 613      80050000 
 614 0d7b C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 615 0d7f C5DD598A 		vmulpd	544(%rdx), %ymm4, %ymm1
 615      20020000 
 616 0d87 C5FD2825 		vmovapd	.LC19(%rip), %ymm4
 616      00000000 
 617 0d8f C5DD59A2 		vmulpd	832(%rdx), %ymm4, %ymm4
 617      40030000 
 618 0d97 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 619 0d9b C5FD5882 		vaddpd	1952(%rdx), %ymm0, %ymm0
 619      A0070000 
 620 0da3 C5FD2982 		vmovapd	%ymm0, 1664(%rdx)
 620      80060000 
 621 0dab C5C55942 		vmulpd	-32(%rdx), %ymm7, %ymm0
 621      E0
 622 0db0 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 623 0db4 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 624 0db8 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 625 0dbc C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 626 0dc0 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 627 0dc4 C5FD5882 		vaddpd	1984(%rdx), %ymm0, %ymm0
 627      C0070000 
 628 0dcc C5FD2982 		vmovapd	%ymm0, 1696(%rdx)
 628      A0060000 
 629 0dd4 4883F860 		cmpq	$96, %rax
 630 0dd8 0F8597FE 		jne	.L18
 630      FFFF
 631 0dde C5FD2884 		vmovapd	2528(%rsp), %ymm0
 631      24E00900 
 631      00
 632 0de7 488D8424 		leaq	800(%rsp), %rax
 632      20030000 
 633 0def C5FD288C 		vmovapd	2560(%rsp), %ymm1
GAS LISTING /tmp/ccgx2aRa.s 			page 22


 633      24000A00 
 633      00
 634 0df8 C5FD599C 		vmulpd	3296(%rsp), %ymm0, %ymm3
 634      24E00C00 
 634      00
 635 0e01 4C8D8020 		leaq	288(%rax), %r8
 635      010000
 636 0e08 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 637 0e0c C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 638 0e10 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 639 0e14 C5FD2994 		vmovapd	%ymm2, 1088(%rsp)
 639      24400400 
 639      00
 640 0e1d C5FD2894 		vmovapd	2592(%rsp), %ymm2
 640      24200A00 
 640      00
 641 0e26 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 642 0e2a C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 642      00000000 
 643 0e32 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 644 0e36 C5FD288C 		vmovapd	2656(%rsp), %ymm1
 644      24600A00 
 644      00
 645 0e3f C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 646 0e43 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 647 0e47 C5FD299C 		vmovapd	%ymm3, 1120(%rsp)
 647      24600400 
 647      00
 648 0e50 C5FD2984 		vmovapd	%ymm0, 1152(%rsp)
 648      24800400 
 648      00
 649 0e59 C5FD2884 		vmovapd	2624(%rsp), %ymm0
 649      24400A00 
 649      00
 650 0e62 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 651 0e66 C5FD599C 		vmulpd	3328(%rsp), %ymm0, %ymm3
 651      24000D00 
 651      00
 652 0e6f C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 653 0e73 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 654 0e77 C5FD2994 		vmovapd	%ymm2, 1184(%rsp)
 654      24A00400 
 654      00
 655 0e80 C5FD2894 		vmovapd	2688(%rsp), %ymm2
 655      24800A00 
 655      00
 656 0e89 C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 657 0e8d C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 657      00000000 
 658 0e95 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 659 0e99 C5FD288C 		vmovapd	2752(%rsp), %ymm1
 659      24C00A00 
 659      00
 660 0ea2 C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 661 0ea6 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 662 0eaa C5FD299C 		vmovapd	%ymm3, 1216(%rsp)
 662      24C00400 
GAS LISTING /tmp/ccgx2aRa.s 			page 23


 662      00
 663 0eb3 C5FD2984 		vmovapd	%ymm0, 1248(%rsp)
 663      24E00400 
 663      00
 664 0ebc C5FD2884 		vmovapd	2720(%rsp), %ymm0
 664      24A00A00 
 664      00
 665 0ec5 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 666 0ec9 C5FD599C 		vmulpd	3360(%rsp), %ymm0, %ymm3
 666      24200D00 
 666      00
 667 0ed2 C59D59D2 		vmulpd	%ymm2, %ymm12, %ymm2
 668 0ed6 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 669 0eda C5FD2994 		vmovapd	%ymm2, 1280(%rsp)
 669      24000500 
 669      00
 670 0ee3 C5FD2894 		vmovapd	2784(%rsp), %ymm2
 670      24E00A00 
 670      00
 671 0eec C5FD59E2 		vmulpd	%ymm2, %ymm0, %ymm4
 672 0ef0 C5ED5915 		vmulpd	.LC4(%rip), %ymm2, %ymm2
 672      00000000 
 673 0ef8 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 674 0efc C5E55CDC 		vsubpd	%ymm4, %ymm3, %ymm3
 675 0f00 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 676 0f04 C5FD299C 		vmovapd	%ymm3, 1312(%rsp)
 676      24200500 
 676      00
 677 0f0d C5FD2984 		vmovapd	%ymm0, 1344(%rsp)
 677      24400500 
 677      00
 678              	.L22:
 679 0f16 4C89C2   		movq	%r8, %rdx
 680 0f19 B9030000 		movl	$3, %ecx
 680      00
 681              	.L20:
 682 0f1e C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 682      00000000 
 683 0f26 4883C220 		addq	$32, %rdx
 684 0f2a C5FD282D 		vmovapd	.LC25(%rip), %ymm5
 684      00000000 
 685 0f32 C5CD594A 		vmulpd	-32(%rdx), %ymm6, %ymm1
 685      E0
 686 0f37 C5FD2835 		vmovapd	.LC21(%rip), %ymm6
 686      00000000 
 687 0f3f C5CD5992 		vmulpd	1120(%rdx), %ymm6, %ymm2
 687      60040000 
 688 0f47 C5FD2835 		vmovapd	.LC22(%rip), %ymm6
 688      00000000 
 689 0f4f C5CD5982 		vmulpd	832(%rdx), %ymm6, %ymm0
 689      40030000 
 690 0f57 C5FD2835 		vmovapd	.LC23(%rip), %ymm6
 690      00000000 
 691 0f5f C5CD599A 		vmulpd	544(%rdx), %ymm6, %ymm3
 691      20020000 
 692 0f67 C5FD2835 		vmovapd	.LC24(%rip), %ymm6
 692      00000000 
GAS LISTING /tmp/ccgx2aRa.s 			page 24


 693 0f6f C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 694 0f73 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 695 0f77 C5D55992 		vmulpd	256(%rdx), %ymm5, %ymm2
 695      00010000 
 696 0f7f C5FD282D 		vmovapd	.LC27(%rip), %ymm5
 696      00000000 
 697 0f87 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 698 0f8b C5CD594A 		vmulpd	-32(%rdx), %ymm6, %ymm1
 698      E0
 699 0f90 C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 699      00000000 
 700 0f98 C5CD599A 		vmulpd	1120(%rdx), %ymm6, %ymm3
 700      60040000 
 701 0fa0 C5FD2835 		vmovapd	.LC28(%rip), %ymm6
 701      00000000 
 702 0fa8 C5FD5980 		vmulpd	2400(%rax), %ymm0, %ymm0
 702      60090000 
 703 0fb0 C5CD59A2 		vmulpd	544(%rdx), %ymm6, %ymm4
 703      20020000 
 704 0fb8 C5FD5882 		vaddpd	1696(%rdx), %ymm0, %ymm0
 704      A0060000 
 705 0fc0 C5FD2982 		vmovapd	%ymm0, 1408(%rdx)
 705      80050000 
 706 0fc8 C5D55982 		vmulpd	832(%rdx), %ymm5, %ymm0
 706      40030000 
 707 0fd0 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 708 0fd4 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 709 0fd8 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 710 0fdc C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 711 0fe0 C595548A 		vandpd	1408(%rdx), %ymm13, %ymm1
 711      80050000 
 712 0fe8 C5FD5980 		vmulpd	2400(%rax), %ymm0, %ymm0
 712      60090000 
 713 0ff0 C4C17559 		vmulpd	%ymm14, %ymm1, %ymm1
 713      CE
 714 0ff5 C58D58C9 		vaddpd	%ymm1, %ymm14, %ymm1
 715 0ff9 C5FD2982 		vmovapd	%ymm0, -320(%rdx)
 715      C0FEFFFF 
 716 1001 C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 717 1005 C5FD294A 		vmovapd	%ymm1, -32(%rdx)
 717      E0
 718 100a C4C17D54 		vandpd	%ymm13, %ymm0, %ymm0
 718      C5
 719 100f C5FD2982 		vmovapd	%ymm0, 256(%rdx)
 719      00010000 
 720 1017 83E901   		subl	$1, %ecx
 721 101a 0F85FEFE 		jne	.L20
 721      FFFF
 722 1020 4883C020 		addq	$32, %rax
 723 1024 4983C060 		addq	$96, %r8
 724 1028 4839F8   		cmpq	%rdi, %rax
 725 102b 0F85E5FE 		jne	.L22
 725      FFFF
 726 1031 C5FD2884 		vmovapd	1376(%rsp), %ymm0
 726      24600500 
 726      00
 727 103a 488D8C24 		leaq	800(%rsp), %rcx
GAS LISTING /tmp/ccgx2aRa.s 			page 25


 727      20030000 
 728 1042 C57D2854 		vmovapd	32(%rsp), %ymm10
 728      2420
 729 1048 C5FD5D84 		vminpd	1408(%rsp), %ymm0, %ymm0
 729      24800500 
 729      00
 730 1051 4889CA   		movq	%rcx, %rdx
 731 1054 C5FD2834 		vmovapd	(%rsp), %ymm6
 731      24
 732 1059 C5FD5D84 		vminpd	1440(%rsp), %ymm0, %ymm0
 732      24A00500 
 732      00
 733 1062 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 733      24400400 
 733      00
 734 106b C5FD2884 		vmovapd	1472(%rsp), %ymm0
 734      24C00500 
 734      00
 735 1074 C5FD5D84 		vminpd	1504(%rsp), %ymm0, %ymm0
 735      24E00500 
 735      00
 736 107d C5FD5D84 		vminpd	1536(%rsp), %ymm0, %ymm0
 736      24000600 
 736      00
 737 1086 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 737      24600400 
 737      00
 738 108f C5FD2884 		vmovapd	1568(%rsp), %ymm0
 738      24200600 
 738      00
 739 1098 C5FD5D84 		vminpd	1600(%rsp), %ymm0, %ymm0
 739      24400600 
 739      00
 740 10a1 C5FD5D84 		vminpd	1632(%rsp), %ymm0, %ymm0
 740      24600600 
 740      00
 741 10aa C5FD2984 		vmovapd	%ymm0, 1152(%rsp)
 741      24800400 
 741      00
 742              	.L28:
 743 10b3 C5FD28AA 		vmovapd	288(%rdx), %ymm5
 743      20010000 
 744 10bb C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 744      C9
 745 10c0 C5FD280D 		vmovapd	.LC34(%rip), %ymm1
 745      00000000 
 746 10c8 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm4
 746      EC01
 747 10ce C5F928DD 		vmovapd	%xmm5, %xmm3
 748 10d2 C5E1DB15 		vpand	.LC30(%rip), %xmm3, %xmm2
 748      00000000 
 749 10da C5C173D3 		vpsrlq	$52, %xmm3, %xmm7
 749      34
 750 10df C5D9DB05 		vpand	.LC30(%rip), %xmm4, %xmm0
 750      00000000 
 751 10e7 C5C1EB3D 		vpor	.LC32(%rip), %xmm7, %xmm7
 751      00000000 
GAS LISTING /tmp/ccgx2aRa.s 			page 26


 752 10ef C5E9EB15 		vpor	.LC31(%rip), %xmm2, %xmm2
 752      00000000 
 753 10f7 C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 753      00000000 
 754 10ff C4E36D18 		vinsertf128	$0x1, %xmm0, %ymm2, %ymm2
 754      D001
 755 1105 C5F973D4 		vpsrlq	$52, %xmm4, %xmm0
 755      34
 756 110a C5F9EB05 		vpor	.LC32(%rip), %xmm0, %xmm0
 756      00000000 
 757 1112 C5F5C2CA 		vcmppd	$1, %ymm2, %ymm1, %ymm1
 757      01
 758 1117 C4C37D19 		vextractf128	$0x1, %ymm1, %xmm8
 758      C801
 759 111d C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 759      F801
 760 1123 C5F928C1 		vmovapd	%xmm1, %xmm0
 761 1127 C5F5540D 		vandpd	.LC36(%rip), %ymm1, %ymm1
 761      00000000 
 762 112f C5395705 		vxorpd	.LC35(%rip), %xmm8, %xmm8
 762      00000000 
 763 1137 C5C55C3D 		vsubpd	.LC33(%rip), %ymm7, %ymm7
 763      00000000 
 764 113f C5F95705 		vxorpd	.LC35(%rip), %xmm0, %xmm0
 764      00000000 
 765 1147 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 765      C001
 766 114d C5C558C9 		vaddpd	%ymm1, %ymm7, %ymm1
 767 1151 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 768 1155 C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
 769 1159 C5ED5C05 		vsubpd	.LC36(%rip), %ymm2, %ymm0
 769      00000000 
 770 1161 C57D591D 		vmulpd	.LC39(%rip), %ymm0, %ymm11
 770      00000000 
 771 1169 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 772 116d C57D593D 		vmulpd	.LC37(%rip), %ymm0, %ymm15
 772      00000000 
 773 1175 C57D5905 		vmulpd	.LC41(%rip), %ymm0, %ymm8
 773      00000000 
 774 117d C525581D 		vaddpd	.LC40(%rip), %ymm11, %ymm11
 774      00000000 
 775 1185 C5ED59FA 		vmulpd	%ymm2, %ymm2, %ymm7
 776 1189 C505583D 		vaddpd	.LC38(%rip), %ymm15, %ymm15
 776      00000000 
 777 1191 C53D5805 		vaddpd	.LC42(%rip), %ymm8, %ymm8
 777      00000000 
 778 1199 C52559DF 		vmulpd	%ymm7, %ymm11, %ymm11
 779 119d C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 779      DF
 780 11a2 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 781 11a6 C57D593D 		vmulpd	.LC43(%rip), %ymm0, %ymm15
 781      00000000 
 782 11ae C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 782      C3
 783 11b3 C57D59DA 		vmulpd	%ymm2, %ymm0, %ymm11
 784 11b7 C505583D 		vaddpd	.LC44(%rip), %ymm15, %ymm15
 784      00000000 
GAS LISTING /tmp/ccgx2aRa.s 			page 27


 785 11bf C4413D59 		vmulpd	%ymm11, %ymm8, %ymm8
 785      C3
 786 11c4 C57D581D 		vaddpd	.LC45(%rip), %ymm0, %ymm11
 786      00000000 
 787 11cc C5A559FF 		vmulpd	%ymm7, %ymm11, %ymm7
 788 11d0 C4414558 		vaddpd	%ymm15, %ymm7, %ymm11
 788      DF
 789 11d5 C5FD593D 		vmulpd	.LC46(%rip), %ymm0, %ymm7
 789      00000000 
 790 11dd C5C5583D 		vaddpd	.LC47(%rip), %ymm7, %ymm7
 790      00000000 
 791 11e5 C5C559FA 		vmulpd	%ymm2, %ymm7, %ymm7
 792 11e9 C5ED5915 		vmulpd	.LC49(%rip), %ymm2, %ymm2
 792      00000000 
 793 11f1 C4C14558 		vaddpd	%ymm11, %ymm7, %ymm7
 793      FB
 794 11f6 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 795 11fa C5E973F3 		vpsllq	$1, %xmm3, %xmm2
 795      01
 796 11ff C5BD5EFF 		vdivpd	%ymm7, %ymm8, %ymm7
 797 1203 C5755905 		vmulpd	.LC48(%rip), %ymm1, %ymm8
 797      00000000 
 798 120b C5F5590D 		vmulpd	.LC50(%rip), %ymm1, %ymm1
 798      00000000 
 799 1213 C5BD58FF 		vaddpd	%ymm7, %ymm8, %ymm7
 800 1217 C569DB05 		vpand	.LC51(%rip), %xmm2, %xmm8
 800      00000000 
 801 121f C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 802 1223 C5C173F4 		vpsllq	$1, %xmm4, %xmm7
 802      01
 803 1228 C4623929 		vpcmpeqq	.LC51(%rip), %xmm8, %xmm8
 803      05000000 
 803      00
 804 1231 C539EF05 		vpxor	.LC82(%rip), %xmm8, %xmm8
 804      00000000 
 805 1239 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 806 123d C5C1DB0D 		vpand	.LC51(%rip), %xmm7, %xmm1
 806      00000000 
 807 1245 C4E24129 		vpcmpeqq	.LC51(%rip), %xmm7, %xmm7
 807      3D000000 
 807      00
 808 124e C4E27129 		vpcmpeqq	.LC51(%rip), %xmm1, %xmm1
 808      0D000000 
 808      00
 809 1257 C5F1EF0D 		vpxor	.LC82(%rip), %xmm1, %xmm1
 809      00000000 
 810 125f C4633D18 		vinsertf128	$0x1, %xmm1, %ymm8, %ymm8
 810      C101
 811 1265 C4437D19 		vextractf128	$0x1, %ymm8, %xmm11
 811      C301
 812 126b C57929C1 		vmovapd	%xmm8, %xmm1
 813 126f C555C205 		vcmppd	$1, .LC52(%rip), %ymm5, %ymm8
 813      00000000 
 813      01
 814 1278 C521571D 		vxorpd	.LC35(%rip), %xmm11, %xmm11
 814      00000000 
 815 1280 C5F1570D 		vxorpd	.LC35(%rip), %xmm1, %xmm1
GAS LISTING /tmp/ccgx2aRa.s 			page 28


 815      00000000 
 816 1288 C4C37518 		vinsertf128	$0x1, %xmm11, %ymm1, %ymm1
 816      CB01
 817 128e C53D56D9 		vorpd	%ymm1, %ymm8, %ymm11
 818 1292 C4637D4B 		vblendvpd	%ymm8, .LC53(%rip), %ymm0, %ymm8
 818      05000000 
 818      0080
 819 129c C4437D19 		vextractf128	$0x1, %ymm11, %xmm15
 819      DF01
 820 12a2 C4412156 		vorpd	%xmm15, %xmm11, %xmm11
 820      DF
 821 12a7 C559DB3D 		vpand	.LC55(%rip), %xmm4, %xmm15
 821      00000000 
 822 12af C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 822      1F
 823 12b4 C4C17950 		vmovmskpd	%xmm11, %eax
 823      C3
 824 12b9 C44121EF 		vpxor	%xmm11, %xmm11, %xmm11
 824      DB
 825 12be 85C0     		testl	%eax, %eax
 826 12c0 C4420129 		vpcmpeqq	%xmm11, %xmm15, %xmm15
 826      FB
 827 12c5 C561DB1D 		vpand	.LC55(%rip), %xmm3, %xmm11
 827      00000000 
 828 12cd C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 828      1F
 829 12d2 C4422129 		vpcmpeqq	%xmm9, %xmm11, %xmm11
 829      D9
 830 12d7 C4432518 		vinsertf128	$0x1, %xmm15, %ymm11, %ymm11
 830      DF01
 831 12dd C4633D4B 		vblendvpd	%ymm11, %ymm6, %ymm8, %ymm8
 831      C6B0
 832 12e3 C4E33D4B 		vblendvpd	%ymm1, %ymm5, %ymm8, %ymm5
 832      ED10
 833 12e9 C5F173D4 		vpsrlq	$32, %xmm4, %xmm1
 833      20
 834 12ee C4E3710E 		vpblendw	$204, %xmm4, %xmm1, %xmm4
 834      E4CC
 835 12f4 C5F173D3 		vpsrlq	$32, %xmm3, %xmm1
 835      20
 836 12f9 C4E3710E 		vpblendw	$204, %xmm3, %xmm1, %xmm3
 836      DBCC
 837 12ff C4E26929 		vpcmpeqq	.LC51(%rip), %xmm2, %xmm1
 837      0D000000 
 837      00
 838 1308 C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm4
 838      E401
 839 130e C4E37518 		vinsertf128	$0x1, %xmm7, %ymm1, %ymm1
 839      CF01
 840 1314 C5F554CC 		vandpd	%ymm4, %ymm1, %ymm1
 841 1318 C4E3554B 		vblendvpd	%ymm1, .LC53(%rip), %ymm5, %ymm1
 841      0D000000 
 841      0010
 842 1322 7504     		jne	.L24
 843 1324 C5FD28C8 		vmovapd	%ymm0, %ymm1
 844              	.L24:
 845 1328 C5F5590D 		vmulpd	.LC5(%rip), %ymm1, %ymm1
GAS LISTING /tmp/ccgx2aRa.s 			page 29


 845      00000000 
 846 1330 C5F55925 		vmulpd	.LC56(%rip), %ymm1, %ymm4
 846      00000000 
 847 1338 C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 847      E408
 848 133e C5DD5905 		vmulpd	.LC57(%rip), %ymm4, %ymm0
 848      00000000 
 849 1346 C5DD5915 		vmulpd	.LC58(%rip), %ymm4, %ymm2
 849      00000000 
 850 134e C5DD5825 		vaddpd	.LC33(%rip), %ymm4, %ymm4
 850      00000000 
 851 1356 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 852 135a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 853 135e C5FD592D 		vmulpd	.LC62(%rip), %ymm0, %ymm5
 853      00000000 
 854 1366 C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 854      00000000 
 855 136e C57D591D 		vmulpd	.LC60(%rip), %ymm0, %ymm11
 855      00000000 
 856 1376 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 857 137a C5D5582D 		vaddpd	.LC63(%rip), %ymm5, %ymm5
 857      00000000 
 858 1382 C53D5805 		vaddpd	.LC49(%rip), %ymm8, %ymm8
 858      00000000 
 859 138a C525581D 		vaddpd	.LC61(%rip), %ymm11, %ymm11
 859      00000000 
 860 1392 C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 861 1396 C5D559EA 		vmulpd	%ymm2, %ymm5, %ymm5
 862 139a C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 863 139e C5E559FB 		vmulpd	%ymm3, %ymm3, %ymm7
 864 13a2 C4C15558 		vaddpd	%ymm11, %ymm5, %ymm5
 864      EB
 865 13a7 C57D591D 		vmulpd	.LC64(%rip), %ymm0, %ymm11
 865      00000000 
 866 13af C53D58C0 		vaddpd	%ymm0, %ymm8, %ymm8
 867 13b3 C5D559EB 		vmulpd	%ymm3, %ymm5, %ymm5
 868 13b7 C525581D 		vaddpd	.LC65(%rip), %ymm11, %ymm11
 868      00000000 
 869 13bf C4C15558 		vaddpd	%ymm8, %ymm5, %ymm5
 869      E8
 870 13c4 C57D5905 		vmulpd	.LC66(%rip), %ymm0, %ymm8
 870      00000000 
 871 13cc C53D5805 		vaddpd	.LC67(%rip), %ymm8, %ymm8
 871      00000000 
 872 13d4 C5BD59D2 		vmulpd	%ymm2, %ymm8, %ymm2
 873 13d8 C4416D58 		vaddpd	%ymm11, %ymm2, %ymm8
 873      C3
 874 13dd C5FD5915 		vmulpd	.LC68(%rip), %ymm0, %ymm2
 874      00000000 
 875 13e5 C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 875      34
 876 13ea C5ED5815 		vaddpd	.LC69(%rip), %ymm2, %ymm2
 876      00000000 
 877 13f2 C5ED59D3 		vmulpd	%ymm3, %ymm2, %ymm2
 878 13f6 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 878      E301
 879 13fc C4C16D58 		vaddpd	%ymm8, %ymm2, %ymm2
GAS LISTING /tmp/ccgx2aRa.s 			page 30


 879      D0
 880 1401 C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 880      34
 881 1406 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 881      C301
 882 140c C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 882      CB01
 883 1412 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 884 1416 C5C173F3 		vpsllq	$1, %xmm3, %xmm7
 884      01
 885 141b C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 885      1F
 886 1420 C5C1DB3D 		vpand	.LC51(%rip), %xmm7, %xmm7
 886      00000000 
 887 1428 C5ED58D5 		vaddpd	%ymm5, %ymm2, %ymm2
 888 142c C4C17554 		vandpd	%ymm13, %ymm1, %ymm5
 888      ED
 889 1431 C4E24129 		vpcmpeqq	.LC51(%rip), %xmm7, %xmm7
 889      3D000000 
 889      00
 890 143a C5C1EF3D 		vpxor	.LC82(%rip), %xmm7, %xmm7
 890      00000000 
 891 1442 C5ED5825 		vaddpd	.LC36(%rip), %ymm2, %ymm4
 891      00000000 
 892 144a C5F928D1 		vmovapd	%xmm1, %xmm2
 893 144e C5D5C22D 		vcmppd	$1, .LC70(%rip), %ymm5, %ymm5
 893      00000000 
 893      01
 894 1457 C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 895 145b C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 895      01
 896 1460 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 896      1F
 897 1465 C5F9DB05 		vpand	.LC51(%rip), %xmm0, %xmm0
 897      00000000 
 898 146d C4E27929 		vpcmpeqq	.LC51(%rip), %xmm0, %xmm0
 898      05000000 
 898      00
 899 1476 C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 899      00000000 
 900 147e C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 900      C701
 901 1484 C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 902 1488 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 902      C501
 903 148e C5F928F8 		vmovapd	%xmm0, %xmm7
 904 1492 C5C154ED 		vandpd	%xmm5, %xmm7, %xmm5
 905 1496 C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 906 149a C5F950C5 		vmovmskpd	%xmm5, %eax
 907 149e C5D173D3 		vpsrlq	$32, %xmm3, %xmm5
 907      20
 908 14a3 C4E3510E 		vpblendw	$204, %xmm3, %xmm5, %xmm3
 908      DBCC
 909 14a9 C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 909      20
 910 14ae C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 910      D2CC
GAS LISTING /tmp/ccgx2aRa.s 			page 31


 911 14b4 83F803   		cmpl	$3, %eax
 912 14b7 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 912      DB01
 913 14bd C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 913      04
 914 14c2 C4E32D4B 		vblendvpd	%ymm3, %ymm7, %ymm10, %ymm3
 914      DF30
 915 14c8 C4E3654B 		vblendvpd	%ymm0, %ymm4, %ymm3, %ymm0
 915      C400
 916 14ce C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm1
 916      C920
 917 14d4 0F84AE01 		je	.L34
 917      0000
 918              	.L26:
 919 14da C5FD2882 		vmovapd	2400(%rdx), %ymm0
 919      60090000 
 920 14e2 4883C220 		addq	$32, %rdx
 921 14e6 4883C160 		addq	$96, %rcx
 922 14ea C5FD282D 		vmovapd	.LC36(%rip), %ymm5
 922      00000000 
 923 14f2 C5FDC205 		vcmppd	$2, .LC71(%rip), %ymm0, %ymm0
 923      00000000 
 923      02
 924 14fb C5FD283D 		vmovapd	.LC72(%rip), %ymm7
 924      00000000 
 925 1503 C5FD2825 		vmovapd	.LC74(%rip), %ymm4
 925      00000000 
 926 150b C5D5C292 		vcmppd	$2, 256(%rdx), %ymm5, %ymm2
 926      00010000 
 926      02
 927 1514 C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 928 1518 C5C5C2D1 		vcmppd	$1, %ymm1, %ymm7, %ymm2
 928      01
 929 151d C4E3754B 		vblendvpd	%ymm2, %ymm7, %ymm1, %ymm1
 929      CF20
 930 1523 C5F5C215 		vcmppd	$1, .LC5(%rip), %ymm1, %ymm2
 930      00000000 
 930      01
 931 152c C4E3754B 		vblendvpd	%ymm2, .LC5(%rip), %ymm1, %ymm1
 931      0D000000 
 931      0020
 932 1536 C5FD298A 		vmovapd	%ymm1, 544(%rdx)
 932      20020000 
 933 153e C5FD2889 		vmovapd	1920(%rcx), %ymm1
 933      80070000 
 934 1546 C4E3754B 		vblendvpd	%ymm0, 1632(%rcx), %ymm1, %ymm1
 934      89600600 
 934      0000
 935 1550 C5FD2989 		vmovapd	%ymm1, 1920(%rcx)
 935      80070000 
 936 1558 C5FD2889 		vmovapd	1952(%rcx), %ymm1
 936      A0070000 
 937 1560 C4E3754B 		vblendvpd	%ymm0, 1664(%rcx), %ymm1, %ymm1
 937      89800600 
 937      0000
 938 156a C5FD2989 		vmovapd	%ymm1, 1952(%rcx)
 938      A0070000 
GAS LISTING /tmp/ccgx2aRa.s 			page 32


 939 1572 C5FD2889 		vmovapd	1984(%rcx), %ymm1
 939      C0070000 
 940 157a C4E3754B 		vblendvpd	%ymm0, 1696(%rcx), %ymm1, %ymm1
 940      89A00600 
 940      0000
 941 1584 C5FD2989 		vmovapd	%ymm1, 1984(%rcx)
 941      C0070000 
 942 158c C5FD288A 		vmovapd	2272(%rdx), %ymm1
 942      E0080000 
 943 1594 C5F55892 		vaddpd	2368(%rdx), %ymm1, %ymm2
 943      40090000 
 944 159c C4E3754B 		vblendvpd	%ymm0, %ymm2, %ymm1, %ymm0
 944      C200
 945 15a2 C5FD2982 		vmovapd	%ymm0, 2272(%rdx)
 945      E0080000 
 946 15aa C5FD2882 		vmovapd	544(%rdx), %ymm0
 946      20020000 
 947 15b2 C5FD5982 		vmulpd	2368(%rdx), %ymm0, %ymm0
 947      40090000 
 948 15ba C5FD5905 		vmulpd	.LC73(%rip), %ymm0, %ymm0
 948      00000000 
 949 15c2 C5DDC2C8 		vcmppd	$1, %ymm0, %ymm4, %ymm1
 949      01
 950 15c7 C4E37D4B 		vblendvpd	%ymm1, %ymm4, %ymm0, %ymm0
 950      C410
 951 15cd C5FDC20D 		vcmppd	$1, .LC71(%rip), %ymm0, %ymm1
 951      00000000 
 951      01
 952 15d6 C4E37D4B 		vblendvpd	%ymm1, .LC71(%rip), %ymm0, %ymm0
 952      05000000 
 952      0010
 953 15e0 C5FD2982 		vmovapd	%ymm0, 2368(%rdx)
 953      40090000 
 954 15e8 4839D7   		cmpq	%rdx, %rdi
 955 15eb 0F85C2FA 		jne	.L28
 955      FFFF
 956 15f1 C5FD2884 		vmovapd	3104(%rsp), %ymm0
 956      24200C00 
 956      00
 957 15fa C5FD283D 		vmovapd	.LC75(%rip), %ymm7
 957      00000000 
 958 1602 C5FD5D84 		vminpd	3136(%rsp), %ymm0, %ymm0
 958      24400C00 
 958      00
 959 160b C5FD5D84 		vminpd	3168(%rsp), %ymm0, %ymm0
 959      24600C00 
 959      00
 960 1614 C5C5C2C0 		vcmppd	$2, %ymm0, %ymm7, %ymm0
 960      02
 961 1619 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 961      C101
 962 161f C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 963 1623 C5F950C0 		vmovmskpd	%xmm0, %eax
 964 1627 83F803   		cmpl	$3, %eax
 965 162a 7465     		je	.L35
 966 162c C5FD28B4 		vmovapd	3264(%rsp), %ymm6
 966      24C00C00 
GAS LISTING /tmp/ccgx2aRa.s 			page 33


 966      00
 967 1635 C5FD28BC 		vmovapd	3296(%rsp), %ymm7
 967      24E00C00 
 967      00
 968 163e C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 968      2440
 969 1644 C5FD29BC 		vmovapd	%ymm7, 160(%rsp)
 969      24A00000 
 969      00
 970 164d C5FD28B4 		vmovapd	3328(%rsp), %ymm6
 970      24000D00 
 970      00
 971 1656 C5FD28BC 		vmovapd	3360(%rsp), %ymm7
 971      24200D00 
 971      00
 972 165f C57D28BC 		vmovapd	3200(%rsp), %ymm15
 972      24800C00 
 972      00
 973 1668 C57D288C 		vmovapd	3232(%rsp), %ymm9
 973      24A00C00 
 973      00
 974 1671 C5FD29B4 		vmovapd	%ymm6, 128(%rsp)
 974      24800000 
 974      00
 975 167a C5FD297C 		vmovapd	%ymm7, 96(%rsp)
 975      2460
 976 1680 E9A3EBFF 		jmp	.L32
 976      FF
 977              		.p2align 4,,10
 978 1685 0F1F00   		.p2align 3
 979              	.L34:
 980 1688 C5FD28CC 		vmovapd	%ymm4, %ymm1
 981 168c E949FEFF 		jmp	.L26
 981      FF
 982              	.L35:
 983 1691 4489E0   		movl	%r12d, %eax
 984 1694 BAAD8BDB 		movl	$1759218605, %edx
 984      68
 985 1699 F7EA     		imull	%edx
 986 169b 4489E0   		movl	%r12d, %eax
 987 169e C1F81F   		sarl	$31, %eax
 988 16a1 C1FA0C   		sarl	$12, %edx
 989 16a4 29C2     		subl	%eax, %edx
 990 16a6 4489E0   		movl	%r12d, %eax
 991 16a9 69D21027 		imull	$10000, %edx, %edx
 991      0000
 992 16af 29D0     		subl	%edx, %eax
 993 16b1 83F801   		cmpl	$1, %eax
 994 16b4 0F848600 		je	.L36
 994      0000
 995              	.L30:
 996 16ba 4183C40C 		addl	$12, %r12d
 997 16be 4983C560 		addq	$96, %r13
 998 16c2 4181FC80 		cmpl	$40320, %r12d
 998      9D0000
 999 16c9 0F850EEA 		jne	.L12
 999      FFFF
GAS LISTING /tmp/ccgx2aRa.s 			page 34


 1000 16cf C5F877   		vzeroupper
 1001 16d2 E8000000 		call	clock
 1001      00
 1002 16d7 BA0E0000 		movl	$14, %edx
 1002      00
 1003 16dc 4989C4   		movq	%rax, %r12
 1004 16df BE000000 		movl	$.LC80, %esi
 1004      00
 1005 16e4 BF000000 		movl	$_ZSt4cout, %edi
 1005      00
 1006 16e9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1006      00
 1007 16ee 4C89E1   		movq	%r12, %rcx
 1008 16f1 48BECFF7 		movabsq	$2361183241434822607, %rsi
 1008      53E3A59B 
 1008      C420
 1009 16fb BF000000 		movl	$_ZSt4cout, %edi
 1009      00
 1010 1700 4829D9   		subq	%rbx, %rcx
 1011 1703 4889C8   		movq	%rcx, %rax
 1012 1706 48C1F93F 		sarq	$63, %rcx
 1013 170a 48F7EE   		imulq	%rsi
 1014 170d 4889D6   		movq	%rdx, %rsi
 1015 1710 48C1FE07 		sarq	$7, %rsi
 1016 1714 4829CE   		subq	%rcx, %rsi
 1017 1717 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1017      00
 1018 171c BE000000 		movl	$.LC81, %esi
 1018      00
 1019 1721 4889C7   		movq	%rax, %rdi
 1020 1724 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1020      00
 1021 1729 4889C7   		movq	%rax, %rdi
 1022 172c E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1022      00
 1023 1731 488D65E0 		leaq	-32(%rbp), %rsp
 1024 1735 31C0     		xorl	%eax, %eax
 1025 1737 5B       		popq	%rbx
 1026 1738 415C     		popq	%r12
 1027 173a 415D     		popq	%r13
 1028 173c 415E     		popq	%r14
 1029 173e 5D       		popq	%rbp
 1030              		.cfi_remember_state
 1031              		.cfi_def_cfa 7, 8
 1032 173f C3       		ret
 1033              	.L36:
 1034              		.cfi_restore_state
 1035 1740 BA390000 		movl	$57, %edx
 1035      00
 1036 1745 BE000000 		movl	$.LC76, %esi
 1036      00
 1037 174a BF000000 		movl	$_ZSt4cout, %edi
 1037      00
 1038 174f C57D29A4 		vmovapd	%ymm12, 320(%rsp)
 1038      24400100 
 1038      00
 1039 1758 C57D29B4 		vmovapd	%ymm14, 352(%rsp)
GAS LISTING /tmp/ccgx2aRa.s 			page 35


 1039      24600100 
 1039      00
 1040 1761 C57D29AC 		vmovapd	%ymm13, 384(%rsp)
 1040      24800100 
 1040      00
 1041 176a C5F877   		vzeroupper
 1042 176d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1042      00
 1043 1772 C5FD2884 		vmovapd	2816(%rsp), %ymm0
 1043      24000B00 
 1043      00
 1044 177b 4489E6   		movl	%r12d, %esi
 1045 177e BF000000 		movl	$_ZSt4cout, %edi
 1045      00
 1046 1783 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1046      24E00100 
 1046      00
 1047 178c C5FD2884 		vmovapd	3296(%rsp), %ymm0
 1047      24E00C00 
 1047      00
 1048 1795 C5FB108C 		vmovsd	480(%rsp), %xmm1
 1048      24E00100 
 1048      00
 1049 179e C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1049      24E00100 
 1049      00
 1050 17a7 C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 1050      24A00100 
 1050      00
 1051 17b0 C5FB1084 		vmovsd	480(%rsp), %xmm0
 1051      24E00100 
 1051      00
 1052 17b9 C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 1052      24C00100 
 1052      00
 1053 17c2 C5F877   		vzeroupper
 1054 17c5 E8000000 		call	_ZNSolsEi
 1054      00
 1055 17ca BA060000 		movl	$6, %edx
 1055      00
 1056 17cf BE000000 		movl	$.LC77, %esi
 1056      00
 1057 17d4 4889C7   		movq	%rax, %rdi
 1058 17d7 4989C6   		movq	%rax, %r14
 1059 17da E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1059      00
 1060 17df C5FB1084 		vmovsd	448(%rsp), %xmm0
 1060      24C00100 
 1060      00
 1061 17e8 4C89F7   		movq	%r14, %rdi
 1062 17eb E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1062      00
 1063 17f0 BA030000 		movl	$3, %edx
 1063      00
 1064 17f5 BE000000 		movl	$.LC78, %esi
 1064      00
 1065 17fa 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/ccgx2aRa.s 			page 36


 1066 17fd 4989C6   		movq	%rax, %r14
 1067 1800 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1067      00
 1068 1805 C5FB108C 		vmovsd	416(%rsp), %xmm1
 1068      24A00100 
 1068      00
 1069 180e 4C89F7   		movq	%r14, %rdi
 1070 1811 C5F928C1 		vmovapd	%xmm1, %xmm0
 1071 1815 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1071      00
 1072 181a BA010000 		movl	$1, %edx
 1072      00
 1073 181f BE000000 		movl	$.LC79, %esi
 1073      00
 1074 1824 4889C7   		movq	%rax, %rdi
 1075 1827 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1075      00
 1076 182c C5FD2884 		vmovapd	2848(%rsp), %ymm0
 1076      24200B00 
 1076      00
 1077 1835 4489E6   		movl	%r12d, %esi
 1078 1838 BF000000 		movl	$_ZSt4cout, %edi
 1078      00
 1079 183d C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1079      24E00100 
 1079      00
 1080 1846 C5FD2884 		vmovapd	3328(%rsp), %ymm0
 1080      24000D00 
 1080      00
 1081 184f C5FB108C 		vmovsd	480(%rsp), %xmm1
 1081      24E00100 
 1081      00
 1082 1858 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1082      24E00100 
 1082      00
 1083 1861 C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 1083      24A00100 
 1083      00
 1084 186a C5FB1084 		vmovsd	480(%rsp), %xmm0
 1084      24E00100 
 1084      00
 1085 1873 C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 1085      24C00100 
 1085      00
 1086 187c C5F877   		vzeroupper
 1087 187f E8000000 		call	_ZNSolsEi
 1087      00
 1088 1884 BA060000 		movl	$6, %edx
 1088      00
 1089 1889 BE000000 		movl	$.LC77, %esi
 1089      00
 1090 188e 4889C7   		movq	%rax, %rdi
 1091 1891 4989C6   		movq	%rax, %r14
 1092 1894 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1092      00
 1093 1899 C5FB1084 		vmovsd	448(%rsp), %xmm0
 1093      24C00100 
GAS LISTING /tmp/ccgx2aRa.s 			page 37


 1093      00
 1094 18a2 4C89F7   		movq	%r14, %rdi
 1095 18a5 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1095      00
 1096 18aa BA030000 		movl	$3, %edx
 1096      00
 1097 18af BE000000 		movl	$.LC78, %esi
 1097      00
 1098 18b4 4889C7   		movq	%rax, %rdi
 1099 18b7 4989C6   		movq	%rax, %r14
 1100 18ba E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1100      00
 1101 18bf C5FB108C 		vmovsd	416(%rsp), %xmm1
 1101      24A00100 
 1101      00
 1102 18c8 4C89F7   		movq	%r14, %rdi
 1103 18cb C5F928C1 		vmovapd	%xmm1, %xmm0
 1104 18cf E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1104      00
 1105 18d4 BA010000 		movl	$1, %edx
 1105      00
 1106 18d9 BE000000 		movl	$.LC79, %esi
 1106      00
 1107 18de 4889C7   		movq	%rax, %rdi
 1108 18e1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1108      00
 1109 18e6 C5FD2884 		vmovapd	2880(%rsp), %ymm0
 1109      24400B00 
 1109      00
 1110 18ef 4489E6   		movl	%r12d, %esi
 1111 18f2 BF000000 		movl	$_ZSt4cout, %edi
 1111      00
 1112 18f7 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1112      24E00100 
 1112      00
 1113 1900 C5FD2884 		vmovapd	3360(%rsp), %ymm0
 1113      24200D00 
 1113      00
 1114 1909 C5FB108C 		vmovsd	480(%rsp), %xmm1
 1114      24E00100 
 1114      00
 1115 1912 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1115      24E00100 
 1115      00
 1116 191b C5FB118C 		vmovsd	%xmm1, 416(%rsp)
 1116      24A00100 
 1116      00
 1117 1924 C5FB1084 		vmovsd	480(%rsp), %xmm0
 1117      24E00100 
 1117      00
 1118 192d C5FB1184 		vmovsd	%xmm0, 448(%rsp)
 1118      24C00100 
 1118      00
 1119 1936 C5F877   		vzeroupper
 1120 1939 E8000000 		call	_ZNSolsEi
 1120      00
 1121 193e BA060000 		movl	$6, %edx
GAS LISTING /tmp/ccgx2aRa.s 			page 38


 1121      00
 1122 1943 BE000000 		movl	$.LC77, %esi
 1122      00
 1123 1948 4889C7   		movq	%rax, %rdi
 1124 194b 4989C6   		movq	%rax, %r14
 1125 194e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1125      00
 1126 1953 C5FB1084 		vmovsd	448(%rsp), %xmm0
 1126      24C00100 
 1126      00
 1127 195c 4C89F7   		movq	%r14, %rdi
 1128 195f E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1128      00
 1129 1964 BA030000 		movl	$3, %edx
 1129      00
 1130 1969 BE000000 		movl	$.LC78, %esi
 1130      00
 1131 196e 4889C7   		movq	%rax, %rdi
 1132 1971 4989C6   		movq	%rax, %r14
 1133 1974 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1133      00
 1134 1979 C5FB108C 		vmovsd	416(%rsp), %xmm1
 1134      24A00100 
 1134      00
 1135 1982 4C89F7   		movq	%r14, %rdi
 1136 1985 C5F928C1 		vmovapd	%xmm1, %xmm0
 1137 1989 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1137      00
 1138 198e BA010000 		movl	$1, %edx
 1138      00
 1139 1993 BE000000 		movl	$.LC79, %esi
 1139      00
 1140 1998 4889C7   		movq	%rax, %rdi
 1141 199b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1141      00
 1142 19a0 C57D28A4 		vmovapd	320(%rsp), %ymm12
 1142      24400100 
 1142      00
 1143 19a9 C57D28B4 		vmovapd	352(%rsp), %ymm14
 1143      24600100 
 1143      00
 1144 19b2 C57D28AC 		vmovapd	384(%rsp), %ymm13
 1144      24800100 
 1144      00
 1145 19bb E9FAFCFF 		jmp	.L30
 1145      FF
 1146              		.cfi_endproc
 1147              	.LFE4635:
 1148              		.size	main, .-main
 1149              		.p2align 4,,15
 1150              		.type	_GLOBAL__sub_I_main, @function
 1151              	_GLOBAL__sub_I_main:
 1152              	.LFB4900:
 1153              		.cfi_startproc
 1154 19c0 4883EC08 		subq	$8, %rsp
 1155              		.cfi_def_cfa_offset 16
 1156 19c4 BF000000 		movl	$_ZStL8__ioinit, %edi
GAS LISTING /tmp/ccgx2aRa.s 			page 39


 1156      00
 1157 19c9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1157      00
 1158 19ce BA000000 		movl	$__dso_handle, %edx
 1158      00
 1159 19d3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1159      00
 1160 19d8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1160      00
 1161 19dd 4883C408 		addq	$8, %rsp
 1162              		.cfi_def_cfa_offset 8
 1163 19e1 E9000000 		jmp	__cxa_atexit
 1163      00
 1164              		.cfi_endproc
 1165              	.LFE4900:
 1166              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1167              		.section	.init_array,"aw"
 1168              		.align 8
 1169 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1169      00000000 
 1170              		.section	.rodata
 1171              		.align 32
 1172              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1173              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1174              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1175 0000 00000000 		.long	0
 1176 0004 00000080 		.long	-2147483648
 1177 0008 00000000 		.long	0
 1178 000c 00000080 		.long	-2147483648
 1179 0010 00000000 		.long	0
 1180 0014 00000080 		.long	-2147483648
 1181 0018 00000000 		.long	0
 1182 001c 00000080 		.long	-2147483648
 1183              		.align 32
 1184              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1185              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1186              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1187 0020 FFFFFFFF 		.long	-1
 1188 0024 FFFFFF7F 		.long	2147483647
 1189 0028 FFFFFFFF 		.long	-1
 1190 002c FFFFFF7F 		.long	2147483647
 1191 0030 FFFFFFFF 		.long	-1
 1192 0034 FFFFFF7F 		.long	2147483647
 1193 0038 FFFFFFFF 		.long	-1
 1194 003c FFFFFF7F 		.long	2147483647
 1195              		.local	_ZStL8__ioinit
 1196              		.comm	_ZStL8__ioinit,1,1
 1197              		.section	.rodata.cst32,"aM",@progbits,32
 1198              		.align 32
 1199              	.LC0:
 1200 0000 7B14AE47 		.long	1202590843
 1201 0004 E17A843F 		.long	1065646817
 1202 0008 7B14AE47 		.long	1202590843
 1203 000c E17A843F 		.long	1065646817
 1204 0010 7B14AE47 		.long	1202590843
 1205 0014 E17A843F 		.long	1065646817
 1206 0018 7B14AE47 		.long	1202590843
GAS LISTING /tmp/ccgx2aRa.s 			page 40


 1207 001c E17A843F 		.long	1065646817
 1208              		.align 32
 1209              	.LC1:
 1210 0020 00000000 		.long	0
 1211 0024 00002440 		.long	1076101120
 1212 0028 00000000 		.long	0
 1213 002c 00002440 		.long	1076101120
 1214 0030 00000000 		.long	0
 1215 0034 00002440 		.long	1076101120
 1216 0038 00000000 		.long	0
 1217 003c 00002440 		.long	1076101120
 1218              		.section	.rodata.cst8,"aM",@progbits,8
 1219              		.align 8
 1220              	.LC2:
 1221 0000 00000000 		.long	0
 1222 0004 00003540 		.long	1077215232
 1223              		.section	.rodata.cst32
 1224              		.align 32
 1225              	.LC4:
 1226 0040 55555555 		.long	1431655765
 1227 0044 55550540 		.long	1074091349
 1228 0048 55555555 		.long	1431655765
 1229 004c 55550540 		.long	1074091349
 1230 0050 55555555 		.long	1431655765
 1231 0054 55550540 		.long	1074091349
 1232 0058 55555555 		.long	1431655765
 1233 005c 55550540 		.long	1074091349
 1234              		.align 32
 1235              	.LC5:
 1236 0060 9A999999 		.long	2576980378
 1237 0064 9999C93F 		.long	1070176665
 1238 0068 9A999999 		.long	2576980378
 1239 006c 9999C93F 		.long	1070176665
 1240 0070 9A999999 		.long	2576980378
 1241 0074 9999C93F 		.long	1070176665
 1242 0078 9A999999 		.long	2576980378
 1243 007c 9999C93F 		.long	1070176665
 1244              		.align 32
 1245              	.LC6:
 1246 0080 CDCCCCCC 		.long	3435973837
 1247 0084 CCCCCC3F 		.long	1070386380
 1248 0088 CDCCCCCC 		.long	3435973837
 1249 008c CCCCCC3F 		.long	1070386380
 1250 0090 CDCCCCCC 		.long	3435973837
 1251 0094 CCCCCC3F 		.long	1070386380
 1252 0098 CDCCCCCC 		.long	3435973837
 1253 009c CCCCCC3F 		.long	1070386380
 1254              		.align 32
 1255              	.LC7:
 1256 00a0 33333333 		.long	858993459
 1257 00a4 3333B33F 		.long	1068708659
 1258 00a8 33333333 		.long	858993459
 1259 00ac 3333B33F 		.long	1068708659
 1260 00b0 33333333 		.long	858993459
 1261 00b4 3333B33F 		.long	1068708659
 1262 00b8 33333333 		.long	858993459
 1263 00bc 3333B33F 		.long	1068708659
GAS LISTING /tmp/ccgx2aRa.s 			page 41


 1264              		.align 32
 1265              	.LC8:
 1266 00c0 33333333 		.long	858993459
 1267 00c4 3333F33F 		.long	1072902963
 1268 00c8 33333333 		.long	858993459
 1269 00cc 3333F33F 		.long	1072902963
 1270 00d0 33333333 		.long	858993459
 1271 00d4 3333F33F 		.long	1072902963
 1272 00d8 33333333 		.long	858993459
 1273 00dc 3333F33F 		.long	1072902963
 1274              		.align 32
 1275              	.LC9:
 1276 00e0 CDCCCCCC 		.long	3435973837
 1277 00e4 CCCCECBF 		.long	-1075000116
 1278 00e8 CDCCCCCC 		.long	3435973837
 1279 00ec CCCCECBF 		.long	-1075000116
 1280 00f0 CDCCCCCC 		.long	3435973837
 1281 00f4 CCCCECBF 		.long	-1075000116
 1282 00f8 CDCCCCCC 		.long	3435973837
 1283 00fc CCCCECBF 		.long	-1075000116
 1284              		.align 32
 1285              	.LC10:
 1286 0100 33333333 		.long	858993459
 1287 0104 3333D33F 		.long	1070805811
 1288 0108 33333333 		.long	858993459
 1289 010c 3333D33F 		.long	1070805811
 1290 0110 33333333 		.long	858993459
 1291 0114 3333D33F 		.long	1070805811
 1292 0118 33333333 		.long	858993459
 1293 011c 3333D33F 		.long	1070805811
 1294              		.align 32
 1295              	.LC11:
 1296 0120 DA4B682F 		.long	795364314
 1297 0124 A1BDF43F 		.long	1073003937
 1298 0128 DA4B682F 		.long	795364314
 1299 012c A1BDF43F 		.long	1073003937
 1300 0130 DA4B682F 		.long	795364314
 1301 0134 A1BDF43F 		.long	1073003937
 1302 0138 DA4B682F 		.long	795364314
 1303 013c A1BDF43F 		.long	1073003937
 1304              		.align 32
 1305              	.LC12:
 1306 0140 D94B682F 		.long	795364313
 1307 0144 A1BD04C0 		.long	-1073431135
 1308 0148 D94B682F 		.long	795364313
 1309 014c A1BD04C0 		.long	-1073431135
 1310 0150 D94B682F 		.long	795364313
 1311 0154 A1BD04C0 		.long	-1073431135
 1312 0158 D94B682F 		.long	795364313
 1313 015c A1BD04C0 		.long	-1073431135
 1314              		.align 32
 1315              	.LC13:
 1316 0160 00000000 		.long	0
 1317 0164 00000440 		.long	1074003968
 1318 0168 00000000 		.long	0
 1319 016c 00000440 		.long	1074003968
 1320 0170 00000000 		.long	0
GAS LISTING /tmp/ccgx2aRa.s 			page 42


 1321 0174 00000440 		.long	1074003968
 1322 0178 00000000 		.long	0
 1323 017c 00000440 		.long	1074003968
 1324              		.align 32
 1325              	.LC14:
 1326 0180 16A1BD84 		.long	2227020054
 1327 0184 F612CABF 		.long	-1077275914
 1328 0188 16A1BD84 		.long	2227020054
 1329 018c F612CABF 		.long	-1077275914
 1330 0190 16A1BD84 		.long	2227020054
 1331 0194 F612CABF 		.long	-1077275914
 1332 0198 16A1BD84 		.long	2227020054
 1333 019c F612CABF 		.long	-1077275914
 1334              		.align 32
 1335              	.LC15:
 1336 01a0 00000000 		.long	0
 1337 01a4 00A0AF3F 		.long	1068474368
 1338 01a8 00000000 		.long	0
 1339 01ac 00A0AF3F 		.long	1068474368
 1340 01b0 00000000 		.long	0
 1341 01b4 00A0AF3F 		.long	1068474368
 1342 01b8 00000000 		.long	0
 1343 01bc 00A0AF3F 		.long	1068474368
 1344              		.align 32
 1345              	.LC16:
 1346 01c0 B397D05E 		.long	1590728627
 1347 01c4 429FD93F 		.long	1071226690
 1348 01c8 B397D05E 		.long	1590728627
 1349 01cc 429FD93F 		.long	1071226690
 1350 01d0 B397D05E 		.long	1590728627
 1351 01d4 429FD93F 		.long	1071226690
 1352 01d8 B397D05E 		.long	1590728627
 1353 01dc 429FD93F 		.long	1071226690
 1354              		.align 32
 1355              	.LC17:
 1356 01e0 BD84F612 		.long	318145725
 1357 01e4 DA4BA53F 		.long	1067797466
 1358 01e8 BD84F612 		.long	318145725
 1359 01ec DA4BA53F 		.long	1067797466
 1360 01f0 BD84F612 		.long	318145725
 1361 01f4 DA4BA53F 		.long	1067797466
 1362 01f8 BD84F612 		.long	318145725
 1363 01fc DA4BA53F 		.long	1067797466
 1364              		.align 32
 1365              	.LC18:
 1366 0200 00000000 		.long	0
 1367 0204 00E0D53F 		.long	1070981120
 1368 0208 00000000 		.long	0
 1369 020c 00E0D53F 		.long	1070981120
 1370 0210 00000000 		.long	0
 1371 0214 00E0D53F 		.long	1070981120
 1372 0218 00000000 		.long	0
 1373 021c 00E0D53F 		.long	1070981120
 1374              		.align 32
 1375              	.LC19:
 1376 0220 347B09ED 		.long	3976821556
 1377 0224 25349E3F 		.long	1067332645
GAS LISTING /tmp/ccgx2aRa.s 			page 43


 1378 0228 347B09ED 		.long	3976821556
 1379 022c 25349E3F 		.long	1067332645
 1380 0230 347B09ED 		.long	3976821556
 1381 0234 25349E3F 		.long	1067332645
 1382 0238 347B09ED 		.long	3976821556
 1383 023c 25349E3F 		.long	1067332645
 1384              		.align 32
 1385              	.LC20:
 1386 0240 B0B4DA85 		.long	2245702832
 1387 0244 A680D23F 		.long	1070760102
 1388 0248 B0B4DA85 		.long	2245702832
 1389 024c A680D23F 		.long	1070760102
 1390 0250 B0B4DA85 		.long	2245702832
 1391 0254 A680D23F 		.long	1070760102
 1392 0258 B0B4DA85 		.long	2245702832
 1393 025c A680D23F 		.long	1070760102
 1394              		.align 32
 1395              	.LC21:
 1396 0260 27691676 		.long	1981180199
 1397 0264 9FEFCA3F 		.long	1070264223
 1398 0268 27691676 		.long	1981180199
 1399 026c 9FEFCA3F 		.long	1070264223
 1400 0270 27691676 		.long	1981180199
 1401 0274 9FEFCA3F 		.long	1070264223
 1402 0278 27691676 		.long	1981180199
 1403 027c 9FEFCA3F 		.long	1070264223
 1404              		.align 32
 1405              	.LC22:
 1406 0280 7EB22B2E 		.long	774615678
 1407 0284 D0C3D93F 		.long	1071236048
 1408 0288 7EB22B2E 		.long	774615678
 1409 028c D0C3D93F 		.long	1071236048
 1410 0290 7EB22B2E 		.long	774615678
 1411 0294 D0C3D93F 		.long	1071236048
 1412 0298 7EB22B2E 		.long	774615678
 1413 029c D0C3D93F 		.long	1071236048
 1414              		.align 32
 1415              	.LC23:
 1416 02a0 E890B943 		.long	1136234728
 1417 02a4 E60EB93F 		.long	1069092582
 1418 02a8 E890B943 		.long	1136234728
 1419 02ac E60EB93F 		.long	1069092582
 1420 02b0 E890B943 		.long	1136234728
 1421 02b4 E60EB93F 		.long	1069092582
 1422 02b8 E890B943 		.long	1136234728
 1423 02bc E60EB93F 		.long	1069092582
 1424              		.align 32
 1425              	.LC24:
 1426 02c0 48A5D52E 		.long	785753416
 1427 02c4 3405A4BF 		.long	-1079769804
 1428 02c8 48A5D52E 		.long	785753416
 1429 02cc 3405A4BF 		.long	-1079769804
 1430 02d0 48A5D52E 		.long	785753416
 1431 02d4 3405A4BF 		.long	-1079769804
 1432 02d8 48A5D52E 		.long	785753416
 1433 02dc 3405A4BF 		.long	-1079769804
 1434              		.align 32
GAS LISTING /tmp/ccgx2aRa.s 			page 44


 1435              	.LC25:
 1436 02e0 82244992 		.long	2454267010
 1437 02e4 24C9933F 		.long	1066649892
 1438 02e8 82244992 		.long	2454267010
 1439 02ec 24C9933F 		.long	1066649892
 1440 02f0 82244992 		.long	2454267010
 1441 02f4 24C9933F 		.long	1066649892
 1442 02f8 82244992 		.long	2454267010
 1443 02fc 24C9933F 		.long	1066649892
 1444              		.align 32
 1445              	.LC26:
 1446 0300 06F37686 		.long	2255942406
 1447 0304 C47CA13F 		.long	1067547844
 1448 0308 06F37686 		.long	2255942406
 1449 030c C47CA13F 		.long	1067547844
 1450 0310 06F37686 		.long	2255942406
 1451 0314 C47CA13F 		.long	1067547844
 1452 0318 06F37686 		.long	2255942406
 1453 031c C47CA13F 		.long	1067547844
 1454              		.align 32
 1455              	.LC27:
 1456 0320 1A55F19A 		.long	2599507226
 1457 0324 DB1D93BF 		.long	-1080877605
 1458 0328 1A55F19A 		.long	2599507226
 1459 032c DB1D93BF 		.long	-1080877605
 1460 0330 1A55F19A 		.long	2599507226
 1461 0334 DB1D93BF 		.long	-1080877605
 1462 0338 1A55F19A 		.long	2599507226
 1463 033c DB1D93BF 		.long	-1080877605
 1464              		.align 32
 1465              	.LC28:
 1466 0340 64599665 		.long	1704352100
 1467 0344 5996713F 		.long	1064408665
 1468 0348 64599665 		.long	1704352100
 1469 034c 5996713F 		.long	1064408665
 1470 0350 64599665 		.long	1704352100
 1471 0354 5996713F 		.long	1064408665
 1472 0358 64599665 		.long	1704352100
 1473 035c 5996713F 		.long	1064408665
 1474              		.align 32
 1475              	.LC29:
 1476 0360 95D626E8 		.long	3894859413
 1477 0364 0B2E113E 		.long	1041313291
 1478 0368 95D626E8 		.long	3894859413
 1479 036c 0B2E113E 		.long	1041313291
 1480 0370 95D626E8 		.long	3894859413
 1481 0374 0B2E113E 		.long	1041313291
 1482 0378 95D626E8 		.long	3894859413
 1483 037c 0B2E113E 		.long	1041313291
 1484              		.section	.rodata.cst16,"aM",@progbits,16
 1485              		.align 16
 1486              	.LC30:
 1487 0000 FFFFFFFF 		.quad	4503599627370495
 1487      FFFF0F00 
 1488 0008 FFFFFFFF 		.quad	4503599627370495
 1488      FFFF0F00 
 1489              		.align 16
GAS LISTING /tmp/ccgx2aRa.s 			page 45


 1490              	.LC31:
 1491 0010 00000000 		.quad	4602678819172646912
 1491      0000E03F 
 1492 0018 00000000 		.quad	4602678819172646912
 1492      0000E03F 
 1493              		.align 16
 1494              	.LC32:
 1495 0020 00000000 		.quad	4841369599423283200
 1495      00003043 
 1496 0028 00000000 		.quad	4841369599423283200
 1496      00003043 
 1497              		.section	.rodata.cst32
 1498              		.align 32
 1499              	.LC33:
 1500 0380 FF030000 		.long	1023
 1501 0384 00003043 		.long	1127219200
 1502 0388 FF030000 		.long	1023
 1503 038c 00003043 		.long	1127219200
 1504 0390 FF030000 		.long	1023
 1505 0394 00003043 		.long	1127219200
 1506 0398 FF030000 		.long	1023
 1507 039c 00003043 		.long	1127219200
 1508              		.align 32
 1509              	.LC34:
 1510 03a0 CD3B7F66 		.long	1719614413
 1511 03a4 9EA0E63F 		.long	1072079006
 1512 03a8 CD3B7F66 		.long	1719614413
 1513 03ac 9EA0E63F 		.long	1072079006
 1514 03b0 CD3B7F66 		.long	1719614413
 1515 03b4 9EA0E63F 		.long	1072079006
 1516 03b8 CD3B7F66 		.long	1719614413
 1517 03bc 9EA0E63F 		.long	1072079006
 1518              		.section	.rodata.cst16
 1519              		.align 16
 1520              	.LC35:
 1521 0030 FFFFFFFF 		.long	4294967295
 1522 0034 FFFFFFFF 		.long	-1
 1523 0038 FFFFFFFF 		.long	4294967295
 1524 003c FFFFFFFF 		.long	-1
 1525              		.section	.rodata.cst32
 1526              		.align 32
 1527              	.LC36:
 1528 03c0 00000000 		.long	0
 1529 03c4 0000F03F 		.long	1072693248
 1530 03c8 00000000 		.long	0
 1531 03cc 0000F03F 		.long	1072693248
 1532 03d0 00000000 		.long	0
 1533 03d4 0000F03F 		.long	1072693248
 1534 03d8 00000000 		.long	0
 1535 03dc 0000F03F 		.long	1072693248
 1536              		.align 32
 1537              	.LC37:
 1538 03e0 4DC84B92 		.long	2454440013
 1539 03e4 D6EF3140 		.long	1077014486
 1540 03e8 4DC84B92 		.long	2454440013
 1541 03ec D6EF3140 		.long	1077014486
 1542 03f0 4DC84B92 		.long	2454440013
GAS LISTING /tmp/ccgx2aRa.s 			page 46


 1543 03f4 D6EF3140 		.long	1077014486
 1544 03f8 4DC84B92 		.long	2454440013
 1545 03fc D6EF3140 		.long	1077014486
 1546              		.align 32
 1547              	.LC38:
 1548 0400 F8DC7E7D 		.long	2105466104
 1549 0404 63D51E40 		.long	1075762531
 1550 0408 F8DC7E7D 		.long	2105466104
 1551 040c 63D51E40 		.long	1075762531
 1552 0410 F8DC7E7D 		.long	2105466104
 1553 0414 63D51E40 		.long	1075762531
 1554 0418 F8DC7E7D 		.long	2105466104
 1555 041c 63D51E40 		.long	1075762531
 1556              		.align 32
 1557              	.LC39:
 1558 0420 B01BC393 		.long	2479037360
 1559 0424 C2B41A3F 		.long	1058714818
 1560 0428 B01BC393 		.long	2479037360
 1561 042c C2B41A3F 		.long	1058714818
 1562 0430 B01BC393 		.long	2479037360
 1563 0434 C2B41A3F 		.long	1058714818
 1564 0438 B01BC393 		.long	2479037360
 1565 043c C2B41A3F 		.long	1058714818
 1566              		.align 32
 1567              	.LC40:
 1568 0440 F252563F 		.long	1062621938
 1569 0444 F5D6DF3F 		.long	1071634165
 1570 0448 F252563F 		.long	1062621938
 1571 044c F5D6DF3F 		.long	1071634165
 1572 0450 F252563F 		.long	1062621938
 1573 0454 F5D6DF3F 		.long	1071634165
 1574 0458 F252563F 		.long	1062621938
 1575 045c F5D6DF3F 		.long	1071634165
 1576              		.align 32
 1577              	.LC41:
 1578 0460 116992ED 		.long	3985795345
 1579 0464 BAD21240 		.long	1074975418
 1580 0468 116992ED 		.long	3985795345
 1581 046c BAD21240 		.long	1074975418
 1582 0470 116992ED 		.long	3985795345
 1583 0474 BAD21240 		.long	1074975418
 1584 0478 116992ED 		.long	3985795345
 1585 047c BAD21240 		.long	1074975418
 1586              		.align 32
 1587              	.LC42:
 1588 0480 2EEB3EC6 		.long	3326012206
 1589 0484 72FF2C40 		.long	1076690802
 1590 0488 2EEB3EC6 		.long	3326012206
 1591 048c 72FF2C40 		.long	1076690802
 1592 0490 2EEB3EC6 		.long	3326012206
 1593 0494 72FF2C40 		.long	1076690802
 1594 0498 2EEB3EC6 		.long	3326012206
 1595 049c 72FF2C40 		.long	1076690802
 1596              		.align 32
 1597              	.LC43:
 1598 04a0 21AE5EEB 		.long	3948850721
 1599 04a4 E2C95140 		.long	1079101922
GAS LISTING /tmp/ccgx2aRa.s 			page 47


 1600 04a8 21AE5EEB 		.long	3948850721
 1601 04ac E2C95140 		.long	1079101922
 1602 04b0 21AE5EEB 		.long	3948850721
 1603 04b4 E2C95140 		.long	1079101922
 1604 04b8 21AE5EEB 		.long	3948850721
 1605 04bc E2C95140 		.long	1079101922
 1606              		.align 32
 1607              	.LC44:
 1608 04c0 B2251F9E 		.long	2652841394
 1609 04c4 0A203740 		.long	1077354506
 1610 04c8 B2251F9E 		.long	2652841394
 1611 04cc 0A203740 		.long	1077354506
 1612 04d0 B2251F9E 		.long	2652841394
 1613 04d4 0A203740 		.long	1077354506
 1614 04d8 B2251F9E 		.long	2652841394
 1615 04dc 0A203740 		.long	1077354506
 1616              		.align 32
 1617              	.LC45:
 1618 04e0 8EEF97AE 		.long	2929192846
 1619 04e4 20932640 		.long	1076269856
 1620 04e8 8EEF97AE 		.long	2929192846
 1621 04ec 20932640 		.long	1076269856
 1622 04f0 8EEF97AE 		.long	2929192846
 1623 04f4 20932640 		.long	1076269856
 1624 04f8 8EEF97AE 		.long	2929192846
 1625 04fc 20932640 		.long	1076269856
 1626              		.align 32
 1627              	.LC46:
 1628 0500 33C0194E 		.long	1310310451
 1629 0504 2C9D4640 		.long	1078369580
 1630 0508 33C0194E 		.long	1310310451
 1631 050c 2C9D4640 		.long	1078369580
 1632 0510 33C0194E 		.long	1310310451
 1633 0514 2C9D4640 		.long	1078369580
 1634 0518 33C0194E 		.long	1310310451
 1635 051c 2C9D4640 		.long	1078369580
 1636              		.align 32
 1637              	.LC47:
 1638 0520 BDBD26A3 		.long	2737225149
 1639 0524 33BF5440 		.long	1079295795
 1640 0528 BDBD26A3 		.long	2737225149
 1641 052c 33BF5440 		.long	1079295795
 1642 0530 BDBD26A3 		.long	2737225149
 1643 0534 33BF5440 		.long	1079295795
 1644 0538 BDBD26A3 		.long	2737225149
 1645 053c 33BF5440 		.long	1079295795
 1646              		.align 32
 1647              	.LC48:
 1648 0540 A80C615C 		.long	1549864104
 1649 0544 10D02BBF 		.long	-1087647728
 1650 0548 A80C615C 		.long	1549864104
 1651 054c 10D02BBF 		.long	-1087647728
 1652 0550 A80C615C 		.long	1549864104
 1653 0554 10D02BBF 		.long	-1087647728
 1654 0558 A80C615C 		.long	1549864104
 1655 055c 10D02BBF 		.long	-1087647728
 1656              		.align 32
GAS LISTING /tmp/ccgx2aRa.s 			page 48


 1657              	.LC49:
 1658 0560 00000000 		.long	0
 1659 0564 0000E03F 		.long	1071644672
 1660 0568 00000000 		.long	0
 1661 056c 0000E03F 		.long	1071644672
 1662 0570 00000000 		.long	0
 1663 0574 0000E03F 		.long	1071644672
 1664 0578 00000000 		.long	0
 1665 057c 0000E03F 		.long	1071644672
 1666              		.align 32
 1667              	.LC50:
 1668 0580 00000000 		.long	0
 1669 0584 0030E63F 		.long	1072050176
 1670 0588 00000000 		.long	0
 1671 058c 0030E63F 		.long	1072050176
 1672 0590 00000000 		.long	0
 1673 0594 0030E63F 		.long	1072050176
 1674 0598 00000000 		.long	0
 1675 059c 0030E63F 		.long	1072050176
 1676              		.section	.rodata.cst16
 1677              		.align 16
 1678              	.LC51:
 1679 0040 00000000 		.quad	-9007199254740992
 1679      0000E0FF 
 1680 0048 00000000 		.quad	-9007199254740992
 1680      0000E0FF 
 1681              		.section	.rodata.cst32
 1682              		.align 32
 1683              	.LC52:
 1684 05a0 00000000 		.long	0
 1685 05a4 00001000 		.long	1048576
 1686 05a8 00000000 		.long	0
 1687 05ac 00001000 		.long	1048576
 1688 05b0 00000000 		.long	0
 1689 05b4 00001000 		.long	1048576
 1690 05b8 00000000 		.long	0
 1691 05bc 00001000 		.long	1048576
 1692              		.align 32
 1693              	.LC53:
 1694 05c0 00000020 		.long	536870912
 1695 05c4 2000F87F 		.long	2146959392
 1696 05c8 00000020 		.long	536870912
 1697 05cc 2000F87F 		.long	2146959392
 1698 05d0 00000020 		.long	536870912
 1699 05d4 2000F87F 		.long	2146959392
 1700 05d8 00000020 		.long	536870912
 1701 05dc 2000F87F 		.long	2146959392
 1702              		.section	.rodata.cst16
 1703              		.align 16
 1704              	.LC54:
 1705 0050 00000000 		.long	0
 1706 0054 0000F07F 		.long	2146435072
 1707 0058 00000000 		.long	0
 1708 005c 0000F07F 		.long	2146435072
 1709              		.align 16
 1710              	.LC55:
 1711 0060 00000000 		.quad	9218868437227405312
GAS LISTING /tmp/ccgx2aRa.s 			page 49


 1711      0000F07F 
 1712 0068 00000000 		.quad	9218868437227405312
 1712      0000F07F 
 1713              		.section	.rodata.cst32
 1714              		.align 32
 1715              	.LC56:
 1716 05e0 FE822B65 		.long	1697350398
 1717 05e4 4715F73F 		.long	1073157447
 1718 05e8 FE822B65 		.long	1697350398
 1719 05ec 4715F73F 		.long	1073157447
 1720 05f0 FE822B65 		.long	1697350398
 1721 05f4 4715F73F 		.long	1073157447
 1722 05f8 FE822B65 		.long	1697350398
 1723 05fc 4715F73F 		.long	1073157447
 1724              		.align 32
 1725              	.LC57:
 1726 0600 00000000 		.long	0
 1727 0604 402EE63F 		.long	1072049728
 1728 0608 00000000 		.long	0
 1729 060c 402EE63F 		.long	1072049728
 1730 0610 00000000 		.long	0
 1731 0614 402EE63F 		.long	1072049728
 1732 0618 00000000 		.long	0
 1733 061c 402EE63F 		.long	1072049728
 1734              		.align 32
 1735              	.LC58:
 1736 0620 CAAB79CF 		.long	3480857546
 1737 0624 D1F7B73E 		.long	1052243921
 1738 0628 CAAB79CF 		.long	3480857546
 1739 062c D1F7B73E 		.long	1052243921
 1740 0630 CAAB79CF 		.long	3480857546
 1741 0634 D1F7B73E 		.long	1052243921
 1742 0638 CAAB79CF 		.long	3480857546
 1743 063c D1F7B73E 		.long	1052243921
 1744              		.align 32
 1745              	.LC59:
 1746 0640 55555555 		.long	1431655765
 1747 0644 5555C53F 		.long	1069897045
 1748 0648 55555555 		.long	1431655765
 1749 064c 5555C53F 		.long	1069897045
 1750 0650 55555555 		.long	1431655765
 1751 0654 5555C53F 		.long	1069897045
 1752 0658 55555555 		.long	1431655765
 1753 065c 5555C53F 		.long	1069897045
 1754              		.align 32
 1755              	.LC60:
 1756 0660 11111111 		.long	286331153
 1757 0664 1111813F 		.long	1065423121
 1758 0668 11111111 		.long	286331153
 1759 066c 1111813F 		.long	1065423121
 1760 0670 11111111 		.long	286331153
 1761 0674 1111813F 		.long	1065423121
 1762 0678 11111111 		.long	286331153
 1763 067c 1111813F 		.long	1065423121
 1764              		.align 32
 1765              	.LC61:
 1766 0680 55555555 		.long	1431655765
GAS LISTING /tmp/ccgx2aRa.s 			page 50


 1767 0684 5555A53F 		.long	1067799893
 1768 0688 55555555 		.long	1431655765
 1769 068c 5555A53F 		.long	1067799893
 1770 0690 55555555 		.long	1431655765
 1771 0694 5555A53F 		.long	1067799893
 1772 0698 55555555 		.long	1431655765
 1773 069c 5555A53F 		.long	1067799893
 1774              		.align 32
 1775              	.LC62:
 1776 06a0 1AA0011A 		.long	436314138
 1777 06a4 A0012A3F 		.long	1059717536
 1778 06a8 1AA0011A 		.long	436314138
 1779 06ac A0012A3F 		.long	1059717536
 1780 06b0 1AA0011A 		.long	436314138
 1781 06b4 A0012A3F 		.long	1059717536
 1782 06b8 1AA0011A 		.long	436314138
 1783 06bc A0012A3F 		.long	1059717536
 1784              		.align 32
 1785              	.LC63:
 1786 06c0 176CC116 		.long	381774871
 1787 06c4 6CC1563F 		.long	1062650220
 1788 06c8 176CC116 		.long	381774871
 1789 06cc 6CC1563F 		.long	1062650220
 1790 06d0 176CC116 		.long	381774871
 1791 06d4 6CC1563F 		.long	1062650220
 1792 06d8 176CC116 		.long	381774871
 1793 06dc 6CC1563F 		.long	1062650220
 1794              		.align 32
 1795              	.LC64:
 1796 06e0 34C756A5 		.long	2773927732
 1797 06e4 E31DC73E 		.long	1053236707
 1798 06e8 34C756A5 		.long	2773927732
 1799 06ec E31DC73E 		.long	1053236707
 1800 06f0 34C756A5 		.long	2773927732
 1801 06f4 E31DC73E 		.long	1053236707
 1802 06f8 34C756A5 		.long	2773927732
 1803 06fc E31DC73E 		.long	1053236707
 1804              		.align 32
 1805              	.LC65:
 1806 0700 1AA0011A 		.long	436314138
 1807 0704 A001FA3E 		.long	1056571808
 1808 0708 1AA0011A 		.long	436314138
 1809 070c A001FA3E 		.long	1056571808
 1810 0710 1AA0011A 		.long	436314138
 1811 0714 A001FA3E 		.long	1056571808
 1812 0718 1AA0011A 		.long	436314138
 1813 071c A001FA3E 		.long	1056571808
 1814              		.align 32
 1815              	.LC66:
 1816 0720 E444F567 		.long	1744127204
 1817 0724 45E65A3E 		.long	1046144581
 1818 0728 E444F567 		.long	1744127204
 1819 072c 45E65A3E 		.long	1046144581
 1820 0730 E444F567 		.long	1744127204
 1821 0734 45E65A3E 		.long	1046144581
 1822 0738 E444F567 		.long	1744127204
 1823 073c 45E65A3E 		.long	1046144581
GAS LISTING /tmp/ccgx2aRa.s 			page 51


 1824              		.align 32
 1825              	.LC67:
 1826 0740 5C9F78B7 		.long	3078135644
 1827 0744 4F7E923E 		.long	1049787983
 1828 0748 5C9F78B7 		.long	3078135644
 1829 074c 4F7E923E 		.long	1049787983
 1830 0750 5C9F78B7 		.long	3078135644
 1831 0754 4F7E923E 		.long	1049787983
 1832 0758 5C9F78B7 		.long	3078135644
 1833 075c 4F7E923E 		.long	1049787983
 1834              		.align 32
 1835              	.LC68:
 1836 0760 096DA813 		.long	329805065
 1837 0764 4612E63D 		.long	1038488134
 1838 0768 096DA813 		.long	329805065
 1839 076c 4612E63D 		.long	1038488134
 1840 0770 096DA813 		.long	329805065
 1841 0774 4612E63D 		.long	1038488134
 1842 0778 096DA813 		.long	329805065
 1843 077c 4612E63D 		.long	1038488134
 1844              		.align 32
 1845              	.LC69:
 1846 0780 98D8F8EF 		.long	4026063000
 1847 0784 D8EE213E 		.long	1042411224
 1848 0788 98D8F8EF 		.long	4026063000
 1849 078c D8EE213E 		.long	1042411224
 1850 0790 98D8F8EF 		.long	4026063000
 1851 0794 D8EE213E 		.long	1042411224
 1852 0798 98D8F8EF 		.long	4026063000
 1853 079c D8EE213E 		.long	1042411224
 1854              		.align 32
 1855              	.LC70:
 1856 07a0 85EB51B8 		.long	3092376453
 1857 07a4 1E238640 		.long	1082532638
 1858 07a8 85EB51B8 		.long	3092376453
 1859 07ac 1E238640 		.long	1082532638
 1860 07b0 85EB51B8 		.long	3092376453
 1861 07b4 1E238640 		.long	1082532638
 1862 07b8 85EB51B8 		.long	3092376453
 1863 07bc 1E238640 		.long	1082532638
 1864              		.align 32
 1865              	.LC71:
 1866 07c0 2D431CEB 		.long	3944497965
 1867 07c4 E2361A3F 		.long	1058682594
 1868 07c8 2D431CEB 		.long	3944497965
 1869 07cc E2361A3F 		.long	1058682594
 1870 07d0 2D431CEB 		.long	3944497965
 1871 07d4 E2361A3F 		.long	1058682594
 1872 07d8 2D431CEB 		.long	3944497965
 1873 07dc E2361A3F 		.long	1058682594
 1874              		.align 32
 1875              	.LC72:
 1876 07e0 00000000 		.long	0
 1877 07e4 00001440 		.long	1075052544
 1878 07e8 00000000 		.long	0
 1879 07ec 00001440 		.long	1075052544
 1880 07f0 00000000 		.long	0
GAS LISTING /tmp/ccgx2aRa.s 			page 52


 1881 07f4 00001440 		.long	1075052544
 1882 07f8 00000000 		.long	0
 1883 07fc 00001440 		.long	1075052544
 1884              		.align 32
 1885              	.LC73:
 1886 0800 9A999999 		.long	2576980378
 1887 0804 9999E93F 		.long	1072273817
 1888 0808 9A999999 		.long	2576980378
 1889 080c 9999E93F 		.long	1072273817
 1890 0810 9A999999 		.long	2576980378
 1891 0814 9999E93F 		.long	1072273817
 1892 0818 9A999999 		.long	2576980378
 1893 081c 9999E93F 		.long	1072273817
 1894              		.align 32
 1895              	.LC74:
 1896 0820 00000000 		.long	0
 1897 0824 00408F40 		.long	1083129856
 1898 0828 00000000 		.long	0
 1899 082c 00408F40 		.long	1083129856
 1900 0830 00000000 		.long	0
 1901 0834 00408F40 		.long	1083129856
 1902 0838 00000000 		.long	0
 1903 083c 00408F40 		.long	1083129856
 1904              		.align 32
 1905              	.LC75:
 1906 0840 00000000 		.long	0
 1907 0844 00005940 		.long	1079574528
 1908 0848 00000000 		.long	0
 1909 084c 00005940 		.long	1079574528
 1910 0850 00000000 		.long	0
 1911 0854 00005940 		.long	1079574528
 1912 0858 00000000 		.long	0
 1913 085c 00005940 		.long	1079574528
 1914              		.section	.rodata.cst16
 1915              		.align 16
 1916              	.LC82:
 1917 0070 FFFFFFFF 		.quad	-1
 1917      FFFFFFFF 
 1918 0078 FFFFFFFF 		.quad	-1
 1918      FFFFFFFF 
 1919              		.hidden	__dso_handle
 1920              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1921              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccgx2aRa.s 			page 53


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccgx2aRa.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccgx2aRa.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccgx2aRa.s:87     .text.startup:0000000000000000 main
     /tmp/ccgx2aRa.s:1186   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccgx2aRa.s:1174   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccgx2aRa.s:1151   .text.startup:00000000000019c0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccgx2aRa.s:1209   .rodata.cst32:0000000000000020 .LC1
     /tmp/ccgx2aRa.s:1220   .rodata.cst8:0000000000000000 .LC2
     /tmp/ccgx2aRa.s:1704   .rodata.cst16:0000000000000050 .LC54
     /tmp/ccgx2aRa.s:1475   .rodata.cst32:0000000000000360 .LC29
     /tmp/ccgx2aRa.s:1199   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccgx2aRa.s:1225   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccgx2aRa.s:1235   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccgx2aRa.s:1245   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccgx2aRa.s:1255   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccgx2aRa.s:1265   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccgx2aRa.s:1275   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccgx2aRa.s:1285   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccgx2aRa.s:1295   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccgx2aRa.s:1305   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccgx2aRa.s:1325   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccgx2aRa.s:1315   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccgx2aRa.s:1335   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccgx2aRa.s:1355   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccgx2aRa.s:1365   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccgx2aRa.s:1375   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccgx2aRa.s:1345   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccgx2aRa.s:1385   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccgx2aRa.s:1435   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccgx2aRa.s:1395   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccgx2aRa.s:1405   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccgx2aRa.s:1415   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccgx2aRa.s:1425   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccgx2aRa.s:1455   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccgx2aRa.s:1445   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccgx2aRa.s:1465   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccgx2aRa.s:1509   .rodata.cst32:00000000000003a0 .LC34
     /tmp/ccgx2aRa.s:1486   .rodata.cst16:0000000000000000 .LC30
     /tmp/ccgx2aRa.s:1494   .rodata.cst16:0000000000000020 .LC32
     /tmp/ccgx2aRa.s:1490   .rodata.cst16:0000000000000010 .LC31
     /tmp/ccgx2aRa.s:1527   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccgx2aRa.s:1520   .rodata.cst16:0000000000000030 .LC35
     /tmp/ccgx2aRa.s:1499   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccgx2aRa.s:1557   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccgx2aRa.s:1537   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccgx2aRa.s:1577   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccgx2aRa.s:1567   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccgx2aRa.s:1547   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccgx2aRa.s:1587   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccgx2aRa.s:1597   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccgx2aRa.s:1607   .rodata.cst32:00000000000004c0 .LC44
     /tmp/ccgx2aRa.s:1617   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccgx2aRa.s:1627   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccgx2aRa.s:1637   .rodata.cst32:0000000000000520 .LC47
GAS LISTING /tmp/ccgx2aRa.s 			page 54


     /tmp/ccgx2aRa.s:1657   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccgx2aRa.s:1647   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccgx2aRa.s:1667   .rodata.cst32:0000000000000580 .LC50
     /tmp/ccgx2aRa.s:1678   .rodata.cst16:0000000000000040 .LC51
     /tmp/ccgx2aRa.s:1916   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccgx2aRa.s:1683   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccgx2aRa.s:1693   .rodata.cst32:00000000000005c0 .LC53
     /tmp/ccgx2aRa.s:1710   .rodata.cst16:0000000000000060 .LC55
     /tmp/ccgx2aRa.s:1715   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccgx2aRa.s:1725   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccgx2aRa.s:1735   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccgx2aRa.s:1775   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccgx2aRa.s:1745   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccgx2aRa.s:1755   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccgx2aRa.s:1785   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccgx2aRa.s:1765   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccgx2aRa.s:1795   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccgx2aRa.s:1805   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccgx2aRa.s:1815   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccgx2aRa.s:1825   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccgx2aRa.s:1835   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccgx2aRa.s:1845   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccgx2aRa.s:1855   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccgx2aRa.s:1865   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccgx2aRa.s:1875   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccgx2aRa.s:1895   .rodata.cst32:0000000000000820 .LC74
     /tmp/ccgx2aRa.s:1885   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccgx2aRa.s:1905   .rodata.cst32:0000000000000840 .LC75

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
