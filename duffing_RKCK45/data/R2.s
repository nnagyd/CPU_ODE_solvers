GAS LISTING /tmp/cc2s6cHB.s 			page 1


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
GAS LISTING /tmp/cc2s6cHB.s 			page 2


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
  98 0016 4881ECC0 		subq	$2752, %rsp
GAS LISTING /tmp/cc2s6cHB.s 			page 3


  98      0A0000
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
 107 0036 48898424 		movq	%rax, 2744(%rsp)
 107      B80A0000 
 108 003e 31C0     		xorl	%eax, %eax
 109 0040 E8000000 		call	_Z8linspaceddi
 109      00
 110 0045 488DBC24 		leaq	2224(%rsp), %rdi
 110      B0080000 
 111 004d BA300000 		movl	$48, %edx
 111      00
 112 0052 BE000000 		movl	$.LC2, %esi
 112      00
 113 0057 48894424 		movq	%rax, 16(%rsp)
 113      10
 114              	.LEHB0:
 115 005c E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
 115      00
 116              	.LEHE0:
 117 0061 E8000000 		call	clock
 117      00
 118 0066 C5F82805 		vmovaps	.LC72(%rip), %xmm0
 118      00000000 
 119 006e 48894424 		movq	%rax, 8(%rsp)
 119      08
 120 0073 48C74424 		movq	$0, 24(%rsp)
 120      18000000 
 120      00
 121 007c C5F828C8 		vmovaps	%xmm0, %xmm1
 122 0080 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
 122      C001
 123 0086 C5FD5725 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 123      00000000 
 124 008e C5FC2944 		vmovaps	%ymm0, 32(%rsp)
 124      2420
 125 0094 C5FD2964 		vmovapd	%ymm4, 64(%rsp)
 125      2440
 126              	.L12:
 127 009a 488B4424 		movq	16(%rsp), %rax
 127      10
 128 009f 488B7C24 		movq	24(%rsp), %rdi
 128      18
 129 00a4 31D2     		xorl	%edx, %edx
 130 00a6 C5F157C9 		vxorpd	%xmm1, %xmm1, %xmm1
 131 00aa C5FD282D 		vmovapd	.LC99(%rip), %ymm5
 131      00000000 
GAS LISTING /tmp/cc2s6cHB.s 			page 4


 132 00b2 C5FD2825 		vmovapd	.LC100(%rip), %ymm4
 132      00000000 
 133 00ba 31F6     		xorl	%esi, %esi
 134 00bc 83FA01   		cmpl	$1, %edx
 135 00bf C5FD2804 		vmovapd	(%rax,%rdi), %ymm0
 135      38
 136 00c4 C5FD29AC 		vmovapd	%ymm5, 1984(%rsp)
 136      24C00700 
 136      00
 137 00cd C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 137      24000800 
 137      00
 138 00d6 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 139 00da C5FD298C 		vmovapd	%ymm1, 1856(%rsp)
 139      24400700 
 139      00
 140 00e3 C5FD29A4 		vmovapd	%ymm4, 2112(%rsp)
 140      24400800 
 140      00
 141 00ec C5F97F84 		vmovdqa	%xmm0, 2176(%rsp)
 141      24800800 
 141      00
 142 00f5 C5FD281D 		vmovapd	.LC102(%rip), %ymm3
 142      00000000 
 143 00fd C5FD2854 		vmovapd	32(%rax,%rdi), %ymm2
 143      3820
 144 0103 C5FD29AC 		vmovapd	%ymm5, 2016(%rsp)
 144      24E00700 
 144      00
 145 010c C5FD282D 		vmovapd	.LC101(%rip), %ymm5
 145      00000000 
 146 0114 C5FD2994 		vmovapd	%ymm2, 2080(%rsp)
 146      24200800 
 146      00
 147 011d C5FD298C 		vmovapd	%ymm1, 1888(%rsp)
 147      24600700 
 147      00
 148 0126 C5FD29A4 		vmovapd	%ymm4, 2144(%rsp)
 148      24600800 
 148      00
 149 012f C5F97F84 		vmovdqa	%xmm0, 2192(%rsp)
 149      24900800 
 149      00
 150 0138 C5FD29AC 		vmovapd	%ymm5, 1728(%rsp)
 150      24C00600 
 150      00
 151 0141 C5FD299C 		vmovapd	%ymm3, 1760(%rsp)
 151      24E00600 
 151      00
 152 014a C5FD29AC 		vmovapd	%ymm5, 1792(%rsp)
 152      24000700 
 152      00
 153 0153 C5FD299C 		vmovapd	%ymm3, 1824(%rsp)
 153      24200700 
 153      00
 154 015c 0F8FDA02 		jg	.L66
 154      0000
GAS LISTING /tmp/cc2s6cHB.s 			page 5


 155              		.p2align 4,,10
 156 0162 660F1F44 		.p2align 3
 156      0000
 157              	.L13:
 158 0168 4863C6   		movslq	%esi, %rax
 159 016b 4863CA   		movslq	%edx, %rcx
 160 016e 83C201   		addl	$1, %edx
 161 0171 48C1E005 		salq	$5, %rax
 162 0175 48C1E105 		salq	$5, %rcx
 163 0179 83C602   		addl	$2, %esi
 164 017c 488D7820 		leaq	32(%rax), %rdi
 165 0180 83FA01   		cmpl	$1, %edx
 166 0183 4C8D843C 		leaq	1728(%rsp,%rdi), %r8
 166      C0060000 
 167 018b C4C17D28 		vmovapd	(%r8), %ymm0
 167      00
 168 0190 C5FD2984 		vmovapd	%ymm0, 1216(%rsp,%rax)
 168      04C00400 
 168      00
 169 0199 C5FD28AC 		vmovapd	1856(%rsp,%rcx), %ymm5
 169      0C400700 
 169      00
 170 01a2 C5D55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 170      00000000 
 171 01aa C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 171      00000000 
 172 01b2 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 172      C008
 173 01b8 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 173      C808
 174 01be C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 174      24C00000 
 174      00
 175 01c7 C57B10BC 		vmovsd	192(%rsp), %xmm15
 175      24C00000 
 175      00
 176 01d0 C5FB109C 		vmovsd	208(%rsp), %xmm3
 176      24D00000 
 176      00
 177 01d9 C4C1FB2C 		vcvttsd2siq	%xmm15, %rbx
 177      DF
 178 01de C5FB108C 		vmovsd	200(%rsp), %xmm1
 178      24C80000 
 178      00
 179 01e7 C461FB2C 		vcvttsd2siq	%xmm1, %r9
 179      C9
 180 01ec C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 180      00000000 
 181 01f4 48899C24 		movq	%rbx, 128(%rsp)
 181      80000000 
 182 01fc C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 182      DB
 183 0201 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 183      00000000 
 184 0209 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 184      24800000 
 184      00
GAS LISTING /tmp/cc2s6cHB.s 			page 6


 185 0212 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 185      00000000 
 186 021a C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm4
 186      E101
 187 0220 C5FB10AC 		vmovsd	216(%rsp), %xmm5
 187      24D80000 
 187      00
 188 0229 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 189 022d C461FB2C 		vcvttsd2siq	%xmm5, %r9
 189      CD
 190 0232 48899C24 		movq	%rbx, 128(%rsp)
 190      80000000 
 191 023a C5FA7EAC 		vmovq	128(%rsp), %xmm5
 191      24800000 
 191      00
 192 0243 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 193 0247 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 194 024b C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm5
 194      E901
 195 0251 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 196 0255 C57D5905 		vmulpd	.LC9(%rip), %ymm0, %ymm8
 196      00000000 
 197 025d C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 198 0261 C5FD593D 		vmulpd	.LC7(%rip), %ymm0, %ymm7
 198      00000000 
 199 0269 C57D590D 		vmulpd	.LC15(%rip), %ymm0, %ymm9
 199      00000000 
 200 0271 C53D5805 		vaddpd	.LC10(%rip), %ymm8, %ymm8
 200      00000000 
 201 0279 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 202 027d C5C5583D 		vaddpd	.LC8(%rip), %ymm7, %ymm7
 202      00000000 
 203 0285 C535580D 		vaddpd	.LC16(%rip), %ymm9, %ymm9
 203      00000000 
 204 028d C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
 205 0291 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 206 0295 C5FD593D 		vmulpd	.LC11(%rip), %ymm0, %ymm7
 206      00000000 
 207 029d C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 208 02a1 C5C5583D 		vaddpd	.LC12(%rip), %ymm7, %ymm7
 208      00000000 
 209 02a9 C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 210 02ad C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 210      F8
 211 02b2 C57D5905 		vmulpd	.LC13(%rip), %ymm0, %ymm8
 211      00000000 
 212 02ba C53D5805 		vaddpd	.LC14(%rip), %ymm8, %ymm8
 212      00000000 
 213 02c2 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 213      F0
 214 02c7 C57D5905 		vmulpd	.LC17(%rip), %ymm0, %ymm8
 214      00000000 
 215 02cf C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 215      00000000 
 216 02d7 C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 217 02db C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 218 02df C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
GAS LISTING /tmp/cc2s6cHB.s 			page 7


 219 02e3 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 219      00000000 
 220 02eb C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 221 02ef C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 222 02f3 C5C9EFF6 		vpxor	%xmm6, %xmm6, %xmm6
 223 02f7 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 223      D001
 224 02fd C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 225 0301 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 225      00000000 
 226 0309 C4C13973 		vpsllq	$1, %xmm8, %xmm8
 226      F001
 227 030f C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 227      00000000 
 228 0317 C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 229 031b C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 229      05000000 
 229      00
 230 0324 C5F558F8 		vaddpd	%ymm0, %ymm1, %ymm7
 231 0328 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 231      00000000 
 232 0330 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 232      00000000 
 233 0338 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 233      00000000 
 234 0340 C4E27929 		vpcmpeqq	%xmm6, %xmm0, %xmm0
 234      C6
 235 0345 C4E27129 		vpcmpeqq	%xmm6, %xmm1, %xmm1
 235      CE
 236 034a C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 236      00000000 
 237 0352 C4E25937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm6
 237      35000000 
 237      00
 238 035b C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 238      00000000 
 239 0363 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 239      C801
 240 0369 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 240      05000000 
 240      00
 241 0372 C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 241      F001
 242 0378 C5F928C2 		vmovapd	%xmm2, %xmm0
 243 037c C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 244 0380 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 244      01
 245 0385 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 245      00000000 
 246 038d C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 246      05000000 
 246      00
 247 0396 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 247      00000000 
 248 039e C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 248      C001
 249 03a4 C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
GAS LISTING /tmp/cc2s6cHB.s 			page 8


 250 03a8 C4E3654B 		vblendvpd	%ymm0, %ymm2, %ymm3, %ymm3
 250      DA00
 251 03ae C4E3454B 		vblendvpd	%ymm0, .LC20(%rip), %ymm7, %ymm0
 251      05000000 
 251      0000
 252 03b8 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 252      00000000 
 253 03c0 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 253      00000000 
 254 03c8 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 254      C310
 255 03ce C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 255      00000000 
 256 03d6 C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 256      00000000 
 257 03de C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 257      00000000 
 258 03e6 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 258      3E
 259 03eb C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 259      3E
 260 03f0 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 260      CA01
 261 03f6 C5FD2894 		vmovapd	2048(%rsp,%rcx), %ymm2
 261      0C000800 
 261      00
 262 03ff C4C16D59 		vmulpd	(%r8), %ymm2, %ymm2
 262      10
 263 0404 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 264 0408 C5FD2884 		vmovapd	1728(%rsp,%rax), %ymm0
 264      04C00600 
 264      00
 265 0411 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 266 0415 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 266      00000000 
 267 041d C5D55CDB 		vsubpd	%ymm3, %ymm5, %ymm3
 268 0421 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 269 0425 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 270 0429 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 271 042d C5FD2984 		vmovapd	%ymm0, 1248(%rsp,%rax)
 271      04E00400 
 271      00
 272 0436 0F8E2CFD 		jle	.L13
 272      FFFF
 273              	.L66:
 274 043c C5FD282D 		vmovapd	.LC26(%rip), %ymm5
 274      00000000 
 275 0444 488D8424 		leaq	1632(%rsp), %rax
 275      60060000 
 276 044c 488DBC24 		leaq	1920(%rsp), %rdi
 276      80070000 
 277 0454 C5FD2884 		vmovapd	1984(%rsp), %ymm0
 277      24C00700 
 277      00
 278 045d C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 279 0461 C5D5598C 		vmulpd	1216(%rsp), %ymm5, %ymm1
 279      24C00400 
GAS LISTING /tmp/cc2s6cHB.s 			page 9


 279      00
 280 046a 488D8C24 		leaq	1760(%rsp), %rcx
 280      E0060000 
 281 0472 C57D2825 		vmovapd	.LC20(%rip), %ymm12
 281      00000000 
 282 047a 4889FE   		movq	%rdi, %rsi
 283 047d 4889C2   		movq	%rax, %rdx
 284 0480 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 284      C0
 285 0485 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 286 0489 C5F5588C 		vaddpd	1728(%rsp), %ymm1, %ymm1
 286      24C00600 
 286      00
 287 0492 C5FD298C 		vmovapd	%ymm1, 1600(%rsp)
 287      24400600 
 287      00
 288 049b C5D5598C 		vmulpd	1248(%rsp), %ymm5, %ymm1
 288      24E00400 
 288      00
 289 04a4 C5F559C8 		vmulpd	%ymm0, %ymm1, %ymm1
 290 04a8 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 291 04ac C5F5588C 		vaddpd	1760(%rsp), %ymm1, %ymm1
 291      24E00600 
 291      00
 292 04b5 C5FD5884 		vaddpd	1856(%rsp), %ymm0, %ymm0
 292      24400700 
 292      00
 293 04be C5FD298C 		vmovapd	%ymm1, 1632(%rsp)
 293      24600600 
 293      00
 294 04c7 C5D5598C 		vmulpd	1280(%rsp), %ymm5, %ymm1
 294      24000500 
 294      00
 295 04d0 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 295      24800700 
 295      00
 296 04d9 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 296      24E00700 
 296      00
 297 04e2 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 298 04e6 C5F5588C 		vaddpd	1792(%rsp), %ymm1, %ymm1
 298      24000700 
 298      00
 299 04ef C5FD298C 		vmovapd	%ymm1, 1664(%rsp)
 299      24800600 
 299      00
 300 04f8 C5D5598C 		vmulpd	1312(%rsp), %ymm5, %ymm1
 300      24200500 
 300      00
 301 0501 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 302 0505 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 303 0509 C5F5588C 		vaddpd	1824(%rsp), %ymm1, %ymm1
 303      24200700 
 303      00
 304 0512 C5FD5884 		vaddpd	1888(%rsp), %ymm0, %ymm0
 304      24600700 
 304      00
GAS LISTING /tmp/cc2s6cHB.s 			page 10


 305 051b C5FD298C 		vmovapd	%ymm1, 1696(%rsp)
 305      24A00600 
 305      00
 306 0524 C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 306      24A00700 
 306      00
 307              	.L15:
 308 052d C5FD2802 		vmovapd	(%rdx), %ymm0
 309 0531 4883C240 		addq	$64, %rdx
 310 0535 4883C620 		addq	$32, %rsi
 311 0539 C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 311      00000000 
 312 0541 C5FD2982 		vmovapd	%ymm0, -864(%rdx)
 312      A0FCFFFF 
 313 0549 C5D55456 		vandpd	-32(%rsi), %ymm5, %ymm2
 313      E0
 314 054e C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 314      00000000 
 315 0556 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 315      C008
 316 055c C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 316      00000000 
 317 0564 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 317      C808
 318 056a C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 318      24E00000 
 318      00
 319 0573 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 319      00000000 
 320 057b C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 320      00000000 
 321 0583 C57B1094 		vmovsd	224(%rsp), %xmm10
 321      24E00000 
 321      00
 322 058c C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 323 0590 C57B109C 		vmovsd	232(%rsp), %xmm11
 323      24E80000 
 323      00
 324 0599 C4C1FB2C 		vcvttsd2siq	%xmm10, %rbx
 324      DA
 325 059e C441FB2C 		vcvttsd2siq	%xmm11, %r8
 325      C3
 326 05a3 C57B10AC 		vmovsd	240(%rsp), %xmm13
 326      24F00000 
 326      00
 327 05ac C57B10B4 		vmovsd	248(%rsp), %xmm14
 327      24F80000 
 327      00
 328 05b5 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 329 05b9 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 330 05bd 48899C24 		movq	%rbx, 128(%rsp)
 330      80000000 
 331 05c5 C4C1FB2C 		vcvttsd2siq	%xmm13, %rbx
 331      DD
 332 05ca C5FA7EA4 		vmovq	128(%rsp), %xmm4
 332      24800000 
 332      00
GAS LISTING /tmp/cc2s6cHB.s 			page 11


 333 05d3 C4C3D922 		vpinsrq	$1, %r8, %xmm4, %xmm4
 333      E001
 334 05d9 C441FB2C 		vcvttsd2siq	%xmm14, %r8
 334      C6
 335 05de C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 336 05e2 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 336      00000000 
 337 05ea C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 338 05ee 48899C24 		movq	%rbx, 128(%rsp)
 338      80000000 
 339 05f6 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 339      00000000 
 340 05fe C5FA7EAC 		vmovq	128(%rsp), %xmm5
 340      24800000 
 340      00
 341 0607 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 341      00000000 
 342 060f C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 342      00000000 
 343 0617 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 344 061b C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 344      E801
 345 0621 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 345      00000000 
 346 0629 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 346      00000000 
 347 0631 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 348 0635 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 348      D1
 349 063a C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 349      00000000 
 350 0642 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 351 0646 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 351      00000000 
 352 064e C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 353 0652 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 353      CA
 354 0657 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 354      00000000 
 355 065f C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 355      00000000 
 356 0667 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 356      F2
 357 066c C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 357      00000000 
 358 0674 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 358      00000000 
 359 067c C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 360 0680 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 361 0684 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 362 0688 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 362      00000000 
 363 0690 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 364 0694 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 364      C9
 365 0699 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 365      D201
GAS LISTING /tmp/cc2s6cHB.s 			page 12


 366 069f C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 367 06a3 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 368 06a7 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 368      F201
 369 06ad C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 369      00000000 
 370 06b5 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 370      0D000000 
 370      00
 371 06be C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 372 06c2 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 372      00000000 
 373 06ca C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 373      00000000 
 374 06d2 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 374      15000000 
 374      00
 375 06db C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 375      C7
 376 06e0 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 376      00000000 
 377 06e8 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 377      CF
 378 06ed C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 378      00000000 
 379 06f5 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 379      00000000 
 380 06fd C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 380      C801
 381 0703 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 381      05000000 
 381      00
 382 070c C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 382      C801
 383 0712 C5F928C2 		vmovapd	%xmm2, %xmm0
 384 0716 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 384      00000000 
 385 071e C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 385      00000000 
 386 0726 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 386      01
 387 072b C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 387      00000000 
 388 0733 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 388      3E
 389 0738 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 389      05000000 
 389      00
 390 0741 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 390      00000000 
 391 0749 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 391      C201
 392 074f C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 393 0753 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 393      D800
 394 0759 C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 394      C400
GAS LISTING /tmp/cc2s6cHB.s 			page 13


 395 075f C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 395      C310
 396 0765 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 396      00000000 
 397 076d C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 397      00000000 
 398 0775 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 398      3E
 399 077a C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 399      CA01
 400 0780 C5FD2856 		vmovapd	96(%rsi), %ymm2
 400      60
 401 0785 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 401      C0
 402 078a C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 403 078e C5FD2842 		vmovapd	-96(%rdx), %ymm0
 403      A0
 404 0793 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 405 0797 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 405      00000000 
 406 079f C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 407 07a3 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 408 07a7 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 409 07ab C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 410 07af C5FD2982 		vmovapd	%ymm0, -832(%rdx)
 410      C0FCFFFF 
 411 07b7 4839CA   		cmpq	%rcx, %rdx
 412 07ba 0F856DFD 		jne	.L15
 412      FFFF
 413 07c0 C5FD282D 		vmovapd	.LC27(%rip), %ymm5
 413      00000000 
 414 07c8 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 415 07cc C5FD281D 		vmovapd	.LC28(%rip), %ymm3
 415      00000000 
 416 07d4 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 416      C0
 417 07d9 C5D55984 		vmulpd	832(%rsp), %ymm5, %ymm0
 417      24400300 
 417      00
 418 07e2 4889FE   		movq	%rdi, %rsi
 419 07e5 C57D282D 		vmovapd	.LC20(%rip), %ymm13
 419      00000000 
 420 07ed 4889C2   		movq	%rax, %rdx
 421 07f0 C5E5598C 		vmulpd	1216(%rsp), %ymm3, %ymm1
 421      24C00400 
 421      00
 422 07f9 C5E55994 		vmulpd	1248(%rsp), %ymm3, %ymm2
 422      24E00400 
 422      00
 423 0802 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 424 0806 C5FD2884 		vmovapd	1984(%rsp), %ymm0
 424      24C00700 
 424      00
 425 080f C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 426 0813 C5F5588C 		vaddpd	1728(%rsp), %ymm1, %ymm1
 426      24C00600 
 426      00
GAS LISTING /tmp/cc2s6cHB.s 			page 14


 427 081c C5FD298C 		vmovapd	%ymm1, 1600(%rsp)
 427      24400600 
 427      00
 428 0825 C5D5598C 		vmulpd	864(%rsp), %ymm5, %ymm1
 428      24600300 
 428      00
 429 082e C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 430 0832 C5E55994 		vmulpd	1312(%rsp), %ymm3, %ymm2
 430      24200500 
 430      00
 431 083b C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 432 083f C5FD5905 		vmulpd	.LC25(%rip), %ymm0, %ymm0
 432      00000000 
 433 0847 C5F5588C 		vaddpd	1760(%rsp), %ymm1, %ymm1
 433      24E00600 
 433      00
 434 0850 C5FD5884 		vaddpd	1856(%rsp), %ymm0, %ymm0
 434      24400700 
 434      00
 435 0859 C5FD298C 		vmovapd	%ymm1, 1632(%rsp)
 435      24600600 
 435      00
 436 0862 C5E5598C 		vmulpd	1280(%rsp), %ymm3, %ymm1
 436      24000500 
 436      00
 437 086b C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 437      24800700 
 437      00
 438 0874 C5D55984 		vmulpd	896(%rsp), %ymm5, %ymm0
 438      24800300 
 438      00
 439 087d C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 440 0881 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 440      24E00700 
 440      00
 441 088a C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 442 088e C5F5588C 		vaddpd	1792(%rsp), %ymm1, %ymm1
 442      24000700 
 442      00
 443 0897 C5FD298C 		vmovapd	%ymm1, 1664(%rsp)
 443      24800600 
 443      00
 444 08a0 C5D5598C 		vmulpd	928(%rsp), %ymm5, %ymm1
 444      24A00300 
 444      00
 445 08a9 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 446 08ad C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 447 08b1 C5FD5905 		vmulpd	.LC25(%rip), %ymm0, %ymm0
 447      00000000 
 448 08b9 C5F5588C 		vaddpd	1824(%rsp), %ymm1, %ymm1
 448      24200700 
 448      00
 449 08c2 C5FD5884 		vaddpd	1888(%rsp), %ymm0, %ymm0
 449      24600700 
 449      00
 450 08cb C5FD298C 		vmovapd	%ymm1, 1696(%rsp)
 450      24A00600 
GAS LISTING /tmp/cc2s6cHB.s 			page 15


 450      00
 451 08d4 C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 451      24A00700 
 451      00
 452              	.L17:
 453 08dd C5FD2802 		vmovapd	(%rdx), %ymm0
 454 08e1 4883C240 		addq	$64, %rdx
 455 08e5 4883C620 		addq	$32, %rsi
 456 08e9 C5FD2825 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 456      00000000 
 457 08f1 C5FD2982 		vmovapd	%ymm0, -352(%rdx)
 457      A0FEFFFF 
 458 08f9 C5DD5456 		vandpd	-32(%rsi), %ymm4, %ymm2
 458      E0
 459 08fe C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 459      00000000 
 460 0906 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 460      C008
 461 090c C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 461      00000000 
 462 0914 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 462      C808
 463 091a C5FD118C 		vmovupd	%ymm1, 256(%rsp)
 463      24000100 
 463      00
 464 0923 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 464      00000000 
 465 092b C5FB10A4 		vmovsd	256(%rsp), %xmm4
 465      24000100 
 465      00
 466 0934 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 466      00000000 
 467 093c C4E1FB2C 		vcvttsd2siq	%xmm4, %rbx
 467      DC
 468 0941 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 469 0945 C5FB10AC 		vmovsd	264(%rsp), %xmm5
 469      24080100 
 469      00
 470 094e C5FB10B4 		vmovsd	272(%rsp), %xmm6
 470      24100100 
 470      00
 471 0957 C461FB2C 		vcvttsd2siq	%xmm5, %r8
 471      C5
 472 095c C57B108C 		vmovsd	280(%rsp), %xmm9
 472      24180100 
 472      00
 473 0965 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 474 0969 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 475 096d 48899C24 		movq	%rbx, 128(%rsp)
 475      80000000 
 476 0975 C4E1FB2C 		vcvttsd2siq	%xmm6, %rbx
 476      DE
 477 097a C5FA7EAC 		vmovq	128(%rsp), %xmm5
 477      24800000 
 477      00
 478 0983 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm4
 478      E001
GAS LISTING /tmp/cc2s6cHB.s 			page 16


 479 0989 C441FB2C 		vcvttsd2siq	%xmm9, %r8
 479      C1
 480 098e C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 481 0992 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 481      00000000 
 482 099a C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 483 099e 48899C24 		movq	%rbx, 128(%rsp)
 483      80000000 
 484 09a6 C5FA7EB4 		vmovq	128(%rsp), %xmm6
 484      24800000 
 484      00
 485 09af C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 485      00000000 
 486 09b7 C4C3C922 		vpinsrq	$1, %r8, %xmm6, %xmm5
 486      E801
 487 09bd C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 487      00000000 
 488 09c5 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 489 09c9 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 489      00000000 
 490 09d1 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 490      00000000 
 491 09d9 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 492 09dd C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 492      00000000 
 493 09e5 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 493      D1
 494 09ea C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 494      00000000 
 495 09f2 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 496 09f6 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 496      00000000 
 497 09fe C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 498 0a02 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 498      CA
 499 0a07 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 499      00000000 
 500 0a0f C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 500      00000000 
 501 0a17 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 501      F2
 502 0a1c C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 502      00000000 
 503 0a24 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 503      00000000 
 504 0a2c C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 505 0a30 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 506 0a34 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 507 0a38 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 507      00000000 
 508 0a40 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 509 0a44 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 509      C9
 510 0a49 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 510      D201
 511 0a4f C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 512 0a53 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
GAS LISTING /tmp/cc2s6cHB.s 			page 17


 513 0a57 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 513      F201
 514 0a5d C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 514      00000000 
 515 0a65 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 515      0D000000 
 515      00
 516 0a6e C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 517 0a72 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 517      00000000 
 518 0a7a C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 518      00000000 
 519 0a82 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 519      15000000 
 519      00
 520 0a8b C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 520      C7
 521 0a90 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 521      00000000 
 522 0a98 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 522      CF
 523 0a9d C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 523      00000000 
 524 0aa5 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 524      00000000 
 525 0aad C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 525      C801
 526 0ab3 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 526      05000000 
 526      00
 527 0abc C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 527      C801
 528 0ac2 C5F928C2 		vmovapd	%xmm2, %xmm0
 529 0ac6 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 529      00000000 
 530 0ace C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 530      00000000 
 531 0ad6 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 531      01
 532 0adb C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 532      00000000 
 533 0ae3 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 533      3E
 534 0ae8 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 534      05000000 
 534      00
 535 0af1 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 535      00000000 
 536 0af9 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 536      C201
 537 0aff C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 538 0b03 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 538      D800
 539 0b09 C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 539      C500
 540 0b0f C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 540      C310
GAS LISTING /tmp/cc2s6cHB.s 			page 18


 541 0b15 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 541      00000000 
 542 0b1d C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 542      00000000 
 543 0b25 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 543      3E
 544 0b2a C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 544      CA01
 545 0b30 C5FD2856 		vmovapd	96(%rsi), %ymm2
 545      60
 546 0b35 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 546      C0
 547 0b3a C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 548 0b3e C5FD2842 		vmovapd	-96(%rdx), %ymm0
 548      A0
 549 0b43 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 550 0b47 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 550      00000000 
 551 0b4f C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 552 0b53 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 553 0b57 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 554 0b5b C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 555 0b5f C5FD2982 		vmovapd	%ymm0, -320(%rdx)
 555      C0FEFFFF 
 556 0b67 4839D1   		cmpq	%rdx, %rcx
 557 0b6a 0F856DFD 		jne	.L17
 557      FFFF
 558 0b70 C5FD281D 		vmovapd	.LC30(%rip), %ymm3
 558      00000000 
 559 0b78 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 560 0b7c C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 560      00000000 
 561 0b84 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 561      C0
 562 0b89 C5E5598C 		vmulpd	832(%rsp), %ymm3, %ymm1
 562      24400300 
 562      00
 563 0b92 4889FE   		movq	%rdi, %rsi
 564 0b95 C5FD282D 		vmovapd	.LC29(%rip), %ymm5
 564      00000000 
 565 0b9d 4889C2   		movq	%rax, %rdx
 566 0ba0 C5CD5994 		vmulpd	1216(%rsp), %ymm6, %ymm2
 566      24C00400 
 566      00
 567 0ba9 C5FD28E5 		vmovapd	%ymm5, %ymm4
 568 0bad C57D2835 		vmovapd	.LC20(%rip), %ymm14
 568      00000000 
 569 0bb5 C5D55984 		vmulpd	1344(%rsp), %ymm5, %ymm0
 569      24400500 
 569      00
 570 0bbe C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 571 0bc2 C5E55994 		vmulpd	864(%rsp), %ymm3, %ymm2
 571      24600300 
 571      00
 572 0bcb C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 573 0bcf C5FD2884 		vmovapd	1984(%rsp), %ymm0
 573      24C00700 
GAS LISTING /tmp/cc2s6cHB.s 			page 19


 573      00
 574 0bd8 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 575 0bdc C5F5588C 		vaddpd	1728(%rsp), %ymm1, %ymm1
 575      24C00600 
 575      00
 576 0be5 C5FD298C 		vmovapd	%ymm1, 1600(%rsp)
 576      24400600 
 576      00
 577 0bee C5D5598C 		vmulpd	1376(%rsp), %ymm5, %ymm1
 577      24600500 
 577      00
 578 0bf7 C5FD28EB 		vmovapd	%ymm3, %ymm5
 579 0bfb C5FD289C 		vmovapd	1248(%rsp), %ymm3
 579      24E00400 
 579      00
 580 0c04 C5E559DE 		vmulpd	%ymm6, %ymm3, %ymm3
 581 0c08 C5FD28F4 		vmovapd	%ymm4, %ymm6
 582 0c0c C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 583 0c10 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 584 0c14 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 585 0c18 C5FD5905 		vmulpd	.LC31(%rip), %ymm0, %ymm0
 585      00000000 
 586 0c20 C5F5588C 		vaddpd	1760(%rsp), %ymm1, %ymm1
 586      24E00600 
 586      00
 587 0c29 C5FD5884 		vaddpd	1856(%rsp), %ymm0, %ymm0
 587      24400700 
 587      00
 588 0c32 C5FD298C 		vmovapd	%ymm1, 1632(%rsp)
 588      24600600 
 588      00
 589 0c3b C5D5598C 		vmulpd	896(%rsp), %ymm5, %ymm1
 589      24800300 
 589      00
 590 0c44 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 590      24800700 
 590      00
 591 0c4d C5DD5984 		vmulpd	1408(%rsp), %ymm4, %ymm0
 591      24800500 
 591      00
 592 0c56 C5FD28E5 		vmovapd	%ymm5, %ymm4
 593 0c5a C5FD282D 		vmovapd	.LC25(%rip), %ymm5
 593      00000000 
 594 0c62 C5D55994 		vmulpd	1280(%rsp), %ymm5, %ymm2
 594      24000500 
 594      00
 595 0c6b C5D5599C 		vmulpd	1312(%rsp), %ymm5, %ymm3
 595      24200500 
 595      00
 596 0c74 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 597 0c78 C5DD5994 		vmulpd	928(%rsp), %ymm4, %ymm2
 597      24A00300 
 597      00
 598 0c81 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 599 0c85 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 599      24E00700 
 599      00
GAS LISTING /tmp/cc2s6cHB.s 			page 20


 600 0c8e C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 601 0c92 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 602 0c96 C5F5588C 		vaddpd	1792(%rsp), %ymm1, %ymm1
 602      24000700 
 602      00
 603 0c9f C5FD298C 		vmovapd	%ymm1, 1664(%rsp)
 603      24800600 
 603      00
 604 0ca8 C5CD598C 		vmulpd	1440(%rsp), %ymm6, %ymm1
 604      24A00500 
 604      00
 605 0cb1 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 606 0cb5 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 607 0cb9 C5FD5905 		vmulpd	.LC31(%rip), %ymm0, %ymm0
 607      00000000 
 608 0cc1 C5F5588C 		vaddpd	1824(%rsp), %ymm1, %ymm1
 608      24200700 
 608      00
 609 0cca C5FD5884 		vaddpd	1888(%rsp), %ymm0, %ymm0
 609      24600700 
 609      00
 610 0cd3 C5FD298C 		vmovapd	%ymm1, 1696(%rsp)
 610      24A00600 
 610      00
 611 0cdc C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 611      24A00700 
 611      00
 612              	.L19:
 613 0ce5 C5FD2802 		vmovapd	(%rdx), %ymm0
 614 0ce9 4883C240 		addq	$64, %rdx
 615 0ced 4883C620 		addq	$32, %rsi
 616 0cf1 C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 616      00000000 
 617 0cf9 C5FD2982 		vmovapd	%ymm0, -224(%rdx)
 617      20FFFFFF 
 618 0d01 C5D55456 		vandpd	-32(%rsi), %ymm5, %ymm2
 618      E0
 619 0d06 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 619      00000000 
 620 0d0e C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 620      C008
 621 0d14 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 621      C808
 622 0d1a C5FD118C 		vmovupd	%ymm1, 288(%rsp)
 622      24200100 
 622      00
 623 0d23 C57B10AC 		vmovsd	288(%rsp), %xmm13
 623      24200100 
 623      00
 624 0d2c C57B10BC 		vmovsd	296(%rsp), %xmm15
 624      24280100 
 624      00
 625 0d35 C4C1FB2C 		vcvttsd2siq	%xmm13, %rbx
 625      DD
 626 0d3a C441FB2C 		vcvttsd2siq	%xmm15, %r8
 626      C7
 627 0d3f C5FB109C 		vmovsd	312(%rsp), %xmm3
GAS LISTING /tmp/cc2s6cHB.s 			page 21


 627      24380100 
 627      00
 628 0d48 C5FB108C 		vmovsd	304(%rsp), %xmm1
 628      24300100 
 628      00
 629 0d51 48899C24 		movq	%rbx, 128(%rsp)
 629      80000000 
 630 0d59 C4E1FB2C 		vcvttsd2siq	%xmm1, %rbx
 630      D9
 631 0d5e C5FA7EB4 		vmovq	128(%rsp), %xmm6
 631      24800000 
 631      00
 632 0d67 C4C3C922 		vpinsrq	$1, %r8, %xmm6, %xmm4
 632      E001
 633 0d6d C461FB2C 		vcvttsd2siq	%xmm3, %r8
 633      C3
 634 0d72 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 634      00000000 
 635 0d7a C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 635      00000000 
 636 0d82 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 636      00000000 
 637 0d8a C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 638 0d8e 48899C24 		movq	%rbx, 128(%rsp)
 638      80000000 
 639 0d96 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 639      24800000 
 639      00
 640 0d9f C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 640      E801
 641 0da5 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 642 0da9 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 643 0dad C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 644 0db1 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 644      00000000 
 645 0db9 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 646 0dbd C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 646      00000000 
 647 0dc5 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 647      00000000 
 648 0dcd C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 648      00000000 
 649 0dd5 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 650 0dd9 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 650      00000000 
 651 0de1 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 651      00000000 
 652 0de9 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 653 0ded C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 653      D1
 654 0df2 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 654      00000000 
 655 0dfa C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 656 0dfe C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 656      00000000 
 657 0e06 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 658 0e0a C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
GAS LISTING /tmp/cc2s6cHB.s 			page 22


 658      CA
 659 0e0f C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 659      00000000 
 660 0e17 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 660      00000000 
 661 0e1f C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 661      F2
 662 0e24 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 662      00000000 
 663 0e2c C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 663      00000000 
 664 0e34 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 665 0e38 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 666 0e3c C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 667 0e40 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 667      00000000 
 668 0e48 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 669 0e4c C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 669      C9
 670 0e51 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 670      D201
 671 0e57 C58D5CC0 		vsubpd	%ymm0, %ymm14, %ymm0
 672 0e5b C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 673 0e5f C4C12973 		vpsllq	$1, %xmm10, %xmm10
 673      F201
 674 0e65 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 674      00000000 
 675 0e6d C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 675      0D000000 
 675      00
 676 0e76 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 677 0e7a C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 677      00000000 
 678 0e82 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 678      00000000 
 679 0e8a C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 679      15000000 
 679      00
 680 0e93 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 680      C7
 681 0e98 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 681      00000000 
 682 0ea0 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 682      CF
 683 0ea5 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 683      00000000 
 684 0ead C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 684      00000000 
 685 0eb5 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 685      C801
 686 0ebb C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 686      05000000 
 686      00
 687 0ec4 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 687      C801
 688 0eca C5F928C2 		vmovapd	%xmm2, %xmm0
 689 0ece C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
GAS LISTING /tmp/cc2s6cHB.s 			page 23


 689      00000000 
 690 0ed6 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 690      00000000 
 691 0ede C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 691      01
 692 0ee3 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 692      00000000 
 693 0eeb C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 693      3E
 694 0ef0 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 694      05000000 
 694      00
 695 0ef9 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 695      00000000 
 696 0f01 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 696      C201
 697 0f07 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 698 0f0b C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 698      D800
 699 0f11 C4C34D4B 		vblendvpd	%ymm0, %ymm14, %ymm6, %ymm0
 699      C600
 700 0f17 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 700      C310
 701 0f1d C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 701      00000000 
 702 0f25 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 702      00000000 
 703 0f2d C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 703      3E
 704 0f32 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 704      CA01
 705 0f38 C5FD2856 		vmovapd	96(%rsi), %ymm2
 705      60
 706 0f3d C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 706      C0
 707 0f42 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 708 0f46 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 708      A0
 709 0f4b C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 710 0f4f C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 710      00000000 
 711 0f57 C58D5CDB 		vsubpd	%ymm3, %ymm14, %ymm3
 712 0f5b C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 713 0f5f C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 714 0f63 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 715 0f67 C5FD2982 		vmovapd	%ymm0, -192(%rdx)
 715      40FFFFFF 
 716 0f6f 4839D1   		cmpq	%rdx, %rcx
 717 0f72 0F856DFD 		jne	.L19
 717      FFFF
 718 0f78 C5FD2835 		vmovapd	.LC34(%rip), %ymm6
 718      00000000 
 719 0f80 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 720 0f84 C5FD2825 		vmovapd	.LC35(%rip), %ymm4
 720      00000000 
 721 0f8c C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 721      C0
GAS LISTING /tmp/cc2s6cHB.s 			page 24


 722 0f91 C5FD281D 		vmovapd	.LC33(%rip), %ymm3
 722      00000000 
 723 0f99 4889FE   		movq	%rdi, %rsi
 724 0f9c 4889C2   		movq	%rax, %rdx
 725 0f9f C5CD5994 		vmulpd	832(%rsp), %ymm6, %ymm2
 725      24400300 
 725      00
 726 0fa8 C5FD282D 		vmovapd	.LC32(%rip), %ymm5
 726      00000000 
 727 0fb0 C5E5598C 		vmulpd	1344(%rsp), %ymm3, %ymm1
 727      24400500 
 727      00
 728 0fb9 C5DD599C 		vmulpd	1216(%rsp), %ymm4, %ymm3
 728      24C00400 
 728      00
 729 0fc2 C5D55984 		vmulpd	1472(%rsp), %ymm5, %ymm0
 729      24C00500 
 729      00
 730 0fcb C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 731 0fcf C5FD281D 		vmovapd	.LC33(%rip), %ymm3
 731      00000000 
 732 0fd7 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 733 0fdb C5CD5994 		vmulpd	864(%rsp), %ymm6, %ymm2
 733      24600300 
 733      00
 734 0fe4 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 735 0fe8 C5E5598C 		vmulpd	1376(%rsp), %ymm3, %ymm1
 735      24600500 
 735      00
 736 0ff1 C5DD599C 		vmulpd	1248(%rsp), %ymm4, %ymm3
 736      24E00400 
 736      00
 737 0ffa C5FD5984 		vmulpd	1984(%rsp), %ymm0, %ymm0
 737      24C00700 
 737      00
 738 1003 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 739 1007 C5FD281D 		vmovapd	.LC33(%rip), %ymm3
 739      00000000 
 740 100f C5FD5884 		vaddpd	1728(%rsp), %ymm0, %ymm0
 740      24C00600 
 740      00
 741 1018 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 742 101c C5CD5994 		vmulpd	896(%rsp), %ymm6, %ymm2
 742      24800300 
 742      00
 743 1025 C5FD2984 		vmovapd	%ymm0, 1600(%rsp)
 743      24400600 
 743      00
 744 102e C5D55984 		vmulpd	1504(%rsp), %ymm5, %ymm0
 744      24E00500 
 744      00
 745 1037 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 746 103b C5E5598C 		vmulpd	1408(%rsp), %ymm3, %ymm1
 746      24800500 
 746      00
 747 1044 C5DD599C 		vmulpd	1280(%rsp), %ymm4, %ymm3
 747      24000500 
GAS LISTING /tmp/cc2s6cHB.s 			page 25


 747      00
 748 104d C5FD5984 		vmulpd	1984(%rsp), %ymm0, %ymm0
 748      24C00700 
 748      00
 749 1056 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 750 105a C5FD281D 		vmovapd	.LC33(%rip), %ymm3
 750      00000000 
 751 1062 C5FD5884 		vaddpd	1760(%rsp), %ymm0, %ymm0
 751      24E00600 
 751      00
 752 106b C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 753 106f C5CD5994 		vmulpd	928(%rsp), %ymm6, %ymm2
 753      24A00300 
 753      00
 754 1078 C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 754      24600600 
 754      00
 755 1081 C5FD2884 		vmovapd	1984(%rsp), %ymm0
 755      24C00700 
 755      00
 756 108a C5FD5884 		vaddpd	1856(%rsp), %ymm0, %ymm0
 756      24400700 
 756      00
 757 1093 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 757      24800700 
 757      00
 758 109c C5D55984 		vmulpd	1536(%rsp), %ymm5, %ymm0
 758      24000600 
 758      00
 759 10a5 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 760 10a9 C5E5598C 		vmulpd	1440(%rsp), %ymm3, %ymm1
 760      24A00500 
 760      00
 761 10b2 C5DD599C 		vmulpd	1312(%rsp), %ymm4, %ymm3
 761      24200500 
 761      00
 762 10bb C5FD5984 		vmulpd	2016(%rsp), %ymm0, %ymm0
 762      24E00700 
 762      00
 763 10c4 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 764 10c8 C5FD5884 		vaddpd	1792(%rsp), %ymm0, %ymm0
 764      24000700 
 764      00
 765 10d1 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 766 10d5 C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 766      24800600 
 766      00
 767 10de C5D55984 		vmulpd	1568(%rsp), %ymm5, %ymm0
 767      24200600 
 767      00
 768 10e7 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 769 10eb C5FD5984 		vmulpd	2016(%rsp), %ymm0, %ymm0
 769      24E00700 
 769      00
 770 10f4 C5FD5884 		vaddpd	1824(%rsp), %ymm0, %ymm0
 770      24200700 
 770      00
GAS LISTING /tmp/cc2s6cHB.s 			page 26


 771 10fd C5FD2984 		vmovapd	%ymm0, 1696(%rsp)
 771      24A00600 
 771      00
 772 1106 C5FD2884 		vmovapd	2016(%rsp), %ymm0
 772      24E00700 
 772      00
 773 110f C57D283D 		vmovapd	.LC20(%rip), %ymm15
 773      00000000 
 774 1117 C5FD5884 		vaddpd	1888(%rsp), %ymm0, %ymm0
 774      24600700 
 774      00
 775 1120 C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 775      24A00700 
 775      00
 776              	.L21:
 777 1129 C5FD2802 		vmovapd	(%rdx), %ymm0
 778 112d 4883C240 		addq	$64, %rdx
 779 1131 4883C620 		addq	$32, %rsi
 780 1135 C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 780      00000000 
 781 113d C5FD2982 		vmovapd	%ymm0, -608(%rdx)
 781      A0FDFFFF 
 782 1145 C5E55456 		vandpd	-32(%rsi), %ymm3, %ymm2
 782      E0
 783 114a C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 783      00000000 
 784 1152 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 784      C008
 785 1158 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 785      00000000 
 786 1160 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 786      C808
 787 1166 C5FD118C 		vmovupd	%ymm1, 320(%rsp)
 787      24400100 
 787      00
 788 116f C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 788      00000000 
 789 1177 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 789      00000000 
 790 117f C57B108C 		vmovsd	320(%rsp), %xmm9
 790      24400100 
 790      00
 791 1188 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 792 118c C57B1094 		vmovsd	328(%rsp), %xmm10
 792      24480100 
 792      00
 793 1195 C4C1FB2C 		vcvttsd2siq	%xmm9, %rbx
 793      D9
 794 119a C441FB2C 		vcvttsd2siq	%xmm10, %r8
 794      C2
 795 119f C57B109C 		vmovsd	336(%rsp), %xmm11
 795      24500100 
 795      00
 796 11a8 C57B10A4 		vmovsd	344(%rsp), %xmm12
 796      24580100 
 796      00
 797 11b1 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
GAS LISTING /tmp/cc2s6cHB.s 			page 27


 798 11b5 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 799 11b9 48899C24 		movq	%rbx, 128(%rsp)
 799      80000000 
 800 11c1 C4C1FB2C 		vcvttsd2siq	%xmm11, %rbx
 800      DB
 801 11c6 C5FA7EB4 		vmovq	128(%rsp), %xmm6
 801      24800000 
 801      00
 802 11cf C4C3C922 		vpinsrq	$1, %r8, %xmm6, %xmm4
 802      E001
 803 11d5 C441FB2C 		vcvttsd2siq	%xmm12, %r8
 803      C4
 804 11da C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 805 11de C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 805      00000000 
 806 11e6 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 807 11ea 48899C24 		movq	%rbx, 128(%rsp)
 807      80000000 
 808 11f2 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 808      00000000 
 809 11fa C5FA7EAC 		vmovq	128(%rsp), %xmm5
 809      24800000 
 809      00
 810 1203 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 810      00000000 
 811 120b C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 811      00000000 
 812 1213 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 813 1217 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 813      E801
 814 121d C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 814      00000000 
 815 1225 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 815      00000000 
 816 122d C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 817 1231 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 817      D1
 818 1236 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 818      00000000 
 819 123e C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 820 1242 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 820      00000000 
 821 124a C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 822 124e C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 822      CA
 823 1253 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 823      00000000 
 824 125b C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 824      00000000 
 825 1263 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 825      F2
 826 1268 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 826      00000000 
 827 1270 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 827      00000000 
 828 1278 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 829 127c C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
GAS LISTING /tmp/cc2s6cHB.s 			page 28


 830 1280 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 831 1284 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 831      00000000 
 832 128c C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 833 1290 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 833      C9
 834 1295 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 834      D201
 835 129b C5855CC0 		vsubpd	%ymm0, %ymm15, %ymm0
 836 129f C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 837 12a3 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 837      F201
 838 12a9 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 838      00000000 
 839 12b1 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 839      0D000000 
 839      00
 840 12ba C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 841 12be C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 841      00000000 
 842 12c6 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 842      00000000 
 843 12ce C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 843      15000000 
 843      00
 844 12d7 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 844      C7
 845 12dc C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 845      00000000 
 846 12e4 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 846      CF
 847 12e9 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 847      00000000 
 848 12f1 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 848      00000000 
 849 12f9 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 849      C801
 850 12ff C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 850      05000000 
 850      00
 851 1308 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 851      C801
 852 130e C5F928C2 		vmovapd	%xmm2, %xmm0
 853 1312 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 853      00000000 
 854 131a C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 854      00000000 
 855 1322 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 855      01
 856 1327 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 856      00000000 
 857 132f C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 857      3E
 858 1334 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 858      05000000 
 858      00
 859 133d C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
GAS LISTING /tmp/cc2s6cHB.s 			page 29


 859      00000000 
 860 1345 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 860      C201
 861 134b C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 862 134f C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 862      D800
 863 1355 C4C34D4B 		vblendvpd	%ymm0, %ymm15, %ymm6, %ymm0
 863      C700
 864 135b C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 864      C310
 865 1361 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 865      00000000 
 866 1369 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 866      00000000 
 867 1371 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 867      3E
 868 1376 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 868      CA01
 869 137c C5FD2856 		vmovapd	96(%rsi), %ymm2
 869      60
 870 1381 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 870      C0
 871 1386 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 872 138a C5FD2842 		vmovapd	-96(%rdx), %ymm0
 872      A0
 873 138f C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 874 1393 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 874      00000000 
 875 139b C5855CDB 		vsubpd	%ymm3, %ymm15, %ymm3
 876 139f C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 877 13a3 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 878 13a7 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 879 13ab C5FD2982 		vmovapd	%ymm0, -576(%rdx)
 879      C0FDFFFF 
 880 13b3 4839D1   		cmpq	%rdx, %rcx
 881 13b6 0F856DFD 		jne	.L21
 881      FFFF
 882 13bc C5FD282D 		vmovapd	.LC36(%rip), %ymm5
 882      00000000 
 883 13c4 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 884 13c8 C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 884      00000000 
 885 13d0 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 885      C0
 886 13d5 C5D55984 		vmulpd	1088(%rsp), %ymm5, %ymm0
 886      24400400 
 886      00
 887 13de 4889FA   		movq	%rdi, %rdx
 888 13e1 C5FD282D 		vmovapd	.LC40(%rip), %ymm5
 888      00000000 
 889 13e9 C5FD2825 		vmovapd	.LC39(%rip), %ymm4
 889      00000000 
 890 13f1 C5E5598C 		vmulpd	1472(%rsp), %ymm3, %ymm1
 890      24C00500 
 890      00
 891 13fa C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 891      00000000 
GAS LISTING /tmp/cc2s6cHB.s 			page 30


 892 1402 C5DD599C 		vmulpd	832(%rsp), %ymm4, %ymm3
 892      24400300 
 892      00
 893 140b C5D559A4 		vmulpd	1216(%rsp), %ymm5, %ymm4
 893      24C00400 
 893      00
 894 1414 C5CD5994 		vmulpd	1344(%rsp), %ymm6, %ymm2
 894      24400500 
 894      00
 895 141d C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 896 1421 C5FD2825 		vmovapd	.LC39(%rip), %ymm4
 896      00000000 
 897 1429 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 898 142d C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 898      00000000 
 899 1435 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 900 1439 C5FD2815 		vmovapd	.LC36(%rip), %ymm2
 900      00000000 
 901 1441 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 902 1445 C5E5598C 		vmulpd	1504(%rsp), %ymm3, %ymm1
 902      24E00500 
 902      00
 903 144e C5DD599C 		vmulpd	864(%rsp), %ymm4, %ymm3
 903      24600300 
 903      00
 904 1457 C5FD5984 		vmulpd	1984(%rsp), %ymm0, %ymm0
 904      24C00700 
 904      00
 905 1460 C5D559A4 		vmulpd	1248(%rsp), %ymm5, %ymm4
 905      24E00400 
 905      00
 906 1469 C5FD282D 		vmovapd	.LC39(%rip), %ymm5
 906      00000000 
 907 1471 C5FD5884 		vaddpd	1728(%rsp), %ymm0, %ymm0
 907      24C00600 
 907      00
 908 147a C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 909 147e C5FD2825 		vmovapd	.LC38(%rip), %ymm4
 909      00000000 
 910 1486 C5FD2984 		vmovapd	%ymm0, 1600(%rsp)
 910      24400600 
 910      00
 911 148f C5ED5984 		vmulpd	1120(%rsp), %ymm2, %ymm0
 911      24600400 
 911      00
 912 1498 C5CD5994 		vmulpd	1376(%rsp), %ymm6, %ymm2
 912      24600500 
 912      00
 913 14a1 C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 913      00000000 
 914 14a9 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 915 14ad C5FD281D 		vmovapd	.LC36(%rip), %ymm3
 915      00000000 
 916 14b5 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 917 14b9 C5FD2815 		vmovapd	.LC41(%rip), %ymm2
 917      00000000 
 918 14c1 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
GAS LISTING /tmp/cc2s6cHB.s 			page 31


 919 14c5 C5CD598C 		vmulpd	1536(%rsp), %ymm6, %ymm1
 919      24000600 
 919      00
 920 14ce C5FD2835 		vmovapd	.LC40(%rip), %ymm6
 920      00000000 
 921 14d6 C5FD5984 		vmulpd	1984(%rsp), %ymm0, %ymm0
 921      24C00700 
 921      00
 922 14df C5FD5884 		vaddpd	1760(%rsp), %ymm0, %ymm0
 922      24E00600 
 922      00
 923 14e8 C5FD2984 		vmovapd	%ymm0, 1632(%rsp)
 923      24600600 
 923      00
 924 14f1 C5ED5984 		vmulpd	1984(%rsp), %ymm2, %ymm0
 924      24C00700 
 924      00
 925 14fa C5DD5994 		vmulpd	1408(%rsp), %ymm4, %ymm2
 925      24800500 
 925      00
 926 1503 C5CD59A4 		vmulpd	1280(%rsp), %ymm6, %ymm4
 926      24000500 
 926      00
 927 150c C5FD5884 		vaddpd	1856(%rsp), %ymm0, %ymm0
 927      24400700 
 927      00
 928 1515 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 928      24800700 
 928      00
 929 151e C5E55984 		vmulpd	1152(%rsp), %ymm3, %ymm0
 929      24800400 
 929      00
 930 1527 C5D5599C 		vmulpd	896(%rsp), %ymm5, %ymm3
 930      24800300 
 930      00
 931 1530 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 932 1534 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 933 1538 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 934 153c C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 935 1540 C5FD5984 		vmulpd	2016(%rsp), %ymm0, %ymm0
 935      24E00700 
 935      00
 936 1549 C5FD5884 		vaddpd	1792(%rsp), %ymm0, %ymm0
 936      24000700 
 936      00
 937 1552 C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 937      24800600 
 937      00
 938 155b C5FD2815 		vmovapd	.LC36(%rip), %ymm2
 938      00000000 
 939 1563 C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 939      00000000 
 940 156b C5FD2825 		vmovapd	.LC38(%rip), %ymm4
 940      00000000 
 941 1573 C5ED5984 		vmulpd	1184(%rsp), %ymm2, %ymm0
 941      24A00400 
 941      00
GAS LISTING /tmp/cc2s6cHB.s 			page 32


 942 157c C57D2825 		vmovapd	.LC20(%rip), %ymm12
 942      00000000 
 943 1584 C5E5598C 		vmulpd	1568(%rsp), %ymm3, %ymm1
 943      24200600 
 943      00
 944 158d C5DD5994 		vmulpd	1440(%rsp), %ymm4, %ymm2
 944      24A00500 
 944      00
 945 1596 C5D5599C 		vmulpd	928(%rsp), %ymm5, %ymm3
 945      24A00300 
 945      00
 946 159f C5CD59A4 		vmulpd	1312(%rsp), %ymm6, %ymm4
 946      24200500 
 946      00
 947 15a8 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 948 15ac C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 949 15b0 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 950 15b4 C5FD2815 		vmovapd	.LC41(%rip), %ymm2
 950      00000000 
 951 15bc C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 952 15c0 C5FD5984 		vmulpd	2016(%rsp), %ymm0, %ymm0
 952      24E00700 
 952      00
 953 15c9 C5FD5884 		vaddpd	1824(%rsp), %ymm0, %ymm0
 953      24200700 
 953      00
 954 15d2 C5FD2984 		vmovapd	%ymm0, 1696(%rsp)
 954      24A00600 
 954      00
 955 15db C5ED5984 		vmulpd	2016(%rsp), %ymm2, %ymm0
 955      24E00700 
 955      00
 956 15e4 C5FD5884 		vaddpd	1888(%rsp), %ymm0, %ymm0
 956      24600700 
 956      00
 957 15ed C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 957      24A00700 
 957      00
 958              	.L23:
 959 15f6 C5FD2800 		vmovapd	(%rax), %ymm0
 960 15fa 4883C040 		addq	$64, %rax
 961 15fe 4883C220 		addq	$32, %rdx
 962 1602 C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 962      00000000 
 963 160a C5FD2980 		vmovapd	%ymm0, -736(%rax)
 963      20FDFFFF 
 964 1612 C5E55452 		vandpd	-32(%rdx), %ymm3, %ymm2
 964      E0
 965 1617 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 965      00000000 
 966 161f C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 966      C008
 967 1625 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 967      C808
 968 162b C5FD118C 		vmovupd	%ymm1, 352(%rsp)
 968      24600100 
 968      00
GAS LISTING /tmp/cc2s6cHB.s 			page 33


 969 1634 C5FB109C 		vmovsd	360(%rsp), %xmm3
 969      24680100 
 969      00
 970 163d C5FB108C 		vmovsd	352(%rsp), %xmm1
 970      24600100 
 970      00
 971 1646 C4E1FB2C 		vcvttsd2siq	%xmm3, %rsi
 971      F3
 972 164b C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 972      00000000 
 973 1653 C4E1FB2C 		vcvttsd2siq	%xmm1, %rdi
 973      F9
 974 1658 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 974      00000000 
 975 1660 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 975      00000000 
 976 1668 C5FB10AC 		vmovsd	368(%rsp), %xmm5
 976      24700100 
 976      00
 977 1671 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 978 1675 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 979 1679 4889BC24 		movq	%rdi, 128(%rsp)
 979      80000000 
 980 1681 C5FA7EB4 		vmovq	128(%rsp), %xmm6
 980      24800000 
 980      00
 981 168a C4E3C922 		vpinsrq	$1, %rsi, %xmm6, %xmm4
 981      E601
 982 1690 C4E1FB2C 		vcvttsd2siq	%xmm5, %rdi
 982      FD
 983 1695 C5FB10B4 		vmovsd	376(%rsp), %xmm6
 983      24780100 
 983      00
 984 169e C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 985 16a2 C4E1FB2C 		vcvttsd2siq	%xmm6, %rsi
 985      F6
 986 16a7 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 987 16ab 4889BC24 		movq	%rdi, 128(%rsp)
 987      80000000 
 988 16b3 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 988      24800000 
 988      00
 989 16bc C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 989      00000000 
 990 16c4 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 991 16c8 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 991      00000000 
 992 16d0 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 992      00000000 
 993 16d8 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 993      00000000 
 994 16e0 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 995 16e4 C4E3D122 		vpinsrq	$1, %rsi, %xmm5, %xmm5
 995      EE01
 996 16ea C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 996      00000000 
 997 16f2 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
GAS LISTING /tmp/cc2s6cHB.s 			page 34


 997      00000000 
 998 16fa C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 999 16fe C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 999      D1
 1000 1703 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 1000      00000000 
 1001 170b C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 1002 170f C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 1002      00000000 
 1003 1717 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1004 171b C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1004      CA
 1005 1720 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 1005      00000000 
 1006 1728 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 1006      00000000 
 1007 1730 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 1007      F2
 1008 1735 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 1008      00000000 
 1009 173d C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 1009      00000000 
 1010 1745 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1011 1749 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 1012 174d C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 1013 1751 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 1013      00000000 
 1014 1759 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 1015 175d C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 1015      C9
 1016 1762 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 1016      D201
 1017 1768 C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 1018 176c C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 1019 1770 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 1019      F201
 1020 1776 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 1020      00000000 
 1021 177e C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 1021      0D000000 
 1021      00
 1022 1787 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 1023 178b C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 1023      00000000 
 1024 1793 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 1024      00000000 
 1025 179b C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 1025      15000000 
 1025      00
 1026 17a4 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 1026      C7
 1027 17a9 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1027      00000000 
 1028 17b1 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 1028      CF
 1029 17b6 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1029      00000000 
GAS LISTING /tmp/cc2s6cHB.s 			page 35


 1030 17be C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 1030      00000000 
 1031 17c6 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 1031      C801
 1032 17cc C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 1032      05000000 
 1032      00
 1033 17d5 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 1033      C801
 1034 17db C5F928C2 		vmovapd	%xmm2, %xmm0
 1035 17df C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 1035      00000000 
 1036 17e7 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 1036      00000000 
 1037 17ef C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1037      01
 1038 17f4 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1038      00000000 
 1039 17fc C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 1039      3E
 1040 1801 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1040      05000000 
 1040      00
 1041 180a C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1041      00000000 
 1042 1812 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 1042      C201
 1043 1818 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 1044 181c C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 1044      D800
 1045 1822 C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 1045      C400
 1046 1828 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 1046      C310
 1047 182e C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 1047      00000000 
 1048 1836 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 1048      00000000 
 1049 183e C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 1049      3E
 1050 1843 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 1050      CA01
 1051 1849 C5FD2852 		vmovapd	96(%rdx), %ymm2
 1051      60
 1052 184e C5ED5950 		vmulpd	-64(%rax), %ymm2, %ymm2
 1052      C0
 1053 1853 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 1054 1857 C5FD2840 		vmovapd	-96(%rax), %ymm0
 1054      A0
 1055 185c C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1056 1860 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 1056      00000000 
 1057 1868 C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 1058 186c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 1059 1870 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 1060 1874 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1061 1878 C5FD2980 		vmovapd	%ymm0, -704(%rax)
GAS LISTING /tmp/cc2s6cHB.s 			page 36


 1061      40FDFFFF 
 1062 1880 4839C1   		cmpq	%rax, %rcx
 1063 1883 0F856DFD 		jne	.L23
 1063      FFFF
 1064 1889 488D8424 		leaq	832(%rsp), %rax
 1064      40030000 
 1065 1891 488DBC24 		leaq	960(%rsp), %rdi
 1065      C0030000 
 1066 1899 BE010000 		movl	$1, %esi
 1066      00
 1067 189e 4889C1   		movq	%rax, %rcx
 1068              	.L27:
 1069 18a1 8D56FF   		leal	-1(%rsi), %edx
 1070 18a4 4889F8   		movq	%rdi, %rax
 1071 18a7 660F1F84 		.p2align 4,,10
 1071      00000000 
 1071      00
 1072              		.p2align 3
 1073              	.L25:
 1074 18b0 C5FD282D 		vmovapd	.LC42(%rip), %ymm5
 1074      00000000 
 1075 18b8 83C201   		addl	$1, %edx
 1076 18bb 4883C020 		addq	$32, %rax
 1077 18bf C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1077      00000000 
 1078 18c7 C5D55948 		vmulpd	-32(%rax), %ymm5, %ymm1
 1078      E0
 1079 18cc C5FD282D 		vmovapd	.LC44(%rip), %ymm5
 1079      00000000 
 1080 18d4 C5CD5998 		vmulpd	224(%rax), %ymm6, %ymm3
 1080      E0000000 
 1081 18dc C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 1081      00000000 
 1082 18e4 C5D55980 		vmulpd	352(%rax), %ymm5, %ymm0
 1082      60010000 
 1083 18ec C5FD2825 		vmovapd	.LC46(%rip), %ymm4
 1083      00000000 
 1084 18f4 C5C55990 		vmulpd	480(%rax), %ymm7, %ymm2
 1084      E0010000 
 1085 18fc C5FD2835 		vmovapd	.LC49(%rip), %ymm6
 1085      00000000 
 1086 1904 C5FD282D 		vmovapd	.LC48(%rip), %ymm5
 1086      00000000 
 1087 190c C5FD283D 		vmovapd	.LC47(%rip), %ymm7
 1087      00000000 
 1088 1914 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 1089 1918 C5D55998 		vmulpd	480(%rax), %ymm5, %ymm3
 1089      E0010000 
 1090 1920 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1091 1924 C5C55950 		vmulpd	96(%rax), %ymm7, %ymm2
 1091      60
 1092 1929 C5FD283D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 1092      00000000 
 1093 1931 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1094 1935 C5DD5948 		vmulpd	-32(%rax), %ymm4, %ymm1
 1094      E0
 1095 193a C5FD2825 		vmovapd	.LC50(%rip), %ymm4
GAS LISTING /tmp/cc2s6cHB.s 			page 37


 1095      00000000 
 1096 1942 C5DD59A0 		vmulpd	224(%rax), %ymm4, %ymm4
 1096      E0000000 
 1097 194a C5FD5981 		vmulpd	1152(%rcx), %ymm0, %ymm0
 1097      80040000 
 1098 1952 C5FD5880 		vaddpd	736(%rax), %ymm0, %ymm0
 1098      E0020000 
 1099 195a C5FD2980 		vmovapd	%ymm0, 608(%rax)
 1099      60020000 
 1100 1962 C5CD5980 		vmulpd	352(%rax), %ymm6, %ymm0
 1100      60010000 
 1101 196a C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 1102 196e C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1103 1972 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1104 1976 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1105 197a C5C55488 		vandpd	608(%rax), %ymm7, %ymm1
 1105      60020000 
 1106 1982 C5FD5981 		vmulpd	1152(%rcx), %ymm0, %ymm0
 1106      80040000 
 1107 198a C5F5590D 		vmulpd	.LC51(%rip), %ymm1, %ymm1
 1107      00000000 
 1108 1992 C5FD2980 		vmovapd	%ymm0, -160(%rax)
 1108      60FFFFFF 
 1109 199a C5F5580D 		vaddpd	.LC51(%rip), %ymm1, %ymm1
 1109      00000000 
 1110 19a2 C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 1111 19a6 C5FD2948 		vmovapd	%ymm1, -32(%rax)
 1111      E0
 1112 19ab C5FD54C7 		vandpd	%ymm7, %ymm0, %ymm0
 1113 19af C5FD2940 		vmovapd	%ymm0, 96(%rax)
 1113      60
 1114 19b4 39D6     		cmpl	%edx, %esi
 1115 19b6 0F8DF4FE 		jge	.L25
 1115      FFFF
 1116 19bc 83C602   		addl	$2, %esi
 1117 19bf 4883C120 		addq	$32, %rcx
 1118 19c3 4883C740 		addq	$64, %rdi
 1119 19c7 83FE05   		cmpl	$5, %esi
 1120 19ca 0F85D1FE 		jne	.L27
 1120      FFFF
 1121 19d0 C5FD2884 		vmovapd	1088(%rsp), %ymm0
 1121      24400400 
 1121      00
 1122 19d9 488D8424 		leaq	832(%rsp), %rax
 1122      40030000 
 1123 19e1 4C8D8424 		leaq	1728(%rsp), %r8
 1123      C0060000 
 1124 19e9 C5FD286C 		vmovapd	32(%rsp), %ymm5
 1124      2420
 1125 19ef 31FF     		xorl	%edi, %edi
 1126 19f1 C5FD5D84 		vminpd	1120(%rsp), %ymm0, %ymm0
 1126      24600400 
 1126      00
 1127 19fa 4889C6   		movq	%rax, %rsi
 1128 19fd C5FD2984 		vmovapd	%ymm0, 960(%rsp)
 1128      24C00300 
 1128      00
GAS LISTING /tmp/cc2s6cHB.s 			page 38


 1129 1a06 C5FD2884 		vmovapd	1152(%rsp), %ymm0
 1129      24800400 
 1129      00
 1130 1a0f C5FD5D84 		vminpd	1184(%rsp), %ymm0, %ymm0
 1130      24A00400 
 1130      00
 1131 1a18 C5FD2984 		vmovapd	%ymm0, 992(%rsp)
 1131      24E00300 
 1131      00
 1132              	.L33:
 1133 1a21 C5FD28A6 		vmovapd	128(%rsi), %ymm4
 1133      80000000 
 1134 1a29 C5FD283D 		vmovapd	.LC56(%rip), %ymm7
 1134      00000000 
 1135 1a31 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1135      E301
 1136 1a37 C5F928D4 		vmovapd	%xmm4, %xmm2
 1137 1a3b C5E9DB05 		vpand	.LC52(%rip), %xmm2, %xmm0
 1137      00000000 
 1138 1a43 C5C973D2 		vpsrlq	$52, %xmm2, %xmm6
 1138      34
 1139 1a48 C5E1DB0D 		vpand	.LC52(%rip), %xmm3, %xmm1
 1139      00000000 
 1140 1a50 C5C9EB35 		vpor	.LC54(%rip), %xmm6, %xmm6
 1140      00000000 
 1141 1a58 C5F9EB05 		vpor	.LC53(%rip), %xmm0, %xmm0
 1141      00000000 
 1142 1a60 C5F1EB0D 		vpor	.LC53(%rip), %xmm1, %xmm1
 1142      00000000 
 1143 1a68 C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 1143      C101
 1144 1a6e C5F173D3 		vpsrlq	$52, %xmm3, %xmm1
 1144      34
 1145 1a73 C5F1EB0D 		vpor	.LC54(%rip), %xmm1, %xmm1
 1145      00000000 
 1146 1a7b C4E34D18 		vinsertf128	$0x1, %xmm1, %ymm6, %ymm6
 1146      F101
 1147 1a81 C5C5C2C8 		vcmppd	$1, %ymm0, %ymm7, %ymm1
 1147      01
 1148 1a86 C5CD5C35 		vsubpd	.LC55(%rip), %ymm6, %ymm6
 1148      00000000 
 1149 1a8e C4C37D19 		vextractf128	$0x1, %ymm1, %xmm8
 1149      C801
 1150 1a94 C5F928F9 		vmovapd	%xmm1, %xmm7
 1151 1a98 C5F5540D 		vandpd	.LC20(%rip), %ymm1, %ymm1
 1151      00000000 
 1152 1aa0 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1152      00000000 
 1153 1aa8 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1153      00000000 
 1154 1ab0 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 1155 1ab4 C4C34518 		vinsertf128	$0x1, %xmm8, %ymm7, %ymm7
 1155      F801
 1156 1aba C5C554F8 		vandpd	%ymm0, %ymm7, %ymm7
 1157 1abe C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1158 1ac2 C5FD5C05 		vsubpd	.LC20(%rip), %ymm0, %ymm0
 1158      00000000 
GAS LISTING /tmp/cc2s6cHB.s 			page 39


 1159 1aca C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 1159      00000000 
 1160 1ad2 C57D5815 		vaddpd	.LC65(%rip), %ymm0, %ymm10
 1160      00000000 
 1161 1ada C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 1162 1ade C57D590D 		vmulpd	.LC57(%rip), %ymm0, %ymm9
 1162      00000000 
 1163 1ae6 C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 1163      00000000 
 1164 1aee C5F559F9 		vmulpd	%ymm1, %ymm1, %ymm7
 1165 1af2 C535580D 		vaddpd	.LC58(%rip), %ymm9, %ymm9
 1165      00000000 
 1166 1afa C53D59C7 		vmulpd	%ymm7, %ymm8, %ymm8
 1167 1afe C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 1168 1b02 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 1168      C1
 1169 1b07 C57D590D 		vmulpd	.LC61(%rip), %ymm0, %ymm9
 1169      00000000 
 1170 1b0f C535580D 		vaddpd	.LC62(%rip), %ymm9, %ymm9
 1170      00000000 
 1171 1b17 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1172 1b1b C4413558 		vaddpd	%ymm8, %ymm9, %ymm9
 1172      C8
 1173 1b20 C57D59C1 		vmulpd	%ymm1, %ymm0, %ymm8
 1174 1b24 C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 1174      C0
 1175 1b29 C57D590D 		vmulpd	.LC63(%rip), %ymm0, %ymm9
 1175      00000000 
 1176 1b31 C535580D 		vaddpd	.LC64(%rip), %ymm9, %ymm9
 1176      00000000 
 1177 1b39 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1177      F9
 1178 1b3e C57D590D 		vmulpd	.LC66(%rip), %ymm0, %ymm9
 1178      00000000 
 1179 1b46 C535580D 		vaddpd	.LC67(%rip), %ymm9, %ymm9
 1179      00000000 
 1180 1b4e C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1181 1b52 C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 1181      00000000 
 1182 1b5a C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 1183 1b5e C5B173F3 		vpsllq	$1, %xmm3, %xmm9
 1183      01
 1184 1b63 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1185 1b67 C5BD5EFF 		vdivpd	%ymm7, %ymm8, %ymm7
 1186 1b6b C54D5905 		vmulpd	.LC68(%rip), %ymm6, %ymm8
 1186      00000000 
 1187 1b73 C5CD590D 		vmulpd	.LC69(%rip), %ymm6, %ymm1
 1187      00000000 
 1188 1b7b C5B1DB35 		vpand	.LC23(%rip), %xmm9, %xmm6
 1188      00000000 
 1189 1b83 C5BD58FF 		vaddpd	%ymm7, %ymm8, %ymm7
 1190 1b87 C5B973F2 		vpsllq	$1, %xmm2, %xmm8
 1190      01
 1191 1b8c C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 1191      35000000 
 1191      00
 1192 1b95 C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
GAS LISTING /tmp/cc2s6cHB.s 			page 40


 1192      00000000 
 1193 1b9d C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1194 1ba1 C5B9DB3D 		vpand	.LC23(%rip), %xmm8, %xmm7
 1194      00000000 
 1195 1ba9 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 1196 1bad C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 1196      3D000000 
 1196      00
 1197 1bb6 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1197      00000000 
 1198 1bbe C4E34518 		vinsertf128	$0x1, %xmm6, %ymm7, %ymm7
 1198      FE01
 1199 1bc4 C4C37D19 		vextractf128	$0x1, %ymm7, %xmm10
 1199      FA01
 1200 1bca C5F928F7 		vmovapd	%xmm7, %xmm6
 1201 1bce C5DDC23D 		vcmppd	$1, .LC70(%rip), %ymm4, %ymm7
 1201      00000000 
 1201      01
 1202 1bd7 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1202      00000000 
 1203 1bdf C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 1203      00000000 
 1204 1be7 C4C34D18 		vinsertf128	$0x1, %xmm10, %ymm6, %ymm6
 1204      F201
 1205 1bed C57D28DE 		vmovapd	%ymm6, %ymm11
 1206 1bf1 C5C556F6 		vorpd	%ymm6, %ymm7, %ymm6
 1207 1bf5 C4C37D19 		vextractf128	$0x1, %ymm6, %xmm10
 1207      F201
 1208 1bfb C4C14956 		vorpd	%xmm10, %xmm6, %xmm6
 1208      F2
 1209 1c00 C5F950C6 		vmovmskpd	%xmm6, %eax
 1210 1c04 85C0     		testl	%eax, %eax
 1211 1c06 0F848800 		je	.L28
 1211      0000
 1212 1c0c C4E3754B 		vblendvpd	%ymm7, .LC71(%rip), %ymm1, %ymm1
 1212      0D000000 
 1212      0070
 1213 1c16 C5E1DB35 		vpand	.LC73(%rip), %xmm3, %xmm6
 1213      00000000 
 1214 1c1e C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1214      1F
 1215 1c23 C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 1215      0D000000 
 1215      00
 1216 1c2c C5E9DB3D 		vpand	.LC73(%rip), %xmm2, %xmm7
 1216      00000000 
 1217 1c34 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1217      1F
 1218 1c39 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 1219 1c3d C4E24929 		vpcmpeqq	%xmm0, %xmm6, %xmm6
 1219      F0
 1220 1c42 C4E24129 		vpcmpeqq	%xmm0, %xmm7, %xmm0
 1220      C0
 1221 1c47 C4E37D18 		vinsertf128	$0x1, %xmm6, %ymm0, %ymm0
 1221      C601
 1222 1c4d C4E3754B 		vblendvpd	%ymm0, 64(%rsp), %ymm1, %ymm0
 1222      44244000 
GAS LISTING /tmp/cc2s6cHB.s 			page 41


 1223 1c55 C4E23929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm1
 1223      0D000000 
 1223      00
 1224 1c5e C4E37D4B 		vblendvpd	%ymm11, %ymm4, %ymm0, %ymm4
 1224      E4B0
 1225 1c64 C5F973D3 		vpsrlq	$32, %xmm3, %xmm0
 1225      20
 1226 1c69 C4E3790E 		vpblendw	$204, %xmm3, %xmm0, %xmm3
 1226      DBCC
 1227 1c6f C5F973D2 		vpsrlq	$32, %xmm2, %xmm0
 1227      20
 1228 1c74 C4E3790E 		vpblendw	$204, %xmm2, %xmm0, %xmm0
 1228      C2CC
 1229 1c7a C4C37518 		vinsertf128	$0x1, %xmm9, %ymm1, %ymm1
 1229      C901
 1230 1c80 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1230      C301
 1231 1c86 C5F554C8 		vandpd	%ymm0, %ymm1, %ymm1
 1232 1c8a C4E35D4B 		vblendvpd	%ymm1, .LC71(%rip), %ymm4, %ymm1
 1232      0D000000 
 1232      0010
 1233              	.L28:
 1234 1c94 C5F5590D 		vmulpd	.LC26(%rip), %ymm1, %ymm1
 1234      00000000 
 1235 1c9c C5F55925 		vmulpd	.LC74(%rip), %ymm1, %ymm4
 1235      00000000 
 1236 1ca4 C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 1236      E408
 1237 1caa C5DD5915 		vmulpd	.LC75(%rip), %ymm4, %ymm2
 1237      00000000 
 1238 1cb2 C5DD5905 		vmulpd	.LC76(%rip), %ymm4, %ymm0
 1238      00000000 
 1239 1cba C5DD5825 		vaddpd	.LC55(%rip), %ymm4, %ymm4
 1239      00000000 
 1240 1cc2 C5F55CD2 		vsubpd	%ymm2, %ymm1, %ymm2
 1241 1cc6 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 1242 1cca C5FD5935 		vmulpd	.LC80(%rip), %ymm0, %ymm6
 1242      00000000 
 1243 1cd2 C57D5905 		vmulpd	.LC77(%rip), %ymm0, %ymm8
 1243      00000000 
 1244 1cda C57D590D 		vmulpd	.LC78(%rip), %ymm0, %ymm9
 1244      00000000 
 1245 1ce2 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 1246 1ce6 C5CD5835 		vaddpd	.LC81(%rip), %ymm6, %ymm6
 1246      00000000 
 1247 1cee C53D5805 		vaddpd	.LC19(%rip), %ymm8, %ymm8
 1247      00000000 
 1248 1cf6 C535580D 		vaddpd	.LC79(%rip), %ymm9, %ymm9
 1248      00000000 
 1249 1cfe C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 1250 1d02 C5CD59F2 		vmulpd	%ymm2, %ymm6, %ymm6
 1251 1d06 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 1252 1d0a C5E559FB 		vmulpd	%ymm3, %ymm3, %ymm7
 1253 1d0e C4C14D58 		vaddpd	%ymm9, %ymm6, %ymm6
 1253      F1
 1254 1d13 C57D590D 		vmulpd	.LC84(%rip), %ymm0, %ymm9
 1254      00000000 
GAS LISTING /tmp/cc2s6cHB.s 			page 42


 1255 1d1b C53D58C0 		vaddpd	%ymm0, %ymm8, %ymm8
 1256 1d1f C5CD59F3 		vmulpd	%ymm3, %ymm6, %ymm6
 1257 1d23 C535580D 		vaddpd	.LC85(%rip), %ymm9, %ymm9
 1257      00000000 
 1258 1d2b C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 1258      F0
 1259 1d30 C57D5905 		vmulpd	.LC82(%rip), %ymm0, %ymm8
 1259      00000000 
 1260 1d38 C5FD5905 		vmulpd	.LC86(%rip), %ymm0, %ymm0
 1260      00000000 
 1261 1d40 C5B559D2 		vmulpd	%ymm2, %ymm9, %ymm2
 1262 1d44 C53D5805 		vaddpd	.LC83(%rip), %ymm8, %ymm8
 1262      00000000 
 1263 1d4c C5FD5805 		vaddpd	.LC87(%rip), %ymm0, %ymm0
 1263      00000000 
 1264 1d54 C4C16D58 		vaddpd	%ymm8, %ymm2, %ymm2
 1264      D0
 1265 1d59 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 1266 1d5d C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 1266      34
 1267 1d62 C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 1268 1d66 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1268      E301
 1269 1d6c C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1269      34
 1270 1d71 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1270      C301
 1271 1d77 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 1272 1d7b C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 1272      CB01
 1273 1d81 C5ED58D6 		vaddpd	%ymm6, %ymm2, %ymm2
 1274 1d85 C5C173F3 		vpsllq	$1, %xmm3, %xmm7
 1274      01
 1275 1d8a C5C1DB3D 		vpand	.LC23(%rip), %xmm7, %xmm7
 1275      00000000 
 1276 1d92 C5F55435 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 1276      00000000 
 1277 1d9a C5ED5825 		vaddpd	.LC20(%rip), %ymm2, %ymm4
 1277      00000000 
 1278 1da2 C5F928D1 		vmovapd	%xmm1, %xmm2
 1279 1da6 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 1279      3D000000 
 1279      00
 1280 1daf C5CDC235 		vcmppd	$1, .LC88(%rip), %ymm6, %ymm6
 1280      00000000 
 1280      01
 1281 1db8 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1281      00000000 
 1282 1dc0 C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 1283 1dc4 C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 1283      01
 1284 1dc9 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1284      00000000 
 1285 1dd1 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1285      05000000 
 1285      00
 1286 1dda C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
GAS LISTING /tmp/cc2s6cHB.s 			page 43


 1286      00000000 
 1287 1de2 C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 1287      C701
 1288 1de8 C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
 1289 1dec C4E37D19 		vextractf128	$0x1, %ymm0, %xmm6
 1289      C601
 1290 1df2 C5F928F8 		vmovapd	%xmm0, %xmm7
 1291 1df6 C5C154F6 		vandpd	%xmm6, %xmm7, %xmm6
 1292 1dfa C5F950C6 		vmovmskpd	%xmm6, %eax
 1293 1dfe 83F803   		cmpl	$3, %eax
 1294 1e01 0F84A604 		je	.L53
 1294      0000
 1295 1e07 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1295      1F
 1296 1e0c C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1296      1F
 1297 1e11 C5C973D3 		vpsrlq	$32, %xmm3, %xmm6
 1297      20
 1298 1e16 C4E3490E 		vpblendw	$204, %xmm3, %xmm6, %xmm3
 1298      DBCC
 1299 1e1c C5C973D2 		vpsrlq	$32, %xmm2, %xmm6
 1299      20
 1300 1e21 C4E3490E 		vpblendw	$204, %xmm2, %xmm6, %xmm2
 1300      D2CC
 1301 1e27 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 1301      DB01
 1302 1e2d C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 1303 1e31 C4E3554B 		vblendvpd	%ymm3, %ymm2, %ymm5, %ymm2
 1303      D230
 1304 1e37 C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 1304      C400
 1305 1e3d C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 1305      04
 1306 1e42 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 1306      C120
 1307              	.L29:
 1308 1e48 C5FD288E 		vmovapd	1152(%rsi), %ymm1
 1308      80040000 
 1309 1e50 8D4F01   		leal	1(%rdi), %ecx
 1310 1e53 89FA     		movl	%edi, %edx
 1311 1e55 C5FD281D 		vmovapd	.LC20(%rip), %ymm3
 1311      00000000 
 1312 1e5d 4C89C0   		movq	%r8, %rax
 1313 1e60 C5F5C20D 		vcmppd	$2, .LC89(%rip), %ymm1, %ymm1
 1313      00000000 
 1313      02
 1314 1e69 C5FD2835 		vmovapd	.LC90(%rip), %ymm6
 1314      00000000 
 1315 1e71 C5E5C296 		vcmppd	$2, 128(%rsi), %ymm3, %ymm2
 1315      80000000 
 1315      02
 1316 1e7a C5ED56C9 		vorpd	%ymm1, %ymm2, %ymm1
 1317 1e7e C5CDC2D0 		vcmppd	$1, %ymm0, %ymm6, %ymm2
 1317      01
 1318 1e83 C4E37D4B 		vblendvpd	%ymm2, %ymm6, %ymm0, %ymm0
 1318      C620
 1319 1e89 C5FDC215 		vcmppd	$1, .LC26(%rip), %ymm0, %ymm2
GAS LISTING /tmp/cc2s6cHB.s 			page 44


 1319      00000000 
 1319      01
 1320 1e92 C4E37D4B 		vblendvpd	%ymm2, .LC26(%rip), %ymm0, %ymm0
 1320      05000000 
 1320      0020
 1321 1e9c C5FD2986 		vmovapd	%ymm0, 256(%rsi)
 1321      00010000 
 1322              		.p2align 4,,10
 1323 1ea4 0F1F4000 		.p2align 3
 1324              	.L31:
 1325 1ea8 C5FD2800 		vmovapd	(%rax), %ymm0
 1326 1eac 83C201   		addl	$1, %edx
 1327 1eaf 4883C020 		addq	$32, %rax
 1328 1eb3 C4E37D4B 		vblendvpd	%ymm1, -160(%rax), %ymm0, %ymm0
 1328      8060FFFF 
 1328      FF10
 1329 1ebd C5FD2940 		vmovapd	%ymm0, -32(%rax)
 1329      E0
 1330 1ec2 39D1     		cmpl	%edx, %ecx
 1331 1ec4 7DE2     		jge	.L31
 1332 1ec6 C5FD2886 		vmovapd	1024(%rsi), %ymm0
 1332      00040000 
 1333 1ece 83C702   		addl	$2, %edi
 1334 1ed1 4883C620 		addq	$32, %rsi
 1335 1ed5 C5FD2825 		vmovapd	.LC92(%rip), %ymm4
 1335      00000000 
 1336 1edd 4983C040 		addq	$64, %r8
 1337 1ee1 C5FD5896 		vaddpd	1120(%rsi), %ymm0, %ymm2
 1337      60040000 
 1338 1ee9 C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1338      C210
 1339 1eef C5FD2986 		vmovapd	%ymm0, 992(%rsi)
 1339      E0030000 
 1340 1ef7 C5FD2886 		vmovapd	224(%rsi), %ymm0
 1340      E0000000 
 1341 1eff C5FD5986 		vmulpd	1120(%rsi), %ymm0, %ymm0
 1341      60040000 
 1342 1f07 C5FD5905 		vmulpd	.LC91(%rip), %ymm0, %ymm0
 1342      00000000 
 1343 1f0f C5DDC2C8 		vcmppd	$1, %ymm0, %ymm4, %ymm1
 1343      01
 1344 1f14 C4E37D4B 		vblendvpd	%ymm1, %ymm4, %ymm0, %ymm0
 1344      C410
 1345 1f1a C5FDC20D 		vcmppd	$1, .LC89(%rip), %ymm0, %ymm1
 1345      00000000 
 1345      01
 1346 1f23 C4E37D4B 		vblendvpd	%ymm1, .LC89(%rip), %ymm0, %ymm0
 1346      05000000 
 1346      0010
 1347 1f2d C5FD2986 		vmovapd	%ymm0, 1120(%rsi)
 1347      60040000 
 1348 1f35 83FF04   		cmpl	$4, %edi
 1349 1f38 0F85E3FA 		jne	.L33
 1349      FFFF
 1350 1f3e 4C8DB424 		leaq	832(%rsp), %r14
 1350      40030000 
 1351 1f46 488D8424 		leaq	896(%rsp), %rax
GAS LISTING /tmp/cc2s6cHB.s 			page 45


 1351      80030000 
 1352 1f4e 4D89F5   		movq	%r14, %r13
 1353 1f51 48894424 		movq	%rax, 112(%rsp)
 1353      70
 1354 1f56 4D89F4   		movq	%r14, %r12
 1355              	.L43:
 1356 1f59 C4C17D28 		vmovapd	1024(%r12), %ymm1
 1356      8C240004 
 1356      0000
 1357 1f63 C4C17D28 		vmovapd	1280(%r12), %ymm2
 1357      94240005 
 1357      0000
 1358 1f6d C5EDC2E9 		vcmppd	$2, %ymm1, %ymm2, %ymm5
 1358      02
 1359 1f72 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm0
 1359      E801
 1360 1f78 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 1360      24800000 
 1360      00
 1361 1f81 C5F928DD 		vmovapd	%xmm5, %xmm3
 1362 1f85 C5E156C0 		vorpd	%xmm0, %xmm3, %xmm0
 1363 1f89 C5F950C0 		vmovmskpd	%xmm0, %eax
 1364 1f8d 85C0     		testl	%eax, %eax
 1365 1f8f 0F841301 		je	.L34
 1365      0000
 1366 1f95 31DB     		xorl	%ebx, %ebx
 1367              	.L41:
 1368 1f97 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 1368      24800000 
 1368      00
 1369 1fa0 C5FD11B4 		vmovupd	%ymm6, 768(%rsp)
 1369      24000300 
 1369      00
 1370 1fa9 448B8C5C 		movl	772(%rsp,%rbx,2), %r9d
 1370      04030000 
 1371 1fb1 4585C9   		testl	%r9d, %r9d
 1372 1fb4 0F856E01 		jne	.L67
 1372      0000
 1373              	.L49:
 1374 1fba 4883C304 		addq	$4, %rbx
 1375 1fbe 4883FB10 		cmpq	$16, %rbx
 1376 1fc2 75D3     		jne	.L41
 1377 1fc4 C5FD28B4 		vmovapd	128(%rsp), %ymm6
 1377      24800000 
 1377      00
 1378 1fcd C5FD11B4 		vmovupd	%ymm6, 512(%rsp)
 1378      24000200 
 1378      00
 1379 1fd6 8B84241C 		movl	540(%rsp), %eax
 1379      020000
 1380 1fdd C5FD11B4 		vmovupd	%ymm6, 576(%rsp)
 1380      24400200 
 1380      00
 1381 1fe6 8B942454 		movl	596(%rsp), %edx
 1381      020000
 1382 1fed C5FD11B4 		vmovupd	%ymm6, 640(%rsp)
 1382      24800200 
GAS LISTING /tmp/cc2s6cHB.s 			page 46


 1382      00
 1383 1ff6 8BBC248C 		movl	652(%rsp), %edi
 1383      020000
 1384 1ffd C5FD11B4 		vmovupd	%ymm6, 704(%rsp)
 1384      24C00200 
 1384      00
 1385 2006 85C0     		testl	%eax, %eax
 1386 2008 448B8424 		movl	708(%rsp), %r8d
 1386      C4020000 
 1387 2010 0F95C1   		setne	%cl
 1388 2013 85D2     		testl	%edx, %edx
 1389 2015 400F95C6 		setne	%sil
 1390 2019 85FF     		testl	%edi, %edi
 1391 201b 0FB6C9   		movzbl	%cl, %ecx
 1392 201e 0F95C0   		setne	%al
 1393 2021 400FB6F6 		movzbl	%sil, %esi
 1394 2025 31D2     		xorl	%edx, %edx
 1395 2027 4585C0   		testl	%r8d, %r8d
 1396 202a 0FB6C0   		movzbl	%al, %eax
 1397 202d 0F95C2   		setne	%dl
 1398 2030 F7DE     		negl	%esi
 1399 2032 F7D8     		negl	%eax
 1400 2034 89B42480 		movl	%esi, 128(%rsp)
 1400      000000
 1401 203b F7DA     		negl	%edx
 1402 203d F7D9     		negl	%ecx
 1403 203f C5F96E9C 		vmovd	128(%rsp), %xmm3
 1403      24800000 
 1403      00
 1404 2048 89942480 		movl	%edx, 128(%rsp)
 1404      000000
 1405 204f C5F96EA4 		vmovd	128(%rsp), %xmm4
 1405      24800000 
 1405      00
 1406 2058 C4E36122 		vpinsrd	$1, %ecx, %xmm3, %xmm0
 1406      C101
 1407 205e C4E35922 		vpinsrd	$1, %eax, %xmm4, %xmm1
 1407      C801
 1408 2064 C5CD5415 		vandpd	.LC97(%rip), %ymm6, %ymm2
 1408      00000000 
 1409 206c C5F16CC0 		vpunpcklqdq	%xmm0, %xmm1, %xmm0
 1410 2070 C5F9DB05 		vpand	.LC96(%rip), %xmm0, %xmm0
 1410      00000000 
 1411 2078 C4C179FE 		vpaddd	1344(%r13), %xmm0, %xmm0
 1411      85400500 
 1411      00
 1412 2081 C4C1797F 		vmovdqa	%xmm0, 1344(%r13)
 1412      85400500 
 1412      00
 1413 208a C4C16D58 		vaddpd	1280(%r12), %ymm2, %ymm2
 1413      94240005 
 1413      0000
 1414 2094 C4C17D28 		vmovapd	1024(%r12), %ymm1
 1414      8C240004 
 1414      0000
 1415 209e C4C17D29 		vmovapd	%ymm2, 1280(%r12)
 1415      94240005 
GAS LISTING /tmp/cc2s6cHB.s 			page 47


 1415      0000
 1416              	.L34:
 1417 20a8 C4C17D28 		vmovapd	1152(%r12), %ymm0
 1417      84248004 
 1417      0000
 1418 20b2 4983C510 		addq	$16, %r13
 1419 20b6 4983C420 		addq	$32, %r12
 1420 20ba 4983C640 		addq	$64, %r14
 1421 20be C5F558D8 		vaddpd	%ymm0, %ymm1, %ymm3
 1422 20c2 C5ED5CC9 		vsubpd	%ymm1, %ymm2, %ymm1
 1423 20c6 C5EDC2DB 		vcmppd	$2, %ymm3, %ymm2, %ymm3
 1423      02
 1424 20cb C4E37D4B 		vblendvpd	%ymm3, %ymm1, %ymm0, %ymm0
 1424      C130
 1425 20d1 C4C17D29 		vmovapd	%ymm0, 1120(%r12)
 1425      84246004 
 1425      0000
 1426 20db 4C3B6424 		cmpq	112(%rsp), %r12
 1426      70
 1427 20e0 0F8573FE 		jne	.L43
 1427      FFFF
 1428 20e6 C5FD2884 		vmovapd	1856(%rsp), %ymm0
 1428      24400700 
 1428      00
 1429 20ef C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 1429      00000000 
 1430 20f7 C5FD5D84 		vminpd	1888(%rsp), %ymm0, %ymm0
 1430      24600700 
 1430      00
 1431 2100 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1431      02
 1432 2105 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1432      C101
 1433 210b C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1434 210f C5F950C0 		vmovmskpd	%xmm0, %eax
 1435 2113 83F803   		cmpl	$3, %eax
 1436 2116 0F849A01 		je	.L68
 1436      0000
 1437 211c 31D2     		xorl	%edx, %edx
 1438 211e 31F6     		xorl	%esi, %esi
 1439 2120 E943E0FF 		jmp	.L13
 1439      FF
 1440              		.p2align 4,,10
 1441 2125 0F1F00   		.p2align 3
 1442              	.L67:
 1443 2128 C4C1796F 		vmovdqa	1344(%r13), %xmm0
 1443      85400500 
 1443      00
 1444 2131 C5FA7F84 		vmovdqu	%xmm0, 160(%rsp)
 1444      24A00000 
 1444      00
 1445 213a 83BC1CA0 		cmpl	$31, 160(%rsp,%rbx)
 1445      0000001F 
 1446 2142 0F8F72FE 		jg	.L49
 1446      FFFF
 1447 2148 C4C17D28 		vmovapd	1024(%r12), %ymm0
 1447      84240004 
GAS LISTING /tmp/cc2s6cHB.s 			page 48


 1447      0000
 1448 2152 488DBC24 		leaq	2224(%rsp), %rdi
 1448      B0080000 
 1449 215a C5FD1184 		vmovupd	%ymm0, 384(%rsp)
 1449      24800100 
 1449      00
 1450 2163 C5FB1084 		vmovsd	384(%rsp,%rbx,2), %xmm0
 1450      5C800100 
 1450      00
 1451 216c C5FB5E05 		vdivsd	.LC93(%rip), %xmm0, %xmm0
 1451      00000000 
 1452 2174 C5FB5C2D 		vsubsd	.LC94(%rip), %xmm0, %xmm5
 1452      00000000 
 1453 217c C4C17D28 		vmovapd	928(%r14), %ymm0
 1453      86A00300 
 1453      00
 1454 2185 C5FD1184 		vmovupd	%ymm0, 416(%rsp)
 1454      24A00100 
 1454      00
 1455 218e C4C17D28 		vmovapd	896(%r14), %ymm0
 1455      86800300 
 1455      00
 1456 2197 C5FB109C 		vmovsd	416(%rsp,%rbx,2), %xmm3
 1456      5CA00100 
 1456      00
 1457 21a0 C5FD1184 		vmovupd	%ymm0, 448(%rsp)
 1457      24C00100 
 1457      00
 1458 21a9 C5FB116C 		vmovsd	%xmm5, 120(%rsp)
 1458      2478
 1459 21af C4C17D28 		vmovapd	1216(%r12), %ymm0
 1459      8424C004 
 1459      0000
 1460 21b9 C5FB10B4 		vmovsd	448(%rsp,%rbx,2), %xmm6
 1460      5CC00100 
 1460      00
 1461 21c2 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1461      24E00100 
 1461      00
 1462 21cb C5FB115C 		vmovsd	%xmm3, 104(%rsp)
 1462      2468
 1463 21d1 C5FB1084 		vmovsd	480(%rsp,%rbx,2), %xmm0
 1463      5CE00100 
 1463      00
 1464 21da C5FB1174 		vmovsd	%xmm6, 96(%rsp)
 1464      2460
 1465 21e0 C5F877   		vzeroupper
 1466              	.LEHB1:
 1467 21e3 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1467      00
 1468 21e8 BA010000 		movl	$1, %edx
 1468      00
 1469 21ed BE000000 		movl	$.LC95, %esi
 1469      00
 1470 21f2 4889C7   		movq	%rax, %rdi
 1471 21f5 4989C7   		movq	%rax, %r15
 1472 21f8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/cc2s6cHB.s 			page 49


 1472      00
 1473 21fd C5FB1044 		vmovsd	96(%rsp), %xmm0
 1473      2460
 1474 2203 4C89FF   		movq	%r15, %rdi
 1475 2206 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1475      00
 1476 220b BA010000 		movl	$1, %edx
 1476      00
 1477 2210 BE000000 		movl	$.LC95, %esi
 1477      00
 1478 2215 4889C7   		movq	%rax, %rdi
 1479 2218 4989C7   		movq	%rax, %r15
 1480 221b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1480      00
 1481 2220 C5FB1044 		vmovsd	104(%rsp), %xmm0
 1481      2468
 1482 2226 4C89FF   		movq	%r15, %rdi
 1483 2229 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1483      00
 1484 222e BA010000 		movl	$1, %edx
 1484      00
 1485 2233 BE000000 		movl	$.LC95, %esi
 1485      00
 1486 2238 4889C7   		movq	%rax, %rdi
 1487 223b 4989C7   		movq	%rax, %r15
 1488 223e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1488      00
 1489 2243 C5FB1044 		vmovsd	120(%rsp), %xmm0
 1489      2478
 1490 2249 4C89FF   		movq	%r15, %rdi
 1491 224c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1491      00
 1492 2251 4989C7   		movq	%rax, %r15
 1493 2254 488B00   		movq	(%rax), %rax
 1494 2257 488B40E8 		movq	-24(%rax), %rax
 1495 225b 498B8407 		movq	240(%r15,%rax), %rax
 1495      F0000000 
 1496 2263 4885C0   		testq	%rax, %rax
 1497 2266 48894424 		movq	%rax, 120(%rsp)
 1497      78
 1498 226b 0F840201 		je	.L69
 1498      0000
 1499 2271 80783800 		cmpb	$0, 56(%rax)
 1500 2275 741C     		je	.L38
 1501 2277 0FB64043 		movzbl	67(%rax), %eax
 1502              	.L39:
 1503 227b 0FBEF0   		movsbl	%al, %esi
 1504 227e 4C89FF   		movq	%r15, %rdi
 1505 2281 E8000000 		call	_ZNSo3putEc
 1505      00
 1506 2286 4889C7   		movq	%rax, %rdi
 1507 2289 E8000000 		call	_ZNSo5flushEv
 1507      00
 1508 228e E927FDFF 		jmp	.L49
 1508      FF
 1509              	.L38:
 1510 2293 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/cc2s6cHB.s 			page 50


 1511 2296 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1511      00
 1512 229b 488B7C24 		movq	120(%rsp), %rdi
 1512      78
 1513 22a0 BE0A0000 		movl	$10, %esi
 1513      00
 1514 22a5 488B07   		movq	(%rdi), %rax
 1515 22a8 FF5030   		call	*48(%rax)
 1516 22ab EBCE     		jmp	.L39
 1517              	.L53:
 1518 22ad C5FD28C4 		vmovapd	%ymm4, %ymm0
 1519 22b1 E992FBFF 		jmp	.L29
 1519      FF
 1520              	.L68:
 1521 22b6 48834424 		addq	$64, 24(%rsp)
 1521      1840
 1522 22bc 48817C24 		cmpq	$11520, 24(%rsp)
 1522      18002D00 
 1522      00
 1523 22c5 0F85CFDD 		jne	.L12
 1523      FFFF
 1524 22cb C5F877   		vzeroupper
 1525 22ce E8000000 		call	clock
 1525      00
 1526 22d3 4889C1   		movq	%rax, %rcx
 1527 22d6 482B4C24 		subq	8(%rsp), %rcx
 1527      08
 1528 22db 48BBCFF7 		movabsq	$2361183241434822607, %rbx
 1528      53E3A59B 
 1528      C420
 1529 22e5 BE000000 		movl	$.LC103, %esi
 1529      00
 1530 22ea BF000000 		movl	$_ZSt4cout, %edi
 1530      00
 1531 22ef 4889C8   		movq	%rcx, %rax
 1532 22f2 48C1F93F 		sarq	$63, %rcx
 1533 22f6 48F7EB   		imulq	%rbx
 1534 22f9 4889D3   		movq	%rdx, %rbx
 1535 22fc 48C1FB07 		sarq	$7, %rbx
 1536 2300 4829CB   		subq	%rcx, %rbx
 1537 2303 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1537      00
 1538 2308 4889DE   		movq	%rbx, %rsi
 1539 230b 4889C7   		movq	%rax, %rdi
 1540 230e E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1540      00
 1541 2313 BE000000 		movl	$.LC104, %esi
 1541      00
 1542 2318 4889C7   		movq	%rax, %rdi
 1543 231b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1543      00
 1544 2320 4889C7   		movq	%rax, %rdi
 1545 2323 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1545      00
 1546 2328 488DBC24 		leaq	2224(%rsp), %rdi
 1546      B0080000 
 1547 2330 E8000000 		call	_ZNSo5flushEv
GAS LISTING /tmp/cc2s6cHB.s 			page 51


 1547      00
 1548 2335 488DBC24 		leaq	2224(%rsp), %rdi
 1548      B0080000 
 1549 233d E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
 1549      00
 1550 2342 488DBC24 		leaq	2224(%rsp), %rdi
 1550      B0080000 
 1551 234a E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1551      00
 1552 234f 31C0     		xorl	%eax, %eax
 1553 2351 488BBC24 		movq	2744(%rsp), %rdi
 1553      B80A0000 
 1554 2359 6448333C 		xorq	%fs:40, %rdi
 1554      25280000 
 1554      00
 1555 2362 752F     		jne	.L70
 1556 2364 488D65D8 		leaq	-40(%rbp), %rsp
 1557 2368 5B       		popq	%rbx
 1558 2369 415C     		popq	%r12
 1559 236b 415D     		popq	%r13
 1560 236d 415E     		popq	%r14
 1561 236f 415F     		popq	%r15
 1562 2371 5D       		popq	%rbp
 1563              		.cfi_remember_state
 1564              		.cfi_def_cfa 7, 8
 1565 2372 C3       		ret
 1566              	.L69:
 1567              		.cfi_restore_state
 1568 2373 E8000000 		call	_ZSt16__throw_bad_castv
 1568      00
 1569              	.LEHE1:
 1570              	.L57:
 1571              	.L56:
 1572 2378 488DBC24 		leaq	2224(%rsp), %rdi
 1572      B0080000 
 1573 2380 4889C3   		movq	%rax, %rbx
 1574 2383 C5F877   		vzeroupper
 1575 2386 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1575      00
 1576 238b 4889DF   		movq	%rbx, %rdi
 1577              	.LEHB2:
 1578 238e E8000000 		call	_Unwind_Resume
 1578      00
 1579              	.LEHE2:
 1580              	.L70:
 1581 2393 E8000000 		call	__stack_chk_fail
 1581      00
 1582              		.cfi_endproc
 1583              	.LFE4614:
 1584              		.globl	__gxx_personality_v0
 1585              		.section	.gcc_except_table,"a",@progbits
 1586              	.LLSDA4614:
 1587 0000 FF       		.byte	0xff
 1588 0001 FF       		.byte	0xff
 1589 0002 01       		.byte	0x1
 1590 0003 10       		.uleb128 .LLSDACSE4614-.LLSDACSB4614
 1591              	.LLSDACSB4614:
GAS LISTING /tmp/cc2s6cHB.s 			page 52


 1592 0004 5C       		.uleb128 .LEHB0-.LFB4614
 1593 0005 05       		.uleb128 .LEHE0-.LEHB0
 1594 0006 00       		.uleb128 0
 1595 0007 00       		.uleb128 0
 1596 0008 E343     		.uleb128 .LEHB1-.LFB4614
 1597 000a 9503     		.uleb128 .LEHE1-.LEHB1
 1598 000c F846     		.uleb128 .L56-.LFB4614
 1599 000e 00       		.uleb128 0
 1600 000f 8E47     		.uleb128 .LEHB2-.LFB4614
 1601 0011 05       		.uleb128 .LEHE2-.LEHB2
 1602 0012 00       		.uleb128 0
 1603 0013 00       		.uleb128 0
 1604              	.LLSDACSE4614:
 1605              		.section	.text.startup
 1606              		.size	main, .-main
 1607 2398 0F1F8400 		.p2align 4,,15
 1607      00000000 
 1608              		.type	_GLOBAL__sub_I_main, @function
 1609              	_GLOBAL__sub_I_main:
 1610              	.LFB4954:
 1611              		.cfi_startproc
 1612 23a0 4883EC08 		subq	$8, %rsp
 1613              		.cfi_def_cfa_offset 16
 1614 23a4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1614      00
 1615 23a9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1615      00
 1616 23ae BA000000 		movl	$__dso_handle, %edx
 1616      00
 1617 23b3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1617      00
 1618 23b8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1618      00
 1619 23bd 4883C408 		addq	$8, %rsp
 1620              		.cfi_def_cfa_offset 8
 1621 23c1 E9000000 		jmp	__cxa_atexit
 1621      00
 1622              		.cfi_endproc
 1623              	.LFE4954:
 1624              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1625              		.section	.init_array,"aw"
 1626              		.align 8
 1627 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1627      00000000 
 1628              		.section	.rodata
 1629              		.align 32
 1630              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1631              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1632              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1633 0000 00000000 		.long	0
 1634 0004 00000080 		.long	-2147483648
 1635 0008 00000000 		.long	0
 1636 000c 00000080 		.long	-2147483648
 1637 0010 00000000 		.long	0
 1638 0014 00000080 		.long	-2147483648
 1639 0018 00000000 		.long	0
 1640 001c 00000080 		.long	-2147483648
GAS LISTING /tmp/cc2s6cHB.s 			page 53


 1641              		.align 32
 1642              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1643              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1644              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1645 0020 FFFFFFFF 		.long	-1
 1646 0024 FFFFFF7F 		.long	2147483647
 1647 0028 FFFFFFFF 		.long	-1
 1648 002c FFFFFF7F 		.long	2147483647
 1649 0030 FFFFFFFF 		.long	-1
 1650 0034 FFFFFF7F 		.long	2147483647
 1651 0038 FFFFFFFF 		.long	-1
 1652 003c FFFFFF7F 		.long	2147483647
 1653              		.local	_ZStL8__ioinit
 1654              		.comm	_ZStL8__ioinit,1,1
 1655              		.section	.rodata.cst8,"aM",@progbits,8
 1656              		.align 8
 1657              	.LC0:
 1658 0000 33333333 		.long	858993459
 1659 0004 3333D33F 		.long	1070805811
 1660              		.align 8
 1661              	.LC1:
 1662 0008 9A999999 		.long	2576980378
 1663 000c 9999C93F 		.long	1070176665
 1664              		.section	.rodata.cst32,"aM",@progbits,32
 1665              		.align 32
 1666              	.LC3:
 1667 0000 83C8C96D 		.long	1841940611
 1668 0004 305FE43F 		.long	1071931184
 1669 0008 83C8C96D 		.long	1841940611
 1670 000c 305FE43F 		.long	1071931184
 1671 0010 83C8C96D 		.long	1841940611
 1672 0014 305FE43F 		.long	1071931184
 1673 0018 83C8C96D 		.long	1841940611
 1674 001c 305FE43F 		.long	1071931184
 1675              		.align 32
 1676              	.LC4:
 1677 0020 00000050 		.long	1342177280
 1678 0024 FB21F93F 		.long	1073291771
 1679 0028 00000050 		.long	1342177280
 1680 002c FB21F93F 		.long	1073291771
 1681 0030 00000050 		.long	1342177280
 1682 0034 FB21F93F 		.long	1073291771
 1683 0038 00000050 		.long	1342177280
 1684 003c FB21F93F 		.long	1073291771
 1685              		.align 32
 1686              	.LC5:
 1687 0040 00000060 		.long	1610612736
 1688 0044 B410513E 		.long	1045500084
 1689 0048 00000060 		.long	1610612736
 1690 004c B410513E 		.long	1045500084
 1691 0050 00000060 		.long	1610612736
 1692 0054 B410513E 		.long	1045500084
 1693 0058 00000060 		.long	1610612736
 1694 005c B410513E 		.long	1045500084
 1695              		.align 32
 1696              	.LC6:
 1697 0060 075C1433 		.long	856972295
GAS LISTING /tmp/cc2s6cHB.s 			page 54


 1698 0064 26A6913C 		.long	1016178214
 1699 0068 075C1433 		.long	856972295
 1700 006c 26A6913C 		.long	1016178214
 1701 0070 075C1433 		.long	856972295
 1702 0074 26A6913C 		.long	1016178214
 1703 0078 075C1433 		.long	856972295
 1704 007c 26A6913C 		.long	1016178214
 1705              		.align 32
 1706              	.LC7:
 1707 0080 D0F71011 		.long	286324688
 1708 0084 1111813F 		.long	1065423121
 1709 0088 D0F71011 		.long	286324688
 1710 008c 1111813F 		.long	1065423121
 1711 0090 D0F71011 		.long	286324688
 1712 0094 1111813F 		.long	1065423121
 1713 0098 D0F71011 		.long	286324688
 1714 009c 1111813F 		.long	1065423121
 1715              		.align 32
 1716              	.LC8:
 1717 00a0 48555555 		.long	1431655752
 1718 00a4 5555C5BF 		.long	-1077586603
 1719 00a8 48555555 		.long	1431655752
 1720 00ac 5555C5BF 		.long	-1077586603
 1721 00b0 48555555 		.long	1431655752
 1722 00b4 5555C5BF 		.long	-1077586603
 1723 00b8 48555555 		.long	1431655752
 1724 00bc 5555C5BF 		.long	-1077586603
 1725              		.align 32
 1726              	.LC9:
 1727 00c0 CD9CD11F 		.long	533830861
 1728 00c4 FDD8E53D 		.long	1038473469
 1729 00c8 CD9CD11F 		.long	533830861
 1730 00cc FDD8E53D 		.long	1038473469
 1731 00d0 CD9CD11F 		.long	533830861
 1732 00d4 FDD8E53D 		.long	1038473469
 1733 00d8 CD9CD11F 		.long	533830861
 1734 00dc FDD8E53D 		.long	1038473469
 1735              		.align 32
 1736              	.LC10:
 1737 00e0 5D1F29A9 		.long	2838044509
 1738 00e4 E5E55ABE 		.long	-1101339163
 1739 00e8 5D1F29A9 		.long	2838044509
 1740 00ec E5E55ABE 		.long	-1101339163
 1741 00f0 5D1F29A9 		.long	2838044509
 1742 00f4 E5E55ABE 		.long	-1101339163
 1743 00f8 5D1F29A9 		.long	2838044509
 1744 00fc E5E55ABE 		.long	-1101339163
 1745              		.align 32
 1746              	.LC11:
 1747 0100 A1487D56 		.long	1451051169
 1748 0104 E31DC73E 		.long	1053236707
 1749 0108 A1487D56 		.long	1451051169
 1750 010c E31DC73E 		.long	1053236707
 1751 0110 A1487D56 		.long	1451051169
 1752 0114 E31DC73E 		.long	1053236707
 1753 0118 A1487D56 		.long	1451051169
 1754 011c E31DC73E 		.long	1053236707
GAS LISTING /tmp/cc2s6cHB.s 			page 55


 1755              		.align 32
 1756              	.LC12:
 1757 0120 03DFBF19 		.long	432004867
 1758 0124 A0012ABF 		.long	-1087766112
 1759 0128 03DFBF19 		.long	432004867
 1760 012c A0012ABF 		.long	-1087766112
 1761 0130 03DFBF19 		.long	432004867
 1762 0134 A0012ABF 		.long	-1087766112
 1763 0138 03DFBF19 		.long	432004867
 1764 013c A0012ABF 		.long	-1087766112
 1765              		.align 32
 1766              	.LC13:
 1767 0140 914FC116 		.long	381767569
 1768 0144 6CC156BF 		.long	-1084833428
 1769 0148 914FC116 		.long	381767569
 1770 014c 6CC156BF 		.long	-1084833428
 1771 0150 914FC116 		.long	381767569
 1772 0154 6CC156BF 		.long	-1084833428
 1773 0158 914FC116 		.long	381767569
 1774 015c 6CC156BF 		.long	-1084833428
 1775              		.align 32
 1776              	.LC14:
 1777 0160 4B555555 		.long	1431655755
 1778 0164 5555A53F 		.long	1067799893
 1779 0168 4B555555 		.long	1431655755
 1780 016c 5555A53F 		.long	1067799893
 1781 0170 4B555555 		.long	1431655755
 1782 0174 5555A53F 		.long	1067799893
 1783 0178 4B555555 		.long	1431655755
 1784 017c 5555A53F 		.long	1067799893
 1785              		.align 32
 1786              	.LC15:
 1787 0180 9B1A86A0 		.long	2693143195
 1788 0184 49FAA8BD 		.long	-1112999351
 1789 0188 9B1A86A0 		.long	2693143195
 1790 018c 49FAA8BD 		.long	-1112999351
 1791 0190 9B1A86A0 		.long	2693143195
 1792 0194 49FAA8BD 		.long	-1112999351
 1793 0198 9B1A86A0 		.long	2693143195
 1794 019c 49FAA8BD 		.long	-1112999351
 1795              		.align 32
 1796              	.LC16:
 1797 01a0 053F4E7B 		.long	2068725509
 1798 01a4 9DEE213E 		.long	1042411165
 1799 01a8 053F4E7B 		.long	2068725509
 1800 01ac 9DEE213E 		.long	1042411165
 1801 01b0 053F4E7B 		.long	2068725509
 1802 01b4 9DEE213E 		.long	1042411165
 1803 01b8 053F4E7B 		.long	2068725509
 1804 01bc 9DEE213E 		.long	1042411165
 1805              		.align 32
 1806              	.LC17:
 1807 01c0 C64BAC7E 		.long	2125220806
 1808 01c4 4F7E92BE 		.long	-1097695665
 1809 01c8 C64BAC7E 		.long	2125220806
 1810 01cc 4F7E92BE 		.long	-1097695665
 1811 01d0 C64BAC7E 		.long	2125220806
GAS LISTING /tmp/cc2s6cHB.s 			page 56


 1812 01d4 4F7E92BE 		.long	-1097695665
 1813 01d8 C64BAC7E 		.long	2125220806
 1814 01dc 4F7E92BE 		.long	-1097695665
 1815              		.align 32
 1816              	.LC18:
 1817 01e0 F544C819 		.long	432555253
 1818 01e4 A001FA3E 		.long	1056571808
 1819 01e8 F544C819 		.long	432555253
 1820 01ec A001FA3E 		.long	1056571808
 1821 01f0 F544C819 		.long	432555253
 1822 01f4 A001FA3E 		.long	1056571808
 1823 01f8 F544C819 		.long	432555253
 1824 01fc A001FA3E 		.long	1056571808
 1825              		.align 32
 1826              	.LC19:
 1827 0200 00000000 		.long	0
 1828 0204 0000E03F 		.long	1071644672
 1829 0208 00000000 		.long	0
 1830 020c 0000E03F 		.long	1071644672
 1831 0210 00000000 		.long	0
 1832 0214 0000E03F 		.long	1071644672
 1833 0218 00000000 		.long	0
 1834 021c 0000E03F 		.long	1071644672
 1835              		.align 32
 1836              	.LC20:
 1837 0220 00000000 		.long	0
 1838 0224 0000F03F 		.long	1072693248
 1839 0228 00000000 		.long	0
 1840 022c 0000F03F 		.long	1072693248
 1841 0230 00000000 		.long	0
 1842 0234 0000F03F 		.long	1072693248
 1843 0238 00000000 		.long	0
 1844 023c 0000F03F 		.long	1072693248
 1845              		.section	.rodata.cst16,"aM",@progbits,16
 1846              		.align 16
 1847              	.LC21:
 1848 0000 01000000 		.quad	1
 1848      00000000 
 1849 0008 01000000 		.quad	1
 1849      00000000 
 1850              		.align 16
 1851              	.LC22:
 1852 0010 00000000 		.quad	36028797018963968
 1852      00008000 
 1853 0018 00000000 		.quad	36028797018963968
 1853      00008000 
 1854              		.align 16
 1855              	.LC23:
 1856 0020 00000000 		.quad	-9007199254740992
 1856      0000E0FF 
 1857 0028 00000000 		.quad	-9007199254740992
 1857      0000E0FF 
 1858              		.align 16
 1859              	.LC24:
 1860 0030 02000000 		.quad	2
 1860      00000000 
 1861 0038 02000000 		.quad	2
GAS LISTING /tmp/cc2s6cHB.s 			page 57


 1861      00000000 
 1862              		.section	.rodata.cst32
 1863              		.align 32
 1864              	.LC25:
 1865 0240 33333333 		.long	858993459
 1866 0244 3333D33F 		.long	1070805811
 1867 0248 33333333 		.long	858993459
 1868 024c 3333D33F 		.long	1070805811
 1869 0250 33333333 		.long	858993459
 1870 0254 3333D33F 		.long	1070805811
 1871 0258 33333333 		.long	858993459
 1872 025c 3333D33F 		.long	1070805811
 1873              		.align 32
 1874              	.LC26:
 1875 0260 9A999999 		.long	2576980378
 1876 0264 9999C93F 		.long	1070176665
 1877 0268 9A999999 		.long	2576980378
 1878 026c 9999C93F 		.long	1070176665
 1879 0270 9A999999 		.long	2576980378
 1880 0274 9999C93F 		.long	1070176665
 1881 0278 9A999999 		.long	2576980378
 1882 027c 9999C93F 		.long	1070176665
 1883              		.align 32
 1884              	.LC27:
 1885 0280 CDCCCCCC 		.long	3435973837
 1886 0284 CCCCCC3F 		.long	1070386380
 1887 0288 CDCCCCCC 		.long	3435973837
 1888 028c CCCCCC3F 		.long	1070386380
 1889 0290 CDCCCCCC 		.long	3435973837
 1890 0294 CCCCCC3F 		.long	1070386380
 1891 0298 CDCCCCCC 		.long	3435973837
 1892 029c CCCCCC3F 		.long	1070386380
 1893              		.align 32
 1894              	.LC28:
 1895 02a0 33333333 		.long	858993459
 1896 02a4 3333B33F 		.long	1068708659
 1897 02a8 33333333 		.long	858993459
 1898 02ac 3333B33F 		.long	1068708659
 1899 02b0 33333333 		.long	858993459
 1900 02b4 3333B33F 		.long	1068708659
 1901 02b8 33333333 		.long	858993459
 1902 02bc 3333B33F 		.long	1068708659
 1903              		.align 32
 1904              	.LC29:
 1905 02c0 33333333 		.long	858993459
 1906 02c4 3333F33F 		.long	1072902963
 1907 02c8 33333333 		.long	858993459
 1908 02cc 3333F33F 		.long	1072902963
 1909 02d0 33333333 		.long	858993459
 1910 02d4 3333F33F 		.long	1072902963
 1911 02d8 33333333 		.long	858993459
 1912 02dc 3333F33F 		.long	1072902963
 1913              		.align 32
 1914              	.LC30:
 1915 02e0 CDCCCCCC 		.long	3435973837
 1916 02e4 CCCCECBF 		.long	-1075000116
 1917 02e8 CDCCCCCC 		.long	3435973837
GAS LISTING /tmp/cc2s6cHB.s 			page 58


 1918 02ec CCCCECBF 		.long	-1075000116
 1919 02f0 CDCCCCCC 		.long	3435973837
 1920 02f4 CCCCECBF 		.long	-1075000116
 1921 02f8 CDCCCCCC 		.long	3435973837
 1922 02fc CCCCECBF 		.long	-1075000116
 1923              		.align 32
 1924              	.LC31:
 1925 0300 33333333 		.long	858993459
 1926 0304 3333E33F 		.long	1071854387
 1927 0308 33333333 		.long	858993459
 1928 030c 3333E33F 		.long	1071854387
 1929 0310 33333333 		.long	858993459
 1930 0314 3333E33F 		.long	1071854387
 1931 0318 33333333 		.long	858993459
 1932 031c 3333E33F 		.long	1071854387
 1933              		.align 32
 1934              	.LC32:
 1935 0320 DA4B682F 		.long	795364314
 1936 0324 A1BDF43F 		.long	1073003937
 1937 0328 DA4B682F 		.long	795364314
 1938 032c A1BDF43F 		.long	1073003937
 1939 0330 DA4B682F 		.long	795364314
 1940 0334 A1BDF43F 		.long	1073003937
 1941 0338 DA4B682F 		.long	795364314
 1942 033c A1BDF43F 		.long	1073003937
 1943              		.align 32
 1944              	.LC33:
 1945 0340 D94B682F 		.long	795364313
 1946 0344 A1BD04C0 		.long	-1073431135
 1947 0348 D94B682F 		.long	795364313
 1948 034c A1BD04C0 		.long	-1073431135
 1949 0350 D94B682F 		.long	795364313
 1950 0354 A1BD04C0 		.long	-1073431135
 1951 0358 D94B682F 		.long	795364313
 1952 035c A1BD04C0 		.long	-1073431135
 1953              		.align 32
 1954              	.LC34:
 1955 0360 00000000 		.long	0
 1956 0364 00000440 		.long	1074003968
 1957 0368 00000000 		.long	0
 1958 036c 00000440 		.long	1074003968
 1959 0370 00000000 		.long	0
 1960 0374 00000440 		.long	1074003968
 1961 0378 00000000 		.long	0
 1962 037c 00000440 		.long	1074003968
 1963              		.align 32
 1964              	.LC35:
 1965 0380 16A1BD84 		.long	2227020054
 1966 0384 F612CABF 		.long	-1077275914
 1967 0388 16A1BD84 		.long	2227020054
 1968 038c F612CABF 		.long	-1077275914
 1969 0390 16A1BD84 		.long	2227020054
 1970 0394 F612CABF 		.long	-1077275914
 1971 0398 16A1BD84 		.long	2227020054
 1972 039c F612CABF 		.long	-1077275914
 1973              		.align 32
 1974              	.LC36:
GAS LISTING /tmp/cc2s6cHB.s 			page 59


 1975 03a0 00000000 		.long	0
 1976 03a4 00A0AF3F 		.long	1068474368
 1977 03a8 00000000 		.long	0
 1978 03ac 00A0AF3F 		.long	1068474368
 1979 03b0 00000000 		.long	0
 1980 03b4 00A0AF3F 		.long	1068474368
 1981 03b8 00000000 		.long	0
 1982 03bc 00A0AF3F 		.long	1068474368
 1983              		.align 32
 1984              	.LC37:
 1985 03c0 B397D05E 		.long	1590728627
 1986 03c4 429FD93F 		.long	1071226690
 1987 03c8 B397D05E 		.long	1590728627
 1988 03cc 429FD93F 		.long	1071226690
 1989 03d0 B397D05E 		.long	1590728627
 1990 03d4 429FD93F 		.long	1071226690
 1991 03d8 B397D05E 		.long	1590728627
 1992 03dc 429FD93F 		.long	1071226690
 1993              		.align 32
 1994              	.LC38:
 1995 03e0 BD84F612 		.long	318145725
 1996 03e4 DA4BA53F 		.long	1067797466
 1997 03e8 BD84F612 		.long	318145725
 1998 03ec DA4BA53F 		.long	1067797466
 1999 03f0 BD84F612 		.long	318145725
 2000 03f4 DA4BA53F 		.long	1067797466
 2001 03f8 BD84F612 		.long	318145725
 2002 03fc DA4BA53F 		.long	1067797466
 2003              		.align 32
 2004              	.LC39:
 2005 0400 00000000 		.long	0
 2006 0404 00E0D53F 		.long	1070981120
 2007 0408 00000000 		.long	0
 2008 040c 00E0D53F 		.long	1070981120
 2009 0410 00000000 		.long	0
 2010 0414 00E0D53F 		.long	1070981120
 2011 0418 00000000 		.long	0
 2012 041c 00E0D53F 		.long	1070981120
 2013              		.align 32
 2014              	.LC40:
 2015 0420 347B09ED 		.long	3976821556
 2016 0424 25349E3F 		.long	1067332645
 2017 0428 347B09ED 		.long	3976821556
 2018 042c 25349E3F 		.long	1067332645
 2019 0430 347B09ED 		.long	3976821556
 2020 0434 25349E3F 		.long	1067332645
 2021 0438 347B09ED 		.long	3976821556
 2022 043c 25349E3F 		.long	1067332645
 2023              		.align 32
 2024              	.LC41:
 2025 0440 00000000 		.long	0
 2026 0444 0000EC3F 		.long	1072431104
 2027 0448 00000000 		.long	0
 2028 044c 0000EC3F 		.long	1072431104
 2029 0450 00000000 		.long	0
 2030 0454 0000EC3F 		.long	1072431104
 2031 0458 00000000 		.long	0
GAS LISTING /tmp/cc2s6cHB.s 			page 60


 2032 045c 0000EC3F 		.long	1072431104
 2033              		.align 32
 2034              	.LC42:
 2035 0460 B0B4DA85 		.long	2245702832
 2036 0464 A680D23F 		.long	1070760102
 2037 0468 B0B4DA85 		.long	2245702832
 2038 046c A680D23F 		.long	1070760102
 2039 0470 B0B4DA85 		.long	2245702832
 2040 0474 A680D23F 		.long	1070760102
 2041 0478 B0B4DA85 		.long	2245702832
 2042 047c A680D23F 		.long	1070760102
 2043              		.align 32
 2044              	.LC43:
 2045 0480 27691676 		.long	1981180199
 2046 0484 9FEFCA3F 		.long	1070264223
 2047 0488 27691676 		.long	1981180199
 2048 048c 9FEFCA3F 		.long	1070264223
 2049 0490 27691676 		.long	1981180199
 2050 0494 9FEFCA3F 		.long	1070264223
 2051 0498 27691676 		.long	1981180199
 2052 049c 9FEFCA3F 		.long	1070264223
 2053              		.align 32
 2054              	.LC44:
 2055 04a0 7EB22B2E 		.long	774615678
 2056 04a4 D0C3D93F 		.long	1071236048
 2057 04a8 7EB22B2E 		.long	774615678
 2058 04ac D0C3D93F 		.long	1071236048
 2059 04b0 7EB22B2E 		.long	774615678
 2060 04b4 D0C3D93F 		.long	1071236048
 2061 04b8 7EB22B2E 		.long	774615678
 2062 04bc D0C3D93F 		.long	1071236048
 2063              		.align 32
 2064              	.LC45:
 2065 04c0 E890B943 		.long	1136234728
 2066 04c4 E60EB93F 		.long	1069092582
 2067 04c8 E890B943 		.long	1136234728
 2068 04cc E60EB93F 		.long	1069092582
 2069 04d0 E890B943 		.long	1136234728
 2070 04d4 E60EB93F 		.long	1069092582
 2071 04d8 E890B943 		.long	1136234728
 2072 04dc E60EB93F 		.long	1069092582
 2073              		.align 32
 2074              	.LC46:
 2075 04e0 48A5D52E 		.long	785753416
 2076 04e4 3405A4BF 		.long	-1079769804
 2077 04e8 48A5D52E 		.long	785753416
 2078 04ec 3405A4BF 		.long	-1079769804
 2079 04f0 48A5D52E 		.long	785753416
 2080 04f4 3405A4BF 		.long	-1079769804
 2081 04f8 48A5D52E 		.long	785753416
 2082 04fc 3405A4BF 		.long	-1079769804
 2083              		.align 32
 2084              	.LC47:
 2085 0500 82244992 		.long	2454267010
 2086 0504 24C9933F 		.long	1066649892
 2087 0508 82244992 		.long	2454267010
 2088 050c 24C9933F 		.long	1066649892
GAS LISTING /tmp/cc2s6cHB.s 			page 61


 2089 0510 82244992 		.long	2454267010
 2090 0514 24C9933F 		.long	1066649892
 2091 0518 82244992 		.long	2454267010
 2092 051c 24C9933F 		.long	1066649892
 2093              		.align 32
 2094              	.LC48:
 2095 0520 06F37686 		.long	2255942406
 2096 0524 C47CA13F 		.long	1067547844
 2097 0528 06F37686 		.long	2255942406
 2098 052c C47CA13F 		.long	1067547844
 2099 0530 06F37686 		.long	2255942406
 2100 0534 C47CA13F 		.long	1067547844
 2101 0538 06F37686 		.long	2255942406
 2102 053c C47CA13F 		.long	1067547844
 2103              		.align 32
 2104              	.LC49:
 2105 0540 1A55F19A 		.long	2599507226
 2106 0544 DB1D93BF 		.long	-1080877605
 2107 0548 1A55F19A 		.long	2599507226
 2108 054c DB1D93BF 		.long	-1080877605
 2109 0550 1A55F19A 		.long	2599507226
 2110 0554 DB1D93BF 		.long	-1080877605
 2111 0558 1A55F19A 		.long	2599507226
 2112 055c DB1D93BF 		.long	-1080877605
 2113              		.align 32
 2114              	.LC50:
 2115 0560 64599665 		.long	1704352100
 2116 0564 5996713F 		.long	1064408665
 2117 0568 64599665 		.long	1704352100
 2118 056c 5996713F 		.long	1064408665
 2119 0570 64599665 		.long	1704352100
 2120 0574 5996713F 		.long	1064408665
 2121 0578 64599665 		.long	1704352100
 2122 057c 5996713F 		.long	1064408665
 2123              		.align 32
 2124              	.LC51:
 2125 0580 95D626E8 		.long	3894859413
 2126 0584 0B2E113E 		.long	1041313291
 2127 0588 95D626E8 		.long	3894859413
 2128 058c 0B2E113E 		.long	1041313291
 2129 0590 95D626E8 		.long	3894859413
 2130 0594 0B2E113E 		.long	1041313291
 2131 0598 95D626E8 		.long	3894859413
 2132 059c 0B2E113E 		.long	1041313291
 2133              		.section	.rodata.cst16
 2134              		.align 16
 2135              	.LC52:
 2136 0040 FFFFFFFF 		.quad	4503599627370495
 2136      FFFF0F00 
 2137 0048 FFFFFFFF 		.quad	4503599627370495
 2137      FFFF0F00 
 2138              		.align 16
 2139              	.LC53:
 2140 0050 00000000 		.quad	4602678819172646912
 2140      0000E03F 
 2141 0058 00000000 		.quad	4602678819172646912
 2141      0000E03F 
GAS LISTING /tmp/cc2s6cHB.s 			page 62


 2142              		.align 16
 2143              	.LC54:
 2144 0060 00000000 		.quad	4841369599423283200
 2144      00003043 
 2145 0068 00000000 		.quad	4841369599423283200
 2145      00003043 
 2146              		.section	.rodata.cst32
 2147              		.align 32
 2148              	.LC55:
 2149 05a0 FF030000 		.long	1023
 2150 05a4 00003043 		.long	1127219200
 2151 05a8 FF030000 		.long	1023
 2152 05ac 00003043 		.long	1127219200
 2153 05b0 FF030000 		.long	1023
 2154 05b4 00003043 		.long	1127219200
 2155 05b8 FF030000 		.long	1023
 2156 05bc 00003043 		.long	1127219200
 2157              		.align 32
 2158              	.LC56:
 2159 05c0 CD3B7F66 		.long	1719614413
 2160 05c4 9EA0E63F 		.long	1072079006
 2161 05c8 CD3B7F66 		.long	1719614413
 2162 05cc 9EA0E63F 		.long	1072079006
 2163 05d0 CD3B7F66 		.long	1719614413
 2164 05d4 9EA0E63F 		.long	1072079006
 2165 05d8 CD3B7F66 		.long	1719614413
 2166 05dc 9EA0E63F 		.long	1072079006
 2167              		.align 32
 2168              	.LC57:
 2169 05e0 4DC84B92 		.long	2454440013
 2170 05e4 D6EF3140 		.long	1077014486
 2171 05e8 4DC84B92 		.long	2454440013
 2172 05ec D6EF3140 		.long	1077014486
 2173 05f0 4DC84B92 		.long	2454440013
 2174 05f4 D6EF3140 		.long	1077014486
 2175 05f8 4DC84B92 		.long	2454440013
 2176 05fc D6EF3140 		.long	1077014486
 2177              		.align 32
 2178              	.LC58:
 2179 0600 F8DC7E7D 		.long	2105466104
 2180 0604 63D51E40 		.long	1075762531
 2181 0608 F8DC7E7D 		.long	2105466104
 2182 060c 63D51E40 		.long	1075762531
 2183 0610 F8DC7E7D 		.long	2105466104
 2184 0614 63D51E40 		.long	1075762531
 2185 0618 F8DC7E7D 		.long	2105466104
 2186 061c 63D51E40 		.long	1075762531
 2187              		.align 32
 2188              	.LC59:
 2189 0620 B01BC393 		.long	2479037360
 2190 0624 C2B41A3F 		.long	1058714818
 2191 0628 B01BC393 		.long	2479037360
 2192 062c C2B41A3F 		.long	1058714818
 2193 0630 B01BC393 		.long	2479037360
 2194 0634 C2B41A3F 		.long	1058714818
 2195 0638 B01BC393 		.long	2479037360
 2196 063c C2B41A3F 		.long	1058714818
GAS LISTING /tmp/cc2s6cHB.s 			page 63


 2197              		.align 32
 2198              	.LC60:
 2199 0640 F252563F 		.long	1062621938
 2200 0644 F5D6DF3F 		.long	1071634165
 2201 0648 F252563F 		.long	1062621938
 2202 064c F5D6DF3F 		.long	1071634165
 2203 0650 F252563F 		.long	1062621938
 2204 0654 F5D6DF3F 		.long	1071634165
 2205 0658 F252563F 		.long	1062621938
 2206 065c F5D6DF3F 		.long	1071634165
 2207              		.align 32
 2208              	.LC61:
 2209 0660 116992ED 		.long	3985795345
 2210 0664 BAD21240 		.long	1074975418
 2211 0668 116992ED 		.long	3985795345
 2212 066c BAD21240 		.long	1074975418
 2213 0670 116992ED 		.long	3985795345
 2214 0674 BAD21240 		.long	1074975418
 2215 0678 116992ED 		.long	3985795345
 2216 067c BAD21240 		.long	1074975418
 2217              		.align 32
 2218              	.LC62:
 2219 0680 2EEB3EC6 		.long	3326012206
 2220 0684 72FF2C40 		.long	1076690802
 2221 0688 2EEB3EC6 		.long	3326012206
 2222 068c 72FF2C40 		.long	1076690802
 2223 0690 2EEB3EC6 		.long	3326012206
 2224 0694 72FF2C40 		.long	1076690802
 2225 0698 2EEB3EC6 		.long	3326012206
 2226 069c 72FF2C40 		.long	1076690802
 2227              		.align 32
 2228              	.LC63:
 2229 06a0 21AE5EEB 		.long	3948850721
 2230 06a4 E2C95140 		.long	1079101922
 2231 06a8 21AE5EEB 		.long	3948850721
 2232 06ac E2C95140 		.long	1079101922
 2233 06b0 21AE5EEB 		.long	3948850721
 2234 06b4 E2C95140 		.long	1079101922
 2235 06b8 21AE5EEB 		.long	3948850721
 2236 06bc E2C95140 		.long	1079101922
 2237              		.align 32
 2238              	.LC64:
 2239 06c0 B2251F9E 		.long	2652841394
 2240 06c4 0A203740 		.long	1077354506
 2241 06c8 B2251F9E 		.long	2652841394
 2242 06cc 0A203740 		.long	1077354506
 2243 06d0 B2251F9E 		.long	2652841394
 2244 06d4 0A203740 		.long	1077354506
 2245 06d8 B2251F9E 		.long	2652841394
 2246 06dc 0A203740 		.long	1077354506
 2247              		.align 32
 2248              	.LC65:
 2249 06e0 8EEF97AE 		.long	2929192846
 2250 06e4 20932640 		.long	1076269856
 2251 06e8 8EEF97AE 		.long	2929192846
 2252 06ec 20932640 		.long	1076269856
 2253 06f0 8EEF97AE 		.long	2929192846
GAS LISTING /tmp/cc2s6cHB.s 			page 64


 2254 06f4 20932640 		.long	1076269856
 2255 06f8 8EEF97AE 		.long	2929192846
 2256 06fc 20932640 		.long	1076269856
 2257              		.align 32
 2258              	.LC66:
 2259 0700 33C0194E 		.long	1310310451
 2260 0704 2C9D4640 		.long	1078369580
 2261 0708 33C0194E 		.long	1310310451
 2262 070c 2C9D4640 		.long	1078369580
 2263 0710 33C0194E 		.long	1310310451
 2264 0714 2C9D4640 		.long	1078369580
 2265 0718 33C0194E 		.long	1310310451
 2266 071c 2C9D4640 		.long	1078369580
 2267              		.align 32
 2268              	.LC67:
 2269 0720 BDBD26A3 		.long	2737225149
 2270 0724 33BF5440 		.long	1079295795
 2271 0728 BDBD26A3 		.long	2737225149
 2272 072c 33BF5440 		.long	1079295795
 2273 0730 BDBD26A3 		.long	2737225149
 2274 0734 33BF5440 		.long	1079295795
 2275 0738 BDBD26A3 		.long	2737225149
 2276 073c 33BF5440 		.long	1079295795
 2277              		.align 32
 2278              	.LC68:
 2279 0740 A80C615C 		.long	1549864104
 2280 0744 10D02BBF 		.long	-1087647728
 2281 0748 A80C615C 		.long	1549864104
 2282 074c 10D02BBF 		.long	-1087647728
 2283 0750 A80C615C 		.long	1549864104
 2284 0754 10D02BBF 		.long	-1087647728
 2285 0758 A80C615C 		.long	1549864104
 2286 075c 10D02BBF 		.long	-1087647728
 2287              		.align 32
 2288              	.LC69:
 2289 0760 00000000 		.long	0
 2290 0764 0030E63F 		.long	1072050176
 2291 0768 00000000 		.long	0
 2292 076c 0030E63F 		.long	1072050176
 2293 0770 00000000 		.long	0
 2294 0774 0030E63F 		.long	1072050176
 2295 0778 00000000 		.long	0
 2296 077c 0030E63F 		.long	1072050176
 2297              		.align 32
 2298              	.LC70:
 2299 0780 00000000 		.long	0
 2300 0784 00001000 		.long	1048576
 2301 0788 00000000 		.long	0
 2302 078c 00001000 		.long	1048576
 2303 0790 00000000 		.long	0
 2304 0794 00001000 		.long	1048576
 2305 0798 00000000 		.long	0
 2306 079c 00001000 		.long	1048576
 2307              		.align 32
 2308              	.LC71:
 2309 07a0 00000020 		.long	536870912
 2310 07a4 2000F87F 		.long	2146959392
GAS LISTING /tmp/cc2s6cHB.s 			page 65


 2311 07a8 00000020 		.long	536870912
 2312 07ac 2000F87F 		.long	2146959392
 2313 07b0 00000020 		.long	536870912
 2314 07b4 2000F87F 		.long	2146959392
 2315 07b8 00000020 		.long	536870912
 2316 07bc 2000F87F 		.long	2146959392
 2317              		.section	.rodata.cst16
 2318              		.align 16
 2319              	.LC72:
 2320 0070 00000000 		.long	0
 2321 0074 0000F07F 		.long	2146435072
 2322 0078 00000000 		.long	0
 2323 007c 0000F07F 		.long	2146435072
 2324              		.align 16
 2325              	.LC73:
 2326 0080 00000000 		.quad	9218868437227405312
 2326      0000F07F 
 2327 0088 00000000 		.quad	9218868437227405312
 2327      0000F07F 
 2328              		.section	.rodata.cst32
 2329              		.align 32
 2330              	.LC74:
 2331 07c0 FE822B65 		.long	1697350398
 2332 07c4 4715F73F 		.long	1073157447
 2333 07c8 FE822B65 		.long	1697350398
 2334 07cc 4715F73F 		.long	1073157447
 2335 07d0 FE822B65 		.long	1697350398
 2336 07d4 4715F73F 		.long	1073157447
 2337 07d8 FE822B65 		.long	1697350398
 2338 07dc 4715F73F 		.long	1073157447
 2339              		.align 32
 2340              	.LC75:
 2341 07e0 00000000 		.long	0
 2342 07e4 402EE63F 		.long	1072049728
 2343 07e8 00000000 		.long	0
 2344 07ec 402EE63F 		.long	1072049728
 2345 07f0 00000000 		.long	0
 2346 07f4 402EE63F 		.long	1072049728
 2347 07f8 00000000 		.long	0
 2348 07fc 402EE63F 		.long	1072049728
 2349              		.align 32
 2350              	.LC76:
 2351 0800 CAAB79CF 		.long	3480857546
 2352 0804 D1F7B73E 		.long	1052243921
 2353 0808 CAAB79CF 		.long	3480857546
 2354 080c D1F7B73E 		.long	1052243921
 2355 0810 CAAB79CF 		.long	3480857546
 2356 0814 D1F7B73E 		.long	1052243921
 2357 0818 CAAB79CF 		.long	3480857546
 2358 081c D1F7B73E 		.long	1052243921
 2359              		.align 32
 2360              	.LC77:
 2361 0820 55555555 		.long	1431655765
 2362 0824 5555C53F 		.long	1069897045
 2363 0828 55555555 		.long	1431655765
 2364 082c 5555C53F 		.long	1069897045
 2365 0830 55555555 		.long	1431655765
GAS LISTING /tmp/cc2s6cHB.s 			page 66


 2366 0834 5555C53F 		.long	1069897045
 2367 0838 55555555 		.long	1431655765
 2368 083c 5555C53F 		.long	1069897045
 2369              		.align 32
 2370              	.LC78:
 2371 0840 11111111 		.long	286331153
 2372 0844 1111813F 		.long	1065423121
 2373 0848 11111111 		.long	286331153
 2374 084c 1111813F 		.long	1065423121
 2375 0850 11111111 		.long	286331153
 2376 0854 1111813F 		.long	1065423121
 2377 0858 11111111 		.long	286331153
 2378 085c 1111813F 		.long	1065423121
 2379              		.align 32
 2380              	.LC79:
 2381 0860 55555555 		.long	1431655765
 2382 0864 5555A53F 		.long	1067799893
 2383 0868 55555555 		.long	1431655765
 2384 086c 5555A53F 		.long	1067799893
 2385 0870 55555555 		.long	1431655765
 2386 0874 5555A53F 		.long	1067799893
 2387 0878 55555555 		.long	1431655765
 2388 087c 5555A53F 		.long	1067799893
 2389              		.align 32
 2390              	.LC80:
 2391 0880 1AA0011A 		.long	436314138
 2392 0884 A0012A3F 		.long	1059717536
 2393 0888 1AA0011A 		.long	436314138
 2394 088c A0012A3F 		.long	1059717536
 2395 0890 1AA0011A 		.long	436314138
 2396 0894 A0012A3F 		.long	1059717536
 2397 0898 1AA0011A 		.long	436314138
 2398 089c A0012A3F 		.long	1059717536
 2399              		.align 32
 2400              	.LC81:
 2401 08a0 176CC116 		.long	381774871
 2402 08a4 6CC1563F 		.long	1062650220
 2403 08a8 176CC116 		.long	381774871
 2404 08ac 6CC1563F 		.long	1062650220
 2405 08b0 176CC116 		.long	381774871
 2406 08b4 6CC1563F 		.long	1062650220
 2407 08b8 176CC116 		.long	381774871
 2408 08bc 6CC1563F 		.long	1062650220
 2409              		.align 32
 2410              	.LC82:
 2411 08c0 34C756A5 		.long	2773927732
 2412 08c4 E31DC73E 		.long	1053236707
 2413 08c8 34C756A5 		.long	2773927732
 2414 08cc E31DC73E 		.long	1053236707
 2415 08d0 34C756A5 		.long	2773927732
 2416 08d4 E31DC73E 		.long	1053236707
 2417 08d8 34C756A5 		.long	2773927732
 2418 08dc E31DC73E 		.long	1053236707
 2419              		.align 32
 2420              	.LC83:
 2421 08e0 1AA0011A 		.long	436314138
 2422 08e4 A001FA3E 		.long	1056571808
GAS LISTING /tmp/cc2s6cHB.s 			page 67


 2423 08e8 1AA0011A 		.long	436314138
 2424 08ec A001FA3E 		.long	1056571808
 2425 08f0 1AA0011A 		.long	436314138
 2426 08f4 A001FA3E 		.long	1056571808
 2427 08f8 1AA0011A 		.long	436314138
 2428 08fc A001FA3E 		.long	1056571808
 2429              		.align 32
 2430              	.LC84:
 2431 0900 E444F567 		.long	1744127204
 2432 0904 45E65A3E 		.long	1046144581
 2433 0908 E444F567 		.long	1744127204
 2434 090c 45E65A3E 		.long	1046144581
 2435 0910 E444F567 		.long	1744127204
 2436 0914 45E65A3E 		.long	1046144581
 2437 0918 E444F567 		.long	1744127204
 2438 091c 45E65A3E 		.long	1046144581
 2439              		.align 32
 2440              	.LC85:
 2441 0920 5C9F78B7 		.long	3078135644
 2442 0924 4F7E923E 		.long	1049787983
 2443 0928 5C9F78B7 		.long	3078135644
 2444 092c 4F7E923E 		.long	1049787983
 2445 0930 5C9F78B7 		.long	3078135644
 2446 0934 4F7E923E 		.long	1049787983
 2447 0938 5C9F78B7 		.long	3078135644
 2448 093c 4F7E923E 		.long	1049787983
 2449              		.align 32
 2450              	.LC86:
 2451 0940 096DA813 		.long	329805065
 2452 0944 4612E63D 		.long	1038488134
 2453 0948 096DA813 		.long	329805065
 2454 094c 4612E63D 		.long	1038488134
 2455 0950 096DA813 		.long	329805065
 2456 0954 4612E63D 		.long	1038488134
 2457 0958 096DA813 		.long	329805065
 2458 095c 4612E63D 		.long	1038488134
 2459              		.align 32
 2460              	.LC87:
 2461 0960 98D8F8EF 		.long	4026063000
 2462 0964 D8EE213E 		.long	1042411224
 2463 0968 98D8F8EF 		.long	4026063000
 2464 096c D8EE213E 		.long	1042411224
 2465 0970 98D8F8EF 		.long	4026063000
 2466 0974 D8EE213E 		.long	1042411224
 2467 0978 98D8F8EF 		.long	4026063000
 2468 097c D8EE213E 		.long	1042411224
 2469              		.align 32
 2470              	.LC88:
 2471 0980 85EB51B8 		.long	3092376453
 2472 0984 1E238640 		.long	1082532638
 2473 0988 85EB51B8 		.long	3092376453
 2474 098c 1E238640 		.long	1082532638
 2475 0990 85EB51B8 		.long	3092376453
 2476 0994 1E238640 		.long	1082532638
 2477 0998 85EB51B8 		.long	3092376453
 2478 099c 1E238640 		.long	1082532638
 2479              		.align 32
GAS LISTING /tmp/cc2s6cHB.s 			page 68


 2480              	.LC89:
 2481 09a0 2D431CEB 		.long	3944497965
 2482 09a4 E2361A3F 		.long	1058682594
 2483 09a8 2D431CEB 		.long	3944497965
 2484 09ac E2361A3F 		.long	1058682594
 2485 09b0 2D431CEB 		.long	3944497965
 2486 09b4 E2361A3F 		.long	1058682594
 2487 09b8 2D431CEB 		.long	3944497965
 2488 09bc E2361A3F 		.long	1058682594
 2489              		.align 32
 2490              	.LC90:
 2491 09c0 00000000 		.long	0
 2492 09c4 00001440 		.long	1075052544
 2493 09c8 00000000 		.long	0
 2494 09cc 00001440 		.long	1075052544
 2495 09d0 00000000 		.long	0
 2496 09d4 00001440 		.long	1075052544
 2497 09d8 00000000 		.long	0
 2498 09dc 00001440 		.long	1075052544
 2499              		.align 32
 2500              	.LC91:
 2501 09e0 9A999999 		.long	2576980378
 2502 09e4 9999E93F 		.long	1072273817
 2503 09e8 9A999999 		.long	2576980378
 2504 09ec 9999E93F 		.long	1072273817
 2505 09f0 9A999999 		.long	2576980378
 2506 09f4 9999E93F 		.long	1072273817
 2507 09f8 9A999999 		.long	2576980378
 2508 09fc 9999E93F 		.long	1072273817
 2509              		.align 32
 2510              	.LC92:
 2511 0a00 00000000 		.long	0
 2512 0a04 00408F40 		.long	1083129856
 2513 0a08 00000000 		.long	0
 2514 0a0c 00408F40 		.long	1083129856
 2515 0a10 00000000 		.long	0
 2516 0a14 00408F40 		.long	1083129856
 2517 0a18 00000000 		.long	0
 2518 0a1c 00408F40 		.long	1083129856
 2519              		.section	.rodata.cst8
 2520              		.align 8
 2521              	.LC93:
 2522 0010 182D4454 		.long	1413754136
 2523 0014 FB211940 		.long	1075388923
 2524              		.align 8
 2525              	.LC94:
 2526 0018 00000000 		.long	0
 2527 001c 00009040 		.long	1083179008
 2528              		.section	.rodata.cst16
 2529              		.align 16
 2530              	.LC96:
 2531 0090 01000000 		.quad	4294967297
 2531      01000000 
 2532 0098 01000000 		.quad	4294967297
 2532      01000000 
 2533              		.section	.rodata.cst32
 2534              		.align 32
GAS LISTING /tmp/cc2s6cHB.s 			page 69


 2535              	.LC97:
 2536 0a20 182D4454 		.long	1413754136
 2537 0a24 FB211940 		.long	1075388923
 2538 0a28 182D4454 		.long	1413754136
 2539 0a2c FB211940 		.long	1075388923
 2540 0a30 182D4454 		.long	1413754136
 2541 0a34 FB211940 		.long	1075388923
 2542 0a38 182D4454 		.long	1413754136
 2543 0a3c FB211940 		.long	1075388923
 2544              		.align 32
 2545              	.LC98:
 2546 0a40 814EE62E 		.long	786845313
 2547 0a44 0BEBB940 		.long	1085926155
 2548 0a48 814EE62E 		.long	786845313
 2549 0a4c 0BEBB940 		.long	1085926155
 2550 0a50 814EE62E 		.long	786845313
 2551 0a54 0BEBB940 		.long	1085926155
 2552 0a58 814EE62E 		.long	786845313
 2553 0a5c 0BEBB940 		.long	1085926155
 2554              		.align 32
 2555              	.LC99:
 2556 0a60 7B14AE47 		.long	1202590843
 2557 0a64 E17A843F 		.long	1065646817
 2558 0a68 7B14AE47 		.long	1202590843
 2559 0a6c E17A843F 		.long	1065646817
 2560 0a70 7B14AE47 		.long	1202590843
 2561 0a74 E17A843F 		.long	1065646817
 2562 0a78 7B14AE47 		.long	1202590843
 2563 0a7c E17A843F 		.long	1065646817
 2564              		.align 32
 2565              	.LC100:
 2566 0a80 182D4454 		.long	1413754136
 2567 0a84 FB21B940 		.long	1085874683
 2568 0a88 182D4454 		.long	1413754136
 2569 0a8c FB21B940 		.long	1085874683
 2570 0a90 182D4454 		.long	1413754136
 2571 0a94 FB21B940 		.long	1085874683
 2572 0a98 182D4454 		.long	1413754136
 2573 0a9c FB21B940 		.long	1085874683
 2574              		.align 32
 2575              	.LC101:
 2576 0aa0 00000000 		.long	0
 2577 0aa4 0000E0BF 		.long	-1075838976
 2578 0aa8 00000000 		.long	0
 2579 0aac 0000E0BF 		.long	-1075838976
 2580 0ab0 00000000 		.long	0
 2581 0ab4 0000E0BF 		.long	-1075838976
 2582 0ab8 00000000 		.long	0
 2583 0abc 0000E0BF 		.long	-1075838976
 2584              		.align 32
 2585              	.LC102:
 2586 0ac0 9A999999 		.long	2576980378
 2587 0ac4 9999B9BF 		.long	-1078355559
 2588 0ac8 9A999999 		.long	2576980378
 2589 0acc 9999B9BF 		.long	-1078355559
 2590 0ad0 9A999999 		.long	2576980378
 2591 0ad4 9999B9BF 		.long	-1078355559
GAS LISTING /tmp/cc2s6cHB.s 			page 70


 2592 0ad8 9A999999 		.long	2576980378
 2593 0adc 9999B9BF 		.long	-1078355559
 2594              		.section	.rodata.cst16
 2595              		.align 16
 2596              	.LC105:
 2597 00a0 FFFFFFFF 		.quad	-1
 2597      FFFFFFFF 
 2598 00a8 FFFFFFFF 		.quad	-1
 2598      FFFFFFFF 
 2599              		.hidden	__dso_handle
 2600              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2601              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc2s6cHB.s 			page 71


DEFINED SYMBOLS
                            *ABS*:0000000000000000 duffing_RKCK45.cpp
     /tmp/cc2s6cHB.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cc2s6cHB.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc2s6cHB.s:81     .text.startup:0000000000000000 main
     /tmp/cc2s6cHB.s:1632   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/cc2s6cHB.s:1644   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cc2s6cHB.s:1609   .text.startup:00000000000023a0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc2s6cHB.s:1657   .rodata.cst8:0000000000000000 .LC0
     /tmp/cc2s6cHB.s:1661   .rodata.cst8:0000000000000008 .LC1
     /tmp/cc2s6cHB.s:2319   .rodata.cst16:0000000000000070 .LC72
     /tmp/cc2s6cHB.s:2555   .rodata.cst32:0000000000000a60 .LC99
     /tmp/cc2s6cHB.s:2565   .rodata.cst32:0000000000000a80 .LC100
     /tmp/cc2s6cHB.s:2585   .rodata.cst32:0000000000000ac0 .LC102
     /tmp/cc2s6cHB.s:2575   .rodata.cst32:0000000000000aa0 .LC101
     /tmp/cc2s6cHB.s:1666   .rodata.cst32:0000000000000000 .LC3
     /tmp/cc2s6cHB.s:1686   .rodata.cst32:0000000000000040 .LC5
     /tmp/cc2s6cHB.s:1676   .rodata.cst32:0000000000000020 .LC4
     /tmp/cc2s6cHB.s:1696   .rodata.cst32:0000000000000060 .LC6
     /tmp/cc2s6cHB.s:1726   .rodata.cst32:00000000000000c0 .LC9
     /tmp/cc2s6cHB.s:1706   .rodata.cst32:0000000000000080 .LC7
     /tmp/cc2s6cHB.s:1786   .rodata.cst32:0000000000000180 .LC15
     /tmp/cc2s6cHB.s:1736   .rodata.cst32:00000000000000e0 .LC10
     /tmp/cc2s6cHB.s:1716   .rodata.cst32:00000000000000a0 .LC8
     /tmp/cc2s6cHB.s:1796   .rodata.cst32:00000000000001a0 .LC16
     /tmp/cc2s6cHB.s:1746   .rodata.cst32:0000000000000100 .LC11
     /tmp/cc2s6cHB.s:1756   .rodata.cst32:0000000000000120 .LC12
     /tmp/cc2s6cHB.s:1766   .rodata.cst32:0000000000000140 .LC13
     /tmp/cc2s6cHB.s:1776   .rodata.cst32:0000000000000160 .LC14
     /tmp/cc2s6cHB.s:1806   .rodata.cst32:00000000000001c0 .LC17
     /tmp/cc2s6cHB.s:1816   .rodata.cst32:00000000000001e0 .LC18
     /tmp/cc2s6cHB.s:1826   .rodata.cst32:0000000000000200 .LC19
     /tmp/cc2s6cHB.s:1836   .rodata.cst32:0000000000000220 .LC20
     /tmp/cc2s6cHB.s:1855   .rodata.cst16:0000000000000020 .LC23
     /tmp/cc2s6cHB.s:1847   .rodata.cst16:0000000000000000 .LC21
     /tmp/cc2s6cHB.s:2596   .rodata.cst16:00000000000000a0 .LC105
     /tmp/cc2s6cHB.s:1851   .rodata.cst16:0000000000000010 .LC22
     /tmp/cc2s6cHB.s:1859   .rodata.cst16:0000000000000030 .LC24
     /tmp/cc2s6cHB.s:1864   .rodata.cst32:0000000000000240 .LC25
     /tmp/cc2s6cHB.s:1874   .rodata.cst32:0000000000000260 .LC26
     /tmp/cc2s6cHB.s:1884   .rodata.cst32:0000000000000280 .LC27
     /tmp/cc2s6cHB.s:1894   .rodata.cst32:00000000000002a0 .LC28
     /tmp/cc2s6cHB.s:1914   .rodata.cst32:00000000000002e0 .LC30
     /tmp/cc2s6cHB.s:1904   .rodata.cst32:00000000000002c0 .LC29
     /tmp/cc2s6cHB.s:1924   .rodata.cst32:0000000000000300 .LC31
     /tmp/cc2s6cHB.s:1954   .rodata.cst32:0000000000000360 .LC34
     /tmp/cc2s6cHB.s:1964   .rodata.cst32:0000000000000380 .LC35
     /tmp/cc2s6cHB.s:1944   .rodata.cst32:0000000000000340 .LC33
     /tmp/cc2s6cHB.s:1934   .rodata.cst32:0000000000000320 .LC32
     /tmp/cc2s6cHB.s:1974   .rodata.cst32:00000000000003a0 .LC36
     /tmp/cc2s6cHB.s:1984   .rodata.cst32:00000000000003c0 .LC37
     /tmp/cc2s6cHB.s:2014   .rodata.cst32:0000000000000420 .LC40
     /tmp/cc2s6cHB.s:2004   .rodata.cst32:0000000000000400 .LC39
     /tmp/cc2s6cHB.s:1994   .rodata.cst32:00000000000003e0 .LC38
     /tmp/cc2s6cHB.s:2024   .rodata.cst32:0000000000000440 .LC41
     /tmp/cc2s6cHB.s:2034   .rodata.cst32:0000000000000460 .LC42
GAS LISTING /tmp/cc2s6cHB.s 			page 72


     /tmp/cc2s6cHB.s:2064   .rodata.cst32:00000000000004c0 .LC45
     /tmp/cc2s6cHB.s:2054   .rodata.cst32:00000000000004a0 .LC44
     /tmp/cc2s6cHB.s:2044   .rodata.cst32:0000000000000480 .LC43
     /tmp/cc2s6cHB.s:2074   .rodata.cst32:00000000000004e0 .LC46
     /tmp/cc2s6cHB.s:2104   .rodata.cst32:0000000000000540 .LC49
     /tmp/cc2s6cHB.s:2094   .rodata.cst32:0000000000000520 .LC48
     /tmp/cc2s6cHB.s:2084   .rodata.cst32:0000000000000500 .LC47
     /tmp/cc2s6cHB.s:2114   .rodata.cst32:0000000000000560 .LC50
     /tmp/cc2s6cHB.s:2124   .rodata.cst32:0000000000000580 .LC51
     /tmp/cc2s6cHB.s:2158   .rodata.cst32:00000000000005c0 .LC56
     /tmp/cc2s6cHB.s:2135   .rodata.cst16:0000000000000040 .LC52
     /tmp/cc2s6cHB.s:2143   .rodata.cst16:0000000000000060 .LC54
     /tmp/cc2s6cHB.s:2139   .rodata.cst16:0000000000000050 .LC53
     /tmp/cc2s6cHB.s:2148   .rodata.cst32:00000000000005a0 .LC55
     /tmp/cc2s6cHB.s:2188   .rodata.cst32:0000000000000620 .LC59
     /tmp/cc2s6cHB.s:2248   .rodata.cst32:00000000000006e0 .LC65
     /tmp/cc2s6cHB.s:2168   .rodata.cst32:00000000000005e0 .LC57
     /tmp/cc2s6cHB.s:2198   .rodata.cst32:0000000000000640 .LC60
     /tmp/cc2s6cHB.s:2178   .rodata.cst32:0000000000000600 .LC58
     /tmp/cc2s6cHB.s:2208   .rodata.cst32:0000000000000660 .LC61
     /tmp/cc2s6cHB.s:2218   .rodata.cst32:0000000000000680 .LC62
     /tmp/cc2s6cHB.s:2228   .rodata.cst32:00000000000006a0 .LC63
     /tmp/cc2s6cHB.s:2238   .rodata.cst32:00000000000006c0 .LC64
     /tmp/cc2s6cHB.s:2258   .rodata.cst32:0000000000000700 .LC66
     /tmp/cc2s6cHB.s:2268   .rodata.cst32:0000000000000720 .LC67
     /tmp/cc2s6cHB.s:2278   .rodata.cst32:0000000000000740 .LC68
     /tmp/cc2s6cHB.s:2288   .rodata.cst32:0000000000000760 .LC69
     /tmp/cc2s6cHB.s:2298   .rodata.cst32:0000000000000780 .LC70
     /tmp/cc2s6cHB.s:2308   .rodata.cst32:00000000000007a0 .LC71
     /tmp/cc2s6cHB.s:2325   .rodata.cst16:0000000000000080 .LC73
     /tmp/cc2s6cHB.s:2330   .rodata.cst32:00000000000007c0 .LC74
     /tmp/cc2s6cHB.s:2340   .rodata.cst32:00000000000007e0 .LC75
     /tmp/cc2s6cHB.s:2350   .rodata.cst32:0000000000000800 .LC76
     /tmp/cc2s6cHB.s:2390   .rodata.cst32:0000000000000880 .LC80
     /tmp/cc2s6cHB.s:2360   .rodata.cst32:0000000000000820 .LC77
     /tmp/cc2s6cHB.s:2370   .rodata.cst32:0000000000000840 .LC78
     /tmp/cc2s6cHB.s:2400   .rodata.cst32:00000000000008a0 .LC81
     /tmp/cc2s6cHB.s:2380   .rodata.cst32:0000000000000860 .LC79
     /tmp/cc2s6cHB.s:2430   .rodata.cst32:0000000000000900 .LC84
     /tmp/cc2s6cHB.s:2440   .rodata.cst32:0000000000000920 .LC85
     /tmp/cc2s6cHB.s:2410   .rodata.cst32:00000000000008c0 .LC82
     /tmp/cc2s6cHB.s:2450   .rodata.cst32:0000000000000940 .LC86
     /tmp/cc2s6cHB.s:2420   .rodata.cst32:00000000000008e0 .LC83
     /tmp/cc2s6cHB.s:2460   .rodata.cst32:0000000000000960 .LC87
     /tmp/cc2s6cHB.s:2470   .rodata.cst32:0000000000000980 .LC88
     /tmp/cc2s6cHB.s:2480   .rodata.cst32:00000000000009a0 .LC89
     /tmp/cc2s6cHB.s:2490   .rodata.cst32:00000000000009c0 .LC90
     /tmp/cc2s6cHB.s:2510   .rodata.cst32:0000000000000a00 .LC92
     /tmp/cc2s6cHB.s:2500   .rodata.cst32:00000000000009e0 .LC91
     /tmp/cc2s6cHB.s:2535   .rodata.cst32:0000000000000a20 .LC97
     /tmp/cc2s6cHB.s:2530   .rodata.cst16:0000000000000090 .LC96
     /tmp/cc2s6cHB.s:2545   .rodata.cst32:0000000000000a40 .LC98
     /tmp/cc2s6cHB.s:2521   .rodata.cst8:0000000000000010 .LC93
     /tmp/cc2s6cHB.s:2525   .rodata.cst8:0000000000000018 .LC94

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
GAS LISTING /tmp/cc2s6cHB.s 			page 73


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
