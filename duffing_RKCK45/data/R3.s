GAS LISTING /tmp/cckPQzVM.s 			page 1


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
GAS LISTING /tmp/cckPQzVM.s 			page 2


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
  98 0016 4881EC80 		subq	$3456, %rsp
GAS LISTING /tmp/cckPQzVM.s 			page 3


  98      0D0000
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
 107 0036 48898424 		movq	%rax, 3448(%rsp)
 107      780D0000 
 108 003e 31C0     		xorl	%eax, %eax
 109 0040 E8000000 		call	_Z8linspaceddi
 109      00
 110 0045 488DBC24 		leaq	2928(%rsp), %rdi
 110      700B0000 
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
 124 0088 C5FD5725 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 124      00000000 
 125 0090 C5FC2944 		vmovaps	%ymm0, 32(%rsp)
 125      2420
 126 0096 C5FD2964 		vmovapd	%ymm4, 64(%rsp)
 126      2440
 127              	.L12:
 128 009c 488B4424 		movq	16(%rsp), %rax
 128      10
 129 00a1 C5F157C9 		vxorpd	%xmm1, %xmm1, %xmm1
 130 00a5 C5FD2825 		vmovapd	.LC100(%rip), %ymm4
 130      00000000 
 131 00ad 31C9     		xorl	%ecx, %ecx
 132 00af 31F6     		xorl	%esi, %esi
 133 00b1 C5FD281D 		vmovapd	.LC99(%rip), %ymm3
GAS LISTING /tmp/cckPQzVM.s 			page 4


 133      00000000 
 134 00b9 83F902   		cmpl	$2, %ecx
 135 00bc C5FD2800 		vmovapd	(%rax), %ymm0
 136 00c0 C5FD299C 		vmovapd	%ymm3, 2560(%rsp)
 136      24000A00 
 136      00
 137 00c9 C5FD2984 		vmovapd	%ymm0, 2656(%rsp)
 137      24600A00 
 137      00
 138 00d2 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 139 00d6 C5FD29A4 		vmovapd	%ymm4, 2752(%rsp)
 139      24C00A00 
 139      00
 140 00df C5FD298C 		vmovapd	%ymm1, 2368(%rsp)
 140      24400900 
 140      00
 141 00e8 C5F97F84 		vmovdqa	%xmm0, 2848(%rsp)
 141      24200B00 
 141      00
 142 00f1 C5FD2850 		vmovapd	32(%rax), %ymm2
 142      20
 143 00f6 C5F97F84 		vmovdqa	%xmm0, 2864(%rsp)
 143      24300B00 
 143      00
 144 00ff C5FD299C 		vmovapd	%ymm3, 2592(%rsp)
 144      24200A00 
 144      00
 145 0108 C5FD28DC 		vmovapd	%ymm4, %ymm3
 146 010c C5FD29A4 		vmovapd	%ymm4, 2784(%rsp)
 146      24E00A00 
 146      00
 147 0115 C5FD2994 		vmovapd	%ymm2, 2688(%rsp)
 147      24800A00 
 147      00
 148 011e C5FD2825 		vmovapd	.LC99(%rip), %ymm4
 148      00000000 
 149 0126 C5FD298C 		vmovapd	%ymm1, 2400(%rsp)
 149      24600900 
 149      00
 150 012f C5FD2850 		vmovapd	64(%rax), %ymm2
 150      40
 151 0134 C5FD29A4 		vmovapd	%ymm4, 2624(%rsp)
 151      24400A00 
 151      00
 152 013d C5FD299C 		vmovapd	%ymm3, 2816(%rsp)
 152      24000B00 
 152      00
 153 0146 C5FD2825 		vmovapd	.LC102(%rip), %ymm4
 153      00000000 
 154 014e C5FD281D 		vmovapd	.LC101(%rip), %ymm3
 154      00000000 
 155 0156 C5FD2994 		vmovapd	%ymm2, 2720(%rsp)
 155      24A00A00 
 155      00
 156 015f C5FD298C 		vmovapd	%ymm1, 2432(%rsp)
 156      24800900 
 156      00
GAS LISTING /tmp/cckPQzVM.s 			page 5


 157 0168 C5F97F84 		vmovdqa	%xmm0, 2880(%rsp)
 157      24400B00 
 157      00
 158 0171 C5FD299C 		vmovapd	%ymm3, 2176(%rsp)
 158      24800800 
 158      00
 159 017a C5FD29A4 		vmovapd	%ymm4, 2208(%rsp)
 159      24A00800 
 159      00
 160 0183 C5FD299C 		vmovapd	%ymm3, 2240(%rsp)
 160      24C00800 
 160      00
 161 018c C5FD29A4 		vmovapd	%ymm4, 2272(%rsp)
 161      24E00800 
 161      00
 162 0195 C5FD299C 		vmovapd	%ymm3, 2304(%rsp)
 162      24000900 
 162      00
 163 019e C5FD29A4 		vmovapd	%ymm4, 2336(%rsp)
 163      24200900 
 163      00
 164 01a7 0F8FD702 		jg	.L70
 164      0000
 165 01ad 0F1F00   		.p2align 4,,10
 166              		.p2align 3
 167              	.L13:
 168 01b0 4863C6   		movslq	%esi, %rax
 169 01b3 4863D1   		movslq	%ecx, %rdx
 170 01b6 83C101   		addl	$1, %ecx
 171 01b9 48C1E005 		salq	$5, %rax
 172 01bd 48C1E205 		salq	$5, %rdx
 173 01c1 83C602   		addl	$2, %esi
 174 01c4 488D7820 		leaq	32(%rax), %rdi
 175 01c8 83F902   		cmpl	$2, %ecx
 176 01cb 4C8D843C 		leaq	2176(%rsp,%rdi), %r8
 176      80080000 
 177 01d3 C4C17D28 		vmovapd	(%r8), %ymm0
 177      00
 178 01d8 C5FD2984 		vmovapd	%ymm0, 1408(%rsp,%rax)
 178      04800500 
 178      00
 179 01e1 C5FD28AC 		vmovapd	2368(%rsp,%rdx), %ymm5
 179      14400900 
 179      00
 180 01ea C5D55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 180      00000000 
 181 01f2 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 181      00000000 
 182 01fa C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 182      C008
 183 0200 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 183      C808
 184 0206 C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 184      24C00000 
 184      00
 185 020f C57B10BC 		vmovsd	192(%rsp), %xmm15
 185      24C00000 
GAS LISTING /tmp/cckPQzVM.s 			page 6


 185      00
 186 0218 C5FB109C 		vmovsd	208(%rsp), %xmm3
 186      24D00000 
 186      00
 187 0221 C4C1FB2C 		vcvttsd2siq	%xmm15, %rbx
 187      DF
 188 0226 C5FB108C 		vmovsd	200(%rsp), %xmm1
 188      24C80000 
 188      00
 189 022f C461FB2C 		vcvttsd2siq	%xmm1, %r9
 189      C9
 190 0234 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 190      00000000 
 191 023c 48899C24 		movq	%rbx, 128(%rsp)
 191      80000000 
 192 0244 C4E1FB2C 		vcvttsd2siq	%xmm3, %rbx
 192      DB
 193 0249 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 193      00000000 
 194 0251 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 194      24800000 
 194      00
 195 025a C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 195      00000000 
 196 0262 C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm4
 196      E101
 197 0268 C5FB10AC 		vmovsd	216(%rsp), %xmm5
 197      24D80000 
 197      00
 198 0271 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 199 0275 C461FB2C 		vcvttsd2siq	%xmm5, %r9
 199      CD
 200 027a 48899C24 		movq	%rbx, 128(%rsp)
 200      80000000 
 201 0282 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 201      24800000 
 201      00
 202 028b C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 203 028f C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 204 0293 C4C3D122 		vpinsrq	$1, %r9, %xmm5, %xmm5
 204      E901
 205 0299 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 206 029d C57D5905 		vmulpd	.LC9(%rip), %ymm0, %ymm8
 206      00000000 
 207 02a5 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 208 02a9 C5FD593D 		vmulpd	.LC7(%rip), %ymm0, %ymm7
 208      00000000 
 209 02b1 C57D590D 		vmulpd	.LC15(%rip), %ymm0, %ymm9
 209      00000000 
 210 02b9 C53D5805 		vaddpd	.LC10(%rip), %ymm8, %ymm8
 210      00000000 
 211 02c1 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 212 02c5 C5C5583D 		vaddpd	.LC8(%rip), %ymm7, %ymm7
 212      00000000 
 213 02cd C535580D 		vaddpd	.LC16(%rip), %ymm9, %ymm9
 213      00000000 
 214 02d5 C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
GAS LISTING /tmp/cckPQzVM.s 			page 7


 215 02d9 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 216 02dd C5FD593D 		vmulpd	.LC11(%rip), %ymm0, %ymm7
 216      00000000 
 217 02e5 C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 218 02e9 C5C5583D 		vaddpd	.LC12(%rip), %ymm7, %ymm7
 218      00000000 
 219 02f1 C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 220 02f5 C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 220      F8
 221 02fa C57D5905 		vmulpd	.LC13(%rip), %ymm0, %ymm8
 221      00000000 
 222 0302 C53D5805 		vaddpd	.LC14(%rip), %ymm8, %ymm8
 222      00000000 
 223 030a C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 223      F0
 224 030f C57D5905 		vmulpd	.LC17(%rip), %ymm0, %ymm8
 224      00000000 
 225 0317 C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 225      00000000 
 226 031f C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 227 0323 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 228 0327 C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
 229 032b C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 229      00000000 
 230 0333 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 231 0337 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 232 033b C5C9EFF6 		vpxor	%xmm6, %xmm6, %xmm6
 233 033f C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 233      D001
 234 0345 C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 235 0349 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 235      00000000 
 236 0351 C4C13973 		vpsllq	$1, %xmm8, %xmm8
 236      F001
 237 0357 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 237      00000000 
 238 035f C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 239 0363 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 239      05000000 
 239      00
 240 036c C5F558F8 		vaddpd	%ymm0, %ymm1, %ymm7
 241 0370 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 241      00000000 
 242 0378 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 242      00000000 
 243 0380 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 243      00000000 
 244 0388 C4E27929 		vpcmpeqq	%xmm6, %xmm0, %xmm0
 244      C6
 245 038d C4E27129 		vpcmpeqq	%xmm6, %xmm1, %xmm1
 245      CE
 246 0392 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 246      00000000 
 247 039a C4E25937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm6
 247      35000000 
 247      00
 248 03a3 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
GAS LISTING /tmp/cckPQzVM.s 			page 8


 248      00000000 
 249 03ab C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 249      C801
 250 03b1 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 250      05000000 
 250      00
 251 03ba C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 251      F001
 252 03c0 C5F928C2 		vmovapd	%xmm2, %xmm0
 253 03c4 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 254 03c8 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 254      01
 255 03cd C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 255      00000000 
 256 03d5 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 256      05000000 
 256      00
 257 03de C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 257      00000000 
 258 03e6 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 258      C001
 259 03ec C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
 260 03f0 C4E3654B 		vblendvpd	%ymm0, %ymm2, %ymm3, %ymm3
 260      DA00
 261 03f6 C4E3454B 		vblendvpd	%ymm0, .LC20(%rip), %ymm7, %ymm0
 261      05000000 
 261      0000
 262 0400 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 262      00000000 
 263 0408 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 263      00000000 
 264 0410 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 264      C310
 265 0416 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 265      00000000 
 266 041e C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 266      00000000 
 267 0426 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 267      00000000 
 268 042e C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 268      3E
 269 0433 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 269      3E
 270 0438 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 270      CA01
 271 043e C5FD2894 		vmovapd	2656(%rsp,%rdx), %ymm2
 271      14600A00 
 271      00
 272 0447 C4C16D59 		vmulpd	(%r8), %ymm2, %ymm2
 272      10
 273 044c C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 274 0450 C5FD2884 		vmovapd	2176(%rsp,%rax), %ymm0
 274      04800800 
 274      00
 275 0459 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 276 045d C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 276      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 9


 277 0465 C5D55CDB 		vsubpd	%ymm3, %ymm5, %ymm3
 278 0469 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 279 046d C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 280 0471 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 281 0475 C5FD2984 		vmovapd	%ymm0, 1440(%rsp,%rax)
 281      04A00500 
 281      00
 282 047e 0F8E2CFD 		jle	.L13
 282      FFFF
 283              	.L70:
 284 0484 C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 284      00000000 
 285 048c 488DB424 		leaq	2016(%rsp), %rsi
 285      E0070000 
 286 0494 488DBC24 		leaq	2464(%rsp), %rdi
 286      A0090000 
 287 049c C5FD2884 		vmovapd	2560(%rsp), %ymm0
 287      24000A00 
 287      00
 288 04a5 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 289 04a9 C5CD598C 		vmulpd	1408(%rsp), %ymm6, %ymm1
 289      24800500 
 289      00
 290 04b2 488D8C24 		leaq	2208(%rsp), %rcx
 290      A0080000 
 291 04ba C57D2825 		vmovapd	.LC20(%rip), %ymm12
 291      00000000 
 292 04c2 4889F8   		movq	%rdi, %rax
 293 04c5 4889F2   		movq	%rsi, %rdx
 294 04c8 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 294      C0
 295 04cd C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 296 04d1 C5F5588C 		vaddpd	2176(%rsp), %ymm1, %ymm1
 296      24800800 
 296      00
 297 04da C5FD298C 		vmovapd	%ymm1, 1984(%rsp)
 297      24C00700 
 297      00
 298 04e3 C5CD598C 		vmulpd	1440(%rsp), %ymm6, %ymm1
 298      24A00500 
 298      00
 299 04ec C5F559C8 		vmulpd	%ymm0, %ymm1, %ymm1
 300 04f0 C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 301 04f4 C5F5588C 		vaddpd	2208(%rsp), %ymm1, %ymm1
 301      24A00800 
 301      00
 302 04fd C5FD5884 		vaddpd	2368(%rsp), %ymm0, %ymm0
 302      24400900 
 302      00
 303 0506 C5FD298C 		vmovapd	%ymm1, 2016(%rsp)
 303      24E00700 
 303      00
 304 050f C5CD598C 		vmulpd	1472(%rsp), %ymm6, %ymm1
 304      24C00500 
 304      00
 305 0518 C5FD2984 		vmovapd	%ymm0, 2464(%rsp)
 305      24A00900 
GAS LISTING /tmp/cckPQzVM.s 			page 10


 305      00
 306 0521 C5FD2884 		vmovapd	2592(%rsp), %ymm0
 306      24200A00 
 306      00
 307 052a C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 308 052e C5F5588C 		vaddpd	2240(%rsp), %ymm1, %ymm1
 308      24C00800 
 308      00
 309 0537 C5FD298C 		vmovapd	%ymm1, 2048(%rsp)
 309      24000800 
 309      00
 310 0540 C5CD598C 		vmulpd	1504(%rsp), %ymm6, %ymm1
 310      24E00500 
 310      00
 311 0549 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 312 054d C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 313 0551 C5F5588C 		vaddpd	2272(%rsp), %ymm1, %ymm1
 313      24E00800 
 313      00
 314 055a C5FD5884 		vaddpd	2400(%rsp), %ymm0, %ymm0
 314      24600900 
 314      00
 315 0563 C5FD298C 		vmovapd	%ymm1, 2080(%rsp)
 315      24200800 
 315      00
 316 056c C5CD598C 		vmulpd	1536(%rsp), %ymm6, %ymm1
 316      24000600 
 316      00
 317 0575 C5FD2984 		vmovapd	%ymm0, 2496(%rsp)
 317      24C00900 
 317      00
 318 057e C5FD2884 		vmovapd	2624(%rsp), %ymm0
 318      24400A00 
 318      00
 319 0587 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 320 058b C5F5588C 		vaddpd	2304(%rsp), %ymm1, %ymm1
 320      24000900 
 320      00
 321 0594 C5FD298C 		vmovapd	%ymm1, 2112(%rsp)
 321      24400800 
 321      00
 322 059d C5CD598C 		vmulpd	1568(%rsp), %ymm6, %ymm1
 322      24200600 
 322      00
 323 05a6 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 324 05aa C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 325 05ae C5F5588C 		vaddpd	2336(%rsp), %ymm1, %ymm1
 325      24200900 
 325      00
 326 05b7 C5FD5884 		vaddpd	2432(%rsp), %ymm0, %ymm0
 326      24800900 
 326      00
 327 05c0 C5FD298C 		vmovapd	%ymm1, 2144(%rsp)
 327      24600800 
 327      00
 328 05c9 C5FD2984 		vmovapd	%ymm0, 2528(%rsp)
 328      24E00900 
GAS LISTING /tmp/cckPQzVM.s 			page 11


 328      00
 329              	.L15:
 330 05d2 C5FD2802 		vmovapd	(%rdx), %ymm0
 331 05d6 4883C240 		addq	$64, %rdx
 332 05da 4883C020 		addq	$32, %rax
 333 05de C5FD282D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 333      00000000 
 334 05e6 C5FD2982 		vmovapd	%ymm0, -1248(%rdx)
 334      20FBFFFF 
 335 05ee C5D55450 		vandpd	-32(%rax), %ymm5, %ymm2
 335      E0
 336 05f3 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 336      00000000 
 337 05fb C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 337      C008
 338 0601 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 338      00000000 
 339 0609 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 339      C808
 340 060f C5FD118C 		vmovupd	%ymm1, 224(%rsp)
 340      24E00000 
 340      00
 341 0618 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 341      00000000 
 342 0620 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 342      00000000 
 343 0628 C57B1094 		vmovsd	224(%rsp), %xmm10
 343      24E00000 
 343      00
 344 0631 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 345 0635 C57B109C 		vmovsd	232(%rsp), %xmm11
 345      24E80000 
 345      00
 346 063e C4C1FB2C 		vcvttsd2siq	%xmm10, %rbx
 346      DA
 347 0643 C441FB2C 		vcvttsd2siq	%xmm11, %r8
 347      C3
 348 0648 C57B10AC 		vmovsd	240(%rsp), %xmm13
 348      24F00000 
 348      00
 349 0651 C57B10B4 		vmovsd	248(%rsp), %xmm14
 349      24F80000 
 349      00
 350 065a C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 351 065e C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 352 0662 48899C24 		movq	%rbx, 128(%rsp)
 352      80000000 
 353 066a C4C1FB2C 		vcvttsd2siq	%xmm13, %rbx
 353      DD
 354 066f C5FA7EA4 		vmovq	128(%rsp), %xmm4
 354      24800000 
 354      00
 355 0678 C4C3D922 		vpinsrq	$1, %r8, %xmm4, %xmm4
 355      E001
 356 067e C441FB2C 		vcvttsd2siq	%xmm14, %r8
 356      C6
 357 0683 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
GAS LISTING /tmp/cckPQzVM.s 			page 12


 358 0687 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 358      00000000 
 359 068f C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 360 0693 48899C24 		movq	%rbx, 128(%rsp)
 360      80000000 
 361 069b C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 361      00000000 
 362 06a3 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 362      24800000 
 362      00
 363 06ac C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 363      00000000 
 364 06b4 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 364      00000000 
 365 06bc C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 366 06c0 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 366      E801
 367 06c6 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 367      00000000 
 368 06ce C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 368      00000000 
 369 06d6 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 370 06da C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 370      D1
 371 06df C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 371      00000000 
 372 06e7 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 373 06eb C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 373      00000000 
 374 06f3 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 375 06f7 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 375      CA
 376 06fc C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 376      00000000 
 377 0704 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 377      00000000 
 378 070c C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 378      F2
 379 0711 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 379      00000000 
 380 0719 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 380      00000000 
 381 0721 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 382 0725 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 383 0729 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 384 072d C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 384      00000000 
 385 0735 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 386 0739 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 386      C9
 387 073e C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 387      D201
 388 0744 C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 389 0748 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 390 074c C4C12973 		vpsllq	$1, %xmm10, %xmm10
 390      F201
 391 0752 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
GAS LISTING /tmp/cckPQzVM.s 			page 13


 391      00000000 
 392 075a C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 392      0D000000 
 392      00
 393 0763 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 394 0767 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 394      00000000 
 395 076f C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 395      00000000 
 396 0777 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 396      15000000 
 396      00
 397 0780 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 397      C7
 398 0785 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 398      00000000 
 399 078d C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 399      CF
 400 0792 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 400      00000000 
 401 079a C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 401      00000000 
 402 07a2 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 402      C801
 403 07a8 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 403      05000000 
 403      00
 404 07b1 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 404      C801
 405 07b7 C5F928C2 		vmovapd	%xmm2, %xmm0
 406 07bb C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 406      00000000 
 407 07c3 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 407      00000000 
 408 07cb C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 408      01
 409 07d0 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 409      00000000 
 410 07d8 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 410      3E
 411 07dd C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 411      05000000 
 411      00
 412 07e6 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 412      00000000 
 413 07ee C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 413      C201
 414 07f4 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 415 07f8 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 415      D800
 416 07fe C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 416      C400
 417 0804 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 417      C310
 418 080a C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 418      00000000 
 419 0812 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
GAS LISTING /tmp/cckPQzVM.s 			page 14


 419      00000000 
 420 081a C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 420      3E
 421 081f C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 421      CA01
 422 0825 C5FD2890 		vmovapd	160(%rax), %ymm2
 422      A0000000 
 423 082d C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 423      C0
 424 0832 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 425 0836 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 425      A0
 426 083b C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 427 083f C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 427      00000000 
 428 0847 C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 429 084b C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 430 084f C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 431 0853 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 432 0857 C5FD2982 		vmovapd	%ymm0, -1216(%rdx)
 432      40FBFFFF 
 433 085f 4839CA   		cmpq	%rcx, %rdx
 434 0862 0F856AFD 		jne	.L15
 434      FFFF
 435 0868 C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 435      00000000 
 436 0870 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 437 0874 C5FD2815 		vmovapd	.LC28(%rip), %ymm2
 437      00000000 
 438 087c C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 438      C0
 439 0881 C5DD5984 		vmulpd	832(%rsp), %ymm4, %ymm0
 439      24400300 
 439      00
 440 088a 4889F8   		movq	%rdi, %rax
 441 088d C5FD282D 		vmovapd	.LC25(%rip), %ymm5
 441      00000000 
 442 0895 4889F2   		movq	%rsi, %rdx
 443 0898 C5ED598C 		vmulpd	1408(%rsp), %ymm2, %ymm1
 443      24800500 
 443      00
 444 08a1 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 445 08a5 C5ED598C 		vmulpd	1440(%rsp), %ymm2, %ymm1
 445      24A00500 
 445      00
 446 08ae C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 446      24000A00 
 446      00
 447 08b7 C5FD5884 		vaddpd	2176(%rsp), %ymm0, %ymm0
 447      24800800 
 447      00
 448 08c0 C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 448      24C00700 
 448      00
 449 08c9 C5DD5984 		vmulpd	864(%rsp), %ymm4, %ymm0
 449      24600300 
 449      00
GAS LISTING /tmp/cckPQzVM.s 			page 15


 450 08d2 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 451 08d6 C5ED598C 		vmulpd	1472(%rsp), %ymm2, %ymm1
 451      24C00500 
 451      00
 452 08df C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 452      24000A00 
 452      00
 453 08e8 C5FD5884 		vaddpd	2208(%rsp), %ymm0, %ymm0
 453      24A00800 
 453      00
 454 08f1 C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 454      24E00700 
 454      00
 455 08fa C5D55984 		vmulpd	2560(%rsp), %ymm5, %ymm0
 455      24000A00 
 455      00
 456 0903 C5FD5884 		vaddpd	2368(%rsp), %ymm0, %ymm0
 456      24400900 
 456      00
 457 090c C5FD2984 		vmovapd	%ymm0, 2464(%rsp)
 457      24A00900 
 457      00
 458 0915 C5DD5984 		vmulpd	896(%rsp), %ymm4, %ymm0
 458      24800300 
 458      00
 459 091e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 460 0922 C5ED598C 		vmulpd	1504(%rsp), %ymm2, %ymm1
 460      24E00500 
 460      00
 461 092b C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 461      24200A00 
 461      00
 462 0934 C5FD5884 		vaddpd	2240(%rsp), %ymm0, %ymm0
 462      24C00800 
 462      00
 463 093d C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 463      24000800 
 463      00
 464 0946 C5DD5984 		vmulpd	928(%rsp), %ymm4, %ymm0
 464      24A00300 
 464      00
 465 094f C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 466 0953 C5ED598C 		vmulpd	1536(%rsp), %ymm2, %ymm1
 466      24000600 
 466      00
 467 095c C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 467      24200A00 
 467      00
 468 0965 C5FD5884 		vaddpd	2272(%rsp), %ymm0, %ymm0
 468      24E00800 
 468      00
 469 096e C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 469      24200800 
 469      00
 470 0977 C5D55984 		vmulpd	2592(%rsp), %ymm5, %ymm0
 470      24200A00 
 470      00
GAS LISTING /tmp/cckPQzVM.s 			page 16


 471 0980 C5FD5884 		vaddpd	2400(%rsp), %ymm0, %ymm0
 471      24600900 
 471      00
 472 0989 C5FD2984 		vmovapd	%ymm0, 2496(%rsp)
 472      24C00900 
 472      00
 473 0992 C5DD5984 		vmulpd	960(%rsp), %ymm4, %ymm0
 473      24C00300 
 473      00
 474 099b C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 475 099f C5FD5984 		vmulpd	2624(%rsp), %ymm0, %ymm0
 475      24400A00 
 475      00
 476 09a8 C5FD5884 		vaddpd	2304(%rsp), %ymm0, %ymm0
 476      24000900 
 476      00
 477 09b1 C5FD2984 		vmovapd	%ymm0, 2112(%rsp)
 477      24400800 
 477      00
 478 09ba C5DD5984 		vmulpd	992(%rsp), %ymm4, %ymm0
 478      24E00300 
 478      00
 479 09c3 C57D282D 		vmovapd	.LC20(%rip), %ymm13
 479      00000000 
 480 09cb C5ED598C 		vmulpd	1568(%rsp), %ymm2, %ymm1
 480      24200600 
 480      00
 481 09d4 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 482 09d8 C5FD5984 		vmulpd	2624(%rsp), %ymm0, %ymm0
 482      24400A00 
 482      00
 483 09e1 C5FD5884 		vaddpd	2336(%rsp), %ymm0, %ymm0
 483      24200900 
 483      00
 484 09ea C5FD2984 		vmovapd	%ymm0, 2144(%rsp)
 484      24600800 
 484      00
 485 09f3 C5D55984 		vmulpd	2624(%rsp), %ymm5, %ymm0
 485      24400A00 
 485      00
 486 09fc C5FD5884 		vaddpd	2432(%rsp), %ymm0, %ymm0
 486      24800900 
 486      00
 487 0a05 C5FD2984 		vmovapd	%ymm0, 2528(%rsp)
 487      24E00900 
 487      00
 488              	.L17:
 489 0a0e C5FD2802 		vmovapd	(%rdx), %ymm0
 490 0a12 4883C240 		addq	$64, %rdx
 491 0a16 4883C020 		addq	$32, %rax
 492 0a1a C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 492      00000000 
 493 0a22 C5FD2982 		vmovapd	%ymm0, -480(%rdx)
 493      20FEFFFF 
 494 0a2a C5E55450 		vandpd	-32(%rax), %ymm3, %ymm2
 494      E0
 495 0a2f C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
GAS LISTING /tmp/cckPQzVM.s 			page 17


 495      00000000 
 496 0a37 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 496      C008
 497 0a3d C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 497      00000000 
 498 0a45 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 498      C808
 499 0a4b C5FD118C 		vmovupd	%ymm1, 256(%rsp)
 499      24000100 
 499      00
 500 0a54 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 500      00000000 
 501 0a5c C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 501      00000000 
 502 0a64 C5FB10A4 		vmovsd	256(%rsp), %xmm4
 502      24000100 
 502      00
 503 0a6d C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 504 0a71 C5FB10AC 		vmovsd	264(%rsp), %xmm5
 504      24080100 
 504      00
 505 0a7a C4E1FB2C 		vcvttsd2siq	%xmm4, %rbx
 505      DC
 506 0a7f C461FB2C 		vcvttsd2siq	%xmm5, %r8
 506      C5
 507 0a84 C57B108C 		vmovsd	280(%rsp), %xmm9
 507      24180100 
 507      00
 508 0a8d C5FB10B4 		vmovsd	272(%rsp), %xmm6
 508      24100100 
 508      00
 509 0a96 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 510 0a9a C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 511 0a9e 48899C24 		movq	%rbx, 128(%rsp)
 511      80000000 
 512 0aa6 C4E1FB2C 		vcvttsd2siq	%xmm6, %rbx
 512      DE
 513 0aab C5FA7EA4 		vmovq	128(%rsp), %xmm4
 513      24800000 
 513      00
 514 0ab4 C4C3D922 		vpinsrq	$1, %r8, %xmm4, %xmm4
 514      E001
 515 0aba C441FB2C 		vcvttsd2siq	%xmm9, %r8
 515      C1
 516 0abf C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 517 0ac3 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 517      00000000 
 518 0acb C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 519 0acf 48899C24 		movq	%rbx, 128(%rsp)
 519      80000000 
 520 0ad7 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 520      00000000 
 521 0adf C5FA7EAC 		vmovq	128(%rsp), %xmm5
 521      24800000 
 521      00
 522 0ae8 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 522      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 18


 523 0af0 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 523      00000000 
 524 0af8 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 525 0afc C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 525      E801
 526 0b02 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 526      00000000 
 527 0b0a C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 527      00000000 
 528 0b12 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 529 0b16 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 529      D1
 530 0b1b C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 530      00000000 
 531 0b23 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 532 0b27 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 532      00000000 
 533 0b2f C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 534 0b33 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 534      CA
 535 0b38 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 535      00000000 
 536 0b40 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 536      00000000 
 537 0b48 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 537      F2
 538 0b4d C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 538      00000000 
 539 0b55 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 539      00000000 
 540 0b5d C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 541 0b61 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 542 0b65 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 543 0b69 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 543      00000000 
 544 0b71 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 545 0b75 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 545      C9
 546 0b7a C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 546      D201
 547 0b80 C5955CC0 		vsubpd	%ymm0, %ymm13, %ymm0
 548 0b84 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 549 0b88 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 549      F201
 550 0b8e C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 550      00000000 
 551 0b96 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 551      0D000000 
 551      00
 552 0b9f C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 553 0ba3 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 553      00000000 
 554 0bab C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 554      00000000 
 555 0bb3 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 555      15000000 
 555      00
GAS LISTING /tmp/cckPQzVM.s 			page 19


 556 0bbc C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 556      C7
 557 0bc1 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 557      00000000 
 558 0bc9 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 558      CF
 559 0bce C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 559      00000000 
 560 0bd6 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 560      00000000 
 561 0bde C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 561      C801
 562 0be4 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 562      05000000 
 562      00
 563 0bed C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 563      C801
 564 0bf3 C5F928C2 		vmovapd	%xmm2, %xmm0
 565 0bf7 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 565      00000000 
 566 0bff C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 566      00000000 
 567 0c07 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 567      01
 568 0c0c C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 568      00000000 
 569 0c14 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 569      3E
 570 0c19 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 570      05000000 
 570      00
 571 0c22 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 571      00000000 
 572 0c2a C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 572      C201
 573 0c30 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 574 0c34 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 574      D800
 575 0c3a C4C34D4B 		vblendvpd	%ymm0, %ymm13, %ymm6, %ymm0
 575      C500
 576 0c40 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 576      C310
 577 0c46 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 577      00000000 
 578 0c4e C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 578      00000000 
 579 0c56 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 579      3E
 580 0c5b C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 580      CA01
 581 0c61 C5FD2890 		vmovapd	160(%rax), %ymm2
 581      A0000000 
 582 0c69 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 582      C0
 583 0c6e C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 584 0c72 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 584      A0
GAS LISTING /tmp/cckPQzVM.s 			page 20


 585 0c77 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 586 0c7b C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 586      00000000 
 587 0c83 C5955CDB 		vsubpd	%ymm3, %ymm13, %ymm3
 588 0c87 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 589 0c8b C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 590 0c8f C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 591 0c93 C5FD2982 		vmovapd	%ymm0, -448(%rdx)
 591      40FEFFFF 
 592 0c9b 4839D1   		cmpq	%rdx, %rcx
 593 0c9e 0F856AFD 		jne	.L17
 593      FFFF
 594 0ca4 C5FD281D 		vmovapd	.LC25(%rip), %ymm3
 594      00000000 
 595 0cac C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 596 0cb0 C5FD2815 		vmovapd	.LC30(%rip), %ymm2
 596      00000000 
 597 0cb8 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 597      C0
 598 0cbd C5FD2825 		vmovapd	.LC29(%rip), %ymm4
 598      00000000 
 599 0cc5 4889F8   		movq	%rdi, %rax
 600 0cc8 4889F2   		movq	%rsi, %rdx
 601 0ccb C5ED598C 		vmulpd	832(%rsp), %ymm2, %ymm1
 601      24400300 
 601      00
 602 0cd4 C5FD282D 		vmovapd	.LC30(%rip), %ymm5
 602      00000000 
 603 0cdc C5FD28F4 		vmovapd	%ymm4, %ymm6
 604 0ce0 C5E55994 		vmulpd	1408(%rsp), %ymm3, %ymm2
 604      24800500 
 604      00
 605 0ce9 C5DD5984 		vmulpd	1600(%rsp), %ymm4, %ymm0
 605      24400600 
 605      00
 606 0cf2 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 607 0cf6 C5E55994 		vmulpd	1440(%rsp), %ymm3, %ymm2
 607      24A00500 
 607      00
 608 0cff C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 609 0d03 C5D5598C 		vmulpd	864(%rsp), %ymm5, %ymm1
 609      24600300 
 609      00
 610 0d0c C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 610      24000A00 
 610      00
 611 0d15 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 612 0d19 C5FD2815 		vmovapd	.LC31(%rip), %ymm2
 612      00000000 
 613 0d21 C5FD5884 		vaddpd	2176(%rsp), %ymm0, %ymm0
 613      24800800 
 613      00
 614 0d2a C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 614      24C00700 
 614      00
 615 0d33 C5DD5984 		vmulpd	1632(%rsp), %ymm4, %ymm0
 615      24600600 
GAS LISTING /tmp/cckPQzVM.s 			page 21


 615      00
 616 0d3c C5FD28E3 		vmovapd	%ymm3, %ymm4
 617 0d40 C5FD28DE 		vmovapd	%ymm6, %ymm3
 618 0d44 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 619 0d48 C5D5598C 		vmulpd	896(%rsp), %ymm5, %ymm1
 619      24800300 
 619      00
 620 0d51 C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 620      24000A00 
 620      00
 621 0d5a C5FD5884 		vaddpd	2208(%rsp), %ymm0, %ymm0
 621      24A00800 
 621      00
 622 0d63 C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 622      24E00700 
 622      00
 623 0d6c C5ED5984 		vmulpd	2560(%rsp), %ymm2, %ymm0
 623      24000A00 
 623      00
 624 0d75 C5DD5994 		vmulpd	1472(%rsp), %ymm4, %ymm2
 624      24C00500 
 624      00
 625 0d7e C5FD5884 		vaddpd	2368(%rsp), %ymm0, %ymm0
 625      24400900 
 625      00
 626 0d87 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 627 0d8b C5FD2984 		vmovapd	%ymm0, 2464(%rsp)
 627      24A00900 
 627      00
 628 0d94 C5CD5984 		vmulpd	1664(%rsp), %ymm6, %ymm0
 628      24800600 
 628      00
 629 0d9d C5FD28F5 		vmovapd	%ymm5, %ymm6
 630 0da1 C5FD28EC 		vmovapd	%ymm4, %ymm5
 631 0da5 C5FD28E3 		vmovapd	%ymm3, %ymm4
 632 0da9 C5D55994 		vmulpd	1504(%rsp), %ymm5, %ymm2
 632      24E00500 
 632      00
 633 0db2 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 634 0db6 C5CD598C 		vmulpd	928(%rsp), %ymm6, %ymm1
 634      24A00300 
 634      00
 635 0dbf C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 635      00000000 
 636 0dc7 C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 636      24200A00 
 636      00
 637 0dd0 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 638 0dd4 C5FD5884 		vaddpd	2240(%rsp), %ymm0, %ymm0
 638      24C00800 
 638      00
 639 0ddd C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 639      24000800 
 639      00
 640 0de6 C5E55984 		vmulpd	1696(%rsp), %ymm3, %ymm0
 640      24A00600 
 640      00
GAS LISTING /tmp/cckPQzVM.s 			page 22


 641 0def C5FD28DD 		vmovapd	%ymm5, %ymm3
 642 0df3 C5FD28EC 		vmovapd	%ymm4, %ymm5
 643 0df7 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 644 0dfb C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 644      24200A00 
 644      00
 645 0e04 C5FD5884 		vaddpd	2272(%rsp), %ymm0, %ymm0
 645      24E00800 
 645      00
 646 0e0d C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 646      24200800 
 646      00
 647 0e16 C5CD5984 		vmulpd	2592(%rsp), %ymm6, %ymm0
 647      24200A00 
 647      00
 648 0e1f C5FD5884 		vaddpd	2400(%rsp), %ymm0, %ymm0
 648      24600900 
 648      00
 649 0e28 C5FD2984 		vmovapd	%ymm0, 2496(%rsp)
 649      24C00900 
 649      00
 650 0e31 C5DD5984 		vmulpd	1728(%rsp), %ymm4, %ymm0
 650      24C00600 
 650      00
 651 0e3a C5FD2825 		vmovapd	.LC30(%rip), %ymm4
 651      00000000 
 652 0e42 C5FD2894 		vmovapd	1536(%rsp), %ymm2
 652      24000600 
 652      00
 653 0e4b C5DD598C 		vmulpd	960(%rsp), %ymm4, %ymm1
 653      24C00300 
 653      00
 654 0e54 C57D2835 		vmovapd	.LC20(%rip), %ymm14
 654      00000000 
 655 0e5c C5ED59D3 		vmulpd	%ymm3, %ymm2, %ymm2
 656 0e60 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 657 0e64 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 658 0e68 C5DD598C 		vmulpd	992(%rsp), %ymm4, %ymm1
 658      24E00300 
 658      00
 659 0e71 C5FD2825 		vmovapd	.LC31(%rip), %ymm4
 659      00000000 
 660 0e79 C5FD5984 		vmulpd	2624(%rsp), %ymm0, %ymm0
 660      24400A00 
 660      00
 661 0e82 C5FD5884 		vaddpd	2304(%rsp), %ymm0, %ymm0
 661      24000900 
 661      00
 662 0e8b C5FD2984 		vmovapd	%ymm0, 2112(%rsp)
 662      24400800 
 662      00
 663 0e94 C5D55984 		vmulpd	1760(%rsp), %ymm5, %ymm0
 663      24E00600 
 663      00
 664 0e9d C5FD282D 		vmovapd	.LC25(%rip), %ymm5
 664      00000000 
 665 0ea5 C5D55994 		vmulpd	1568(%rsp), %ymm5, %ymm2
GAS LISTING /tmp/cckPQzVM.s 			page 23


 665      24200600 
 665      00
 666 0eae C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 667 0eb2 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 668 0eb6 C5FD5984 		vmulpd	2624(%rsp), %ymm0, %ymm0
 668      24400A00 
 668      00
 669 0ebf C5FD5884 		vaddpd	2336(%rsp), %ymm0, %ymm0
 669      24200900 
 669      00
 670 0ec8 C5FD2984 		vmovapd	%ymm0, 2144(%rsp)
 670      24600800 
 670      00
 671 0ed1 C5DD5984 		vmulpd	2624(%rsp), %ymm4, %ymm0
 671      24400A00 
 671      00
 672 0eda C5FD5884 		vaddpd	2432(%rsp), %ymm0, %ymm0
 672      24800900 
 672      00
 673 0ee3 C5FD2984 		vmovapd	%ymm0, 2528(%rsp)
 673      24E00900 
 673      00
 674              	.L19:
 675 0eec C5FD2802 		vmovapd	(%rdx), %ymm0
 676 0ef0 4883C240 		addq	$64, %rdx
 677 0ef4 4883C020 		addq	$32, %rax
 678 0ef8 C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 678      00000000 
 679 0f00 C5FD2982 		vmovapd	%ymm0, -288(%rdx)
 679      E0FEFFFF 
 680 0f08 C5E55450 		vandpd	-32(%rax), %ymm3, %ymm2
 680      E0
 681 0f0d C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 681      00000000 
 682 0f15 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 682      C008
 683 0f1b C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 683      C808
 684 0f21 C5FD118C 		vmovupd	%ymm1, 288(%rsp)
 684      24200100 
 684      00
 685 0f2a C57B10AC 		vmovsd	288(%rsp), %xmm13
 685      24200100 
 685      00
 686 0f33 C57B10BC 		vmovsd	296(%rsp), %xmm15
 686      24280100 
 686      00
 687 0f3c C4C1FB2C 		vcvttsd2siq	%xmm13, %rbx
 687      DD
 688 0f41 C441FB2C 		vcvttsd2siq	%xmm15, %r8
 688      C7
 689 0f46 C5FB109C 		vmovsd	312(%rsp), %xmm3
 689      24380100 
 689      00
 690 0f4f C5FB108C 		vmovsd	304(%rsp), %xmm1
 690      24300100 
 690      00
GAS LISTING /tmp/cckPQzVM.s 			page 24


 691 0f58 48899C24 		movq	%rbx, 128(%rsp)
 691      80000000 
 692 0f60 C4E1FB2C 		vcvttsd2siq	%xmm1, %rbx
 692      D9
 693 0f65 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 693      24800000 
 693      00
 694 0f6e C4C3D922 		vpinsrq	$1, %r8, %xmm4, %xmm4
 694      E001
 695 0f74 C461FB2C 		vcvttsd2siq	%xmm3, %r8
 695      C3
 696 0f79 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 696      00000000 
 697 0f81 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 697      00000000 
 698 0f89 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 698      00000000 
 699 0f91 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 700 0f95 48899C24 		movq	%rbx, 128(%rsp)
 700      80000000 
 701 0f9d C5FA7EAC 		vmovq	128(%rsp), %xmm5
 701      24800000 
 701      00
 702 0fa6 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 702      E801
 703 0fac C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 704 0fb0 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 705 0fb4 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 706 0fb8 C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 706      00000000 
 707 0fc0 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 708 0fc4 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 708      00000000 
 709 0fcc C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 709      00000000 
 710 0fd4 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 710      00000000 
 711 0fdc C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 712 0fe0 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 712      00000000 
 713 0fe8 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 713      00000000 
 714 0ff0 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 715 0ff4 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 715      D1
 716 0ff9 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 716      00000000 
 717 1001 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 718 1005 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 718      00000000 
 719 100d C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 720 1011 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 720      CA
 721 1016 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 721      00000000 
 722 101e C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 722      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 25


 723 1026 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 723      F2
 724 102b C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 724      00000000 
 725 1033 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 725      00000000 
 726 103b C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 727 103f C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 728 1043 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 729 1047 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 729      00000000 
 730 104f C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 731 1053 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 731      C9
 732 1058 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 732      D201
 733 105e C58D5CC0 		vsubpd	%ymm0, %ymm14, %ymm0
 734 1062 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 735 1066 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 735      F201
 736 106c C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 736      00000000 
 737 1074 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 737      0D000000 
 737      00
 738 107d C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 739 1081 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 739      00000000 
 740 1089 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 740      00000000 
 741 1091 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 741      15000000 
 741      00
 742 109a C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 742      C7
 743 109f C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 743      00000000 
 744 10a7 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 744      CF
 745 10ac C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 745      00000000 
 746 10b4 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 746      00000000 
 747 10bc C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 747      C801
 748 10c2 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 748      05000000 
 748      00
 749 10cb C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 749      C801
 750 10d1 C5F928C2 		vmovapd	%xmm2, %xmm0
 751 10d5 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 751      00000000 
 752 10dd C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 752      00000000 
 753 10e5 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 753      01
GAS LISTING /tmp/cckPQzVM.s 			page 26


 754 10ea C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 754      00000000 
 755 10f2 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 755      3E
 756 10f7 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 756      05000000 
 756      00
 757 1100 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 757      00000000 
 758 1108 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 758      C201
 759 110e C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 760 1112 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 760      D800
 761 1118 C4C34D4B 		vblendvpd	%ymm0, %ymm14, %ymm6, %ymm0
 761      C600
 762 111e C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 762      C310
 763 1124 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 763      00000000 
 764 112c C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 764      00000000 
 765 1134 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 765      3E
 766 1139 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 766      CA01
 767 113f C5FD2890 		vmovapd	160(%rax), %ymm2
 767      A0000000 
 768 1147 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 768      C0
 769 114c C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 770 1150 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 770      A0
 771 1155 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 772 1159 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 772      00000000 
 773 1161 C58D5CDB 		vsubpd	%ymm3, %ymm14, %ymm3
 774 1165 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 775 1169 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 776 116d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 777 1171 C5FD2982 		vmovapd	%ymm0, -256(%rdx)
 777      00FFFFFF 
 778 1179 4839D1   		cmpq	%rdx, %rcx
 779 117c 0F856AFD 		jne	.L19
 779      FFFF
 780 1182 488D8424 		leaq	832(%rsp), %rax
 780      40030000 
 781 118a 4C8D8424 		leaq	1024(%rsp), %r8
 781      00040000 
 782 1192 C5FD2825 		vmovapd	.LC33(%rip), %ymm4
 782      00000000 
 783 119a C5FD282D 		vmovapd	.LC34(%rip), %ymm5
 783      00000000 
 784 11a2 C5FD2835 		vmovapd	.LC32(%rip), %ymm6
 784      00000000 
 785 11aa 4889C2   		movq	%rax, %rdx
 786              	.L21:
GAS LISTING /tmp/cckPQzVM.s 			page 27


 787 11ad C5FD281D 		vmovapd	.LC32(%rip), %ymm3
 787      00000000 
 788 11b5 4883C040 		addq	$64, %rax
 789 11b9 4883C220 		addq	$32, %rdx
 790 11bd C5D55940 		vmulpd	-64(%rax), %ymm5, %ymm0
 790      C0
 791 11c2 C5E55988 		vmulpd	896(%rax), %ymm3, %ymm1
 791      80030000 
 792 11ca C5FD281D 		vmovapd	.LC35(%rip), %ymm3
 792      00000000 
 793 11d2 C5DD5990 		vmulpd	704(%rax), %ymm4, %ymm2
 793      C0020000 
 794 11da C5E55998 		vmulpd	512(%rax), %ymm3, %ymm3
 794      00020000 
 795 11e2 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 796 11e6 C5FD281D 		vmovapd	.LC35(%rip), %ymm3
 796      00000000 
 797 11ee C5E55998 		vmulpd	544(%rax), %ymm3, %ymm3
 797      20020000 
 798 11f6 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 799 11fa C5DD5990 		vmulpd	736(%rax), %ymm4, %ymm2
 799      E0020000 
 800 1202 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 801 1206 C5CD5988 		vmulpd	928(%rax), %ymm6, %ymm1
 801      A0030000 
 802 120e C5FD5982 		vmulpd	1696(%rdx), %ymm0, %ymm0
 802      A0060000 
 803 1216 C5FD5880 		vaddpd	1280(%rax), %ymm0, %ymm0
 803      00050000 
 804 121e C5FD2980 		vmovapd	%ymm0, 1088(%rax)
 804      40040000 
 805 1226 C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 805      E0
 806 122b C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 807 122f C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 808 1233 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 809 1237 C5FD5982 		vmulpd	1696(%rdx), %ymm0, %ymm0
 809      A0060000 
 810 123f C5FD5880 		vaddpd	1312(%rax), %ymm0, %ymm0
 810      20050000 
 811 1247 C5FD2980 		vmovapd	%ymm0, 1120(%rax)
 811      60040000 
 812 124f C5FD2882 		vmovapd	1696(%rdx), %ymm0
 812      A0060000 
 813 1257 C5FD5882 		vaddpd	1504(%rdx), %ymm0, %ymm0
 813      E0050000 
 814 125f C5FD2982 		vmovapd	%ymm0, 1600(%rdx)
 814      40060000 
 815 1267 4C39C0   		cmpq	%r8, %rax
 816 126a 0F853DFF 		jne	.L21
 816      FFFF
 817 1270 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 818 1274 C57D283D 		vmovapd	.LC20(%rip), %ymm15
 818      00000000 
 819 127c 4889F8   		movq	%rdi, %rax
 820 127f C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 820      C0
GAS LISTING /tmp/cckPQzVM.s 			page 28


 821 1284 4889F2   		movq	%rsi, %rdx
 822              	.L23:
 823 1287 C5FD2802 		vmovapd	(%rdx), %ymm0
 824 128b 4883C240 		addq	$64, %rdx
 825 128f 4883C020 		addq	$32, %rax
 826 1293 C5FD2835 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 826      00000000 
 827 129b C5FD2982 		vmovapd	%ymm0, -864(%rdx)
 827      A0FCFFFF 
 828 12a3 C5CD5450 		vandpd	-32(%rax), %ymm6, %ymm2
 828      E0
 829 12a8 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 829      00000000 
 830 12b0 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 830      C008
 831 12b6 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 831      00000000 
 832 12be C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 832      C808
 833 12c4 C5FD118C 		vmovupd	%ymm1, 320(%rsp)
 833      24400100 
 833      00
 834 12cd C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 834      00000000 
 835 12d5 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 835      00000000 
 836 12dd C57B1094 		vmovsd	328(%rsp), %xmm10
 836      24480100 
 836      00
 837 12e6 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 838 12ea C57B108C 		vmovsd	320(%rsp), %xmm9
 838      24400100 
 838      00
 839 12f3 C441FB2C 		vcvttsd2siq	%xmm10, %r8
 839      C2
 840 12f8 C4C1FB2C 		vcvttsd2siq	%xmm9, %rbx
 840      D9
 841 12fd C57B109C 		vmovsd	336(%rsp), %xmm11
 841      24500100 
 841      00
 842 1306 C57B10A4 		vmovsd	344(%rsp), %xmm12
 842      24580100 
 842      00
 843 130f C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 844 1313 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 845 1317 48899C24 		movq	%rbx, 128(%rsp)
 845      80000000 
 846 131f C4C1FB2C 		vcvttsd2siq	%xmm11, %rbx
 846      DB
 847 1324 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 847      24800000 
 847      00
 848 132d C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 849 1331 C4C3D922 		vpinsrq	$1, %r8, %xmm4, %xmm4
 849      E001
 850 1337 C441FB2C 		vcvttsd2siq	%xmm12, %r8
 850      C4
GAS LISTING /tmp/cckPQzVM.s 			page 29


 851 133c C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 851      00000000 
 852 1344 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 853 1348 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 853      00000000 
 854 1350 48899C24 		movq	%rbx, 128(%rsp)
 854      80000000 
 855 1358 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 855      00000000 
 856 1360 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 856      00000000 
 857 1368 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 858 136c C5FA7EAC 		vmovq	128(%rsp), %xmm5
 858      24800000 
 858      00
 859 1375 C4C3D122 		vpinsrq	$1, %r8, %xmm5, %xmm5
 859      E801
 860 137b C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 860      00000000 
 861 1383 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 861      00000000 
 862 138b C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 863 138f C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 863      D1
 864 1394 C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 864      00000000 
 865 139c C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 866 13a0 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 866      00000000 
 867 13a8 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 868 13ac C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 868      CA
 869 13b1 C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 869      00000000 
 870 13b9 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 870      00000000 
 871 13c1 C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 871      F2
 872 13c6 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 872      00000000 
 873 13ce C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 873      00000000 
 874 13d6 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 875 13da C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 876 13de C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 877 13e2 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 877      00000000 
 878 13ea C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 879 13ee C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 879      C9
 880 13f3 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 880      D201
 881 13f9 C5855CC0 		vsubpd	%ymm0, %ymm15, %ymm0
 882 13fd C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 883 1401 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 883      F201
 884 1407 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
GAS LISTING /tmp/cckPQzVM.s 			page 30


 884      00000000 
 885 140f C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 885      0D000000 
 885      00
 886 1418 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 887 141c C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 887      00000000 
 888 1424 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 888      00000000 
 889 142c C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 889      15000000 
 889      00
 890 1435 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 890      C7
 891 143a C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 891      00000000 
 892 1442 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 892      CF
 893 1447 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 893      00000000 
 894 144f C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 894      00000000 
 895 1457 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 895      C801
 896 145d C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 896      05000000 
 896      00
 897 1466 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 897      C801
 898 146c C5F928C2 		vmovapd	%xmm2, %xmm0
 899 1470 C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 899      00000000 
 900 1478 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 900      00000000 
 901 1480 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 901      01
 902 1485 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 902      00000000 
 903 148d C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 903      3E
 904 1492 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 904      05000000 
 904      00
 905 149b C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 905      00000000 
 906 14a3 C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 906      C201
 907 14a9 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 908 14ad C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 908      D800
 909 14b3 C4C34D4B 		vblendvpd	%ymm0, %ymm15, %ymm6, %ymm0
 909      C700
 910 14b9 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 910      C310
 911 14bf C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 911      00000000 
 912 14c7 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
GAS LISTING /tmp/cckPQzVM.s 			page 31


 912      00000000 
 913 14cf C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 913      3E
 914 14d4 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 914      CA01
 915 14da C5FD2890 		vmovapd	160(%rax), %ymm2
 915      A0000000 
 916 14e2 C5ED5952 		vmulpd	-64(%rdx), %ymm2, %ymm2
 916      C0
 917 14e7 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 918 14eb C5FD2842 		vmovapd	-96(%rdx), %ymm0
 918      A0
 919 14f0 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 920 14f4 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 920      00000000 
 921 14fc C5855CDB 		vsubpd	%ymm3, %ymm15, %ymm3
 922 1500 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 923 1504 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 924 1508 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 925 150c C5FD2982 		vmovapd	%ymm0, -832(%rdx)
 925      C0FCFFFF 
 926 1514 4839D1   		cmpq	%rdx, %rcx
 927 1517 0F856AFD 		jne	.L23
 927      FFFF
 928 151d 488D9424 		leaq	832(%rsp), %rdx
 928      40030000 
 929 1525 C5FD282D 		vmovapd	.LC38(%rip), %ymm5
 929      00000000 
 930 152d 41B80300 		movl	$3, %r8d
 930      0000
 931 1533 C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 931      00000000 
 932 153b 4889D0   		movq	%rdx, %rax
 933              	.L25:
 934 153e C5FD2825 		vmovapd	.LC37(%rip), %ymm4
 934      00000000 
 935 1546 4883C040 		addq	$64, %rax
 936 154a 4883C220 		addq	$32, %rdx
 937 154e C5CD5940 		vmulpd	-64(%rax), %ymm6, %ymm0
 937      C0
 938 1553 C5FD281D 		vmovapd	.LC36(%rip), %ymm3
 938      00000000 
 939 155b C5DD5990 		vmulpd	896(%rax), %ymm4, %ymm2
 939      80030000 
 940 1563 C5FD2825 		vmovapd	.LC40(%rip), %ymm4
 940      00000000 
 941 156b C5E55988 		vmulpd	320(%rax), %ymm3, %ymm1
 941      40010000 
 942 1573 C5DD59A0 		vmulpd	512(%rax), %ymm4, %ymm4
 942      00020000 
 943 157b C5D55998 		vmulpd	704(%rax), %ymm5, %ymm3
 943      C0020000 
 944 1583 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 945 1587 C5FD2825 		vmovapd	.LC40(%rip), %ymm4
 945      00000000 
 946 158f C5DD59A0 		vmulpd	544(%rax), %ymm4, %ymm4
 946      20020000 
GAS LISTING /tmp/cckPQzVM.s 			page 32


 947 1597 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 948 159b C5FD281D 		vmovapd	.LC37(%rip), %ymm3
 948      00000000 
 949 15a3 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 950 15a7 C5FD2815 		vmovapd	.LC36(%rip), %ymm2
 950      00000000 
 951 15af C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 952 15b3 C5ED5988 		vmulpd	352(%rax), %ymm2, %ymm1
 952      60010000 
 953 15bb C5E55990 		vmulpd	928(%rax), %ymm3, %ymm2
 953      A0030000 
 954 15c3 C5FD5982 		vmulpd	1696(%rdx), %ymm0, %ymm0
 954      A0060000 
 955 15cb C5D55998 		vmulpd	736(%rax), %ymm5, %ymm3
 955      E0020000 
 956 15d3 C5FD5880 		vaddpd	1280(%rax), %ymm0, %ymm0
 956      00050000 
 957 15db C5FD2980 		vmovapd	%ymm0, 1088(%rax)
 957      40040000 
 958 15e3 C5CD5940 		vmulpd	-32(%rax), %ymm6, %ymm0
 958      E0
 959 15e8 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 960 15ec C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 961 15f0 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 962 15f4 C5FD2815 		vmovapd	.LC41(%rip), %ymm2
 962      00000000 
 963 15fc C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 964 1600 C5FD5982 		vmulpd	1696(%rdx), %ymm0, %ymm0
 964      A0060000 
 965 1608 C5FD5880 		vaddpd	1312(%rax), %ymm0, %ymm0
 965      20050000 
 966 1610 C5FD2980 		vmovapd	%ymm0, 1120(%rax)
 966      60040000 
 967 1618 C5ED5982 		vmulpd	1696(%rdx), %ymm2, %ymm0
 967      A0060000 
 968 1620 C5FD5882 		vaddpd	1504(%rdx), %ymm0, %ymm0
 968      E0050000 
 969 1628 C5FD2982 		vmovapd	%ymm0, 1600(%rdx)
 969      40060000 
 970 1630 4183E801 		subl	$1, %r8d
 971 1634 0F8504FF 		jne	.L25
 971      FFFF
 972 163a C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 973 163e C57D2825 		vmovapd	.LC20(%rip), %ymm12
 973      00000000 
 974 1646 4889FA   		movq	%rdi, %rdx
 975 1649 C4413957 		vxorpd	%xmm8, %xmm8, %xmm8
 975      C0
 976 164e 4889F0   		movq	%rsi, %rax
 977              	.L27:
 978 1651 C5FD2800 		vmovapd	(%rax), %ymm0
 979 1655 4883C040 		addq	$64, %rax
 980 1659 4883C220 		addq	$32, %rdx
 981 165d C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 981      00000000 
 982 1665 C5FD2980 		vmovapd	%ymm0, -1056(%rax)
 982      E0FBFFFF 
GAS LISTING /tmp/cckPQzVM.s 			page 33


 983 166d C5E55452 		vandpd	-32(%rdx), %ymm3, %ymm2
 983      E0
 984 1672 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 984      00000000 
 985 167a C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 985      C008
 986 1680 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 986      C808
 987 1686 C5FD118C 		vmovupd	%ymm1, 352(%rsp)
 987      24600100 
 987      00
 988 168f C5FB108C 		vmovsd	352(%rsp), %xmm1
 988      24600100 
 988      00
 989 1698 C5FB109C 		vmovsd	360(%rsp), %xmm3
 989      24680100 
 989      00
 990 16a1 C4E1FB2C 		vcvttsd2siq	%xmm1, %rdi
 990      F9
 991 16a6 C4E1FB2C 		vcvttsd2siq	%xmm3, %rsi
 991      F3
 992 16ab C5FB10B4 		vmovsd	376(%rsp), %xmm6
 992      24780100 
 992      00
 993 16b4 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 993      00000000 
 994 16bc 4889BC24 		movq	%rdi, 128(%rsp)
 994      80000000 
 995 16c4 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 995      24800000 
 995      00
 996 16cd C4E3D122 		vpinsrq	$1, %rsi, %xmm5, %xmm4
 996      E601
 997 16d3 C4E1FB2C 		vcvttsd2siq	%xmm6, %rsi
 997      F6
 998 16d8 C5FB10AC 		vmovsd	368(%rsp), %xmm5
 998      24700100 
 998      00
 999 16e1 C4E1FB2C 		vcvttsd2siq	%xmm5, %rdi
 999      FD
 1000 16e6 4889BC24 		movq	%rdi, 128(%rsp)
 1000      80000000 
 1001 16ee C5FA7E9C 		vmovq	128(%rsp), %xmm3
 1001      24800000 
 1001      00
 1002 16f7 C4E3E122 		vpinsrq	$1, %rsi, %xmm3, %xmm5
 1002      EE01
 1003 16fd C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 1003      00000000 
 1004 1705 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 1004      00000000 
 1005 170d C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 1006 1711 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 1007 1715 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 1008 1719 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 1009 171d C57D5915 		vmulpd	.LC9(%rip), %ymm0, %ymm10
 1009      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 34


 1010 1725 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 1011 1729 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 1011      00000000 
 1012 1731 C57D591D 		vmulpd	.LC15(%rip), %ymm0, %ymm11
 1012      00000000 
 1013 1739 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 1013      00000000 
 1014 1741 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 1015 1745 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 1015      00000000 
 1016 174d C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 1016      00000000 
 1017 1755 C52D59D6 		vmulpd	%ymm6, %ymm10, %ymm10
 1018 1759 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 1018      D1
 1019 175e C57D590D 		vmulpd	.LC11(%rip), %ymm0, %ymm9
 1019      00000000 
 1020 1766 C5A559F6 		vmulpd	%ymm6, %ymm11, %ymm6
 1021 176a C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 1021      00000000 
 1022 1772 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1023 1776 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1023      CA
 1024 177b C57D5915 		vmulpd	.LC13(%rip), %ymm0, %ymm10
 1024      00000000 
 1025 1783 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 1025      00000000 
 1026 178b C4C14D58 		vaddpd	%ymm10, %ymm6, %ymm6
 1026      F2
 1027 1790 C57D5915 		vmulpd	.LC17(%rip), %ymm0, %ymm10
 1027      00000000 
 1028 1798 C52D5815 		vaddpd	.LC18(%rip), %ymm10, %ymm10
 1028      00000000 
 1029 17a0 C52D59D1 		vmulpd	%ymm1, %ymm10, %ymm10
 1030 17a4 C5AD58F6 		vaddpd	%ymm6, %ymm10, %ymm6
 1031 17a8 C56559D0 		vmulpd	%ymm0, %ymm3, %ymm10
 1032 17ac C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 1032      00000000 
 1033 17b4 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 1034 17b8 C4412D59 		vmulpd	%ymm9, %ymm10, %ymm9
 1034      C9
 1035 17bd C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 1035      D201
 1036 17c3 C59D5CC0 		vsubpd	%ymm0, %ymm12, %ymm0
 1037 17c7 C5B558DB 		vaddpd	%ymm3, %ymm9, %ymm3
 1038 17cb C4C12973 		vpsllq	$1, %xmm10, %xmm10
 1038      F201
 1039 17d1 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 1039      00000000 
 1040 17d9 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm9
 1040      0D000000 
 1040      00
 1041 17e2 C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 1042 17e6 C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 1042      00000000 
 1043 17ee C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 1043      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 35


 1044 17f6 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 1044      15000000 
 1044      00
 1045 17ff C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 1045      C7
 1046 1804 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1046      00000000 
 1047 180c C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 1047      CF
 1048 1811 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1048      00000000 
 1049 1819 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 1049      00000000 
 1050 1821 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 1050      C801
 1051 1827 C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 1051      05000000 
 1051      00
 1052 1830 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 1052      C801
 1053 1836 C5F928C2 		vmovapd	%xmm2, %xmm0
 1054 183a C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 1054      00000000 
 1055 1842 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 1055      00000000 
 1056 184a C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1056      01
 1057 184f C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1057      00000000 
 1058 1857 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 1058      3E
 1059 185c C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1059      05000000 
 1059      00
 1060 1865 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1060      00000000 
 1061 186d C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 1061      C201
 1062 1873 C5B554C0 		vandpd	%ymm0, %ymm9, %ymm0
 1063 1877 C4C3654B 		vblendvpd	%ymm0, %ymm8, %ymm3, %ymm3
 1063      D800
 1064 187d C4C34D4B 		vblendvpd	%ymm0, %ymm12, %ymm6, %ymm0
 1064      C400
 1065 1883 C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 1065      C310
 1066 1889 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 1066      00000000 
 1067 1891 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 1067      00000000 
 1068 1899 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 1068      3E
 1069 189e C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 1069      CA01
 1070 18a4 C5FD2892 		vmovapd	160(%rdx), %ymm2
 1070      A0000000 
 1071 18ac C5ED5950 		vmulpd	-64(%rax), %ymm2, %ymm2
 1071      C0
GAS LISTING /tmp/cckPQzVM.s 			page 36


 1072 18b1 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 1073 18b5 C5FD2840 		vmovapd	-96(%rax), %ymm0
 1073      A0
 1074 18ba C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1075 18be C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 1075      00000000 
 1076 18c6 C59D5CDB 		vsubpd	%ymm3, %ymm12, %ymm3
 1077 18ca C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 1078 18ce C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 1079 18d2 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1080 18d6 C5FD2980 		vmovapd	%ymm0, -1024(%rax)
 1080      00FCFFFF 
 1081 18de 4839C1   		cmpq	%rax, %rcx
 1082 18e1 0F856AFD 		jne	.L27
 1082      FFFF
 1083 18e7 488D8424 		leaq	832(%rsp), %rax
 1083      40030000 
 1084 18ef 488DBC24 		leaq	1024(%rsp), %rdi
 1084      00040000 
 1085 18f7 BE010000 		movl	$1, %esi
 1085      00
 1086 18fc 4889C1   		movq	%rax, %rcx
 1087              	.L31:
 1088 18ff 8D56FF   		leal	-1(%rsi), %edx
 1089 1902 4889F8   		movq	%rdi, %rax
 1090              		.p2align 4,,10
 1091 1905 0F1F00   		.p2align 3
 1092              	.L29:
 1093 1908 C5FD282D 		vmovapd	.LC42(%rip), %ymm5
 1093      00000000 
 1094 1910 83C201   		addl	$1, %edx
 1095 1913 4883C020 		addq	$32, %rax
 1096 1917 C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1096      00000000 
 1097 191f C5D55948 		vmulpd	-32(%rax), %ymm5, %ymm1
 1097      E0
 1098 1924 C5FD282D 		vmovapd	.LC44(%rip), %ymm5
 1098      00000000 
 1099 192c C5CD5998 		vmulpd	352(%rax), %ymm6, %ymm3
 1099      60010000 
 1100 1934 C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 1100      00000000 
 1101 193c C5D55980 		vmulpd	544(%rax), %ymm5, %ymm0
 1101      20020000 
 1102 1944 C5FD2825 		vmovapd	.LC46(%rip), %ymm4
 1102      00000000 
 1103 194c C5C55990 		vmulpd	736(%rax), %ymm7, %ymm2
 1103      E0020000 
 1104 1954 C5FD2835 		vmovapd	.LC49(%rip), %ymm6
 1104      00000000 
 1105 195c C5FD282D 		vmovapd	.LC48(%rip), %ymm5
 1105      00000000 
 1106 1964 C5FD283D 		vmovapd	.LC47(%rip), %ymm7
 1106      00000000 
 1107 196c C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 1108 1970 C5D55998 		vmulpd	736(%rax), %ymm5, %ymm3
 1108      E0020000 
GAS LISTING /tmp/cckPQzVM.s 			page 37


 1109 1978 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1110 197c C5C55990 		vmulpd	160(%rax), %ymm7, %ymm2
 1110      A0000000 
 1111 1984 C5FD283D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 1111      00000000 
 1112 198c C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1113 1990 C5DD5948 		vmulpd	-32(%rax), %ymm4, %ymm1
 1113      E0
 1114 1995 C5FD2825 		vmovapd	.LC50(%rip), %ymm4
 1114      00000000 
 1115 199d C5DD59A0 		vmulpd	352(%rax), %ymm4, %ymm4
 1115      60010000 
 1116 19a5 C5FD5981 		vmulpd	1728(%rcx), %ymm0, %ymm0
 1116      C0060000 
 1117 19ad C5FD5880 		vaddpd	1120(%rax), %ymm0, %ymm0
 1117      60040000 
 1118 19b5 C5FD2980 		vmovapd	%ymm0, 928(%rax)
 1118      A0030000 
 1119 19bd C5CD5980 		vmulpd	544(%rax), %ymm6, %ymm0
 1119      20020000 
 1120 19c5 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 1121 19c9 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1122 19cd C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 1123 19d1 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 1124 19d5 C5C55488 		vandpd	928(%rax), %ymm7, %ymm1
 1124      A0030000 
 1125 19dd C5FD5981 		vmulpd	1728(%rcx), %ymm0, %ymm0
 1125      C0060000 
 1126 19e5 C5F5590D 		vmulpd	.LC51(%rip), %ymm1, %ymm1
 1126      00000000 
 1127 19ed C5FD2980 		vmovapd	%ymm0, -224(%rax)
 1127      20FFFFFF 
 1128 19f5 C5F5580D 		vaddpd	.LC51(%rip), %ymm1, %ymm1
 1128      00000000 
 1129 19fd C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 1130 1a01 C5FD2948 		vmovapd	%ymm1, -32(%rax)
 1130      E0
 1131 1a06 C5FD54C7 		vandpd	%ymm7, %ymm0, %ymm0
 1132 1a0a C5FD2980 		vmovapd	%ymm0, 160(%rax)
 1132      A0000000 
 1133 1a12 39D6     		cmpl	%edx, %esi
 1134 1a14 0F8DEEFE 		jge	.L29
 1134      FFFF
 1135 1a1a 83C602   		addl	$2, %esi
 1136 1a1d 4883C120 		addq	$32, %rcx
 1137 1a21 4883C740 		addq	$64, %rdi
 1138 1a25 83FE07   		cmpl	$7, %esi
 1139 1a28 0F85D1FE 		jne	.L31
 1139      FFFF
 1140 1a2e C5FD2884 		vmovapd	1216(%rsp), %ymm0
 1140      24C00400 
 1140      00
 1141 1a37 488D8424 		leaq	832(%rsp), %rax
 1141      40030000 
 1142 1a3f 4C8D8424 		leaq	2176(%rsp), %r8
 1142      80080000 
 1143 1a47 C5FD286C 		vmovapd	32(%rsp), %ymm5
GAS LISTING /tmp/cckPQzVM.s 			page 38


 1143      2420
 1144 1a4d 31FF     		xorl	%edi, %edi
 1145 1a4f C5FD5D84 		vminpd	1248(%rsp), %ymm0, %ymm0
 1145      24E00400 
 1145      00
 1146 1a58 4889C6   		movq	%rax, %rsi
 1147 1a5b C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 1147      24000400 
 1147      00
 1148 1a64 C5FD2884 		vmovapd	1280(%rsp), %ymm0
 1148      24000500 
 1148      00
 1149 1a6d C5FD5D84 		vminpd	1312(%rsp), %ymm0, %ymm0
 1149      24200500 
 1149      00
 1150 1a76 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 1150      24200400 
 1150      00
 1151 1a7f C5FD2884 		vmovapd	1344(%rsp), %ymm0
 1151      24400500 
 1151      00
 1152 1a88 C5FD5D84 		vminpd	1376(%rsp), %ymm0, %ymm0
 1152      24600500 
 1152      00
 1153 1a91 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 1153      24400400 
 1153      00
 1154              	.L37:
 1155 1a9a C5FD28A6 		vmovapd	192(%rsi), %ymm4
 1155      C0000000 
 1156 1aa2 C5FD283D 		vmovapd	.LC56(%rip), %ymm7
 1156      00000000 
 1157 1aaa C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1157      E301
 1158 1ab0 C5F928D4 		vmovapd	%xmm4, %xmm2
 1159 1ab4 C5E9DB05 		vpand	.LC52(%rip), %xmm2, %xmm0
 1159      00000000 
 1160 1abc C5C973D2 		vpsrlq	$52, %xmm2, %xmm6
 1160      34
 1161 1ac1 C5E1DB0D 		vpand	.LC52(%rip), %xmm3, %xmm1
 1161      00000000 
 1162 1ac9 C5C9EB35 		vpor	.LC54(%rip), %xmm6, %xmm6
 1162      00000000 
 1163 1ad1 C5F9EB05 		vpor	.LC53(%rip), %xmm0, %xmm0
 1163      00000000 
 1164 1ad9 C5F1EB0D 		vpor	.LC53(%rip), %xmm1, %xmm1
 1164      00000000 
 1165 1ae1 C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 1165      C101
 1166 1ae7 C5F173D3 		vpsrlq	$52, %xmm3, %xmm1
 1166      34
 1167 1aec C5F1EB0D 		vpor	.LC54(%rip), %xmm1, %xmm1
 1167      00000000 
 1168 1af4 C4E34D18 		vinsertf128	$0x1, %xmm1, %ymm6, %ymm6
 1168      F101
 1169 1afa C5C5C2C8 		vcmppd	$1, %ymm0, %ymm7, %ymm1
 1169      01
GAS LISTING /tmp/cckPQzVM.s 			page 39


 1170 1aff C5CD5C35 		vsubpd	.LC55(%rip), %ymm6, %ymm6
 1170      00000000 
 1171 1b07 C4C37D19 		vextractf128	$0x1, %ymm1, %xmm8
 1171      C801
 1172 1b0d C5F928F9 		vmovapd	%xmm1, %xmm7
 1173 1b11 C5F5540D 		vandpd	.LC20(%rip), %ymm1, %ymm1
 1173      00000000 
 1174 1b19 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1174      00000000 
 1175 1b21 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1175      00000000 
 1176 1b29 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 1177 1b2d C4C34518 		vinsertf128	$0x1, %xmm8, %ymm7, %ymm7
 1177      F801
 1178 1b33 C5C554F8 		vandpd	%ymm0, %ymm7, %ymm7
 1179 1b37 C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1180 1b3b C5FD5C05 		vsubpd	.LC20(%rip), %ymm0, %ymm0
 1180      00000000 
 1181 1b43 C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 1181      00000000 
 1182 1b4b C57D5815 		vaddpd	.LC65(%rip), %ymm0, %ymm10
 1182      00000000 
 1183 1b53 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 1184 1b57 C57D590D 		vmulpd	.LC57(%rip), %ymm0, %ymm9
 1184      00000000 
 1185 1b5f C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 1185      00000000 
 1186 1b67 C5F559F9 		vmulpd	%ymm1, %ymm1, %ymm7
 1187 1b6b C535580D 		vaddpd	.LC58(%rip), %ymm9, %ymm9
 1187      00000000 
 1188 1b73 C53D59C7 		vmulpd	%ymm7, %ymm8, %ymm8
 1189 1b77 C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 1190 1b7b C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 1190      C1
 1191 1b80 C57D590D 		vmulpd	.LC61(%rip), %ymm0, %ymm9
 1191      00000000 
 1192 1b88 C535580D 		vaddpd	.LC62(%rip), %ymm9, %ymm9
 1192      00000000 
 1193 1b90 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1194 1b94 C4413558 		vaddpd	%ymm8, %ymm9, %ymm9
 1194      C8
 1195 1b99 C57D59C1 		vmulpd	%ymm1, %ymm0, %ymm8
 1196 1b9d C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 1196      C0
 1197 1ba2 C57D590D 		vmulpd	.LC63(%rip), %ymm0, %ymm9
 1197      00000000 
 1198 1baa C535580D 		vaddpd	.LC64(%rip), %ymm9, %ymm9
 1198      00000000 
 1199 1bb2 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1199      F9
 1200 1bb7 C57D590D 		vmulpd	.LC66(%rip), %ymm0, %ymm9
 1200      00000000 
 1201 1bbf C535580D 		vaddpd	.LC67(%rip), %ymm9, %ymm9
 1201      00000000 
 1202 1bc7 C53559C9 		vmulpd	%ymm1, %ymm9, %ymm9
 1203 1bcb C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 1203      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 40


 1204 1bd3 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 1205 1bd7 C5B173F3 		vpsllq	$1, %xmm3, %xmm9
 1205      01
 1206 1bdc C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1207 1be0 C5BD5EFF 		vdivpd	%ymm7, %ymm8, %ymm7
 1208 1be4 C54D5905 		vmulpd	.LC68(%rip), %ymm6, %ymm8
 1208      00000000 
 1209 1bec C5CD590D 		vmulpd	.LC69(%rip), %ymm6, %ymm1
 1209      00000000 
 1210 1bf4 C5B1DB35 		vpand	.LC23(%rip), %xmm9, %xmm6
 1210      00000000 
 1211 1bfc C5BD58FF 		vaddpd	%ymm7, %ymm8, %ymm7
 1212 1c00 C5B973F2 		vpsllq	$1, %xmm2, %xmm8
 1212      01
 1213 1c05 C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 1213      35000000 
 1213      00
 1214 1c0e C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 1214      00000000 
 1215 1c16 C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1216 1c1a C5B9DB3D 		vpand	.LC23(%rip), %xmm8, %xmm7
 1216      00000000 
 1217 1c22 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 1218 1c26 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 1218      3D000000 
 1218      00
 1219 1c2f C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1219      00000000 
 1220 1c37 C4E34518 		vinsertf128	$0x1, %xmm6, %ymm7, %ymm7
 1220      FE01
 1221 1c3d C4C37D19 		vextractf128	$0x1, %ymm7, %xmm10
 1221      FA01
 1222 1c43 C5F928F7 		vmovapd	%xmm7, %xmm6
 1223 1c47 C5DDC23D 		vcmppd	$1, .LC70(%rip), %ymm4, %ymm7
 1223      00000000 
 1223      01
 1224 1c50 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 1224      00000000 
 1225 1c58 C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 1225      00000000 
 1226 1c60 C4C34D18 		vinsertf128	$0x1, %xmm10, %ymm6, %ymm6
 1226      F201
 1227 1c66 C57D28DE 		vmovapd	%ymm6, %ymm11
 1228 1c6a C5C556F6 		vorpd	%ymm6, %ymm7, %ymm6
 1229 1c6e C4C37D19 		vextractf128	$0x1, %ymm6, %xmm10
 1229      F201
 1230 1c74 C4C14956 		vorpd	%xmm10, %xmm6, %xmm6
 1230      F2
 1231 1c79 C5F950C6 		vmovmskpd	%xmm6, %eax
 1232 1c7d 85C0     		testl	%eax, %eax
 1233 1c7f 0F848800 		je	.L32
 1233      0000
 1234 1c85 C4E3754B 		vblendvpd	%ymm7, .LC71(%rip), %ymm1, %ymm1
 1234      0D000000 
 1234      0070
 1235 1c8f C5E1DB35 		vpand	.LC73(%rip), %xmm3, %xmm6
 1235      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 41


 1236 1c97 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1236      1F
 1237 1c9c C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 1237      0D000000 
 1237      00
 1238 1ca5 C5E9DB3D 		vpand	.LC73(%rip), %xmm2, %xmm7
 1238      00000000 
 1239 1cad C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1239      1F
 1240 1cb2 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 1241 1cb6 C4E24929 		vpcmpeqq	%xmm0, %xmm6, %xmm6
 1241      F0
 1242 1cbb C4E24129 		vpcmpeqq	%xmm0, %xmm7, %xmm0
 1242      C0
 1243 1cc0 C4E37D18 		vinsertf128	$0x1, %xmm6, %ymm0, %ymm0
 1243      C601
 1244 1cc6 C4E3754B 		vblendvpd	%ymm0, 64(%rsp), %ymm1, %ymm0
 1244      44244000 
 1245 1cce C4E23929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm1
 1245      0D000000 
 1245      00
 1246 1cd7 C4E37D4B 		vblendvpd	%ymm11, %ymm4, %ymm0, %ymm4
 1246      E4B0
 1247 1cdd C5F973D3 		vpsrlq	$32, %xmm3, %xmm0
 1247      20
 1248 1ce2 C4E3790E 		vpblendw	$204, %xmm3, %xmm0, %xmm3
 1248      DBCC
 1249 1ce8 C5F973D2 		vpsrlq	$32, %xmm2, %xmm0
 1249      20
 1250 1ced C4E3790E 		vpblendw	$204, %xmm2, %xmm0, %xmm0
 1250      C2CC
 1251 1cf3 C4C37518 		vinsertf128	$0x1, %xmm9, %ymm1, %ymm1
 1251      C901
 1252 1cf9 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1252      C301
 1253 1cff C5F554C8 		vandpd	%ymm0, %ymm1, %ymm1
 1254 1d03 C4E35D4B 		vblendvpd	%ymm1, .LC71(%rip), %ymm4, %ymm1
 1254      0D000000 
 1254      0010
 1255              	.L32:
 1256 1d0d C5F5590D 		vmulpd	.LC26(%rip), %ymm1, %ymm1
 1256      00000000 
 1257 1d15 C5F55925 		vmulpd	.LC74(%rip), %ymm1, %ymm4
 1257      00000000 
 1258 1d1d C4E37D09 		vroundpd	$8, %ymm4, %ymm4
 1258      E408
 1259 1d23 C5DD5915 		vmulpd	.LC75(%rip), %ymm4, %ymm2
 1259      00000000 
 1260 1d2b C5DD5905 		vmulpd	.LC76(%rip), %ymm4, %ymm0
 1260      00000000 
 1261 1d33 C5DD5825 		vaddpd	.LC55(%rip), %ymm4, %ymm4
 1261      00000000 
 1262 1d3b C5F55CD2 		vsubpd	%ymm2, %ymm1, %ymm2
 1263 1d3f C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 1264 1d43 C5FD5935 		vmulpd	.LC80(%rip), %ymm0, %ymm6
 1264      00000000 
 1265 1d4b C57D5905 		vmulpd	.LC77(%rip), %ymm0, %ymm8
GAS LISTING /tmp/cckPQzVM.s 			page 42


 1265      00000000 
 1266 1d53 C57D590D 		vmulpd	.LC78(%rip), %ymm0, %ymm9
 1266      00000000 
 1267 1d5b C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 1268 1d5f C5CD5835 		vaddpd	.LC81(%rip), %ymm6, %ymm6
 1268      00000000 
 1269 1d67 C53D5805 		vaddpd	.LC19(%rip), %ymm8, %ymm8
 1269      00000000 
 1270 1d6f C535580D 		vaddpd	.LC79(%rip), %ymm9, %ymm9
 1270      00000000 
 1271 1d77 C5ED59DA 		vmulpd	%ymm2, %ymm2, %ymm3
 1272 1d7b C5CD59F2 		vmulpd	%ymm2, %ymm6, %ymm6
 1273 1d7f C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 1274 1d83 C5E559FB 		vmulpd	%ymm3, %ymm3, %ymm7
 1275 1d87 C4C14D58 		vaddpd	%ymm9, %ymm6, %ymm6
 1275      F1
 1276 1d8c C57D590D 		vmulpd	.LC84(%rip), %ymm0, %ymm9
 1276      00000000 
 1277 1d94 C53D58C0 		vaddpd	%ymm0, %ymm8, %ymm8
 1278 1d98 C5CD59F3 		vmulpd	%ymm3, %ymm6, %ymm6
 1279 1d9c C535580D 		vaddpd	.LC85(%rip), %ymm9, %ymm9
 1279      00000000 
 1280 1da4 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 1280      F0
 1281 1da9 C57D5905 		vmulpd	.LC82(%rip), %ymm0, %ymm8
 1281      00000000 
 1282 1db1 C5FD5905 		vmulpd	.LC86(%rip), %ymm0, %ymm0
 1282      00000000 
 1283 1db9 C5B559D2 		vmulpd	%ymm2, %ymm9, %ymm2
 1284 1dbd C53D5805 		vaddpd	.LC83(%rip), %ymm8, %ymm8
 1284      00000000 
 1285 1dc5 C5FD5805 		vaddpd	.LC87(%rip), %ymm0, %ymm0
 1285      00000000 
 1286 1dcd C4C16D58 		vaddpd	%ymm8, %ymm2, %ymm2
 1286      D0
 1287 1dd2 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 1288 1dd6 C5F973F4 		vpsllq	$52, %xmm4, %xmm0
 1288      34
 1289 1ddb C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 1290 1ddf C4E37D19 		vextractf128	$0x1, %ymm4, %xmm3
 1290      E301
 1291 1de5 C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1291      34
 1292 1dea C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1292      C301
 1293 1df0 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 1294 1df4 C4E37D19 		vextractf128	$0x1, %ymm1, %xmm3
 1294      CB01
 1295 1dfa C5ED58D6 		vaddpd	%ymm6, %ymm2, %ymm2
 1296 1dfe C5C173F3 		vpsllq	$1, %xmm3, %xmm7
 1296      01
 1297 1e03 C5C1DB3D 		vpand	.LC23(%rip), %xmm7, %xmm7
 1297      00000000 
 1298 1e0b C5F55435 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 1298      00000000 
 1299 1e13 C5ED5825 		vaddpd	.LC20(%rip), %ymm2, %ymm4
 1299      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 43


 1300 1e1b C5F928D1 		vmovapd	%xmm1, %xmm2
 1301 1e1f C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 1301      3D000000 
 1301      00
 1302 1e28 C5CDC235 		vcmppd	$1, .LC88(%rip), %ymm6, %ymm6
 1302      00000000 
 1302      01
 1303 1e31 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 1303      00000000 
 1304 1e39 C5DD59E0 		vmulpd	%ymm0, %ymm4, %ymm4
 1305 1e3d C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 1305      01
 1306 1e42 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1306      00000000 
 1307 1e4a C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1307      05000000 
 1307      00
 1308 1e53 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 1308      00000000 
 1309 1e5b C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 1309      C701
 1310 1e61 C5CD54C0 		vandpd	%ymm0, %ymm6, %ymm0
 1311 1e65 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm6
 1311      C601
 1312 1e6b C5F928F8 		vmovapd	%xmm0, %xmm7
 1313 1e6f C5C154F6 		vandpd	%xmm6, %xmm7, %xmm6
 1314 1e73 C5F950C6 		vmovmskpd	%xmm6, %eax
 1315 1e77 83F803   		cmpl	$3, %eax
 1316 1e7a 0F84B504 		je	.L57
 1316      0000
 1317 1e80 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1317      1F
 1318 1e85 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 1318      1F
 1319 1e8a C5C973D3 		vpsrlq	$32, %xmm3, %xmm6
 1319      20
 1320 1e8f C4E3490E 		vpblendw	$204, %xmm3, %xmm6, %xmm3
 1320      DBCC
 1321 1e95 C5C973D2 		vpsrlq	$32, %xmm2, %xmm6
 1321      20
 1322 1e9a C4E3490E 		vpblendw	$204, %xmm2, %xmm6, %xmm2
 1322      D2CC
 1323 1ea0 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm3
 1323      DB01
 1324 1ea6 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 1325 1eaa C4E3554B 		vblendvpd	%ymm3, %ymm2, %ymm5, %ymm2
 1325      D230
 1326 1eb0 C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 1326      C400
 1327 1eb6 C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 1327      04
 1328 1ebb C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 1328      C120
 1329              	.L33:
 1330 1ec1 C5FD288E 		vmovapd	1728(%rsi), %ymm1
 1330      C0060000 
 1331 1ec9 8D4F01   		leal	1(%rdi), %ecx
GAS LISTING /tmp/cckPQzVM.s 			page 44


 1332 1ecc 89FA     		movl	%edi, %edx
 1333 1ece C5FD2815 		vmovapd	.LC20(%rip), %ymm2
 1333      00000000 
 1334 1ed6 4C89C0   		movq	%r8, %rax
 1335 1ed9 C5F5C20D 		vcmppd	$2, .LC89(%rip), %ymm1, %ymm1
 1335      00000000 
 1335      02
 1336 1ee2 C5FD2825 		vmovapd	.LC90(%rip), %ymm4
 1336      00000000 
 1337 1eea C5EDC296 		vcmppd	$2, 192(%rsi), %ymm2, %ymm2
 1337      C0000000 
 1337      02
 1338 1ef3 C5ED56C9 		vorpd	%ymm1, %ymm2, %ymm1
 1339 1ef7 C5DDC2D0 		vcmppd	$1, %ymm0, %ymm4, %ymm2
 1339      01
 1340 1efc C4E37D4B 		vblendvpd	%ymm2, %ymm4, %ymm0, %ymm0
 1340      C420
 1341 1f02 C5FDC215 		vcmppd	$1, .LC26(%rip), %ymm0, %ymm2
 1341      00000000 
 1341      01
 1342 1f0b C4E37D4B 		vblendvpd	%ymm2, .LC26(%rip), %ymm0, %ymm0
 1342      05000000 
 1342      0020
 1343 1f15 C5FD2986 		vmovapd	%ymm0, 384(%rsi)
 1343      80010000 
 1344 1f1d 0F1F00   		.p2align 4,,10
 1345              		.p2align 3
 1346              	.L35:
 1347 1f20 C5FD2800 		vmovapd	(%rax), %ymm0
 1348 1f24 83C201   		addl	$1, %edx
 1349 1f27 4883C020 		addq	$32, %rax
 1350 1f2b C4E37D4B 		vblendvpd	%ymm1, -224(%rax), %ymm0, %ymm0
 1350      8020FFFF 
 1350      FF10
 1351 1f35 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 1351      E0
 1352 1f3a 39D1     		cmpl	%edx, %ecx
 1353 1f3c 7DE2     		jge	.L35
 1354 1f3e C5FD2886 		vmovapd	1536(%rsi), %ymm0
 1354      00060000 
 1355 1f46 83C702   		addl	$2, %edi
 1356 1f49 4883C620 		addq	$32, %rsi
 1357 1f4d 4983C040 		addq	$64, %r8
 1358 1f51 C5FD5896 		vaddpd	1696(%rsi), %ymm0, %ymm2
 1358      A0060000 
 1359 1f59 C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1359      C210
 1360 1f5f C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1360      00000000 
 1361 1f67 C5FD2986 		vmovapd	%ymm0, 1504(%rsi)
 1361      E0050000 
 1362 1f6f C5FD2886 		vmovapd	352(%rsi), %ymm0
 1362      60010000 
 1363 1f77 C5FD5986 		vmulpd	1696(%rsi), %ymm0, %ymm0
 1363      A0060000 
 1364 1f7f C5FD5905 		vmulpd	.LC91(%rip), %ymm0, %ymm0
 1364      00000000 
GAS LISTING /tmp/cckPQzVM.s 			page 45


 1365 1f87 C5EDC2C8 		vcmppd	$1, %ymm0, %ymm2, %ymm1
 1365      01
 1366 1f8c C4E37D4B 		vblendvpd	%ymm1, %ymm2, %ymm0, %ymm0
 1366      C210
 1367 1f92 C5FDC20D 		vcmppd	$1, .LC89(%rip), %ymm0, %ymm1
 1367      00000000 
 1367      01
 1368 1f9b C4E37D4B 		vblendvpd	%ymm1, .LC89(%rip), %ymm0, %ymm0
 1368      05000000 
 1368      0010
 1369 1fa5 C5FD2986 		vmovapd	%ymm0, 1696(%rsi)
 1369      A0060000 
 1370 1fad 83FF06   		cmpl	$6, %edi
 1371 1fb0 0F85E4FA 		jne	.L37
 1371      FFFF
 1372 1fb6 4C8DB424 		leaq	832(%rsp), %r14
 1372      40030000 
 1373 1fbe 488D8424 		leaq	928(%rsp), %rax
 1373      A0030000 
 1374 1fc6 4D89F5   		movq	%r14, %r13
 1375 1fc9 48894424 		movq	%rax, 112(%rsp)
 1375      70
 1376 1fce 4D89F4   		movq	%r14, %r12
 1377              	.L47:
 1378 1fd1 C4C17D28 		vmovapd	1536(%r12), %ymm1
 1378      8C240006 
 1378      0000
 1379 1fdb C4C17D28 		vmovapd	1920(%r12), %ymm2
 1379      94248007 
 1379      0000
 1380 1fe5 C5EDC2E9 		vcmppd	$2, %ymm1, %ymm2, %ymm5
 1380      02
 1381 1fea C4E37D19 		vextractf128	$0x1, %ymm5, %xmm0
 1381      E801
 1382 1ff0 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 1382      24800000 
 1382      00
 1383 1ff9 C5F928DD 		vmovapd	%xmm5, %xmm3
 1384 1ffd C5E156C0 		vorpd	%xmm0, %xmm3, %xmm0
 1385 2001 C5F950C0 		vmovmskpd	%xmm0, %eax
 1386 2005 85C0     		testl	%eax, %eax
 1387 2007 0F841301 		je	.L38
 1387      0000
 1388 200d 31DB     		xorl	%ebx, %ebx
 1389              	.L45:
 1390 200f C5FD28B4 		vmovapd	128(%rsp), %ymm6
 1390      24800000 
 1390      00
 1391 2018 C5FD11B4 		vmovupd	%ymm6, 768(%rsp)
 1391      24000300 
 1391      00
 1392 2021 448B8C5C 		movl	772(%rsp,%rbx,2), %r9d
 1392      04030000 
 1393 2029 4585C9   		testl	%r9d, %r9d
 1394 202c 0F857E01 		jne	.L71
 1394      0000
 1395              	.L53:
GAS LISTING /tmp/cckPQzVM.s 			page 46


 1396 2032 4883C304 		addq	$4, %rbx
 1397 2036 4883FB10 		cmpq	$16, %rbx
 1398 203a 75D3     		jne	.L45
 1399 203c C5FD28B4 		vmovapd	128(%rsp), %ymm6
 1399      24800000 
 1399      00
 1400 2045 C5FD11B4 		vmovupd	%ymm6, 512(%rsp)
 1400      24000200 
 1400      00
 1401 204e 8B84241C 		movl	540(%rsp), %eax
 1401      020000
 1402 2055 C5FD11B4 		vmovupd	%ymm6, 576(%rsp)
 1402      24400200 
 1402      00
 1403 205e 8B942454 		movl	596(%rsp), %edx
 1403      020000
 1404 2065 C5FD11B4 		vmovupd	%ymm6, 640(%rsp)
 1404      24800200 
 1404      00
 1405 206e 8BBC248C 		movl	652(%rsp), %edi
 1405      020000
 1406 2075 C5FD11B4 		vmovupd	%ymm6, 704(%rsp)
 1406      24C00200 
 1406      00
 1407 207e 85C0     		testl	%eax, %eax
 1408 2080 448B8424 		movl	708(%rsp), %r8d
 1408      C4020000 
 1409 2088 0F95C1   		setne	%cl
 1410 208b 85D2     		testl	%edx, %edx
 1411 208d 400F95C6 		setne	%sil
 1412 2091 85FF     		testl	%edi, %edi
 1413 2093 0FB6C9   		movzbl	%cl, %ecx
 1414 2096 0F95C0   		setne	%al
 1415 2099 400FB6F6 		movzbl	%sil, %esi
 1416 209d 31D2     		xorl	%edx, %edx
 1417 209f 4585C0   		testl	%r8d, %r8d
 1418 20a2 0FB6C0   		movzbl	%al, %eax
 1419 20a5 0F95C2   		setne	%dl
 1420 20a8 F7DE     		negl	%esi
 1421 20aa F7D8     		negl	%eax
 1422 20ac 89B42480 		movl	%esi, 128(%rsp)
 1422      000000
 1423 20b3 F7DA     		negl	%edx
 1424 20b5 F7D9     		negl	%ecx
 1425 20b7 C5F96EAC 		vmovd	128(%rsp), %xmm5
 1425      24800000 
 1425      00
 1426 20c0 89942480 		movl	%edx, 128(%rsp)
 1426      000000
 1427 20c7 C5F96E9C 		vmovd	128(%rsp), %xmm3
 1427      24800000 
 1427      00
 1428 20d0 C4E35122 		vpinsrd	$1, %ecx, %xmm5, %xmm0
 1428      C101
 1429 20d6 C4E36122 		vpinsrd	$1, %eax, %xmm3, %xmm1
 1429      C801
 1430 20dc C5CD5415 		vandpd	.LC97(%rip), %ymm6, %ymm2
GAS LISTING /tmp/cckPQzVM.s 			page 47


 1430      00000000 
 1431 20e4 C5F16CC0 		vpunpcklqdq	%xmm0, %xmm1, %xmm0
 1432 20e8 C5F9DB05 		vpand	.LC96(%rip), %xmm0, %xmm0
 1432      00000000 
 1433 20f0 C4C179FE 		vpaddd	2016(%r13), %xmm0, %xmm0
 1433      85E00700 
 1433      00
 1434 20f9 C4C1797F 		vmovdqa	%xmm0, 2016(%r13)
 1434      85E00700 
 1434      00
 1435 2102 C4C16D58 		vaddpd	1920(%r12), %ymm2, %ymm2
 1435      94248007 
 1435      0000
 1436 210c C4C17D28 		vmovapd	1536(%r12), %ymm1
 1436      8C240006 
 1436      0000
 1437 2116 C4C17D29 		vmovapd	%ymm2, 1920(%r12)
 1437      94248007 
 1437      0000
 1438              	.L38:
 1439 2120 C4C17D28 		vmovapd	1728(%r12), %ymm0
 1439      8424C006 
 1439      0000
 1440 212a 4983C510 		addq	$16, %r13
 1441 212e 4983C420 		addq	$32, %r12
 1442 2132 4983C640 		addq	$64, %r14
 1443 2136 C5F558D8 		vaddpd	%ymm0, %ymm1, %ymm3
 1444 213a C5ED5CC9 		vsubpd	%ymm1, %ymm2, %ymm1
 1445 213e C5EDC2DB 		vcmppd	$2, %ymm3, %ymm2, %ymm3
 1445      02
 1446 2143 C4E37D4B 		vblendvpd	%ymm3, %ymm1, %ymm0, %ymm0
 1446      C130
 1447 2149 C4C17D29 		vmovapd	%ymm0, 1696(%r12)
 1447      8424A006 
 1447      0000
 1448 2153 4C3B6424 		cmpq	112(%rsp), %r12
 1448      70
 1449 2158 0F8573FE 		jne	.L47
 1449      FFFF
 1450 215e C5FD2884 		vmovapd	2368(%rsp), %ymm0
 1450      24400900 
 1450      00
 1451 2167 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 1451      00000000 
 1452 216f C5FD5D84 		vminpd	2400(%rsp), %ymm0, %ymm0
 1452      24600900 
 1452      00
 1453 2178 C5FD5D84 		vminpd	2432(%rsp), %ymm0, %ymm0
 1453      24800900 
 1453      00
 1454 2181 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1454      02
 1455 2186 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1455      C101
 1456 218c C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1457 2190 C5F950C0 		vmovmskpd	%xmm0, %eax
 1458 2194 83F803   		cmpl	$3, %eax
GAS LISTING /tmp/cckPQzVM.s 			page 48


 1459 2197 0F84A101 		je	.L72
 1459      0000
 1460 219d 31C9     		xorl	%ecx, %ecx
 1461 219f 31F6     		xorl	%esi, %esi
 1462 21a1 E90AE0FF 		jmp	.L13
 1462      FF
 1463 21a6 662E0F1F 		.p2align 4,,10
 1463      84000000 
 1463      0000
 1464              		.p2align 3
 1465              	.L71:
 1466 21b0 C4C1796F 		vmovdqa	2016(%r13), %xmm0
 1466      85E00700 
 1466      00
 1467 21b9 C5FA7F84 		vmovdqu	%xmm0, 160(%rsp)
 1467      24A00000 
 1467      00
 1468 21c2 83BC1CA0 		cmpl	$31, 160(%rsp,%rbx)
 1468      0000001F 
 1469 21ca 0F8F62FE 		jg	.L53
 1469      FFFF
 1470 21d0 C4C17D28 		vmovapd	1536(%r12), %ymm0
 1470      84240006 
 1470      0000
 1471 21da 488DBC24 		leaq	2928(%rsp), %rdi
 1471      700B0000 
 1472 21e2 C5FD1184 		vmovupd	%ymm0, 384(%rsp)
 1472      24800100 
 1472      00
 1473 21eb C5FB1084 		vmovsd	384(%rsp,%rbx,2), %xmm0
 1473      5C800100 
 1473      00
 1474 21f4 C5FB5E05 		vdivsd	.LC93(%rip), %xmm0, %xmm0
 1474      00000000 
 1475 21fc C5FB5C1D 		vsubsd	.LC94(%rip), %xmm0, %xmm3
 1475      00000000 
 1476 2204 C4C17D28 		vmovapd	1376(%r14), %ymm0
 1476      86600500 
 1476      00
 1477 220d C5FD1184 		vmovupd	%ymm0, 416(%rsp)
 1477      24A00100 
 1477      00
 1478 2216 C4C17D28 		vmovapd	1344(%r14), %ymm0
 1478      86400500 
 1478      00
 1479 221f C5FB10B4 		vmovsd	416(%rsp,%rbx,2), %xmm6
 1479      5CA00100 
 1479      00
 1480 2228 C5FD1184 		vmovupd	%ymm0, 448(%rsp)
 1480      24C00100 
 1480      00
 1481 2231 C5FB115C 		vmovsd	%xmm3, 120(%rsp)
 1481      2478
 1482 2237 C4C17D28 		vmovapd	1824(%r12), %ymm0
 1482      84242007 
 1482      0000
 1483 2241 C5FB10AC 		vmovsd	448(%rsp,%rbx,2), %xmm5
GAS LISTING /tmp/cckPQzVM.s 			page 49


 1483      5CC00100 
 1483      00
 1484 224a C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1484      24E00100 
 1484      00
 1485 2253 C5FB1174 		vmovsd	%xmm6, 104(%rsp)
 1485      2468
 1486 2259 C5FB1084 		vmovsd	480(%rsp,%rbx,2), %xmm0
 1486      5CE00100 
 1486      00
 1487 2262 C5FB116C 		vmovsd	%xmm5, 96(%rsp)
 1487      2460
 1488 2268 C5F877   		vzeroupper
 1489              	.LEHB1:
 1490 226b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1490      00
 1491 2270 BA010000 		movl	$1, %edx
 1491      00
 1492 2275 BE000000 		movl	$.LC95, %esi
 1492      00
 1493 227a 4889C7   		movq	%rax, %rdi
 1494 227d 4989C7   		movq	%rax, %r15
 1495 2280 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1495      00
 1496 2285 C5FB1044 		vmovsd	96(%rsp), %xmm0
 1496      2460
 1497 228b 4C89FF   		movq	%r15, %rdi
 1498 228e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1498      00
 1499 2293 BA010000 		movl	$1, %edx
 1499      00
 1500 2298 BE000000 		movl	$.LC95, %esi
 1500      00
 1501 229d 4889C7   		movq	%rax, %rdi
 1502 22a0 4989C7   		movq	%rax, %r15
 1503 22a3 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1503      00
 1504 22a8 C5FB1044 		vmovsd	104(%rsp), %xmm0
 1504      2468
 1505 22ae 4C89FF   		movq	%r15, %rdi
 1506 22b1 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1506      00
 1507 22b6 BA010000 		movl	$1, %edx
 1507      00
 1508 22bb BE000000 		movl	$.LC95, %esi
 1508      00
 1509 22c0 4889C7   		movq	%rax, %rdi
 1510 22c3 4989C7   		movq	%rax, %r15
 1511 22c6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1511      00
 1512 22cb C5FB1044 		vmovsd	120(%rsp), %xmm0
 1512      2478
 1513 22d1 4C89FF   		movq	%r15, %rdi
 1514 22d4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1514      00
 1515 22d9 4989C7   		movq	%rax, %r15
 1516 22dc 488B00   		movq	(%rax), %rax
GAS LISTING /tmp/cckPQzVM.s 			page 50


 1517 22df 488B40E8 		movq	-24(%rax), %rax
 1518 22e3 498B8407 		movq	240(%r15,%rax), %rax
 1518      F0000000 
 1519 22eb 4885C0   		testq	%rax, %rax
 1520 22ee 48894424 		movq	%rax, 120(%rsp)
 1520      78
 1521 22f3 0F840601 		je	.L73
 1521      0000
 1522 22f9 80783800 		cmpb	$0, 56(%rax)
 1523 22fd 741C     		je	.L42
 1524 22ff 0FB64043 		movzbl	67(%rax), %eax
 1525              	.L43:
 1526 2303 0FBEF0   		movsbl	%al, %esi
 1527 2306 4C89FF   		movq	%r15, %rdi
 1528 2309 E8000000 		call	_ZNSo3putEc
 1528      00
 1529 230e 4889C7   		movq	%rax, %rdi
 1530 2311 E8000000 		call	_ZNSo5flushEv
 1530      00
 1531 2316 E917FDFF 		jmp	.L53
 1531      FF
 1532              	.L42:
 1533 231b 4889C7   		movq	%rax, %rdi
 1534 231e E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1534      00
 1535 2323 488B7C24 		movq	120(%rsp), %rdi
 1535      78
 1536 2328 BE0A0000 		movl	$10, %esi
 1536      00
 1537 232d 488B07   		movq	(%rdi), %rax
 1538 2330 FF5030   		call	*48(%rax)
 1539 2333 EBCE     		jmp	.L43
 1540              	.L57:
 1541 2335 C5FD28C4 		vmovapd	%ymm4, %ymm0
 1542 2339 E983FBFF 		jmp	.L33
 1542      FF
 1543              	.L72:
 1544 233e 8344241C 		addl	$12, 28(%rsp)
 1544      0C
 1545 2343 48834424 		addq	$96, 16(%rsp)
 1545      1060
 1546 2349 817C241C 		cmpl	$1440, 28(%rsp)
 1546      A0050000 
 1547 2351 0F8545DD 		jne	.L12
 1547      FFFF
 1548 2357 C5F877   		vzeroupper
 1549 235a E8000000 		call	clock
 1549      00
 1550 235f 4889C1   		movq	%rax, %rcx
 1551 2362 482B4C24 		subq	8(%rsp), %rcx
 1551      08
 1552 2367 48BBCFF7 		movabsq	$2361183241434822607, %rbx
 1552      53E3A59B 
 1552      C420
 1553 2371 BE000000 		movl	$.LC103, %esi
 1553      00
 1554 2376 BF000000 		movl	$_ZSt4cout, %edi
GAS LISTING /tmp/cckPQzVM.s 			page 51


 1554      00
 1555 237b 4889C8   		movq	%rcx, %rax
 1556 237e 48C1F93F 		sarq	$63, %rcx
 1557 2382 48F7EB   		imulq	%rbx
 1558 2385 4889D3   		movq	%rdx, %rbx
 1559 2388 48C1FB07 		sarq	$7, %rbx
 1560 238c 4829CB   		subq	%rcx, %rbx
 1561 238f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1561      00
 1562 2394 4889DE   		movq	%rbx, %rsi
 1563 2397 4889C7   		movq	%rax, %rdi
 1564 239a E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1564      00
 1565 239f BE000000 		movl	$.LC104, %esi
 1565      00
 1566 23a4 4889C7   		movq	%rax, %rdi
 1567 23a7 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1567      00
 1568 23ac 4889C7   		movq	%rax, %rdi
 1569 23af E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1569      00
 1570 23b4 488DBC24 		leaq	2928(%rsp), %rdi
 1570      700B0000 
 1571 23bc E8000000 		call	_ZNSo5flushEv
 1571      00
 1572 23c1 488DBC24 		leaq	2928(%rsp), %rdi
 1572      700B0000 
 1573 23c9 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
 1573      00
 1574 23ce 488DBC24 		leaq	2928(%rsp), %rdi
 1574      700B0000 
 1575 23d6 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1575      00
 1576 23db 31C0     		xorl	%eax, %eax
 1577 23dd 488BBC24 		movq	3448(%rsp), %rdi
 1577      780D0000 
 1578 23e5 6448333C 		xorq	%fs:40, %rdi
 1578      25280000 
 1578      00
 1579 23ee 752F     		jne	.L74
 1580 23f0 488D65D8 		leaq	-40(%rbp), %rsp
 1581 23f4 5B       		popq	%rbx
 1582 23f5 415C     		popq	%r12
 1583 23f7 415D     		popq	%r13
 1584 23f9 415E     		popq	%r14
 1585 23fb 415F     		popq	%r15
 1586 23fd 5D       		popq	%rbp
 1587              		.cfi_remember_state
 1588              		.cfi_def_cfa 7, 8
 1589 23fe C3       		ret
 1590              	.L73:
 1591              		.cfi_restore_state
 1592 23ff E8000000 		call	_ZSt16__throw_bad_castv
 1592      00
 1593              	.LEHE1:
 1594              	.L61:
 1595              	.L60:
GAS LISTING /tmp/cckPQzVM.s 			page 52


 1596 2404 488DBC24 		leaq	2928(%rsp), %rdi
 1596      700B0000 
 1597 240c 4889C3   		movq	%rax, %rbx
 1598 240f C5F877   		vzeroupper
 1599 2412 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1599      00
 1600 2417 4889DF   		movq	%rbx, %rdi
 1601              	.LEHB2:
 1602 241a E8000000 		call	_Unwind_Resume
 1602      00
 1603              	.LEHE2:
 1604              	.L74:
 1605 241f E8000000 		call	__stack_chk_fail
 1605      00
 1606              		.cfi_endproc
 1607              	.LFE4614:
 1608              		.globl	__gxx_personality_v0
 1609              		.section	.gcc_except_table,"a",@progbits
 1610              	.LLSDA4614:
 1611 0000 FF       		.byte	0xff
 1612 0001 FF       		.byte	0xff
 1613 0002 01       		.byte	0x1
 1614 0003 10       		.uleb128 .LLSDACSE4614-.LLSDACSB4614
 1615              	.LLSDACSB4614:
 1616 0004 5A       		.uleb128 .LEHB0-.LFB4614
 1617 0005 05       		.uleb128 .LEHE0-.LEHB0
 1618 0006 00       		.uleb128 0
 1619 0007 00       		.uleb128 0
 1620 0008 EB44     		.uleb128 .LEHB1-.LFB4614
 1621 000a 9903     		.uleb128 .LEHE1-.LEHB1
 1622 000c 8448     		.uleb128 .L60-.LFB4614
 1623 000e 00       		.uleb128 0
 1624 000f 9A48     		.uleb128 .LEHB2-.LFB4614
 1625 0011 05       		.uleb128 .LEHE2-.LEHB2
 1626 0012 00       		.uleb128 0
 1627 0013 00       		.uleb128 0
 1628              	.LLSDACSE4614:
 1629              		.section	.text.startup
 1630              		.size	main, .-main
 1631 2424 6666662E 		.p2align 4,,15
 1631      0F1F8400 
 1631      00000000 
 1632              		.type	_GLOBAL__sub_I_main, @function
 1633              	_GLOBAL__sub_I_main:
 1634              	.LFB4954:
 1635              		.cfi_startproc
 1636 2430 4883EC08 		subq	$8, %rsp
 1637              		.cfi_def_cfa_offset 16
 1638 2434 BF000000 		movl	$_ZStL8__ioinit, %edi
 1638      00
 1639 2439 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1639      00
 1640 243e BA000000 		movl	$__dso_handle, %edx
 1640      00
 1641 2443 BE000000 		movl	$_ZStL8__ioinit, %esi
 1641      00
 1642 2448 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
GAS LISTING /tmp/cckPQzVM.s 			page 53


 1642      00
 1643 244d 4883C408 		addq	$8, %rsp
 1644              		.cfi_def_cfa_offset 8
 1645 2451 E9000000 		jmp	__cxa_atexit
 1645      00
 1646              		.cfi_endproc
 1647              	.LFE4954:
 1648              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1649              		.section	.init_array,"aw"
 1650              		.align 8
 1651 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1651      00000000 
 1652              		.section	.rodata
 1653              		.align 32
 1654              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1655              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1656              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1657 0000 00000000 		.long	0
 1658 0004 00000080 		.long	-2147483648
 1659 0008 00000000 		.long	0
 1660 000c 00000080 		.long	-2147483648
 1661 0010 00000000 		.long	0
 1662 0014 00000080 		.long	-2147483648
 1663 0018 00000000 		.long	0
 1664 001c 00000080 		.long	-2147483648
 1665              		.align 32
 1666              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1667              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1668              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1669 0020 FFFFFFFF 		.long	-1
 1670 0024 FFFFFF7F 		.long	2147483647
 1671 0028 FFFFFFFF 		.long	-1
 1672 002c FFFFFF7F 		.long	2147483647
 1673 0030 FFFFFFFF 		.long	-1
 1674 0034 FFFFFF7F 		.long	2147483647
 1675 0038 FFFFFFFF 		.long	-1
 1676 003c FFFFFF7F 		.long	2147483647
 1677              		.local	_ZStL8__ioinit
 1678              		.comm	_ZStL8__ioinit,1,1
 1679              		.section	.rodata.cst8,"aM",@progbits,8
 1680              		.align 8
 1681              	.LC0:
 1682 0000 33333333 		.long	858993459
 1683 0004 3333D33F 		.long	1070805811
 1684              		.align 8
 1685              	.LC1:
 1686 0008 9A999999 		.long	2576980378
 1687 000c 9999C93F 		.long	1070176665
 1688              		.section	.rodata.cst32,"aM",@progbits,32
 1689              		.align 32
 1690              	.LC3:
 1691 0000 83C8C96D 		.long	1841940611
 1692 0004 305FE43F 		.long	1071931184
 1693 0008 83C8C96D 		.long	1841940611
 1694 000c 305FE43F 		.long	1071931184
 1695 0010 83C8C96D 		.long	1841940611
 1696 0014 305FE43F 		.long	1071931184
GAS LISTING /tmp/cckPQzVM.s 			page 54


 1697 0018 83C8C96D 		.long	1841940611
 1698 001c 305FE43F 		.long	1071931184
 1699              		.align 32
 1700              	.LC4:
 1701 0020 00000050 		.long	1342177280
 1702 0024 FB21F93F 		.long	1073291771
 1703 0028 00000050 		.long	1342177280
 1704 002c FB21F93F 		.long	1073291771
 1705 0030 00000050 		.long	1342177280
 1706 0034 FB21F93F 		.long	1073291771
 1707 0038 00000050 		.long	1342177280
 1708 003c FB21F93F 		.long	1073291771
 1709              		.align 32
 1710              	.LC5:
 1711 0040 00000060 		.long	1610612736
 1712 0044 B410513E 		.long	1045500084
 1713 0048 00000060 		.long	1610612736
 1714 004c B410513E 		.long	1045500084
 1715 0050 00000060 		.long	1610612736
 1716 0054 B410513E 		.long	1045500084
 1717 0058 00000060 		.long	1610612736
 1718 005c B410513E 		.long	1045500084
 1719              		.align 32
 1720              	.LC6:
 1721 0060 075C1433 		.long	856972295
 1722 0064 26A6913C 		.long	1016178214
 1723 0068 075C1433 		.long	856972295
 1724 006c 26A6913C 		.long	1016178214
 1725 0070 075C1433 		.long	856972295
 1726 0074 26A6913C 		.long	1016178214
 1727 0078 075C1433 		.long	856972295
 1728 007c 26A6913C 		.long	1016178214
 1729              		.align 32
 1730              	.LC7:
 1731 0080 D0F71011 		.long	286324688
 1732 0084 1111813F 		.long	1065423121
 1733 0088 D0F71011 		.long	286324688
 1734 008c 1111813F 		.long	1065423121
 1735 0090 D0F71011 		.long	286324688
 1736 0094 1111813F 		.long	1065423121
 1737 0098 D0F71011 		.long	286324688
 1738 009c 1111813F 		.long	1065423121
 1739              		.align 32
 1740              	.LC8:
 1741 00a0 48555555 		.long	1431655752
 1742 00a4 5555C5BF 		.long	-1077586603
 1743 00a8 48555555 		.long	1431655752
 1744 00ac 5555C5BF 		.long	-1077586603
 1745 00b0 48555555 		.long	1431655752
 1746 00b4 5555C5BF 		.long	-1077586603
 1747 00b8 48555555 		.long	1431655752
 1748 00bc 5555C5BF 		.long	-1077586603
 1749              		.align 32
 1750              	.LC9:
 1751 00c0 CD9CD11F 		.long	533830861
 1752 00c4 FDD8E53D 		.long	1038473469
 1753 00c8 CD9CD11F 		.long	533830861
GAS LISTING /tmp/cckPQzVM.s 			page 55


 1754 00cc FDD8E53D 		.long	1038473469
 1755 00d0 CD9CD11F 		.long	533830861
 1756 00d4 FDD8E53D 		.long	1038473469
 1757 00d8 CD9CD11F 		.long	533830861
 1758 00dc FDD8E53D 		.long	1038473469
 1759              		.align 32
 1760              	.LC10:
 1761 00e0 5D1F29A9 		.long	2838044509
 1762 00e4 E5E55ABE 		.long	-1101339163
 1763 00e8 5D1F29A9 		.long	2838044509
 1764 00ec E5E55ABE 		.long	-1101339163
 1765 00f0 5D1F29A9 		.long	2838044509
 1766 00f4 E5E55ABE 		.long	-1101339163
 1767 00f8 5D1F29A9 		.long	2838044509
 1768 00fc E5E55ABE 		.long	-1101339163
 1769              		.align 32
 1770              	.LC11:
 1771 0100 A1487D56 		.long	1451051169
 1772 0104 E31DC73E 		.long	1053236707
 1773 0108 A1487D56 		.long	1451051169
 1774 010c E31DC73E 		.long	1053236707
 1775 0110 A1487D56 		.long	1451051169
 1776 0114 E31DC73E 		.long	1053236707
 1777 0118 A1487D56 		.long	1451051169
 1778 011c E31DC73E 		.long	1053236707
 1779              		.align 32
 1780              	.LC12:
 1781 0120 03DFBF19 		.long	432004867
 1782 0124 A0012ABF 		.long	-1087766112
 1783 0128 03DFBF19 		.long	432004867
 1784 012c A0012ABF 		.long	-1087766112
 1785 0130 03DFBF19 		.long	432004867
 1786 0134 A0012ABF 		.long	-1087766112
 1787 0138 03DFBF19 		.long	432004867
 1788 013c A0012ABF 		.long	-1087766112
 1789              		.align 32
 1790              	.LC13:
 1791 0140 914FC116 		.long	381767569
 1792 0144 6CC156BF 		.long	-1084833428
 1793 0148 914FC116 		.long	381767569
 1794 014c 6CC156BF 		.long	-1084833428
 1795 0150 914FC116 		.long	381767569
 1796 0154 6CC156BF 		.long	-1084833428
 1797 0158 914FC116 		.long	381767569
 1798 015c 6CC156BF 		.long	-1084833428
 1799              		.align 32
 1800              	.LC14:
 1801 0160 4B555555 		.long	1431655755
 1802 0164 5555A53F 		.long	1067799893
 1803 0168 4B555555 		.long	1431655755
 1804 016c 5555A53F 		.long	1067799893
 1805 0170 4B555555 		.long	1431655755
 1806 0174 5555A53F 		.long	1067799893
 1807 0178 4B555555 		.long	1431655755
 1808 017c 5555A53F 		.long	1067799893
 1809              		.align 32
 1810              	.LC15:
GAS LISTING /tmp/cckPQzVM.s 			page 56


 1811 0180 9B1A86A0 		.long	2693143195
 1812 0184 49FAA8BD 		.long	-1112999351
 1813 0188 9B1A86A0 		.long	2693143195
 1814 018c 49FAA8BD 		.long	-1112999351
 1815 0190 9B1A86A0 		.long	2693143195
 1816 0194 49FAA8BD 		.long	-1112999351
 1817 0198 9B1A86A0 		.long	2693143195
 1818 019c 49FAA8BD 		.long	-1112999351
 1819              		.align 32
 1820              	.LC16:
 1821 01a0 053F4E7B 		.long	2068725509
 1822 01a4 9DEE213E 		.long	1042411165
 1823 01a8 053F4E7B 		.long	2068725509
 1824 01ac 9DEE213E 		.long	1042411165
 1825 01b0 053F4E7B 		.long	2068725509
 1826 01b4 9DEE213E 		.long	1042411165
 1827 01b8 053F4E7B 		.long	2068725509
 1828 01bc 9DEE213E 		.long	1042411165
 1829              		.align 32
 1830              	.LC17:
 1831 01c0 C64BAC7E 		.long	2125220806
 1832 01c4 4F7E92BE 		.long	-1097695665
 1833 01c8 C64BAC7E 		.long	2125220806
 1834 01cc 4F7E92BE 		.long	-1097695665
 1835 01d0 C64BAC7E 		.long	2125220806
 1836 01d4 4F7E92BE 		.long	-1097695665
 1837 01d8 C64BAC7E 		.long	2125220806
 1838 01dc 4F7E92BE 		.long	-1097695665
 1839              		.align 32
 1840              	.LC18:
 1841 01e0 F544C819 		.long	432555253
 1842 01e4 A001FA3E 		.long	1056571808
 1843 01e8 F544C819 		.long	432555253
 1844 01ec A001FA3E 		.long	1056571808
 1845 01f0 F544C819 		.long	432555253
 1846 01f4 A001FA3E 		.long	1056571808
 1847 01f8 F544C819 		.long	432555253
 1848 01fc A001FA3E 		.long	1056571808
 1849              		.align 32
 1850              	.LC19:
 1851 0200 00000000 		.long	0
 1852 0204 0000E03F 		.long	1071644672
 1853 0208 00000000 		.long	0
 1854 020c 0000E03F 		.long	1071644672
 1855 0210 00000000 		.long	0
 1856 0214 0000E03F 		.long	1071644672
 1857 0218 00000000 		.long	0
 1858 021c 0000E03F 		.long	1071644672
 1859              		.align 32
 1860              	.LC20:
 1861 0220 00000000 		.long	0
 1862 0224 0000F03F 		.long	1072693248
 1863 0228 00000000 		.long	0
 1864 022c 0000F03F 		.long	1072693248
 1865 0230 00000000 		.long	0
 1866 0234 0000F03F 		.long	1072693248
 1867 0238 00000000 		.long	0
GAS LISTING /tmp/cckPQzVM.s 			page 57


 1868 023c 0000F03F 		.long	1072693248
 1869              		.section	.rodata.cst16,"aM",@progbits,16
 1870              		.align 16
 1871              	.LC21:
 1872 0000 01000000 		.quad	1
 1872      00000000 
 1873 0008 01000000 		.quad	1
 1873      00000000 
 1874              		.align 16
 1875              	.LC22:
 1876 0010 00000000 		.quad	36028797018963968
 1876      00008000 
 1877 0018 00000000 		.quad	36028797018963968
 1877      00008000 
 1878              		.align 16
 1879              	.LC23:
 1880 0020 00000000 		.quad	-9007199254740992
 1880      0000E0FF 
 1881 0028 00000000 		.quad	-9007199254740992
 1881      0000E0FF 
 1882              		.align 16
 1883              	.LC24:
 1884 0030 02000000 		.quad	2
 1884      00000000 
 1885 0038 02000000 		.quad	2
 1885      00000000 
 1886              		.section	.rodata.cst32
 1887              		.align 32
 1888              	.LC25:
 1889 0240 33333333 		.long	858993459
 1890 0244 3333D33F 		.long	1070805811
 1891 0248 33333333 		.long	858993459
 1892 024c 3333D33F 		.long	1070805811
 1893 0250 33333333 		.long	858993459
 1894 0254 3333D33F 		.long	1070805811
 1895 0258 33333333 		.long	858993459
 1896 025c 3333D33F 		.long	1070805811
 1897              		.align 32
 1898              	.LC26:
 1899 0260 9A999999 		.long	2576980378
 1900 0264 9999C93F 		.long	1070176665
 1901 0268 9A999999 		.long	2576980378
 1902 026c 9999C93F 		.long	1070176665
 1903 0270 9A999999 		.long	2576980378
 1904 0274 9999C93F 		.long	1070176665
 1905 0278 9A999999 		.long	2576980378
 1906 027c 9999C93F 		.long	1070176665
 1907              		.align 32
 1908              	.LC27:
 1909 0280 CDCCCCCC 		.long	3435973837
 1910 0284 CCCCCC3F 		.long	1070386380
 1911 0288 CDCCCCCC 		.long	3435973837
 1912 028c CCCCCC3F 		.long	1070386380
 1913 0290 CDCCCCCC 		.long	3435973837
 1914 0294 CCCCCC3F 		.long	1070386380
 1915 0298 CDCCCCCC 		.long	3435973837
 1916 029c CCCCCC3F 		.long	1070386380
GAS LISTING /tmp/cckPQzVM.s 			page 58


 1917              		.align 32
 1918              	.LC28:
 1919 02a0 33333333 		.long	858993459
 1920 02a4 3333B33F 		.long	1068708659
 1921 02a8 33333333 		.long	858993459
 1922 02ac 3333B33F 		.long	1068708659
 1923 02b0 33333333 		.long	858993459
 1924 02b4 3333B33F 		.long	1068708659
 1925 02b8 33333333 		.long	858993459
 1926 02bc 3333B33F 		.long	1068708659
 1927              		.align 32
 1928              	.LC29:
 1929 02c0 33333333 		.long	858993459
 1930 02c4 3333F33F 		.long	1072902963
 1931 02c8 33333333 		.long	858993459
 1932 02cc 3333F33F 		.long	1072902963
 1933 02d0 33333333 		.long	858993459
 1934 02d4 3333F33F 		.long	1072902963
 1935 02d8 33333333 		.long	858993459
 1936 02dc 3333F33F 		.long	1072902963
 1937              		.align 32
 1938              	.LC30:
 1939 02e0 CDCCCCCC 		.long	3435973837
 1940 02e4 CCCCECBF 		.long	-1075000116
 1941 02e8 CDCCCCCC 		.long	3435973837
 1942 02ec CCCCECBF 		.long	-1075000116
 1943 02f0 CDCCCCCC 		.long	3435973837
 1944 02f4 CCCCECBF 		.long	-1075000116
 1945 02f8 CDCCCCCC 		.long	3435973837
 1946 02fc CCCCECBF 		.long	-1075000116
 1947              		.align 32
 1948              	.LC31:
 1949 0300 33333333 		.long	858993459
 1950 0304 3333E33F 		.long	1071854387
 1951 0308 33333333 		.long	858993459
 1952 030c 3333E33F 		.long	1071854387
 1953 0310 33333333 		.long	858993459
 1954 0314 3333E33F 		.long	1071854387
 1955 0318 33333333 		.long	858993459
 1956 031c 3333E33F 		.long	1071854387
 1957              		.align 32
 1958              	.LC32:
 1959 0320 DA4B682F 		.long	795364314
 1960 0324 A1BDF43F 		.long	1073003937
 1961 0328 DA4B682F 		.long	795364314
 1962 032c A1BDF43F 		.long	1073003937
 1963 0330 DA4B682F 		.long	795364314
 1964 0334 A1BDF43F 		.long	1073003937
 1965 0338 DA4B682F 		.long	795364314
 1966 033c A1BDF43F 		.long	1073003937
 1967              		.align 32
 1968              	.LC33:
 1969 0340 D94B682F 		.long	795364313
 1970 0344 A1BD04C0 		.long	-1073431135
 1971 0348 D94B682F 		.long	795364313
 1972 034c A1BD04C0 		.long	-1073431135
 1973 0350 D94B682F 		.long	795364313
GAS LISTING /tmp/cckPQzVM.s 			page 59


 1974 0354 A1BD04C0 		.long	-1073431135
 1975 0358 D94B682F 		.long	795364313
 1976 035c A1BD04C0 		.long	-1073431135
 1977              		.align 32
 1978              	.LC34:
 1979 0360 00000000 		.long	0
 1980 0364 00000440 		.long	1074003968
 1981 0368 00000000 		.long	0
 1982 036c 00000440 		.long	1074003968
 1983 0370 00000000 		.long	0
 1984 0374 00000440 		.long	1074003968
 1985 0378 00000000 		.long	0
 1986 037c 00000440 		.long	1074003968
 1987              		.align 32
 1988              	.LC35:
 1989 0380 16A1BD84 		.long	2227020054
 1990 0384 F612CABF 		.long	-1077275914
 1991 0388 16A1BD84 		.long	2227020054
 1992 038c F612CABF 		.long	-1077275914
 1993 0390 16A1BD84 		.long	2227020054
 1994 0394 F612CABF 		.long	-1077275914
 1995 0398 16A1BD84 		.long	2227020054
 1996 039c F612CABF 		.long	-1077275914
 1997              		.align 32
 1998              	.LC36:
 1999 03a0 00000000 		.long	0
 2000 03a4 00A0AF3F 		.long	1068474368
 2001 03a8 00000000 		.long	0
 2002 03ac 00A0AF3F 		.long	1068474368
 2003 03b0 00000000 		.long	0
 2004 03b4 00A0AF3F 		.long	1068474368
 2005 03b8 00000000 		.long	0
 2006 03bc 00A0AF3F 		.long	1068474368
 2007              		.align 32
 2008              	.LC37:
 2009 03c0 B397D05E 		.long	1590728627
 2010 03c4 429FD93F 		.long	1071226690
 2011 03c8 B397D05E 		.long	1590728627
 2012 03cc 429FD93F 		.long	1071226690
 2013 03d0 B397D05E 		.long	1590728627
 2014 03d4 429FD93F 		.long	1071226690
 2015 03d8 B397D05E 		.long	1590728627
 2016 03dc 429FD93F 		.long	1071226690
 2017              		.align 32
 2018              	.LC38:
 2019 03e0 BD84F612 		.long	318145725
 2020 03e4 DA4BA53F 		.long	1067797466
 2021 03e8 BD84F612 		.long	318145725
 2022 03ec DA4BA53F 		.long	1067797466
 2023 03f0 BD84F612 		.long	318145725
 2024 03f4 DA4BA53F 		.long	1067797466
 2025 03f8 BD84F612 		.long	318145725
 2026 03fc DA4BA53F 		.long	1067797466
 2027              		.align 32
 2028              	.LC39:
 2029 0400 00000000 		.long	0
 2030 0404 00E0D53F 		.long	1070981120
GAS LISTING /tmp/cckPQzVM.s 			page 60


 2031 0408 00000000 		.long	0
 2032 040c 00E0D53F 		.long	1070981120
 2033 0410 00000000 		.long	0
 2034 0414 00E0D53F 		.long	1070981120
 2035 0418 00000000 		.long	0
 2036 041c 00E0D53F 		.long	1070981120
 2037              		.align 32
 2038              	.LC40:
 2039 0420 347B09ED 		.long	3976821556
 2040 0424 25349E3F 		.long	1067332645
 2041 0428 347B09ED 		.long	3976821556
 2042 042c 25349E3F 		.long	1067332645
 2043 0430 347B09ED 		.long	3976821556
 2044 0434 25349E3F 		.long	1067332645
 2045 0438 347B09ED 		.long	3976821556
 2046 043c 25349E3F 		.long	1067332645
 2047              		.align 32
 2048              	.LC41:
 2049 0440 00000000 		.long	0
 2050 0444 0000EC3F 		.long	1072431104
 2051 0448 00000000 		.long	0
 2052 044c 0000EC3F 		.long	1072431104
 2053 0450 00000000 		.long	0
 2054 0454 0000EC3F 		.long	1072431104
 2055 0458 00000000 		.long	0
 2056 045c 0000EC3F 		.long	1072431104
 2057              		.align 32
 2058              	.LC42:
 2059 0460 B0B4DA85 		.long	2245702832
 2060 0464 A680D23F 		.long	1070760102
 2061 0468 B0B4DA85 		.long	2245702832
 2062 046c A680D23F 		.long	1070760102
 2063 0470 B0B4DA85 		.long	2245702832
 2064 0474 A680D23F 		.long	1070760102
 2065 0478 B0B4DA85 		.long	2245702832
 2066 047c A680D23F 		.long	1070760102
 2067              		.align 32
 2068              	.LC43:
 2069 0480 27691676 		.long	1981180199
 2070 0484 9FEFCA3F 		.long	1070264223
 2071 0488 27691676 		.long	1981180199
 2072 048c 9FEFCA3F 		.long	1070264223
 2073 0490 27691676 		.long	1981180199
 2074 0494 9FEFCA3F 		.long	1070264223
 2075 0498 27691676 		.long	1981180199
 2076 049c 9FEFCA3F 		.long	1070264223
 2077              		.align 32
 2078              	.LC44:
 2079 04a0 7EB22B2E 		.long	774615678
 2080 04a4 D0C3D93F 		.long	1071236048
 2081 04a8 7EB22B2E 		.long	774615678
 2082 04ac D0C3D93F 		.long	1071236048
 2083 04b0 7EB22B2E 		.long	774615678
 2084 04b4 D0C3D93F 		.long	1071236048
 2085 04b8 7EB22B2E 		.long	774615678
 2086 04bc D0C3D93F 		.long	1071236048
 2087              		.align 32
GAS LISTING /tmp/cckPQzVM.s 			page 61


 2088              	.LC45:
 2089 04c0 E890B943 		.long	1136234728
 2090 04c4 E60EB93F 		.long	1069092582
 2091 04c8 E890B943 		.long	1136234728
 2092 04cc E60EB93F 		.long	1069092582
 2093 04d0 E890B943 		.long	1136234728
 2094 04d4 E60EB93F 		.long	1069092582
 2095 04d8 E890B943 		.long	1136234728
 2096 04dc E60EB93F 		.long	1069092582
 2097              		.align 32
 2098              	.LC46:
 2099 04e0 48A5D52E 		.long	785753416
 2100 04e4 3405A4BF 		.long	-1079769804
 2101 04e8 48A5D52E 		.long	785753416
 2102 04ec 3405A4BF 		.long	-1079769804
 2103 04f0 48A5D52E 		.long	785753416
 2104 04f4 3405A4BF 		.long	-1079769804
 2105 04f8 48A5D52E 		.long	785753416
 2106 04fc 3405A4BF 		.long	-1079769804
 2107              		.align 32
 2108              	.LC47:
 2109 0500 82244992 		.long	2454267010
 2110 0504 24C9933F 		.long	1066649892
 2111 0508 82244992 		.long	2454267010
 2112 050c 24C9933F 		.long	1066649892
 2113 0510 82244992 		.long	2454267010
 2114 0514 24C9933F 		.long	1066649892
 2115 0518 82244992 		.long	2454267010
 2116 051c 24C9933F 		.long	1066649892
 2117              		.align 32
 2118              	.LC48:
 2119 0520 06F37686 		.long	2255942406
 2120 0524 C47CA13F 		.long	1067547844
 2121 0528 06F37686 		.long	2255942406
 2122 052c C47CA13F 		.long	1067547844
 2123 0530 06F37686 		.long	2255942406
 2124 0534 C47CA13F 		.long	1067547844
 2125 0538 06F37686 		.long	2255942406
 2126 053c C47CA13F 		.long	1067547844
 2127              		.align 32
 2128              	.LC49:
 2129 0540 1A55F19A 		.long	2599507226
 2130 0544 DB1D93BF 		.long	-1080877605
 2131 0548 1A55F19A 		.long	2599507226
 2132 054c DB1D93BF 		.long	-1080877605
 2133 0550 1A55F19A 		.long	2599507226
 2134 0554 DB1D93BF 		.long	-1080877605
 2135 0558 1A55F19A 		.long	2599507226
 2136 055c DB1D93BF 		.long	-1080877605
 2137              		.align 32
 2138              	.LC50:
 2139 0560 64599665 		.long	1704352100
 2140 0564 5996713F 		.long	1064408665
 2141 0568 64599665 		.long	1704352100
 2142 056c 5996713F 		.long	1064408665
 2143 0570 64599665 		.long	1704352100
 2144 0574 5996713F 		.long	1064408665
GAS LISTING /tmp/cckPQzVM.s 			page 62


 2145 0578 64599665 		.long	1704352100
 2146 057c 5996713F 		.long	1064408665
 2147              		.align 32
 2148              	.LC51:
 2149 0580 95D626E8 		.long	3894859413
 2150 0584 0B2E113E 		.long	1041313291
 2151 0588 95D626E8 		.long	3894859413
 2152 058c 0B2E113E 		.long	1041313291
 2153 0590 95D626E8 		.long	3894859413
 2154 0594 0B2E113E 		.long	1041313291
 2155 0598 95D626E8 		.long	3894859413
 2156 059c 0B2E113E 		.long	1041313291
 2157              		.section	.rodata.cst16
 2158              		.align 16
 2159              	.LC52:
 2160 0040 FFFFFFFF 		.quad	4503599627370495
 2160      FFFF0F00 
 2161 0048 FFFFFFFF 		.quad	4503599627370495
 2161      FFFF0F00 
 2162              		.align 16
 2163              	.LC53:
 2164 0050 00000000 		.quad	4602678819172646912
 2164      0000E03F 
 2165 0058 00000000 		.quad	4602678819172646912
 2165      0000E03F 
 2166              		.align 16
 2167              	.LC54:
 2168 0060 00000000 		.quad	4841369599423283200
 2168      00003043 
 2169 0068 00000000 		.quad	4841369599423283200
 2169      00003043 
 2170              		.section	.rodata.cst32
 2171              		.align 32
 2172              	.LC55:
 2173 05a0 FF030000 		.long	1023
 2174 05a4 00003043 		.long	1127219200
 2175 05a8 FF030000 		.long	1023
 2176 05ac 00003043 		.long	1127219200
 2177 05b0 FF030000 		.long	1023
 2178 05b4 00003043 		.long	1127219200
 2179 05b8 FF030000 		.long	1023
 2180 05bc 00003043 		.long	1127219200
 2181              		.align 32
 2182              	.LC56:
 2183 05c0 CD3B7F66 		.long	1719614413
 2184 05c4 9EA0E63F 		.long	1072079006
 2185 05c8 CD3B7F66 		.long	1719614413
 2186 05cc 9EA0E63F 		.long	1072079006
 2187 05d0 CD3B7F66 		.long	1719614413
 2188 05d4 9EA0E63F 		.long	1072079006
 2189 05d8 CD3B7F66 		.long	1719614413
 2190 05dc 9EA0E63F 		.long	1072079006
 2191              		.align 32
 2192              	.LC57:
 2193 05e0 4DC84B92 		.long	2454440013
 2194 05e4 D6EF3140 		.long	1077014486
 2195 05e8 4DC84B92 		.long	2454440013
GAS LISTING /tmp/cckPQzVM.s 			page 63


 2196 05ec D6EF3140 		.long	1077014486
 2197 05f0 4DC84B92 		.long	2454440013
 2198 05f4 D6EF3140 		.long	1077014486
 2199 05f8 4DC84B92 		.long	2454440013
 2200 05fc D6EF3140 		.long	1077014486
 2201              		.align 32
 2202              	.LC58:
 2203 0600 F8DC7E7D 		.long	2105466104
 2204 0604 63D51E40 		.long	1075762531
 2205 0608 F8DC7E7D 		.long	2105466104
 2206 060c 63D51E40 		.long	1075762531
 2207 0610 F8DC7E7D 		.long	2105466104
 2208 0614 63D51E40 		.long	1075762531
 2209 0618 F8DC7E7D 		.long	2105466104
 2210 061c 63D51E40 		.long	1075762531
 2211              		.align 32
 2212              	.LC59:
 2213 0620 B01BC393 		.long	2479037360
 2214 0624 C2B41A3F 		.long	1058714818
 2215 0628 B01BC393 		.long	2479037360
 2216 062c C2B41A3F 		.long	1058714818
 2217 0630 B01BC393 		.long	2479037360
 2218 0634 C2B41A3F 		.long	1058714818
 2219 0638 B01BC393 		.long	2479037360
 2220 063c C2B41A3F 		.long	1058714818
 2221              		.align 32
 2222              	.LC60:
 2223 0640 F252563F 		.long	1062621938
 2224 0644 F5D6DF3F 		.long	1071634165
 2225 0648 F252563F 		.long	1062621938
 2226 064c F5D6DF3F 		.long	1071634165
 2227 0650 F252563F 		.long	1062621938
 2228 0654 F5D6DF3F 		.long	1071634165
 2229 0658 F252563F 		.long	1062621938
 2230 065c F5D6DF3F 		.long	1071634165
 2231              		.align 32
 2232              	.LC61:
 2233 0660 116992ED 		.long	3985795345
 2234 0664 BAD21240 		.long	1074975418
 2235 0668 116992ED 		.long	3985795345
 2236 066c BAD21240 		.long	1074975418
 2237 0670 116992ED 		.long	3985795345
 2238 0674 BAD21240 		.long	1074975418
 2239 0678 116992ED 		.long	3985795345
 2240 067c BAD21240 		.long	1074975418
 2241              		.align 32
 2242              	.LC62:
 2243 0680 2EEB3EC6 		.long	3326012206
 2244 0684 72FF2C40 		.long	1076690802
 2245 0688 2EEB3EC6 		.long	3326012206
 2246 068c 72FF2C40 		.long	1076690802
 2247 0690 2EEB3EC6 		.long	3326012206
 2248 0694 72FF2C40 		.long	1076690802
 2249 0698 2EEB3EC6 		.long	3326012206
 2250 069c 72FF2C40 		.long	1076690802
 2251              		.align 32
 2252              	.LC63:
GAS LISTING /tmp/cckPQzVM.s 			page 64


 2253 06a0 21AE5EEB 		.long	3948850721
 2254 06a4 E2C95140 		.long	1079101922
 2255 06a8 21AE5EEB 		.long	3948850721
 2256 06ac E2C95140 		.long	1079101922
 2257 06b0 21AE5EEB 		.long	3948850721
 2258 06b4 E2C95140 		.long	1079101922
 2259 06b8 21AE5EEB 		.long	3948850721
 2260 06bc E2C95140 		.long	1079101922
 2261              		.align 32
 2262              	.LC64:
 2263 06c0 B2251F9E 		.long	2652841394
 2264 06c4 0A203740 		.long	1077354506
 2265 06c8 B2251F9E 		.long	2652841394
 2266 06cc 0A203740 		.long	1077354506
 2267 06d0 B2251F9E 		.long	2652841394
 2268 06d4 0A203740 		.long	1077354506
 2269 06d8 B2251F9E 		.long	2652841394
 2270 06dc 0A203740 		.long	1077354506
 2271              		.align 32
 2272              	.LC65:
 2273 06e0 8EEF97AE 		.long	2929192846
 2274 06e4 20932640 		.long	1076269856
 2275 06e8 8EEF97AE 		.long	2929192846
 2276 06ec 20932640 		.long	1076269856
 2277 06f0 8EEF97AE 		.long	2929192846
 2278 06f4 20932640 		.long	1076269856
 2279 06f8 8EEF97AE 		.long	2929192846
 2280 06fc 20932640 		.long	1076269856
 2281              		.align 32
 2282              	.LC66:
 2283 0700 33C0194E 		.long	1310310451
 2284 0704 2C9D4640 		.long	1078369580
 2285 0708 33C0194E 		.long	1310310451
 2286 070c 2C9D4640 		.long	1078369580
 2287 0710 33C0194E 		.long	1310310451
 2288 0714 2C9D4640 		.long	1078369580
 2289 0718 33C0194E 		.long	1310310451
 2290 071c 2C9D4640 		.long	1078369580
 2291              		.align 32
 2292              	.LC67:
 2293 0720 BDBD26A3 		.long	2737225149
 2294 0724 33BF5440 		.long	1079295795
 2295 0728 BDBD26A3 		.long	2737225149
 2296 072c 33BF5440 		.long	1079295795
 2297 0730 BDBD26A3 		.long	2737225149
 2298 0734 33BF5440 		.long	1079295795
 2299 0738 BDBD26A3 		.long	2737225149
 2300 073c 33BF5440 		.long	1079295795
 2301              		.align 32
 2302              	.LC68:
 2303 0740 A80C615C 		.long	1549864104
 2304 0744 10D02BBF 		.long	-1087647728
 2305 0748 A80C615C 		.long	1549864104
 2306 074c 10D02BBF 		.long	-1087647728
 2307 0750 A80C615C 		.long	1549864104
 2308 0754 10D02BBF 		.long	-1087647728
 2309 0758 A80C615C 		.long	1549864104
GAS LISTING /tmp/cckPQzVM.s 			page 65


 2310 075c 10D02BBF 		.long	-1087647728
 2311              		.align 32
 2312              	.LC69:
 2313 0760 00000000 		.long	0
 2314 0764 0030E63F 		.long	1072050176
 2315 0768 00000000 		.long	0
 2316 076c 0030E63F 		.long	1072050176
 2317 0770 00000000 		.long	0
 2318 0774 0030E63F 		.long	1072050176
 2319 0778 00000000 		.long	0
 2320 077c 0030E63F 		.long	1072050176
 2321              		.align 32
 2322              	.LC70:
 2323 0780 00000000 		.long	0
 2324 0784 00001000 		.long	1048576
 2325 0788 00000000 		.long	0
 2326 078c 00001000 		.long	1048576
 2327 0790 00000000 		.long	0
 2328 0794 00001000 		.long	1048576
 2329 0798 00000000 		.long	0
 2330 079c 00001000 		.long	1048576
 2331              		.align 32
 2332              	.LC71:
 2333 07a0 00000020 		.long	536870912
 2334 07a4 2000F87F 		.long	2146959392
 2335 07a8 00000020 		.long	536870912
 2336 07ac 2000F87F 		.long	2146959392
 2337 07b0 00000020 		.long	536870912
 2338 07b4 2000F87F 		.long	2146959392
 2339 07b8 00000020 		.long	536870912
 2340 07bc 2000F87F 		.long	2146959392
 2341              		.section	.rodata.cst16
 2342              		.align 16
 2343              	.LC72:
 2344 0070 00000000 		.long	0
 2345 0074 0000F07F 		.long	2146435072
 2346 0078 00000000 		.long	0
 2347 007c 0000F07F 		.long	2146435072
 2348              		.align 16
 2349              	.LC73:
 2350 0080 00000000 		.quad	9218868437227405312
 2350      0000F07F 
 2351 0088 00000000 		.quad	9218868437227405312
 2351      0000F07F 
 2352              		.section	.rodata.cst32
 2353              		.align 32
 2354              	.LC74:
 2355 07c0 FE822B65 		.long	1697350398
 2356 07c4 4715F73F 		.long	1073157447
 2357 07c8 FE822B65 		.long	1697350398
 2358 07cc 4715F73F 		.long	1073157447
 2359 07d0 FE822B65 		.long	1697350398
 2360 07d4 4715F73F 		.long	1073157447
 2361 07d8 FE822B65 		.long	1697350398
 2362 07dc 4715F73F 		.long	1073157447
 2363              		.align 32
 2364              	.LC75:
GAS LISTING /tmp/cckPQzVM.s 			page 66


 2365 07e0 00000000 		.long	0
 2366 07e4 402EE63F 		.long	1072049728
 2367 07e8 00000000 		.long	0
 2368 07ec 402EE63F 		.long	1072049728
 2369 07f0 00000000 		.long	0
 2370 07f4 402EE63F 		.long	1072049728
 2371 07f8 00000000 		.long	0
 2372 07fc 402EE63F 		.long	1072049728
 2373              		.align 32
 2374              	.LC76:
 2375 0800 CAAB79CF 		.long	3480857546
 2376 0804 D1F7B73E 		.long	1052243921
 2377 0808 CAAB79CF 		.long	3480857546
 2378 080c D1F7B73E 		.long	1052243921
 2379 0810 CAAB79CF 		.long	3480857546
 2380 0814 D1F7B73E 		.long	1052243921
 2381 0818 CAAB79CF 		.long	3480857546
 2382 081c D1F7B73E 		.long	1052243921
 2383              		.align 32
 2384              	.LC77:
 2385 0820 55555555 		.long	1431655765
 2386 0824 5555C53F 		.long	1069897045
 2387 0828 55555555 		.long	1431655765
 2388 082c 5555C53F 		.long	1069897045
 2389 0830 55555555 		.long	1431655765
 2390 0834 5555C53F 		.long	1069897045
 2391 0838 55555555 		.long	1431655765
 2392 083c 5555C53F 		.long	1069897045
 2393              		.align 32
 2394              	.LC78:
 2395 0840 11111111 		.long	286331153
 2396 0844 1111813F 		.long	1065423121
 2397 0848 11111111 		.long	286331153
 2398 084c 1111813F 		.long	1065423121
 2399 0850 11111111 		.long	286331153
 2400 0854 1111813F 		.long	1065423121
 2401 0858 11111111 		.long	286331153
 2402 085c 1111813F 		.long	1065423121
 2403              		.align 32
 2404              	.LC79:
 2405 0860 55555555 		.long	1431655765
 2406 0864 5555A53F 		.long	1067799893
 2407 0868 55555555 		.long	1431655765
 2408 086c 5555A53F 		.long	1067799893
 2409 0870 55555555 		.long	1431655765
 2410 0874 5555A53F 		.long	1067799893
 2411 0878 55555555 		.long	1431655765
 2412 087c 5555A53F 		.long	1067799893
 2413              		.align 32
 2414              	.LC80:
 2415 0880 1AA0011A 		.long	436314138
 2416 0884 A0012A3F 		.long	1059717536
 2417 0888 1AA0011A 		.long	436314138
 2418 088c A0012A3F 		.long	1059717536
 2419 0890 1AA0011A 		.long	436314138
 2420 0894 A0012A3F 		.long	1059717536
 2421 0898 1AA0011A 		.long	436314138
GAS LISTING /tmp/cckPQzVM.s 			page 67


 2422 089c A0012A3F 		.long	1059717536
 2423              		.align 32
 2424              	.LC81:
 2425 08a0 176CC116 		.long	381774871
 2426 08a4 6CC1563F 		.long	1062650220
 2427 08a8 176CC116 		.long	381774871
 2428 08ac 6CC1563F 		.long	1062650220
 2429 08b0 176CC116 		.long	381774871
 2430 08b4 6CC1563F 		.long	1062650220
 2431 08b8 176CC116 		.long	381774871
 2432 08bc 6CC1563F 		.long	1062650220
 2433              		.align 32
 2434              	.LC82:
 2435 08c0 34C756A5 		.long	2773927732
 2436 08c4 E31DC73E 		.long	1053236707
 2437 08c8 34C756A5 		.long	2773927732
 2438 08cc E31DC73E 		.long	1053236707
 2439 08d0 34C756A5 		.long	2773927732
 2440 08d4 E31DC73E 		.long	1053236707
 2441 08d8 34C756A5 		.long	2773927732
 2442 08dc E31DC73E 		.long	1053236707
 2443              		.align 32
 2444              	.LC83:
 2445 08e0 1AA0011A 		.long	436314138
 2446 08e4 A001FA3E 		.long	1056571808
 2447 08e8 1AA0011A 		.long	436314138
 2448 08ec A001FA3E 		.long	1056571808
 2449 08f0 1AA0011A 		.long	436314138
 2450 08f4 A001FA3E 		.long	1056571808
 2451 08f8 1AA0011A 		.long	436314138
 2452 08fc A001FA3E 		.long	1056571808
 2453              		.align 32
 2454              	.LC84:
 2455 0900 E444F567 		.long	1744127204
 2456 0904 45E65A3E 		.long	1046144581
 2457 0908 E444F567 		.long	1744127204
 2458 090c 45E65A3E 		.long	1046144581
 2459 0910 E444F567 		.long	1744127204
 2460 0914 45E65A3E 		.long	1046144581
 2461 0918 E444F567 		.long	1744127204
 2462 091c 45E65A3E 		.long	1046144581
 2463              		.align 32
 2464              	.LC85:
 2465 0920 5C9F78B7 		.long	3078135644
 2466 0924 4F7E923E 		.long	1049787983
 2467 0928 5C9F78B7 		.long	3078135644
 2468 092c 4F7E923E 		.long	1049787983
 2469 0930 5C9F78B7 		.long	3078135644
 2470 0934 4F7E923E 		.long	1049787983
 2471 0938 5C9F78B7 		.long	3078135644
 2472 093c 4F7E923E 		.long	1049787983
 2473              		.align 32
 2474              	.LC86:
 2475 0940 096DA813 		.long	329805065
 2476 0944 4612E63D 		.long	1038488134
 2477 0948 096DA813 		.long	329805065
 2478 094c 4612E63D 		.long	1038488134
GAS LISTING /tmp/cckPQzVM.s 			page 68


 2479 0950 096DA813 		.long	329805065
 2480 0954 4612E63D 		.long	1038488134
 2481 0958 096DA813 		.long	329805065
 2482 095c 4612E63D 		.long	1038488134
 2483              		.align 32
 2484              	.LC87:
 2485 0960 98D8F8EF 		.long	4026063000
 2486 0964 D8EE213E 		.long	1042411224
 2487 0968 98D8F8EF 		.long	4026063000
 2488 096c D8EE213E 		.long	1042411224
 2489 0970 98D8F8EF 		.long	4026063000
 2490 0974 D8EE213E 		.long	1042411224
 2491 0978 98D8F8EF 		.long	4026063000
 2492 097c D8EE213E 		.long	1042411224
 2493              		.align 32
 2494              	.LC88:
 2495 0980 85EB51B8 		.long	3092376453
 2496 0984 1E238640 		.long	1082532638
 2497 0988 85EB51B8 		.long	3092376453
 2498 098c 1E238640 		.long	1082532638
 2499 0990 85EB51B8 		.long	3092376453
 2500 0994 1E238640 		.long	1082532638
 2501 0998 85EB51B8 		.long	3092376453
 2502 099c 1E238640 		.long	1082532638
 2503              		.align 32
 2504              	.LC89:
 2505 09a0 2D431CEB 		.long	3944497965
 2506 09a4 E2361A3F 		.long	1058682594
 2507 09a8 2D431CEB 		.long	3944497965
 2508 09ac E2361A3F 		.long	1058682594
 2509 09b0 2D431CEB 		.long	3944497965
 2510 09b4 E2361A3F 		.long	1058682594
 2511 09b8 2D431CEB 		.long	3944497965
 2512 09bc E2361A3F 		.long	1058682594
 2513              		.align 32
 2514              	.LC90:
 2515 09c0 00000000 		.long	0
 2516 09c4 00001440 		.long	1075052544
 2517 09c8 00000000 		.long	0
 2518 09cc 00001440 		.long	1075052544
 2519 09d0 00000000 		.long	0
 2520 09d4 00001440 		.long	1075052544
 2521 09d8 00000000 		.long	0
 2522 09dc 00001440 		.long	1075052544
 2523              		.align 32
 2524              	.LC91:
 2525 09e0 9A999999 		.long	2576980378
 2526 09e4 9999E93F 		.long	1072273817
 2527 09e8 9A999999 		.long	2576980378
 2528 09ec 9999E93F 		.long	1072273817
 2529 09f0 9A999999 		.long	2576980378
 2530 09f4 9999E93F 		.long	1072273817
 2531 09f8 9A999999 		.long	2576980378
 2532 09fc 9999E93F 		.long	1072273817
 2533              		.align 32
 2534              	.LC92:
 2535 0a00 00000000 		.long	0
GAS LISTING /tmp/cckPQzVM.s 			page 69


 2536 0a04 00408F40 		.long	1083129856
 2537 0a08 00000000 		.long	0
 2538 0a0c 00408F40 		.long	1083129856
 2539 0a10 00000000 		.long	0
 2540 0a14 00408F40 		.long	1083129856
 2541 0a18 00000000 		.long	0
 2542 0a1c 00408F40 		.long	1083129856
 2543              		.section	.rodata.cst8
 2544              		.align 8
 2545              	.LC93:
 2546 0010 182D4454 		.long	1413754136
 2547 0014 FB211940 		.long	1075388923
 2548              		.align 8
 2549              	.LC94:
 2550 0018 00000000 		.long	0
 2551 001c 00009040 		.long	1083179008
 2552              		.section	.rodata.cst16
 2553              		.align 16
 2554              	.LC96:
 2555 0090 01000000 		.quad	4294967297
 2555      01000000 
 2556 0098 01000000 		.quad	4294967297
 2556      01000000 
 2557              		.section	.rodata.cst32
 2558              		.align 32
 2559              	.LC97:
 2560 0a20 182D4454 		.long	1413754136
 2561 0a24 FB211940 		.long	1075388923
 2562 0a28 182D4454 		.long	1413754136
 2563 0a2c FB211940 		.long	1075388923
 2564 0a30 182D4454 		.long	1413754136
 2565 0a34 FB211940 		.long	1075388923
 2566 0a38 182D4454 		.long	1413754136
 2567 0a3c FB211940 		.long	1075388923
 2568              		.align 32
 2569              	.LC98:
 2570 0a40 814EE62E 		.long	786845313
 2571 0a44 0BEBB940 		.long	1085926155
 2572 0a48 814EE62E 		.long	786845313
 2573 0a4c 0BEBB940 		.long	1085926155
 2574 0a50 814EE62E 		.long	786845313
 2575 0a54 0BEBB940 		.long	1085926155
 2576 0a58 814EE62E 		.long	786845313
 2577 0a5c 0BEBB940 		.long	1085926155
 2578              		.align 32
 2579              	.LC99:
 2580 0a60 7B14AE47 		.long	1202590843
 2581 0a64 E17A843F 		.long	1065646817
 2582 0a68 7B14AE47 		.long	1202590843
 2583 0a6c E17A843F 		.long	1065646817
 2584 0a70 7B14AE47 		.long	1202590843
 2585 0a74 E17A843F 		.long	1065646817
 2586 0a78 7B14AE47 		.long	1202590843
 2587 0a7c E17A843F 		.long	1065646817
 2588              		.align 32
 2589              	.LC100:
 2590 0a80 182D4454 		.long	1413754136
GAS LISTING /tmp/cckPQzVM.s 			page 70


 2591 0a84 FB21B940 		.long	1085874683
 2592 0a88 182D4454 		.long	1413754136
 2593 0a8c FB21B940 		.long	1085874683
 2594 0a90 182D4454 		.long	1413754136
 2595 0a94 FB21B940 		.long	1085874683
 2596 0a98 182D4454 		.long	1413754136
 2597 0a9c FB21B940 		.long	1085874683
 2598              		.align 32
 2599              	.LC101:
 2600 0aa0 00000000 		.long	0
 2601 0aa4 0000E0BF 		.long	-1075838976
 2602 0aa8 00000000 		.long	0
 2603 0aac 0000E0BF 		.long	-1075838976
 2604 0ab0 00000000 		.long	0
 2605 0ab4 0000E0BF 		.long	-1075838976
 2606 0ab8 00000000 		.long	0
 2607 0abc 0000E0BF 		.long	-1075838976
 2608              		.align 32
 2609              	.LC102:
 2610 0ac0 9A999999 		.long	2576980378
 2611 0ac4 9999B9BF 		.long	-1078355559
 2612 0ac8 9A999999 		.long	2576980378
 2613 0acc 9999B9BF 		.long	-1078355559
 2614 0ad0 9A999999 		.long	2576980378
 2615 0ad4 9999B9BF 		.long	-1078355559
 2616 0ad8 9A999999 		.long	2576980378
 2617 0adc 9999B9BF 		.long	-1078355559
 2618              		.section	.rodata.cst16
 2619              		.align 16
 2620              	.LC105:
 2621 00a0 FFFFFFFF 		.quad	-1
 2621      FFFFFFFF 
 2622 00a8 FFFFFFFF 		.quad	-1
 2622      FFFFFFFF 
 2623              		.hidden	__dso_handle
 2624              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2625              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cckPQzVM.s 			page 71


DEFINED SYMBOLS
                            *ABS*:0000000000000000 duffing_RKCK45.cpp
     /tmp/cckPQzVM.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cckPQzVM.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cckPQzVM.s:81     .text.startup:0000000000000000 main
     /tmp/cckPQzVM.s:1656   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/cckPQzVM.s:1668   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cckPQzVM.s:1633   .text.startup:0000000000002430 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cckPQzVM.s:1681   .rodata.cst8:0000000000000000 .LC0
     /tmp/cckPQzVM.s:1685   .rodata.cst8:0000000000000008 .LC1
     /tmp/cckPQzVM.s:2343   .rodata.cst16:0000000000000070 .LC72
     /tmp/cckPQzVM.s:2589   .rodata.cst32:0000000000000a80 .LC100
     /tmp/cckPQzVM.s:2579   .rodata.cst32:0000000000000a60 .LC99
     /tmp/cckPQzVM.s:2609   .rodata.cst32:0000000000000ac0 .LC102
     /tmp/cckPQzVM.s:2599   .rodata.cst32:0000000000000aa0 .LC101
     /tmp/cckPQzVM.s:1690   .rodata.cst32:0000000000000000 .LC3
     /tmp/cckPQzVM.s:1710   .rodata.cst32:0000000000000040 .LC5
     /tmp/cckPQzVM.s:1700   .rodata.cst32:0000000000000020 .LC4
     /tmp/cckPQzVM.s:1720   .rodata.cst32:0000000000000060 .LC6
     /tmp/cckPQzVM.s:1750   .rodata.cst32:00000000000000c0 .LC9
     /tmp/cckPQzVM.s:1730   .rodata.cst32:0000000000000080 .LC7
     /tmp/cckPQzVM.s:1810   .rodata.cst32:0000000000000180 .LC15
     /tmp/cckPQzVM.s:1760   .rodata.cst32:00000000000000e0 .LC10
     /tmp/cckPQzVM.s:1740   .rodata.cst32:00000000000000a0 .LC8
     /tmp/cckPQzVM.s:1820   .rodata.cst32:00000000000001a0 .LC16
     /tmp/cckPQzVM.s:1770   .rodata.cst32:0000000000000100 .LC11
     /tmp/cckPQzVM.s:1780   .rodata.cst32:0000000000000120 .LC12
     /tmp/cckPQzVM.s:1790   .rodata.cst32:0000000000000140 .LC13
     /tmp/cckPQzVM.s:1800   .rodata.cst32:0000000000000160 .LC14
     /tmp/cckPQzVM.s:1830   .rodata.cst32:00000000000001c0 .LC17
     /tmp/cckPQzVM.s:1840   .rodata.cst32:00000000000001e0 .LC18
     /tmp/cckPQzVM.s:1850   .rodata.cst32:0000000000000200 .LC19
     /tmp/cckPQzVM.s:1860   .rodata.cst32:0000000000000220 .LC20
     /tmp/cckPQzVM.s:1879   .rodata.cst16:0000000000000020 .LC23
     /tmp/cckPQzVM.s:1871   .rodata.cst16:0000000000000000 .LC21
     /tmp/cckPQzVM.s:2620   .rodata.cst16:00000000000000a0 .LC105
     /tmp/cckPQzVM.s:1875   .rodata.cst16:0000000000000010 .LC22
     /tmp/cckPQzVM.s:1883   .rodata.cst16:0000000000000030 .LC24
     /tmp/cckPQzVM.s:1888   .rodata.cst32:0000000000000240 .LC25
     /tmp/cckPQzVM.s:1898   .rodata.cst32:0000000000000260 .LC26
     /tmp/cckPQzVM.s:1908   .rodata.cst32:0000000000000280 .LC27
     /tmp/cckPQzVM.s:1918   .rodata.cst32:00000000000002a0 .LC28
     /tmp/cckPQzVM.s:1938   .rodata.cst32:00000000000002e0 .LC30
     /tmp/cckPQzVM.s:1928   .rodata.cst32:00000000000002c0 .LC29
     /tmp/cckPQzVM.s:1948   .rodata.cst32:0000000000000300 .LC31
     /tmp/cckPQzVM.s:1968   .rodata.cst32:0000000000000340 .LC33
     /tmp/cckPQzVM.s:1978   .rodata.cst32:0000000000000360 .LC34
     /tmp/cckPQzVM.s:1958   .rodata.cst32:0000000000000320 .LC32
     /tmp/cckPQzVM.s:1988   .rodata.cst32:0000000000000380 .LC35
     /tmp/cckPQzVM.s:2018   .rodata.cst32:00000000000003e0 .LC38
     /tmp/cckPQzVM.s:2028   .rodata.cst32:0000000000000400 .LC39
     /tmp/cckPQzVM.s:2008   .rodata.cst32:00000000000003c0 .LC37
     /tmp/cckPQzVM.s:1998   .rodata.cst32:00000000000003a0 .LC36
     /tmp/cckPQzVM.s:2038   .rodata.cst32:0000000000000420 .LC40
     /tmp/cckPQzVM.s:2048   .rodata.cst32:0000000000000440 .LC41
     /tmp/cckPQzVM.s:2058   .rodata.cst32:0000000000000460 .LC42
GAS LISTING /tmp/cckPQzVM.s 			page 72


     /tmp/cckPQzVM.s:2088   .rodata.cst32:00000000000004c0 .LC45
     /tmp/cckPQzVM.s:2078   .rodata.cst32:00000000000004a0 .LC44
     /tmp/cckPQzVM.s:2068   .rodata.cst32:0000000000000480 .LC43
     /tmp/cckPQzVM.s:2098   .rodata.cst32:00000000000004e0 .LC46
     /tmp/cckPQzVM.s:2128   .rodata.cst32:0000000000000540 .LC49
     /tmp/cckPQzVM.s:2118   .rodata.cst32:0000000000000520 .LC48
     /tmp/cckPQzVM.s:2108   .rodata.cst32:0000000000000500 .LC47
     /tmp/cckPQzVM.s:2138   .rodata.cst32:0000000000000560 .LC50
     /tmp/cckPQzVM.s:2148   .rodata.cst32:0000000000000580 .LC51
     /tmp/cckPQzVM.s:2182   .rodata.cst32:00000000000005c0 .LC56
     /tmp/cckPQzVM.s:2159   .rodata.cst16:0000000000000040 .LC52
     /tmp/cckPQzVM.s:2167   .rodata.cst16:0000000000000060 .LC54
     /tmp/cckPQzVM.s:2163   .rodata.cst16:0000000000000050 .LC53
     /tmp/cckPQzVM.s:2172   .rodata.cst32:00000000000005a0 .LC55
     /tmp/cckPQzVM.s:2212   .rodata.cst32:0000000000000620 .LC59
     /tmp/cckPQzVM.s:2272   .rodata.cst32:00000000000006e0 .LC65
     /tmp/cckPQzVM.s:2192   .rodata.cst32:00000000000005e0 .LC57
     /tmp/cckPQzVM.s:2222   .rodata.cst32:0000000000000640 .LC60
     /tmp/cckPQzVM.s:2202   .rodata.cst32:0000000000000600 .LC58
     /tmp/cckPQzVM.s:2232   .rodata.cst32:0000000000000660 .LC61
     /tmp/cckPQzVM.s:2242   .rodata.cst32:0000000000000680 .LC62
     /tmp/cckPQzVM.s:2252   .rodata.cst32:00000000000006a0 .LC63
     /tmp/cckPQzVM.s:2262   .rodata.cst32:00000000000006c0 .LC64
     /tmp/cckPQzVM.s:2282   .rodata.cst32:0000000000000700 .LC66
     /tmp/cckPQzVM.s:2292   .rodata.cst32:0000000000000720 .LC67
     /tmp/cckPQzVM.s:2302   .rodata.cst32:0000000000000740 .LC68
     /tmp/cckPQzVM.s:2312   .rodata.cst32:0000000000000760 .LC69
     /tmp/cckPQzVM.s:2322   .rodata.cst32:0000000000000780 .LC70
     /tmp/cckPQzVM.s:2332   .rodata.cst32:00000000000007a0 .LC71
     /tmp/cckPQzVM.s:2349   .rodata.cst16:0000000000000080 .LC73
     /tmp/cckPQzVM.s:2354   .rodata.cst32:00000000000007c0 .LC74
     /tmp/cckPQzVM.s:2364   .rodata.cst32:00000000000007e0 .LC75
     /tmp/cckPQzVM.s:2374   .rodata.cst32:0000000000000800 .LC76
     /tmp/cckPQzVM.s:2414   .rodata.cst32:0000000000000880 .LC80
     /tmp/cckPQzVM.s:2384   .rodata.cst32:0000000000000820 .LC77
     /tmp/cckPQzVM.s:2394   .rodata.cst32:0000000000000840 .LC78
     /tmp/cckPQzVM.s:2424   .rodata.cst32:00000000000008a0 .LC81
     /tmp/cckPQzVM.s:2404   .rodata.cst32:0000000000000860 .LC79
     /tmp/cckPQzVM.s:2454   .rodata.cst32:0000000000000900 .LC84
     /tmp/cckPQzVM.s:2464   .rodata.cst32:0000000000000920 .LC85
     /tmp/cckPQzVM.s:2434   .rodata.cst32:00000000000008c0 .LC82
     /tmp/cckPQzVM.s:2474   .rodata.cst32:0000000000000940 .LC86
     /tmp/cckPQzVM.s:2444   .rodata.cst32:00000000000008e0 .LC83
     /tmp/cckPQzVM.s:2484   .rodata.cst32:0000000000000960 .LC87
     /tmp/cckPQzVM.s:2494   .rodata.cst32:0000000000000980 .LC88
     /tmp/cckPQzVM.s:2504   .rodata.cst32:00000000000009a0 .LC89
     /tmp/cckPQzVM.s:2514   .rodata.cst32:00000000000009c0 .LC90
     /tmp/cckPQzVM.s:2534   .rodata.cst32:0000000000000a00 .LC92
     /tmp/cckPQzVM.s:2524   .rodata.cst32:00000000000009e0 .LC91
     /tmp/cckPQzVM.s:2559   .rodata.cst32:0000000000000a20 .LC97
     /tmp/cckPQzVM.s:2554   .rodata.cst16:0000000000000090 .LC96
     /tmp/cckPQzVM.s:2569   .rodata.cst32:0000000000000a40 .LC98
     /tmp/cckPQzVM.s:2545   .rodata.cst8:0000000000000010 .LC93
     /tmp/cckPQzVM.s:2549   .rodata.cst8:0000000000000018 .LC94

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
GAS LISTING /tmp/cckPQzVM.s 			page 73


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
