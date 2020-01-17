GAS LISTING /tmp/cce9VX6C.s 			page 1


   1              		.file	"duffing_RKCK45.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4958:
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
  18              	.LFE4958:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4615:
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
GAS LISTING /tmp/cce9VX6C.s 			page 2


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
  66              	.LFE4615:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.1,"aMS",@progbits,1
  69              	.LC4:
  70 0000 64617461 		.string	"data.csv"
  70      2E637376 
  70      00
  71              	.LC97:
  72 0009 0900     		.string	"\t"
  73              	.LC103:
  74 000b 456C6170 		.string	"Elapsed tome: "
  74      73656420 
  74      746F6D65 
  74      3A2000
  75              	.LC104:
  76 001a 206D7300 		.string	" ms"
  77              		.section	.text.startup,"ax",@progbits
  78              		.p2align 4,,15
  79              		.globl	main
  80              		.type	main, @function
  81              	main:
  82              	.LFB4614:
  83              		.cfi_startproc
  84              		.cfi_personality 0x3,__gxx_personality_v0
  85              		.cfi_lsda 0x3,.LLSDA4614
  86 0000 55       		pushq	%rbp
  87              		.cfi_def_cfa_offset 16
  88              		.cfi_offset 6, -16
  89 0001 BFA00500 		movl	$1440, %edi
  89      00
  90 0006 4889E5   		movq	%rsp, %rbp
  91              		.cfi_def_cfa_register 6
  92 0009 4157     		pushq	%r15
  93 000b 4156     		pushq	%r14
  94 000d 4155     		pushq	%r13
  95 000f 4154     		pushq	%r12
  96 0011 53       		pushq	%rbx
  97 0012 4883E4E0 		andq	$-32, %rsp
  98 0016 4881EC00 		subq	$5888, %rsp
GAS LISTING /tmp/cce9VX6C.s 			page 3


  98      170000
  99              		.cfi_offset 15, -24
 100              		.cfi_offset 14, -32
 101              		.cfi_offset 13, -40
 102              		.cfi_offset 12, -48
 103              		.cfi_offset 3, -56
 104 001d C5FD280D 		vmovapd	.LC0(%rip), %ymm1
 104      00000000 
 105 0025 C5FD2805 		vmovapd	.LC1(%rip), %ymm0
 105      00000000 
 106 002d C5FD298C 		vmovapd	%ymm1, 832(%rsp)
 106      24400300 
 106      00
 107 0036 C5FD2984 		vmovapd	%ymm0, 864(%rsp)
 107      24600300 
 107      00
 108 003f C5FD298C 		vmovapd	%ymm1, 896(%rsp)
 108      24800300 
 108      00
 109 0048 C5FD2984 		vmovapd	%ymm0, 928(%rsp)
 109      24A00300 
 109      00
 110 0051 C5FD298C 		vmovapd	%ymm1, 960(%rsp)
 110      24C00300 
 110      00
 111 005a C5FD2984 		vmovapd	%ymm0, 992(%rsp)
 111      24E00300 
 111      00
 112 0063 C5FD298C 		vmovapd	%ymm1, 1024(%rsp)
 112      24000400 
 112      00
 113 006c C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 113      24200400 
 113      00
 114 0075 C5FD298C 		vmovapd	%ymm1, 1088(%rsp)
 114      24400400 
 114      00
 115 007e C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 115      24600400 
 115      00
 116 0087 C5FD298C 		vmovapd	%ymm1, 1152(%rsp)
 116      24800400 
 116      00
 117 0090 C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 117      24A00400 
 117      00
 118 0099 64488B04 		movq	%fs:40, %rax
 118      25280000 
 118      00
 119 00a2 48898424 		movq	%rax, 5880(%rsp)
 119      F8160000 
 120 00aa 31C0     		xorl	%eax, %eax
 121 00ac C5FB100D 		vmovsd	.LC2(%rip), %xmm1
 121      00000000 
 122 00b4 C5FB1005 		vmovsd	.LC3(%rip), %xmm0
 122      00000000 
 123 00bc C5F877   		vzeroupper
GAS LISTING /tmp/cce9VX6C.s 			page 4


 124 00bf E8000000 		call	_Z8linspaceddi
 124      00
 125 00c4 488DBC24 		leaq	5360(%rsp), %rdi
 125      F0140000 
 126 00cc BA300000 		movl	$48, %edx
 126      00
 127 00d1 BE000000 		movl	$.LC4, %esi
 127      00
 128 00d6 4889C3   		movq	%rax, %rbx
 129              	.LEHB0:
 130 00d9 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
 130      00
 131              	.LEHE0:
 132 00de E8000000 		call	clock
 132      00
 133 00e3 C5F82805 		vmovaps	.LC74(%rip), %xmm0
 133      00000000 
 134 00eb 48894424 		movq	%rax, 8(%rsp)
 134      08
 135 00f0 48895C24 		movq	%rbx, 16(%rsp)
 135      10
 136 00f5 C5F828C8 		vmovaps	%xmm0, %xmm1
 137 00f9 C744241C 		movl	$0, 28(%rsp)
 137      00000000 
 138 0101 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
 138      C001
 139 0107 C5FD572D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 139      00000000 
 140 010f C5FC2944 		vmovaps	%ymm0, 32(%rsp)
 140      2420
 141 0115 C5FD296C 		vmovapd	%ymm5, 64(%rsp)
 141      2440
 142              	.L12:
 143 011b 488B4424 		movq	16(%rsp), %rax
 143      10
 144 0120 C5F157C9 		vxorpd	%xmm1, %xmm1, %xmm1
 145 0124 C5FD283D 		vmovapd	.LC101(%rip), %ymm7
 145      00000000 
 146 012c 31C9     		xorl	%ecx, %ecx
 147 012e 31F6     		xorl	%esi, %esi
 148 0130 C5FD282D 		vmovapd	.LC102(%rip), %ymm5
 148      00000000 
 149 0138 C5FD2800 		vmovapd	(%rax), %ymm0
 150 013c C5FD29BC 		vmovapd	%ymm7, 4672(%rsp)
 150      24401200 
 150      00
 151 0145 C5FD2984 		vmovapd	%ymm0, 4864(%rsp)
 151      24001300 
 151      00
 152 014e C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 153 0152 C5FD29AC 		vmovapd	%ymm5, 5056(%rsp)
 153      24C01300 
 153      00
 154 015b C5FD298C 		vmovapd	%ymm1, 4288(%rsp)
 154      24C01000 
 154      00
 155 0164 C5F97F84 		vmovdqa	%xmm0, 5248(%rsp)
GAS LISTING /tmp/cce9VX6C.s 			page 5


 155      24801400 
 155      00
 156 016d C5FD2850 		vmovapd	32(%rax), %ymm2
 156      20
 157 0172 C5F97F84 		vmovdqa	%xmm0, 5264(%rsp)
 157      24901400 
 157      00
 158 017b C5FD29BC 		vmovapd	%ymm7, 4704(%rsp)
 158      24601200 
 158      00
 159 0184 C5FD29AC 		vmovapd	%ymm5, 5088(%rsp)
 159      24E01300 
 159      00
 160 018d C5FD2994 		vmovapd	%ymm2, 4896(%rsp)
 160      24201300 
 160      00
 161 0196 C5FD298C 		vmovapd	%ymm1, 4320(%rsp)
 161      24E01000 
 161      00
 162 019f C5FD2850 		vmovapd	64(%rax), %ymm2
 162      40
 163 01a4 C5F97F84 		vmovdqa	%xmm0, 5280(%rsp)
 163      24A01400 
 163      00
 164 01ad C5FD29BC 		vmovapd	%ymm7, 4736(%rsp)
 164      24801200 
 164      00
 165 01b6 C5FD29AC 		vmovapd	%ymm5, 5120(%rsp)
 165      24001400 
 165      00
 166 01bf C5FD28EF 		vmovapd	%ymm7, %ymm5
 167 01c3 C5FD2994 		vmovapd	%ymm2, 4928(%rsp)
 167      24401300 
 167      00
 168 01cc C5FD298C 		vmovapd	%ymm1, 4352(%rsp)
 168      24001100 
 168      00
 169 01d5 C5FD2850 		vmovapd	96(%rax), %ymm2
 169      60
 170 01da C5FD29BC 		vmovapd	%ymm7, 4768(%rsp)
 170      24A01200 
 170      00
 171 01e3 C5FD283D 		vmovapd	.LC102(%rip), %ymm7
 171      00000000 
 172 01eb C5F97F84 		vmovdqa	%xmm0, 5296(%rsp)
 172      24B01400 
 172      00
 173 01f4 C5FD2994 		vmovapd	%ymm2, 4960(%rsp)
 173      24601300 
 173      00
 174 01fd C5FD298C 		vmovapd	%ymm1, 4384(%rsp)
 174      24201100 
 174      00
 175 0206 C5FD29BC 		vmovapd	%ymm7, 5152(%rsp)
 175      24201400 
 175      00
 176 020f C5FD2890 		vmovapd	128(%rax), %ymm2
GAS LISTING /tmp/cce9VX6C.s 			page 6


 176      80000000 
 177 0217 C5FD29AC 		vmovapd	%ymm5, 4800(%rsp)
 177      24C01200 
 177      00
 178 0220 C5FD2994 		vmovapd	%ymm2, 4992(%rsp)
 178      24801300 
 178      00
 179 0229 C5FD298C 		vmovapd	%ymm1, 4416(%rsp)
 179      24401100 
 179      00
 180 0232 C5FD29BC 		vmovapd	%ymm7, 5184(%rsp)
 180      24401400 
 180      00
 181 023b C5F97F84 		vmovdqa	%xmm0, 5312(%rsp)
 181      24C01400 
 181      00
 182 0244 C5FD2890 		vmovapd	160(%rax), %ymm2
 182      A0000000 
 183 024c C5F97F84 		vmovdqa	%xmm0, 5328(%rsp)
 183      24D01400 
 183      00
 184 0255 C5FD2994 		vmovapd	%ymm2, 5024(%rsp)
 184      24A01300 
 184      00
 185 025e C5FD29AC 		vmovapd	%ymm5, 4832(%rsp)
 185      24E01200 
 185      00
 186 0267 C5FD2884 		vmovapd	832(%rsp), %ymm0
 186      24400300 
 186      00
 187 0270 C5FD298C 		vmovapd	%ymm1, 4448(%rsp)
 187      24601100 
 187      00
 188 0279 C5FD2984 		vmovapd	%ymm0, 3904(%rsp)
 188      24400F00 
 188      00
 189 0282 C5FD2884 		vmovapd	864(%rsp), %ymm0
 189      24600300 
 189      00
 190 028b C5FD29BC 		vmovapd	%ymm7, 5216(%rsp)
 190      24601400 
 190      00
 191 0294 C5FD2984 		vmovapd	%ymm0, 3936(%rsp)
 191      24600F00 
 191      00
 192 029d C5FD2884 		vmovapd	896(%rsp), %ymm0
 192      24800300 
 192      00
 193 02a6 C5FD2984 		vmovapd	%ymm0, 3968(%rsp)
 193      24800F00 
 193      00
 194 02af C5FD2884 		vmovapd	928(%rsp), %ymm0
 194      24A00300 
 194      00
 195 02b8 C5FD2984 		vmovapd	%ymm0, 4000(%rsp)
 195      24A00F00 
 195      00
GAS LISTING /tmp/cce9VX6C.s 			page 7


 196 02c1 C5FD2884 		vmovapd	960(%rsp), %ymm0
 196      24C00300 
 196      00
 197 02ca C5FD2984 		vmovapd	%ymm0, 4032(%rsp)
 197      24C00F00 
 197      00
 198 02d3 C5FD2884 		vmovapd	992(%rsp), %ymm0
 198      24E00300 
 198      00
 199 02dc C5FD2984 		vmovapd	%ymm0, 4064(%rsp)
 199      24E00F00 
 199      00
 200 02e5 C5FD2884 		vmovapd	1024(%rsp), %ymm0
 200      24000400 
 200      00
 201 02ee C5FD2984 		vmovapd	%ymm0, 4096(%rsp)
 201      24001000 
 201      00
 202 02f7 C5FD2884 		vmovapd	1056(%rsp), %ymm0
 202      24200400 
 202      00
 203 0300 C5FD2984 		vmovapd	%ymm0, 4128(%rsp)
 203      24201000 
 203      00
 204 0309 C5FD2884 		vmovapd	1088(%rsp), %ymm0
 204      24400400 
 204      00
 205 0312 C5FD2984 		vmovapd	%ymm0, 4160(%rsp)
 205      24401000 
 205      00
 206 031b C5FD2884 		vmovapd	1120(%rsp), %ymm0
 206      24600400 
 206      00
 207 0324 C5FD2984 		vmovapd	%ymm0, 4192(%rsp)
 207      24601000 
 207      00
 208 032d C5FD2884 		vmovapd	1152(%rsp), %ymm0
 208      24800400 
 208      00
 209 0336 C5FD2984 		vmovapd	%ymm0, 4224(%rsp)
 209      24801000 
 209      00
 210 033f C5FD2884 		vmovapd	1184(%rsp), %ymm0
 210      24A00400 
 210      00
 211 0348 C5FD2984 		vmovapd	%ymm0, 4256(%rsp)
 211      24A01000 
 211      00
 212 0351 E9D50200 		jmp	.L56
 212      00
 213 0356 662E0F1F 		.p2align 4,,10
 213      84000000 
 213      0000
 214              		.p2align 3
 215              	.L13:
 216 0360 4863C6   		movslq	%esi, %rax
 217 0363 4863D1   		movslq	%ecx, %rdx
GAS LISTING /tmp/cce9VX6C.s 			page 8


 218 0366 83C602   		addl	$2, %esi
 219 0369 48C1E005 		salq	$5, %rax
 220 036d 48C1E205 		salq	$5, %rdx
 221 0371 83C101   		addl	$1, %ecx
 222 0374 488D7820 		leaq	32(%rax), %rdi
 223 0378 4C8D843C 		leaq	3904(%rsp,%rdi), %r8
 223      400F0000 
 224 0380 C4C17D28 		vmovapd	(%r8), %ymm0
 224      00
 225 0385 C5FD2984 		vmovapd	%ymm0, 2368(%rsp,%rax)
 225      04400900 
 225      00
 226 038e C5FD28BC 		vmovapd	4288(%rsp,%rdx), %ymm7
 226      14C01000 
 226      00
 227 0397 C5C55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 227      00000000 
 228 039f C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 228      00000000 
 229 03a7 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 229      C008
 230 03ad C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 230      C808
 231 03b3 C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 231      24C00000 
 231      00
 232 03bc C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 232      00000000 
 233 03c4 C5FB109C 		vmovsd	192(%rsp), %xmm3
 233      24C00000 
 233      00
 234 03cd C5FB10A4 		vmovsd	200(%rsp), %xmm4
 234      24C80000 
 234      00
 235 03d6 C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 235      DB
 236 03db C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 236      00000000 
 237 03e3 C461FB2C 		vcvttsd2siq	%xmm4, %r9
 237      CC
 238 03e8 C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 238      00000000 
 239 03f0 C5FB10AC 		vmovsd	208(%rsp), %xmm5
 239      24D00000 
 239      00
 240 03f9 C5FB10B4 		vmovsd	216(%rsp), %xmm6
 240      24D80000 
 240      00
 241 0402 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 242 0406 48899C24 		movq	%rbx, 128(%rsp)
 242      80000000 
 243 040e C4E1FB2C 		vcvttsd2siq	%xmm5, %rbx
 243      DD
 244 0413 C5FA7EBC 		vmovq	128(%rsp), %xmm7
 244      24800000 
 244      00
 245 041c C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
GAS LISTING /tmp/cce9VX6C.s 			page 9


 246 0420 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm4
 246      E101
 247 0426 C461FB2C 		vcvttsd2siq	%xmm6, %r9
 247      CE
 248 042b C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 249 042f 48899C24 		movq	%rbx, 128(%rsp)
 249      80000000 
 250 0437 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 251 043b C5FA7EBC 		vmovq	128(%rsp), %xmm7
 251      24800000 
 251      00
 252 0444 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm5
 252      E901
 253 044a C57D5905 		vmulpd	.LC11(%rip), %ymm0, %ymm8
 253      00000000 
 254 0452 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 255 0456 C5FD593D 		vmulpd	.LC9(%rip), %ymm0, %ymm7
 255      00000000 
 256 045e C57D590D 		vmulpd	.LC17(%rip), %ymm0, %ymm9
 256      00000000 
 257 0466 C53D5805 		vaddpd	.LC12(%rip), %ymm8, %ymm8
 257      00000000 
 258 046e C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 259 0472 C5C5583D 		vaddpd	.LC10(%rip), %ymm7, %ymm7
 259      00000000 
 260 047a C535580D 		vaddpd	.LC18(%rip), %ymm9, %ymm9
 260      00000000 
 261 0482 C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
 262 0486 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 263 048a C5FD593D 		vmulpd	.LC13(%rip), %ymm0, %ymm7
 263      00000000 
 264 0492 C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 265 0496 C5C5583D 		vaddpd	.LC14(%rip), %ymm7, %ymm7
 265      00000000 
 266 049e C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 267 04a2 C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 267      F8
 268 04a7 C57D5905 		vmulpd	.LC15(%rip), %ymm0, %ymm8
 268      00000000 
 269 04af C53D5805 		vaddpd	.LC16(%rip), %ymm8, %ymm8
 269      00000000 
 270 04b7 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 270      F0
 271 04bc C57D5905 		vmulpd	.LC19(%rip), %ymm0, %ymm8
 271      00000000 
 272 04c4 C53D5805 		vaddpd	.LC20(%rip), %ymm8, %ymm8
 272      00000000 
 273 04cc C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 274 04d0 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 275 04d4 C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
 276 04d8 C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 276      00000000 
 277 04e0 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 278 04e4 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 279 04e8 C5C9EFF6 		vpxor	%xmm6, %xmm6, %xmm6
 280 04ec C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 280      D001
GAS LISTING /tmp/cce9VX6C.s 			page 10


 281 04f2 C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 282 04f6 C5FD283D 		vmovapd	.LC22(%rip), %ymm7
 282      00000000 
 283 04fe C4C13973 		vpsllq	$1, %xmm8, %xmm8
 283      F001
 284 0504 C539DB05 		vpand	.LC25(%rip), %xmm8, %xmm8
 284      00000000 
 285 050c C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 286 0510 C4623929 		vpcmpeqq	.LC25(%rip), %xmm8, %xmm8
 286      05000000 
 286      00
 287 0519 C5F558F8 		vaddpd	%ymm0, %ymm1, %ymm7
 288 051d C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 288      00000000 
 289 0525 C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 289      00000000 
 290 052d C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 290      00000000 
 291 0535 C4E27929 		vpcmpeqq	%xmm6, %xmm0, %xmm0
 291      C6
 292 053a C4E27129 		vpcmpeqq	%xmm6, %xmm1, %xmm1
 292      CE
 293 053f C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 293      00000000 
 294 0547 C4E25937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm6
 294      35000000 
 294      00
 295 0550 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 295      00000000 
 296 0558 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 296      C801
 297 055e C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 297      05000000 
 297      00
 298 0567 C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 298      F001
 299 056d C5F928C2 		vmovapd	%xmm2, %xmm0
 300 0571 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 301 0575 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 301      01
 302 057a C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 302      00000000 
 303 0582 C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 303      05000000 
 303      00
 304 058b C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 304      00000000 
 305 0593 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 305      C001
 306 0599 C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
 307 059d C4E3654B 		vblendvpd	%ymm0, %ymm2, %ymm3, %ymm3
 307      DA00
 308 05a3 C4E3454B 		vblendvpd	%ymm0, .LC22(%rip), %ymm7, %ymm0
 308      05000000 
 308      0000
 309 05ad C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 309      00000000 
GAS LISTING /tmp/cce9VX6C.s 			page 11


 310 05b5 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 310      00000000 
 311 05bd C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 311      C310
 312 05c3 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 312      00000000 
 313 05cb C5FD283D 		vmovapd	.LC22(%rip), %ymm7
 313      00000000 
 314 05d3 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 314      00000000 
 315 05db C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 315      3E
 316 05e0 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 316      3E
 317 05e5 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 317      CA01
 318 05eb C5FD2894 		vmovapd	4864(%rsp,%rdx), %ymm2
 318      14001300 
 318      00
 319 05f4 C4C16D59 		vmulpd	(%r8), %ymm2, %ymm2
 319      10
 320 05f9 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 321 05fd C5FD2884 		vmovapd	3904(%rsp,%rax), %ymm0
 321      04400F00 
 321      00
 322 0606 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 323 060a C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 323      00000000 
 324 0612 C5C55CDB 		vsubpd	%ymm3, %ymm7, %ymm3
 325 0616 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 326 061a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 327 061e C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 328 0622 C5FD2984 		vmovapd	%ymm0, 2400(%rsp,%rax)
 328      04600900 
 328      00
 329              	.L56:
 330 062b 83F905   		cmpl	$5, %ecx
 331 062e 0F8E2CFD 		jle	.L13
 331      FFFF
 332 0634 4C8D8424 		leaq	4480(%rsp), %r8
 332      80110000 
 333 063c 488D9424 		leaq	3552(%rsp), %rdx
 333      E00D0000 
 334 0644 488D8C24 		leaq	4672(%rsp), %rcx
 334      40120000 
 335 064c C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 335      00000000 
 336 0654 4C89C0   		movq	%r8, %rax
 337 0657 660F1F84 		.p2align 4,,10
 337      00000000 
 337      00
 338              		.p2align 3
 339              	.L15:
 340 0660 C5C55982 		vmulpd	-1184(%rdx), %ymm7, %ymm0
 340      60FBFFFF 
 341 0668 4883C020 		addq	$32, %rax
 342 066c 4883C240 		addq	$64, %rdx
GAS LISTING /tmp/cce9VX6C.s 			page 12


 343 0670 C5FD5980 		vmulpd	160(%rax), %ymm0, %ymm0
 343      A0000000 
 344 0678 C5FD5882 		vaddpd	288(%rdx), %ymm0, %ymm0
 344      20010000 
 345 0680 C5FD2942 		vmovapd	%ymm0, -96(%rdx)
 345      A0
 346 0685 C5C55982 		vmulpd	-1216(%rdx), %ymm7, %ymm0
 346      40FBFFFF 
 347 068d C5FD5980 		vmulpd	160(%rax), %ymm0, %ymm0
 347      A0000000 
 348 0695 C5FD5882 		vaddpd	320(%rdx), %ymm0, %ymm0
 348      40010000 
 349 069d C5FD2942 		vmovapd	%ymm0, -64(%rdx)
 349      C0
 350 06a2 C5C55980 		vmulpd	160(%rax), %ymm7, %ymm0
 350      A0000000 
 351 06aa C5FD5880 		vaddpd	-224(%rax), %ymm0, %ymm0
 351      20FFFFFF 
 352 06b2 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 352      E0
 353 06b7 4839C8   		cmpq	%rcx, %rax
 354 06ba 75A4     		jne	.L15
 355 06bc 488DB424 		leaq	3552(%rsp), %rsi
 355      E00D0000 
 356 06c4 488DBC24 		leaq	4480(%rsp), %rdi
 356      80110000 
 357 06cc 488D8C24 		leaq	3936(%rsp), %rcx
 357      600F0000 
 358 06d4 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 359 06d8 C57D282D 		vmovapd	.LC22(%rip), %ymm13
 359      00000000 
 360 06e0 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 360      C0
 361 06e5 4889F8   		movq	%rdi, %rax
 362 06e8 4889F2   		movq	%rsi, %rdx
 363 06eb 0F1F4400 		.p2align 4,,10
 363      00
 364              		.p2align 3
 365              	.L17:
 366 06f0 C5FD2802 		vmovapd	(%rdx), %ymm0
 367 06f4 4883C240 		addq	$64, %rdx
 368 06f8 4883C020 		addq	$32, %rax
 369 06fc C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 369      00000000 
 370 0704 C5FD2982 		vmovapd	%ymm0, -2400(%rdx)
 370      A0F6FFFF 
 371 070c C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 371      E0
 372 0711 C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 372      00000000 
 373 0719 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 373      C008
 374 071f C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 374      C808
 375 0725 C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 375      24E00000 
 375      00
GAS LISTING /tmp/cce9VX6C.s 			page 13


 376 072e C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 376      00000000 
 377 0736 C57B10A4 		vmovsd	224(%rsp), %xmm12
 377      24E00000 
 377      00
 378 073f C57B10B4 		vmovsd	232(%rsp), %xmm14
 378      24E80000 
 378      00
 379 0748 C4C1FB2C 		vcvttsd2siq	%xmm12, %rbx
 379      DC
 380 074d C441FB2C 		vcvttsd2siq	%xmm14, %r9
 380      CE
 381 0752 C5FB108C 		vmovsd	248(%rsp), %xmm1
 381      24F80000 
 381      00
 382 075b C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 383 075f C57B10BC 		vmovsd	240(%rsp), %xmm15
 383      24F00000 
 383      00
 384 0768 48899C24 		movq	%rbx, 128(%rsp)
 384      80000000 
 385 0770 C4C1FB2C 		vcvttsd2siq	%xmm15, %rbx
 385      DF
 386 0775 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 386      24800000 
 386      00
 387 077e C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm4
 387      E101
 388 0784 C461FB2C 		vcvttsd2siq	%xmm1, %r9
 388      C9
 389 0789 C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 389      00000000 
 390 0791 C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 390      00000000 
 391 0799 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 392 079d 48899C24 		movq	%rbx, 128(%rsp)
 392      80000000 
 393 07a5 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 393      24800000 
 393      00
 394 07ae C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm5
 394      E901
 395 07b4 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 396 07b8 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 397 07bc C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 397      00000000 
 398 07c4 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 399 07c8 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 399      00000000 
 400 07d0 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 400      00000000 
 401 07d8 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 401      00000000 
 402 07e0 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 403 07e4 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 403      00000000 
 404 07ec C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
GAS LISTING /tmp/cce9VX6C.s 			page 14


 404      00000000 
 405 07f4 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 406 07f8 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 406      D1
 407 07fd C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 407      00000000 
 408 0805 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 409 0809 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 409      00000000 
 410 0811 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 411 0815 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 411      CA
 412 081a C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 412      00000000 
 413 0822 C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 413      00000000 
 414 082a C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 414      F2
 415 082f C57D5915 		vmulpd	.LC19(%rip), %ymm0, %ymm10
 415      00000000 
 416 0837 C52D5815 		vaddpd	.LC20(%rip), %ymm10, %ymm10
 416      00000000 
 417 083f C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 418 0843 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 419 0847 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 420 084b C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 420      00000000 
 421 0853 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 422 0857 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 422      C9
 423 085c C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 423      D201
 424 0862 C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 425 0866 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 426 086a C4C12973 		vpsllq	$1, %xmm10, %xmm10
 426      F201
 427 0870 C529DB15 		vpand	.LC25(%rip), %xmm10, %xmm10
 427      00000000 
 428 0878 C4625937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm9
 428      0D000000 
 428      00
 429 0881 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 430 0885 C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 430      00000000 
 431 088d C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 431      00000000 
 432 0895 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 432      15000000 
 432      00
 433 089e C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 433      C7
 434 08a3 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 434      00000000 
 435 08ab C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 435      CF
 436 08b0 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 436      00000000 
GAS LISTING /tmp/cce9VX6C.s 			page 15


 437 08b8 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 437      00000000 
 438 08c0 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 438      C801
 439 08c6 C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 439      05000000 
 439      00
 440 08cf C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 440      C801
 441 08d5 C5F928C2 		vmovapd	%xmm2, %xmm0
 442 08d9 C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 442      00000000 
 443 08e1 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 443      00000000 
 444 08e9 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 444      01
 445 08ee C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 445      00000000 
 446 08f6 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 446      3E
 447 08fb C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 447      05000000 
 447      00
 448 0904 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 448      00000000 
 449 090c C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 449      C201
 450 0912 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 451 0916 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 451      D800
 452 091c C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 452      C500
 453 0922 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 453      C310
 454 0928 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 454      00000000 
 455 0930 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 455      00000000 
 456 0938 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 456      3E
 457 093d C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 457      CA01
 458 0943 C5FD2890 		vmovapd	352(%rax), %ymm2
 458      60010000 
 459 094b C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 459      C0
 460 0950 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 461 0954 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 461      A0
 462 0959 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 463 095d C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 463      00000000 
 464 0965 C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 465 0969 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 466 096d C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 467 0971 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 468 0975 C5FD2982 		vmovapd	%ymm0, -2368(%rdx)
GAS LISTING /tmp/cce9VX6C.s 			page 16


 468      C0F6FFFF 
 469 097d 4839CA   		cmpq	%rcx, %rdx
 470 0980 0F856AFD 		jne	.L17
 470      FFFF
 471 0986 488D8424 		leaq	1216(%rsp), %rax
 471      C0040000 
 472 098e 4C8D8C24 		leaq	1600(%rsp), %r9
 472      40060000 
 473 0996 C5FD282D 		vmovapd	.LC27(%rip), %ymm5
 473      00000000 
 474 099e 4C89C2   		movq	%r8, %rdx
 475              		.p2align 4,,10
 476 09a1 0F1F8000 		.p2align 3
 476      000000
 477              	.L19:
 478 09a8 C5FD283D 		vmovapd	.LC29(%rip), %ymm7
 478      00000000 
 479 09b0 4883C040 		addq	$64, %rax
 480 09b4 4883C220 		addq	$32, %rdx
 481 09b8 C5C55940 		vmulpd	-64(%rax), %ymm7, %ymm0
 481      C0
 482 09bd C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 482      00000000 
 483 09c5 C5C55988 		vmulpd	1088(%rax), %ymm7, %ymm1
 483      40040000 
 484 09cd C5FD283D 		vmovapd	.LC29(%rip), %ymm7
 484      00000000 
 485 09d5 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 486 09d9 C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 486      A0000000 
 487 09e1 C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 487      400A0000 
 488 09e9 C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 488      C0080000 
 489 09f1 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 489      E0
 490 09f6 C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 490      00000000 
 491 09fe C5C55988 		vmulpd	1120(%rax), %ymm7, %ymm1
 491      60040000 
 492 0a06 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 493 0a0a C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 493      A0000000 
 494 0a12 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 494      600A0000 
 495 0a1a C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 495      E0080000 
 496 0a22 C5D55982 		vmulpd	160(%rdx), %ymm5, %ymm0
 496      A0000000 
 497 0a2a C5FD5882 		vaddpd	-224(%rdx), %ymm0, %ymm0
 497      20FFFFFF 
 498 0a32 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 498      E0
 499 0a37 4C39C8   		cmpq	%r9, %rax
 500 0a3a 0F8568FF 		jne	.L19
 500      FFFF
 501 0a40 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
GAS LISTING /tmp/cce9VX6C.s 			page 17


 502 0a44 C57D2835 		vmovapd	.LC22(%rip), %ymm14
 502      00000000 
 503 0a4c 4889F8   		movq	%rdi, %rax
 504 0a4f C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 504      C0
 505 0a54 4889F2   		movq	%rsi, %rdx
 506 0a57 660F1F84 		.p2align 4,,10
 506      00000000 
 506      00
 507              		.p2align 3
 508              	.L21:
 509 0a60 C5FD2802 		vmovapd	(%rdx), %ymm0
 510 0a64 4883C240 		addq	$64, %rdx
 511 0a68 4883C020 		addq	$32, %rax
 512 0a6c C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 512      00000000 
 513 0a74 C5FD2982 		vmovapd	%ymm0, -864(%rdx)
 513      A0FCFFFF 
 514 0a7c C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 514      E0
 515 0a81 C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 515      00000000 
 516 0a89 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 516      C008
 517 0a8f C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 517      00000000 
 518 0a97 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 518      C808
 519 0a9d C5FD118C 		vmovupd	%ymm1, 256(%rsp)
 519      24000100 
 519      00
 520 0aa6 C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 520      00000000 
 521 0aae C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 521      00000000 
 522 0ab6 C5FB10B4 		vmovsd	256(%rsp), %xmm6
 522      24000100 
 522      00
 523 0abf C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 524 0ac3 C57B1094 		vmovsd	272(%rsp), %xmm10
 524      24100100 
 524      00
 525 0acc C4E1FB2C 		vcvttsd2siq	%xmm6, %rbx
 525      DE
 526 0ad1 C57B108C 		vmovsd	264(%rsp), %xmm9
 526      24080100 
 526      00
 527 0ada C57B109C 		vmovsd	280(%rsp), %xmm11
 527      24180100 
 527      00
 528 0ae3 C441FB2C 		vcvttsd2siq	%xmm9, %r10
 528      D1
 529 0ae8 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 530 0aec C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 531 0af0 48899C24 		movq	%rbx, 128(%rsp)
 531      80000000 
 532 0af8 C4C1FB2C 		vcvttsd2siq	%xmm10, %rbx
GAS LISTING /tmp/cce9VX6C.s 			page 18


 532      DA
 533 0afd C5FA7EAC 		vmovq	128(%rsp), %xmm5
 533      24800000 
 533      00
 534 0b06 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 535 0b0a C4C3D122 		vpinsrq	$1, %r10, %xmm5, %xmm4
 535      E201
 536 0b10 C441FB2C 		vcvttsd2siq	%xmm11, %r10
 536      D3
 537 0b15 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 537      00000000 
 538 0b1d C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 539 0b21 48899C24 		movq	%rbx, 128(%rsp)
 539      80000000 
 540 0b29 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 540      00000000 
 541 0b31 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 541      24800000 
 541      00
 542 0b3a C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 542      00000000 
 543 0b42 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 543      00000000 
 544 0b4a C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 545 0b4e C4C3D122 		vpinsrq	$1, %r10, %xmm5, %xmm5
 545      EA01
 546 0b54 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 546      00000000 
 547 0b5c C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 547      00000000 
 548 0b64 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 549 0b68 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 549      D1
 550 0b6d C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 550      00000000 
 551 0b75 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 552 0b79 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 552      00000000 
 553 0b81 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 554 0b85 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 554      CA
 555 0b8a C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 555      00000000 
 556 0b92 C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 556      00000000 
 557 0b9a C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 557      F2
 558 0b9f C57D5915 		vmulpd	.LC19(%rip), %ymm0, %ymm10
 558      00000000 
 559 0ba7 C52D5815 		vaddpd	.LC20(%rip), %ymm10, %ymm10
 559      00000000 
 560 0baf C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 561 0bb3 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 562 0bb7 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 563 0bbb C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 563      00000000 
 564 0bc3 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
GAS LISTING /tmp/cce9VX6C.s 			page 19


 565 0bc7 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 565      C9
 566 0bcc C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 566      D201
 567 0bd2 C58D5CC0 		vsubpd	%ymm0, %ymm14, %ymm0
 568 0bd6 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 569 0bda C4C12973 		vpsllq	$1, %xmm10, %xmm10
 569      F201
 570 0be0 C529DB15 		vpand	.LC25(%rip), %xmm10, %xmm10
 570      00000000 
 571 0be8 C4625937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm9
 571      0D000000 
 571      00
 572 0bf1 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 573 0bf5 C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 573      00000000 
 574 0bfd C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 574      00000000 
 575 0c05 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 575      15000000 
 575      00
 576 0c0e C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 576      C7
 577 0c13 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 577      00000000 
 578 0c1b C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 578      CF
 579 0c20 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 579      00000000 
 580 0c28 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 580      00000000 
 581 0c30 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 581      C801
 582 0c36 C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 582      05000000 
 582      00
 583 0c3f C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 583      C801
 584 0c45 C5F928C2 		vmovapd	%xmm2, %xmm0
 585 0c49 C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 585      00000000 
 586 0c51 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 586      00000000 
 587 0c59 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 587      01
 588 0c5e C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 588      00000000 
 589 0c66 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 589      3E
 590 0c6b C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 590      05000000 
 590      00
 591 0c74 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 591      00000000 
 592 0c7c C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 592      C201
 593 0c82 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
GAS LISTING /tmp/cce9VX6C.s 			page 20


 594 0c86 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 594      D800
 595 0c8c C4C34D4B 		vblendvpd	%ymm0, %ymm14, %ymm6, %ymm0
 595      C600
 596 0c92 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 596      C310
 597 0c98 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 597      00000000 
 598 0ca0 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 598      00000000 
 599 0ca8 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 599      3E
 600 0cad C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 600      CA01
 601 0cb3 C5FD2890 		vmovapd	352(%rax), %ymm2
 601      60010000 
 602 0cbb C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 602      C0
 603 0cc0 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 604 0cc4 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 604      A0
 605 0cc9 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 606 0ccd C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 606      00000000 
 607 0cd5 C58D5CDB 		vsubpd	%ymm3, %ymm14, %ymm3
 608 0cd9 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 609 0cdd C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 610 0ce1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 611 0ce5 C5FD2982 		vmovapd	%ymm0, -832(%rdx)
 611      C0FCFFFF 
 612 0ced 4839D1   		cmpq	%rdx, %rcx
 613 0cf0 0F856AFD 		jne	.L21
 613      FFFF
 614 0cf6 488D8424 		leaq	1216(%rsp), %rax
 614      C0040000 
 615 0cfe C5FD282D 		vmovapd	.LC27(%rip), %ymm5
 615      00000000 
 616 0d06 4C89C2   		movq	%r8, %rdx
 617 0d09 0F1F8000 		.p2align 4,,10
 617      000000
 618              		.p2align 3
 619              	.L23:
 620 0d10 C5FD283D 		vmovapd	.LC31(%rip), %ymm7
 620      00000000 
 621 0d18 4883C040 		addq	$64, %rax
 622 0d1c 4883C220 		addq	$32, %rdx
 623 0d20 C5C55988 		vmulpd	1472(%rax), %ymm7, %ymm1
 623      C0050000 
 624 0d28 C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 624      00000000 
 625 0d30 C5C55940 		vmulpd	-64(%rax), %ymm7, %ymm0
 625      C0
 626 0d35 C5FD283D 		vmovapd	.LC27(%rip), %ymm7
 626      00000000 
 627 0d3d C5C55990 		vmulpd	1088(%rax), %ymm7, %ymm2
 627      40040000 
 628 0d45 C5FD283D 		vmovapd	.LC31(%rip), %ymm7
GAS LISTING /tmp/cce9VX6C.s 			page 21


 628      00000000 
 629 0d4d C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 630 0d51 C5D55990 		vmulpd	1120(%rax), %ymm5, %ymm2
 630      60040000 
 631 0d59 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 632 0d5d C5C55988 		vmulpd	1504(%rax), %ymm7, %ymm1
 632      E0050000 
 633 0d65 C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 633      00000000 
 634 0d6d C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 634      A0000000 
 635 0d75 C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 635      400A0000 
 636 0d7d C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 636      C0080000 
 637 0d85 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 637      E0
 638 0d8a C5FD283D 		vmovapd	.LC33(%rip), %ymm7
 638      00000000 
 639 0d92 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 640 0d96 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 641 0d9a C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 641      A0000000 
 642 0da2 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 642      600A0000 
 643 0daa C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 643      E0080000 
 644 0db2 C5C55982 		vmulpd	160(%rdx), %ymm7, %ymm0
 644      A0000000 
 645 0dba C5FD5882 		vaddpd	-224(%rdx), %ymm0, %ymm0
 645      20FFFFFF 
 646 0dc2 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 646      E0
 647 0dc7 4C39C8   		cmpq	%r9, %rax
 648 0dca 0F8540FF 		jne	.L23
 648      FFFF
 649 0dd0 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 650 0dd4 C57D283D 		vmovapd	.LC22(%rip), %ymm15
 650      00000000 
 651 0ddc 4889F8   		movq	%rdi, %rax
 652 0ddf C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 652      C0
 653 0de4 4889F2   		movq	%rsi, %rdx
 654 0de7 660F1F84 		.p2align 4,,10
 654      00000000 
 654      00
 655              		.p2align 3
 656              	.L25:
 657 0df0 C5FD2802 		vmovapd	(%rdx), %ymm0
 658 0df4 4883C240 		addq	$64, %rdx
 659 0df8 4883C020 		addq	$32, %rax
 660 0dfc C5FD2825 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 660      00000000 
 661 0e04 C5FD2982 		vmovapd	%ymm0, -480(%rdx)
 661      20FEFFFF 
 662 0e0c C5DD5450 		vandpd	-32(%rax), %ymm4, %ymm2
 662      E0
GAS LISTING /tmp/cce9VX6C.s 			page 22


 663 0e11 C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 663      00000000 
 664 0e19 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 664      C008
 665 0e1f C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 665      C808
 666 0e25 C5FD118C 		vmovupd	%ymm1, 288(%rsp)
 666      24200100 
 666      00
 667 0e2e C57B10B4 		vmovsd	288(%rsp), %xmm14
 667      24200100 
 667      00
 668 0e37 C5FB108C 		vmovsd	296(%rsp), %xmm1
 668      24280100 
 668      00
 669 0e40 C4C1FB2C 		vcvttsd2siq	%xmm14, %rbx
 669      DE
 670 0e45 C461FB2C 		vcvttsd2siq	%xmm1, %r10
 670      D1
 671 0e4a C5FB109C 		vmovsd	304(%rsp), %xmm3
 671      24300100 
 671      00
 672 0e53 C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 672      00000000 
 673 0e5b 48899C24 		movq	%rbx, 128(%rsp)
 673      80000000 
 674 0e63 C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 674      DB
 675 0e68 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 675      24800000 
 675      00
 676 0e71 C4C3D122 		vpinsrq	$1, %r10, %xmm5, %xmm4
 676      E201
 677 0e77 C5FB10AC 		vmovsd	312(%rsp), %xmm5
 677      24380100 
 677      00
 678 0e80 C461FB2C 		vcvttsd2siq	%xmm5, %r10
 678      D5
 679 0e85 48899C24 		movq	%rbx, 128(%rsp)
 679      80000000 
 680 0e8d C5FA7E9C 		vmovq	128(%rsp), %xmm3
 680      24800000 
 680      00
 681 0e96 C4C3E122 		vpinsrq	$1, %r10, %xmm3, %xmm5
 681      EA01
 682 0e9c C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 682      00000000 
 683 0ea4 C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 683      00000000 
 684 0eac C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 685 0eb0 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 686 0eb4 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 687 0eb8 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 688 0ebc C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 688      00000000 
 689 0ec4 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 690 0ec8 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
GAS LISTING /tmp/cce9VX6C.s 			page 23


 690      00000000 
 691 0ed0 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 691      00000000 
 692 0ed8 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 692      00000000 
 693 0ee0 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 694 0ee4 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 694      00000000 
 695 0eec C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 695      00000000 
 696 0ef4 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 697 0ef8 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 697      D1
 698 0efd C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 698      00000000 
 699 0f05 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 700 0f09 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 700      00000000 
 701 0f11 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 702 0f15 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 702      CA
 703 0f1a C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 703      00000000 
 704 0f22 C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 704      00000000 
 705 0f2a C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 705      F2
 706 0f2f C57D5915 		vmulpd	.LC19(%rip), %ymm0, %ymm10
 706      00000000 
 707 0f37 C52D5815 		vaddpd	.LC20(%rip), %ymm10, %ymm10
 707      00000000 
 708 0f3f C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 709 0f43 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 710 0f47 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 711 0f4b C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 711      00000000 
 712 0f53 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 713 0f57 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 713      C9
 714 0f5c C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 714      D201
 715 0f62 C5855CC0 		vsubpd	%ymm0, %ymm15, %ymm0
 716 0f66 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 717 0f6a C4C12973 		vpsllq	$1, %xmm10, %xmm10
 717      F201
 718 0f70 C529DB15 		vpand	.LC25(%rip), %xmm10, %xmm10
 718      00000000 
 719 0f78 C4625937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm9
 719      0D000000 
 719      00
 720 0f81 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 721 0f85 C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 721      00000000 
 722 0f8d C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 722      00000000 
 723 0f95 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 723      15000000 
GAS LISTING /tmp/cce9VX6C.s 			page 24


 723      00
 724 0f9e C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 724      C7
 725 0fa3 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 725      00000000 
 726 0fab C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 726      CF
 727 0fb0 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 727      00000000 
 728 0fb8 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 728      00000000 
 729 0fc0 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 729      C801
 730 0fc6 C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 730      05000000 
 730      00
 731 0fcf C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 731      C801
 732 0fd5 C5F928C2 		vmovapd	%xmm2, %xmm0
 733 0fd9 C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 733      00000000 
 734 0fe1 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 734      00000000 
 735 0fe9 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 735      01
 736 0fee C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 736      00000000 
 737 0ff6 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 737      3E
 738 0ffb C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 738      05000000 
 738      00
 739 1004 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 739      00000000 
 740 100c C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 740      C201
 741 1012 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 742 1016 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 742      D800
 743 101c C4C34D4B 		vblendvpd	%ymm0, %ymm15, %ymm6, %ymm0
 743      C700
 744 1022 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 744      C310
 745 1028 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 745      00000000 
 746 1030 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 746      00000000 
 747 1038 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 747      3E
 748 103d C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 748      CA01
 749 1043 C5FD2890 		vmovapd	352(%rax), %ymm2
 749      60010000 
 750 104b C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 750      C0
 751 1050 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 752 1054 C5FD2842 		vmovapd	-96(%rdx), %ymm0
GAS LISTING /tmp/cce9VX6C.s 			page 25


 752      A0
 753 1059 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 754 105d C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 754      00000000 
 755 1065 C5855CDB 		vsubpd	%ymm3, %ymm15, %ymm3
 756 1069 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 757 106d C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 758 1071 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 759 1075 C5FD2982 		vmovapd	%ymm0, -448(%rdx)
 759      40FEFFFF 
 760 107d 4839D1   		cmpq	%rdx, %rcx
 761 1080 0F856AFD 		jne	.L25
 761      FFFF
 762 1086 488D8424 		leaq	1216(%rsp), %rax
 762      C0040000 
 763 108e C5FD282D 		vmovapd	.LC35(%rip), %ymm5
 763      00000000 
 764 1096 4C89C2   		movq	%r8, %rdx
 765 1099 C5FD2825 		vmovapd	.LC34(%rip), %ymm4
 765      00000000 
 766              		.p2align 4,,10
 767 10a1 0F1F8000 		.p2align 3
 767      000000
 768              	.L27:
 769 10a8 C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 769      00000000 
 770 10b0 4883C040 		addq	$64, %rax
 771 10b4 4883C220 		addq	$32, %rdx
 772 10b8 C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 772      00000000 
 773 10c0 C5C55988 		vmulpd	1856(%rax), %ymm7, %ymm1
 773      40070000 
 774 10c8 C5FD283D 		vmovapd	.LC36(%rip), %ymm7
 774      00000000 
 775 10d0 C5E55998 		vmulpd	1088(%rax), %ymm3, %ymm3
 775      40040000 
 776 10d8 C5C55940 		vmulpd	-64(%rax), %ymm7, %ymm0
 776      C0
 777 10dd C5D55990 		vmulpd	1472(%rax), %ymm5, %ymm2
 777      C0050000 
 778 10e5 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 779 10e9 C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 779      00000000 
 780 10f1 C5E55998 		vmulpd	1120(%rax), %ymm3, %ymm3
 780      60040000 
 781 10f9 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 782 10fd C5D55990 		vmulpd	1504(%rax), %ymm5, %ymm2
 782      E0050000 
 783 1105 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 784 1109 C5DD5988 		vmulpd	1888(%rax), %ymm4, %ymm1
 784      60070000 
 785 1111 C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 785      A0000000 
 786 1119 C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 786      400A0000 
 787 1121 C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 787      C0080000 
GAS LISTING /tmp/cce9VX6C.s 			page 26


 788 1129 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 788      E0
 789 112e C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 790 1132 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 791 1136 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 792 113a C5FD5982 		vmulpd	160(%rdx), %ymm0, %ymm0
 792      A0000000 
 793 1142 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 793      600A0000 
 794 114a C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 794      E0080000 
 795 1152 C5FD2882 		vmovapd	160(%rdx), %ymm0
 795      A0000000 
 796 115a C5FD5882 		vaddpd	-224(%rdx), %ymm0, %ymm0
 796      20FFFFFF 
 797 1162 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 797      E0
 798 1167 4C39C8   		cmpq	%r9, %rax
 799 116a 0F8538FF 		jne	.L27
 799      FFFF
 800 1170 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 801 1174 C57D2825 		vmovapd	.LC22(%rip), %ymm12
 801      00000000 
 802 117c 4889F8   		movq	%rdi, %rax
 803 117f C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 803      C0
 804 1184 4889F2   		movq	%rsi, %rdx
 805 1187 660F1F84 		.p2align 4,,10
 805      00000000 
 805      00
 806              		.p2align 3
 807              	.L29:
 808 1190 C5FD2802 		vmovapd	(%rdx), %ymm0
 809 1194 4883C240 		addq	$64, %rdx
 810 1198 4883C020 		addq	$32, %rax
 811 119c C5FD2825 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 811      00000000 
 812 11a4 C5FD2982 		vmovapd	%ymm0, -1632(%rdx)
 812      A0F9FFFF 
 813 11ac C5DD5450 		vandpd	-32(%rax), %ymm4, %ymm2
 813      E0
 814 11b1 C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 814      00000000 
 815 11b9 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 815      C008
 816 11bf C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 816      C808
 817 11c5 C5FD118C 		vmovupd	%ymm1, 320(%rsp)
 817      24400100 
 817      00
 818 11ce C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 818      00000000 
 819 11d6 C57B108C 		vmovsd	320(%rsp), %xmm9
 819      24400100 
 819      00
 820 11df C57B1094 		vmovsd	328(%rsp), %xmm10
 820      24480100 
GAS LISTING /tmp/cce9VX6C.s 			page 27


 820      00
 821 11e8 C4C1FB2C 		vcvttsd2siq	%xmm9, %rbx
 821      D9
 822 11ed C441FB2C 		vcvttsd2siq	%xmm10, %r8
 822      C2
 823 11f2 C57B109C 		vmovsd	336(%rsp), %xmm11
 823      24500100 
 823      00
 824 11fb C57B10AC 		vmovsd	344(%rsp), %xmm13
 824      24580100 
 824      00
 825 1204 48899C24 		movq	%rbx, 128(%rsp)
 825      80000000 
 826 120c C4C1FB2C 		vcvttsd2siq	%xmm11, %rbx
 826      DB
 827 1211 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 827      24800000 
 827      00
 828 121a C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm4
 828      E001
 829 1220 C441FB2C 		vcvttsd2siq	%xmm13, %r8
 829      C5
 830 1225 48899C24 		movq	%rbx, 128(%rsp)
 830      80000000 
 831 122d C5FA7E9C 		vmovq	128(%rsp), %xmm3
 831      24800000 
 831      00
 832 1236 C4C3E122 		vpinsrq	$1, %r8, %xmm3, %xmm5
 832      E801
 833 123c C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 833      00000000 
 834 1244 C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 834      00000000 
 835 124c C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 836 1250 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 837 1254 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 838 1258 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 839 125c C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 839      00000000 
 840 1264 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 841 1268 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 841      00000000 
 842 1270 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 842      00000000 
 843 1278 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 843      00000000 
 844 1280 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 845 1284 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 845      00000000 
 846 128c C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 846      00000000 
 847 1294 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 848 1298 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 848      D1
 849 129d C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 849      00000000 
 850 12a5 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
GAS LISTING /tmp/cce9VX6C.s 			page 28


 851 12a9 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 851      00000000 
 852 12b1 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 853 12b5 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 853      CA
 854 12ba C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 854      00000000 
 855 12c2 C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 855      00000000 
 856 12ca C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 856      F2
 857 12cf C57D5915 		vmulpd	.LC19(%rip), %ymm0, %ymm10
 857      00000000 
 858 12d7 C52D5815 		vaddpd	.LC20(%rip), %ymm10, %ymm10
 858      00000000 
 859 12df C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 860 12e3 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 861 12e7 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 862 12eb C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 862      00000000 
 863 12f3 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 864 12f7 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 864      C9
 865 12fc C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 865      D201
 866 1302 C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 867 1306 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 868 130a C4C12973 		vpsllq	$1, %xmm10, %xmm10
 868      F201
 869 1310 C529DB15 		vpand	.LC25(%rip), %xmm10, %xmm10
 869      00000000 
 870 1318 C4625937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm9
 870      0D000000 
 870      00
 871 1321 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 872 1325 C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 872      00000000 
 873 132d C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 873      00000000 
 874 1335 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 874      15000000 
 874      00
 875 133e C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 875      C7
 876 1343 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 876      00000000 
 877 134b C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 877      CF
 878 1350 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 878      00000000 
 879 1358 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 879      00000000 
 880 1360 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 880      C801
 881 1366 C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 881      05000000 
 881      00
GAS LISTING /tmp/cce9VX6C.s 			page 29


 882 136f C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 882      C801
 883 1375 C5F928C2 		vmovapd	%xmm2, %xmm0
 884 1379 C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 884      00000000 
 885 1381 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 885      00000000 
 886 1389 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 886      01
 887 138e C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 887      00000000 
 888 1396 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 888      3E
 889 139b C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 889      05000000 
 889      00
 890 13a4 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 890      00000000 
 891 13ac C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 891      C201
 892 13b2 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 893 13b6 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 893      D800
 894 13bc C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 894      C400
 895 13c2 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 895      C310
 896 13c8 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 896      00000000 
 897 13d0 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 897      00000000 
 898 13d8 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 898      3E
 899 13dd C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 899      CA01
 900 13e3 C5FD2890 		vmovapd	352(%rax), %ymm2
 900      60010000 
 901 13eb C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 901      C0
 902 13f0 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 903 13f4 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 903      A0
 904 13f9 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 905 13fd C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 905      00000000 
 906 1405 C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 907 1409 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 908 140d C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 909 1411 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 910 1415 C5FD2982 		vmovapd	%ymm0, -1600(%rdx)
 910      C0F9FFFF 
 911 141d 4839D1   		cmpq	%rdx, %rcx
 912 1420 0F856AFD 		jne	.L29
 912      FFFF
 913 1426 488D9424 		leaq	1216(%rsp), %rdx
 913      C0040000 
 914 142e 41B80600 		movl	$6, %r8d
GAS LISTING /tmp/cce9VX6C.s 			page 30


 914      0000
 915 1434 4889D0   		movq	%rdx, %rax
 916 1437 660F1F84 		.p2align 4,,10
 916      00000000 
 916      00
 917              		.p2align 3
 918              	.L31:
 919 1440 C5FD282D 		vmovapd	.LC39(%rip), %ymm5
 919      00000000 
 920 1448 4883C040 		addq	$64, %rax
 921 144c 4883C220 		addq	$32, %rdx
 922 1450 C5FD2825 		vmovapd	.LC41(%rip), %ymm4
 922      00000000 
 923 1458 C5D55990 		vmulpd	1856(%rax), %ymm5, %ymm2
 923      40070000 
 924 1460 C5FD282D 		vmovapd	.LC42(%rip), %ymm5
 924      00000000 
 925 1468 C5DD5940 		vmulpd	-64(%rax), %ymm4, %ymm0
 925      C0
 926 146d C5FD283D 		vmovapd	.LC38(%rip), %ymm7
 926      00000000 
 927 1475 C5D559A0 		vmulpd	1088(%rax), %ymm5, %ymm4
 927      40040000 
 928 147d C5C55988 		vmulpd	704(%rax), %ymm7, %ymm1
 928      C0020000 
 929 1485 C5FD283D 		vmovapd	.LC40(%rip), %ymm7
 929      00000000 
 930 148d C5C55998 		vmulpd	1472(%rax), %ymm7, %ymm3
 930      C0050000 
 931 1495 C5FD283D 		vmovapd	.LC39(%rip), %ymm7
 931      00000000 
 932 149d C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 933 14a1 C5FD2825 		vmovapd	.LC41(%rip), %ymm4
 933      00000000 
 934 14a9 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 935 14ad C5FD281D 		vmovapd	.LC38(%rip), %ymm3
 935      00000000 
 936 14b5 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 937 14b9 C5C55990 		vmulpd	1888(%rax), %ymm7, %ymm2
 937      60070000 
 938 14c1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 939 14c5 C5E55988 		vmulpd	736(%rax), %ymm3, %ymm1
 939      E0020000 
 940 14cd C5FD281D 		vmovapd	.LC40(%rip), %ymm3
 940      00000000 
 941 14d5 C5E55998 		vmulpd	1504(%rax), %ymm3, %ymm3
 941      E0050000 
 942 14dd C5FD5982 		vmulpd	3424(%rdx), %ymm0, %ymm0
 942      600D0000 
 943 14e5 C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 943      400A0000 
 944 14ed C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 944      C0080000 
 945 14f5 C5DD5940 		vmulpd	-32(%rax), %ymm4, %ymm0
 945      E0
 946 14fa C5D559A0 		vmulpd	1120(%rax), %ymm5, %ymm4
 946      60040000 
GAS LISTING /tmp/cce9VX6C.s 			page 31


 947 1502 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 948 1506 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 949 150a C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 950 150e C5FD2815 		vmovapd	.LC43(%rip), %ymm2
 950      00000000 
 951 1516 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 952 151a C5FD5982 		vmulpd	3424(%rdx), %ymm0, %ymm0
 952      600D0000 
 953 1522 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 953      600A0000 
 954 152a C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 954      E0080000 
 955 1532 C5ED5982 		vmulpd	3424(%rdx), %ymm2, %ymm0
 955      600D0000 
 956 153a C5FD5882 		vaddpd	3040(%rdx), %ymm0, %ymm0
 956      E00B0000 
 957 1542 C5FD2982 		vmovapd	%ymm0, 3232(%rdx)
 957      A00C0000 
 958 154a 4183E801 		subl	$1, %r8d
 959 154e 0F85ECFE 		jne	.L31
 959      FFFF
 960 1554 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 961 1558 C57D282D 		vmovapd	.LC22(%rip), %ymm13
 961      00000000 
 962 1560 4889F0   		movq	%rsi, %rax
 963 1563 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 963      C0
 964 1568 0F1F8400 		.p2align 4,,10
 964      00000000 
 965              		.p2align 3
 966              	.L33:
 967 1570 C5FD2800 		vmovapd	(%rax), %ymm0
 968 1574 4883C040 		addq	$64, %rax
 969 1578 4883C720 		addq	$32, %rdi
 970 157c C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 970      00000000 
 971 1584 C5FD2980 		vmovapd	%ymm0, -2016(%rax)
 971      20F8FFFF 
 972 158c C5E55457 		vandpd	-32(%rdi), %ymm3, %ymm2
 972      E0
 973 1591 C5ED5905 		vmulpd	.LC5(%rip), %ymm2, %ymm0
 973      00000000 
 974 1599 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 974      C008
 975 159f C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 975      C808
 976 15a5 C5FD118C 		vmovupd	%ymm1, 352(%rsp)
 976      24600100 
 976      00
 977 15ae C5FB109C 		vmovsd	360(%rsp), %xmm3
 977      24680100 
 977      00
 978 15b7 C5FB108C 		vmovsd	352(%rsp), %xmm1
 978      24600100 
 978      00
 979 15c0 C4E1FB2C 		vcvttsd2siq	%xmm3, %rdx
 979      D3
GAS LISTING /tmp/cce9VX6C.s 			page 32


 980 15c5 C5FD591D 		vmulpd	.LC6(%rip), %ymm0, %ymm3
 980      00000000 
 981 15cd C4E1FB2C 		vcvttsd2siq	%xmm1, %rbx
 981      D9
 982 15d2 C5FD590D 		vmulpd	.LC7(%rip), %ymm0, %ymm1
 982      00000000 
 983 15da C5FD5905 		vmulpd	.LC8(%rip), %ymm0, %ymm0
 983      00000000 
 984 15e2 C5FB10B4 		vmovsd	376(%rsp), %xmm6
 984      24780100 
 984      00
 985 15eb C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 986 15ef C5FB10AC 		vmovsd	368(%rsp), %xmm5
 986      24700100 
 986      00
 987 15f8 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 988 15fc 48899C24 		movq	%rbx, 128(%rsp)
 988      80000000 
 989 1604 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 989      24800000 
 989      00
 990 160d C4E3D922 		vpinsrq	$1, %rdx, %xmm4, %xmm4
 990      E201
 991 1613 C4E1FB2C 		vcvttsd2siq	%xmm6, %rdx
 991      D6
 992 1618 C4E1FB2C 		vcvttsd2siq	%xmm5, %rbx
 992      DD
 993 161d C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 994 1621 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 995 1625 48899C24 		movq	%rbx, 128(%rsp)
 995      80000000 
 996 162d C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 996      00000000 
 997 1635 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 997      24800000 
 997      00
 998 163e C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 999 1642 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 999      00000000 
 1000 164a C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 1000      00000000 
 1001 1652 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 1001      00000000 
 1002 165a C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 1003 165e C4E3D122 		vpinsrq	$1, %rdx, %xmm5, %xmm5
 1003      EA01
 1004 1664 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 1004      00000000 
 1005 166c C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 1005      00000000 
 1006 1674 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 1007 1678 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 1007      D1
 1008 167d C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 1008      00000000 
 1009 1685 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 1010 1689 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
GAS LISTING /tmp/cce9VX6C.s 			page 33


 1010      00000000 
 1011 1691 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1012 1695 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1012      CA
 1013 169a C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 1013      00000000 
 1014 16a2 C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 1014      00000000 
 1015 16aa C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 1015      F2
 1016 16af C57D5915 		vmulpd	.LC19(%rip), %ymm0, %ymm10
 1016      00000000 
 1017 16b7 C52D5815 		vaddpd	.LC20(%rip), %ymm10, %ymm10
 1017      00000000 
 1018 16bf C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1019 16c3 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 1020 16c7 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 1021 16cb C5FD5905 		vmulpd	.LC21(%rip), %ymm0, %ymm0
 1021      00000000 
 1022 16d3 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 1023 16d7 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 1023      C9
 1024 16dc C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 1024      D201
 1025 16e2 C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 1026 16e6 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 1027 16ea C4C12973 		vpsllq	$1, %xmm10, %xmm10
 1027      F201
 1028 16f0 C529DB15 		vpand	.LC25(%rip), %xmm10, %xmm10
 1028      00000000 
 1029 16f8 C4625937 		vpcmpgtq	.LC24(%rip), %xmm4, %xmm9
 1029      0D000000 
 1029      00
 1030 1701 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 1031 1705 C5D1DB05 		vpand	.LC23(%rip), %xmm5, %xmm0
 1031      00000000 
 1032 170d C5D9DB0D 		vpand	.LC23(%rip), %xmm4, %xmm1
 1032      00000000 
 1033 1715 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 1033      15000000 
 1033      00
 1034 171e C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 1034      C7
 1035 1723 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1035      00000000 
 1036 172b C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 1036      CF
 1037 1730 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1037      00000000 
 1038 1738 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 1038      00000000 
 1039 1740 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 1039      C801
 1040 1746 C4E25137 		vpcmpgtq	.LC24(%rip), %xmm5, %xmm0
 1040      05000000 
 1040      00
 1041 174f C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
GAS LISTING /tmp/cce9VX6C.s 			page 34


 1041      C801
 1042 1755 C5F928C2 		vmovapd	%xmm2, %xmm0
 1043 1759 C5D1D415 		vpaddq	.LC23(%rip), %xmm5, %xmm2
 1043      00000000 
 1044 1761 C5E9DB15 		vpand	.LC26(%rip), %xmm2, %xmm2
 1044      00000000 
 1045 1769 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1045      01
 1046 176e C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 1046      00000000 
 1047 1776 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 1047      3E
 1048 177b C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 1048      05000000 
 1048      00
 1049 1784 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1049      00000000 
 1050 178c C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 1050      C201
 1051 1792 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 1052 1796 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 1052      D800
 1053 179c C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 1053      C500
 1054 17a2 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 1054      C310
 1055 17a8 C5D9D40D 		vpaddq	.LC23(%rip), %xmm4, %xmm1
 1055      00000000 
 1056 17b0 C5F1DB0D 		vpand	.LC26(%rip), %xmm1, %xmm1
 1056      00000000 
 1057 17b8 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 1057      3E
 1058 17bd C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 1058      CA01
 1059 17c3 C5FD2897 		vmovapd	352(%rdi), %ymm2
 1059      60010000 
 1060 17cb C5ED5950 		vmulpd	-64(%rax), %ymm2, %ymm2
 1060      C0
 1061 17d0 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 1062 17d4 C5FD2840 		vmovapd	-96(%rax), %ymm0
 1062      A0
 1063 17d9 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1064 17dd C5F5590D 		vmulpd	.LC27(%rip), %ymm1, %ymm1
 1064      00000000 
 1065 17e5 C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 1066 17e9 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 1067 17ed C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 1068 17f1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1069 17f5 C5FD2980 		vmovapd	%ymm0, -1984(%rax)
 1069      40F8FFFF 
 1070 17fd 4839C1   		cmpq	%rax, %rcx
 1071 1800 0F856AFD 		jne	.L33
 1071      FFFF
 1072 1806 488D8424 		leaq	1216(%rsp), %rax
 1072      C0040000 
 1073 180e 488DBC24 		leaq	1600(%rsp), %rdi
 1073      40060000 
GAS LISTING /tmp/cce9VX6C.s 			page 35


 1074 1816 BE010000 		movl	$1, %esi
 1074      00
 1075 181b 4889C1   		movq	%rax, %rcx
 1076 181e 6690     		.p2align 4,,10
 1077              		.p2align 3
 1078              	.L37:
 1079 1820 8D56FF   		leal	-1(%rsi), %edx
 1080 1823 4889F8   		movq	%rdi, %rax
 1081 1826 662E0F1F 		.p2align 4,,10
 1081      84000000 
 1081      0000
 1082              		.p2align 3
 1083              	.L35:
 1084 1830 C5FD282D 		vmovapd	.LC44(%rip), %ymm5
 1084      00000000 
 1085 1838 83C201   		addl	$1, %edx
 1086 183b 4883C020 		addq	$32, %rax
 1087 183f C5FD283D 		vmovapd	.LC46(%rip), %ymm7
 1087      00000000 
 1088 1847 C5D55948 		vmulpd	-32(%rax), %ymm5, %ymm1
 1088      E0
 1089 184c C5FD282D 		vmovapd	.LC47(%rip), %ymm5
 1089      00000000 
 1090 1854 C5C55980 		vmulpd	1120(%rax), %ymm7, %ymm0
 1090      60040000 
 1091 185c C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1091      00000000 
 1092 1864 C5D55998 		vmulpd	736(%rax), %ymm5, %ymm3
 1092      E0020000 
 1093 186c C5FD2825 		vmovapd	.LC48(%rip), %ymm4
 1093      00000000 
 1094 1874 C5CD5990 		vmulpd	1504(%rax), %ymm6, %ymm2
 1094      E0050000 
 1095 187c C5FD282D 		vmovapd	.LC51(%rip), %ymm5
 1095      00000000 
 1096 1884 C5FD283D 		vmovapd	.LC50(%rip), %ymm7
 1096      00000000 
 1097 188c C5FD2835 		vmovapd	.LC49(%rip), %ymm6
 1097      00000000 
 1098 1894 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 1099 1898 C5C55998 		vmulpd	1504(%rax), %ymm7, %ymm3
 1099      E0050000 
 1100 18a0 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1101 18a4 C5CD5990 		vmulpd	352(%rax), %ymm6, %ymm2
 1101      60010000 
 1102 18ac C5FD2835 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 1102      00000000 
 1103 18b4 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1104 18b8 C5DD5948 		vmulpd	-32(%rax), %ymm4, %ymm1
 1104      E0
 1105 18bd C5FD2825 		vmovapd	.LC52(%rip), %ymm4
 1105      00000000 
 1106 18c5 C5DD59A0 		vmulpd	736(%rax), %ymm4, %ymm4
 1106      E0020000 
 1107 18cd C5FD5981 		vmulpd	3456(%rcx), %ymm0, %ymm0
 1107      800D0000 
 1108 18d5 C5FD5880 		vaddpd	2272(%rax), %ymm0, %ymm0
GAS LISTING /tmp/cce9VX6C.s 			page 36


 1108      E0080000 
 1109 18dd C5FD2980 		vmovapd	%ymm0, 1888(%rax)
 1109      60070000 
 1110 18e5 C5D55980 		vmulpd	1120(%rax), %ymm5, %ymm0
 1110      60040000 
 1111 18ed C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 1112 18f1 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1113 18f5 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1114 18f9 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1115 18fd C5CD5488 		vandpd	1888(%rax), %ymm6, %ymm1
 1115      60070000 
 1116 1905 C5FD5981 		vmulpd	3456(%rcx), %ymm0, %ymm0
 1116      800D0000 
 1117 190d C5F5590D 		vmulpd	.LC53(%rip), %ymm1, %ymm1
 1117      00000000 
 1118 1915 C5FD2980 		vmovapd	%ymm0, -416(%rax)
 1118      60FEFFFF 
 1119 191d C5F5580D 		vaddpd	.LC53(%rip), %ymm1, %ymm1
 1119      00000000 
 1120 1925 C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 1121 1929 C5FD2948 		vmovapd	%ymm1, -32(%rax)
 1121      E0
 1122 192e C5FD54C6 		vandpd	%ymm6, %ymm0, %ymm0
 1123 1932 C5FD2980 		vmovapd	%ymm0, 352(%rax)
 1123      60010000 
 1124 193a 39D6     		cmpl	%edx, %esi
 1125 193c 0F8DEEFE 		jge	.L35
 1125      FFFF
 1126 1942 83C602   		addl	$2, %esi
 1127 1945 4883C120 		addq	$32, %rcx
 1128 1949 4883C740 		addq	$64, %rdi
 1129 194d 83FE0D   		cmpl	$13, %esi
 1130 1950 0F85CAFE 		jne	.L37
 1130      FFFF
 1131 1956 C5FD2884 		vmovapd	1984(%rsp), %ymm0
 1131      24C00700 
 1131      00
 1132 195f 488DB424 		leaq	4672(%rsp), %rsi
 1132      40120000 
 1133 1967 4C8D8424 		leaq	3904(%rsp), %r8
 1133      400F0000 
 1134 196f 4C8D8C24 		leaq	4864(%rsp), %r9
 1134      00130000 
 1135 1977 C5FD286C 		vmovapd	32(%rsp), %ymm5
 1135      2420
 1136 197d 31FF     		xorl	%edi, %edi
 1137 197f C5FD5D84 		vminpd	2016(%rsp), %ymm0, %ymm0
 1137      24E00700 
 1137      00
 1138 1988 C5FD2874 		vmovapd	64(%rsp), %ymm6
 1138      2440
 1139 198e C5FD2984 		vmovapd	%ymm0, 1600(%rsp)
 1139      24400600 
 1139      00
 1140 1997 C5FD2884 		vmovapd	2048(%rsp), %ymm0
 1140      24000800 
 1140      00
GAS LISTING /tmp/cce9VX6C.s 			page 37


 1141 19a0 C5FD5D84 		vminpd	2080(%rsp), %ymm0, %ymm0
 1141      24200800 
 1141      00
 1142 19a9 C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 1142      24600600 
 1142      00
 1143 19b2 C5FD2884 		vmovapd	2112(%rsp), %ymm0
 1143      24400800 
 1143      00
 1144 19bb C5FD5D84 		vminpd	2144(%rsp), %ymm0, %ymm0
 1144      24600800 
 1144      00
 1145 19c4 C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 1145      24800600 
 1145      00
 1146 19cd C5FD2884 		vmovapd	2176(%rsp), %ymm0
 1146      24800800 
 1146      00
 1147 19d6 C5FD5D84 		vminpd	2208(%rsp), %ymm0, %ymm0
 1147      24A00800 
 1147      00
 1148 19df C5FD2984 		vmovapd	%ymm0, 1696(%rsp)
 1148      24A00600 
 1148      00
 1149 19e8 C5FD2884 		vmovapd	2240(%rsp), %ymm0
 1149      24C00800 
 1149      00
 1150 19f1 C5FD5D84 		vminpd	2272(%rsp), %ymm0, %ymm0
 1150      24E00800 
 1150      00
 1151 19fa C5FD2984 		vmovapd	%ymm0, 1728(%rsp)
 1151      24C00600 
 1151      00
 1152 1a03 C5FD2884 		vmovapd	2304(%rsp), %ymm0
 1152      24000900 
 1152      00
 1153 1a0c C5FD5D84 		vminpd	2336(%rsp), %ymm0, %ymm0
 1153      24200900 
 1153      00
 1154 1a15 C5FD2984 		vmovapd	%ymm0, 1760(%rsp)
 1154      24E00600 
 1154      00
 1155 1a1e 6690     		.p2align 4,,10
 1156              		.p2align 3
 1157              	.L43:
 1158 1a20 C5FD28A6 		vmovapd	-3072(%rsi), %ymm4
 1158      00F4FFFF 
 1159 1a28 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1159      E301
 1160 1a2e C5F928D4 		vmovapd	%xmm4, %xmm2
 1161 1a32 C5E1DB0D 		vpand	.LC54(%rip), %xmm3, %xmm1
 1161      00000000 
 1162 1a3a C5C173D2 		vpsrlq	$52, %xmm2, %xmm7
 1162      34
 1163 1a3f C5E9DB05 		vpand	.LC54(%rip), %xmm2, %xmm0
 1163      00000000 
 1164 1a47 C5C1EB3D 		vpor	.LC56(%rip), %xmm7, %xmm7
GAS LISTING /tmp/cce9VX6C.s 			page 38


 1164      00000000 
 1165 1a4f C5F1EB0D 		vpor	.LC55(%rip), %xmm1, %xmm1
 1165      00000000 
 1166 1a57 C5F9EB05 		vpor	.LC55(%rip), %xmm0, %xmm0
 1166      00000000 
 1167 1a5f C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 1167      C101
 1168 1a65 C5F173D3 		vpsrlq	$52, %xmm3, %xmm1
 1168      34
 1169 1a6a C5F1EB0D 		vpor	.LC56(%rip), %xmm1, %xmm1
 1169      00000000 
 1170 1a72 C4E34518 		vinsertf128	$0x1, %xmm1, %ymm7, %ymm7
 1170      F901
 1171 1a78 C5FD280D 		vmovapd	.LC58(%rip), %ymm1
 1171      00000000 
 1172 1a80 C5F5C2C8 		vcmppd	$1, %ymm0, %ymm1, %ymm1
 1172      01
 1173 1a85 C5C55C3D 		vsubpd	.LC57(%rip), %ymm7, %ymm7
 1173      00000000 
 1174 1a8d C4C37D19 		vextractf128	$0x1, %ymm1, %xmm9
 1174      C901
 1175 1a93 C57928C1 		vmovapd	%xmm1, %xmm8
 1176 1a97 C5F5540D 		vandpd	.LC22(%rip), %ymm1, %ymm1
 1176      00000000 
 1177 1a9f C531EF0D 		vpxor	.LC105(%rip), %xmm9, %xmm9
 1177      00000000 
 1178 1aa7 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1178      00000000 
 1179 1aaf C5C558F9 		vaddpd	%ymm1, %ymm7, %ymm7
 1180 1ab3 C4433D18 		vinsertf128	$0x1, %xmm9, %ymm8, %ymm8
 1180      C101
 1181 1ab9 C53D54C0 		vandpd	%ymm0, %ymm8, %ymm8
 1182 1abd C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 1183 1ac1 C5FD5C05 		vsubpd	.LC22(%rip), %ymm0, %ymm0
 1183      00000000 
 1184 1ac9 C57D590D 		vmulpd	.LC61(%rip), %ymm0, %ymm9
 1184      00000000 
 1185 1ad1 C57D581D 		vaddpd	.LC67(%rip), %ymm0, %ymm11
 1185      00000000 
 1186 1ad9 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 1187 1add C57D5915 		vmulpd	.LC59(%rip), %ymm0, %ymm10
 1187      00000000 
 1188 1ae5 C535580D 		vaddpd	.LC62(%rip), %ymm9, %ymm9
 1188      00000000 
 1189 1aed C57559C1 		vmulpd	%ymm1, %ymm1, %ymm8
 1190 1af1 C52D5815 		vaddpd	.LC60(%rip), %ymm10, %ymm10
 1190      00000000 
 1191 1af9 C4413559 		vmulpd	%ymm8, %ymm9, %ymm9
 1191      C8
 1192 1afe C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 1192      C0
 1193 1b03 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1193      CA
 1194 1b08 C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
 1194      00000000 
 1195 1b10 C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 1195      00000000 
GAS LISTING /tmp/cce9VX6C.s 			page 39


 1196 1b18 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1197 1b1c C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 1197      D1
 1198 1b21 C57D59C9 		vmulpd	%ymm1, %ymm0, %ymm9
 1199 1b25 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 1199      C9
 1200 1b2a C57D5915 		vmulpd	.LC65(%rip), %ymm0, %ymm10
 1200      00000000 
 1201 1b32 C52D5815 		vaddpd	.LC66(%rip), %ymm10, %ymm10
 1201      00000000 
 1202 1b3a C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 1202      C2
 1203 1b3f C57D5915 		vmulpd	.LC68(%rip), %ymm0, %ymm10
 1203      00000000 
 1204 1b47 C52D5815 		vaddpd	.LC69(%rip), %ymm10, %ymm10
 1204      00000000 
 1205 1b4f C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1206 1b53 C5F5590D 		vmulpd	.LC21(%rip), %ymm1, %ymm1
 1206      00000000 
 1207 1b5b C4412D58 		vaddpd	%ymm8, %ymm10, %ymm8
 1207      C0
 1208 1b60 C5A973F3 		vpsllq	$1, %xmm3, %xmm10
 1208      01
 1209 1b65 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1210 1b69 C441355E 		vdivpd	%ymm8, %ymm9, %ymm8
 1210      C0
 1211 1b6e C545590D 		vmulpd	.LC70(%rip), %ymm7, %ymm9
 1211      00000000 
 1212 1b76 C5C5590D 		vmulpd	.LC71(%rip), %ymm7, %ymm1
 1212      00000000 
 1213 1b7e C5A9DB3D 		vpand	.LC25(%rip), %xmm10, %xmm7
 1213      00000000 
 1214 1b86 C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 1214      C0
 1215 1b8b C5B173F2 		vpsllq	$1, %xmm2, %xmm9
 1215      01
 1216 1b90 C4E24129 		vpcmpeqq	.LC25(%rip), %xmm7, %xmm7
 1216      3D000000 
 1216      00
 1217 1b99 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1217      00000000 
 1218 1ba1 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 1219 1ba5 C531DB05 		vpand	.LC25(%rip), %xmm9, %xmm8
 1219      00000000 
 1220 1bad C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 1221 1bb1 C4623929 		vpcmpeqq	.LC25(%rip), %xmm8, %xmm8
 1221      05000000 
 1221      00
 1222 1bba C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1222      00000000 
 1223 1bc2 C4633D18 		vinsertf128	$0x1, %xmm7, %ymm8, %ymm8
 1223      C701
 1224 1bc8 C4437D19 		vextractf128	$0x1, %ymm8, %xmm11
 1224      C301
 1225 1bce C57929C7 		vmovapd	%xmm8, %xmm7
 1226 1bd2 C55DC205 		vcmppd	$1, .LC72(%rip), %ymm4, %ymm8
 1226      00000000 
GAS LISTING /tmp/cce9VX6C.s 			page 40


 1226      01
 1227 1bdb C521EF1D 		vpxor	.LC105(%rip), %xmm11, %xmm11
 1227      00000000 
 1228 1be3 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1228      00000000 
 1229 1beb C4C34518 		vinsertf128	$0x1, %xmm11, %ymm7, %ymm7
 1229      FB01
 1230 1bf1 C57D28E7 		vmovapd	%ymm7, %ymm12
 1231 1bf5 C5BD56FF 		vorpd	%ymm7, %ymm8, %ymm7
 1232 1bf9 C4C37D19 		vextractf128	$0x1, %ymm7, %xmm11
 1232      FB01
 1233 1bff C4C14156 		vorpd	%xmm11, %xmm7, %xmm7
 1233      FB
 1234 1c04 C5F950C7 		vmovmskpd	%xmm7, %eax
 1235 1c08 85C0     		testl	%eax, %eax
 1236 1c0a 0F848600 		je	.L38
 1236      0000
 1237 1c10 C4E3754B 		vblendvpd	%ymm8, .LC73(%rip), %ymm1, %ymm1
 1237      0D000000 
 1237      0080
 1238 1c1a C5E1DB3D 		vpand	.LC75(%rip), %xmm3, %xmm7
 1238      00000000 
 1239 1c22 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1239      1F
 1240 1c27 C4622929 		vpcmpeqq	.LC25(%rip), %xmm10, %xmm10
 1240      15000000 
 1240      00
 1241 1c30 C569DB05 		vpand	.LC75(%rip), %xmm2, %xmm8
 1241      00000000 
 1242 1c38 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1242      1F
 1243 1c3d C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 1244 1c41 C4E24129 		vpcmpeqq	%xmm0, %xmm7, %xmm7
 1244      F8
 1245 1c46 C4E23929 		vpcmpeqq	%xmm0, %xmm8, %xmm0
 1245      C0
 1246 1c4b C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 1246      C701
 1247 1c51 C4E3754B 		vblendvpd	%ymm0, %ymm6, %ymm1, %ymm0
 1247      C600
 1248 1c57 C4E23129 		vpcmpeqq	.LC25(%rip), %xmm9, %xmm1
 1248      0D000000 
 1248      00
 1249 1c60 C4E37D4B 		vblendvpd	%ymm12, %ymm4, %ymm0, %ymm4
 1249      E4C0
 1250 1c66 C5F973D3 		vpsrlq	$32, %xmm3, %xmm0
 1250      20
 1251 1c6b C4E3790E 		vpblendw	$204, %xmm3, %xmm0, %xmm3
 1251      DBCC
 1252 1c71 C5F973D2 		vpsrlq	$32, %xmm2, %xmm0
 1252      20
 1253 1c76 C4E3790E 		vpblendw	$204, %xmm2, %xmm0, %xmm0
 1253      C2CC
 1254 1c7c C4C37518 		vinsertf128	$0x1, %xmm10, %ymm1, %ymm1
 1254      CA01
 1255 1c82 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1255      C301
GAS LISTING /tmp/cce9VX6C.s 			page 41


 1256 1c88 C5F554C8 		vandpd	%ymm0, %ymm1, %ymm1
 1257 1c8c C4E35D4B 		vblendvpd	%ymm1, .LC73(%rip), %ymm4, %ymm1
 1257      0D000000 
 1257      0010
 1258              	.L38:
 1259 1c96 C5F5590D 		vmulpd	.LC28(%rip), %ymm1, %ymm1
 1259      00000000 
 1260 1c9e C5F55925 		vmulpd	.LC76(%rip), %ymm1, %ymm4
 1260      00000000 
 1261 1ca6 C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 1261      E408
 1262 1cac C5DD5915 		vmulpd	.LC77(%rip), %ymm4, %ymm2
 1262      00000000 
 1263 1cb4 C5DD5905 		vmulpd	.LC78(%rip), %ymm4, %ymm0
 1263      00000000 
 1264 1cbc C5DD5825 		vaddpd	.LC57(%rip), %ymm4, %ymm4
 1264      00000000 
 1265 1cc4 C5F55CD2 		vsubpd	%ymm2, %ymm1, %ymm2
 1266 1cc8 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 1267 1ccc C5FD593D 		vmulpd	.LC82(%rip), %ymm0, %ymm7
 1267      00000000 
 1268 1cd4 C57D590D 		vmulpd	.LC79(%rip), %ymm0, %ymm9
 1268      00000000 
 1269 1cdc C57D5915 		vmulpd	.LC80(%rip), %ymm0, %ymm10
 1269      00000000 
 1270 1ce4 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 1271 1ce8 C5C5583D 		vaddpd	.LC83(%rip), %ymm7, %ymm7
 1271      00000000 
 1272 1cf0 C535580D 		vaddpd	.LC21(%rip), %ymm9, %ymm9
 1272      00000000 
 1273 1cf8 C52D5815 		vaddpd	.LC81(%rip), %ymm10, %ymm10
 1273      00000000 
 1274 1d00 C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 1275 1d04 C5C559FA 		vmulpd	%ymm2, %ymm7, %ymm7
 1276 1d08 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 1277 1d0c C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1278 1d10 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1278      FA
 1279 1d15 C57D5915 		vmulpd	.LC86(%rip), %ymm0, %ymm10
 1279      00000000 
 1280 1d1d C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 1281 1d21 C5C559FB 		vmulpd	%ymm3, %ymm7, %ymm7
 1282 1d25 C52D5815 		vaddpd	.LC87(%rip), %ymm10, %ymm10
 1282      00000000 
 1283 1d2d C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1283      F9
 1284 1d32 C57D590D 		vmulpd	.LC84(%rip), %ymm0, %ymm9
 1284      00000000 
 1285 1d3a C5FD5905 		vmulpd	.LC88(%rip), %ymm0, %ymm0
 1285      00000000 
 1286 1d42 C5AD59D2 		vmulpd	%ymm2, %ymm10, %ymm2
 1287 1d46 C535580D 		vaddpd	.LC85(%rip), %ymm9, %ymm9
 1287      00000000 
 1288 1d4e C5FD5805 		vaddpd	.LC89(%rip), %ymm0, %ymm0
 1288      00000000 
 1289 1d56 C4C16D58 		vaddpd	%ymm9, %ymm2, %ymm2
 1289      D1
GAS LISTING /tmp/cce9VX6C.s 			page 42


 1290 1d5b C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 1291 1d5f C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 1291      34
 1292 1d64 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 1293 1d68 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1293      E301
 1294 1d6e C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1294      34
 1295 1d73 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1295      C301
 1296 1d79 C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 1296      D0
 1297 1d7e C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 1297      CB01
 1298 1d84 C5ED58D7 		vaddpd	%ymm7, %ymm2, %ymm2
 1299 1d88 C5B973F3 		vpsllq	$1, %xmm3, %xmm8
 1299      01
 1300 1d8d C539DB05 		vpand	.LC25(%rip), %xmm8, %xmm8
 1300      00000000 
 1301 1d95 C5F5543D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 1301      00000000 
 1302 1d9d C5ED5825 		vaddpd	.LC22(%rip), %ymm2, %ymm4
 1302      00000000 
 1303 1da5 C5F928D1 		vmovapd	%xmm1, %xmm2
 1304 1da9 C4623929 		vpcmpeqq	.LC25(%rip), %xmm8, %xmm8
 1304      05000000 
 1304      00
 1305 1db2 C5C5C23D 		vcmppd	$1, .LC90(%rip), %ymm7, %ymm7
 1305      00000000 
 1305      01
 1306 1dbb C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1306      00000000 
 1307 1dc3 C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 1308 1dc7 C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 1308      01
 1309 1dcc C5F9DB05 		vpand	.LC25(%rip), %xmm0, %xmm0
 1309      00000000 
 1310 1dd4 C4E27929 		vpcmpeqq	.LC25(%rip), %xmm0, %xmm0
 1310      05000000 
 1310      00
 1311 1ddd C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1311      00000000 
 1312 1de5 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 1312      C001
 1313 1deb C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 1314 1def C4E37D19 		vextractf128	$0x1, %ymm0, %xmm7
 1314      C701
 1315 1df5 C57928C0 		vmovapd	%xmm0, %xmm8
 1316 1df9 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1317 1dfd C5F950C7 		vmovmskpd	%xmm7, %eax
 1318 1e01 83F803   		cmpl	$3, %eax
 1319 1e04 0F84B804 		je	.L63
 1319      0000
 1320 1e0a C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1320      1F
 1321 1e0f C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1321      1F
GAS LISTING /tmp/cce9VX6C.s 			page 43


 1322 1e14 C5C173D3 		vpsrlq	$32, %xmm3, %xmm7
 1322      20
 1323 1e19 C4E3410E 		vpblendw	$204, %xmm3, %xmm7, %xmm3
 1323      DBCC
 1324 1e1f C5C173D2 		vpsrlq	$32, %xmm2, %xmm7
 1324      20
 1325 1e24 C4E3410E 		vpblendw	$204, %xmm2, %xmm7, %xmm2
 1325      D2CC
 1326 1e2a C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 1326      DB01
 1327 1e30 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 1328 1e34 C4E3554B 		vblendvpd	%ymm3, %ymm2, %ymm5, %ymm2
 1328      D230
 1329 1e3a C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 1329      C400
 1330 1e40 C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 1330      04
 1331 1e45 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 1331      C120
 1332              	.L39:
 1333 1e4b C5FD280E 		vmovapd	(%rsi), %ymm1
 1334 1e4f 8D4F01   		leal	1(%rdi), %ecx
 1335 1e52 89FA     		movl	%edi, %edx
 1336 1e54 C5FD283D 		vmovapd	.LC22(%rip), %ymm7
 1336      00000000 
 1337 1e5c 4C89C0   		movq	%r8, %rax
 1338 1e5f C5F5C20D 		vcmppd	$2, .LC91(%rip), %ymm1, %ymm1
 1338      00000000 
 1338      02
 1339 1e68 C5C5C296 		vcmppd	$2, -3072(%rsi), %ymm7, %ymm2
 1339      00F4FFFF 
 1339      02
 1340 1e71 C5ED56C9 		vorpd	%ymm1, %ymm2, %ymm1
 1341 1e75 C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1341      00000000 
 1342 1e7d C5EDC2D0 		vcmppd	$1, %ymm0, %ymm2, %ymm2
 1342      01
 1343 1e82 C4E37D4B 		vblendvpd	%ymm2, .LC92(%rip), %ymm0, %ymm0
 1343      05000000 
 1343      0020
 1344 1e8c C5FDC215 		vcmppd	$1, .LC28(%rip), %ymm0, %ymm2
 1344      00000000 
 1344      01
 1345 1e95 C4E37D4B 		vblendvpd	%ymm2, .LC28(%rip), %ymm0, %ymm0
 1345      05000000 
 1345      0020
 1346 1e9f C5FD2986 		vmovapd	%ymm0, -2688(%rsi)
 1346      80F5FFFF 
 1347 1ea7 660F1F84 		.p2align 4,,10
 1347      00000000 
 1347      00
 1348              		.p2align 3
 1349              	.L41:
 1350 1eb0 C5FD2800 		vmovapd	(%rax), %ymm0
 1351 1eb4 83C201   		addl	$1, %edx
 1352 1eb7 4883C020 		addq	$32, %rax
 1353 1ebb C4E37D4B 		vblendvpd	%ymm1, -416(%rax), %ymm0, %ymm0
GAS LISTING /tmp/cce9VX6C.s 			page 44


 1353      8060FEFF 
 1353      FF10
 1354 1ec5 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 1354      E0
 1355 1eca 39CA     		cmpl	%ecx, %edx
 1356 1ecc 7EE2     		jle	.L41
 1357 1ece C5FD2886 		vmovapd	-384(%rsi), %ymm0
 1357      80FEFFFF 
 1358 1ed6 4883C620 		addq	$32, %rsi
 1359 1eda 83C702   		addl	$2, %edi
 1360 1edd C5FD283D 		vmovapd	.LC94(%rip), %ymm7
 1360      00000000 
 1361 1ee5 4983C040 		addq	$64, %r8
 1362 1ee9 C5FD5856 		vaddpd	-32(%rsi), %ymm0, %ymm2
 1362      E0
 1363 1eee C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1363      C210
 1364 1ef4 C5FD2986 		vmovapd	%ymm0, -416(%rsi)
 1364      60FEFFFF 
 1365 1efc C5FD2886 		vmovapd	-2720(%rsi), %ymm0
 1365      60F5FFFF 
 1366 1f04 C5FD5946 		vmulpd	-32(%rsi), %ymm0, %ymm0
 1366      E0
 1367 1f09 C5FD5905 		vmulpd	.LC93(%rip), %ymm0, %ymm0
 1367      00000000 
 1368 1f11 C5C5C2C8 		vcmppd	$1, %ymm0, %ymm7, %ymm1
 1368      01
 1369 1f16 C4E37D4B 		vblendvpd	%ymm1, %ymm7, %ymm0, %ymm0
 1369      C710
 1370 1f1c C5FDC20D 		vcmppd	$1, .LC91(%rip), %ymm0, %ymm1
 1370      00000000 
 1370      01
 1371 1f25 C4E37D4B 		vblendvpd	%ymm1, .LC91(%rip), %ymm0, %ymm0
 1371      05000000 
 1371      0010
 1372 1f2f C5FD2946 		vmovapd	%ymm0, -32(%rsi)
 1372      E0
 1373 1f34 4C39CE   		cmpq	%r9, %rsi
 1374 1f37 0F85E3FA 		jne	.L43
 1374      FFFF
 1375 1f3d 488D8424 		leaq	1216(%rsp), %rax
 1375      C0040000 
 1376 1f45 4C8DAC24 		leaq	5248(%rsp), %r13
 1376      80140000 
 1377 1f4d 4C8DA424 		leaq	5056(%rsp), %r12
 1377      C0130000 
 1378 1f55 4C896C24 		movq	%r13, 112(%rsp)
 1378      70
 1379 1f5a 4989C6   		movq	%rax, %r14
 1380 1f5d 0F1F00   		.p2align 4,,10
 1381              		.p2align 3
 1382              	.L53:
 1383 1f60 C4C17D28 		vmovapd	-768(%r12), %ymm1
 1383      8C2400FD 
 1383      FFFF
 1384 1f6a C4C17D28 		vmovapd	(%r12), %ymm2
 1384      1424
GAS LISTING /tmp/cce9VX6C.s 			page 45


 1385 1f70 C5EDC2F9 		vcmppd	$2, %ymm1, %ymm2, %ymm7
 1385      02
 1386 1f75 C4E37D19 		vextractf128	$0x1, %ymm7, %xmm0
 1386      F801
 1387 1f7b C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 1387      24800000 
 1387      00
 1388 1f84 C5F928DF 		vmovapd	%xmm7, %xmm3
 1389 1f88 C5E156C0 		vorpd	%xmm0, %xmm3, %xmm0
 1390 1f8c C5F950C0 		vmovmskpd	%xmm0, %eax
 1391 1f90 85C0     		testl	%eax, %eax
 1392 1f92 0F840501 		je	.L44
 1392      0000
 1393 1f98 31DB     		xorl	%ebx, %ebx
 1394              	.L51:
 1395 1f9a C5FD28BC 		vmovapd	128(%rsp), %ymm7
 1395      24800000 
 1395      00
 1396 1fa3 C5FD11BC 		vmovupd	%ymm7, 768(%rsp)
 1396      24000300 
 1396      00
 1397 1fac 448B8C5C 		movl	772(%rsp,%rbx,2), %r9d
 1397      04030000 
 1398 1fb4 4585C9   		testl	%r9d, %r9d
 1399 1fb7 0F858301 		jne	.L76
 1399      0000
 1400              	.L59:
 1401 1fbd 4883C304 		addq	$4, %rbx
 1402 1fc1 4883FB10 		cmpq	$16, %rbx
 1403 1fc5 75D3     		jne	.L51
 1404 1fc7 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 1404      24800000 
 1404      00
 1405 1fd0 C5FD11BC 		vmovupd	%ymm7, 512(%rsp)
 1405      24000200 
 1405      00
 1406 1fd9 8B84241C 		movl	540(%rsp), %eax
 1406      020000
 1407 1fe0 C5FD11BC 		vmovupd	%ymm7, 576(%rsp)
 1407      24400200 
 1407      00
 1408 1fe9 8B942454 		movl	596(%rsp), %edx
 1408      020000
 1409 1ff0 C5FD11BC 		vmovupd	%ymm7, 640(%rsp)
 1409      24800200 
 1409      00
 1410 1ff9 8BBC248C 		movl	652(%rsp), %edi
 1410      020000
 1411 2000 C5FD11BC 		vmovupd	%ymm7, 704(%rsp)
 1411      24C00200 
 1411      00
 1412 2009 85C0     		testl	%eax, %eax
 1413 200b 448B8424 		movl	708(%rsp), %r8d
 1413      C4020000 
 1414 2013 0F95C1   		setne	%cl
 1415 2016 85D2     		testl	%edx, %edx
 1416 2018 400F95C6 		setne	%sil
GAS LISTING /tmp/cce9VX6C.s 			page 46


 1417 201c 85FF     		testl	%edi, %edi
 1418 201e 0FB6C9   		movzbl	%cl, %ecx
 1419 2021 0F95C0   		setne	%al
 1420 2024 400FB6F6 		movzbl	%sil, %esi
 1421 2028 31D2     		xorl	%edx, %edx
 1422 202a 4585C0   		testl	%r8d, %r8d
 1423 202d 0FB6C0   		movzbl	%al, %eax
 1424 2030 0F95C2   		setne	%dl
 1425 2033 F7DE     		negl	%esi
 1426 2035 F7D8     		negl	%eax
 1427 2037 89B42480 		movl	%esi, 128(%rsp)
 1427      000000
 1428 203e F7DA     		negl	%edx
 1429 2040 F7D9     		negl	%ecx
 1430 2042 C5F96E9C 		vmovd	128(%rsp), %xmm3
 1430      24800000 
 1430      00
 1431 204b 89942480 		movl	%edx, 128(%rsp)
 1431      000000
 1432 2052 C5F96EAC 		vmovd	128(%rsp), %xmm5
 1432      24800000 
 1432      00
 1433 205b C4E36122 		vpinsrd	$1, %ecx, %xmm3, %xmm0
 1433      C101
 1434 2061 C4E35122 		vpinsrd	$1, %eax, %xmm5, %xmm1
 1434      C801
 1435 2067 C5C55415 		vandpd	.LC99(%rip), %ymm7, %ymm2
 1435      00000000 
 1436 206f C5F16CC0 		vpunpcklqdq	%xmm0, %xmm1, %xmm0
 1437 2073 C5F9DB05 		vpand	.LC98(%rip), %xmm0, %xmm0
 1437      00000000 
 1438 207b C4C179FE 		vpaddd	0(%r13), %xmm0, %xmm0
 1438      4500
 1439 2081 C4C1797F 		vmovdqa	%xmm0, 0(%r13)
 1439      4500
 1440 2087 C4C16D58 		vaddpd	(%r12), %ymm2, %ymm2
 1440      1424
 1441 208d C4C17D28 		vmovapd	-768(%r12), %ymm1
 1441      8C2400FD 
 1441      FFFF
 1442 2097 C4C17D29 		vmovapd	%ymm2, (%r12)
 1442      1424
 1443              	.L44:
 1444 209d C4C17D28 		vmovapd	-384(%r12), %ymm0
 1444      842480FE 
 1444      FFFF
 1445 20a7 4983C510 		addq	$16, %r13
 1446 20ab 4983C420 		addq	$32, %r12
 1447 20af 4983C640 		addq	$64, %r14
 1448 20b3 C5F558D8 		vaddpd	%ymm0, %ymm1, %ymm3
 1449 20b7 C5ED5CC9 		vsubpd	%ymm1, %ymm2, %ymm1
 1450 20bb C5EDC2DB 		vcmppd	$2, %ymm3, %ymm2, %ymm3
 1450      02
 1451 20c0 C4E37D4B 		vblendvpd	%ymm3, %ymm1, %ymm0, %ymm0
 1451      C130
 1452 20c6 C4C17D29 		vmovapd	%ymm0, -416(%r12)
 1452      842460FE 
GAS LISTING /tmp/cce9VX6C.s 			page 47


 1452      FFFF
 1453 20d0 4C3B6424 		cmpq	112(%rsp), %r12
 1453      70
 1454 20d5 0F8585FE 		jne	.L53
 1454      FFFF
 1455 20db C5FD2884 		vmovapd	4288(%rsp), %ymm0
 1455      24C01000 
 1455      00
 1456 20e4 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 1456      00000000 
 1457 20ec C5FD5D84 		vminpd	4320(%rsp), %ymm0, %ymm0
 1457      24E01000 
 1457      00
 1458 20f5 C5FD5D84 		vminpd	4352(%rsp), %ymm0, %ymm0
 1458      24001100 
 1458      00
 1459 20fe C5FD5D84 		vminpd	4384(%rsp), %ymm0, %ymm0
 1459      24201100 
 1459      00
 1460 2107 C5FD5D84 		vminpd	4416(%rsp), %ymm0, %ymm0
 1460      24401100 
 1460      00
 1461 2110 C5FD5D84 		vminpd	4448(%rsp), %ymm0, %ymm0
 1461      24601100 
 1461      00
 1462 2119 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1462      02
 1463 211e C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1463      C101
 1464 2124 C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1465 2128 C5F950C0 		vmovmskpd	%xmm0, %eax
 1466 212c 83F803   		cmpl	$3, %eax
 1467 212f 0F849601 		je	.L77
 1467      0000
 1468 2135 31C9     		xorl	%ecx, %ecx
 1469 2137 31F6     		xorl	%esi, %esi
 1470 2139 E922E2FF 		jmp	.L13
 1470      FF
 1471 213e 6690     		.p2align 4,,10
 1472              		.p2align 3
 1473              	.L76:
 1474 2140 C4C1796F 		vmovdqa	0(%r13), %xmm0
 1474      4500
 1475 2146 C5FA7F84 		vmovdqu	%xmm0, 160(%rsp)
 1475      24A00000 
 1475      00
 1476 214f 83BC1CA0 		cmpl	$31, 160(%rsp,%rbx)
 1476      0000001F 
 1477 2157 0F8F60FE 		jg	.L59
 1477      FFFF
 1478 215d C4C17D28 		vmovapd	-768(%r12), %ymm0
 1478      842400FD 
 1478      FFFF
 1479 2167 488DBC24 		leaq	5360(%rsp), %rdi
 1479      F0140000 
 1480 216f C5FD1184 		vmovupd	%ymm0, 384(%rsp)
 1480      24800100 
GAS LISTING /tmp/cce9VX6C.s 			page 48


 1480      00
 1481 2178 C5FB1084 		vmovsd	384(%rsp,%rbx,2), %xmm0
 1481      5C800100 
 1481      00
 1482 2181 C5FB5E05 		vdivsd	.LC95(%rip), %xmm0, %xmm0
 1482      00000000 
 1483 2189 C5FB5C1D 		vsubsd	.LC96(%rip), %xmm0, %xmm3
 1483      00000000 
 1484 2191 C4C17D28 		vmovapd	2720(%r14), %ymm0
 1484      86A00A00 
 1484      00
 1485 219a C5FD1184 		vmovupd	%ymm0, 416(%rsp)
 1485      24A00100 
 1485      00
 1486 21a3 C4C17D28 		vmovapd	2688(%r14), %ymm0
 1486      86800A00 
 1486      00
 1487 21ac C5FB1094 		vmovsd	416(%rsp,%rbx,2), %xmm2
 1487      5CA00100 
 1487      00
 1488 21b5 C5FD1184 		vmovupd	%ymm0, 448(%rsp)
 1488      24C00100 
 1488      00
 1489 21be C5FB115C 		vmovsd	%xmm3, 120(%rsp)
 1489      2478
 1490 21c4 C4C17D28 		vmovapd	-192(%r12), %ymm0
 1490      842440FF 
 1490      FFFF
 1491 21ce C5FB109C 		vmovsd	448(%rsp,%rbx,2), %xmm3
 1491      5CC00100 
 1491      00
 1492 21d7 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1492      24E00100 
 1492      00
 1493 21e0 C5FB1154 		vmovsd	%xmm2, 104(%rsp)
 1493      2468
 1494 21e6 C5FB1084 		vmovsd	480(%rsp,%rbx,2), %xmm0
 1494      5CE00100 
 1494      00
 1495 21ef C5FB115C 		vmovsd	%xmm3, 96(%rsp)
 1495      2460
 1496 21f5 C5F877   		vzeroupper
 1497              	.LEHB1:
 1498 21f8 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1498      00
 1499 21fd BA010000 		movl	$1, %edx
 1499      00
 1500 2202 BE000000 		movl	$.LC97, %esi
 1500      00
 1501 2207 4889C7   		movq	%rax, %rdi
 1502 220a 4989C7   		movq	%rax, %r15
 1503 220d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1503      00
 1504 2212 C5FB1044 		vmovsd	96(%rsp), %xmm0
 1504      2460
 1505 2218 4C89FF   		movq	%r15, %rdi
 1506 221b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/cce9VX6C.s 			page 49


 1506      00
 1507 2220 BA010000 		movl	$1, %edx
 1507      00
 1508 2225 BE000000 		movl	$.LC97, %esi
 1508      00
 1509 222a 4889C7   		movq	%rax, %rdi
 1510 222d 4989C7   		movq	%rax, %r15
 1511 2230 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1511      00
 1512 2235 C5FB1044 		vmovsd	104(%rsp), %xmm0
 1512      2468
 1513 223b 4C89FF   		movq	%r15, %rdi
 1514 223e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1514      00
 1515 2243 BA010000 		movl	$1, %edx
 1515      00
 1516 2248 BE000000 		movl	$.LC97, %esi
 1516      00
 1517 224d 4889C7   		movq	%rax, %rdi
 1518 2250 4989C7   		movq	%rax, %r15
 1519 2253 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1519      00
 1520 2258 C5FB1044 		vmovsd	120(%rsp), %xmm0
 1520      2478
 1521 225e 4C89FF   		movq	%r15, %rdi
 1522 2261 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1522      00
 1523 2266 4989C7   		movq	%rax, %r15
 1524 2269 488B00   		movq	(%rax), %rax
 1525 226c 488B40E8 		movq	-24(%rax), %rax
 1526 2270 498B8407 		movq	240(%r15,%rax), %rax
 1526      F0000000 
 1527 2278 4885C0   		testq	%rax, %rax
 1528 227b 48894424 		movq	%rax, 120(%rsp)
 1528      78
 1529 2280 0F840901 		je	.L78
 1529      0000
 1530 2286 80783800 		cmpb	$0, 56(%rax)
 1531 228a 741C     		je	.L48
 1532 228c 0FB64043 		movzbl	67(%rax), %eax
 1533              	.L49:
 1534 2290 0FBEF0   		movsbl	%al, %esi
 1535 2293 4C89FF   		movq	%r15, %rdi
 1536 2296 E8000000 		call	_ZNSo3putEc
 1536      00
 1537 229b 4889C7   		movq	%rax, %rdi
 1538 229e E8000000 		call	_ZNSo5flushEv
 1538      00
 1539 22a3 E915FDFF 		jmp	.L59
 1539      FF
 1540              	.L48:
 1541 22a8 4889C7   		movq	%rax, %rdi
 1542 22ab E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1542      00
 1543 22b0 488B7C24 		movq	120(%rsp), %rdi
 1543      78
 1544 22b5 BE0A0000 		movl	$10, %esi
GAS LISTING /tmp/cce9VX6C.s 			page 50


 1544      00
 1545 22ba 488B07   		movq	(%rdi), %rax
 1546 22bd FF5030   		call	*48(%rax)
 1547 22c0 EBCE     		jmp	.L49
 1548              	.L63:
 1549 22c2 C5FD28C4 		vmovapd	%ymm4, %ymm0
 1550 22c6 E980FBFF 		jmp	.L39
 1550      FF
 1551              	.L77:
 1552 22cb 8344241C 		addl	$24, 28(%rsp)
 1552      18
 1553 22d0 48814424 		addq	$192, 16(%rsp)
 1553      10C00000 
 1553      00
 1554 22d9 817C241C 		cmpl	$1440, 28(%rsp)
 1554      A0050000 
 1555 22e1 0F8534DE 		jne	.L12
 1555      FFFF
 1556 22e7 C5F877   		vzeroupper
 1557 22ea E8000000 		call	clock
 1557      00
 1558 22ef 4889C1   		movq	%rax, %rcx
 1559 22f2 482B4C24 		subq	8(%rsp), %rcx
 1559      08
 1560 22f7 48BBCFF7 		movabsq	$2361183241434822607, %rbx
 1560      53E3A59B 
 1560      C420
 1561 2301 BE000000 		movl	$.LC103, %esi
 1561      00
 1562 2306 BF000000 		movl	$_ZSt4cout, %edi
 1562      00
 1563 230b 4889C8   		movq	%rcx, %rax
 1564 230e 48C1F93F 		sarq	$63, %rcx
 1565 2312 48F7EB   		imulq	%rbx
 1566 2315 4889D3   		movq	%rdx, %rbx
 1567 2318 48C1FB07 		sarq	$7, %rbx
 1568 231c 4829CB   		subq	%rcx, %rbx
 1569 231f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1569      00
 1570 2324 4889DE   		movq	%rbx, %rsi
 1571 2327 4889C7   		movq	%rax, %rdi
 1572 232a E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1572      00
 1573 232f BE000000 		movl	$.LC104, %esi
 1573      00
 1574 2334 4889C7   		movq	%rax, %rdi
 1575 2337 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1575      00
 1576 233c 4889C7   		movq	%rax, %rdi
 1577 233f E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1577      00
 1578 2344 488DBC24 		leaq	5360(%rsp), %rdi
 1578      F0140000 
 1579 234c E8000000 		call	_ZNSo5flushEv
 1579      00
 1580 2351 488DBC24 		leaq	5360(%rsp), %rdi
 1580      F0140000 
GAS LISTING /tmp/cce9VX6C.s 			page 51


 1581 2359 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
 1581      00
 1582 235e 488DBC24 		leaq	5360(%rsp), %rdi
 1582      F0140000 
 1583 2366 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1583      00
 1584 236b 31C0     		xorl	%eax, %eax
 1585 236d 488BBC24 		movq	5880(%rsp), %rdi
 1585      F8160000 
 1586 2375 6448333C 		xorq	%fs:40, %rdi
 1586      25280000 
 1586      00
 1587 237e 752F     		jne	.L79
 1588 2380 488D65D8 		leaq	-40(%rbp), %rsp
 1589 2384 5B       		popq	%rbx
 1590 2385 415C     		popq	%r12
 1591 2387 415D     		popq	%r13
 1592 2389 415E     		popq	%r14
 1593 238b 415F     		popq	%r15
 1594 238d 5D       		popq	%rbp
 1595              		.cfi_remember_state
 1596              		.cfi_def_cfa 7, 8
 1597 238e C3       		ret
 1598              	.L78:
 1599              		.cfi_restore_state
 1600 238f E8000000 		call	_ZSt16__throw_bad_castv
 1600      00
 1601              	.LEHE1:
 1602              	.L67:
 1603              	.L66:
 1604 2394 488DBC24 		leaq	5360(%rsp), %rdi
 1604      F0140000 
 1605 239c 4889C3   		movq	%rax, %rbx
 1606 239f C5F877   		vzeroupper
 1607 23a2 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1607      00
 1608 23a7 4889DF   		movq	%rbx, %rdi
 1609              	.LEHB2:
 1610 23aa E8000000 		call	_Unwind_Resume
 1610      00
 1611              	.LEHE2:
 1612              	.L79:
 1613 23af E8000000 		call	__stack_chk_fail
 1613      00
 1614              		.cfi_endproc
 1615              	.LFE4614:
 1616              		.globl	__gxx_personality_v0
 1617              		.section	.gcc_except_table,"a",@progbits
 1618              	.LLSDA4614:
 1619 0000 FF       		.byte	0xff
 1620 0001 FF       		.byte	0xff
 1621 0002 01       		.byte	0x1
 1622 0003 11       		.uleb128 .LLSDACSE4614-.LLSDACSB4614
 1623              	.LLSDACSB4614:
 1624 0004 D901     		.uleb128 .LEHB0-.LFB4614
 1625 0006 05       		.uleb128 .LEHE0-.LEHB0
 1626 0007 00       		.uleb128 0
GAS LISTING /tmp/cce9VX6C.s 			page 52


 1627 0008 00       		.uleb128 0
 1628 0009 F843     		.uleb128 .LEHB1-.LFB4614
 1629 000b 9C03     		.uleb128 .LEHE1-.LEHB1
 1630 000d 9447     		.uleb128 .L66-.LFB4614
 1631 000f 00       		.uleb128 0
 1632 0010 AA47     		.uleb128 .LEHB2-.LFB4614
 1633 0012 05       		.uleb128 .LEHE2-.LEHB2
 1634 0013 00       		.uleb128 0
 1635 0014 00       		.uleb128 0
 1636              	.LLSDACSE4614:
 1637              		.section	.text.startup
 1638              		.size	main, .-main
 1639 23b4 6666662E 		.p2align 4,,15
 1639      0F1F8400 
 1639      00000000 
 1640              		.type	_GLOBAL__sub_I_main, @function
 1641              	_GLOBAL__sub_I_main:
 1642              	.LFB4954:
 1643              		.cfi_startproc
 1644 23c0 4883EC08 		subq	$8, %rsp
 1645              		.cfi_def_cfa_offset 16
 1646 23c4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1646      00
 1647 23c9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1647      00
 1648 23ce BA000000 		movl	$__dso_handle, %edx
 1648      00
 1649 23d3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1649      00
 1650 23d8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1650      00
 1651 23dd 4883C408 		addq	$8, %rsp
 1652              		.cfi_def_cfa_offset 8
 1653 23e1 E9000000 		jmp	__cxa_atexit
 1653      00
 1654              		.cfi_endproc
 1655              	.LFE4954:
 1656              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1657              		.section	.init_array,"aw"
 1658              		.align 8
 1659 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1659      00000000 
 1660              		.section	.rodata
 1661              		.align 32
 1662              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1663              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1664              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1665 0000 00000000 		.long	0
 1666 0004 00000080 		.long	-2147483648
 1667 0008 00000000 		.long	0
 1668 000c 00000080 		.long	-2147483648
 1669 0010 00000000 		.long	0
 1670 0014 00000080 		.long	-2147483648
 1671 0018 00000000 		.long	0
 1672 001c 00000080 		.long	-2147483648
 1673              		.align 32
 1674              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
GAS LISTING /tmp/cce9VX6C.s 			page 53


 1675              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1676              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1677 0020 FFFFFFFF 		.long	-1
 1678 0024 FFFFFF7F 		.long	2147483647
 1679 0028 FFFFFFFF 		.long	-1
 1680 002c FFFFFF7F 		.long	2147483647
 1681 0030 FFFFFFFF 		.long	-1
 1682 0034 FFFFFF7F 		.long	2147483647
 1683 0038 FFFFFFFF 		.long	-1
 1684 003c FFFFFF7F 		.long	2147483647
 1685              		.local	_ZStL8__ioinit
 1686              		.comm	_ZStL8__ioinit,1,1
 1687              		.section	.rodata.cst32,"aM",@progbits,32
 1688              		.align 32
 1689              	.LC0:
 1690 0000 00000000 		.long	0
 1691 0004 0000E0BF 		.long	-1075838976
 1692 0008 00000000 		.long	0
 1693 000c 0000E0BF 		.long	-1075838976
 1694 0010 00000000 		.long	0
 1695 0014 0000E0BF 		.long	-1075838976
 1696 0018 00000000 		.long	0
 1697 001c 0000E0BF 		.long	-1075838976
 1698              		.align 32
 1699              	.LC1:
 1700 0020 9A999999 		.long	2576980378
 1701 0024 9999B9BF 		.long	-1078355559
 1702 0028 9A999999 		.long	2576980378
 1703 002c 9999B9BF 		.long	-1078355559
 1704 0030 9A999999 		.long	2576980378
 1705 0034 9999B9BF 		.long	-1078355559
 1706 0038 9A999999 		.long	2576980378
 1707 003c 9999B9BF 		.long	-1078355559
 1708              		.section	.rodata.cst8,"aM",@progbits,8
 1709              		.align 8
 1710              	.LC2:
 1711 0000 33333333 		.long	858993459
 1712 0004 3333D33F 		.long	1070805811
 1713              		.align 8
 1714              	.LC3:
 1715 0008 9A999999 		.long	2576980378
 1716 000c 9999C93F 		.long	1070176665
 1717              		.section	.rodata.cst32
 1718              		.align 32
 1719              	.LC5:
 1720 0040 83C8C96D 		.long	1841940611
 1721 0044 305FE43F 		.long	1071931184
 1722 0048 83C8C96D 		.long	1841940611
 1723 004c 305FE43F 		.long	1071931184
 1724 0050 83C8C96D 		.long	1841940611
 1725 0054 305FE43F 		.long	1071931184
 1726 0058 83C8C96D 		.long	1841940611
 1727 005c 305FE43F 		.long	1071931184
 1728              		.align 32
 1729              	.LC6:
 1730 0060 00000050 		.long	1342177280
 1731 0064 FB21F93F 		.long	1073291771
GAS LISTING /tmp/cce9VX6C.s 			page 54


 1732 0068 00000050 		.long	1342177280
 1733 006c FB21F93F 		.long	1073291771
 1734 0070 00000050 		.long	1342177280
 1735 0074 FB21F93F 		.long	1073291771
 1736 0078 00000050 		.long	1342177280
 1737 007c FB21F93F 		.long	1073291771
 1738              		.align 32
 1739              	.LC7:
 1740 0080 00000060 		.long	1610612736
 1741 0084 B410513E 		.long	1045500084
 1742 0088 00000060 		.long	1610612736
 1743 008c B410513E 		.long	1045500084
 1744 0090 00000060 		.long	1610612736
 1745 0094 B410513E 		.long	1045500084
 1746 0098 00000060 		.long	1610612736
 1747 009c B410513E 		.long	1045500084
 1748              		.align 32
 1749              	.LC8:
 1750 00a0 075C1433 		.long	856972295
 1751 00a4 26A6913C 		.long	1016178214
 1752 00a8 075C1433 		.long	856972295
 1753 00ac 26A6913C 		.long	1016178214
 1754 00b0 075C1433 		.long	856972295
 1755 00b4 26A6913C 		.long	1016178214
 1756 00b8 075C1433 		.long	856972295
 1757 00bc 26A6913C 		.long	1016178214
 1758              		.align 32
 1759              	.LC9:
 1760 00c0 D0F71011 		.long	286324688
 1761 00c4 1111813F 		.long	1065423121
 1762 00c8 D0F71011 		.long	286324688
 1763 00cc 1111813F 		.long	1065423121
 1764 00d0 D0F71011 		.long	286324688
 1765 00d4 1111813F 		.long	1065423121
 1766 00d8 D0F71011 		.long	286324688
 1767 00dc 1111813F 		.long	1065423121
 1768              		.align 32
 1769              	.LC10:
 1770 00e0 48555555 		.long	1431655752
 1771 00e4 5555C5BF 		.long	-1077586603
 1772 00e8 48555555 		.long	1431655752
 1773 00ec 5555C5BF 		.long	-1077586603
 1774 00f0 48555555 		.long	1431655752
 1775 00f4 5555C5BF 		.long	-1077586603
 1776 00f8 48555555 		.long	1431655752
 1777 00fc 5555C5BF 		.long	-1077586603
 1778              		.align 32
 1779              	.LC11:
 1780 0100 CD9CD11F 		.long	533830861
 1781 0104 FDD8E53D 		.long	1038473469
 1782 0108 CD9CD11F 		.long	533830861
 1783 010c FDD8E53D 		.long	1038473469
 1784 0110 CD9CD11F 		.long	533830861
 1785 0114 FDD8E53D 		.long	1038473469
 1786 0118 CD9CD11F 		.long	533830861
 1787 011c FDD8E53D 		.long	1038473469
 1788              		.align 32
GAS LISTING /tmp/cce9VX6C.s 			page 55


 1789              	.LC12:
 1790 0120 5D1F29A9 		.long	2838044509
 1791 0124 E5E55ABE 		.long	-1101339163
 1792 0128 5D1F29A9 		.long	2838044509
 1793 012c E5E55ABE 		.long	-1101339163
 1794 0130 5D1F29A9 		.long	2838044509
 1795 0134 E5E55ABE 		.long	-1101339163
 1796 0138 5D1F29A9 		.long	2838044509
 1797 013c E5E55ABE 		.long	-1101339163
 1798              		.align 32
 1799              	.LC13:
 1800 0140 A1487D56 		.long	1451051169
 1801 0144 E31DC73E 		.long	1053236707
 1802 0148 A1487D56 		.long	1451051169
 1803 014c E31DC73E 		.long	1053236707
 1804 0150 A1487D56 		.long	1451051169
 1805 0154 E31DC73E 		.long	1053236707
 1806 0158 A1487D56 		.long	1451051169
 1807 015c E31DC73E 		.long	1053236707
 1808              		.align 32
 1809              	.LC14:
 1810 0160 03DFBF19 		.long	432004867
 1811 0164 A0012ABF 		.long	-1087766112
 1812 0168 03DFBF19 		.long	432004867
 1813 016c A0012ABF 		.long	-1087766112
 1814 0170 03DFBF19 		.long	432004867
 1815 0174 A0012ABF 		.long	-1087766112
 1816 0178 03DFBF19 		.long	432004867
 1817 017c A0012ABF 		.long	-1087766112
 1818              		.align 32
 1819              	.LC15:
 1820 0180 914FC116 		.long	381767569
 1821 0184 6CC156BF 		.long	-1084833428
 1822 0188 914FC116 		.long	381767569
 1823 018c 6CC156BF 		.long	-1084833428
 1824 0190 914FC116 		.long	381767569
 1825 0194 6CC156BF 		.long	-1084833428
 1826 0198 914FC116 		.long	381767569
 1827 019c 6CC156BF 		.long	-1084833428
 1828              		.align 32
 1829              	.LC16:
 1830 01a0 4B555555 		.long	1431655755
 1831 01a4 5555A53F 		.long	1067799893
 1832 01a8 4B555555 		.long	1431655755
 1833 01ac 5555A53F 		.long	1067799893
 1834 01b0 4B555555 		.long	1431655755
 1835 01b4 5555A53F 		.long	1067799893
 1836 01b8 4B555555 		.long	1431655755
 1837 01bc 5555A53F 		.long	1067799893
 1838              		.align 32
 1839              	.LC17:
 1840 01c0 9B1A86A0 		.long	2693143195
 1841 01c4 49FAA8BD 		.long	-1112999351
 1842 01c8 9B1A86A0 		.long	2693143195
 1843 01cc 49FAA8BD 		.long	-1112999351
 1844 01d0 9B1A86A0 		.long	2693143195
 1845 01d4 49FAA8BD 		.long	-1112999351
GAS LISTING /tmp/cce9VX6C.s 			page 56


 1846 01d8 9B1A86A0 		.long	2693143195
 1847 01dc 49FAA8BD 		.long	-1112999351
 1848              		.align 32
 1849              	.LC18:
 1850 01e0 053F4E7B 		.long	2068725509
 1851 01e4 9DEE213E 		.long	1042411165
 1852 01e8 053F4E7B 		.long	2068725509
 1853 01ec 9DEE213E 		.long	1042411165
 1854 01f0 053F4E7B 		.long	2068725509
 1855 01f4 9DEE213E 		.long	1042411165
 1856 01f8 053F4E7B 		.long	2068725509
 1857 01fc 9DEE213E 		.long	1042411165
 1858              		.align 32
 1859              	.LC19:
 1860 0200 C64BAC7E 		.long	2125220806
 1861 0204 4F7E92BE 		.long	-1097695665
 1862 0208 C64BAC7E 		.long	2125220806
 1863 020c 4F7E92BE 		.long	-1097695665
 1864 0210 C64BAC7E 		.long	2125220806
 1865 0214 4F7E92BE 		.long	-1097695665
 1866 0218 C64BAC7E 		.long	2125220806
 1867 021c 4F7E92BE 		.long	-1097695665
 1868              		.align 32
 1869              	.LC20:
 1870 0220 F544C819 		.long	432555253
 1871 0224 A001FA3E 		.long	1056571808
 1872 0228 F544C819 		.long	432555253
 1873 022c A001FA3E 		.long	1056571808
 1874 0230 F544C819 		.long	432555253
 1875 0234 A001FA3E 		.long	1056571808
 1876 0238 F544C819 		.long	432555253
 1877 023c A001FA3E 		.long	1056571808
 1878              		.align 32
 1879              	.LC21:
 1880 0240 00000000 		.long	0
 1881 0244 0000E03F 		.long	1071644672
 1882 0248 00000000 		.long	0
 1883 024c 0000E03F 		.long	1071644672
 1884 0250 00000000 		.long	0
 1885 0254 0000E03F 		.long	1071644672
 1886 0258 00000000 		.long	0
 1887 025c 0000E03F 		.long	1071644672
 1888              		.align 32
 1889              	.LC22:
 1890 0260 00000000 		.long	0
 1891 0264 0000F03F 		.long	1072693248
 1892 0268 00000000 		.long	0
 1893 026c 0000F03F 		.long	1072693248
 1894 0270 00000000 		.long	0
 1895 0274 0000F03F 		.long	1072693248
 1896 0278 00000000 		.long	0
 1897 027c 0000F03F 		.long	1072693248
 1898              		.section	.rodata.cst16,"aM",@progbits,16
 1899              		.align 16
 1900              	.LC23:
 1901 0000 01000000 		.quad	1
 1901      00000000 
GAS LISTING /tmp/cce9VX6C.s 			page 57


 1902 0008 01000000 		.quad	1
 1902      00000000 
 1903              		.align 16
 1904              	.LC24:
 1905 0010 00000000 		.quad	36028797018963968
 1905      00008000 
 1906 0018 00000000 		.quad	36028797018963968
 1906      00008000 
 1907              		.align 16
 1908              	.LC25:
 1909 0020 00000000 		.quad	-9007199254740992
 1909      0000E0FF 
 1910 0028 00000000 		.quad	-9007199254740992
 1910      0000E0FF 
 1911              		.align 16
 1912              	.LC26:
 1913 0030 02000000 		.quad	2
 1913      00000000 
 1914 0038 02000000 		.quad	2
 1914      00000000 
 1915              		.section	.rodata.cst32
 1916              		.align 32
 1917              	.LC27:
 1918 0280 33333333 		.long	858993459
 1919 0284 3333D33F 		.long	1070805811
 1920 0288 33333333 		.long	858993459
 1921 028c 3333D33F 		.long	1070805811
 1922 0290 33333333 		.long	858993459
 1923 0294 3333D33F 		.long	1070805811
 1924 0298 33333333 		.long	858993459
 1925 029c 3333D33F 		.long	1070805811
 1926              		.align 32
 1927              	.LC28:
 1928 02a0 9A999999 		.long	2576980378
 1929 02a4 9999C93F 		.long	1070176665
 1930 02a8 9A999999 		.long	2576980378
 1931 02ac 9999C93F 		.long	1070176665
 1932 02b0 9A999999 		.long	2576980378
 1933 02b4 9999C93F 		.long	1070176665
 1934 02b8 9A999999 		.long	2576980378
 1935 02bc 9999C93F 		.long	1070176665
 1936              		.align 32
 1937              	.LC29:
 1938 02c0 CDCCCCCC 		.long	3435973837
 1939 02c4 CCCCCC3F 		.long	1070386380
 1940 02c8 CDCCCCCC 		.long	3435973837
 1941 02cc CCCCCC3F 		.long	1070386380
 1942 02d0 CDCCCCCC 		.long	3435973837
 1943 02d4 CCCCCC3F 		.long	1070386380
 1944 02d8 CDCCCCCC 		.long	3435973837
 1945 02dc CCCCCC3F 		.long	1070386380
 1946              		.align 32
 1947              	.LC30:
 1948 02e0 33333333 		.long	858993459
 1949 02e4 3333B33F 		.long	1068708659
 1950 02e8 33333333 		.long	858993459
 1951 02ec 3333B33F 		.long	1068708659
GAS LISTING /tmp/cce9VX6C.s 			page 58


 1952 02f0 33333333 		.long	858993459
 1953 02f4 3333B33F 		.long	1068708659
 1954 02f8 33333333 		.long	858993459
 1955 02fc 3333B33F 		.long	1068708659
 1956              		.align 32
 1957              	.LC31:
 1958 0300 33333333 		.long	858993459
 1959 0304 3333F33F 		.long	1072902963
 1960 0308 33333333 		.long	858993459
 1961 030c 3333F33F 		.long	1072902963
 1962 0310 33333333 		.long	858993459
 1963 0314 3333F33F 		.long	1072902963
 1964 0318 33333333 		.long	858993459
 1965 031c 3333F33F 		.long	1072902963
 1966              		.align 32
 1967              	.LC32:
 1968 0320 CDCCCCCC 		.long	3435973837
 1969 0324 CCCCECBF 		.long	-1075000116
 1970 0328 CDCCCCCC 		.long	3435973837
 1971 032c CCCCECBF 		.long	-1075000116
 1972 0330 CDCCCCCC 		.long	3435973837
 1973 0334 CCCCECBF 		.long	-1075000116
 1974 0338 CDCCCCCC 		.long	3435973837
 1975 033c CCCCECBF 		.long	-1075000116
 1976              		.align 32
 1977              	.LC33:
 1978 0340 33333333 		.long	858993459
 1979 0344 3333E33F 		.long	1071854387
 1980 0348 33333333 		.long	858993459
 1981 034c 3333E33F 		.long	1071854387
 1982 0350 33333333 		.long	858993459
 1983 0354 3333E33F 		.long	1071854387
 1984 0358 33333333 		.long	858993459
 1985 035c 3333E33F 		.long	1071854387
 1986              		.align 32
 1987              	.LC34:
 1988 0360 DA4B682F 		.long	795364314
 1989 0364 A1BDF43F 		.long	1073003937
 1990 0368 DA4B682F 		.long	795364314
 1991 036c A1BDF43F 		.long	1073003937
 1992 0370 DA4B682F 		.long	795364314
 1993 0374 A1BDF43F 		.long	1073003937
 1994 0378 DA4B682F 		.long	795364314
 1995 037c A1BDF43F 		.long	1073003937
 1996              		.align 32
 1997              	.LC35:
 1998 0380 D94B682F 		.long	795364313
 1999 0384 A1BD04C0 		.long	-1073431135
 2000 0388 D94B682F 		.long	795364313
 2001 038c A1BD04C0 		.long	-1073431135
 2002 0390 D94B682F 		.long	795364313
 2003 0394 A1BD04C0 		.long	-1073431135
 2004 0398 D94B682F 		.long	795364313
 2005 039c A1BD04C0 		.long	-1073431135
 2006              		.align 32
 2007              	.LC36:
 2008 03a0 00000000 		.long	0
GAS LISTING /tmp/cce9VX6C.s 			page 59


 2009 03a4 00000440 		.long	1074003968
 2010 03a8 00000000 		.long	0
 2011 03ac 00000440 		.long	1074003968
 2012 03b0 00000000 		.long	0
 2013 03b4 00000440 		.long	1074003968
 2014 03b8 00000000 		.long	0
 2015 03bc 00000440 		.long	1074003968
 2016              		.align 32
 2017              	.LC37:
 2018 03c0 16A1BD84 		.long	2227020054
 2019 03c4 F612CABF 		.long	-1077275914
 2020 03c8 16A1BD84 		.long	2227020054
 2021 03cc F612CABF 		.long	-1077275914
 2022 03d0 16A1BD84 		.long	2227020054
 2023 03d4 F612CABF 		.long	-1077275914
 2024 03d8 16A1BD84 		.long	2227020054
 2025 03dc F612CABF 		.long	-1077275914
 2026              		.align 32
 2027              	.LC38:
 2028 03e0 00000000 		.long	0
 2029 03e4 00A0AF3F 		.long	1068474368
 2030 03e8 00000000 		.long	0
 2031 03ec 00A0AF3F 		.long	1068474368
 2032 03f0 00000000 		.long	0
 2033 03f4 00A0AF3F 		.long	1068474368
 2034 03f8 00000000 		.long	0
 2035 03fc 00A0AF3F 		.long	1068474368
 2036              		.align 32
 2037              	.LC39:
 2038 0400 B397D05E 		.long	1590728627
 2039 0404 429FD93F 		.long	1071226690
 2040 0408 B397D05E 		.long	1590728627
 2041 040c 429FD93F 		.long	1071226690
 2042 0410 B397D05E 		.long	1590728627
 2043 0414 429FD93F 		.long	1071226690
 2044 0418 B397D05E 		.long	1590728627
 2045 041c 429FD93F 		.long	1071226690
 2046              		.align 32
 2047              	.LC40:
 2048 0420 BD84F612 		.long	318145725
 2049 0424 DA4BA53F 		.long	1067797466
 2050 0428 BD84F612 		.long	318145725
 2051 042c DA4BA53F 		.long	1067797466
 2052 0430 BD84F612 		.long	318145725
 2053 0434 DA4BA53F 		.long	1067797466
 2054 0438 BD84F612 		.long	318145725
 2055 043c DA4BA53F 		.long	1067797466
 2056              		.align 32
 2057              	.LC41:
 2058 0440 00000000 		.long	0
 2059 0444 00E0D53F 		.long	1070981120
 2060 0448 00000000 		.long	0
 2061 044c 00E0D53F 		.long	1070981120
 2062 0450 00000000 		.long	0
 2063 0454 00E0D53F 		.long	1070981120
 2064 0458 00000000 		.long	0
 2065 045c 00E0D53F 		.long	1070981120
GAS LISTING /tmp/cce9VX6C.s 			page 60


 2066              		.align 32
 2067              	.LC42:
 2068 0460 347B09ED 		.long	3976821556
 2069 0464 25349E3F 		.long	1067332645
 2070 0468 347B09ED 		.long	3976821556
 2071 046c 25349E3F 		.long	1067332645
 2072 0470 347B09ED 		.long	3976821556
 2073 0474 25349E3F 		.long	1067332645
 2074 0478 347B09ED 		.long	3976821556
 2075 047c 25349E3F 		.long	1067332645
 2076              		.align 32
 2077              	.LC43:
 2078 0480 00000000 		.long	0
 2079 0484 0000EC3F 		.long	1072431104
 2080 0488 00000000 		.long	0
 2081 048c 0000EC3F 		.long	1072431104
 2082 0490 00000000 		.long	0
 2083 0494 0000EC3F 		.long	1072431104
 2084 0498 00000000 		.long	0
 2085 049c 0000EC3F 		.long	1072431104
 2086              		.align 32
 2087              	.LC44:
 2088 04a0 B0B4DA85 		.long	2245702832
 2089 04a4 A680D23F 		.long	1070760102
 2090 04a8 B0B4DA85 		.long	2245702832
 2091 04ac A680D23F 		.long	1070760102
 2092 04b0 B0B4DA85 		.long	2245702832
 2093 04b4 A680D23F 		.long	1070760102
 2094 04b8 B0B4DA85 		.long	2245702832
 2095 04bc A680D23F 		.long	1070760102
 2096              		.align 32
 2097              	.LC45:
 2098 04c0 27691676 		.long	1981180199
 2099 04c4 9FEFCA3F 		.long	1070264223
 2100 04c8 27691676 		.long	1981180199
 2101 04cc 9FEFCA3F 		.long	1070264223
 2102 04d0 27691676 		.long	1981180199
 2103 04d4 9FEFCA3F 		.long	1070264223
 2104 04d8 27691676 		.long	1981180199
 2105 04dc 9FEFCA3F 		.long	1070264223
 2106              		.align 32
 2107              	.LC46:
 2108 04e0 7EB22B2E 		.long	774615678
 2109 04e4 D0C3D93F 		.long	1071236048
 2110 04e8 7EB22B2E 		.long	774615678
 2111 04ec D0C3D93F 		.long	1071236048
 2112 04f0 7EB22B2E 		.long	774615678
 2113 04f4 D0C3D93F 		.long	1071236048
 2114 04f8 7EB22B2E 		.long	774615678
 2115 04fc D0C3D93F 		.long	1071236048
 2116              		.align 32
 2117              	.LC47:
 2118 0500 E890B943 		.long	1136234728
 2119 0504 E60EB93F 		.long	1069092582
 2120 0508 E890B943 		.long	1136234728
 2121 050c E60EB93F 		.long	1069092582
 2122 0510 E890B943 		.long	1136234728
GAS LISTING /tmp/cce9VX6C.s 			page 61


 2123 0514 E60EB93F 		.long	1069092582
 2124 0518 E890B943 		.long	1136234728
 2125 051c E60EB93F 		.long	1069092582
 2126              		.align 32
 2127              	.LC48:
 2128 0520 48A5D52E 		.long	785753416
 2129 0524 3405A4BF 		.long	-1079769804
 2130 0528 48A5D52E 		.long	785753416
 2131 052c 3405A4BF 		.long	-1079769804
 2132 0530 48A5D52E 		.long	785753416
 2133 0534 3405A4BF 		.long	-1079769804
 2134 0538 48A5D52E 		.long	785753416
 2135 053c 3405A4BF 		.long	-1079769804
 2136              		.align 32
 2137              	.LC49:
 2138 0540 82244992 		.long	2454267010
 2139 0544 24C9933F 		.long	1066649892
 2140 0548 82244992 		.long	2454267010
 2141 054c 24C9933F 		.long	1066649892
 2142 0550 82244992 		.long	2454267010
 2143 0554 24C9933F 		.long	1066649892
 2144 0558 82244992 		.long	2454267010
 2145 055c 24C9933F 		.long	1066649892
 2146              		.align 32
 2147              	.LC50:
 2148 0560 06F37686 		.long	2255942406
 2149 0564 C47CA13F 		.long	1067547844
 2150 0568 06F37686 		.long	2255942406
 2151 056c C47CA13F 		.long	1067547844
 2152 0570 06F37686 		.long	2255942406
 2153 0574 C47CA13F 		.long	1067547844
 2154 0578 06F37686 		.long	2255942406
 2155 057c C47CA13F 		.long	1067547844
 2156              		.align 32
 2157              	.LC51:
 2158 0580 1A55F19A 		.long	2599507226
 2159 0584 DB1D93BF 		.long	-1080877605
 2160 0588 1A55F19A 		.long	2599507226
 2161 058c DB1D93BF 		.long	-1080877605
 2162 0590 1A55F19A 		.long	2599507226
 2163 0594 DB1D93BF 		.long	-1080877605
 2164 0598 1A55F19A 		.long	2599507226
 2165 059c DB1D93BF 		.long	-1080877605
 2166              		.align 32
 2167              	.LC52:
 2168 05a0 64599665 		.long	1704352100
 2169 05a4 5996713F 		.long	1064408665
 2170 05a8 64599665 		.long	1704352100
 2171 05ac 5996713F 		.long	1064408665
 2172 05b0 64599665 		.long	1704352100
 2173 05b4 5996713F 		.long	1064408665
 2174 05b8 64599665 		.long	1704352100
 2175 05bc 5996713F 		.long	1064408665
 2176              		.align 32
 2177              	.LC53:
 2178 05c0 95D626E8 		.long	3894859413
 2179 05c4 0B2E113E 		.long	1041313291
GAS LISTING /tmp/cce9VX6C.s 			page 62


 2180 05c8 95D626E8 		.long	3894859413
 2181 05cc 0B2E113E 		.long	1041313291
 2182 05d0 95D626E8 		.long	3894859413
 2183 05d4 0B2E113E 		.long	1041313291
 2184 05d8 95D626E8 		.long	3894859413
 2185 05dc 0B2E113E 		.long	1041313291
 2186              		.section	.rodata.cst16
 2187              		.align 16
 2188              	.LC54:
 2189 0040 FFFFFFFF 		.quad	4503599627370495
 2189      FFFF0F00 
 2190 0048 FFFFFFFF 		.quad	4503599627370495
 2190      FFFF0F00 
 2191              		.align 16
 2192              	.LC55:
 2193 0050 00000000 		.quad	4602678819172646912
 2193      0000E03F 
 2194 0058 00000000 		.quad	4602678819172646912
 2194      0000E03F 
 2195              		.align 16
 2196              	.LC56:
 2197 0060 00000000 		.quad	4841369599423283200
 2197      00003043 
 2198 0068 00000000 		.quad	4841369599423283200
 2198      00003043 
 2199              		.section	.rodata.cst32
 2200              		.align 32
 2201              	.LC57:
 2202 05e0 FF030000 		.long	1023
 2203 05e4 00003043 		.long	1127219200
 2204 05e8 FF030000 		.long	1023
 2205 05ec 00003043 		.long	1127219200
 2206 05f0 FF030000 		.long	1023
 2207 05f4 00003043 		.long	1127219200
 2208 05f8 FF030000 		.long	1023
 2209 05fc 00003043 		.long	1127219200
 2210              		.align 32
 2211              	.LC58:
 2212 0600 CD3B7F66 		.long	1719614413
 2213 0604 9EA0E63F 		.long	1072079006
 2214 0608 CD3B7F66 		.long	1719614413
 2215 060c 9EA0E63F 		.long	1072079006
 2216 0610 CD3B7F66 		.long	1719614413
 2217 0614 9EA0E63F 		.long	1072079006
 2218 0618 CD3B7F66 		.long	1719614413
 2219 061c 9EA0E63F 		.long	1072079006
 2220              		.align 32
 2221              	.LC59:
 2222 0620 4DC84B92 		.long	2454440013
 2223 0624 D6EF3140 		.long	1077014486
 2224 0628 4DC84B92 		.long	2454440013
 2225 062c D6EF3140 		.long	1077014486
 2226 0630 4DC84B92 		.long	2454440013
 2227 0634 D6EF3140 		.long	1077014486
 2228 0638 4DC84B92 		.long	2454440013
 2229 063c D6EF3140 		.long	1077014486
 2230              		.align 32
GAS LISTING /tmp/cce9VX6C.s 			page 63


 2231              	.LC60:
 2232 0640 F8DC7E7D 		.long	2105466104
 2233 0644 63D51E40 		.long	1075762531
 2234 0648 F8DC7E7D 		.long	2105466104
 2235 064c 63D51E40 		.long	1075762531
 2236 0650 F8DC7E7D 		.long	2105466104
 2237 0654 63D51E40 		.long	1075762531
 2238 0658 F8DC7E7D 		.long	2105466104
 2239 065c 63D51E40 		.long	1075762531
 2240              		.align 32
 2241              	.LC61:
 2242 0660 B01BC393 		.long	2479037360
 2243 0664 C2B41A3F 		.long	1058714818
 2244 0668 B01BC393 		.long	2479037360
 2245 066c C2B41A3F 		.long	1058714818
 2246 0670 B01BC393 		.long	2479037360
 2247 0674 C2B41A3F 		.long	1058714818
 2248 0678 B01BC393 		.long	2479037360
 2249 067c C2B41A3F 		.long	1058714818
 2250              		.align 32
 2251              	.LC62:
 2252 0680 F252563F 		.long	1062621938
 2253 0684 F5D6DF3F 		.long	1071634165
 2254 0688 F252563F 		.long	1062621938
 2255 068c F5D6DF3F 		.long	1071634165
 2256 0690 F252563F 		.long	1062621938
 2257 0694 F5D6DF3F 		.long	1071634165
 2258 0698 F252563F 		.long	1062621938
 2259 069c F5D6DF3F 		.long	1071634165
 2260              		.align 32
 2261              	.LC63:
 2262 06a0 116992ED 		.long	3985795345
 2263 06a4 BAD21240 		.long	1074975418
 2264 06a8 116992ED 		.long	3985795345
 2265 06ac BAD21240 		.long	1074975418
 2266 06b0 116992ED 		.long	3985795345
 2267 06b4 BAD21240 		.long	1074975418
 2268 06b8 116992ED 		.long	3985795345
 2269 06bc BAD21240 		.long	1074975418
 2270              		.align 32
 2271              	.LC64:
 2272 06c0 2EEB3EC6 		.long	3326012206
 2273 06c4 72FF2C40 		.long	1076690802
 2274 06c8 2EEB3EC6 		.long	3326012206
 2275 06cc 72FF2C40 		.long	1076690802
 2276 06d0 2EEB3EC6 		.long	3326012206
 2277 06d4 72FF2C40 		.long	1076690802
 2278 06d8 2EEB3EC6 		.long	3326012206
 2279 06dc 72FF2C40 		.long	1076690802
 2280              		.align 32
 2281              	.LC65:
 2282 06e0 21AE5EEB 		.long	3948850721
 2283 06e4 E2C95140 		.long	1079101922
 2284 06e8 21AE5EEB 		.long	3948850721
 2285 06ec E2C95140 		.long	1079101922
 2286 06f0 21AE5EEB 		.long	3948850721
 2287 06f4 E2C95140 		.long	1079101922
GAS LISTING /tmp/cce9VX6C.s 			page 64


 2288 06f8 21AE5EEB 		.long	3948850721
 2289 06fc E2C95140 		.long	1079101922
 2290              		.align 32
 2291              	.LC66:
 2292 0700 B2251F9E 		.long	2652841394
 2293 0704 0A203740 		.long	1077354506
 2294 0708 B2251F9E 		.long	2652841394
 2295 070c 0A203740 		.long	1077354506
 2296 0710 B2251F9E 		.long	2652841394
 2297 0714 0A203740 		.long	1077354506
 2298 0718 B2251F9E 		.long	2652841394
 2299 071c 0A203740 		.long	1077354506
 2300              		.align 32
 2301              	.LC67:
 2302 0720 8EEF97AE 		.long	2929192846
 2303 0724 20932640 		.long	1076269856
 2304 0728 8EEF97AE 		.long	2929192846
 2305 072c 20932640 		.long	1076269856
 2306 0730 8EEF97AE 		.long	2929192846
 2307 0734 20932640 		.long	1076269856
 2308 0738 8EEF97AE 		.long	2929192846
 2309 073c 20932640 		.long	1076269856
 2310              		.align 32
 2311              	.LC68:
 2312 0740 33C0194E 		.long	1310310451
 2313 0744 2C9D4640 		.long	1078369580
 2314 0748 33C0194E 		.long	1310310451
 2315 074c 2C9D4640 		.long	1078369580
 2316 0750 33C0194E 		.long	1310310451
 2317 0754 2C9D4640 		.long	1078369580
 2318 0758 33C0194E 		.long	1310310451
 2319 075c 2C9D4640 		.long	1078369580
 2320              		.align 32
 2321              	.LC69:
 2322 0760 BDBD26A3 		.long	2737225149
 2323 0764 33BF5440 		.long	1079295795
 2324 0768 BDBD26A3 		.long	2737225149
 2325 076c 33BF5440 		.long	1079295795
 2326 0770 BDBD26A3 		.long	2737225149
 2327 0774 33BF5440 		.long	1079295795
 2328 0778 BDBD26A3 		.long	2737225149
 2329 077c 33BF5440 		.long	1079295795
 2330              		.align 32
 2331              	.LC70:
 2332 0780 A80C615C 		.long	1549864104
 2333 0784 10D02BBF 		.long	-1087647728
 2334 0788 A80C615C 		.long	1549864104
 2335 078c 10D02BBF 		.long	-1087647728
 2336 0790 A80C615C 		.long	1549864104
 2337 0794 10D02BBF 		.long	-1087647728
 2338 0798 A80C615C 		.long	1549864104
 2339 079c 10D02BBF 		.long	-1087647728
 2340              		.align 32
 2341              	.LC71:
 2342 07a0 00000000 		.long	0
 2343 07a4 0030E63F 		.long	1072050176
 2344 07a8 00000000 		.long	0
GAS LISTING /tmp/cce9VX6C.s 			page 65


 2345 07ac 0030E63F 		.long	1072050176
 2346 07b0 00000000 		.long	0
 2347 07b4 0030E63F 		.long	1072050176
 2348 07b8 00000000 		.long	0
 2349 07bc 0030E63F 		.long	1072050176
 2350              		.align 32
 2351              	.LC72:
 2352 07c0 00000000 		.long	0
 2353 07c4 00001000 		.long	1048576
 2354 07c8 00000000 		.long	0
 2355 07cc 00001000 		.long	1048576
 2356 07d0 00000000 		.long	0
 2357 07d4 00001000 		.long	1048576
 2358 07d8 00000000 		.long	0
 2359 07dc 00001000 		.long	1048576
 2360              		.align 32
 2361              	.LC73:
 2362 07e0 00000020 		.long	536870912
 2363 07e4 2000F87F 		.long	2146959392
 2364 07e8 00000020 		.long	536870912
 2365 07ec 2000F87F 		.long	2146959392
 2366 07f0 00000020 		.long	536870912
 2367 07f4 2000F87F 		.long	2146959392
 2368 07f8 00000020 		.long	536870912
 2369 07fc 2000F87F 		.long	2146959392
 2370              		.section	.rodata.cst16
 2371              		.align 16
 2372              	.LC74:
 2373 0070 00000000 		.long	0
 2374 0074 0000F07F 		.long	2146435072
 2375 0078 00000000 		.long	0
 2376 007c 0000F07F 		.long	2146435072
 2377              		.align 16
 2378              	.LC75:
 2379 0080 00000000 		.quad	9218868437227405312
 2379      0000F07F 
 2380 0088 00000000 		.quad	9218868437227405312
 2380      0000F07F 
 2381              		.section	.rodata.cst32
 2382              		.align 32
 2383              	.LC76:
 2384 0800 FE822B65 		.long	1697350398
 2385 0804 4715F73F 		.long	1073157447
 2386 0808 FE822B65 		.long	1697350398
 2387 080c 4715F73F 		.long	1073157447
 2388 0810 FE822B65 		.long	1697350398
 2389 0814 4715F73F 		.long	1073157447
 2390 0818 FE822B65 		.long	1697350398
 2391 081c 4715F73F 		.long	1073157447
 2392              		.align 32
 2393              	.LC77:
 2394 0820 00000000 		.long	0
 2395 0824 402EE63F 		.long	1072049728
 2396 0828 00000000 		.long	0
 2397 082c 402EE63F 		.long	1072049728
 2398 0830 00000000 		.long	0
 2399 0834 402EE63F 		.long	1072049728
GAS LISTING /tmp/cce9VX6C.s 			page 66


 2400 0838 00000000 		.long	0
 2401 083c 402EE63F 		.long	1072049728
 2402              		.align 32
 2403              	.LC78:
 2404 0840 CAAB79CF 		.long	3480857546
 2405 0844 D1F7B73E 		.long	1052243921
 2406 0848 CAAB79CF 		.long	3480857546
 2407 084c D1F7B73E 		.long	1052243921
 2408 0850 CAAB79CF 		.long	3480857546
 2409 0854 D1F7B73E 		.long	1052243921
 2410 0858 CAAB79CF 		.long	3480857546
 2411 085c D1F7B73E 		.long	1052243921
 2412              		.align 32
 2413              	.LC79:
 2414 0860 55555555 		.long	1431655765
 2415 0864 5555C53F 		.long	1069897045
 2416 0868 55555555 		.long	1431655765
 2417 086c 5555C53F 		.long	1069897045
 2418 0870 55555555 		.long	1431655765
 2419 0874 5555C53F 		.long	1069897045
 2420 0878 55555555 		.long	1431655765
 2421 087c 5555C53F 		.long	1069897045
 2422              		.align 32
 2423              	.LC80:
 2424 0880 11111111 		.long	286331153
 2425 0884 1111813F 		.long	1065423121
 2426 0888 11111111 		.long	286331153
 2427 088c 1111813F 		.long	1065423121
 2428 0890 11111111 		.long	286331153
 2429 0894 1111813F 		.long	1065423121
 2430 0898 11111111 		.long	286331153
 2431 089c 1111813F 		.long	1065423121
 2432              		.align 32
 2433              	.LC81:
 2434 08a0 55555555 		.long	1431655765
 2435 08a4 5555A53F 		.long	1067799893
 2436 08a8 55555555 		.long	1431655765
 2437 08ac 5555A53F 		.long	1067799893
 2438 08b0 55555555 		.long	1431655765
 2439 08b4 5555A53F 		.long	1067799893
 2440 08b8 55555555 		.long	1431655765
 2441 08bc 5555A53F 		.long	1067799893
 2442              		.align 32
 2443              	.LC82:
 2444 08c0 1AA0011A 		.long	436314138
 2445 08c4 A0012A3F 		.long	1059717536
 2446 08c8 1AA0011A 		.long	436314138
 2447 08cc A0012A3F 		.long	1059717536
 2448 08d0 1AA0011A 		.long	436314138
 2449 08d4 A0012A3F 		.long	1059717536
 2450 08d8 1AA0011A 		.long	436314138
 2451 08dc A0012A3F 		.long	1059717536
 2452              		.align 32
 2453              	.LC83:
 2454 08e0 176CC116 		.long	381774871
 2455 08e4 6CC1563F 		.long	1062650220
 2456 08e8 176CC116 		.long	381774871
GAS LISTING /tmp/cce9VX6C.s 			page 67


 2457 08ec 6CC1563F 		.long	1062650220
 2458 08f0 176CC116 		.long	381774871
 2459 08f4 6CC1563F 		.long	1062650220
 2460 08f8 176CC116 		.long	381774871
 2461 08fc 6CC1563F 		.long	1062650220
 2462              		.align 32
 2463              	.LC84:
 2464 0900 34C756A5 		.long	2773927732
 2465 0904 E31DC73E 		.long	1053236707
 2466 0908 34C756A5 		.long	2773927732
 2467 090c E31DC73E 		.long	1053236707
 2468 0910 34C756A5 		.long	2773927732
 2469 0914 E31DC73E 		.long	1053236707
 2470 0918 34C756A5 		.long	2773927732
 2471 091c E31DC73E 		.long	1053236707
 2472              		.align 32
 2473              	.LC85:
 2474 0920 1AA0011A 		.long	436314138
 2475 0924 A001FA3E 		.long	1056571808
 2476 0928 1AA0011A 		.long	436314138
 2477 092c A001FA3E 		.long	1056571808
 2478 0930 1AA0011A 		.long	436314138
 2479 0934 A001FA3E 		.long	1056571808
 2480 0938 1AA0011A 		.long	436314138
 2481 093c A001FA3E 		.long	1056571808
 2482              		.align 32
 2483              	.LC86:
 2484 0940 E444F567 		.long	1744127204
 2485 0944 45E65A3E 		.long	1046144581
 2486 0948 E444F567 		.long	1744127204
 2487 094c 45E65A3E 		.long	1046144581
 2488 0950 E444F567 		.long	1744127204
 2489 0954 45E65A3E 		.long	1046144581
 2490 0958 E444F567 		.long	1744127204
 2491 095c 45E65A3E 		.long	1046144581
 2492              		.align 32
 2493              	.LC87:
 2494 0960 5C9F78B7 		.long	3078135644
 2495 0964 4F7E923E 		.long	1049787983
 2496 0968 5C9F78B7 		.long	3078135644
 2497 096c 4F7E923E 		.long	1049787983
 2498 0970 5C9F78B7 		.long	3078135644
 2499 0974 4F7E923E 		.long	1049787983
 2500 0978 5C9F78B7 		.long	3078135644
 2501 097c 4F7E923E 		.long	1049787983
 2502              		.align 32
 2503              	.LC88:
 2504 0980 096DA813 		.long	329805065
 2505 0984 4612E63D 		.long	1038488134
 2506 0988 096DA813 		.long	329805065
 2507 098c 4612E63D 		.long	1038488134
 2508 0990 096DA813 		.long	329805065
 2509 0994 4612E63D 		.long	1038488134
 2510 0998 096DA813 		.long	329805065
 2511 099c 4612E63D 		.long	1038488134
 2512              		.align 32
 2513              	.LC89:
GAS LISTING /tmp/cce9VX6C.s 			page 68


 2514 09a0 98D8F8EF 		.long	4026063000
 2515 09a4 D8EE213E 		.long	1042411224
 2516 09a8 98D8F8EF 		.long	4026063000
 2517 09ac D8EE213E 		.long	1042411224
 2518 09b0 98D8F8EF 		.long	4026063000
 2519 09b4 D8EE213E 		.long	1042411224
 2520 09b8 98D8F8EF 		.long	4026063000
 2521 09bc D8EE213E 		.long	1042411224
 2522              		.align 32
 2523              	.LC90:
 2524 09c0 85EB51B8 		.long	3092376453
 2525 09c4 1E238640 		.long	1082532638
 2526 09c8 85EB51B8 		.long	3092376453
 2527 09cc 1E238640 		.long	1082532638
 2528 09d0 85EB51B8 		.long	3092376453
 2529 09d4 1E238640 		.long	1082532638
 2530 09d8 85EB51B8 		.long	3092376453
 2531 09dc 1E238640 		.long	1082532638
 2532              		.align 32
 2533              	.LC91:
 2534 09e0 2D431CEB 		.long	3944497965
 2535 09e4 E2361A3F 		.long	1058682594
 2536 09e8 2D431CEB 		.long	3944497965
 2537 09ec E2361A3F 		.long	1058682594
 2538 09f0 2D431CEB 		.long	3944497965
 2539 09f4 E2361A3F 		.long	1058682594
 2540 09f8 2D431CEB 		.long	3944497965
 2541 09fc E2361A3F 		.long	1058682594
 2542              		.align 32
 2543              	.LC92:
 2544 0a00 00000000 		.long	0
 2545 0a04 00001440 		.long	1075052544
 2546 0a08 00000000 		.long	0
 2547 0a0c 00001440 		.long	1075052544
 2548 0a10 00000000 		.long	0
 2549 0a14 00001440 		.long	1075052544
 2550 0a18 00000000 		.long	0
 2551 0a1c 00001440 		.long	1075052544
 2552              		.align 32
 2553              	.LC93:
 2554 0a20 9A999999 		.long	2576980378
 2555 0a24 9999E93F 		.long	1072273817
 2556 0a28 9A999999 		.long	2576980378
 2557 0a2c 9999E93F 		.long	1072273817
 2558 0a30 9A999999 		.long	2576980378
 2559 0a34 9999E93F 		.long	1072273817
 2560 0a38 9A999999 		.long	2576980378
 2561 0a3c 9999E93F 		.long	1072273817
 2562              		.align 32
 2563              	.LC94:
 2564 0a40 00000000 		.long	0
 2565 0a44 00408F40 		.long	1083129856
 2566 0a48 00000000 		.long	0
 2567 0a4c 00408F40 		.long	1083129856
 2568 0a50 00000000 		.long	0
 2569 0a54 00408F40 		.long	1083129856
 2570 0a58 00000000 		.long	0
GAS LISTING /tmp/cce9VX6C.s 			page 69


 2571 0a5c 00408F40 		.long	1083129856
 2572              		.section	.rodata.cst8
 2573              		.align 8
 2574              	.LC95:
 2575 0010 182D4454 		.long	1413754136
 2576 0014 FB211940 		.long	1075388923
 2577              		.align 8
 2578              	.LC96:
 2579 0018 00000000 		.long	0
 2580 001c 00009040 		.long	1083179008
 2581              		.section	.rodata.cst16
 2582              		.align 16
 2583              	.LC98:
 2584 0090 01000000 		.quad	4294967297
 2584      01000000 
 2585 0098 01000000 		.quad	4294967297
 2585      01000000 
 2586              		.section	.rodata.cst32
 2587              		.align 32
 2588              	.LC99:
 2589 0a60 182D4454 		.long	1413754136
 2590 0a64 FB211940 		.long	1075388923
 2591 0a68 182D4454 		.long	1413754136
 2592 0a6c FB211940 		.long	1075388923
 2593 0a70 182D4454 		.long	1413754136
 2594 0a74 FB211940 		.long	1075388923
 2595 0a78 182D4454 		.long	1413754136
 2596 0a7c FB211940 		.long	1075388923
 2597              		.align 32
 2598              	.LC100:
 2599 0a80 814EE62E 		.long	786845313
 2600 0a84 0BEBB940 		.long	1085926155
 2601 0a88 814EE62E 		.long	786845313
 2602 0a8c 0BEBB940 		.long	1085926155
 2603 0a90 814EE62E 		.long	786845313
 2604 0a94 0BEBB940 		.long	1085926155
 2605 0a98 814EE62E 		.long	786845313
 2606 0a9c 0BEBB940 		.long	1085926155
 2607              		.align 32
 2608              	.LC101:
 2609 0aa0 7B14AE47 		.long	1202590843
 2610 0aa4 E17A843F 		.long	1065646817
 2611 0aa8 7B14AE47 		.long	1202590843
 2612 0aac E17A843F 		.long	1065646817
 2613 0ab0 7B14AE47 		.long	1202590843
 2614 0ab4 E17A843F 		.long	1065646817
 2615 0ab8 7B14AE47 		.long	1202590843
 2616 0abc E17A843F 		.long	1065646817
 2617              		.align 32
 2618              	.LC102:
 2619 0ac0 182D4454 		.long	1413754136
 2620 0ac4 FB21B940 		.long	1085874683
 2621 0ac8 182D4454 		.long	1413754136
 2622 0acc FB21B940 		.long	1085874683
 2623 0ad0 182D4454 		.long	1413754136
 2624 0ad4 FB21B940 		.long	1085874683
 2625 0ad8 182D4454 		.long	1413754136
GAS LISTING /tmp/cce9VX6C.s 			page 70


 2626 0adc FB21B940 		.long	1085874683
 2627              		.section	.rodata.cst16
 2628              		.align 16
 2629              	.LC105:
 2630 00a0 FFFFFFFF 		.quad	-1
 2630      FFFFFFFF 
 2631 00a8 FFFFFFFF 		.quad	-1
 2631      FFFFFFFF 
 2632              		.hidden	__dso_handle
 2633              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2634              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cce9VX6C.s 			page 71


DEFINED SYMBOLS
                            *ABS*:0000000000000000 duffing_RKCK45.cpp
     /tmp/cce9VX6C.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cce9VX6C.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cce9VX6C.s:81     .text.startup:0000000000000000 main
     /tmp/cce9VX6C.s:1664   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/cce9VX6C.s:1676   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cce9VX6C.s:1641   .text.startup:00000000000023c0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cce9VX6C.s:1689   .rodata.cst32:0000000000000000 .LC0
     /tmp/cce9VX6C.s:1699   .rodata.cst32:0000000000000020 .LC1
     /tmp/cce9VX6C.s:1710   .rodata.cst8:0000000000000000 .LC2
     /tmp/cce9VX6C.s:1714   .rodata.cst8:0000000000000008 .LC3
     /tmp/cce9VX6C.s:2372   .rodata.cst16:0000000000000070 .LC74
     /tmp/cce9VX6C.s:2608   .rodata.cst32:0000000000000aa0 .LC101
     /tmp/cce9VX6C.s:2618   .rodata.cst32:0000000000000ac0 .LC102
     /tmp/cce9VX6C.s:1719   .rodata.cst32:0000000000000040 .LC5
     /tmp/cce9VX6C.s:1739   .rodata.cst32:0000000000000080 .LC7
     /tmp/cce9VX6C.s:1729   .rodata.cst32:0000000000000060 .LC6
     /tmp/cce9VX6C.s:1749   .rodata.cst32:00000000000000a0 .LC8
     /tmp/cce9VX6C.s:1779   .rodata.cst32:0000000000000100 .LC11
     /tmp/cce9VX6C.s:1759   .rodata.cst32:00000000000000c0 .LC9
     /tmp/cce9VX6C.s:1839   .rodata.cst32:00000000000001c0 .LC17
     /tmp/cce9VX6C.s:1789   .rodata.cst32:0000000000000120 .LC12
     /tmp/cce9VX6C.s:1769   .rodata.cst32:00000000000000e0 .LC10
     /tmp/cce9VX6C.s:1849   .rodata.cst32:00000000000001e0 .LC18
     /tmp/cce9VX6C.s:1799   .rodata.cst32:0000000000000140 .LC13
     /tmp/cce9VX6C.s:1809   .rodata.cst32:0000000000000160 .LC14
     /tmp/cce9VX6C.s:1819   .rodata.cst32:0000000000000180 .LC15
     /tmp/cce9VX6C.s:1829   .rodata.cst32:00000000000001a0 .LC16
     /tmp/cce9VX6C.s:1859   .rodata.cst32:0000000000000200 .LC19
     /tmp/cce9VX6C.s:1869   .rodata.cst32:0000000000000220 .LC20
     /tmp/cce9VX6C.s:1879   .rodata.cst32:0000000000000240 .LC21
     /tmp/cce9VX6C.s:1889   .rodata.cst32:0000000000000260 .LC22
     /tmp/cce9VX6C.s:1908   .rodata.cst16:0000000000000020 .LC25
     /tmp/cce9VX6C.s:1900   .rodata.cst16:0000000000000000 .LC23
     /tmp/cce9VX6C.s:2629   .rodata.cst16:00000000000000a0 .LC105
     /tmp/cce9VX6C.s:1904   .rodata.cst16:0000000000000010 .LC24
     /tmp/cce9VX6C.s:1912   .rodata.cst16:0000000000000030 .LC26
     /tmp/cce9VX6C.s:1917   .rodata.cst32:0000000000000280 .LC27
     /tmp/cce9VX6C.s:1927   .rodata.cst32:00000000000002a0 .LC28
     /tmp/cce9VX6C.s:1937   .rodata.cst32:00000000000002c0 .LC29
     /tmp/cce9VX6C.s:1947   .rodata.cst32:00000000000002e0 .LC30
     /tmp/cce9VX6C.s:1957   .rodata.cst32:0000000000000300 .LC31
     /tmp/cce9VX6C.s:1967   .rodata.cst32:0000000000000320 .LC32
     /tmp/cce9VX6C.s:1977   .rodata.cst32:0000000000000340 .LC33
     /tmp/cce9VX6C.s:1997   .rodata.cst32:0000000000000380 .LC35
     /tmp/cce9VX6C.s:1987   .rodata.cst32:0000000000000360 .LC34
     /tmp/cce9VX6C.s:2017   .rodata.cst32:00000000000003c0 .LC37
     /tmp/cce9VX6C.s:2007   .rodata.cst32:00000000000003a0 .LC36
     /tmp/cce9VX6C.s:2037   .rodata.cst32:0000000000000400 .LC39
     /tmp/cce9VX6C.s:2057   .rodata.cst32:0000000000000440 .LC41
     /tmp/cce9VX6C.s:2067   .rodata.cst32:0000000000000460 .LC42
     /tmp/cce9VX6C.s:2027   .rodata.cst32:00000000000003e0 .LC38
     /tmp/cce9VX6C.s:2047   .rodata.cst32:0000000000000420 .LC40
     /tmp/cce9VX6C.s:2077   .rodata.cst32:0000000000000480 .LC43
     /tmp/cce9VX6C.s:2087   .rodata.cst32:00000000000004a0 .LC44
GAS LISTING /tmp/cce9VX6C.s 			page 72


     /tmp/cce9VX6C.s:2107   .rodata.cst32:00000000000004e0 .LC46
     /tmp/cce9VX6C.s:2117   .rodata.cst32:0000000000000500 .LC47
     /tmp/cce9VX6C.s:2097   .rodata.cst32:00000000000004c0 .LC45
     /tmp/cce9VX6C.s:2127   .rodata.cst32:0000000000000520 .LC48
     /tmp/cce9VX6C.s:2157   .rodata.cst32:0000000000000580 .LC51
     /tmp/cce9VX6C.s:2147   .rodata.cst32:0000000000000560 .LC50
     /tmp/cce9VX6C.s:2137   .rodata.cst32:0000000000000540 .LC49
     /tmp/cce9VX6C.s:2167   .rodata.cst32:00000000000005a0 .LC52
     /tmp/cce9VX6C.s:2177   .rodata.cst32:00000000000005c0 .LC53
     /tmp/cce9VX6C.s:2188   .rodata.cst16:0000000000000040 .LC54
     /tmp/cce9VX6C.s:2196   .rodata.cst16:0000000000000060 .LC56
     /tmp/cce9VX6C.s:2192   .rodata.cst16:0000000000000050 .LC55
     /tmp/cce9VX6C.s:2211   .rodata.cst32:0000000000000600 .LC58
     /tmp/cce9VX6C.s:2201   .rodata.cst32:00000000000005e0 .LC57
     /tmp/cce9VX6C.s:2241   .rodata.cst32:0000000000000660 .LC61
     /tmp/cce9VX6C.s:2301   .rodata.cst32:0000000000000720 .LC67
     /tmp/cce9VX6C.s:2221   .rodata.cst32:0000000000000620 .LC59
     /tmp/cce9VX6C.s:2251   .rodata.cst32:0000000000000680 .LC62
     /tmp/cce9VX6C.s:2231   .rodata.cst32:0000000000000640 .LC60
     /tmp/cce9VX6C.s:2261   .rodata.cst32:00000000000006a0 .LC63
     /tmp/cce9VX6C.s:2271   .rodata.cst32:00000000000006c0 .LC64
     /tmp/cce9VX6C.s:2281   .rodata.cst32:00000000000006e0 .LC65
     /tmp/cce9VX6C.s:2291   .rodata.cst32:0000000000000700 .LC66
     /tmp/cce9VX6C.s:2311   .rodata.cst32:0000000000000740 .LC68
     /tmp/cce9VX6C.s:2321   .rodata.cst32:0000000000000760 .LC69
     /tmp/cce9VX6C.s:2331   .rodata.cst32:0000000000000780 .LC70
     /tmp/cce9VX6C.s:2341   .rodata.cst32:00000000000007a0 .LC71
     /tmp/cce9VX6C.s:2351   .rodata.cst32:00000000000007c0 .LC72
     /tmp/cce9VX6C.s:2361   .rodata.cst32:00000000000007e0 .LC73
     /tmp/cce9VX6C.s:2378   .rodata.cst16:0000000000000080 .LC75
     /tmp/cce9VX6C.s:2383   .rodata.cst32:0000000000000800 .LC76
     /tmp/cce9VX6C.s:2393   .rodata.cst32:0000000000000820 .LC77
     /tmp/cce9VX6C.s:2403   .rodata.cst32:0000000000000840 .LC78
     /tmp/cce9VX6C.s:2443   .rodata.cst32:00000000000008c0 .LC82
     /tmp/cce9VX6C.s:2413   .rodata.cst32:0000000000000860 .LC79
     /tmp/cce9VX6C.s:2423   .rodata.cst32:0000000000000880 .LC80
     /tmp/cce9VX6C.s:2453   .rodata.cst32:00000000000008e0 .LC83
     /tmp/cce9VX6C.s:2433   .rodata.cst32:00000000000008a0 .LC81
     /tmp/cce9VX6C.s:2483   .rodata.cst32:0000000000000940 .LC86
     /tmp/cce9VX6C.s:2493   .rodata.cst32:0000000000000960 .LC87
     /tmp/cce9VX6C.s:2463   .rodata.cst32:0000000000000900 .LC84
     /tmp/cce9VX6C.s:2503   .rodata.cst32:0000000000000980 .LC88
     /tmp/cce9VX6C.s:2473   .rodata.cst32:0000000000000920 .LC85
     /tmp/cce9VX6C.s:2513   .rodata.cst32:00000000000009a0 .LC89
     /tmp/cce9VX6C.s:2523   .rodata.cst32:00000000000009c0 .LC90
     /tmp/cce9VX6C.s:2533   .rodata.cst32:00000000000009e0 .LC91
     /tmp/cce9VX6C.s:2543   .rodata.cst32:0000000000000a00 .LC92
     /tmp/cce9VX6C.s:2563   .rodata.cst32:0000000000000a40 .LC94
     /tmp/cce9VX6C.s:2553   .rodata.cst32:0000000000000a20 .LC93
     /tmp/cce9VX6C.s:2588   .rodata.cst32:0000000000000a60 .LC99
     /tmp/cce9VX6C.s:2583   .rodata.cst16:0000000000000090 .LC98
     /tmp/cce9VX6C.s:2598   .rodata.cst32:0000000000000a80 .LC100
     /tmp/cce9VX6C.s:2574   .rodata.cst8:0000000000000010 .LC95
     /tmp/cce9VX6C.s:2578   .rodata.cst8:0000000000000018 .LC96

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
GAS LISTING /tmp/cce9VX6C.s 			page 73


aligned_alloc
__gxx_personality_v0
_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
clock
_ZNSo9_M_insertIdEERSoT_
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo3putEc
_ZNSo5flushEv
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt4cout
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZNSo9_M_insertIlEERSoT_
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
_ZSt16__throw_bad_castv
_Unwind_Resume
__stack_chk_fail
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
