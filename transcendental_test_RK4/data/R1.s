GAS LISTING /tmp/cccAoHzT.s 			page 1


   1              		.file	"FLOPS_TEST_TRANSZENDENTAL.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4707:
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
  18              	.LFE4707:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4441:
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
GAS LISTING /tmp/cccAoHzT.s 			page 2


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
  66              	.LFE4441:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.1,"aMS",@progbits,1
  69              	.LC29:
  70 0000 70203D20 		.string	"p = "
  70      00
  71              	.LC30:
  72 0005 78203D00 		.string	"x ="
  73              	.LC31:
  74 0009 456C7465 		.string	"Eltelt ido: "
  74      6C742069 
  74      646F3A20 
  74      00
  75              	.LC32:
  76 0016 206D7300 		.string	" ms"
  77              		.section	.text.startup,"ax",@progbits
  78              		.p2align 4,,15
  79              		.globl	main
  80              		.type	main, @function
  81              	main:
  82              	.LFB4443:
  83              		.cfi_startproc
  84 0000 55       		pushq	%rbp
  85              		.cfi_def_cfa_offset 16
  86              		.cfi_offset 6, -16
  87 0001 BFE04600 		movl	$18144, %edi
  87      00
  88 0006 4889E5   		movq	%rsp, %rbp
  89              		.cfi_def_cfa_register 6
  90 0009 4157     		pushq	%r15
  91 000b 4156     		pushq	%r14
  92 000d 4155     		pushq	%r13
  93 000f 4154     		pushq	%r12
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96              		.cfi_offset 13, -40
  97              		.cfi_offset 12, -48
  98 0011 4531E4   		xorl	%r12d, %r12d
  99 0014 53       		pushq	%rbx
GAS LISTING /tmp/cccAoHzT.s 			page 3


 100 0015 4883E4E0 		andq	$-32, %rsp
 101 0019 4881EC00 		subq	$256, %rsp
 101      010000
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC2(%rip), %xmm1
 103      00000000 
 104 0028 C5FB1005 		vmovsd	.LC1(%rip), %xmm0
 104      00000000 
 105 0030 E8000000 		call	_Z8linspaceddi
 105      00
 106 0035 4989C5   		movq	%rax, %r13
 107 0038 E8000000 		call	clock
 107      00
 108 003d C5FD280D 		vmovapd	.LC20(%rip), %ymm1
 108      00000000 
 109 0045 4889C3   		movq	%rax, %rbx
 110              	.L12:
 111 0048 C4C17D10 		vmovupd	0(%r13), %ymm6
 111      7500
 112 004e C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 113 0052 C5FD2815 		vmovapd	.LC0(%rip), %ymm2
 113      00000000 
 114 005a BA102700 		movl	$10000, %edx
 114      00
 115 005f C5FD29B4 		vmovapd	%ymm6, 224(%rsp)
 115      24E00000 
 115      00
 116 0068 0F1F8400 		.p2align 4,,10
 116      00000000 
 117              		.p2align 3
 118              	.L19:
 119 0070 C5ED5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 119      00000000 
 120 0078 83EA01   		subl	$1, %edx
 121 007b C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 121      FF
 122 0080 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 122      00000000 
 123 0088 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 123      C008
 124 008e C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 124      D808
 125 0094 C5FD115C 		vmovupd	%ymm3, 96(%rsp)
 125      2460
 126 009a C5FB105C 		vmovsd	96(%rsp), %xmm3
 126      2460
 127 00a0 C5FB106C 		vmovsd	104(%rsp), %xmm5
 127      2468
 128 00a6 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 128      C3
 129 00ab C57B104C 		vmovsd	112(%rsp), %xmm9
 129      2470
 130 00b1 C57B1054 		vmovsd	120(%rsp), %xmm10
 130      2478
 131 00b7 48894424 		movq	%rax, 64(%rsp)
 131      40
 132 00bc C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
GAS LISTING /tmp/cccAoHzT.s 			page 4


 132      C5
 133 00c1 C5FA7E5C 		vmovq	64(%rsp), %xmm3
 133      2440
 134 00c7 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 134      00000000 
 135 00cf C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 136 00d3 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm8
 136      C001
 137 00d9 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 137      C1
 138 00de 48894424 		movq	%rax, 64(%rsp)
 138      40
 139 00e3 C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 139      C2
 140 00e8 C5FA7E5C 		vmovq	64(%rsp), %xmm3
 140      2440
 141 00ee C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 141      C801
 142 00f4 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 142      00000000 
 143 00fc C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 143      00000000 
 144 0104 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 145 0108 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 146 010c C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 147 0110 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 147      00000000 
 148 0118 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 149 011c C57D592D 		vmulpd	.LC7(%rip), %ymm0, %ymm13
 149      00000000 
 150 0124 C57D5925 		vmulpd	.LC11(%rip), %ymm0, %ymm12
 150      00000000 
 151 012c C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 151      00000000 
 152 0134 C56559D3 		vmulpd	%ymm3, %ymm3, %ymm10
 153 0138 C515582D 		vaddpd	.LC8(%rip), %ymm13, %ymm13
 153      00000000 
 154 0140 C51D5825 		vaddpd	.LC12(%rip), %ymm12, %ymm12
 154      00000000 
 155 0148 C4412559 		vmulpd	%ymm10, %ymm11, %ymm11
 155      DA
 156 014d C4412558 		vaddpd	%ymm13, %ymm11, %ymm11
 156      DD
 157 0152 C51D59E3 		vmulpd	%ymm3, %ymm12, %ymm12
 158 0156 C57D592D 		vmulpd	.LC15(%rip), %ymm0, %ymm13
 158      00000000 
 159 015e C4411D58 		vaddpd	%ymm11, %ymm12, %ymm12
 159      E3
 160 0163 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 160      00000000 
 161 016b C515582D 		vaddpd	.LC16(%rip), %ymm13, %ymm13
 161      00000000 
 162 0173 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 162      00000000 
 163 017b C4411559 		vmulpd	%ymm10, %ymm13, %ymm10
 163      D2
 164 0180 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
GAS LISTING /tmp/cccAoHzT.s 			page 5


 164      D3
 165 0185 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 165      00000000 
 166 018d C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 166      00000000 
 167 0195 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 168 0199 C4412558 		vaddpd	%ymm10, %ymm11, %ymm10
 168      D2
 169 019e C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 170 01a2 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 170      00000000 
 171 01aa C4C16559 		vmulpd	%ymm10, %ymm3, %ymm3
 171      DA
 172 01af C4623937 		vpcmpgtq	.LC22(%rip), %xmm8, %xmm10
 172      15000000 
 172      00
 173 01b8 C4412559 		vmulpd	%ymm12, %ymm11, %ymm12
 173      E4
 174 01bd C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 174      E301
 175 01c3 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 176 01c7 C59D58ED 		vaddpd	%ymm5, %ymm12, %ymm5
 177 01cb C4C12173 		vpsllq	$1, %xmm11, %xmm11
 177      F301
 178 01d1 C539DB25 		vpand	.LC21(%rip), %xmm8, %xmm12
 178      00000000 
 179 01d9 C4C13973 		vpsllq	$62, %xmm8, %xmm8
 179      F03E
 180 01df C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 181 01e3 C5B1DB05 		vpand	.LC21(%rip), %xmm9, %xmm0
 181      00000000 
 182 01eb C4421929 		vpcmpeqq	%xmm15, %xmm12, %xmm12
 182      E7
 183 01f0 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 183      00000000 
 184 01f8 C519EF25 		vpxor	.LC33(%rip), %xmm12, %xmm12
 184      00000000 
 185 0200 C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 185      C7
 186 0205 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 186      00000000 
 187 020d C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 187      1D000000 
 187      00
 188 0216 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 188      00000000 
 189 021e C4631D18 		vinsertf128	$0x1, %xmm0, %ymm12, %ymm12
 189      E001
 190 0224 C4E23137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm0
 190      05000000 
 190      00
 191 022d C4C13173 		vpsllq	$62, %xmm9, %xmm9
 191      F13E
 192 0233 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 192      D001
 193 0239 C5F928C4 		vmovapd	%xmm4, %xmm0
 194 023d C5F973F0 		vpsllq	$1, %xmm0, %xmm0
GAS LISTING /tmp/cccAoHzT.s 			page 6


 194      01
 195 0242 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 195      00000000 
 196 024a C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 196      05000000 
 196      00
 197 0253 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 197      00000000 
 198 025b C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 198      C301
 199 0261 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 200 0265 C4E37D19 		vextractf128	$0x1, %ymm2, %xmm0
 200      D001
 201 026b C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 201      EF40
 202 0271 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 202      E140
 203 0277 C5B1EFC0 		vpxor	%xmm0, %xmm9, %xmm0
 204 027b C539EFCA 		vpxor	%xmm2, %xmm8, %xmm9
 205 027f C463554B 		vblendvpd	%ymm12, %ymm4, %ymm5, %ymm12
 205      E4C0
 206 0285 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 206      00000000 
 207 028d C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 207      00000000 
 208 0295 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 208      C801
 209 029b C4411D57 		vxorpd	%ymm9, %ymm12, %ymm12
 209      E1
 210 02a0 C4414D59 		vmulpd	%ymm12, %ymm6, %ymm12
 210      E4
 211 02a5 C51D5915 		vmulpd	.LC25(%rip), %ymm12, %ymm10
 211      00000000 
 212 02ad C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 212      D2
 213 02b2 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 213      00000000 
 214 02ba C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 214      00000000 
 215 02c2 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 215      C008
 216 02c8 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 216      D808
 217 02ce C5FD115C 		vmovupd	%ymm3, 96(%rsp)
 217      2460
 218 02d4 C57B105C 		vmovsd	96(%rsp), %xmm11
 218      2460
 219 02da C57B106C 		vmovsd	104(%rsp), %xmm13
 219      2468
 220 02e0 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 220      C3
 221 02e5 C4C1FB2C 		vcvttsd2siq	%xmm13, %rcx
 221      CD
 222 02ea C57B1074 		vmovsd	112(%rsp), %xmm14
 222      2470
 223 02f0 C57B107C 		vmovsd	120(%rsp), %xmm15
 223      2478
GAS LISTING /tmp/cccAoHzT.s 			page 7


 224 02f6 48894424 		movq	%rax, 64(%rsp)
 224      40
 225 02fb C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 225      C6
 226 0300 C5FA7E6C 		vmovq	64(%rsp), %xmm5
 226      2440
 227 0306 C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm8
 227      C101
 228 030c C4C1FB2C 		vcvttsd2siq	%xmm15, %rcx
 228      CF
 229 0311 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 229      00000000 
 230 0319 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 231 031d 48894424 		movq	%rax, 64(%rsp)
 231      40
 232 0322 C5FA7E5C 		vmovq	64(%rsp), %xmm3
 232      2440
 233 0328 C463E122 		vpinsrq	$1, %rcx, %xmm3, %xmm9
 233      C901
 234 032e C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 234      00000000 
 235 0336 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 235      00000000 
 236 033e C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 237 0342 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 238 0346 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 239 034a C57D592D 		vmulpd	.LC9(%rip), %ymm0, %ymm13
 239      00000000 
 240 0352 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 241 0356 C57D593D 		vmulpd	.LC7(%rip), %ymm0, %ymm15
 241      00000000 
 242 035e C57D5935 		vmulpd	.LC11(%rip), %ymm0, %ymm14
 242      00000000 
 243 0366 C515582D 		vaddpd	.LC10(%rip), %ymm13, %ymm13
 243      00000000 
 244 036e C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 245 0372 C505583D 		vaddpd	.LC8(%rip), %ymm15, %ymm15
 245      00000000 
 246 037a C50D5835 		vaddpd	.LC12(%rip), %ymm14, %ymm14
 246      00000000 
 247 0382 C4411559 		vmulpd	%ymm11, %ymm13, %ymm13
 247      EB
 248 0387 C4411558 		vaddpd	%ymm15, %ymm13, %ymm13
 248      EF
 249 038c C50D59F3 		vmulpd	%ymm3, %ymm14, %ymm14
 250 0390 C57D593D 		vmulpd	.LC13(%rip), %ymm0, %ymm15
 250      00000000 
 251 0398 C4410D58 		vaddpd	%ymm13, %ymm14, %ymm14
 251      F5
 252 039d C57D592D 		vmulpd	.LC15(%rip), %ymm0, %ymm13
 252      00000000 
 253 03a5 C505583D 		vaddpd	.LC14(%rip), %ymm15, %ymm15
 253      00000000 
 254 03ad C515582D 		vaddpd	.LC16(%rip), %ymm13, %ymm13
 254      00000000 
 255 03b5 C4411559 		vmulpd	%ymm11, %ymm13, %ymm11
 255      DB
GAS LISTING /tmp/cccAoHzT.s 			page 8


 256 03ba C57D592D 		vmulpd	.LC17(%rip), %ymm0, %ymm13
 256      00000000 
 257 03c2 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 257      DF
 258 03c7 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 258      FF
 259 03cc C515582D 		vaddpd	.LC18(%rip), %ymm13, %ymm13
 259      00000000 
 260 03d4 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 261 03d8 C4411558 		vaddpd	%ymm11, %ymm13, %ymm13
 261      EB
 262 03dd C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 263 03e1 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 263      00000000 
 264 03e9 C4C16559 		vmulpd	%ymm13, %ymm3, %ymm3
 264      DD
 265 03ee C4623937 		vpcmpgtq	.LC22(%rip), %xmm8, %xmm13
 265      2D000000 
 265      00
 266 03f7 C4412559 		vmulpd	%ymm14, %ymm11, %ymm11
 266      DE
 267 03fc C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 267      E601
 268 0402 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 269 0406 C5A558ED 		vaddpd	%ymm5, %ymm11, %ymm5
 270 040a C4C10973 		vpsllq	$1, %xmm14, %xmm14
 270      F601
 271 0410 C539DB1D 		vpand	.LC21(%rip), %xmm8, %xmm11
 271      00000000 
 272 0418 C4C13973 		vpsllq	$62, %xmm8, %xmm8
 272      F03E
 273 041e C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 274 0422 C5B1DB05 		vpand	.LC21(%rip), %xmm9, %xmm0
 274      00000000 
 275 042a C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 275      DF
 276 042f C509DB35 		vpand	.LC23(%rip), %xmm14, %xmm14
 276      00000000 
 277 0437 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 277      00000000 
 278 043f C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 278      C7
 279 0444 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 279      00000000 
 280 044c C4620929 		vpcmpeqq	.LC23(%rip), %xmm14, %xmm14
 280      35000000 
 280      00
 281 0455 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 281      00000000 
 282 045d C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 282      D801
 283 0463 C4E23137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm0
 283      05000000 
 283      00
 284 046c C4C13173 		vpsllq	$62, %xmm9, %xmm9
 284      F13E
 285 0472 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
GAS LISTING /tmp/cccAoHzT.s 			page 9


 285      E801
 286 0478 C5F928C4 		vmovapd	%xmm4, %xmm0
 287 047c C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 287      01
 288 0481 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 288      00000000 
 289 0489 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 289      05000000 
 289      00
 290 0492 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 290      00000000 
 291 049a C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 291      C601
 292 04a0 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 293 04a4 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 293      D001
 294 04aa C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 294      EF40
 295 04b0 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 295      E140
 296 04b6 C5B1EFC0 		vpxor	%xmm0, %xmm9, %xmm0
 297 04ba C44139EF 		vpxor	%xmm10, %xmm8, %xmm9
 297      CA
 298 04bf C463554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm11
 298      DCB0
 299 04c5 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 299      00000000 
 300 04cd C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 300      00000000 
 301 04d5 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 301      C801
 302 04db C4412557 		vxorpd	%ymm9, %ymm11, %ymm11
 302      D9
 303 04e0 C4414D59 		vmulpd	%ymm11, %ymm6, %ymm11
 303      DB
 304 04e5 C5A55905 		vmulpd	.LC26(%rip), %ymm11, %ymm0
 304      00000000 
 305 04ed C525591D 		vmulpd	.LC25(%rip), %ymm11, %ymm11
 305      00000000 
 306 04f5 C51D58E0 		vaddpd	%ymm0, %ymm12, %ymm12
 307 04f9 C4416D58 		vaddpd	%ymm11, %ymm2, %ymm11
 307      DB
 308 04fe C5A55425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 308      00000000 
 309 0506 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 309      00000000 
 310 050e C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 310      C008
 311 0514 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 311      D808
 312 051a C5FD115C 		vmovupd	%ymm3, 96(%rsp)
 312      2460
 313 0520 C5FB105C 		vmovsd	96(%rsp), %xmm3
 313      2460
 314 0526 C5FB106C 		vmovsd	104(%rsp), %xmm5
 314      2468
 315 052c C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
GAS LISTING /tmp/cccAoHzT.s 			page 10


 315      C3
 316 0531 C4E1FB2C 		vcvttsd2siq	%xmm5, %rcx
 316      CD
 317 0536 C57B104C 		vmovsd	112(%rsp), %xmm9
 317      2470
 318 053c C57B1054 		vmovsd	120(%rsp), %xmm10
 318      2478
 319 0542 48894424 		movq	%rax, 64(%rsp)
 319      40
 320 0547 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 320      C1
 321 054c C5FA7E6C 		vmovq	64(%rsp), %xmm5
 321      2440
 322 0552 C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm8
 322      C101
 323 0558 C4C1FB2C 		vcvttsd2siq	%xmm10, %rcx
 323      CA
 324 055d C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 324      00000000 
 325 0565 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 326 0569 48894424 		movq	%rax, 64(%rsp)
 326      40
 327 056e C5FA7E5C 		vmovq	64(%rsp), %xmm3
 327      2440
 328 0574 C463E122 		vpinsrq	$1, %rcx, %xmm3, %xmm9
 328      C901
 329 057a C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 329      00000000 
 330 0582 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 330      00000000 
 331 058a C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 332 058e C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 333 0592 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 334 0596 C57D592D 		vmulpd	.LC9(%rip), %ymm0, %ymm13
 334      00000000 
 335 059e C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 336 05a2 C57D593D 		vmulpd	.LC7(%rip), %ymm0, %ymm15
 336      00000000 
 337 05aa C57D5935 		vmulpd	.LC11(%rip), %ymm0, %ymm14
 337      00000000 
 338 05b2 C515582D 		vaddpd	.LC10(%rip), %ymm13, %ymm13
 338      00000000 
 339 05ba C56559D3 		vmulpd	%ymm3, %ymm3, %ymm10
 340 05be C505583D 		vaddpd	.LC8(%rip), %ymm15, %ymm15
 340      00000000 
 341 05c6 C50D5835 		vaddpd	.LC12(%rip), %ymm14, %ymm14
 341      00000000 
 342 05ce C4411559 		vmulpd	%ymm10, %ymm13, %ymm13
 342      EA
 343 05d3 C4411558 		vaddpd	%ymm15, %ymm13, %ymm13
 343      EF
 344 05d8 C50D59F3 		vmulpd	%ymm3, %ymm14, %ymm14
 345 05dc C57D593D 		vmulpd	.LC13(%rip), %ymm0, %ymm15
 345      00000000 
 346 05e4 C4410D58 		vaddpd	%ymm13, %ymm14, %ymm14
 346      F5
 347 05e9 C57D592D 		vmulpd	.LC15(%rip), %ymm0, %ymm13
GAS LISTING /tmp/cccAoHzT.s 			page 11


 347      00000000 
 348 05f1 C505583D 		vaddpd	.LC14(%rip), %ymm15, %ymm15
 348      00000000 
 349 05f9 C515582D 		vaddpd	.LC16(%rip), %ymm13, %ymm13
 349      00000000 
 350 0601 C4411559 		vmulpd	%ymm10, %ymm13, %ymm10
 350      D2
 351 0606 C57D592D 		vmulpd	.LC17(%rip), %ymm0, %ymm13
 351      00000000 
 352 060e C4412D58 		vaddpd	%ymm15, %ymm10, %ymm10
 352      D7
 353 0613 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 353      FF
 354 0618 C515582D 		vaddpd	.LC18(%rip), %ymm13, %ymm13
 354      00000000 
 355 0620 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 356 0624 C4411558 		vaddpd	%ymm10, %ymm13, %ymm13
 356      EA
 357 0629 C55559D0 		vmulpd	%ymm0, %ymm5, %ymm10
 358 062d C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 358      00000000 
 359 0635 C4C16559 		vmulpd	%ymm13, %ymm3, %ymm3
 359      DD
 360 063a C4623937 		vpcmpgtq	.LC22(%rip), %xmm8, %xmm13
 360      2D000000 
 360      00
 361 0643 C4412D59 		vmulpd	%ymm14, %ymm10, %ymm10
 361      D6
 362 0648 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 362      E601
 363 064e C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 364 0652 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 365 0656 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 365      F601
 366 065c C539DB15 		vpand	.LC21(%rip), %xmm8, %xmm10
 366      00000000 
 367 0664 C4C13973 		vpsllq	$62, %xmm8, %xmm8
 367      F03E
 368 066a C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 369 066e C5B1DB05 		vpand	.LC21(%rip), %xmm9, %xmm0
 369      00000000 
 370 0676 C4422929 		vpcmpeqq	%xmm15, %xmm10, %xmm10
 370      D7
 371 067b C509DB35 		vpand	.LC23(%rip), %xmm14, %xmm14
 371      00000000 
 372 0683 C529EF15 		vpxor	.LC33(%rip), %xmm10, %xmm10
 372      00000000 
 373 068b C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 373      C7
 374 0690 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 374      00000000 
 375 0698 C4620929 		vpcmpeqq	.LC23(%rip), %xmm14, %xmm14
 375      35000000 
 375      00
 376 06a1 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 376      00000000 
 377 06a9 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
GAS LISTING /tmp/cccAoHzT.s 			page 12


 377      D001
 378 06af C4E23137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm0
 378      05000000 
 378      00
 379 06b8 C4C13173 		vpsllq	$62, %xmm9, %xmm9
 379      F13E
 380 06be C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 380      E801
 381 06c4 C5F928C4 		vmovapd	%xmm4, %xmm0
 382 06c8 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 382      01
 383 06cd C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 383      00000000 
 384 06d5 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 384      05000000 
 384      00
 385 06de C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 385      00000000 
 386 06e6 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 386      C601
 387 06ec C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 388 06f0 C4637D19 		vextractf128	$0x1, %ymm11, %xmm0
 388      D801
 389 06f6 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 389      EF40
 390 06fc C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 390      E140
 391 0702 C5B1EFC0 		vpxor	%xmm0, %xmm9, %xmm0
 392 0706 C44139EF 		vpxor	%xmm11, %xmm8, %xmm9
 392      CB
 393 070b C463554B 		vblendvpd	%ymm10, %ymm4, %ymm5, %ymm10
 393      D4A0
 394 0711 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 394      00000000 
 395 0719 C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 395      00000000 
 396 0721 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 396      C801
 397 0727 C4412D57 		vxorpd	%ymm9, %ymm10, %ymm10
 397      D1
 398 072c C4414D59 		vmulpd	%ymm10, %ymm6, %ymm10
 398      D2
 399 0731 C5AD5905 		vmulpd	.LC26(%rip), %ymm10, %ymm0
 399      00000000 
 400 0739 C52D5915 		vmulpd	.LC27(%rip), %ymm10, %ymm10
 400      00000000 
 401 0741 C51D58E0 		vaddpd	%ymm0, %ymm12, %ymm12
 402 0745 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 402      D2
 403 074a C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 403      00000000 
 404 0752 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 404      00000000 
 405 075a C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 405      C008
 406 0760 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 406      D808
GAS LISTING /tmp/cccAoHzT.s 			page 13


 407 0766 C5FD115C 		vmovupd	%ymm3, 96(%rsp)
 407      2460
 408 076c C57B105C 		vmovsd	96(%rsp), %xmm11
 408      2460
 409 0772 C57B106C 		vmovsd	104(%rsp), %xmm13
 409      2468
 410 0778 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 410      C3
 411 077d C4C1FB2C 		vcvttsd2siq	%xmm13, %rcx
 411      CD
 412 0782 C57B1074 		vmovsd	112(%rsp), %xmm14
 412      2470
 413 0788 C57B107C 		vmovsd	120(%rsp), %xmm15
 413      2478
 414 078e 48894424 		movq	%rax, 64(%rsp)
 414      40
 415 0793 C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 415      C6
 416 0798 C5FA7E6C 		vmovq	64(%rsp), %xmm5
 416      2440
 417 079e C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm8
 417      C101
 418 07a4 C4C1FB2C 		vcvttsd2siq	%xmm15, %rcx
 418      CF
 419 07a9 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 419      00000000 
 420 07b1 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 421 07b5 48894424 		movq	%rax, 64(%rsp)
 421      40
 422 07ba C5FA7E5C 		vmovq	64(%rsp), %xmm3
 422      2440
 423 07c0 C463E122 		vpinsrq	$1, %rcx, %xmm3, %xmm9
 423      C901
 424 07c6 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 424      00000000 
 425 07ce C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 425      00000000 
 426 07d6 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 427 07da C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 428 07de C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 429 07e2 C57D5935 		vmulpd	.LC9(%rip), %ymm0, %ymm14
 429      00000000 
 430 07ea C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 431 07ee C57D593D 		vmulpd	.LC7(%rip), %ymm0, %ymm15
 431      00000000 
 432 07f6 C57D592D 		vmulpd	.LC11(%rip), %ymm0, %ymm13
 432      00000000 
 433 07fe C50D5835 		vaddpd	.LC10(%rip), %ymm14, %ymm14
 433      00000000 
 434 0806 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 435 080a C505583D 		vaddpd	.LC8(%rip), %ymm15, %ymm15
 435      00000000 
 436 0812 C515582D 		vaddpd	.LC12(%rip), %ymm13, %ymm13
 436      00000000 
 437 081a C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 437      F3
 438 081f C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
GAS LISTING /tmp/cccAoHzT.s 			page 14


 438      F7
 439 0824 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 440 0828 C57D593D 		vmulpd	.LC15(%rip), %ymm0, %ymm15
 440      00000000 
 441 0830 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 441      EE
 442 0835 C57D5935 		vmulpd	.LC13(%rip), %ymm0, %ymm14
 442      00000000 
 443 083d C505583D 		vaddpd	.LC16(%rip), %ymm15, %ymm15
 443      00000000 
 444 0845 C50D5835 		vaddpd	.LC14(%rip), %ymm14, %ymm14
 444      00000000 
 445 084d C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 445      DB
 446 0852 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 446      FF
 447 0857 C4412558 		vaddpd	%ymm14, %ymm11, %ymm11
 447      DE
 448 085c C57D5935 		vmulpd	.LC17(%rip), %ymm0, %ymm14
 448      00000000 
 449 0864 C50D5835 		vaddpd	.LC18(%rip), %ymm14, %ymm14
 449      00000000 
 450 086c C50D59F3 		vmulpd	%ymm3, %ymm14, %ymm14
 451 0870 C4410D58 		vaddpd	%ymm11, %ymm14, %ymm11
 451      DB
 452 0875 C55559F0 		vmulpd	%ymm0, %ymm5, %ymm14
 453 0879 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 453      00000000 
 454 0881 C4C16559 		vmulpd	%ymm11, %ymm3, %ymm3
 454      DB
 455 0886 C539DB1D 		vpand	.LC21(%rip), %xmm8, %xmm11
 455      00000000 
 456 088e C4410D59 		vmulpd	%ymm13, %ymm14, %ymm13
 456      ED
 457 0893 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 458 0897 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 458      E601
 459 089d C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 459      DF
 460 08a2 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 460      00000000 
 461 08aa C4C10973 		vpsllq	$1, %xmm14, %xmm14
 461      F601
 462 08b0 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 463 08b4 C5B1DB05 		vpand	.LC21(%rip), %xmm9, %xmm0
 463      00000000 
 464 08bc C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 465 08c0 C509DB35 		vpand	.LC23(%rip), %xmm14, %xmm14
 465      00000000 
 466 08c8 C4623937 		vpcmpgtq	.LC22(%rip), %xmm8, %xmm13
 466      2D000000 
 466      00
 467 08d1 C4C13973 		vpsllq	$62, %xmm8, %xmm8
 467      F03E
 468 08d7 C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 468      C7
 469 08dc C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
GAS LISTING /tmp/cccAoHzT.s 			page 15


 469      00000000 
 470 08e4 C4620929 		vpcmpeqq	.LC23(%rip), %xmm14, %xmm14
 470      35000000 
 470      00
 471 08ed C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 471      00000000 
 472 08f5 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 472      D801
 473 08fb C4E23137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm0
 473      05000000 
 473      00
 474 0904 C4C13173 		vpsllq	$62, %xmm9, %xmm9
 474      F13E
 475 090a C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 475      E801
 476 0910 C5F928C4 		vmovapd	%xmm4, %xmm0
 477 0914 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 477      01
 478 0919 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 478      00000000 
 479 0921 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 479      05000000 
 479      00
 480 092a C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 480      00000000 
 481 0932 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 481      C601
 482 0938 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 483 093c C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 483      D001
 484 0942 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 484      EF40
 485 0948 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 485      E140
 486 094e C5B1EFC0 		vpxor	%xmm0, %xmm9, %xmm0
 487 0952 C44139EF 		vpxor	%xmm10, %xmm8, %xmm9
 487      CA
 488 0957 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 488      E4B0
 489 095d C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 489      00000000 
 490 0965 C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 490      00000000 
 491 096d C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 491      C801
 492 0973 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 492      E1
 493 0978 C5CD59E4 		vmulpd	%ymm4, %ymm6, %ymm4
 494 097c C51D58E4 		vaddpd	%ymm4, %ymm12, %ymm12
 495 0980 C51D5925 		vmulpd	.LC28(%rip), %ymm12, %ymm12
 495      00000000 
 496 0988 C4C16D58 		vaddpd	%ymm12, %ymm2, %ymm2
 496      D4
 497 098d C5FD2994 		vmovapd	%ymm2, 192(%rsp)
 497      24C00000 
 497      00
 498 0996 0F85D4F6 		jne	.L19
GAS LISTING /tmp/cccAoHzT.s 			page 16


 498      FFFF
 499 099c 4489E0   		movl	%r12d, %eax
 500 099f BA1F85EB 		movl	$1374389535, %edx
 500      51
 501 09a4 F7EA     		imull	%edx
 502 09a6 4489E0   		movl	%r12d, %eax
 503 09a9 C1F81F   		sarl	$31, %eax
 504 09ac C1FA05   		sarl	$5, %edx
 505 09af 29C2     		subl	%eax, %edx
 506 09b1 B8640000 		movl	$100, %eax
 506      00
 507 09b6 0FAFD0   		imull	%eax, %edx
 508 09b9 4489E0   		movl	%r12d, %eax
 509 09bc 29D0     		subl	%edx, %eax
 510 09be 83F801   		cmpl	$1, %eax
 511 09c1 0F848800 		je	.L21
 511      0000
 512              	.L14:
 513 09c7 4183C404 		addl	$4, %r12d
 514 09cb 4983C520 		addq	$32, %r13
 515 09cf 4181FCE0 		cmpl	$18144, %r12d
 515      460000
 516 09d6 0F856CF6 		jne	.L12
 516      FFFF
 517 09dc C5F877   		vzeroupper
 518 09df E8000000 		call	clock
 518      00
 519 09e4 BA0C0000 		movl	$12, %edx
 519      00
 520 09e9 4989C4   		movq	%rax, %r12
 521 09ec BE000000 		movl	$.LC31, %esi
 521      00
 522 09f1 BF000000 		movl	$_ZSt4cout, %edi
 522      00
 523 09f6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 523      00
 524 09fb 4C89E1   		movq	%r12, %rcx
 525 09fe 48BECFF7 		movabsq	$2361183241434822607, %rsi
 525      53E3A59B 
 525      C420
 526 0a08 BF000000 		movl	$_ZSt4cout, %edi
 526      00
 527 0a0d 4829D9   		subq	%rbx, %rcx
 528 0a10 4889C8   		movq	%rcx, %rax
 529 0a13 48C1F93F 		sarq	$63, %rcx
 530 0a17 48F7EE   		imulq	%rsi
 531 0a1a 4889D6   		movq	%rdx, %rsi
 532 0a1d 48C1FE07 		sarq	$7, %rsi
 533 0a21 4829CE   		subq	%rcx, %rsi
 534 0a24 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 534      00
 535 0a29 BE000000 		movl	$.LC32, %esi
 535      00
 536 0a2e 4889C7   		movq	%rax, %rdi
 537 0a31 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 537      00
 538 0a36 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/cccAoHzT.s 			page 17


 539 0a39 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 539      00
 540 0a3e 488D65D8 		leaq	-40(%rbp), %rsp
 541 0a42 31C0     		xorl	%eax, %eax
 542 0a44 5B       		popq	%rbx
 543 0a45 415C     		popq	%r12
 544 0a47 415D     		popq	%r13
 545 0a49 415E     		popq	%r14
 546 0a4b 415F     		popq	%r15
 547 0a4d 5D       		popq	%rbp
 548              		.cfi_remember_state
 549              		.cfi_def_cfa 7, 8
 550 0a4e C3       		ret
 551              	.L21:
 552              		.cfi_restore_state
 553 0a4f C5FB1094 		vmovsd	192(%rsp), %xmm2
 553      24C00000 
 553      00
 554 0a58 BA040000 		movl	$4, %edx
 554      00
 555 0a5d C5FB1084 		vmovsd	224(%rsp), %xmm0
 555      24E00000 
 555      00
 556 0a66 BE000000 		movl	$.LC29, %esi
 556      00
 557 0a6b BF000000 		movl	$_ZSt4cout, %edi
 557      00
 558 0a70 C5FD290C 		vmovapd	%ymm1, (%rsp)
 558      24
 559 0a75 C5FB1154 		vmovsd	%xmm2, 56(%rsp)
 559      2438
 560 0a7b C5FB1144 		vmovsd	%xmm0, 64(%rsp)
 560      2440
 561 0a81 C5F877   		vzeroupper
 562 0a84 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 562      00
 563 0a89 C5FB1044 		vmovsd	64(%rsp), %xmm0
 563      2440
 564 0a8f BF000000 		movl	$_ZSt4cout, %edi
 564      00
 565 0a94 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 565      00
 566 0a99 BA030000 		movl	$3, %edx
 566      00
 567 0a9e BE000000 		movl	$.LC30, %esi
 567      00
 568 0aa3 4889C7   		movq	%rax, %rdi
 569 0aa6 4989C6   		movq	%rax, %r14
 570 0aa9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 570      00
 571 0aae C5FB1054 		vmovsd	56(%rsp), %xmm2
 571      2438
 572 0ab4 4C89F7   		movq	%r14, %rdi
 573 0ab7 C5F928C2 		vmovapd	%xmm2, %xmm0
 574 0abb E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 574      00
 575 0ac0 4989C7   		movq	%rax, %r15
GAS LISTING /tmp/cccAoHzT.s 			page 18


 576 0ac3 488B00   		movq	(%rax), %rax
 577 0ac6 488B40E8 		movq	-24(%rax), %rax
 578 0aca 4D8BB407 		movq	240(%r15,%rax), %r14
 578      F0000000 
 579 0ad2 4D85F6   		testq	%r14, %r14
 580 0ad5 745F     		je	.L15
 581 0ad7 41807E38 		cmpb	$0, 56(%r14)
 581      00
 582 0adc C5FD280C 		vmovapd	(%rsp), %ymm1
 582      24
 583 0ae1 742C     		je	.L22
 584 0ae3 410FB646 		movzbl	67(%r14), %eax
 584      43
 585              	.L17:
 586 0ae8 0FBEF0   		movsbl	%al, %esi
 587 0aeb 4C89FF   		movq	%r15, %rdi
 588 0aee C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 588      2440
 589 0af4 C5F877   		vzeroupper
 590 0af7 E8000000 		call	_ZNSo3putEc
 590      00
 591 0afc 4889C7   		movq	%rax, %rdi
 592 0aff E8000000 		call	_ZNSo5flushEv
 592      00
 593 0b04 C5FD284C 		vmovapd	64(%rsp), %ymm1
 593      2440
 594 0b0a E9B8FEFF 		jmp	.L14
 594      FF
 595              	.L22:
 596 0b0f 4C89F7   		movq	%r14, %rdi
 597 0b12 C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 597      2440
 598 0b18 C5F877   		vzeroupper
 599 0b1b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 599      00
 600 0b20 498B06   		movq	(%r14), %rax
 601 0b23 BE0A0000 		movl	$10, %esi
 601      00
 602 0b28 4C89F7   		movq	%r14, %rdi
 603 0b2b FF5030   		call	*48(%rax)
 604 0b2e C5FD284C 		vmovapd	64(%rsp), %ymm1
 604      2440
 605 0b34 EBB2     		jmp	.L17
 606              	.L15:
 607 0b36 E8000000 		call	_ZSt16__throw_bad_castv
 607      00
 608              		.cfi_endproc
 609              	.LFE4443:
 610              		.size	main, .-main
 611 0b3b 0F1F4400 		.p2align 4,,15
 611      00
 612              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 613              	_GLOBAL__sub_I__Z8linspaceddi:
 614              	.LFB4703:
 615              		.cfi_startproc
 616 0b40 4883EC08 		subq	$8, %rsp
 617              		.cfi_def_cfa_offset 16
GAS LISTING /tmp/cccAoHzT.s 			page 19


 618 0b44 BF000000 		movl	$_ZStL8__ioinit, %edi
 618      00
 619 0b49 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 619      00
 620 0b4e BA000000 		movl	$__dso_handle, %edx
 620      00
 621 0b53 BE000000 		movl	$_ZStL8__ioinit, %esi
 621      00
 622 0b58 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 622      00
 623 0b5d 4883C408 		addq	$8, %rsp
 624              		.cfi_def_cfa_offset 8
 625 0b61 E9000000 		jmp	__cxa_atexit
 625      00
 626              		.cfi_endproc
 627              	.LFE4703:
 628              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 629              		.section	.init_array,"aw"
 630              		.align 8
 631 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 631      00000000 
 632              		.section	.rodata
 633              		.align 32
 634              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 635              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 636              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 637 0000 FFFFFFFF 		.long	-1
 638 0004 FFFFFF7F 		.long	2147483647
 639 0008 FFFFFFFF 		.long	-1
 640 000c FFFFFF7F 		.long	2147483647
 641 0010 FFFFFFFF 		.long	-1
 642 0014 FFFFFF7F 		.long	2147483647
 643 0018 FFFFFFFF 		.long	-1
 644 001c FFFFFF7F 		.long	2147483647
 645              		.local	_ZStL8__ioinit
 646              		.comm	_ZStL8__ioinit,1,1
 647              		.section	.rodata.cst32,"aM",@progbits,32
 648              		.align 32
 649              	.LC0:
 650 0000 9A999999 		.long	2576980378
 651 0004 9999B93F 		.long	1069128089
 652 0008 9A999999 		.long	2576980378
 653 000c 9999B93F 		.long	1069128089
 654 0010 9A999999 		.long	2576980378
 655 0014 9999B93F 		.long	1069128089
 656 0018 9A999999 		.long	2576980378
 657 001c 9999B93F 		.long	1069128089
 658              		.section	.rodata.cst8,"aM",@progbits,8
 659              		.align 8
 660              	.LC1:
 661 0000 9A999999 		.long	2576980378
 662 0004 9999B93F 		.long	1069128089
 663              		.align 8
 664              	.LC2:
 665 0008 00000000 		.long	0
 666 000c 0000F03F 		.long	1072693248
 667              		.section	.rodata.cst32
GAS LISTING /tmp/cccAoHzT.s 			page 20


 668              		.align 32
 669              	.LC3:
 670 0020 83C8C96D 		.long	1841940611
 671 0024 305FE43F 		.long	1071931184
 672 0028 83C8C96D 		.long	1841940611
 673 002c 305FE43F 		.long	1071931184
 674 0030 83C8C96D 		.long	1841940611
 675 0034 305FE43F 		.long	1071931184
 676 0038 83C8C96D 		.long	1841940611
 677 003c 305FE43F 		.long	1071931184
 678              		.align 32
 679              	.LC4:
 680 0040 00000050 		.long	1342177280
 681 0044 FB21F93F 		.long	1073291771
 682 0048 00000050 		.long	1342177280
 683 004c FB21F93F 		.long	1073291771
 684 0050 00000050 		.long	1342177280
 685 0054 FB21F93F 		.long	1073291771
 686 0058 00000050 		.long	1342177280
 687 005c FB21F93F 		.long	1073291771
 688              		.align 32
 689              	.LC5:
 690 0060 00000060 		.long	1610612736
 691 0064 B410513E 		.long	1045500084
 692 0068 00000060 		.long	1610612736
 693 006c B410513E 		.long	1045500084
 694 0070 00000060 		.long	1610612736
 695 0074 B410513E 		.long	1045500084
 696 0078 00000060 		.long	1610612736
 697 007c B410513E 		.long	1045500084
 698              		.align 32
 699              	.LC6:
 700 0080 075C1433 		.long	856972295
 701 0084 26A6913C 		.long	1016178214
 702 0088 075C1433 		.long	856972295
 703 008c 26A6913C 		.long	1016178214
 704 0090 075C1433 		.long	856972295
 705 0094 26A6913C 		.long	1016178214
 706 0098 075C1433 		.long	856972295
 707 009c 26A6913C 		.long	1016178214
 708              		.align 32
 709              	.LC7:
 710 00a0 D0F71011 		.long	286324688
 711 00a4 1111813F 		.long	1065423121
 712 00a8 D0F71011 		.long	286324688
 713 00ac 1111813F 		.long	1065423121
 714 00b0 D0F71011 		.long	286324688
 715 00b4 1111813F 		.long	1065423121
 716 00b8 D0F71011 		.long	286324688
 717 00bc 1111813F 		.long	1065423121
 718              		.align 32
 719              	.LC8:
 720 00c0 48555555 		.long	1431655752
 721 00c4 5555C5BF 		.long	-1077586603
 722 00c8 48555555 		.long	1431655752
 723 00cc 5555C5BF 		.long	-1077586603
 724 00d0 48555555 		.long	1431655752
GAS LISTING /tmp/cccAoHzT.s 			page 21


 725 00d4 5555C5BF 		.long	-1077586603
 726 00d8 48555555 		.long	1431655752
 727 00dc 5555C5BF 		.long	-1077586603
 728              		.align 32
 729              	.LC9:
 730 00e0 CD9CD11F 		.long	533830861
 731 00e4 FDD8E53D 		.long	1038473469
 732 00e8 CD9CD11F 		.long	533830861
 733 00ec FDD8E53D 		.long	1038473469
 734 00f0 CD9CD11F 		.long	533830861
 735 00f4 FDD8E53D 		.long	1038473469
 736 00f8 CD9CD11F 		.long	533830861
 737 00fc FDD8E53D 		.long	1038473469
 738              		.align 32
 739              	.LC10:
 740 0100 5D1F29A9 		.long	2838044509
 741 0104 E5E55ABE 		.long	-1101339163
 742 0108 5D1F29A9 		.long	2838044509
 743 010c E5E55ABE 		.long	-1101339163
 744 0110 5D1F29A9 		.long	2838044509
 745 0114 E5E55ABE 		.long	-1101339163
 746 0118 5D1F29A9 		.long	2838044509
 747 011c E5E55ABE 		.long	-1101339163
 748              		.align 32
 749              	.LC11:
 750 0120 A1487D56 		.long	1451051169
 751 0124 E31DC73E 		.long	1053236707
 752 0128 A1487D56 		.long	1451051169
 753 012c E31DC73E 		.long	1053236707
 754 0130 A1487D56 		.long	1451051169
 755 0134 E31DC73E 		.long	1053236707
 756 0138 A1487D56 		.long	1451051169
 757 013c E31DC73E 		.long	1053236707
 758              		.align 32
 759              	.LC12:
 760 0140 03DFBF19 		.long	432004867
 761 0144 A0012ABF 		.long	-1087766112
 762 0148 03DFBF19 		.long	432004867
 763 014c A0012ABF 		.long	-1087766112
 764 0150 03DFBF19 		.long	432004867
 765 0154 A0012ABF 		.long	-1087766112
 766 0158 03DFBF19 		.long	432004867
 767 015c A0012ABF 		.long	-1087766112
 768              		.align 32
 769              	.LC13:
 770 0160 914FC116 		.long	381767569
 771 0164 6CC156BF 		.long	-1084833428
 772 0168 914FC116 		.long	381767569
 773 016c 6CC156BF 		.long	-1084833428
 774 0170 914FC116 		.long	381767569
 775 0174 6CC156BF 		.long	-1084833428
 776 0178 914FC116 		.long	381767569
 777 017c 6CC156BF 		.long	-1084833428
 778              		.align 32
 779              	.LC14:
 780 0180 4B555555 		.long	1431655755
 781 0184 5555A53F 		.long	1067799893
GAS LISTING /tmp/cccAoHzT.s 			page 22


 782 0188 4B555555 		.long	1431655755
 783 018c 5555A53F 		.long	1067799893
 784 0190 4B555555 		.long	1431655755
 785 0194 5555A53F 		.long	1067799893
 786 0198 4B555555 		.long	1431655755
 787 019c 5555A53F 		.long	1067799893
 788              		.align 32
 789              	.LC15:
 790 01a0 9B1A86A0 		.long	2693143195
 791 01a4 49FAA8BD 		.long	-1112999351
 792 01a8 9B1A86A0 		.long	2693143195
 793 01ac 49FAA8BD 		.long	-1112999351
 794 01b0 9B1A86A0 		.long	2693143195
 795 01b4 49FAA8BD 		.long	-1112999351
 796 01b8 9B1A86A0 		.long	2693143195
 797 01bc 49FAA8BD 		.long	-1112999351
 798              		.align 32
 799              	.LC16:
 800 01c0 053F4E7B 		.long	2068725509
 801 01c4 9DEE213E 		.long	1042411165
 802 01c8 053F4E7B 		.long	2068725509
 803 01cc 9DEE213E 		.long	1042411165
 804 01d0 053F4E7B 		.long	2068725509
 805 01d4 9DEE213E 		.long	1042411165
 806 01d8 053F4E7B 		.long	2068725509
 807 01dc 9DEE213E 		.long	1042411165
 808              		.align 32
 809              	.LC17:
 810 01e0 C64BAC7E 		.long	2125220806
 811 01e4 4F7E92BE 		.long	-1097695665
 812 01e8 C64BAC7E 		.long	2125220806
 813 01ec 4F7E92BE 		.long	-1097695665
 814 01f0 C64BAC7E 		.long	2125220806
 815 01f4 4F7E92BE 		.long	-1097695665
 816 01f8 C64BAC7E 		.long	2125220806
 817 01fc 4F7E92BE 		.long	-1097695665
 818              		.align 32
 819              	.LC18:
 820 0200 F544C819 		.long	432555253
 821 0204 A001FA3E 		.long	1056571808
 822 0208 F544C819 		.long	432555253
 823 020c A001FA3E 		.long	1056571808
 824 0210 F544C819 		.long	432555253
 825 0214 A001FA3E 		.long	1056571808
 826 0218 F544C819 		.long	432555253
 827 021c A001FA3E 		.long	1056571808
 828              		.align 32
 829              	.LC19:
 830 0220 00000000 		.long	0
 831 0224 0000E03F 		.long	1071644672
 832 0228 00000000 		.long	0
 833 022c 0000E03F 		.long	1071644672
 834 0230 00000000 		.long	0
 835 0234 0000E03F 		.long	1071644672
 836 0238 00000000 		.long	0
 837 023c 0000E03F 		.long	1071644672
 838              		.align 32
GAS LISTING /tmp/cccAoHzT.s 			page 23


 839              	.LC20:
 840 0240 00000000 		.long	0
 841 0244 0000F03F 		.long	1072693248
 842 0248 00000000 		.long	0
 843 024c 0000F03F 		.long	1072693248
 844 0250 00000000 		.long	0
 845 0254 0000F03F 		.long	1072693248
 846 0258 00000000 		.long	0
 847 025c 0000F03F 		.long	1072693248
 848              		.section	.rodata.cst16,"aM",@progbits,16
 849              		.align 16
 850              	.LC21:
 851 0000 01000000 		.quad	1
 851      00000000 
 852 0008 01000000 		.quad	1
 852      00000000 
 853              		.align 16
 854              	.LC22:
 855 0010 00000000 		.quad	36028797018963968
 855      00008000 
 856 0018 00000000 		.quad	36028797018963968
 856      00008000 
 857              		.align 16
 858              	.LC23:
 859 0020 00000000 		.quad	-9007199254740992
 859      0000E0FF 
 860 0028 00000000 		.quad	-9007199254740992
 860      0000E0FF 
 861              		.align 16
 862              	.LC24:
 863 0030 00000000 		.quad	-9223372036854775808
 863      00000080 
 864 0038 00000000 		.quad	-9223372036854775808
 864      00000080 
 865              		.section	.rodata.cst32
 866              		.align 32
 867              	.LC25:
 868 0260 7B14AE47 		.long	1202590843
 869 0264 E17A743F 		.long	1064598241
 870 0268 7B14AE47 		.long	1202590843
 871 026c E17A743F 		.long	1064598241
 872 0270 7B14AE47 		.long	1202590843
 873 0274 E17A743F 		.long	1064598241
 874 0278 7B14AE47 		.long	1202590843
 875 027c E17A743F 		.long	1064598241
 876              		.align 32
 877              	.LC26:
 878 0280 00000000 		.long	0
 879 0284 00000040 		.long	1073741824
 880 0288 00000000 		.long	0
 881 028c 00000040 		.long	1073741824
 882 0290 00000000 		.long	0
 883 0294 00000040 		.long	1073741824
 884 0298 00000000 		.long	0
 885 029c 00000040 		.long	1073741824
 886              		.align 32
 887              	.LC27:
GAS LISTING /tmp/cccAoHzT.s 			page 24


 888 02a0 7B14AE47 		.long	1202590843
 889 02a4 E17A843F 		.long	1065646817
 890 02a8 7B14AE47 		.long	1202590843
 891 02ac E17A843F 		.long	1065646817
 892 02b0 7B14AE47 		.long	1202590843
 893 02b4 E17A843F 		.long	1065646817
 894 02b8 7B14AE47 		.long	1202590843
 895 02bc E17A843F 		.long	1065646817
 896              		.align 32
 897              	.LC28:
 898 02c0 4F1BE8B4 		.long	3035110223
 899 02c4 814E5B3F 		.long	1062948481
 900 02c8 4F1BE8B4 		.long	3035110223
 901 02cc 814E5B3F 		.long	1062948481
 902 02d0 4F1BE8B4 		.long	3035110223
 903 02d4 814E5B3F 		.long	1062948481
 904 02d8 4F1BE8B4 		.long	3035110223
 905 02dc 814E5B3F 		.long	1062948481
 906              		.section	.rodata.cst16
 907              		.align 16
 908              	.LC33:
 909 0040 FFFFFFFF 		.quad	-1
 909      FFFFFFFF 
 910 0048 FFFFFFFF 		.quad	-1
 910      FFFFFFFF 
 911              		.hidden	__dso_handle
 912              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 913              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cccAoHzT.s 			page 25


DEFINED SYMBOLS
                            *ABS*:0000000000000000 FLOPS_TEST_TRANSZENDENTAL.cpp
     /tmp/cccAoHzT.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cccAoHzT.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cccAoHzT.s:81     .text.startup:0000000000000000 main
     /tmp/cccAoHzT.s:636    .rodata:0000000000000000 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cccAoHzT.s:613    .text.startup:0000000000000b40 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cccAoHzT.s:664    .rodata.cst8:0000000000000008 .LC2
     /tmp/cccAoHzT.s:660    .rodata.cst8:0000000000000000 .LC1
     /tmp/cccAoHzT.s:839    .rodata.cst32:0000000000000240 .LC20
     /tmp/cccAoHzT.s:649    .rodata.cst32:0000000000000000 .LC0
     /tmp/cccAoHzT.s:669    .rodata.cst32:0000000000000020 .LC3
     /tmp/cccAoHzT.s:679    .rodata.cst32:0000000000000040 .LC4
     /tmp/cccAoHzT.s:689    .rodata.cst32:0000000000000060 .LC5
     /tmp/cccAoHzT.s:699    .rodata.cst32:0000000000000080 .LC6
     /tmp/cccAoHzT.s:729    .rodata.cst32:00000000000000e0 .LC9
     /tmp/cccAoHzT.s:709    .rodata.cst32:00000000000000a0 .LC7
     /tmp/cccAoHzT.s:749    .rodata.cst32:0000000000000120 .LC11
     /tmp/cccAoHzT.s:739    .rodata.cst32:0000000000000100 .LC10
     /tmp/cccAoHzT.s:719    .rodata.cst32:00000000000000c0 .LC8
     /tmp/cccAoHzT.s:759    .rodata.cst32:0000000000000140 .LC12
     /tmp/cccAoHzT.s:789    .rodata.cst32:00000000000001a0 .LC15
     /tmp/cccAoHzT.s:769    .rodata.cst32:0000000000000160 .LC13
     /tmp/cccAoHzT.s:799    .rodata.cst32:00000000000001c0 .LC16
     /tmp/cccAoHzT.s:779    .rodata.cst32:0000000000000180 .LC14
     /tmp/cccAoHzT.s:809    .rodata.cst32:00000000000001e0 .LC17
     /tmp/cccAoHzT.s:819    .rodata.cst32:0000000000000200 .LC18
     /tmp/cccAoHzT.s:829    .rodata.cst32:0000000000000220 .LC19
     /tmp/cccAoHzT.s:854    .rodata.cst16:0000000000000010 .LC22
     /tmp/cccAoHzT.s:850    .rodata.cst16:0000000000000000 .LC21
     /tmp/cccAoHzT.s:858    .rodata.cst16:0000000000000020 .LC23
     /tmp/cccAoHzT.s:908    .rodata.cst16:0000000000000040 .LC33
     /tmp/cccAoHzT.s:862    .rodata.cst16:0000000000000030 .LC24
     /tmp/cccAoHzT.s:867    .rodata.cst32:0000000000000260 .LC25
     /tmp/cccAoHzT.s:877    .rodata.cst32:0000000000000280 .LC26
     /tmp/cccAoHzT.s:887    .rodata.cst32:00000000000002a0 .LC27
     /tmp/cccAoHzT.s:897    .rodata.cst32:00000000000002c0 .LC28

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
GAS LISTING /tmp/cccAoHzT.s 			page 26


