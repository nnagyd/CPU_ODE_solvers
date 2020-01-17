GAS LISTING /tmp/ccObQ0kt.s 			page 1


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
GAS LISTING /tmp/ccObQ0kt.s 			page 2


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
  69              	.LC2:
  70 0000 64617461 		.string	"data.csv"
  70      2E637376 
  70      00
  71              	.LC95:
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
  98 0016 4881EC20 		subq	$4128, %rsp
GAS LISTING /tmp/ccObQ0kt.s 			page 3


  98      100000
  99              		.cfi_offset 15, -24
 100              		.cfi_offset 14, -32
 101              		.cfi_offset 13, -40
 102              		.cfi_offset 12, -48
 103              		.cfi_offset 3, -56
 104 001d C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 104      00000000 
 105 0025 C5FB1005 		vmovsd	.LC1(%rip), %xmm0
 105      00000000 
 106 002d 64488B04 		movq	%fs:40, %rax
 106      25280000 
 106      00
 107 0036 48898424 		movq	%rax, 4120(%rsp)
 107      18100000 
 108 003e 31C0     		xorl	%eax, %eax
 109 0040 E8000000 		call	_Z8linspaceddi
 109      00
 110 0045 488DBC24 		leaq	3600(%rsp), %rdi
 110      100E0000 
 111 004d BA300000 		movl	$48, %edx
 111      00
 112 0052 BE000000 		movl	$.LC2, %esi
 112      00
 113 0057 4889C3   		movq	%rax, %rbx
 114              	.LEHB0:
 115 005a E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
 115      00
 116              	.LEHE0:
 117 005f E8000000 		call	clock
 117      00
 118 0064 C5F82805 		vmovaps	.LC72(%rip), %xmm0
 118      00000000 
 119 006c 48894424 		movq	%rax, 8(%rsp)
 119      08
 120 0071 48895C24 		movq	%rbx, 16(%rsp)
 120      10
 121 0076 C5F828C8 		vmovaps	%xmm0, %xmm1
 122 007a C744241C 		movl	$0, 28(%rsp)
 122      00000000 
 123 0082 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
 123      C001
 124 0088 C5FD572D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 124      00000000 
 125 0090 C5FC2944 		vmovaps	%ymm0, 32(%rsp)
 125      2420
 126 0096 C5FD296C 		vmovapd	%ymm5, 64(%rsp)
 126      2440
 127              	.L12:
 128 009c 488B4424 		movq	16(%rsp), %rax
 128      10
 129 00a1 C5F157C9 		vxorpd	%xmm1, %xmm1, %xmm1
 130 00a5 C5FD281D 		vmovapd	.LC99(%rip), %ymm3
 130      00000000 
 131 00ad 31C9     		xorl	%ecx, %ecx
 132 00af 31F6     		xorl	%esi, %esi
 133 00b1 C5FD282D 		vmovapd	.LC100(%rip), %ymm5
GAS LISTING /tmp/ccObQ0kt.s 			page 4


 133      00000000 
 134 00b9 83F903   		cmpl	$3, %ecx
 135 00bc C5FD2800 		vmovapd	(%rax), %ymm0
 136 00c0 C5FD28FB 		vmovapd	%ymm3, %ymm7
 137 00c4 C5FD299C 		vmovapd	%ymm3, 3136(%rsp)
 137      24400C00 
 137      00
 138 00cd C5FD2984 		vmovapd	%ymm0, 3264(%rsp)
 138      24C00C00 
 138      00
 139 00d6 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 140 00da C5FD29AC 		vmovapd	%ymm5, 3392(%rsp)
 140      24400D00 
 140      00
 141 00e3 C5FD298C 		vmovapd	%ymm1, 2880(%rsp)
 141      24400B00 
 141      00
 142 00ec C5F97F84 		vmovdqa	%xmm0, 3520(%rsp)
 142      24C00D00 
 142      00
 143 00f5 C5FD2850 		vmovapd	32(%rax), %ymm2
 143      20
 144 00fa C5F97F84 		vmovdqa	%xmm0, 3536(%rsp)
 144      24D00D00 
 144      00
 145 0103 C5FD299C 		vmovapd	%ymm3, 3168(%rsp)
 145      24600C00 
 145      00
 146 010c C5FD29AC 		vmovapd	%ymm5, 3424(%rsp)
 146      24600D00 
 146      00
 147 0115 C5FD2994 		vmovapd	%ymm2, 3296(%rsp)
 147      24E00C00 
 147      00
 148 011e C5FD298C 		vmovapd	%ymm1, 2912(%rsp)
 148      24600B00 
 148      00
 149 0127 C5FD2850 		vmovapd	64(%rax), %ymm2
 149      40
 150 012c C5F97F84 		vmovdqa	%xmm0, 3552(%rsp)
 150      24E00D00 
 150      00
 151 0135 C5FD299C 		vmovapd	%ymm3, 3200(%rsp)
 151      24800C00 
 151      00
 152 013e C5FD29AC 		vmovapd	%ymm5, 3456(%rsp)
 152      24800D00 
 152      00
 153 0147 C5FD281D 		vmovapd	.LC102(%rip), %ymm3
 153      00000000 
 154 014f C5FD2994 		vmovapd	%ymm2, 3328(%rsp)
 154      24000D00 
 154      00
 155 0158 C5FD298C 		vmovapd	%ymm1, 2944(%rsp)
 155      24800B00 
 155      00
 156 0161 C5FD2850 		vmovapd	96(%rax), %ymm2
GAS LISTING /tmp/ccObQ0kt.s 			page 5


 156      60
 157 0166 C5FD29BC 		vmovapd	%ymm7, 3232(%rsp)
 157      24A00C00 
 157      00
 158 016f C5FD29AC 		vmovapd	%ymm5, 3488(%rsp)
 158      24A00D00 
 158      00
 159 0178 C5FD28EB 		vmovapd	%ymm3, %ymm5
 160 017c C5FD283D 		vmovapd	.LC101(%rip), %ymm7
 160      00000000 
 161 0184 C5FD2994 		vmovapd	%ymm2, 3360(%rsp)
 161      24200D00 
 161      00
 162 018d C5FD298C 		vmovapd	%ymm1, 2976(%rsp)
 162      24A00B00 
 162      00
 163 0196 C5F97F84 		vmovdqa	%xmm0, 3568(%rsp)
 163      24F00D00 
 163      00
 164 019f C5FD29BC 		vmovapd	%ymm7, 2624(%rsp)
 164      24400A00 
 164      00
 165 01a8 C5FD299C 		vmovapd	%ymm3, 2656(%rsp)
 165      24600A00 
 165      00
 166 01b1 C5FD29BC 		vmovapd	%ymm7, 2688(%rsp)
 166      24800A00 
 166      00
 167 01ba C5FD299C 		vmovapd	%ymm3, 2720(%rsp)
 167      24A00A00 
 167      00
 168 01c3 C5FD29BC 		vmovapd	%ymm7, 2752(%rsp)
 168      24C00A00 
 168      00
 169 01cc C5FD299C 		vmovapd	%ymm3, 2784(%rsp)
 169      24E00A00 
 169      00
 170 01d5 C5FD29BC 		vmovapd	%ymm7, 2816(%rsp)
 170      24000B00 
 170      00
 171 01de C5FD29AC 		vmovapd	%ymm5, 2848(%rsp)
 171      24200B00 
 171      00
 172 01e7 0F8FD702 		jg	.L74
 172      0000
 173 01ed 0F1F00   		.p2align 4,,10
 174              		.p2align 3
 175              	.L13:
 176 01f0 4863C6   		movslq	%esi, %rax
 177 01f3 4863D1   		movslq	%ecx, %rdx
 178 01f6 83C101   		addl	$1, %ecx
 179 01f9 48C1E005 		salq	$5, %rax
 180 01fd 48C1E205 		salq	$5, %rdx
 181 0201 83C602   		addl	$2, %esi
 182 0204 488D7820 		leaq	32(%rax), %rdi
 183 0208 83F903   		cmpl	$3, %ecx
 184 020b 4C8D843C 		leaq	2624(%rsp,%rdi), %r8
GAS LISTING /tmp/ccObQ0kt.s 			page 6


 184      400A0000 
 185 0213 C4C17D28 		vmovapd	(%r8), %ymm0
 185      00
 186 0218 C5FD2984 		vmovapd	%ymm0, 1600(%rsp,%rax)
 186      04400600 
 186      00
 187 0221 C5FD28BC 		vmovapd	2880(%rsp,%rdx), %ymm7
 187      14400B00 
 187      00
 188 022a C5C55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 188      00000000 
 189 0232 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 189      00000000 
 190 023a C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 190      C008
 191 0240 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 191      C808
 192 0246 C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 192      24C00000 
 192      00
 193 024f C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 193      00000000 
 194 0257 C5FB109C 		vmovsd	192(%rsp), %xmm3
 194      24C00000 
 194      00
 195 0260 C5FB10A4 		vmovsd	200(%rsp), %xmm4
 195      24C80000 
 195      00
 196 0269 C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 196      DB
 197 026e C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 197      00000000 
 198 0276 C461FB2C 		vcvttsd2siq	%xmm4, %r9
 198      CC
 199 027b C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 199      00000000 
 200 0283 C5FB10AC 		vmovsd	208(%rsp), %xmm5
 200      24D00000 
 200      00
 201 028c C5FB10B4 		vmovsd	216(%rsp), %xmm6
 201      24D80000 
 201      00
 202 0295 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 203 0299 48899C24 		movq	%rbx, 128(%rsp)
 203      80000000 
 204 02a1 C4E1FB2C 		vcvttsd2siq	%xmm5, %rbx
 204      DD
 205 02a6 C5FA7EBC 		vmovq	128(%rsp), %xmm7
 205      24800000 
 205      00
 206 02af C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 207 02b3 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm4
 207      E101
 208 02b9 C461FB2C 		vcvttsd2siq	%xmm6, %r9
 208      CE
 209 02be C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 210 02c2 48899C24 		movq	%rbx, 128(%rsp)
GAS LISTING /tmp/ccObQ0kt.s 			page 7


 210      80000000 
 211 02ca C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 212 02ce C5FA7EBC 		vmovq	128(%rsp), %xmm7
 212      24800000 
 212      00
 213 02d7 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm5
 213      E901
 214 02dd C57D5905 		vmulpd	.LC9(%rip), %ymm0, %ymm8
 214      00000000 
 215 02e5 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 216 02e9 C5FD593D 		vmulpd	.LC7(%rip), %ymm0, %ymm7
 216      00000000 
 217 02f1 C57D590D 		vmulpd	.LC15(%rip), %ymm0, %ymm9
 217      00000000 
 218 02f9 C53D5805 		vaddpd	.LC10(%rip), %ymm8, %ymm8
 218      00000000 
 219 0301 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 220 0305 C5C5583D 		vaddpd	.LC8(%rip), %ymm7, %ymm7
 220      00000000 
 221 030d C535580D 		vaddpd	.LC16(%rip), %ymm9, %ymm9
 221      00000000 
 222 0315 C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
 223 0319 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 224 031d C5FD593D 		vmulpd	.LC11(%rip), %ymm0, %ymm7
 224      00000000 
 225 0325 C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 226 0329 C5C5583D 		vaddpd	.LC12(%rip), %ymm7, %ymm7
 226      00000000 
 227 0331 C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 228 0335 C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 228      F8
 229 033a C57D5905 		vmulpd	.LC13(%rip), %ymm0, %ymm8
 229      00000000 
 230 0342 C53D5805 		vaddpd	.LC14(%rip), %ymm8, %ymm8
 230      00000000 
 231 034a C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 231      F0
 232 034f C57D5905 		vmulpd	.LC17(%rip), %ymm0, %ymm8
 232      00000000 
 233 0357 C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 233      00000000 
 234 035f C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 235 0363 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 236 0367 C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
 237 036b C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 237      00000000 
 238 0373 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 239 0377 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 240 037b C5C9EFF6 		vpxor	%xmm6, %xmm6, %xmm6
 241 037f C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 241      D001
 242 0385 C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 243 0389 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 243      00000000 
 244 0391 C4C13973 		vpsllq	$1, %xmm8, %xmm8
 244      F001
 245 0397 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
GAS LISTING /tmp/ccObQ0kt.s 			page 8


 245      00000000 
 246 039f C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 247 03a3 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 247      05000000 
 247      00
 248 03ac C5F558F8 		vaddpd	%ymm0, %ymm1, %ymm7
 249 03b0 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 249      00000000 
 250 03b8 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 250      00000000 
 251 03c0 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 251      00000000 
 252 03c8 C4E27929 		vpcmpeqq	%xmm6, %xmm0, %xmm0
 252      C6
 253 03cd C4E27129 		vpcmpeqq	%xmm6, %xmm1, %xmm1
 253      CE
 254 03d2 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 254      00000000 
 255 03da C4E25937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm6
 255      35000000 
 255      00
 256 03e3 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 256      00000000 
 257 03eb C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 257      C801
 258 03f1 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 258      05000000 
 258      00
 259 03fa C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 259      F001
 260 0400 C5F928C2 		vmovapd	%xmm2, %xmm0
 261 0404 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 262 0408 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 262      01
 263 040d C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 263      00000000 
 264 0415 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 264      05000000 
 264      00
 265 041e C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 265      00000000 
 266 0426 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 266      C001
 267 042c C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
 268 0430 C4E3654B 		vblendvpd	%ymm0, %ymm2, %ymm3, %ymm3
 268      DA00
 269 0436 C4E3454B 		vblendvpd	%ymm0, .LC20(%rip), %ymm7, %ymm0
 269      05000000 
 269      0000
 270 0440 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 270      00000000 
 271 0448 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 271      00000000 
 272 0450 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 272      C310
 273 0456 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 273      00000000 
GAS LISTING /tmp/ccObQ0kt.s 			page 9


 274 045e C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 274      00000000 
 275 0466 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 275      00000000 
 276 046e C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 276      3E
 277 0473 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 277      3E
 278 0478 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 278      CA01
 279 047e C5FD2894 		vmovapd	3264(%rsp,%rdx), %ymm2
 279      14C00C00 
 279      00
 280 0487 C4C16D59 		vmulpd	(%r8), %ymm2, %ymm2
 280      10
 281 048c C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 282 0490 C5FD2884 		vmovapd	2624(%rsp,%rax), %ymm0
 282      04400A00 
 282      00
 283 0499 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 284 049d C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 284      00000000 
 285 04a5 C5C55CDB 		vsubpd	%ymm3, %ymm7, %ymm3
 286 04a9 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 287 04ad C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 288 04b1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 289 04b5 C5FD2984 		vmovapd	%ymm0, 1632(%rsp,%rax)
 289      04600600 
 289      00
 290 04be 0F8E2CFD 		jle	.L13
 290      FFFF
 291              	.L74:
 292 04c4 C5FD281D 		vmovapd	.LC26(%rip), %ymm3
 292      00000000 
 293 04cc 488DB424 		leaq	2400(%rsp), %rsi
 293      60090000 
 294 04d4 488DBC24 		leaq	3008(%rsp), %rdi
 294      C00B0000 
 295 04dc C5FD2884 		vmovapd	3136(%rsp), %ymm0
 295      24400C00 
 295      00
 296 04e5 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 297 04e9 C5E5598C 		vmulpd	1600(%rsp), %ymm3, %ymm1
 297      24400600 
 297      00
 298 04f2 488D8C24 		leaq	2656(%rsp), %rcx
 298      600A0000 
 299 04fa 4889F8   		movq	%rdi, %rax
 300 04fd 4889F2   		movq	%rsi, %rdx
 301 0500 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 301      C0
 302 0505 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 303 0509 C5F5588C 		vaddpd	2624(%rsp), %ymm1, %ymm1
 303      24400A00 
 303      00
 304 0512 C5FD298C 		vmovapd	%ymm1, 2368(%rsp)
 304      24400900 
GAS LISTING /tmp/ccObQ0kt.s 			page 10


 304      00
 305 051b C5E5598C 		vmulpd	1632(%rsp), %ymm3, %ymm1
 305      24600600 
 305      00
 306 0524 C5F559C8 		vmulpd	%ymm0, %ymm1, %ymm1
 307 0528 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 308 052c C5F5588C 		vaddpd	2656(%rsp), %ymm1, %ymm1
 308      24600A00 
 308      00
 309 0535 C5FD5884 		vaddpd	2880(%rsp), %ymm0, %ymm0
 309      24400B00 
 309      00
 310 053e C5FD298C 		vmovapd	%ymm1, 2400(%rsp)
 310      24600900 
 310      00
 311 0547 C5E5598C 		vmulpd	1664(%rsp), %ymm3, %ymm1
 311      24800600 
 311      00
 312 0550 C5FD2984 		vmovapd	%ymm0, 3008(%rsp)
 312      24C00B00 
 312      00
 313 0559 C5FD2884 		vmovapd	3168(%rsp), %ymm0
 313      24600C00 
 313      00
 314 0562 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 315 0566 C5F5588C 		vaddpd	2688(%rsp), %ymm1, %ymm1
 315      24800A00 
 315      00
 316 056f C5FD298C 		vmovapd	%ymm1, 2432(%rsp)
 316      24800900 
 316      00
 317 0578 C5E5598C 		vmulpd	1696(%rsp), %ymm3, %ymm1
 317      24A00600 
 317      00
 318 0581 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 319 0585 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 320 0589 C5F5588C 		vaddpd	2720(%rsp), %ymm1, %ymm1
 320      24A00A00 
 320      00
 321 0592 C5FD5884 		vaddpd	2912(%rsp), %ymm0, %ymm0
 321      24600B00 
 321      00
 322 059b C5FD298C 		vmovapd	%ymm1, 2464(%rsp)
 322      24A00900 
 322      00
 323 05a4 C5E5598C 		vmulpd	1728(%rsp), %ymm3, %ymm1
 323      24C00600 
 323      00
 324 05ad C5FD2984 		vmovapd	%ymm0, 3040(%rsp)
 324      24E00B00 
 324      00
 325 05b6 C5FD2884 		vmovapd	3200(%rsp), %ymm0
 325      24800C00 
 325      00
 326 05bf C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 327 05c3 C5F5588C 		vaddpd	2752(%rsp), %ymm1, %ymm1
 327      24C00A00 
GAS LISTING /tmp/ccObQ0kt.s 			page 11


 327      00
 328 05cc C5FD298C 		vmovapd	%ymm1, 2496(%rsp)
 328      24C00900 
 328      00
 329 05d5 C5E5598C 		vmulpd	1760(%rsp), %ymm3, %ymm1
 329      24E00600 
 329      00
 330 05de C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 331 05e2 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 332 05e6 C5F5588C 		vaddpd	2784(%rsp), %ymm1, %ymm1
 332      24E00A00 
 332      00
 333 05ef C5FD5884 		vaddpd	2944(%rsp), %ymm0, %ymm0
 333      24800B00 
 333      00
 334 05f8 C5FD298C 		vmovapd	%ymm1, 2528(%rsp)
 334      24E00900 
 334      00
 335 0601 C5E5598C 		vmulpd	1792(%rsp), %ymm3, %ymm1
 335      24000700 
 335      00
 336 060a C5FD2984 		vmovapd	%ymm0, 3072(%rsp)
 336      24000C00 
 336      00
 337 0613 C5FD2884 		vmovapd	3232(%rsp), %ymm0
 337      24A00C00 
 337      00
 338 061c C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 339 0620 C5F5588C 		vaddpd	2816(%rsp), %ymm1, %ymm1
 339      24000B00 
 339      00
 340 0629 C5FD298C 		vmovapd	%ymm1, 2560(%rsp)
 340      24000A00 
 340      00
 341 0632 C5E5598C 		vmulpd	1824(%rsp), %ymm3, %ymm1
 341      24200700 
 341      00
 342 063b C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 343 063f C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 344 0643 C5F5588C 		vaddpd	2848(%rsp), %ymm1, %ymm1
 344      24200B00 
 344      00
 345 064c C5FD298C 		vmovapd	%ymm1, 2592(%rsp)
 345      24200A00 
 345      00
 346 0655 C5FD5884 		vaddpd	2976(%rsp), %ymm0, %ymm0
 346      24A00B00 
 346      00
 347 065e C57D282D 		vmovapd	.LC20(%rip), %ymm13
 347      00000000 
 348 0666 C5FD2984 		vmovapd	%ymm0, 3104(%rsp)
 348      24200C00 
 348      00
 349              	.L15:
 350 066f C5FD2802 		vmovapd	(%rdx), %ymm0
 351 0673 4883C240 		addq	$64, %rdx
 352 0677 4883C020 		addq	$32, %rax
GAS LISTING /tmp/ccObQ0kt.s 			page 12


 353 067b C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 353      00000000 
 354 0683 C5FD2982 		vmovapd	%ymm0, -1632(%rdx)
 354      A0F9FFFF 
 355 068b C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 355      E0
 356 0690 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 356      00000000 
 357 0698 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 357      C008
 358 069e C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 358      C808
 359 06a4 C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 359      24E00000 
 359      00
 360 06ad C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 360      00000000 
 361 06b5 C57B10A4 		vmovsd	224(%rsp), %xmm12
 361      24E00000 
 361      00
 362 06be C57B10B4 		vmovsd	232(%rsp), %xmm14
 362      24E80000 
 362      00
 363 06c7 C4C1FB2C 		vcvttsd2siq	%xmm12, %rbx
 363      DC
 364 06cc C441FB2C 		vcvttsd2siq	%xmm14, %r8
 364      C6
 365 06d1 C5FB108C 		vmovsd	248(%rsp), %xmm1
 365      24F80000 
 365      00
 366 06da C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 367 06de C57B10BC 		vmovsd	240(%rsp), %xmm15
 367      24F00000 
 367      00
 368 06e7 48899C24 		movq	%rbx, 128(%rsp)
 368      80000000 
 369 06ef C4C1FB2C 		vcvttsd2siq	%xmm15, %rbx
 369      DF
 370 06f4 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 370      24800000 
 370      00
 371 06fd C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm4
 371      E001
 372 0703 C461FB2C 		vcvttsd2siq	%xmm1, %r8
 372      C1
 373 0708 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 373      00000000 
 374 0710 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 374      00000000 
 375 0718 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 376 071c 48899C24 		movq	%rbx, 128(%rsp)
 376      80000000 
 377 0724 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 377      24800000 
 377      00
 378 072d C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 378      E801
GAS LISTING /tmp/ccObQ0kt.s 			page 13


 379 0733 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 380 0737 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 381 073b C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 381      00000000 
 382 0743 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 383 0747 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 383      00000000 
 384 074f C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 384      00000000 
 385 0757 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 385      00000000 
 386 075f C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 387 0763 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 387      00000000 
 388 076b C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 388      00000000 
 389 0773 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 390 0777 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 390      D1
 391 077c C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 391      00000000 
 392 0784 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 393 0788 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 393      00000000 
 394 0790 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 395 0794 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 395      CA
 396 0799 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 396      00000000 
 397 07a1 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 397      00000000 
 398 07a9 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 398      F2
 399 07ae C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 399      00000000 
 400 07b6 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 400      00000000 
 401 07be C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 402 07c2 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 403 07c6 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 404 07ca C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 404      00000000 
 405 07d2 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 406 07d6 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 406      C9
 407 07db C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 407      D201
 408 07e1 C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 409 07e5 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 410 07e9 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 410      F201
 411 07ef C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 411      00000000 
 412 07f7 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 412      0D000000 
 412      00
 413 0800 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
GAS LISTING /tmp/ccObQ0kt.s 			page 14


 414 0804 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 414      00000000 
 415 080c C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 415      00000000 
 416 0814 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 416      15000000 
 416      00
 417 081d C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 417      C7
 418 0822 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 418      00000000 
 419 082a C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 419      CF
 420 082f C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 420      00000000 
 421 0837 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 421      00000000 
 422 083f C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 422      C801
 423 0845 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 423      05000000 
 423      00
 424 084e C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 424      C801
 425 0854 C5F928C2 		vmovapd	%xmm2, %xmm0
 426 0858 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 426      00000000 
 427 0860 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 427      00000000 
 428 0868 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 428      01
 429 086d C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 429      00000000 
 430 0875 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 430      3E
 431 087a C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 431      05000000 
 431      00
 432 0883 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 432      00000000 
 433 088b C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 433      C201
 434 0891 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 435 0895 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 435      D800
 436 089b C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 436      C500
 437 08a1 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 437      C310
 438 08a7 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 438      00000000 
 439 08af C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 439      00000000 
 440 08b7 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 440      3E
 441 08bc C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 441      CA01
GAS LISTING /tmp/ccObQ0kt.s 			page 15


 442 08c2 C5FD2890 		vmovapd	224(%rax), %ymm2
 442      E0000000 
 443 08ca C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 443      C0
 444 08cf C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 445 08d3 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 445      A0
 446 08d8 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 447 08dc C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 447      00000000 
 448 08e4 C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 449 08e8 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 450 08ec C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 451 08f0 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 452 08f4 C5FD2982 		vmovapd	%ymm0, -1600(%rdx)
 452      C0F9FFFF 
 453 08fc 4839CA   		cmpq	%rcx, %rdx
 454 08ff 0F856AFD 		jne	.L15
 454      FFFF
 455 0905 488D8424 		leaq	832(%rsp), %rax
 455      40030000 
 456 090d 4C8D8424 		leaq	1088(%rsp), %r8
 456      40040000 
 457 0915 4889C2   		movq	%rax, %rdx
 458              	.L17:
 459 0918 C5FD283D 		vmovapd	.LC27(%rip), %ymm7
 459      00000000 
 460 0920 4883C040 		addq	$64, %rax
 461 0924 4883C220 		addq	$32, %rdx
 462 0928 C5C55940 		vmulpd	-64(%rax), %ymm7, %ymm0
 462      C0
 463 092d C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 463      00000000 
 464 0935 C5C55988 		vmulpd	704(%rax), %ymm7, %ymm1
 464      C0020000 
 465 093d C5FD283D 		vmovapd	.LC27(%rip), %ymm7
 465      00000000 
 466 0945 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 467 0949 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 467      E0080000 
 468 0951 C5FD5880 		vaddpd	1728(%rax), %ymm0, %ymm0
 468      C0060000 
 469 0959 C5FD2980 		vmovapd	%ymm0, 1472(%rax)
 469      C0050000 
 470 0961 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 470      E0
 471 0966 C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 471      00000000 
 472 096e C5C55988 		vmulpd	736(%rax), %ymm7, %ymm1
 472      E0020000 
 473 0976 C5FD283D 		vmovapd	.LC25(%rip), %ymm7
 473      00000000 
 474 097e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 475 0982 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 475      E0080000 
 476 098a C5FD5880 		vaddpd	1760(%rax), %ymm0, %ymm0
 476      E0060000 
GAS LISTING /tmp/ccObQ0kt.s 			page 16


 477 0992 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 477      E0050000 
 478 099a C5C55982 		vmulpd	2272(%rdx), %ymm7, %ymm0
 478      E0080000 
 479 09a2 C5FD5882 		vaddpd	2016(%rdx), %ymm0, %ymm0
 479      E0070000 
 480 09aa C5FD2982 		vmovapd	%ymm0, 2144(%rdx)
 480      60080000 
 481 09b2 4C39C0   		cmpq	%r8, %rax
 482 09b5 0F855DFF 		jne	.L17
 482      FFFF
 483 09bb C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 484 09bf C57D2835 		vmovapd	.LC20(%rip), %ymm14
 484      00000000 
 485 09c7 4889F8   		movq	%rdi, %rax
 486 09ca C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 486      C0
 487 09cf 4889F2   		movq	%rsi, %rdx
 488              	.L19:
 489 09d2 C5FD2802 		vmovapd	(%rdx), %ymm0
 490 09d6 4883C240 		addq	$64, %rdx
 491 09da 4883C020 		addq	$32, %rax
 492 09de C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 492      00000000 
 493 09e6 C5FD2982 		vmovapd	%ymm0, -608(%rdx)
 493      A0FDFFFF 
 494 09ee C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 494      E0
 495 09f3 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 495      00000000 
 496 09fb C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 496      C008
 497 0a01 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 497      00000000 
 498 0a09 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 498      C808
 499 0a0f C5FD118C 		vmovupd	%ymm1, 256(%rsp)
 499      24000100 
 499      00
 500 0a18 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 500      00000000 
 501 0a20 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 501      00000000 
 502 0a28 C5FB10B4 		vmovsd	256(%rsp), %xmm6
 502      24000100 
 502      00
 503 0a31 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 504 0a35 C57B1094 		vmovsd	272(%rsp), %xmm10
 504      24100100 
 504      00
 505 0a3e C4E1FB2C 		vcvttsd2siq	%xmm6, %rbx
 505      DE
 506 0a43 C57B108C 		vmovsd	264(%rsp), %xmm9
 506      24080100 
 506      00
 507 0a4c C57B109C 		vmovsd	280(%rsp), %xmm11
 507      24180100 
GAS LISTING /tmp/ccObQ0kt.s 			page 17


 507      00
 508 0a55 C441FB2C 		vcvttsd2siq	%xmm9, %r9
 508      C9
 509 0a5a C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 510 0a5e C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 511 0a62 48899C24 		movq	%rbx, 128(%rsp)
 511      80000000 
 512 0a6a C4C1FB2C 		vcvttsd2siq	%xmm10, %rbx
 512      DA
 513 0a6f C5FA7EAC 		vmovq	128(%rsp), %xmm5
 513      24800000 
 513      00
 514 0a78 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 515 0a7c C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm4
 515      E101
 516 0a82 C441FB2C 		vcvttsd2siq	%xmm11, %r9
 516      CB
 517 0a87 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 517      00000000 
 518 0a8f C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 519 0a93 48899C24 		movq	%rbx, 128(%rsp)
 519      80000000 
 520 0a9b C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 520      00000000 
 521 0aa3 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 521      24800000 
 521      00
 522 0aac C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 522      00000000 
 523 0ab4 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 523      00000000 
 524 0abc C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 525 0ac0 C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm5
 525      E901
 526 0ac6 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 526      00000000 
 527 0ace C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 527      00000000 
 528 0ad6 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 529 0ada C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 529      D1
 530 0adf C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 530      00000000 
 531 0ae7 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 532 0aeb C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 532      00000000 
 533 0af3 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 534 0af7 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 534      CA
 535 0afc C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 535      00000000 
 536 0b04 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 536      00000000 
 537 0b0c C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 537      F2
 538 0b11 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 538      00000000 
GAS LISTING /tmp/ccObQ0kt.s 			page 18


 539 0b19 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 539      00000000 
 540 0b21 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 541 0b25 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 542 0b29 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 543 0b2d C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 543      00000000 
 544 0b35 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 545 0b39 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 545      C9
 546 0b3e C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 546      D201
 547 0b44 C58D5CC0 		vsubpd	%ymm0, %ymm14, %ymm0
 548 0b48 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 549 0b4c C4C12973 		vpsllq	$1, %xmm10, %xmm10
 549      F201
 550 0b52 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 550      00000000 
 551 0b5a C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 551      0D000000 
 551      00
 552 0b63 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 553 0b67 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 553      00000000 
 554 0b6f C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 554      00000000 
 555 0b77 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 555      15000000 
 555      00
 556 0b80 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 556      C7
 557 0b85 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 557      00000000 
 558 0b8d C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 558      CF
 559 0b92 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 559      00000000 
 560 0b9a C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 560      00000000 
 561 0ba2 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 561      C801
 562 0ba8 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 562      05000000 
 562      00
 563 0bb1 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 563      C801
 564 0bb7 C5F928C2 		vmovapd	%xmm2, %xmm0
 565 0bbb C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 565      00000000 
 566 0bc3 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 566      00000000 
 567 0bcb C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 567      01
 568 0bd0 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 568      00000000 
 569 0bd8 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 569      3E
GAS LISTING /tmp/ccObQ0kt.s 			page 19


 570 0bdd C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 570      05000000 
 570      00
 571 0be6 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 571      00000000 
 572 0bee C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 572      C201
 573 0bf4 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 574 0bf8 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 574      D800
 575 0bfe C4C34D4B 		vblendvpd	%ymm0, %ymm14, %ymm6, %ymm0
 575      C600
 576 0c04 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 576      C310
 577 0c0a C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 577      00000000 
 578 0c12 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 578      00000000 
 579 0c1a C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 579      3E
 580 0c1f C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 580      CA01
 581 0c25 C5FD2890 		vmovapd	224(%rax), %ymm2
 581      E0000000 
 582 0c2d C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 582      C0
 583 0c32 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 584 0c36 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 584      A0
 585 0c3b C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 586 0c3f C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 586      00000000 
 587 0c47 C58D5CDB 		vsubpd	%ymm3, %ymm14, %ymm3
 588 0c4b C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 589 0c4f C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 590 0c53 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 591 0c57 C5FD2982 		vmovapd	%ymm0, -576(%rdx)
 591      C0FDFFFF 
 592 0c5f 4839D1   		cmpq	%rdx, %rcx
 593 0c62 0F856AFD 		jne	.L19
 593      FFFF
 594 0c68 488D9424 		leaq	832(%rsp), %rdx
 594      40030000 
 595 0c70 C5FD282D 		vmovapd	.LC31(%rip), %ymm5
 595      00000000 
 596 0c78 4889D0   		movq	%rdx, %rax
 597              	.L21:
 598 0c7b C5FD283D 		vmovapd	.LC29(%rip), %ymm7
 598      00000000 
 599 0c83 4883C040 		addq	$64, %rax
 600 0c87 4883C220 		addq	$32, %rdx
 601 0c8b C5C55988 		vmulpd	960(%rax), %ymm7, %ymm1
 601      C0030000 
 602 0c93 C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 602      00000000 
 603 0c9b C5C55940 		vmulpd	-64(%rax), %ymm7, %ymm0
 603      C0
GAS LISTING /tmp/ccObQ0kt.s 			page 20


 604 0ca0 C5FD283D 		vmovapd	.LC25(%rip), %ymm7
 604      00000000 
 605 0ca8 C5C55990 		vmulpd	704(%rax), %ymm7, %ymm2
 605      C0020000 
 606 0cb0 C5FD283D 		vmovapd	.LC29(%rip), %ymm7
 606      00000000 
 607 0cb8 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 608 0cbc C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 609 0cc0 C5C55988 		vmulpd	992(%rax), %ymm7, %ymm1
 609      E0030000 
 610 0cc8 C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 610      00000000 
 611 0cd0 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 611      E0080000 
 612 0cd8 C5FD5880 		vaddpd	1728(%rax), %ymm0, %ymm0
 612      C0060000 
 613 0ce0 C5FD2980 		vmovapd	%ymm0, 1472(%rax)
 613      C0050000 
 614 0ce8 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 614      E0
 615 0ced C5FD283D 		vmovapd	.LC25(%rip), %ymm7
 615      00000000 
 616 0cf5 C5C55990 		vmulpd	736(%rax), %ymm7, %ymm2
 616      E0020000 
 617 0cfd C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 618 0d01 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 619 0d05 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 619      E0080000 
 620 0d0d C5FD5880 		vaddpd	1760(%rax), %ymm0, %ymm0
 620      E0060000 
 621 0d15 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 621      E0050000 
 622 0d1d C5D55982 		vmulpd	2272(%rdx), %ymm5, %ymm0
 622      E0080000 
 623 0d25 C5FD5882 		vaddpd	2016(%rdx), %ymm0, %ymm0
 623      E0070000 
 624 0d2d C5FD2982 		vmovapd	%ymm0, 2144(%rdx)
 624      60080000 
 625 0d35 4C39C0   		cmpq	%r8, %rax
 626 0d38 0F853DFF 		jne	.L21
 626      FFFF
 627 0d3e C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 628 0d42 C57D283D 		vmovapd	.LC20(%rip), %ymm15
 628      00000000 
 629 0d4a 4889F8   		movq	%rdi, %rax
 630 0d4d C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 630      C0
 631 0d52 4889F2   		movq	%rsi, %rdx
 632              	.L23:
 633 0d55 C5FD2802 		vmovapd	(%rdx), %ymm0
 634 0d59 4883C240 		addq	$64, %rdx
 635 0d5d 4883C020 		addq	$32, %rax
 636 0d61 C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 636      00000000 
 637 0d69 C5FD2982 		vmovapd	%ymm0, -352(%rdx)
 637      A0FEFFFF 
 638 0d71 C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
GAS LISTING /tmp/ccObQ0kt.s 			page 21


 638      E0
 639 0d76 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 639      00000000 
 640 0d7e C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 640      C008
 641 0d84 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 641      C808
 642 0d8a C5FD118C 		vmovupd	%ymm1, 288(%rsp)
 642      24200100 
 642      00
 643 0d93 C57B10B4 		vmovsd	288(%rsp), %xmm14
 643      24200100 
 643      00
 644 0d9c C5FB109C 		vmovsd	304(%rsp), %xmm3
 644      24300100 
 644      00
 645 0da5 C4C1FB2C 		vcvttsd2siq	%xmm14, %rbx
 645      DE
 646 0daa C5FB108C 		vmovsd	296(%rsp), %xmm1
 646      24280100 
 646      00
 647 0db3 C5FB10AC 		vmovsd	312(%rsp), %xmm5
 647      24380100 
 647      00
 648 0dbc C461FB2C 		vcvttsd2siq	%xmm1, %r9
 648      C9
 649 0dc1 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 649      00000000 
 650 0dc9 48899C24 		movq	%rbx, 128(%rsp)
 650      80000000 
 651 0dd1 C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 651      DB
 652 0dd6 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 652      00000000 
 653 0dde C5FA7EA4 		vmovq	128(%rsp), %xmm4
 653      24800000 
 653      00
 654 0de7 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 654      00000000 
 655 0def C4C3D922 		vpinsrq	$1, %r9, %xmm4, %xmm4
 655      E101
 656 0df5 C461FB2C 		vcvttsd2siq	%xmm5, %r9
 656      CD
 657 0dfa C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 658 0dfe 48899C24 		movq	%rbx, 128(%rsp)
 658      80000000 
 659 0e06 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 659      24800000 
 659      00
 660 0e0f C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 661 0e13 C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm5
 661      E901
 662 0e19 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 663 0e1d C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 664 0e21 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 664      00000000 
 665 0e29 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
GAS LISTING /tmp/ccObQ0kt.s 			page 22


 666 0e2d C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 666      00000000 
 667 0e35 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 667      00000000 
 668 0e3d C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 668      00000000 
 669 0e45 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 670 0e49 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 670      00000000 
 671 0e51 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 671      00000000 
 672 0e59 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 673 0e5d C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 673      D1
 674 0e62 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 674      00000000 
 675 0e6a C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 676 0e6e C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 676      00000000 
 677 0e76 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 678 0e7a C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 678      CA
 679 0e7f C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 679      00000000 
 680 0e87 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 680      00000000 
 681 0e8f C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 681      F2
 682 0e94 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 682      00000000 
 683 0e9c C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 683      00000000 
 684 0ea4 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 685 0ea8 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 686 0eac C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 687 0eb0 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 687      00000000 
 688 0eb8 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 689 0ebc C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 689      C9
 690 0ec1 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 690      D201
 691 0ec7 C5855CC0 		vsubpd	%ymm0, %ymm15, %ymm0
 692 0ecb C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 693 0ecf C4C12973 		vpsllq	$1, %xmm10, %xmm10
 693      F201
 694 0ed5 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 694      00000000 
 695 0edd C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 695      0D000000 
 695      00
 696 0ee6 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 697 0eea C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 697      00000000 
 698 0ef2 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 698      00000000 
 699 0efa C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
GAS LISTING /tmp/ccObQ0kt.s 			page 23


 699      15000000 
 699      00
 700 0f03 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 700      C7
 701 0f08 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 701      00000000 
 702 0f10 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 702      CF
 703 0f15 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 703      00000000 
 704 0f1d C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 704      00000000 
 705 0f25 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 705      C801
 706 0f2b C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 706      05000000 
 706      00
 707 0f34 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 707      C801
 708 0f3a C5F928C2 		vmovapd	%xmm2, %xmm0
 709 0f3e C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 709      00000000 
 710 0f46 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 710      00000000 
 711 0f4e C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 711      01
 712 0f53 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 712      00000000 
 713 0f5b C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 713      3E
 714 0f60 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 714      05000000 
 714      00
 715 0f69 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 715      00000000 
 716 0f71 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 716      C201
 717 0f77 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 718 0f7b C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 718      D800
 719 0f81 C4C34D4B 		vblendvpd	%ymm0, %ymm15, %ymm6, %ymm0
 719      C700
 720 0f87 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 720      C310
 721 0f8d C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 721      00000000 
 722 0f95 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 722      00000000 
 723 0f9d C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 723      3E
 724 0fa2 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 724      CA01
 725 0fa8 C5FD2890 		vmovapd	224(%rax), %ymm2
 725      E0000000 
 726 0fb0 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 726      C0
 727 0fb5 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
GAS LISTING /tmp/ccObQ0kt.s 			page 24


 728 0fb9 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 728      A0
 729 0fbe C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 730 0fc2 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 730      00000000 
 731 0fca C5855CDB 		vsubpd	%ymm3, %ymm15, %ymm3
 732 0fce C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 733 0fd2 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 734 0fd6 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 735 0fda C5FD2982 		vmovapd	%ymm0, -320(%rdx)
 735      C0FEFFFF 
 736 0fe2 4839D1   		cmpq	%rdx, %rcx
 737 0fe5 0F856AFD 		jne	.L23
 737      FFFF
 738 0feb 488D9424 		leaq	832(%rsp), %rdx
 738      40030000 
 739 0ff3 C5FD282D 		vmovapd	.LC32(%rip), %ymm5
 739      00000000 
 740 0ffb C5FD2825 		vmovapd	.LC35(%rip), %ymm4
 740      00000000 
 741 1003 4889D0   		movq	%rdx, %rax
 742              	.L25:
 743 1006 C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 743      00000000 
 744 100e 4883C040 		addq	$64, %rax
 745 1012 4883C220 		addq	$32, %rdx
 746 1016 C5FD281D 		vmovapd	.LC34(%rip), %ymm3
 746      00000000 
 747 101e C5C55988 		vmulpd	1216(%rax), %ymm7, %ymm1
 747      C0040000 
 748 1026 C5FD283D 		vmovapd	.LC33(%rip), %ymm7
 748      00000000 
 749 102e C5E55940 		vmulpd	-64(%rax), %ymm3, %ymm0
 749      C0
 750 1033 C5C55990 		vmulpd	960(%rax), %ymm7, %ymm2
 750      C0030000 
 751 103b C5FD283D 		vmovapd	.LC35(%rip), %ymm7
 751      00000000 
 752 1043 C5C55998 		vmulpd	704(%rax), %ymm7, %ymm3
 752      C0020000 
 753 104b C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 753      00000000 
 754 1053 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 755 1057 C5FD281D 		vmovapd	.LC33(%rip), %ymm3
 755      00000000 
 756 105f C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 757 1063 C5E55990 		vmulpd	992(%rax), %ymm3, %ymm2
 757      E0030000 
 758 106b C5DD5998 		vmulpd	736(%rax), %ymm4, %ymm3
 758      E0020000 
 759 1073 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 760 1077 C5D55988 		vmulpd	1248(%rax), %ymm5, %ymm1
 760      E0040000 
 761 107f C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 761      E0080000 
 762 1087 C5FD5880 		vaddpd	1728(%rax), %ymm0, %ymm0
 762      C0060000 
GAS LISTING /tmp/ccObQ0kt.s 			page 25


 763 108f C5FD2980 		vmovapd	%ymm0, 1472(%rax)
 763      C0050000 
 764 1097 C5C55940 		vmulpd	-32(%rax), %ymm7, %ymm0
 764      E0
 765 109c C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 766 10a0 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 767 10a4 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 768 10a8 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 768      E0080000 
 769 10b0 C5FD5880 		vaddpd	1760(%rax), %ymm0, %ymm0
 769      E0060000 
 770 10b8 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 770      E0050000 
 771 10c0 C5FD2882 		vmovapd	2272(%rdx), %ymm0
 771      E0080000 
 772 10c8 C5FD5882 		vaddpd	2016(%rdx), %ymm0, %ymm0
 772      E0070000 
 773 10d0 C5FD2982 		vmovapd	%ymm0, 2144(%rdx)
 773      60080000 
 774 10d8 4C39C0   		cmpq	%r8, %rax
 775 10db 0F8525FF 		jne	.L25
 775      FFFF
 776 10e1 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 777 10e5 C57D2825 		vmovapd	.LC20(%rip), %ymm12
 777      00000000 
 778 10ed 4889F8   		movq	%rdi, %rax
 779 10f0 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 779      C0
 780 10f5 4889F2   		movq	%rsi, %rdx
 781              	.L27:
 782 10f8 C5FD2802 		vmovapd	(%rdx), %ymm0
 783 10fc 4883C240 		addq	$64, %rdx
 784 1100 4883C020 		addq	$32, %rax
 785 1104 C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 785      00000000 
 786 110c C5FD2982 		vmovapd	%ymm0, -1120(%rdx)
 786      A0FBFFFF 
 787 1114 C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 787      E0
 788 1119 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 788      00000000 
 789 1121 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 789      C008
 790 1127 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 790      C808
 791 112d C5FD118C 		vmovupd	%ymm1, 320(%rsp)
 791      24400100 
 791      00
 792 1136 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 792      00000000 
 793 113e C57B108C 		vmovsd	320(%rsp), %xmm9
 793      24400100 
 793      00
 794 1147 C57B1094 		vmovsd	328(%rsp), %xmm10
 794      24480100 
 794      00
 795 1150 C4C1FB2C 		vcvttsd2siq	%xmm9, %rbx
GAS LISTING /tmp/ccObQ0kt.s 			page 26


 795      D9
 796 1155 C441FB2C 		vcvttsd2siq	%xmm10, %r8
 796      C2
 797 115a C57B109C 		vmovsd	336(%rsp), %xmm11
 797      24500100 
 797      00
 798 1163 C57B10AC 		vmovsd	344(%rsp), %xmm13
 798      24580100 
 798      00
 799 116c 48899C24 		movq	%rbx, 128(%rsp)
 799      80000000 
 800 1174 C4C1FB2C 		vcvttsd2siq	%xmm11, %rbx
 800      DB
 801 1179 C5FA7E9C 		vmovq	128(%rsp), %xmm3
 801      24800000 
 801      00
 802 1182 C4C3E122 		vpinsrq	$1, %r8, %xmm3, %xmm4
 802      E001
 803 1188 C441FB2C 		vcvttsd2siq	%xmm13, %r8
 803      C5
 804 118d C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 804      00000000 
 805 1195 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 805      00000000 
 806 119d C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 807 11a1 48899C24 		movq	%rbx, 128(%rsp)
 807      80000000 
 808 11a9 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 808      24800000 
 808      00
 809 11b2 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 809      E801
 810 11b8 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 811 11bc C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 812 11c0 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 813 11c4 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 813      00000000 
 814 11cc C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 815 11d0 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 815      00000000 
 816 11d8 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 816      00000000 
 817 11e0 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 817      00000000 
 818 11e8 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 819 11ec C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 819      00000000 
 820 11f4 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 820      00000000 
 821 11fc C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 822 1200 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 822      D1
 823 1205 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 823      00000000 
 824 120d C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 825 1211 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 825      00000000 
GAS LISTING /tmp/ccObQ0kt.s 			page 27


 826 1219 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 827 121d C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 827      CA
 828 1222 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 828      00000000 
 829 122a C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 829      00000000 
 830 1232 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 830      F2
 831 1237 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 831      00000000 
 832 123f C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 832      00000000 
 833 1247 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 834 124b C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 835 124f C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 836 1253 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 836      00000000 
 837 125b C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 838 125f C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 838      C9
 839 1264 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 839      D201
 840 126a C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 841 126e C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 842 1272 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 842      F201
 843 1278 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 843      00000000 
 844 1280 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 844      0D000000 
 844      00
 845 1289 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 846 128d C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 846      00000000 
 847 1295 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 847      00000000 
 848 129d C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 848      15000000 
 848      00
 849 12a6 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 849      C7
 850 12ab C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 850      00000000 
 851 12b3 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 851      CF
 852 12b8 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 852      00000000 
 853 12c0 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 853      00000000 
 854 12c8 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 854      C801
 855 12ce C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 855      05000000 
 855      00
 856 12d7 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 856      C801
GAS LISTING /tmp/ccObQ0kt.s 			page 28


 857 12dd C5F928C2 		vmovapd	%xmm2, %xmm0
 858 12e1 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 858      00000000 
 859 12e9 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 859      00000000 
 860 12f1 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 860      01
 861 12f6 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 861      00000000 
 862 12fe C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 862      3E
 863 1303 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 863      05000000 
 863      00
 864 130c C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 864      00000000 
 865 1314 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 865      C201
 866 131a C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 867 131e C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 867      D800
 868 1324 C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 868      C400
 869 132a C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 869      C310
 870 1330 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 870      00000000 
 871 1338 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 871      00000000 
 872 1340 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 872      3E
 873 1345 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 873      CA01
 874 134b C5FD2890 		vmovapd	224(%rax), %ymm2
 874      E0000000 
 875 1353 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 875      C0
 876 1358 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 877 135c C5FD2842 		vmovapd	-96(%rdx), %ymm0
 877      A0
 878 1361 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 879 1365 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 879      00000000 
 880 136d C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 881 1371 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 882 1375 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 883 1379 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 884 137d C5FD2982 		vmovapd	%ymm0, -1088(%rdx)
 884      C0FBFFFF 
 885 1385 4839D1   		cmpq	%rdx, %rcx
 886 1388 0F856AFD 		jne	.L27
 886      FFFF
 887 138e 488D9424 		leaq	832(%rsp), %rdx
 887      40030000 
 888 1396 41B80400 		movl	$4, %r8d
 888      0000
 889 139c 4889D0   		movq	%rdx, %rax
GAS LISTING /tmp/ccObQ0kt.s 			page 29


 890              	.L29:
 891 139f C5FD2825 		vmovapd	.LC39(%rip), %ymm4
 891      00000000 
 892 13a7 4883C040 		addq	$64, %rax
 893 13ab 4883C220 		addq	$32, %rdx
 894 13af C5FD282D 		vmovapd	.LC40(%rip), %ymm5
 894      00000000 
 895 13b7 C5DD5940 		vmulpd	-64(%rax), %ymm4, %ymm0
 895      C0
 896 13bc C5FD283D 		vmovapd	.LC36(%rip), %ymm7
 896      00000000 
 897 13c4 C5D559A0 		vmulpd	704(%rax), %ymm5, %ymm4
 897      C0020000 
 898 13cc C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 898      00000000 
 899 13d4 C5C55988 		vmulpd	448(%rax), %ymm7, %ymm1
 899      C0010000 
 900 13dc C5FD283D 		vmovapd	.LC38(%rip), %ymm7
 900      00000000 
 901 13e4 C5E55990 		vmulpd	1216(%rax), %ymm3, %ymm2
 901      C0040000 
 902 13ec C5FD282D 		vmovapd	.LC39(%rip), %ymm5
 902      00000000 
 903 13f4 C5C55998 		vmulpd	960(%rax), %ymm7, %ymm3
 903      C0030000 
 904 13fc C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 905 1400 C5FD283D 		vmovapd	.LC37(%rip), %ymm7
 905      00000000 
 906 1408 C5FD2825 		vmovapd	.LC38(%rip), %ymm4
 906      00000000 
 907 1410 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 908 1414 C5FD281D 		vmovapd	.LC36(%rip), %ymm3
 908      00000000 
 909 141c C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 910 1420 C5C55990 		vmulpd	1248(%rax), %ymm7, %ymm2
 910      E0040000 
 911 1428 C5FD283D 		vmovapd	.LC40(%rip), %ymm7
 911      00000000 
 912 1430 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 913 1434 C5E55988 		vmulpd	480(%rax), %ymm3, %ymm1
 913      E0010000 
 914 143c C5DD5998 		vmulpd	992(%rax), %ymm4, %ymm3
 914      E0030000 
 915 1444 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 915      E0080000 
 916 144c C5C559A0 		vmulpd	736(%rax), %ymm7, %ymm4
 916      E0020000 
 917 1454 C5FD5880 		vaddpd	1728(%rax), %ymm0, %ymm0
 917      C0060000 
 918 145c C5FD2980 		vmovapd	%ymm0, 1472(%rax)
 918      C0050000 
 919 1464 C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 919      E0
 920 1469 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 921 146d C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 922 1471 C5FD281D 		vmovapd	.LC41(%rip), %ymm3
 922      00000000 
GAS LISTING /tmp/ccObQ0kt.s 			page 30


 923 1479 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 924 147d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 925 1481 C5FD5982 		vmulpd	2272(%rdx), %ymm0, %ymm0
 925      E0080000 
 926 1489 C5FD5880 		vaddpd	1760(%rax), %ymm0, %ymm0
 926      E0060000 
 927 1491 C5FD2980 		vmovapd	%ymm0, 1504(%rax)
 927      E0050000 
 928 1499 C5E55982 		vmulpd	2272(%rdx), %ymm3, %ymm0
 928      E0080000 
 929 14a1 C5FD5882 		vaddpd	2016(%rdx), %ymm0, %ymm0
 929      E0070000 
 930 14a9 C5FD2982 		vmovapd	%ymm0, 2144(%rdx)
 930      60080000 
 931 14b1 4183E801 		subl	$1, %r8d
 932 14b5 0F85E4FE 		jne	.L29
 932      FFFF
 933 14bb C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 934 14bf C57D282D 		vmovapd	.LC20(%rip), %ymm13
 934      00000000 
 935 14c7 4889F0   		movq	%rsi, %rax
 936 14ca C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 936      C0
 937              	.L31:
 938 14cf C5FD2800 		vmovapd	(%rax), %ymm0
 939 14d3 4883C040 		addq	$64, %rax
 940 14d7 4883C720 		addq	$32, %rdi
 941 14db C5FD2825 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 941      00000000 
 942 14e3 C5FD2980 		vmovapd	%ymm0, -1376(%rax)
 942      A0FAFFFF 
 943 14eb C5DD5457 		vandpd	-32(%rdi), %ymm4, %ymm2
 943      E0
 944 14f0 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 944      00000000 
 945 14f8 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 945      C008
 946 14fe C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 946      C808
 947 1504 C5FD118C 		vmovupd	%ymm1, 352(%rsp)
 947      24600100 
 947      00
 948 150d C5FB108C 		vmovsd	352(%rsp), %xmm1
 948      24600100 
 948      00
 949 1516 C5FB109C 		vmovsd	360(%rsp), %xmm3
 949      24680100 
 949      00
 950 151f C4E1FB2C 		vcvttsd2siq	%xmm1, %rbx
 950      D9
 951 1524 C4E1FB2C 		vcvttsd2siq	%xmm3, %rdx
 951      D3
 952 1529 C5FB10B4 		vmovsd	376(%rsp), %xmm6
 952      24780100 
 952      00
 953 1532 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 953      00000000 
GAS LISTING /tmp/ccObQ0kt.s 			page 31


 954 153a 48899C24 		movq	%rbx, 128(%rsp)
 954      80000000 
 955 1542 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 955      24800000 
 955      00
 956 154b C4E3D122 		vpinsrq	$1, %rdx, %xmm5, %xmm4
 956      E201
 957 1551 C4E1FB2C 		vcvttsd2siq	%xmm6, %rdx
 957      D6
 958 1556 C5FB10AC 		vmovsd	368(%rsp), %xmm5
 958      24700100 
 958      00
 959 155f C4E1FB2C 		vcvttsd2siq	%xmm5, %rbx
 959      DD
 960 1564 48899C24 		movq	%rbx, 128(%rsp)
 960      80000000 
 961 156c C5FA7E9C 		vmovq	128(%rsp), %xmm3
 961      24800000 
 961      00
 962 1575 C4E3E122 		vpinsrq	$1, %rdx, %xmm3, %xmm5
 962      EA01
 963 157b C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 963      00000000 
 964 1583 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 964      00000000 
 965 158b C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 966 158f C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 967 1593 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 968 1597 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 969 159b C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 969      00000000 
 970 15a3 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 971 15a7 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 971      00000000 
 972 15af C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 972      00000000 
 973 15b7 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 973      00000000 
 974 15bf C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 975 15c3 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 975      00000000 
 976 15cb C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 976      00000000 
 977 15d3 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 978 15d7 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 978      D1
 979 15dc C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 979      00000000 
 980 15e4 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 981 15e8 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 981      00000000 
 982 15f0 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 983 15f4 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 983      CA
 984 15f9 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 984      00000000 
 985 1601 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
GAS LISTING /tmp/ccObQ0kt.s 			page 32


 985      00000000 
 986 1609 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 986      F2
 987 160e C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 987      00000000 
 988 1616 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 988      00000000 
 989 161e C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 990 1622 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 991 1626 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 992 162a C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 992      00000000 
 993 1632 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 994 1636 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 994      C9
 995 163b C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 995      D201
 996 1641 C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 997 1645 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 998 1649 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 998      F201
 999 164f C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 999      00000000 
 1000 1657 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 1000      0D000000 
 1000      00
 1001 1660 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 1002 1664 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 1002      00000000 
 1003 166c C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 1003      00000000 
 1004 1674 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 1004      15000000 
 1004      00
 1005 167d C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 1005      C7
 1006 1682 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1006      00000000 
 1007 168a C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 1007      CF
 1008 168f C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1008      00000000 
 1009 1697 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 1009      00000000 
 1010 169f C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 1010      C801
 1011 16a5 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 1011      05000000 
 1011      00
 1012 16ae C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 1012      C801
 1013 16b4 C5F928C2 		vmovapd	%xmm2, %xmm0
 1014 16b8 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 1014      00000000 
 1015 16c0 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 1015      00000000 
 1016 16c8 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
GAS LISTING /tmp/ccObQ0kt.s 			page 33


 1016      01
 1017 16cd C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1017      00000000 
 1018 16d5 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 1018      3E
 1019 16da C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1019      05000000 
 1019      00
 1020 16e3 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1020      00000000 
 1021 16eb C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 1021      C201
 1022 16f1 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 1023 16f5 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 1023      D800
 1024 16fb C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 1024      C500
 1025 1701 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 1025      C310
 1026 1707 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 1026      00000000 
 1027 170f C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 1027      00000000 
 1028 1717 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 1028      3E
 1029 171c C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 1029      CA01
 1030 1722 C5FD2897 		vmovapd	224(%rdi), %ymm2
 1030      E0000000 
 1031 172a C5ED5950 		vmulpd	-64(%rax), %ymm2, %ymm2
 1031      C0
 1032 172f C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 1033 1733 C5FD2840 		vmovapd	-96(%rax), %ymm0
 1033      A0
 1034 1738 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1035 173c C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 1035      00000000 
 1036 1744 C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 1037 1748 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 1038 174c C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 1039 1750 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1040 1754 C5FD2980 		vmovapd	%ymm0, -1344(%rax)
 1040      C0FAFFFF 
 1041 175c 4839C1   		cmpq	%rax, %rcx
 1042 175f 0F856AFD 		jne	.L31
 1042      FFFF
 1043 1765 488D8424 		leaq	832(%rsp), %rax
 1043      40030000 
 1044 176d 488DBC24 		leaq	1088(%rsp), %rdi
 1044      40040000 
 1045 1775 BE010000 		movl	$1, %esi
 1045      00
 1046 177a 4889C1   		movq	%rax, %rcx
 1047              	.L35:
 1048 177d 8D56FF   		leal	-1(%rsi), %edx
 1049 1780 4889F8   		movq	%rdi, %rax
 1050              		.p2align 4,,10
GAS LISTING /tmp/ccObQ0kt.s 			page 34


 1051 1783 0F1F4400 		.p2align 3
 1051      00
 1052              	.L33:
 1053 1788 C5FD282D 		vmovapd	.LC42(%rip), %ymm5
 1053      00000000 
 1054 1790 83C201   		addl	$1, %edx
 1055 1793 4883C020 		addq	$32, %rax
 1056 1797 C5FD283D 		vmovapd	.LC44(%rip), %ymm7
 1056      00000000 
 1057 179f C5D55948 		vmulpd	-32(%rax), %ymm5, %ymm1
 1057      E0
 1058 17a4 C5FD282D 		vmovapd	.LC45(%rip), %ymm5
 1058      00000000 
 1059 17ac C5C55980 		vmulpd	736(%rax), %ymm7, %ymm0
 1059      E0020000 
 1060 17b4 C5FD2835 		vmovapd	.LC43(%rip), %ymm6
 1060      00000000 
 1061 17bc C5D55998 		vmulpd	480(%rax), %ymm5, %ymm3
 1061      E0010000 
 1062 17c4 C5FD2825 		vmovapd	.LC46(%rip), %ymm4
 1062      00000000 
 1063 17cc C5CD5990 		vmulpd	992(%rax), %ymm6, %ymm2
 1063      E0030000 
 1064 17d4 C5FD282D 		vmovapd	.LC49(%rip), %ymm5
 1064      00000000 
 1065 17dc C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 1065      00000000 
 1066 17e4 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1066      00000000 
 1067 17ec C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 1068 17f0 C5C55998 		vmulpd	992(%rax), %ymm7, %ymm3
 1068      E0030000 
 1069 17f8 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1070 17fc C5CD5990 		vmulpd	224(%rax), %ymm6, %ymm2
 1070      E0000000 
 1071 1804 C5FD2835 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 1071      00000000 
 1072 180c C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1073 1810 C5DD5948 		vmulpd	-32(%rax), %ymm4, %ymm1
 1073      E0
 1074 1815 C5FD2825 		vmovapd	.LC50(%rip), %ymm4
 1074      00000000 
 1075 181d C5DD59A0 		vmulpd	480(%rax), %ymm4, %ymm4
 1075      E0010000 
 1076 1825 C5FD5981 		vmulpd	2304(%rcx), %ymm0, %ymm0
 1076      00090000 
 1077 182d C5FD5880 		vaddpd	1504(%rax), %ymm0, %ymm0
 1077      E0050000 
 1078 1835 C5FD2980 		vmovapd	%ymm0, 1248(%rax)
 1078      E0040000 
 1079 183d C5D55980 		vmulpd	736(%rax), %ymm5, %ymm0
 1079      E0020000 
 1080 1845 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 1081 1849 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1082 184d C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1083 1851 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1084 1855 C5CD5488 		vandpd	1248(%rax), %ymm6, %ymm1
GAS LISTING /tmp/ccObQ0kt.s 			page 35


 1084      E0040000 
 1085 185d C5FD5981 		vmulpd	2304(%rcx), %ymm0, %ymm0
 1085      00090000 
 1086 1865 C5F5590D 		vmulpd	.LC51(%rip), %ymm1, %ymm1
 1086      00000000 
 1087 186d C5FD2980 		vmovapd	%ymm0, -288(%rax)
 1087      E0FEFFFF 
 1088 1875 C5F5580D 		vaddpd	.LC51(%rip), %ymm1, %ymm1
 1088      00000000 
 1089 187d C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 1090 1881 C5FD2948 		vmovapd	%ymm1, -32(%rax)
 1090      E0
 1091 1886 C5FD54C6 		vandpd	%ymm6, %ymm0, %ymm0
 1092 188a C5FD2980 		vmovapd	%ymm0, 224(%rax)
 1092      E0000000 
 1093 1892 39D6     		cmpl	%edx, %esi
 1094 1894 0F8DEEFE 		jge	.L33
 1094      FFFF
 1095 189a 83C602   		addl	$2, %esi
 1096 189d 4883C120 		addq	$32, %rcx
 1097 18a1 4883C740 		addq	$64, %rdi
 1098 18a5 83FE09   		cmpl	$9, %esi
 1099 18a8 0F85CFFE 		jne	.L35
 1099      FFFF
 1100 18ae C5FD2884 		vmovapd	1344(%rsp), %ymm0
 1100      24400500 
 1100      00
 1101 18b7 488D8424 		leaq	832(%rsp), %rax
 1101      40030000 
 1102 18bf 4C8D8424 		leaq	2624(%rsp), %r8
 1102      400A0000 
 1103 18c7 C5FD286C 		vmovapd	32(%rsp), %ymm5
 1103      2420
 1104 18cd 31FF     		xorl	%edi, %edi
 1105 18cf C5FD5D84 		vminpd	1376(%rsp), %ymm0, %ymm0
 1105      24600500 
 1105      00
 1106 18d8 4889C6   		movq	%rax, %rsi
 1107 18db C5FD2874 		vmovapd	64(%rsp), %ymm6
 1107      2440
 1108 18e1 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 1108      24400400 
 1108      00
 1109 18ea C5FD2884 		vmovapd	1408(%rsp), %ymm0
 1109      24800500 
 1109      00
 1110 18f3 C5FD5D84 		vminpd	1440(%rsp), %ymm0, %ymm0
 1110      24A00500 
 1110      00
 1111 18fc C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 1111      24600400 
 1111      00
 1112 1905 C5FD2884 		vmovapd	1472(%rsp), %ymm0
 1112      24C00500 
 1112      00
 1113 190e C5FD5D84 		vminpd	1504(%rsp), %ymm0, %ymm0
 1113      24E00500 
GAS LISTING /tmp/ccObQ0kt.s 			page 36


 1113      00
 1114 1917 C5FD2984 		vmovapd	%ymm0, 1152(%rsp)
 1114      24800400 
 1114      00
 1115 1920 C5FD2884 		vmovapd	1536(%rsp), %ymm0
 1115      24000600 
 1115      00
 1116 1929 C5FD5D84 		vminpd	1568(%rsp), %ymm0, %ymm0
 1116      24200600 
 1116      00
 1117 1932 C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 1117      24A00400 
 1117      00
 1118              	.L41:
 1119 193b C5FD28A6 		vmovapd	256(%rsi), %ymm4
 1119      00010000 
 1120 1943 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1120      E301
 1121 1949 C5F928D4 		vmovapd	%xmm4, %xmm2
 1122 194d C5E1DB0D 		vpand	.LC52(%rip), %xmm3, %xmm1
 1122      00000000 
 1123 1955 C5C173D2 		vpsrlq	$52, %xmm2, %xmm7
 1123      34
 1124 195a C5E9DB05 		vpand	.LC52(%rip), %xmm2, %xmm0
 1124      00000000 
 1125 1962 C5C1EB3D 		vpor	.LC54(%rip), %xmm7, %xmm7
 1125      00000000 
 1126 196a C5F1EB0D 		vpor	.LC53(%rip), %xmm1, %xmm1
 1126      00000000 
 1127 1972 C5F9EB05 		vpor	.LC53(%rip), %xmm0, %xmm0
 1127      00000000 
 1128 197a C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 1128      C101
 1129 1980 C5F173D3 		vpsrlq	$52, %xmm3, %xmm1
 1129      34
 1130 1985 C5F1EB0D 		vpor	.LC54(%rip), %xmm1, %xmm1
 1130      00000000 
 1131 198d C4E34518 		vinsertf128	$0x1, %xmm1, %ymm7, %ymm7
 1131      F901
 1132 1993 C5FD280D 		vmovapd	.LC56(%rip), %ymm1
 1132      00000000 
 1133 199b C5F5C2C8 		vcmppd	$1, %ymm0, %ymm1, %ymm1
 1133      01
 1134 19a0 C5C55C3D 		vsubpd	.LC55(%rip), %ymm7, %ymm7
 1134      00000000 
 1135 19a8 C4C37D19 		vextractf128	$0x1, %ymm1, %xmm9
 1135      C901
 1136 19ae C57928C1 		vmovapd	%xmm1, %xmm8
 1137 19b2 C5F5540D 		vandpd	.LC20(%rip), %ymm1, %ymm1
 1137      00000000 
 1138 19ba C531EF0D 		vpxor	.LC105(%rip), %xmm9, %xmm9
 1138      00000000 
 1139 19c2 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1139      00000000 
 1140 19ca C5C558F9 		vaddpd	%ymm1, %ymm7, %ymm7
 1141 19ce C4433D18 		vinsertf128	$0x1, %xmm9, %ymm8, %ymm8
 1141      C101
GAS LISTING /tmp/ccObQ0kt.s 			page 37


 1142 19d4 C53D54C0 		vandpd	%ymm0, %ymm8, %ymm8
 1143 19d8 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 1144 19dc C5FD5C05 		vsubpd	.LC20(%rip), %ymm0, %ymm0
 1144      00000000 
 1145 19e4 C57D590D 		vmulpd	.LC59(%rip), %ymm0, %ymm9
 1145      00000000 
 1146 19ec C57D581D 		vaddpd	.LC65(%rip), %ymm0, %ymm11
 1146      00000000 
 1147 19f4 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 1148 19f8 C57D5915 		vmulpd	.LC57(%rip), %ymm0, %ymm10
 1148      00000000 
 1149 1a00 C535580D 		vaddpd	.LC60(%rip), %ymm9, %ymm9
 1149      00000000 
 1150 1a08 C57559C1 		vmulpd	%ymm1, %ymm1, %ymm8
 1151 1a0c C52D5815 		vaddpd	.LC58(%rip), %ymm10, %ymm10
 1151      00000000 
 1152 1a14 C4413559 		vmulpd	%ymm8, %ymm9, %ymm9
 1152      C8
 1153 1a19 C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 1153      C0
 1154 1a1e C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1154      CA
 1155 1a23 C57D5915 		vmulpd	.LC61(%rip), %ymm0, %ymm10
 1155      00000000 
 1156 1a2b C52D5815 		vaddpd	.LC62(%rip), %ymm10, %ymm10
 1156      00000000 
 1157 1a33 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1158 1a37 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 1158      D1
 1159 1a3c C57D59C9 		vmulpd	%ymm1, %ymm0, %ymm9
 1160 1a40 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 1160      C9
 1161 1a45 C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
 1161      00000000 
 1162 1a4d C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 1162      00000000 
 1163 1a55 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 1163      C2
 1164 1a5a C57D5915 		vmulpd	.LC66(%rip), %ymm0, %ymm10
 1164      00000000 
 1165 1a62 C52D5815 		vaddpd	.LC67(%rip), %ymm10, %ymm10
 1165      00000000 
 1166 1a6a C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1167 1a6e C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 1167      00000000 
 1168 1a76 C4412D58 		vaddpd	%ymm8, %ymm10, %ymm8
 1168      C0
 1169 1a7b C5A973F3 		vpsllq	$1, %xmm3, %xmm10
 1169      01
 1170 1a80 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1171 1a84 C441355E 		vdivpd	%ymm8, %ymm9, %ymm8
 1171      C0
 1172 1a89 C545590D 		vmulpd	.LC68(%rip), %ymm7, %ymm9
 1172      00000000 
 1173 1a91 C5C5590D 		vmulpd	.LC69(%rip), %ymm7, %ymm1
 1173      00000000 
 1174 1a99 C5A9DB3D 		vpand	.LC23(%rip), %xmm10, %xmm7
GAS LISTING /tmp/ccObQ0kt.s 			page 38


 1174      00000000 
 1175 1aa1 C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 1175      C0
 1176 1aa6 C5B173F2 		vpsllq	$1, %xmm2, %xmm9
 1176      01
 1177 1aab C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 1177      3D000000 
 1177      00
 1178 1ab4 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1178      00000000 
 1179 1abc C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 1180 1ac0 C531DB05 		vpand	.LC23(%rip), %xmm9, %xmm8
 1180      00000000 
 1181 1ac8 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 1182 1acc C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1182      05000000 
 1182      00
 1183 1ad5 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1183      00000000 
 1184 1add C4633D18 		vinsertf128	$0x1, %xmm7, %ymm8, %ymm8
 1184      C701
 1185 1ae3 C4437D19 		vextractf128	$0x1, %ymm8, %xmm11
 1185      C301
 1186 1ae9 C57929C7 		vmovapd	%xmm8, %xmm7
 1187 1aed C55DC205 		vcmppd	$1, .LC70(%rip), %ymm4, %ymm8
 1187      00000000 
 1187      01
 1188 1af6 C521EF1D 		vpxor	.LC105(%rip), %xmm11, %xmm11
 1188      00000000 
 1189 1afe C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1189      00000000 
 1190 1b06 C4C34518 		vinsertf128	$0x1, %xmm11, %ymm7, %ymm7
 1190      FB01
 1191 1b0c C57D28E7 		vmovapd	%ymm7, %ymm12
 1192 1b10 C5BD56FF 		vorpd	%ymm7, %ymm8, %ymm7
 1193 1b14 C4C37D19 		vextractf128	$0x1, %ymm7, %xmm11
 1193      FB01
 1194 1b1a C4C14156 		vorpd	%xmm11, %xmm7, %xmm7
 1194      FB
 1195 1b1f C5F950C7 		vmovmskpd	%xmm7, %eax
 1196 1b23 85C0     		testl	%eax, %eax
 1197 1b25 0F848600 		je	.L36
 1197      0000
 1198 1b2b C4E3754B 		vblendvpd	%ymm8, .LC71(%rip), %ymm1, %ymm1
 1198      0D000000 
 1198      0080
 1199 1b35 C5E1DB3D 		vpand	.LC73(%rip), %xmm3, %xmm7
 1199      00000000 
 1200 1b3d C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1200      1F
 1201 1b42 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 1201      15000000 
 1201      00
 1202 1b4b C569DB05 		vpand	.LC73(%rip), %xmm2, %xmm8
 1202      00000000 
 1203 1b53 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1203      1F
GAS LISTING /tmp/ccObQ0kt.s 			page 39


 1204 1b58 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 1205 1b5c C4E24129 		vpcmpeqq	%xmm0, %xmm7, %xmm7
 1205      F8
 1206 1b61 C4E23929 		vpcmpeqq	%xmm0, %xmm8, %xmm0
 1206      C0
 1207 1b66 C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 1207      C701
 1208 1b6c C4E3754B 		vblendvpd	%ymm0, %ymm6, %ymm1, %ymm0
 1208      C600
 1209 1b72 C4E23129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm1
 1209      0D000000 
 1209      00
 1210 1b7b C4E37D4B 		vblendvpd	%ymm12, %ymm4, %ymm0, %ymm4
 1210      E4C0
 1211 1b81 C5F973D3 		vpsrlq	$32, %xmm3, %xmm0
 1211      20
 1212 1b86 C4E3790E 		vpblendw	$204, %xmm3, %xmm0, %xmm3
 1212      DBCC
 1213 1b8c C5F973D2 		vpsrlq	$32, %xmm2, %xmm0
 1213      20
 1214 1b91 C4E3790E 		vpblendw	$204, %xmm2, %xmm0, %xmm0
 1214      C2CC
 1215 1b97 C4C37518 		vinsertf128	$0x1, %xmm10, %ymm1, %ymm1
 1215      CA01
 1216 1b9d C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1216      C301
 1217 1ba3 C5F554C8 		vandpd	%ymm0, %ymm1, %ymm1
 1218 1ba7 C4E35D4B 		vblendvpd	%ymm1, .LC71(%rip), %ymm4, %ymm1
 1218      0D000000 
 1218      0010
 1219              	.L36:
 1220 1bb1 C5F5590D 		vmulpd	.LC26(%rip), %ymm1, %ymm1
 1220      00000000 
 1221 1bb9 C5F55925 		vmulpd	.LC74(%rip), %ymm1, %ymm4
 1221      00000000 
 1222 1bc1 C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 1222      E408
 1223 1bc7 C5DD5915 		vmulpd	.LC75(%rip), %ymm4, %ymm2
 1223      00000000 
 1224 1bcf C5DD5905 		vmulpd	.LC76(%rip), %ymm4, %ymm0
 1224      00000000 
 1225 1bd7 C5DD5825 		vaddpd	.LC55(%rip), %ymm4, %ymm4
 1225      00000000 
 1226 1bdf C5F55CD2 		vsubpd	%ymm2, %ymm1, %ymm2
 1227 1be3 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 1228 1be7 C5FD593D 		vmulpd	.LC80(%rip), %ymm0, %ymm7
 1228      00000000 
 1229 1bef C57D590D 		vmulpd	.LC77(%rip), %ymm0, %ymm9
 1229      00000000 
 1230 1bf7 C57D5915 		vmulpd	.LC78(%rip), %ymm0, %ymm10
 1230      00000000 
 1231 1bff C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 1232 1c03 C5C5583D 		vaddpd	.LC81(%rip), %ymm7, %ymm7
 1232      00000000 
 1233 1c0b C535580D 		vaddpd	.LC19(%rip), %ymm9, %ymm9
 1233      00000000 
 1234 1c13 C52D5815 		vaddpd	.LC79(%rip), %ymm10, %ymm10
GAS LISTING /tmp/ccObQ0kt.s 			page 40


 1234      00000000 
 1235 1c1b C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 1236 1c1f C5C559FA 		vmulpd	%ymm2, %ymm7, %ymm7
 1237 1c23 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 1238 1c27 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1239 1c2b C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1239      FA
 1240 1c30 C57D5915 		vmulpd	.LC84(%rip), %ymm0, %ymm10
 1240      00000000 
 1241 1c38 C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 1242 1c3c C5C559FB 		vmulpd	%ymm3, %ymm7, %ymm7
 1243 1c40 C52D5815 		vaddpd	.LC85(%rip), %ymm10, %ymm10
 1243      00000000 
 1244 1c48 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1244      F9
 1245 1c4d C57D590D 		vmulpd	.LC82(%rip), %ymm0, %ymm9
 1245      00000000 
 1246 1c55 C5FD5905 		vmulpd	.LC86(%rip), %ymm0, %ymm0
 1246      00000000 
 1247 1c5d C5AD59D2 		vmulpd	%ymm2, %ymm10, %ymm2
 1248 1c61 C535580D 		vaddpd	.LC83(%rip), %ymm9, %ymm9
 1248      00000000 
 1249 1c69 C5FD5805 		vaddpd	.LC87(%rip), %ymm0, %ymm0
 1249      00000000 
 1250 1c71 C4C16D58 		vaddpd	%ymm9, %ymm2, %ymm2
 1250      D1
 1251 1c76 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 1252 1c7a C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 1252      34
 1253 1c7f C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 1254 1c83 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1254      E301
 1255 1c89 C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1255      34
 1256 1c8e C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1256      C301
 1257 1c94 C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 1257      D0
 1258 1c99 C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 1258      CB01
 1259 1c9f C5ED58D7 		vaddpd	%ymm7, %ymm2, %ymm2
 1260 1ca3 C5B973F3 		vpsllq	$1, %xmm3, %xmm8
 1260      01
 1261 1ca8 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 1261      00000000 
 1262 1cb0 C5F5543D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 1262      00000000 
 1263 1cb8 C5ED5825 		vaddpd	.LC20(%rip), %ymm2, %ymm4
 1263      00000000 
 1264 1cc0 C5F928D1 		vmovapd	%xmm1, %xmm2
 1265 1cc4 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1265      05000000 
 1265      00
 1266 1ccd C5C5C23D 		vcmppd	$1, .LC88(%rip), %ymm7, %ymm7
 1266      00000000 
 1266      01
 1267 1cd6 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
GAS LISTING /tmp/ccObQ0kt.s 			page 41


 1267      00000000 
 1268 1cde C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 1269 1ce2 C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 1269      01
 1270 1ce7 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1270      00000000 
 1271 1cef C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1271      05000000 
 1271      00
 1272 1cf8 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1272      00000000 
 1273 1d00 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 1273      C001
 1274 1d06 C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 1275 1d0a C4E37D19 		vextractf128	$0x1, %ymm0, %xmm7
 1275      C701
 1276 1d10 C57928C0 		vmovapd	%xmm0, %xmm8
 1277 1d14 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1278 1d18 C5F950C7 		vmovmskpd	%xmm7, %eax
 1279 1d1c 83F803   		cmpl	$3, %eax
 1280 1d1f 0F84C004 		je	.L61
 1280      0000
 1281 1d25 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1281      1F
 1282 1d2a C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1282      1F
 1283 1d2f C5C173D3 		vpsrlq	$32, %xmm3, %xmm7
 1283      20
 1284 1d34 C4E3410E 		vpblendw	$204, %xmm3, %xmm7, %xmm3
 1284      DBCC
 1285 1d3a C5C173D2 		vpsrlq	$32, %xmm2, %xmm7
 1285      20
 1286 1d3f C4E3410E 		vpblendw	$204, %xmm2, %xmm7, %xmm2
 1286      D2CC
 1287 1d45 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 1287      DB01
 1288 1d4b C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 1289 1d4f C4E3554B 		vblendvpd	%ymm3, %ymm2, %ymm5, %ymm2
 1289      D230
 1290 1d55 C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 1290      C400
 1291 1d5b C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 1291      04
 1292 1d60 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 1292      C120
 1293              	.L37:
 1294 1d66 C5FD288E 		vmovapd	2304(%rsi), %ymm1
 1294      00090000 
 1295 1d6e 8D4F01   		leal	1(%rdi), %ecx
 1296 1d71 89FA     		movl	%edi, %edx
 1297 1d73 C5FD2815 		vmovapd	.LC20(%rip), %ymm2
 1297      00000000 
 1298 1d7b 4C89C0   		movq	%r8, %rax
 1299 1d7e C5F5C20D 		vcmppd	$2, .LC89(%rip), %ymm1, %ymm1
 1299      00000000 
 1299      02
 1300 1d87 C5FD283D 		vmovapd	.LC90(%rip), %ymm7
GAS LISTING /tmp/ccObQ0kt.s 			page 42


 1300      00000000 
 1301 1d8f C5EDC296 		vcmppd	$2, 256(%rsi), %ymm2, %ymm2
 1301      00010000 
 1301      02
 1302 1d98 C5ED56C9 		vorpd	%ymm1, %ymm2, %ymm1
 1303 1d9c C5C5C2D0 		vcmppd	$1, %ymm0, %ymm7, %ymm2
 1303      01
 1304 1da1 C4E37D4B 		vblendvpd	%ymm2, %ymm7, %ymm0, %ymm0
 1304      C720
 1305 1da7 C5FDC215 		vcmppd	$1, .LC26(%rip), %ymm0, %ymm2
 1305      00000000 
 1305      01
 1306 1db0 C4E37D4B 		vblendvpd	%ymm2, .LC26(%rip), %ymm0, %ymm0
 1306      05000000 
 1306      0020
 1307 1dba C5FD2986 		vmovapd	%ymm0, 512(%rsi)
 1307      00020000 
 1308              		.p2align 4,,10
 1309 1dc2 660F1F44 		.p2align 3
 1309      0000
 1310              	.L39:
 1311 1dc8 C5FD2800 		vmovapd	(%rax), %ymm0
 1312 1dcc 83C201   		addl	$1, %edx
 1313 1dcf 4883C020 		addq	$32, %rax
 1314 1dd3 C4E37D4B 		vblendvpd	%ymm1, -288(%rax), %ymm0, %ymm0
 1314      80E0FEFF 
 1314      FF10
 1315 1ddd C5FD2940 		vmovapd	%ymm0, -32(%rax)
 1315      E0
 1316 1de2 39CA     		cmpl	%ecx, %edx
 1317 1de4 7EE2     		jle	.L39
 1318 1de6 C5FD2886 		vmovapd	2048(%rsi), %ymm0
 1318      00080000 
 1319 1dee 83C702   		addl	$2, %edi
 1320 1df1 4883C620 		addq	$32, %rsi
 1321 1df5 4983C040 		addq	$64, %r8
 1322 1df9 C5FD5896 		vaddpd	2272(%rsi), %ymm0, %ymm2
 1322      E0080000 
 1323 1e01 C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1323      C210
 1324 1e07 C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1324      00000000 
 1325 1e0f C5FD2986 		vmovapd	%ymm0, 2016(%rsi)
 1325      E0070000 
 1326 1e17 C5FD2886 		vmovapd	480(%rsi), %ymm0
 1326      E0010000 
 1327 1e1f C5FD5986 		vmulpd	2272(%rsi), %ymm0, %ymm0
 1327      E0080000 
 1328 1e27 C5FD5905 		vmulpd	.LC91(%rip), %ymm0, %ymm0
 1328      00000000 
 1329 1e2f C5EDC2C8 		vcmppd	$1, %ymm0, %ymm2, %ymm1
 1329      01
 1330 1e34 C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1330      C210
 1331 1e3a C5FDC20D 		vcmppd	$1, .LC89(%rip), %ymm0, %ymm1
 1331      00000000 
 1331      01
GAS LISTING /tmp/ccObQ0kt.s 			page 43


 1332 1e43 C4E37D4B 		vblendvpd	%ymm1, .LC89(%rip), %ymm0, %ymm0
 1332      05000000 
 1332      0010
 1333 1e4d C5FD2986 		vmovapd	%ymm0, 2272(%rsi)
 1333      E0080000 
 1334 1e55 83FF08   		cmpl	$8, %edi
 1335 1e58 0F85DDFA 		jne	.L41
 1335      FFFF
 1336 1e5e 4C8DB424 		leaq	832(%rsp), %r14
 1336      40030000 
 1337 1e66 488D8424 		leaq	960(%rsp), %rax
 1337      C0030000 
 1338 1e6e 4D89F5   		movq	%r14, %r13
 1339 1e71 48894424 		movq	%rax, 112(%rsp)
 1339      70
 1340 1e76 4D89F4   		movq	%r14, %r12
 1341              	.L51:
 1342 1e79 C4C17D28 		vmovapd	2048(%r12), %ymm1
 1342      8C240008 
 1342      0000
 1343 1e83 C4C17D28 		vmovapd	2560(%r12), %ymm2
 1343      9424000A 
 1343      0000
 1344 1e8d C5EDC2F9 		vcmppd	$2, %ymm1, %ymm2, %ymm7
 1344      02
 1345 1e92 C4E37D19 		vextractf128	$0x1, %ymm7, %xmm0
 1345      F801
 1346 1e98 C5FD29BC 		vmovapd	%ymm7, 128(%rsp)
 1346      24800000 
 1346      00
 1347 1ea1 C5F928DF 		vmovapd	%xmm7, %xmm3
 1348 1ea5 C5E156C0 		vorpd	%xmm0, %xmm3, %xmm0
 1349 1ea9 C5F950C0 		vmovmskpd	%xmm0, %eax
 1350 1ead 85C0     		testl	%eax, %eax
 1351 1eaf 0F841301 		je	.L42
 1351      0000
 1352 1eb5 31DB     		xorl	%ebx, %ebx
 1353              	.L49:
 1354 1eb7 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 1354      24800000 
 1354      00
 1355 1ec0 C5FD11BC 		vmovupd	%ymm7, 768(%rsp)
 1355      24000300 
 1355      00
 1356 1ec9 448B8C5C 		movl	772(%rsp,%rbx,2), %r9d
 1356      04030000 
 1357 1ed1 4585C9   		testl	%r9d, %r9d
 1358 1ed4 0F858601 		jne	.L75
 1358      0000
 1359              	.L57:
 1360 1eda 4883C304 		addq	$4, %rbx
 1361 1ede 4883FB10 		cmpq	$16, %rbx
 1362 1ee2 75D3     		jne	.L49
 1363 1ee4 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 1363      24800000 
 1363      00
 1364 1eed C5FD11BC 		vmovupd	%ymm7, 512(%rsp)
GAS LISTING /tmp/ccObQ0kt.s 			page 44


 1364      24000200 
 1364      00
 1365 1ef6 8B84241C 		movl	540(%rsp), %eax
 1365      020000
 1366 1efd C5FD11BC 		vmovupd	%ymm7, 576(%rsp)
 1366      24400200 
 1366      00
 1367 1f06 8B942454 		movl	596(%rsp), %edx
 1367      020000
 1368 1f0d C5FD11BC 		vmovupd	%ymm7, 640(%rsp)
 1368      24800200 
 1368      00
 1369 1f16 8BBC248C 		movl	652(%rsp), %edi
 1369      020000
 1370 1f1d C5FD11BC 		vmovupd	%ymm7, 704(%rsp)
 1370      24C00200 
 1370      00
 1371 1f26 85C0     		testl	%eax, %eax
 1372 1f28 448B8424 		movl	708(%rsp), %r8d
 1372      C4020000 
 1373 1f30 0F95C1   		setne	%cl
 1374 1f33 85D2     		testl	%edx, %edx
 1375 1f35 400F95C6 		setne	%sil
 1376 1f39 85FF     		testl	%edi, %edi
 1377 1f3b 0FB6C9   		movzbl	%cl, %ecx
 1378 1f3e 0F95C0   		setne	%al
 1379 1f41 400FB6F6 		movzbl	%sil, %esi
 1380 1f45 31D2     		xorl	%edx, %edx
 1381 1f47 4585C0   		testl	%r8d, %r8d
 1382 1f4a 0FB6C0   		movzbl	%al, %eax
 1383 1f4d 0F95C2   		setne	%dl
 1384 1f50 F7DE     		negl	%esi
 1385 1f52 F7D9     		negl	%ecx
 1386 1f54 89B42480 		movl	%esi, 128(%rsp)
 1386      000000
 1387 1f5b F7DA     		negl	%edx
 1388 1f5d F7D8     		negl	%eax
 1389 1f5f C5F96EAC 		vmovd	128(%rsp), %xmm5
 1389      24800000 
 1389      00
 1390 1f68 89942480 		movl	%edx, 128(%rsp)
 1390      000000
 1391 1f6f C5C55415 		vandpd	.LC97(%rip), %ymm7, %ymm2
 1391      00000000 
 1392 1f77 C4E35122 		vpinsrd	$1, %ecx, %xmm5, %xmm0
 1392      C101
 1393 1f7d C5F96EAC 		vmovd	128(%rsp), %xmm5
 1393      24800000 
 1393      00
 1394 1f86 C4E35122 		vpinsrd	$1, %eax, %xmm5, %xmm1
 1394      C801
 1395 1f8c C5F16CC0 		vpunpcklqdq	%xmm0, %xmm1, %xmm0
 1396 1f90 C5F9DB05 		vpand	.LC96(%rip), %xmm0, %xmm0
 1396      00000000 
 1397 1f98 C4C179FE 		vpaddd	2688(%r13), %xmm0, %xmm0
 1397      85800A00 
 1397      00
GAS LISTING /tmp/ccObQ0kt.s 			page 45


 1398 1fa1 C4C1797F 		vmovdqa	%xmm0, 2688(%r13)
 1398      85800A00 
 1398      00
 1399 1faa C4C16D58 		vaddpd	2560(%r12), %ymm2, %ymm2
 1399      9424000A 
 1399      0000
 1400 1fb4 C4C17D28 		vmovapd	2048(%r12), %ymm1
 1400      8C240008 
 1400      0000
 1401 1fbe C4C17D29 		vmovapd	%ymm2, 2560(%r12)
 1401      9424000A 
 1401      0000
 1402              	.L42:
 1403 1fc8 C4C17D28 		vmovapd	2304(%r12), %ymm0
 1403      84240009 
 1403      0000
 1404 1fd2 4983C510 		addq	$16, %r13
 1405 1fd6 4983C420 		addq	$32, %r12
 1406 1fda 4983C640 		addq	$64, %r14
 1407 1fde C5F558D8 		vaddpd	%ymm0, %ymm1, %ymm3
 1408 1fe2 C5ED5CC9 		vsubpd	%ymm1, %ymm2, %ymm1
 1409 1fe6 C5EDC2DB 		vcmppd	$2, %ymm3, %ymm2, %ymm3
 1409      02
 1410 1feb C4E37D4B 		vblendvpd	%ymm3, %ymm1, %ymm0, %ymm0
 1410      C130
 1411 1ff1 C4C17D29 		vmovapd	%ymm0, 2272(%r12)
 1411      8424E008 
 1411      0000
 1412 1ffb 4C3B6424 		cmpq	112(%rsp), %r12
 1412      70
 1413 2000 0F8573FE 		jne	.L51
 1413      FFFF
 1414 2006 C5FD2884 		vmovapd	2880(%rsp), %ymm0
 1414      24400B00 
 1414      00
 1415 200f C5FD281D 		vmovapd	.LC98(%rip), %ymm3
 1415      00000000 
 1416 2017 C5FD5D84 		vminpd	2912(%rsp), %ymm0, %ymm0
 1416      24600B00 
 1416      00
 1417 2020 C5FD5D84 		vminpd	2944(%rsp), %ymm0, %ymm0
 1417      24800B00 
 1417      00
 1418 2029 C5FD5D84 		vminpd	2976(%rsp), %ymm0, %ymm0
 1418      24A00B00 
 1418      00
 1419 2032 C5E5C2C0 		vcmppd	$2, %ymm0, %ymm3, %ymm0
 1419      02
 1420 2037 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1420      C101
 1421 203d C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1422 2041 C5F950C0 		vmovmskpd	%xmm0, %eax
 1423 2045 83F803   		cmpl	$3, %eax
 1424 2048 0F84A001 		je	.L76
 1424      0000
 1425 204e 31C9     		xorl	%ecx, %ecx
 1426 2050 31F6     		xorl	%esi, %esi
GAS LISTING /tmp/ccObQ0kt.s 			page 46


 1427 2052 E999E1FF 		jmp	.L13
 1427      FF
 1428 2057 660F1F84 		.p2align 4,,10
 1428      00000000 
 1428      00
 1429              		.p2align 3
 1430              	.L75:
 1431 2060 C4C1796F 		vmovdqa	2688(%r13), %xmm0
 1431      85800A00 
 1431      00
 1432 2069 C5FA7F84 		vmovdqu	%xmm0, 160(%rsp)
 1432      24A00000 
 1432      00
 1433 2072 83BC1CA0 		cmpl	$31, 160(%rsp,%rbx)
 1433      0000001F 
 1434 207a 0F8F5AFE 		jg	.L57
 1434      FFFF
 1435 2080 C4C17D28 		vmovapd	2048(%r12), %ymm0
 1435      84240008 
 1435      0000
 1436 208a 488DBC24 		leaq	3600(%rsp), %rdi
 1436      100E0000 
 1437 2092 C5FD1184 		vmovupd	%ymm0, 384(%rsp)
 1437      24800100 
 1437      00
 1438 209b C5FB1084 		vmovsd	384(%rsp,%rbx,2), %xmm0
 1438      5C800100 
 1438      00
 1439 20a4 C5FB5E05 		vdivsd	.LC93(%rip), %xmm0, %xmm0
 1439      00000000 
 1440 20ac C5FB5C3D 		vsubsd	.LC94(%rip), %xmm0, %xmm7
 1440      00000000 
 1441 20b4 C4C17D28 		vmovapd	1824(%r14), %ymm0
 1441      86200700 
 1441      00
 1442 20bd C5FD1184 		vmovupd	%ymm0, 416(%rsp)
 1442      24A00100 
 1442      00
 1443 20c6 C4C17D28 		vmovapd	1792(%r14), %ymm0
 1443      86000700 
 1443      00
 1444 20cf C5FB10A4 		vmovsd	416(%rsp,%rbx,2), %xmm4
 1444      5CA00100 
 1444      00
 1445 20d8 C5FD1184 		vmovupd	%ymm0, 448(%rsp)
 1445      24C00100 
 1445      00
 1446 20e1 C5FB117C 		vmovsd	%xmm7, 120(%rsp)
 1446      2478
 1447 20e7 C4C17D28 		vmovapd	2432(%r12), %ymm0
 1447      84248009 
 1447      0000
 1448 20f1 C5FB1094 		vmovsd	448(%rsp,%rbx,2), %xmm2
 1448      5CC00100 
 1448      00
 1449 20fa C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1449      24E00100 
GAS LISTING /tmp/ccObQ0kt.s 			page 47


 1449      00
 1450 2103 C5FB1164 		vmovsd	%xmm4, 104(%rsp)
 1450      2468
 1451 2109 C5FB1084 		vmovsd	480(%rsp,%rbx,2), %xmm0
 1451      5CE00100 
 1451      00
 1452 2112 C5FB1154 		vmovsd	%xmm2, 96(%rsp)
 1452      2460
 1453 2118 C5F877   		vzeroupper
 1454              	.LEHB1:
 1455 211b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1455      00
 1456 2120 BA010000 		movl	$1, %edx
 1456      00
 1457 2125 BE000000 		movl	$.LC95, %esi
 1457      00
 1458 212a 4889C7   		movq	%rax, %rdi
 1459 212d 4989C7   		movq	%rax, %r15
 1460 2130 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1460      00
 1461 2135 C5FB1044 		vmovsd	96(%rsp), %xmm0
 1461      2460
 1462 213b 4C89FF   		movq	%r15, %rdi
 1463 213e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1463      00
 1464 2143 BA010000 		movl	$1, %edx
 1464      00
 1465 2148 BE000000 		movl	$.LC95, %esi
 1465      00
 1466 214d 4889C7   		movq	%rax, %rdi
 1467 2150 4989C7   		movq	%rax, %r15
 1468 2153 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1468      00
 1469 2158 C5FB1044 		vmovsd	104(%rsp), %xmm0
 1469      2468
 1470 215e 4C89FF   		movq	%r15, %rdi
 1471 2161 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1471      00
 1472 2166 BA010000 		movl	$1, %edx
 1472      00
 1473 216b BE000000 		movl	$.LC95, %esi
 1473      00
 1474 2170 4889C7   		movq	%rax, %rdi
 1475 2173 4989C7   		movq	%rax, %r15
 1476 2176 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1476      00
 1477 217b C5FB1044 		vmovsd	120(%rsp), %xmm0
 1477      2478
 1478 2181 4C89FF   		movq	%r15, %rdi
 1479 2184 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1479      00
 1480 2189 4989C7   		movq	%rax, %r15
 1481 218c 488B00   		movq	(%rax), %rax
 1482 218f 488B40E8 		movq	-24(%rax), %rax
 1483 2193 498B8407 		movq	240(%r15,%rax), %rax
 1483      F0000000 
 1484 219b 4885C0   		testq	%rax, %rax
GAS LISTING /tmp/ccObQ0kt.s 			page 48


 1485 219e 48894424 		movq	%rax, 120(%rsp)
 1485      78
 1486 21a3 0F840601 		je	.L77
 1486      0000
 1487 21a9 80783800 		cmpb	$0, 56(%rax)
 1488 21ad 741C     		je	.L46
 1489 21af 0FB64043 		movzbl	67(%rax), %eax
 1490              	.L47:
 1491 21b3 0FBEF0   		movsbl	%al, %esi
 1492 21b6 4C89FF   		movq	%r15, %rdi
 1493 21b9 E8000000 		call	_ZNSo3putEc
 1493      00
 1494 21be 4889C7   		movq	%rax, %rdi
 1495 21c1 E8000000 		call	_ZNSo5flushEv
 1495      00
 1496 21c6 E90FFDFF 		jmp	.L57
 1496      FF
 1497              	.L46:
 1498 21cb 4889C7   		movq	%rax, %rdi
 1499 21ce E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1499      00
 1500 21d3 488B7C24 		movq	120(%rsp), %rdi
 1500      78
 1501 21d8 BE0A0000 		movl	$10, %esi
 1501      00
 1502 21dd 488B07   		movq	(%rdi), %rax
 1503 21e0 FF5030   		call	*48(%rax)
 1504 21e3 EBCE     		jmp	.L47
 1505              	.L61:
 1506 21e5 C5FD28C4 		vmovapd	%ymm4, %ymm0
 1507 21e9 E978FBFF 		jmp	.L37
 1507      FF
 1508              	.L76:
 1509 21ee 8344241C 		addl	$16, 28(%rsp)
 1509      10
 1510 21f3 48836C24 		subq	$-128, 16(%rsp)
 1510      1080
 1511 21f9 817C241C 		cmpl	$1440, 28(%rsp)
 1511      A0050000 
 1512 2201 0F8595DE 		jne	.L12
 1512      FFFF
 1513 2207 C5F877   		vzeroupper
 1514 220a E8000000 		call	clock
 1514      00
 1515 220f 4889C1   		movq	%rax, %rcx
 1516 2212 482B4C24 		subq	8(%rsp), %rcx
 1516      08
 1517 2217 48BBCFF7 		movabsq	$2361183241434822607, %rbx
 1517      53E3A59B 
 1517      C420
 1518 2221 BE000000 		movl	$.LC103, %esi
 1518      00
 1519 2226 BF000000 		movl	$_ZSt4cout, %edi
 1519      00
 1520 222b 4889C8   		movq	%rcx, %rax
 1521 222e 48C1F93F 		sarq	$63, %rcx
 1522 2232 48F7EB   		imulq	%rbx
GAS LISTING /tmp/ccObQ0kt.s 			page 49


 1523 2235 4889D3   		movq	%rdx, %rbx
 1524 2238 48C1FB07 		sarq	$7, %rbx
 1525 223c 4829CB   		subq	%rcx, %rbx
 1526 223f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1526      00
 1527 2244 4889DE   		movq	%rbx, %rsi
 1528 2247 4889C7   		movq	%rax, %rdi
 1529 224a E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1529      00
 1530 224f BE000000 		movl	$.LC104, %esi
 1530      00
 1531 2254 4889C7   		movq	%rax, %rdi
 1532 2257 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1532      00
 1533 225c 4889C7   		movq	%rax, %rdi
 1534 225f E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1534      00
 1535 2264 488DBC24 		leaq	3600(%rsp), %rdi
 1535      100E0000 
 1536 226c E8000000 		call	_ZNSo5flushEv
 1536      00
 1537 2271 488DBC24 		leaq	3600(%rsp), %rdi
 1537      100E0000 
 1538 2279 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
 1538      00
 1539 227e 488DBC24 		leaq	3600(%rsp), %rdi
 1539      100E0000 
 1540 2286 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1540      00
 1541 228b 31C0     		xorl	%eax, %eax
 1542 228d 488BBC24 		movq	4120(%rsp), %rdi
 1542      18100000 
 1543 2295 6448333C 		xorq	%fs:40, %rdi
 1543      25280000 
 1543      00
 1544 229e 752F     		jne	.L78
 1545 22a0 488D65D8 		leaq	-40(%rbp), %rsp
 1546 22a4 5B       		popq	%rbx
 1547 22a5 415C     		popq	%r12
 1548 22a7 415D     		popq	%r13
 1549 22a9 415E     		popq	%r14
 1550 22ab 415F     		popq	%r15
 1551 22ad 5D       		popq	%rbp
 1552              		.cfi_remember_state
 1553              		.cfi_def_cfa 7, 8
 1554 22ae C3       		ret
 1555              	.L77:
 1556              		.cfi_restore_state
 1557 22af E8000000 		call	_ZSt16__throw_bad_castv
 1557      00
 1558              	.LEHE1:
 1559              	.L65:
 1560              	.L64:
 1561 22b4 488DBC24 		leaq	3600(%rsp), %rdi
 1561      100E0000 
 1562 22bc 4889C3   		movq	%rax, %rbx
 1563 22bf C5F877   		vzeroupper
GAS LISTING /tmp/ccObQ0kt.s 			page 50


 1564 22c2 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1564      00
 1565 22c7 4889DF   		movq	%rbx, %rdi
 1566              	.LEHB2:
 1567 22ca E8000000 		call	_Unwind_Resume
 1567      00
 1568              	.LEHE2:
 1569              	.L78:
 1570 22cf E8000000 		call	__stack_chk_fail
 1570      00
 1571              		.cfi_endproc
 1572              	.LFE4614:
 1573              		.globl	__gxx_personality_v0
 1574              		.section	.gcc_except_table,"a",@progbits
 1575              	.LLSDA4614:
 1576 0000 FF       		.byte	0xff
 1577 0001 FF       		.byte	0xff
 1578 0002 01       		.byte	0x1
 1579 0003 10       		.uleb128 .LLSDACSE4614-.LLSDACSB4614
 1580              	.LLSDACSB4614:
 1581 0004 5A       		.uleb128 .LEHB0-.LFB4614
 1582 0005 05       		.uleb128 .LEHE0-.LEHB0
 1583 0006 00       		.uleb128 0
 1584 0007 00       		.uleb128 0
 1585 0008 9B42     		.uleb128 .LEHB1-.LFB4614
 1586 000a 9903     		.uleb128 .LEHE1-.LEHB1
 1587 000c B445     		.uleb128 .L64-.LFB4614
 1588 000e 00       		.uleb128 0
 1589 000f CA45     		.uleb128 .LEHB2-.LFB4614
 1590 0011 05       		.uleb128 .LEHE2-.LEHB2
 1591 0012 00       		.uleb128 0
 1592 0013 00       		.uleb128 0
 1593              	.LLSDACSE4614:
 1594              		.section	.text.startup
 1595              		.size	main, .-main
 1596 22d4 6666662E 		.p2align 4,,15
 1596      0F1F8400 
 1596      00000000 
 1597              		.type	_GLOBAL__sub_I_main, @function
 1598              	_GLOBAL__sub_I_main:
 1599              	.LFB4954:
 1600              		.cfi_startproc
 1601 22e0 4883EC08 		subq	$8, %rsp
 1602              		.cfi_def_cfa_offset 16
 1603 22e4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1603      00
 1604 22e9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1604      00
 1605 22ee BA000000 		movl	$__dso_handle, %edx
 1605      00
 1606 22f3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1606      00
 1607 22f8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1607      00
 1608 22fd 4883C408 		addq	$8, %rsp
 1609              		.cfi_def_cfa_offset 8
 1610 2301 E9000000 		jmp	__cxa_atexit
GAS LISTING /tmp/ccObQ0kt.s 			page 51


 1610      00
 1611              		.cfi_endproc
 1612              	.LFE4954:
 1613              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1614              		.section	.init_array,"aw"
 1615              		.align 8
 1616 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1616      00000000 
 1617              		.section	.rodata
 1618              		.align 32
 1619              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1620              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1621              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1622 0000 00000000 		.long	0
 1623 0004 00000080 		.long	-2147483648
 1624 0008 00000000 		.long	0
 1625 000c 00000080 		.long	-2147483648
 1626 0010 00000000 		.long	0
 1627 0014 00000080 		.long	-2147483648
 1628 0018 00000000 		.long	0
 1629 001c 00000080 		.long	-2147483648
 1630              		.align 32
 1631              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1632              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1633              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1634 0020 FFFFFFFF 		.long	-1
 1635 0024 FFFFFF7F 		.long	2147483647
 1636 0028 FFFFFFFF 		.long	-1
 1637 002c FFFFFF7F 		.long	2147483647
 1638 0030 FFFFFFFF 		.long	-1
 1639 0034 FFFFFF7F 		.long	2147483647
 1640 0038 FFFFFFFF 		.long	-1
 1641 003c FFFFFF7F 		.long	2147483647
 1642              		.local	_ZStL8__ioinit
 1643              		.comm	_ZStL8__ioinit,1,1
 1644              		.section	.rodata.cst8,"aM",@progbits,8
 1645              		.align 8
 1646              	.LC0:
 1647 0000 33333333 		.long	858993459
 1648 0004 3333D33F 		.long	1070805811
 1649              		.align 8
 1650              	.LC1:
 1651 0008 9A999999 		.long	2576980378
 1652 000c 9999C93F 		.long	1070176665
 1653              		.section	.rodata.cst32,"aM",@progbits,32
 1654              		.align 32
 1655              	.LC3:
 1656 0000 83C8C96D 		.long	1841940611
 1657 0004 305FE43F 		.long	1071931184
 1658 0008 83C8C96D 		.long	1841940611
 1659 000c 305FE43F 		.long	1071931184
 1660 0010 83C8C96D 		.long	1841940611
 1661 0014 305FE43F 		.long	1071931184
 1662 0018 83C8C96D 		.long	1841940611
 1663 001c 305FE43F 		.long	1071931184
 1664              		.align 32
 1665              	.LC4:
GAS LISTING /tmp/ccObQ0kt.s 			page 52


 1666 0020 00000050 		.long	1342177280
 1667 0024 FB21F93F 		.long	1073291771
 1668 0028 00000050 		.long	1342177280
 1669 002c FB21F93F 		.long	1073291771
 1670 0030 00000050 		.long	1342177280
 1671 0034 FB21F93F 		.long	1073291771
 1672 0038 00000050 		.long	1342177280
 1673 003c FB21F93F 		.long	1073291771
 1674              		.align 32
 1675              	.LC5:
 1676 0040 00000060 		.long	1610612736
 1677 0044 B410513E 		.long	1045500084
 1678 0048 00000060 		.long	1610612736
 1679 004c B410513E 		.long	1045500084
 1680 0050 00000060 		.long	1610612736
 1681 0054 B410513E 		.long	1045500084
 1682 0058 00000060 		.long	1610612736
 1683 005c B410513E 		.long	1045500084
 1684              		.align 32
 1685              	.LC6:
 1686 0060 075C1433 		.long	856972295
 1687 0064 26A6913C 		.long	1016178214
 1688 0068 075C1433 		.long	856972295
 1689 006c 26A6913C 		.long	1016178214
 1690 0070 075C1433 		.long	856972295
 1691 0074 26A6913C 		.long	1016178214
 1692 0078 075C1433 		.long	856972295
 1693 007c 26A6913C 		.long	1016178214
 1694              		.align 32
 1695              	.LC7:
 1696 0080 D0F71011 		.long	286324688
 1697 0084 1111813F 		.long	1065423121
 1698 0088 D0F71011 		.long	286324688
 1699 008c 1111813F 		.long	1065423121
 1700 0090 D0F71011 		.long	286324688
 1701 0094 1111813F 		.long	1065423121
 1702 0098 D0F71011 		.long	286324688
 1703 009c 1111813F 		.long	1065423121
 1704              		.align 32
 1705              	.LC8:
 1706 00a0 48555555 		.long	1431655752
 1707 00a4 5555C5BF 		.long	-1077586603
 1708 00a8 48555555 		.long	1431655752
 1709 00ac 5555C5BF 		.long	-1077586603
 1710 00b0 48555555 		.long	1431655752
 1711 00b4 5555C5BF 		.long	-1077586603
 1712 00b8 48555555 		.long	1431655752
 1713 00bc 5555C5BF 		.long	-1077586603
 1714              		.align 32
 1715              	.LC9:
 1716 00c0 CD9CD11F 		.long	533830861
 1717 00c4 FDD8E53D 		.long	1038473469
 1718 00c8 CD9CD11F 		.long	533830861
 1719 00cc FDD8E53D 		.long	1038473469
 1720 00d0 CD9CD11F 		.long	533830861
 1721 00d4 FDD8E53D 		.long	1038473469
 1722 00d8 CD9CD11F 		.long	533830861
GAS LISTING /tmp/ccObQ0kt.s 			page 53


 1723 00dc FDD8E53D 		.long	1038473469
 1724              		.align 32
 1725              	.LC10:
 1726 00e0 5D1F29A9 		.long	2838044509
 1727 00e4 E5E55ABE 		.long	-1101339163
 1728 00e8 5D1F29A9 		.long	2838044509
 1729 00ec E5E55ABE 		.long	-1101339163
 1730 00f0 5D1F29A9 		.long	2838044509
 1731 00f4 E5E55ABE 		.long	-1101339163
 1732 00f8 5D1F29A9 		.long	2838044509
 1733 00fc E5E55ABE 		.long	-1101339163
 1734              		.align 32
 1735              	.LC11:
 1736 0100 A1487D56 		.long	1451051169
 1737 0104 E31DC73E 		.long	1053236707
 1738 0108 A1487D56 		.long	1451051169
 1739 010c E31DC73E 		.long	1053236707
 1740 0110 A1487D56 		.long	1451051169
 1741 0114 E31DC73E 		.long	1053236707
 1742 0118 A1487D56 		.long	1451051169
 1743 011c E31DC73E 		.long	1053236707
 1744              		.align 32
 1745              	.LC12:
 1746 0120 03DFBF19 		.long	432004867
 1747 0124 A0012ABF 		.long	-1087766112
 1748 0128 03DFBF19 		.long	432004867
 1749 012c A0012ABF 		.long	-1087766112
 1750 0130 03DFBF19 		.long	432004867
 1751 0134 A0012ABF 		.long	-1087766112
 1752 0138 03DFBF19 		.long	432004867
 1753 013c A0012ABF 		.long	-1087766112
 1754              		.align 32
 1755              	.LC13:
 1756 0140 914FC116 		.long	381767569
 1757 0144 6CC156BF 		.long	-1084833428
 1758 0148 914FC116 		.long	381767569
 1759 014c 6CC156BF 		.long	-1084833428
 1760 0150 914FC116 		.long	381767569
 1761 0154 6CC156BF 		.long	-1084833428
 1762 0158 914FC116 		.long	381767569
 1763 015c 6CC156BF 		.long	-1084833428
 1764              		.align 32
 1765              	.LC14:
 1766 0160 4B555555 		.long	1431655755
 1767 0164 5555A53F 		.long	1067799893
 1768 0168 4B555555 		.long	1431655755
 1769 016c 5555A53F 		.long	1067799893
 1770 0170 4B555555 		.long	1431655755
 1771 0174 5555A53F 		.long	1067799893
 1772 0178 4B555555 		.long	1431655755
 1773 017c 5555A53F 		.long	1067799893
 1774              		.align 32
 1775              	.LC15:
 1776 0180 9B1A86A0 		.long	2693143195
 1777 0184 49FAA8BD 		.long	-1112999351
 1778 0188 9B1A86A0 		.long	2693143195
 1779 018c 49FAA8BD 		.long	-1112999351
GAS LISTING /tmp/ccObQ0kt.s 			page 54


 1780 0190 9B1A86A0 		.long	2693143195
 1781 0194 49FAA8BD 		.long	-1112999351
 1782 0198 9B1A86A0 		.long	2693143195
 1783 019c 49FAA8BD 		.long	-1112999351
 1784              		.align 32
 1785              	.LC16:
 1786 01a0 053F4E7B 		.long	2068725509
 1787 01a4 9DEE213E 		.long	1042411165
 1788 01a8 053F4E7B 		.long	2068725509
 1789 01ac 9DEE213E 		.long	1042411165
 1790 01b0 053F4E7B 		.long	2068725509
 1791 01b4 9DEE213E 		.long	1042411165
 1792 01b8 053F4E7B 		.long	2068725509
 1793 01bc 9DEE213E 		.long	1042411165
 1794              		.align 32
 1795              	.LC17:
 1796 01c0 C64BAC7E 		.long	2125220806
 1797 01c4 4F7E92BE 		.long	-1097695665
 1798 01c8 C64BAC7E 		.long	2125220806
 1799 01cc 4F7E92BE 		.long	-1097695665
 1800 01d0 C64BAC7E 		.long	2125220806
 1801 01d4 4F7E92BE 		.long	-1097695665
 1802 01d8 C64BAC7E 		.long	2125220806
 1803 01dc 4F7E92BE 		.long	-1097695665
 1804              		.align 32
 1805              	.LC18:
 1806 01e0 F544C819 		.long	432555253
 1807 01e4 A001FA3E 		.long	1056571808
 1808 01e8 F544C819 		.long	432555253
 1809 01ec A001FA3E 		.long	1056571808
 1810 01f0 F544C819 		.long	432555253
 1811 01f4 A001FA3E 		.long	1056571808
 1812 01f8 F544C819 		.long	432555253
 1813 01fc A001FA3E 		.long	1056571808
 1814              		.align 32
 1815              	.LC19:
 1816 0200 00000000 		.long	0
 1817 0204 0000E03F 		.long	1071644672
 1818 0208 00000000 		.long	0
 1819 020c 0000E03F 		.long	1071644672
 1820 0210 00000000 		.long	0
 1821 0214 0000E03F 		.long	1071644672
 1822 0218 00000000 		.long	0
 1823 021c 0000E03F 		.long	1071644672
 1824              		.align 32
 1825              	.LC20:
 1826 0220 00000000 		.long	0
 1827 0224 0000F03F 		.long	1072693248
 1828 0228 00000000 		.long	0
 1829 022c 0000F03F 		.long	1072693248
 1830 0230 00000000 		.long	0
 1831 0234 0000F03F 		.long	1072693248
 1832 0238 00000000 		.long	0
 1833 023c 0000F03F 		.long	1072693248
 1834              		.section	.rodata.cst16,"aM",@progbits,16
 1835              		.align 16
 1836              	.LC21:
GAS LISTING /tmp/ccObQ0kt.s 			page 55


 1837 0000 01000000 		.quad	1
 1837      00000000 
 1838 0008 01000000 		.quad	1
 1838      00000000 
 1839              		.align 16
 1840              	.LC22:
 1841 0010 00000000 		.quad	36028797018963968
 1841      00008000 
 1842 0018 00000000 		.quad	36028797018963968
 1842      00008000 
 1843              		.align 16
 1844              	.LC23:
 1845 0020 00000000 		.quad	-9007199254740992
 1845      0000E0FF 
 1846 0028 00000000 		.quad	-9007199254740992
 1846      0000E0FF 
 1847              		.align 16
 1848              	.LC24:
 1849 0030 02000000 		.quad	2
 1849      00000000 
 1850 0038 02000000 		.quad	2
 1850      00000000 
 1851              		.section	.rodata.cst32
 1852              		.align 32
 1853              	.LC25:
 1854 0240 33333333 		.long	858993459
 1855 0244 3333D33F 		.long	1070805811
 1856 0248 33333333 		.long	858993459
 1857 024c 3333D33F 		.long	1070805811
 1858 0250 33333333 		.long	858993459
 1859 0254 3333D33F 		.long	1070805811
 1860 0258 33333333 		.long	858993459
 1861 025c 3333D33F 		.long	1070805811
 1862              		.align 32
 1863              	.LC26:
 1864 0260 9A999999 		.long	2576980378
 1865 0264 9999C93F 		.long	1070176665
 1866 0268 9A999999 		.long	2576980378
 1867 026c 9999C93F 		.long	1070176665
 1868 0270 9A999999 		.long	2576980378
 1869 0274 9999C93F 		.long	1070176665
 1870 0278 9A999999 		.long	2576980378
 1871 027c 9999C93F 		.long	1070176665
 1872              		.align 32
 1873              	.LC27:
 1874 0280 CDCCCCCC 		.long	3435973837
 1875 0284 CCCCCC3F 		.long	1070386380
 1876 0288 CDCCCCCC 		.long	3435973837
 1877 028c CCCCCC3F 		.long	1070386380
 1878 0290 CDCCCCCC 		.long	3435973837
 1879 0294 CCCCCC3F 		.long	1070386380
 1880 0298 CDCCCCCC 		.long	3435973837
 1881 029c CCCCCC3F 		.long	1070386380
 1882              		.align 32
 1883              	.LC28:
 1884 02a0 33333333 		.long	858993459
 1885 02a4 3333B33F 		.long	1068708659
GAS LISTING /tmp/ccObQ0kt.s 			page 56


 1886 02a8 33333333 		.long	858993459
 1887 02ac 3333B33F 		.long	1068708659
 1888 02b0 33333333 		.long	858993459
 1889 02b4 3333B33F 		.long	1068708659
 1890 02b8 33333333 		.long	858993459
 1891 02bc 3333B33F 		.long	1068708659
 1892              		.align 32
 1893              	.LC29:
 1894 02c0 33333333 		.long	858993459
 1895 02c4 3333F33F 		.long	1072902963
 1896 02c8 33333333 		.long	858993459
 1897 02cc 3333F33F 		.long	1072902963
 1898 02d0 33333333 		.long	858993459
 1899 02d4 3333F33F 		.long	1072902963
 1900 02d8 33333333 		.long	858993459
 1901 02dc 3333F33F 		.long	1072902963
 1902              		.align 32
 1903              	.LC30:
 1904 02e0 CDCCCCCC 		.long	3435973837
 1905 02e4 CCCCECBF 		.long	-1075000116
 1906 02e8 CDCCCCCC 		.long	3435973837
 1907 02ec CCCCECBF 		.long	-1075000116
 1908 02f0 CDCCCCCC 		.long	3435973837
 1909 02f4 CCCCECBF 		.long	-1075000116
 1910 02f8 CDCCCCCC 		.long	3435973837
 1911 02fc CCCCECBF 		.long	-1075000116
 1912              		.align 32
 1913              	.LC31:
 1914 0300 33333333 		.long	858993459
 1915 0304 3333E33F 		.long	1071854387
 1916 0308 33333333 		.long	858993459
 1917 030c 3333E33F 		.long	1071854387
 1918 0310 33333333 		.long	858993459
 1919 0314 3333E33F 		.long	1071854387
 1920 0318 33333333 		.long	858993459
 1921 031c 3333E33F 		.long	1071854387
 1922              		.align 32
 1923              	.LC32:
 1924 0320 DA4B682F 		.long	795364314
 1925 0324 A1BDF43F 		.long	1073003937
 1926 0328 DA4B682F 		.long	795364314
 1927 032c A1BDF43F 		.long	1073003937
 1928 0330 DA4B682F 		.long	795364314
 1929 0334 A1BDF43F 		.long	1073003937
 1930 0338 DA4B682F 		.long	795364314
 1931 033c A1BDF43F 		.long	1073003937
 1932              		.align 32
 1933              	.LC33:
 1934 0340 D94B682F 		.long	795364313
 1935 0344 A1BD04C0 		.long	-1073431135
 1936 0348 D94B682F 		.long	795364313
 1937 034c A1BD04C0 		.long	-1073431135
 1938 0350 D94B682F 		.long	795364313
 1939 0354 A1BD04C0 		.long	-1073431135
 1940 0358 D94B682F 		.long	795364313
 1941 035c A1BD04C0 		.long	-1073431135
 1942              		.align 32
GAS LISTING /tmp/ccObQ0kt.s 			page 57


 1943              	.LC34:
 1944 0360 00000000 		.long	0
 1945 0364 00000440 		.long	1074003968
 1946 0368 00000000 		.long	0
 1947 036c 00000440 		.long	1074003968
 1948 0370 00000000 		.long	0
 1949 0374 00000440 		.long	1074003968
 1950 0378 00000000 		.long	0
 1951 037c 00000440 		.long	1074003968
 1952              		.align 32
 1953              	.LC35:
 1954 0380 16A1BD84 		.long	2227020054
 1955 0384 F612CABF 		.long	-1077275914
 1956 0388 16A1BD84 		.long	2227020054
 1957 038c F612CABF 		.long	-1077275914
 1958 0390 16A1BD84 		.long	2227020054
 1959 0394 F612CABF 		.long	-1077275914
 1960 0398 16A1BD84 		.long	2227020054
 1961 039c F612CABF 		.long	-1077275914
 1962              		.align 32
 1963              	.LC36:
 1964 03a0 00000000 		.long	0
 1965 03a4 00A0AF3F 		.long	1068474368
 1966 03a8 00000000 		.long	0
 1967 03ac 00A0AF3F 		.long	1068474368
 1968 03b0 00000000 		.long	0
 1969 03b4 00A0AF3F 		.long	1068474368
 1970 03b8 00000000 		.long	0
 1971 03bc 00A0AF3F 		.long	1068474368
 1972              		.align 32
 1973              	.LC37:
 1974 03c0 B397D05E 		.long	1590728627
 1975 03c4 429FD93F 		.long	1071226690
 1976 03c8 B397D05E 		.long	1590728627
 1977 03cc 429FD93F 		.long	1071226690
 1978 03d0 B397D05E 		.long	1590728627
 1979 03d4 429FD93F 		.long	1071226690
 1980 03d8 B397D05E 		.long	1590728627
 1981 03dc 429FD93F 		.long	1071226690
 1982              		.align 32
 1983              	.LC38:
 1984 03e0 BD84F612 		.long	318145725
 1985 03e4 DA4BA53F 		.long	1067797466
 1986 03e8 BD84F612 		.long	318145725
 1987 03ec DA4BA53F 		.long	1067797466
 1988 03f0 BD84F612 		.long	318145725
 1989 03f4 DA4BA53F 		.long	1067797466
 1990 03f8 BD84F612 		.long	318145725
 1991 03fc DA4BA53F 		.long	1067797466
 1992              		.align 32
 1993              	.LC39:
 1994 0400 00000000 		.long	0
 1995 0404 00E0D53F 		.long	1070981120
 1996 0408 00000000 		.long	0
 1997 040c 00E0D53F 		.long	1070981120
 1998 0410 00000000 		.long	0
 1999 0414 00E0D53F 		.long	1070981120
GAS LISTING /tmp/ccObQ0kt.s 			page 58


 2000 0418 00000000 		.long	0
 2001 041c 00E0D53F 		.long	1070981120
 2002              		.align 32
 2003              	.LC40:
 2004 0420 347B09ED 		.long	3976821556
 2005 0424 25349E3F 		.long	1067332645
 2006 0428 347B09ED 		.long	3976821556
 2007 042c 25349E3F 		.long	1067332645
 2008 0430 347B09ED 		.long	3976821556
 2009 0434 25349E3F 		.long	1067332645
 2010 0438 347B09ED 		.long	3976821556
 2011 043c 25349E3F 		.long	1067332645
 2012              		.align 32
 2013              	.LC41:
 2014 0440 00000000 		.long	0
 2015 0444 0000EC3F 		.long	1072431104
 2016 0448 00000000 		.long	0
 2017 044c 0000EC3F 		.long	1072431104
 2018 0450 00000000 		.long	0
 2019 0454 0000EC3F 		.long	1072431104
 2020 0458 00000000 		.long	0
 2021 045c 0000EC3F 		.long	1072431104
 2022              		.align 32
 2023              	.LC42:
 2024 0460 B0B4DA85 		.long	2245702832
 2025 0464 A680D23F 		.long	1070760102
 2026 0468 B0B4DA85 		.long	2245702832
 2027 046c A680D23F 		.long	1070760102
 2028 0470 B0B4DA85 		.long	2245702832
 2029 0474 A680D23F 		.long	1070760102
 2030 0478 B0B4DA85 		.long	2245702832
 2031 047c A680D23F 		.long	1070760102
 2032              		.align 32
 2033              	.LC43:
 2034 0480 27691676 		.long	1981180199
 2035 0484 9FEFCA3F 		.long	1070264223
 2036 0488 27691676 		.long	1981180199
 2037 048c 9FEFCA3F 		.long	1070264223
 2038 0490 27691676 		.long	1981180199
 2039 0494 9FEFCA3F 		.long	1070264223
 2040 0498 27691676 		.long	1981180199
 2041 049c 9FEFCA3F 		.long	1070264223
 2042              		.align 32
 2043              	.LC44:
 2044 04a0 7EB22B2E 		.long	774615678
 2045 04a4 D0C3D93F 		.long	1071236048
 2046 04a8 7EB22B2E 		.long	774615678
 2047 04ac D0C3D93F 		.long	1071236048
 2048 04b0 7EB22B2E 		.long	774615678
 2049 04b4 D0C3D93F 		.long	1071236048
 2050 04b8 7EB22B2E 		.long	774615678
 2051 04bc D0C3D93F 		.long	1071236048
 2052              		.align 32
 2053              	.LC45:
 2054 04c0 E890B943 		.long	1136234728
 2055 04c4 E60EB93F 		.long	1069092582
 2056 04c8 E890B943 		.long	1136234728
GAS LISTING /tmp/ccObQ0kt.s 			page 59


 2057 04cc E60EB93F 		.long	1069092582
 2058 04d0 E890B943 		.long	1136234728
 2059 04d4 E60EB93F 		.long	1069092582
 2060 04d8 E890B943 		.long	1136234728
 2061 04dc E60EB93F 		.long	1069092582
 2062              		.align 32
 2063              	.LC46:
 2064 04e0 48A5D52E 		.long	785753416
 2065 04e4 3405A4BF 		.long	-1079769804
 2066 04e8 48A5D52E 		.long	785753416
 2067 04ec 3405A4BF 		.long	-1079769804
 2068 04f0 48A5D52E 		.long	785753416
 2069 04f4 3405A4BF 		.long	-1079769804
 2070 04f8 48A5D52E 		.long	785753416
 2071 04fc 3405A4BF 		.long	-1079769804
 2072              		.align 32
 2073              	.LC47:
 2074 0500 82244992 		.long	2454267010
 2075 0504 24C9933F 		.long	1066649892
 2076 0508 82244992 		.long	2454267010
 2077 050c 24C9933F 		.long	1066649892
 2078 0510 82244992 		.long	2454267010
 2079 0514 24C9933F 		.long	1066649892
 2080 0518 82244992 		.long	2454267010
 2081 051c 24C9933F 		.long	1066649892
 2082              		.align 32
 2083              	.LC48:
 2084 0520 06F37686 		.long	2255942406
 2085 0524 C47CA13F 		.long	1067547844
 2086 0528 06F37686 		.long	2255942406
 2087 052c C47CA13F 		.long	1067547844
 2088 0530 06F37686 		.long	2255942406
 2089 0534 C47CA13F 		.long	1067547844
 2090 0538 06F37686 		.long	2255942406
 2091 053c C47CA13F 		.long	1067547844
 2092              		.align 32
 2093              	.LC49:
 2094 0540 1A55F19A 		.long	2599507226
 2095 0544 DB1D93BF 		.long	-1080877605
 2096 0548 1A55F19A 		.long	2599507226
 2097 054c DB1D93BF 		.long	-1080877605
 2098 0550 1A55F19A 		.long	2599507226
 2099 0554 DB1D93BF 		.long	-1080877605
 2100 0558 1A55F19A 		.long	2599507226
 2101 055c DB1D93BF 		.long	-1080877605
 2102              		.align 32
 2103              	.LC50:
 2104 0560 64599665 		.long	1704352100
 2105 0564 5996713F 		.long	1064408665
 2106 0568 64599665 		.long	1704352100
 2107 056c 5996713F 		.long	1064408665
 2108 0570 64599665 		.long	1704352100
 2109 0574 5996713F 		.long	1064408665
 2110 0578 64599665 		.long	1704352100
 2111 057c 5996713F 		.long	1064408665
 2112              		.align 32
 2113              	.LC51:
GAS LISTING /tmp/ccObQ0kt.s 			page 60


 2114 0580 95D626E8 		.long	3894859413
 2115 0584 0B2E113E 		.long	1041313291
 2116 0588 95D626E8 		.long	3894859413
 2117 058c 0B2E113E 		.long	1041313291
 2118 0590 95D626E8 		.long	3894859413
 2119 0594 0B2E113E 		.long	1041313291
 2120 0598 95D626E8 		.long	3894859413
 2121 059c 0B2E113E 		.long	1041313291
 2122              		.section	.rodata.cst16
 2123              		.align 16
 2124              	.LC52:
 2125 0040 FFFFFFFF 		.quad	4503599627370495
 2125      FFFF0F00 
 2126 0048 FFFFFFFF 		.quad	4503599627370495
 2126      FFFF0F00 
 2127              		.align 16
 2128              	.LC53:
 2129 0050 00000000 		.quad	4602678819172646912
 2129      0000E03F 
 2130 0058 00000000 		.quad	4602678819172646912
 2130      0000E03F 
 2131              		.align 16
 2132              	.LC54:
 2133 0060 00000000 		.quad	4841369599423283200
 2133      00003043 
 2134 0068 00000000 		.quad	4841369599423283200
 2134      00003043 
 2135              		.section	.rodata.cst32
 2136              		.align 32
 2137              	.LC55:
 2138 05a0 FF030000 		.long	1023
 2139 05a4 00003043 		.long	1127219200
 2140 05a8 FF030000 		.long	1023
 2141 05ac 00003043 		.long	1127219200
 2142 05b0 FF030000 		.long	1023
 2143 05b4 00003043 		.long	1127219200
 2144 05b8 FF030000 		.long	1023
 2145 05bc 00003043 		.long	1127219200
 2146              		.align 32
 2147              	.LC56:
 2148 05c0 CD3B7F66 		.long	1719614413
 2149 05c4 9EA0E63F 		.long	1072079006
 2150 05c8 CD3B7F66 		.long	1719614413
 2151 05cc 9EA0E63F 		.long	1072079006
 2152 05d0 CD3B7F66 		.long	1719614413
 2153 05d4 9EA0E63F 		.long	1072079006
 2154 05d8 CD3B7F66 		.long	1719614413
 2155 05dc 9EA0E63F 		.long	1072079006
 2156              		.align 32
 2157              	.LC57:
 2158 05e0 4DC84B92 		.long	2454440013
 2159 05e4 D6EF3140 		.long	1077014486
 2160 05e8 4DC84B92 		.long	2454440013
 2161 05ec D6EF3140 		.long	1077014486
 2162 05f0 4DC84B92 		.long	2454440013
 2163 05f4 D6EF3140 		.long	1077014486
 2164 05f8 4DC84B92 		.long	2454440013
GAS LISTING /tmp/ccObQ0kt.s 			page 61


 2165 05fc D6EF3140 		.long	1077014486
 2166              		.align 32
 2167              	.LC58:
 2168 0600 F8DC7E7D 		.long	2105466104
 2169 0604 63D51E40 		.long	1075762531
 2170 0608 F8DC7E7D 		.long	2105466104
 2171 060c 63D51E40 		.long	1075762531
 2172 0610 F8DC7E7D 		.long	2105466104
 2173 0614 63D51E40 		.long	1075762531
 2174 0618 F8DC7E7D 		.long	2105466104
 2175 061c 63D51E40 		.long	1075762531
 2176              		.align 32
 2177              	.LC59:
 2178 0620 B01BC393 		.long	2479037360
 2179 0624 C2B41A3F 		.long	1058714818
 2180 0628 B01BC393 		.long	2479037360
 2181 062c C2B41A3F 		.long	1058714818
 2182 0630 B01BC393 		.long	2479037360
 2183 0634 C2B41A3F 		.long	1058714818
 2184 0638 B01BC393 		.long	2479037360
 2185 063c C2B41A3F 		.long	1058714818
 2186              		.align 32
 2187              	.LC60:
 2188 0640 F252563F 		.long	1062621938
 2189 0644 F5D6DF3F 		.long	1071634165
 2190 0648 F252563F 		.long	1062621938
 2191 064c F5D6DF3F 		.long	1071634165
 2192 0650 F252563F 		.long	1062621938
 2193 0654 F5D6DF3F 		.long	1071634165
 2194 0658 F252563F 		.long	1062621938
 2195 065c F5D6DF3F 		.long	1071634165
 2196              		.align 32
 2197              	.LC61:
 2198 0660 116992ED 		.long	3985795345
 2199 0664 BAD21240 		.long	1074975418
 2200 0668 116992ED 		.long	3985795345
 2201 066c BAD21240 		.long	1074975418
 2202 0670 116992ED 		.long	3985795345
 2203 0674 BAD21240 		.long	1074975418
 2204 0678 116992ED 		.long	3985795345
 2205 067c BAD21240 		.long	1074975418
 2206              		.align 32
 2207              	.LC62:
 2208 0680 2EEB3EC6 		.long	3326012206
 2209 0684 72FF2C40 		.long	1076690802
 2210 0688 2EEB3EC6 		.long	3326012206
 2211 068c 72FF2C40 		.long	1076690802
 2212 0690 2EEB3EC6 		.long	3326012206
 2213 0694 72FF2C40 		.long	1076690802
 2214 0698 2EEB3EC6 		.long	3326012206
 2215 069c 72FF2C40 		.long	1076690802
 2216              		.align 32
 2217              	.LC63:
 2218 06a0 21AE5EEB 		.long	3948850721
 2219 06a4 E2C95140 		.long	1079101922
 2220 06a8 21AE5EEB 		.long	3948850721
 2221 06ac E2C95140 		.long	1079101922
GAS LISTING /tmp/ccObQ0kt.s 			page 62


 2222 06b0 21AE5EEB 		.long	3948850721
 2223 06b4 E2C95140 		.long	1079101922
 2224 06b8 21AE5EEB 		.long	3948850721
 2225 06bc E2C95140 		.long	1079101922
 2226              		.align 32
 2227              	.LC64:
 2228 06c0 B2251F9E 		.long	2652841394
 2229 06c4 0A203740 		.long	1077354506
 2230 06c8 B2251F9E 		.long	2652841394
 2231 06cc 0A203740 		.long	1077354506
 2232 06d0 B2251F9E 		.long	2652841394
 2233 06d4 0A203740 		.long	1077354506
 2234 06d8 B2251F9E 		.long	2652841394
 2235 06dc 0A203740 		.long	1077354506
 2236              		.align 32
 2237              	.LC65:
 2238 06e0 8EEF97AE 		.long	2929192846
 2239 06e4 20932640 		.long	1076269856
 2240 06e8 8EEF97AE 		.long	2929192846
 2241 06ec 20932640 		.long	1076269856
 2242 06f0 8EEF97AE 		.long	2929192846
 2243 06f4 20932640 		.long	1076269856
 2244 06f8 8EEF97AE 		.long	2929192846
 2245 06fc 20932640 		.long	1076269856
 2246              		.align 32
 2247              	.LC66:
 2248 0700 33C0194E 		.long	1310310451
 2249 0704 2C9D4640 		.long	1078369580
 2250 0708 33C0194E 		.long	1310310451
 2251 070c 2C9D4640 		.long	1078369580
 2252 0710 33C0194E 		.long	1310310451
 2253 0714 2C9D4640 		.long	1078369580
 2254 0718 33C0194E 		.long	1310310451
 2255 071c 2C9D4640 		.long	1078369580
 2256              		.align 32
 2257              	.LC67:
 2258 0720 BDBD26A3 		.long	2737225149
 2259 0724 33BF5440 		.long	1079295795
 2260 0728 BDBD26A3 		.long	2737225149
 2261 072c 33BF5440 		.long	1079295795
 2262 0730 BDBD26A3 		.long	2737225149
 2263 0734 33BF5440 		.long	1079295795
 2264 0738 BDBD26A3 		.long	2737225149
 2265 073c 33BF5440 		.long	1079295795
 2266              		.align 32
 2267              	.LC68:
 2268 0740 A80C615C 		.long	1549864104
 2269 0744 10D02BBF 		.long	-1087647728
 2270 0748 A80C615C 		.long	1549864104
 2271 074c 10D02BBF 		.long	-1087647728
 2272 0750 A80C615C 		.long	1549864104
 2273 0754 10D02BBF 		.long	-1087647728
 2274 0758 A80C615C 		.long	1549864104
 2275 075c 10D02BBF 		.long	-1087647728
 2276              		.align 32
 2277              	.LC69:
 2278 0760 00000000 		.long	0
GAS LISTING /tmp/ccObQ0kt.s 			page 63


 2279 0764 0030E63F 		.long	1072050176
 2280 0768 00000000 		.long	0
 2281 076c 0030E63F 		.long	1072050176
 2282 0770 00000000 		.long	0
 2283 0774 0030E63F 		.long	1072050176
 2284 0778 00000000 		.long	0
 2285 077c 0030E63F 		.long	1072050176
 2286              		.align 32
 2287              	.LC70:
 2288 0780 00000000 		.long	0
 2289 0784 00001000 		.long	1048576
 2290 0788 00000000 		.long	0
 2291 078c 00001000 		.long	1048576
 2292 0790 00000000 		.long	0
 2293 0794 00001000 		.long	1048576
 2294 0798 00000000 		.long	0
 2295 079c 00001000 		.long	1048576
 2296              		.align 32
 2297              	.LC71:
 2298 07a0 00000020 		.long	536870912
 2299 07a4 2000F87F 		.long	2146959392
 2300 07a8 00000020 		.long	536870912
 2301 07ac 2000F87F 		.long	2146959392
 2302 07b0 00000020 		.long	536870912
 2303 07b4 2000F87F 		.long	2146959392
 2304 07b8 00000020 		.long	536870912
 2305 07bc 2000F87F 		.long	2146959392
 2306              		.section	.rodata.cst16
 2307              		.align 16
 2308              	.LC72:
 2309 0070 00000000 		.long	0
 2310 0074 0000F07F 		.long	2146435072
 2311 0078 00000000 		.long	0
 2312 007c 0000F07F 		.long	2146435072
 2313              		.align 16
 2314              	.LC73:
 2315 0080 00000000 		.quad	9218868437227405312
 2315      0000F07F 
 2316 0088 00000000 		.quad	9218868437227405312
 2316      0000F07F 
 2317              		.section	.rodata.cst32
 2318              		.align 32
 2319              	.LC74:
 2320 07c0 FE822B65 		.long	1697350398
 2321 07c4 4715F73F 		.long	1073157447
 2322 07c8 FE822B65 		.long	1697350398
 2323 07cc 4715F73F 		.long	1073157447
 2324 07d0 FE822B65 		.long	1697350398
 2325 07d4 4715F73F 		.long	1073157447
 2326 07d8 FE822B65 		.long	1697350398
 2327 07dc 4715F73F 		.long	1073157447
 2328              		.align 32
 2329              	.LC75:
 2330 07e0 00000000 		.long	0
 2331 07e4 402EE63F 		.long	1072049728
 2332 07e8 00000000 		.long	0
 2333 07ec 402EE63F 		.long	1072049728
GAS LISTING /tmp/ccObQ0kt.s 			page 64


 2334 07f0 00000000 		.long	0
 2335 07f4 402EE63F 		.long	1072049728
 2336 07f8 00000000 		.long	0
 2337 07fc 402EE63F 		.long	1072049728
 2338              		.align 32
 2339              	.LC76:
 2340 0800 CAAB79CF 		.long	3480857546
 2341 0804 D1F7B73E 		.long	1052243921
 2342 0808 CAAB79CF 		.long	3480857546
 2343 080c D1F7B73E 		.long	1052243921
 2344 0810 CAAB79CF 		.long	3480857546
 2345 0814 D1F7B73E 		.long	1052243921
 2346 0818 CAAB79CF 		.long	3480857546
 2347 081c D1F7B73E 		.long	1052243921
 2348              		.align 32
 2349              	.LC77:
 2350 0820 55555555 		.long	1431655765
 2351 0824 5555C53F 		.long	1069897045
 2352 0828 55555555 		.long	1431655765
 2353 082c 5555C53F 		.long	1069897045
 2354 0830 55555555 		.long	1431655765
 2355 0834 5555C53F 		.long	1069897045
 2356 0838 55555555 		.long	1431655765
 2357 083c 5555C53F 		.long	1069897045
 2358              		.align 32
 2359              	.LC78:
 2360 0840 11111111 		.long	286331153
 2361 0844 1111813F 		.long	1065423121
 2362 0848 11111111 		.long	286331153
 2363 084c 1111813F 		.long	1065423121
 2364 0850 11111111 		.long	286331153
 2365 0854 1111813F 		.long	1065423121
 2366 0858 11111111 		.long	286331153
 2367 085c 1111813F 		.long	1065423121
 2368              		.align 32
 2369              	.LC79:
 2370 0860 55555555 		.long	1431655765
 2371 0864 5555A53F 		.long	1067799893
 2372 0868 55555555 		.long	1431655765
 2373 086c 5555A53F 		.long	1067799893
 2374 0870 55555555 		.long	1431655765
 2375 0874 5555A53F 		.long	1067799893
 2376 0878 55555555 		.long	1431655765
 2377 087c 5555A53F 		.long	1067799893
 2378              		.align 32
 2379              	.LC80:
 2380 0880 1AA0011A 		.long	436314138
 2381 0884 A0012A3F 		.long	1059717536
 2382 0888 1AA0011A 		.long	436314138
 2383 088c A0012A3F 		.long	1059717536
 2384 0890 1AA0011A 		.long	436314138
 2385 0894 A0012A3F 		.long	1059717536
 2386 0898 1AA0011A 		.long	436314138
 2387 089c A0012A3F 		.long	1059717536
 2388              		.align 32
 2389              	.LC81:
 2390 08a0 176CC116 		.long	381774871
GAS LISTING /tmp/ccObQ0kt.s 			page 65


 2391 08a4 6CC1563F 		.long	1062650220
 2392 08a8 176CC116 		.long	381774871
 2393 08ac 6CC1563F 		.long	1062650220
 2394 08b0 176CC116 		.long	381774871
 2395 08b4 6CC1563F 		.long	1062650220
 2396 08b8 176CC116 		.long	381774871
 2397 08bc 6CC1563F 		.long	1062650220
 2398              		.align 32
 2399              	.LC82:
 2400 08c0 34C756A5 		.long	2773927732
 2401 08c4 E31DC73E 		.long	1053236707
 2402 08c8 34C756A5 		.long	2773927732
 2403 08cc E31DC73E 		.long	1053236707
 2404 08d0 34C756A5 		.long	2773927732
 2405 08d4 E31DC73E 		.long	1053236707
 2406 08d8 34C756A5 		.long	2773927732
 2407 08dc E31DC73E 		.long	1053236707
 2408              		.align 32
 2409              	.LC83:
 2410 08e0 1AA0011A 		.long	436314138
 2411 08e4 A001FA3E 		.long	1056571808
 2412 08e8 1AA0011A 		.long	436314138
 2413 08ec A001FA3E 		.long	1056571808
 2414 08f0 1AA0011A 		.long	436314138
 2415 08f4 A001FA3E 		.long	1056571808
 2416 08f8 1AA0011A 		.long	436314138
 2417 08fc A001FA3E 		.long	1056571808
 2418              		.align 32
 2419              	.LC84:
 2420 0900 E444F567 		.long	1744127204
 2421 0904 45E65A3E 		.long	1046144581
 2422 0908 E444F567 		.long	1744127204
 2423 090c 45E65A3E 		.long	1046144581
 2424 0910 E444F567 		.long	1744127204
 2425 0914 45E65A3E 		.long	1046144581
 2426 0918 E444F567 		.long	1744127204
 2427 091c 45E65A3E 		.long	1046144581
 2428              		.align 32
 2429              	.LC85:
 2430 0920 5C9F78B7 		.long	3078135644
 2431 0924 4F7E923E 		.long	1049787983
 2432 0928 5C9F78B7 		.long	3078135644
 2433 092c 4F7E923E 		.long	1049787983
 2434 0930 5C9F78B7 		.long	3078135644
 2435 0934 4F7E923E 		.long	1049787983
 2436 0938 5C9F78B7 		.long	3078135644
 2437 093c 4F7E923E 		.long	1049787983
 2438              		.align 32
 2439              	.LC86:
 2440 0940 096DA813 		.long	329805065
 2441 0944 4612E63D 		.long	1038488134
 2442 0948 096DA813 		.long	329805065
 2443 094c 4612E63D 		.long	1038488134
 2444 0950 096DA813 		.long	329805065
 2445 0954 4612E63D 		.long	1038488134
 2446 0958 096DA813 		.long	329805065
 2447 095c 4612E63D 		.long	1038488134
GAS LISTING /tmp/ccObQ0kt.s 			page 66


 2448              		.align 32
 2449              	.LC87:
 2450 0960 98D8F8EF 		.long	4026063000
 2451 0964 D8EE213E 		.long	1042411224
 2452 0968 98D8F8EF 		.long	4026063000
 2453 096c D8EE213E 		.long	1042411224
 2454 0970 98D8F8EF 		.long	4026063000
 2455 0974 D8EE213E 		.long	1042411224
 2456 0978 98D8F8EF 		.long	4026063000
 2457 097c D8EE213E 		.long	1042411224
 2458              		.align 32
 2459              	.LC88:
 2460 0980 85EB51B8 		.long	3092376453
 2461 0984 1E238640 		.long	1082532638
 2462 0988 85EB51B8 		.long	3092376453
 2463 098c 1E238640 		.long	1082532638
 2464 0990 85EB51B8 		.long	3092376453
 2465 0994 1E238640 		.long	1082532638
 2466 0998 85EB51B8 		.long	3092376453
 2467 099c 1E238640 		.long	1082532638
 2468              		.align 32
 2469              	.LC89:
 2470 09a0 2D431CEB 		.long	3944497965
 2471 09a4 E2361A3F 		.long	1058682594
 2472 09a8 2D431CEB 		.long	3944497965
 2473 09ac E2361A3F 		.long	1058682594
 2474 09b0 2D431CEB 		.long	3944497965
 2475 09b4 E2361A3F 		.long	1058682594
 2476 09b8 2D431CEB 		.long	3944497965
 2477 09bc E2361A3F 		.long	1058682594
 2478              		.align 32
 2479              	.LC90:
 2480 09c0 00000000 		.long	0
 2481 09c4 00001440 		.long	1075052544
 2482 09c8 00000000 		.long	0
 2483 09cc 00001440 		.long	1075052544
 2484 09d0 00000000 		.long	0
 2485 09d4 00001440 		.long	1075052544
 2486 09d8 00000000 		.long	0
 2487 09dc 00001440 		.long	1075052544
 2488              		.align 32
 2489              	.LC91:
 2490 09e0 9A999999 		.long	2576980378
 2491 09e4 9999E93F 		.long	1072273817
 2492 09e8 9A999999 		.long	2576980378
 2493 09ec 9999E93F 		.long	1072273817
 2494 09f0 9A999999 		.long	2576980378
 2495 09f4 9999E93F 		.long	1072273817
 2496 09f8 9A999999 		.long	2576980378
 2497 09fc 9999E93F 		.long	1072273817
 2498              		.align 32
 2499              	.LC92:
 2500 0a00 00000000 		.long	0
 2501 0a04 00408F40 		.long	1083129856
 2502 0a08 00000000 		.long	0
 2503 0a0c 00408F40 		.long	1083129856
 2504 0a10 00000000 		.long	0
GAS LISTING /tmp/ccObQ0kt.s 			page 67


 2505 0a14 00408F40 		.long	1083129856
 2506 0a18 00000000 		.long	0
 2507 0a1c 00408F40 		.long	1083129856
 2508              		.section	.rodata.cst8
 2509              		.align 8
 2510              	.LC93:
 2511 0010 182D4454 		.long	1413754136
 2512 0014 FB211940 		.long	1075388923
 2513              		.align 8
 2514              	.LC94:
 2515 0018 00000000 		.long	0
 2516 001c 00009040 		.long	1083179008
 2517              		.section	.rodata.cst16
 2518              		.align 16
 2519              	.LC96:
 2520 0090 01000000 		.quad	4294967297
 2520      01000000 
 2521 0098 01000000 		.quad	4294967297
 2521      01000000 
 2522              		.section	.rodata.cst32
 2523              		.align 32
 2524              	.LC97:
 2525 0a20 182D4454 		.long	1413754136
 2526 0a24 FB211940 		.long	1075388923
 2527 0a28 182D4454 		.long	1413754136
 2528 0a2c FB211940 		.long	1075388923
 2529 0a30 182D4454 		.long	1413754136
 2530 0a34 FB211940 		.long	1075388923
 2531 0a38 182D4454 		.long	1413754136
 2532 0a3c FB211940 		.long	1075388923
 2533              		.align 32
 2534              	.LC98:
 2535 0a40 814EE62E 		.long	786845313
 2536 0a44 0BEBB940 		.long	1085926155
 2537 0a48 814EE62E 		.long	786845313
 2538 0a4c 0BEBB940 		.long	1085926155
 2539 0a50 814EE62E 		.long	786845313
 2540 0a54 0BEBB940 		.long	1085926155
 2541 0a58 814EE62E 		.long	786845313
 2542 0a5c 0BEBB940 		.long	1085926155
 2543              		.align 32
 2544              	.LC99:
 2545 0a60 7B14AE47 		.long	1202590843
 2546 0a64 E17A843F 		.long	1065646817
 2547 0a68 7B14AE47 		.long	1202590843
 2548 0a6c E17A843F 		.long	1065646817
 2549 0a70 7B14AE47 		.long	1202590843
 2550 0a74 E17A843F 		.long	1065646817
 2551 0a78 7B14AE47 		.long	1202590843
 2552 0a7c E17A843F 		.long	1065646817
 2553              		.align 32
 2554              	.LC100:
 2555 0a80 182D4454 		.long	1413754136
 2556 0a84 FB21B940 		.long	1085874683
 2557 0a88 182D4454 		.long	1413754136
 2558 0a8c FB21B940 		.long	1085874683
 2559 0a90 182D4454 		.long	1413754136
GAS LISTING /tmp/ccObQ0kt.s 			page 68


 2560 0a94 FB21B940 		.long	1085874683
 2561 0a98 182D4454 		.long	1413754136
 2562 0a9c FB21B940 		.long	1085874683
 2563              		.align 32
 2564              	.LC101:
 2565 0aa0 00000000 		.long	0
 2566 0aa4 0000E0BF 		.long	-1075838976
 2567 0aa8 00000000 		.long	0
 2568 0aac 0000E0BF 		.long	-1075838976
 2569 0ab0 00000000 		.long	0
 2570 0ab4 0000E0BF 		.long	-1075838976
 2571 0ab8 00000000 		.long	0
 2572 0abc 0000E0BF 		.long	-1075838976
 2573              		.align 32
 2574              	.LC102:
 2575 0ac0 9A999999 		.long	2576980378
 2576 0ac4 9999B9BF 		.long	-1078355559
 2577 0ac8 9A999999 		.long	2576980378
 2578 0acc 9999B9BF 		.long	-1078355559
 2579 0ad0 9A999999 		.long	2576980378
 2580 0ad4 9999B9BF 		.long	-1078355559
 2581 0ad8 9A999999 		.long	2576980378
 2582 0adc 9999B9BF 		.long	-1078355559
 2583              		.section	.rodata.cst16
 2584              		.align 16
 2585              	.LC105:
 2586 00a0 FFFFFFFF 		.quad	-1
 2586      FFFFFFFF 
 2587 00a8 FFFFFFFF 		.quad	-1
 2587      FFFFFFFF 
 2588              		.hidden	__dso_handle
 2589              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2590              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccObQ0kt.s 			page 69


DEFINED SYMBOLS
                            *ABS*:0000000000000000 duffing_RKCK45.cpp
     /tmp/ccObQ0kt.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccObQ0kt.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccObQ0kt.s:81     .text.startup:0000000000000000 main
     /tmp/ccObQ0kt.s:1621   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccObQ0kt.s:1633   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccObQ0kt.s:1598   .text.startup:00000000000022e0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccObQ0kt.s:1646   .rodata.cst8:0000000000000000 .LC0
     /tmp/ccObQ0kt.s:1650   .rodata.cst8:0000000000000008 .LC1
     /tmp/ccObQ0kt.s:2308   .rodata.cst16:0000000000000070 .LC72
     /tmp/ccObQ0kt.s:2544   .rodata.cst32:0000000000000a60 .LC99
     /tmp/ccObQ0kt.s:2554   .rodata.cst32:0000000000000a80 .LC100
     /tmp/ccObQ0kt.s:2574   .rodata.cst32:0000000000000ac0 .LC102
     /tmp/ccObQ0kt.s:2564   .rodata.cst32:0000000000000aa0 .LC101
     /tmp/ccObQ0kt.s:1655   .rodata.cst32:0000000000000000 .LC3
     /tmp/ccObQ0kt.s:1675   .rodata.cst32:0000000000000040 .LC5
     /tmp/ccObQ0kt.s:1665   .rodata.cst32:0000000000000020 .LC4
     /tmp/ccObQ0kt.s:1685   .rodata.cst32:0000000000000060 .LC6
     /tmp/ccObQ0kt.s:1715   .rodata.cst32:00000000000000c0 .LC9
     /tmp/ccObQ0kt.s:1695   .rodata.cst32:0000000000000080 .LC7
     /tmp/ccObQ0kt.s:1775   .rodata.cst32:0000000000000180 .LC15
     /tmp/ccObQ0kt.s:1725   .rodata.cst32:00000000000000e0 .LC10
     /tmp/ccObQ0kt.s:1705   .rodata.cst32:00000000000000a0 .LC8
     /tmp/ccObQ0kt.s:1785   .rodata.cst32:00000000000001a0 .LC16
     /tmp/ccObQ0kt.s:1735   .rodata.cst32:0000000000000100 .LC11
     /tmp/ccObQ0kt.s:1745   .rodata.cst32:0000000000000120 .LC12
     /tmp/ccObQ0kt.s:1755   .rodata.cst32:0000000000000140 .LC13
     /tmp/ccObQ0kt.s:1765   .rodata.cst32:0000000000000160 .LC14
     /tmp/ccObQ0kt.s:1795   .rodata.cst32:00000000000001c0 .LC17
     /tmp/ccObQ0kt.s:1805   .rodata.cst32:00000000000001e0 .LC18
     /tmp/ccObQ0kt.s:1815   .rodata.cst32:0000000000000200 .LC19
     /tmp/ccObQ0kt.s:1825   .rodata.cst32:0000000000000220 .LC20
     /tmp/ccObQ0kt.s:1844   .rodata.cst16:0000000000000020 .LC23
     /tmp/ccObQ0kt.s:1836   .rodata.cst16:0000000000000000 .LC21
     /tmp/ccObQ0kt.s:2585   .rodata.cst16:00000000000000a0 .LC105
     /tmp/ccObQ0kt.s:1840   .rodata.cst16:0000000000000010 .LC22
     /tmp/ccObQ0kt.s:1848   .rodata.cst16:0000000000000030 .LC24
     /tmp/ccObQ0kt.s:1853   .rodata.cst32:0000000000000240 .LC25
     /tmp/ccObQ0kt.s:1863   .rodata.cst32:0000000000000260 .LC26
     /tmp/ccObQ0kt.s:1873   .rodata.cst32:0000000000000280 .LC27
     /tmp/ccObQ0kt.s:1883   .rodata.cst32:00000000000002a0 .LC28
     /tmp/ccObQ0kt.s:1913   .rodata.cst32:0000000000000300 .LC31
     /tmp/ccObQ0kt.s:1893   .rodata.cst32:00000000000002c0 .LC29
     /tmp/ccObQ0kt.s:1903   .rodata.cst32:00000000000002e0 .LC30
     /tmp/ccObQ0kt.s:1923   .rodata.cst32:0000000000000320 .LC32
     /tmp/ccObQ0kt.s:1953   .rodata.cst32:0000000000000380 .LC35
     /tmp/ccObQ0kt.s:1943   .rodata.cst32:0000000000000360 .LC34
     /tmp/ccObQ0kt.s:1933   .rodata.cst32:0000000000000340 .LC33
     /tmp/ccObQ0kt.s:1993   .rodata.cst32:0000000000000400 .LC39
     /tmp/ccObQ0kt.s:2003   .rodata.cst32:0000000000000420 .LC40
     /tmp/ccObQ0kt.s:1963   .rodata.cst32:00000000000003a0 .LC36
     /tmp/ccObQ0kt.s:1973   .rodata.cst32:00000000000003c0 .LC37
     /tmp/ccObQ0kt.s:1983   .rodata.cst32:00000000000003e0 .LC38
     /tmp/ccObQ0kt.s:2013   .rodata.cst32:0000000000000440 .LC41
     /tmp/ccObQ0kt.s:2023   .rodata.cst32:0000000000000460 .LC42
GAS LISTING /tmp/ccObQ0kt.s 			page 70


     /tmp/ccObQ0kt.s:2043   .rodata.cst32:00000000000004a0 .LC44
     /tmp/ccObQ0kt.s:2053   .rodata.cst32:00000000000004c0 .LC45
     /tmp/ccObQ0kt.s:2033   .rodata.cst32:0000000000000480 .LC43
     /tmp/ccObQ0kt.s:2063   .rodata.cst32:00000000000004e0 .LC46
     /tmp/ccObQ0kt.s:2093   .rodata.cst32:0000000000000540 .LC49
     /tmp/ccObQ0kt.s:2083   .rodata.cst32:0000000000000520 .LC48
     /tmp/ccObQ0kt.s:2073   .rodata.cst32:0000000000000500 .LC47
     /tmp/ccObQ0kt.s:2103   .rodata.cst32:0000000000000560 .LC50
     /tmp/ccObQ0kt.s:2113   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccObQ0kt.s:2124   .rodata.cst16:0000000000000040 .LC52
     /tmp/ccObQ0kt.s:2132   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccObQ0kt.s:2128   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccObQ0kt.s:2147   .rodata.cst32:00000000000005c0 .LC56
     /tmp/ccObQ0kt.s:2137   .rodata.cst32:00000000000005a0 .LC55
     /tmp/ccObQ0kt.s:2177   .rodata.cst32:0000000000000620 .LC59
     /tmp/ccObQ0kt.s:2237   .rodata.cst32:00000000000006e0 .LC65
     /tmp/ccObQ0kt.s:2157   .rodata.cst32:00000000000005e0 .LC57
     /tmp/ccObQ0kt.s:2187   .rodata.cst32:0000000000000640 .LC60
     /tmp/ccObQ0kt.s:2167   .rodata.cst32:0000000000000600 .LC58
     /tmp/ccObQ0kt.s:2197   .rodata.cst32:0000000000000660 .LC61
     /tmp/ccObQ0kt.s:2207   .rodata.cst32:0000000000000680 .LC62
     /tmp/ccObQ0kt.s:2217   .rodata.cst32:00000000000006a0 .LC63
     /tmp/ccObQ0kt.s:2227   .rodata.cst32:00000000000006c0 .LC64
     /tmp/ccObQ0kt.s:2247   .rodata.cst32:0000000000000700 .LC66
     /tmp/ccObQ0kt.s:2257   .rodata.cst32:0000000000000720 .LC67
     /tmp/ccObQ0kt.s:2267   .rodata.cst32:0000000000000740 .LC68
     /tmp/ccObQ0kt.s:2277   .rodata.cst32:0000000000000760 .LC69
     /tmp/ccObQ0kt.s:2287   .rodata.cst32:0000000000000780 .LC70
     /tmp/ccObQ0kt.s:2297   .rodata.cst32:00000000000007a0 .LC71
     /tmp/ccObQ0kt.s:2314   .rodata.cst16:0000000000000080 .LC73
     /tmp/ccObQ0kt.s:2319   .rodata.cst32:00000000000007c0 .LC74
     /tmp/ccObQ0kt.s:2329   .rodata.cst32:00000000000007e0 .LC75
     /tmp/ccObQ0kt.s:2339   .rodata.cst32:0000000000000800 .LC76
     /tmp/ccObQ0kt.s:2379   .rodata.cst32:0000000000000880 .LC80
     /tmp/ccObQ0kt.s:2349   .rodata.cst32:0000000000000820 .LC77
     /tmp/ccObQ0kt.s:2359   .rodata.cst32:0000000000000840 .LC78
     /tmp/ccObQ0kt.s:2389   .rodata.cst32:00000000000008a0 .LC81
     /tmp/ccObQ0kt.s:2369   .rodata.cst32:0000000000000860 .LC79
     /tmp/ccObQ0kt.s:2419   .rodata.cst32:0000000000000900 .LC84
     /tmp/ccObQ0kt.s:2429   .rodata.cst32:0000000000000920 .LC85
     /tmp/ccObQ0kt.s:2399   .rodata.cst32:00000000000008c0 .LC82
     /tmp/ccObQ0kt.s:2439   .rodata.cst32:0000000000000940 .LC86
     /tmp/ccObQ0kt.s:2409   .rodata.cst32:00000000000008e0 .LC83
     /tmp/ccObQ0kt.s:2449   .rodata.cst32:0000000000000960 .LC87
     /tmp/ccObQ0kt.s:2459   .rodata.cst32:0000000000000980 .LC88
     /tmp/ccObQ0kt.s:2469   .rodata.cst32:00000000000009a0 .LC89
     /tmp/ccObQ0kt.s:2479   .rodata.cst32:00000000000009c0 .LC90
     /tmp/ccObQ0kt.s:2499   .rodata.cst32:0000000000000a00 .LC92
     /tmp/ccObQ0kt.s:2489   .rodata.cst32:00000000000009e0 .LC91
     /tmp/ccObQ0kt.s:2524   .rodata.cst32:0000000000000a20 .LC97
     /tmp/ccObQ0kt.s:2519   .rodata.cst16:0000000000000090 .LC96
     /tmp/ccObQ0kt.s:2534   .rodata.cst32:0000000000000a40 .LC98
     /tmp/ccObQ0kt.s:2510   .rodata.cst8:0000000000000010 .LC93
     /tmp/ccObQ0kt.s:2514   .rodata.cst8:0000000000000018 .LC94

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
GAS LISTING /tmp/ccObQ0kt.s 			page 71


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
