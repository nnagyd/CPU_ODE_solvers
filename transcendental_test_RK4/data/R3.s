GAS LISTING /tmp/cc0bEwmm.s 			page 1


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
GAS LISTING /tmp/cc0bEwmm.s 			page 2


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
  69              	.LC28:
  70 0000 70203D20 		.string	"p = "
  70      00
  71              	.LC29:
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
  93              		.cfi_offset 15, -24
  94              		.cfi_offset 14, -32
  95              		.cfi_offset 13, -40
  96 000f 4531ED   		xorl	%r13d, %r13d
  97 0012 4154     		pushq	%r12
  98 0014 53       		pushq	%rbx
  99 0015 4883E4E0 		andq	$-32, %rsp
GAS LISTING /tmp/cc0bEwmm.s 			page 3


 100 0019 4881EC70 		subq	$624, %rsp
 100      020000
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 103      00000000 
 104 0028 4C8DA424 		leaq	336(%rsp), %r12
 104      50010000 
 105 0030 C5FB1005 		vmovsd	.LC0(%rip), %xmm0
 105      00000000 
 106 0038 E8000000 		call	_Z8linspaceddi
 106      00
 107 003d 4989C6   		movq	%rax, %r14
 108 0040 E8000000 		call	clock
 108      00
 109 0045 C57D2805 		vmovapd	.LC16(%rip), %ymm8
 109      00000000 
 110 004d 48894424 		movq	%rax, 8(%rsp)
 110      08
 111 0052 C5FD280D 		vmovapd	.LC17(%rip), %ymm1
 111      00000000 
 112 005a C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 112      00000000 
 113 0062 C5FD2815 		vmovapd	.LC19(%rip), %ymm2
 113      00000000 
 114              	.L12:
 115 006a C4C17D10 		vmovupd	(%r14), %ymm0
 115      06
 116 006f 488DB424 		leaq	432(%rsp), %rsi
 116      B0010000 
 117 0077 BF102700 		movl	$10000, %edi
 117      00
 118 007c C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 118      00000000 
 119 0084 C5FD2984 		vmovapd	%ymm0, 528(%rsp)
 119      24100200 
 119      00
 120 008d C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 121 0091 C5FD29BC 		vmovapd	%ymm7, 432(%rsp)
 121      24B00100 
 121      00
 122 009a C5FD2984 		vmovapd	%ymm0, 240(%rsp)
 122      24F00000 
 122      00
 123 00a3 C4C17D10 		vmovupd	32(%r14), %ymm3
 123      5E20
 124 00a9 C5FD29BC 		vmovapd	%ymm7, 464(%rsp)
 124      24D00100 
 124      00
 125 00b2 C5FD299C 		vmovapd	%ymm3, 560(%rsp)
 125      24300200 
 125      00
 126 00bb C5FD2984 		vmovapd	%ymm0, 272(%rsp)
 126      24100100 
 126      00
 127 00c4 C4C17D10 		vmovupd	64(%r14), %ymm3
 127      5E40
GAS LISTING /tmp/cc0bEwmm.s 			page 4


 128 00ca C5FD29BC 		vmovapd	%ymm7, 496(%rsp)
 128      24F00100 
 128      00
 129 00d3 C5FD28F8 		vmovapd	%ymm0, %ymm7
 130 00d7 C5FD299C 		vmovapd	%ymm3, 592(%rsp)
 130      24500200 
 130      00
 131 00e0 C5FD2984 		vmovapd	%ymm0, 304(%rsp)
 131      24300100 
 131      00
 132 00e9 0F1F8000 		.p2align 4,,10
 132      000000
 133              		.p2align 3
 134              	.L30:
 135 00f0 4C89E2   		movq	%r12, %rdx
 136              	.L21:
 137 00f3 C57D2852 		vmovapd	96(%rdx), %ymm10
 137      60
 138 00f8 4883C220 		addq	$32, %rdx
 139 00fc C57D28A2 		vmovapd	160(%rdx), %ymm12
 139      A0000000 
 140 0104 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 140      00000000 
 141 010c C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 141      00000000 
 142 0114 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 142      C008
 143 011a C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 143      D808
 144 0120 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 144      24D00000 
 144      00
 145 0129 C57B10B4 		vmovsd	208(%rsp), %xmm14
 145      24D00000 
 145      00
 146 0132 C57B10BC 		vmovsd	216(%rsp), %xmm15
 146      24D80000 
 146      00
 147 013b C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 147      C6
 148 0140 C5FB109C 		vmovsd	224(%rsp), %xmm3
 148      24E00000 
 148      00
 149 0149 48898424 		movq	%rax, 176(%rsp)
 149      B0000000 
 150 0151 C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 150      C7
 151 0156 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 151      24B00000 
 151      00
 152 015f C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 152      E801
 153 0165 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 153      C3
 154 016a C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 154      24B00000 
 154      00
GAS LISTING /tmp/cc0bEwmm.s 			page 5


 155 0173 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 155      24E80000 
 155      00
 156 017c 48898424 		movq	%rax, 144(%rsp)
 156      90000000 
 157 0184 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 157      C5
 158 0189 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 158      00000000 
 159 0191 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 159      24900000 
 159      00
 160 019a C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 161 019e C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 161      C801
 162 01a4 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 162      00000000 
 163 01ac C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 163      00000000 
 164 01b4 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 165 01b8 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 166 01bc C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 167 01c0 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 167      00000000 
 168 01c8 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 169 01cc C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 169      00000000 
 170 01d4 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 170      00000000 
 171 01dc C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 171      00000000 
 172 01e4 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 173 01e8 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 173      00000000 
 174 01f0 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 174      00000000 
 175 01f8 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 175      F3
 176 01fd C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 176      F7
 177 0202 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 178 0206 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 178      00000000 
 179 020e C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 179      EE
 180 0213 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 180      00000000 
 181 021b C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 181      00000000 
 182 0223 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 182      00000000 
 183 022b C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 183      DB
 184 0230 C5796FBC 		vmovdqa	176(%rsp), %xmm15
 184      24B00000 
 184      00
 185 0239 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
GAS LISTING /tmp/cc0bEwmm.s 			page 6


 185      F6
 186 023e C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 187 0242 C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 188 0246 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 189 024a C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 189      F6
 190 024f C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 191 0253 C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 192 0257 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 192      DE
 193 025c C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 193      ED
 194 0261 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 195 0265 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 195      00000000 
 196 026d C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 196      E601
 197 0273 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 198 0277 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 198      ED
 199 027c C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 200 0280 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 200      F601
 201 0286 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 201      00000000 
 202 028e C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 202      DD
 203 0293 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 203      00000000 
 204 029b C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 204      00000000 
 205 02a3 C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 205      C5
 206 02a8 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 206      2D000000 
 206      00
 207 02b1 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 207      00000000 
 208 02b9 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 208      35000000 
 208      00
 209 02c2 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 209      00000000 
 210 02ca C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 210      D801
 211 02d0 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 211      05000000 
 211      00
 212 02d9 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 212      E801
 213 02df C5F928C4 		vmovapd	%xmm4, %xmm0
 214 02e3 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 214      01
 215 02e8 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 215      00000000 
 216 02f0 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 216      05000000 
GAS LISTING /tmp/cc0bEwmm.s 			page 7


 216      00
 217 02f9 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 217      00000000 
 218 0301 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 218      C601
 219 0307 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 220 030b C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 220      D001
 221 0311 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 221      EF40
 222 0317 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 222      E240
 223 031d C4C16173 		vpsllq	$62, %xmm9, %xmm3
 223      F13E
 224 0323 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 224      F73E
 225 0329 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 226 032d C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 226      CA
 227 0332 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 227      E4B0
 228 0338 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 228      00000000 
 229 0340 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 229      00000000 
 230 0348 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 230      C801
 231 034e C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 231      E1
 232 0353 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 233 0357 C57D2962 		vmovapd	%ymm12, -128(%rdx)
 233      80
 234 035c C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 234      00000000 
 235 0364 C51D5862 		vaddpd	64(%rdx), %ymm12, %ymm12
 235      40
 236 0369 C57D2962 		vmovapd	%ymm12, -32(%rdx)
 236      E0
 237 036e 4839F2   		cmpq	%rsi, %rdx
 238 0371 0F857CFD 		jne	.L21
 238      FFFF
 239 0377 488D9424 		leaq	240(%rsp), %rdx
 239      F0000000 
 240              	.L15:
 241 037f C57D2852 		vmovapd	96(%rdx), %ymm10
 241      60
 242 0384 4883C220 		addq	$32, %rdx
 243 0388 C57D28A2 		vmovapd	256(%rdx), %ymm12
 243      00010000 
 244 0390 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 244      00000000 
 245 0398 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 245      00000000 
 246 03a0 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 246      C008
 247 03a6 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 247      D808
GAS LISTING /tmp/cc0bEwmm.s 			page 8


 248 03ac C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 248      24D00000 
 248      00
 249 03b5 C5FB10AC 		vmovsd	208(%rsp), %xmm5
 249      24D00000 
 249      00
 250 03be C57B108C 		vmovsd	216(%rsp), %xmm9
 250      24D80000 
 250      00
 251 03c7 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 251      C5
 252 03cc C57B109C 		vmovsd	224(%rsp), %xmm11
 252      24E00000 
 252      00
 253 03d5 C57B10AC 		vmovsd	232(%rsp), %xmm13
 253      24E80000 
 253      00
 254 03de 48898424 		movq	%rax, 176(%rsp)
 254      B0000000 
 255 03e6 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 255      C1
 256 03eb C5FA7EAC 		vmovq	176(%rsp), %xmm5
 256      24B00000 
 256      00
 257 03f4 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 257      E801
 258 03fa C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 258      C3
 259 03ff C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 259      24B00000 
 259      00
 260 0408 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 260      00000000 
 261 0410 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 262 0414 48898424 		movq	%rax, 144(%rsp)
 262      90000000 
 263 041c C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 263      C5
 264 0421 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 264      24900000 
 264      00
 265 042a C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 265      C801
 266 0430 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 266      00000000 
 267 0438 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 267      00000000 
 268 0440 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 269 0444 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 270 0448 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 271 044c C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 271      00000000 
 272 0454 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 273 0458 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 273      00000000 
 274 0460 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 274      00000000 
GAS LISTING /tmp/cc0bEwmm.s 			page 9


 275 0468 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 275      00000000 
 276 0470 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 277 0474 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 277      00000000 
 278 047c C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 278      00000000 
 279 0484 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 279      F3
 280 0489 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 280      F7
 281 048e C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 282 0492 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 282      00000000 
 283 049a C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 283      EE
 284 049f C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 284      00000000 
 285 04a7 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 285      00000000 
 286 04af C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 286      00000000 
 287 04b7 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 287      DB
 288 04bc C5796FBC 		vmovdqa	176(%rsp), %xmm15
 288      24B00000 
 288      00
 289 04c5 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 289      F6
 290 04ca C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 291 04ce C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 292 04d2 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 293 04d6 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 293      F6
 294 04db C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 295 04df C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 296 04e3 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 296      DE
 297 04e8 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 297      ED
 298 04ed C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 299 04f1 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 299      00000000 
 300 04f9 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 300      E601
 301 04ff C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 302 0503 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 302      ED
 303 0508 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 304 050c C4C10973 		vpsllq	$1, %xmm14, %xmm14
 304      F601
 305 0512 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 305      00000000 
 306 051a C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 306      DD
 307 051f C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 307      00000000 
GAS LISTING /tmp/cc0bEwmm.s 			page 10


 308 0527 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 308      00000000 
 309 052f C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 309      C5
 310 0534 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 310      2D000000 
 310      00
 311 053d C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 311      00000000 
 312 0545 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 312      35000000 
 312      00
 313 054e C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 313      00000000 
 314 0556 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 314      D801
 315 055c C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 315      05000000 
 315      00
 316 0565 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 316      E801
 317 056b C5F928C4 		vmovapd	%xmm4, %xmm0
 318 056f C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 318      01
 319 0574 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 319      00000000 
 320 057c C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 320      05000000 
 320      00
 321 0585 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 321      00000000 
 322 058d C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 322      C601
 323 0593 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 324 0597 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 324      D001
 325 059d C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 325      EF40
 326 05a3 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 326      E240
 327 05a9 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 327      F13E
 328 05af C4C13173 		vpsllq	$62, %xmm15, %xmm9
 328      F73E
 329 05b5 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 330 05b9 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 330      CA
 331 05be C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 331      E4B0
 332 05c4 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 332      00000000 
 333 05cc C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 333      00000000 
 334 05d4 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 334      C801
 335 05da C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 335      E1
GAS LISTING /tmp/cc0bEwmm.s 			page 11


 336 05df C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 337 05e3 C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 337      00000000 
 338 05eb C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 338      E0
 339 05f0 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 339      E0
 340 05f5 C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 340      00000000 
 341 05fd C51D58A2 		vaddpd	160(%rdx), %ymm12, %ymm12
 341      A0000000 
 342 0605 C57D2962 		vmovapd	%ymm12, 64(%rdx)
 342      40
 343 060a 4C39E2   		cmpq	%r12, %rdx
 344 060d 0F856CFD 		jne	.L15
 344      FFFF
 345 0613 488D9424 		leaq	240(%rsp), %rdx
 345      F0000000 
 346              	.L17:
 347 061b C57D2852 		vmovapd	96(%rdx), %ymm10
 347      60
 348 0620 4883C220 		addq	$32, %rdx
 349 0624 C57D28A2 		vmovapd	256(%rdx), %ymm12
 349      00010000 
 350 062c C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 350      00000000 
 351 0634 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 351      00000000 
 352 063c C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 352      C008
 353 0642 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 353      D808
 354 0648 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 354      24D00000 
 354      00
 355 0651 C57B10AC 		vmovsd	208(%rsp), %xmm13
 355      24D00000 
 355      00
 356 065a C57B10B4 		vmovsd	216(%rsp), %xmm14
 356      24D80000 
 356      00
 357 0663 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 357      C5
 358 0668 C57B10BC 		vmovsd	224(%rsp), %xmm15
 358      24E00000 
 358      00
 359 0671 C5FB109C 		vmovsd	232(%rsp), %xmm3
 359      24E80000 
 359      00
 360 067a 48898424 		movq	%rax, 176(%rsp)
 360      B0000000 
 361 0682 C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 361      C6
 362 0687 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 362      24B00000 
 362      00
 363 0690 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
GAS LISTING /tmp/cc0bEwmm.s 			page 12


 363      E801
 364 0696 C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 364      C7
 365 069b C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 365      24B00000 
 365      00
 366 06a4 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 366      00000000 
 367 06ac C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 368 06b0 48898424 		movq	%rax, 144(%rsp)
 368      90000000 
 369 06b8 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 369      C3
 370 06bd C5FA7E9C 		vmovq	144(%rsp), %xmm3
 370      24900000 
 370      00
 371 06c6 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 371      C801
 372 06cc C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 372      00000000 
 373 06d4 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 373      00000000 
 374 06dc C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 375 06e0 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 376 06e4 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 377 06e8 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 377      00000000 
 378 06f0 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 379 06f4 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 379      00000000 
 380 06fc C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 380      00000000 
 381 0704 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 381      00000000 
 382 070c C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 383 0710 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 383      00000000 
 384 0718 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 384      00000000 
 385 0720 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 385      F3
 386 0725 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 386      F7
 387 072a C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 388 072e C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 388      00000000 
 389 0736 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 389      EE
 390 073b C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 390      00000000 
 391 0743 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 391      00000000 
 392 074b C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 392      00000000 
 393 0753 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 393      DB
 394 0758 C5796FBC 		vmovdqa	176(%rsp), %xmm15
GAS LISTING /tmp/cc0bEwmm.s 			page 13


 394      24B00000 
 394      00
 395 0761 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 395      F6
 396 0766 C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 397 076a C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 398 076e C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 399 0772 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 399      F6
 400 0777 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 401 077b C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 402 077f C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 402      DE
 403 0784 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 403      ED
 404 0789 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 405 078d C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 405      00000000 
 406 0795 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 406      E601
 407 079b C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 408 079f C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 408      ED
 409 07a4 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 410 07a8 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 410      F601
 411 07ae C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 411      00000000 
 412 07b6 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 412      DD
 413 07bb C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 413      00000000 
 414 07c3 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 414      00000000 
 415 07cb C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 415      C5
 416 07d0 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 416      2D000000 
 416      00
 417 07d9 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 417      00000000 
 418 07e1 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 418      35000000 
 418      00
 419 07ea C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 419      00000000 
 420 07f2 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 420      D801
 421 07f8 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 421      05000000 
 421      00
 422 0801 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 422      E801
 423 0807 C5F928C4 		vmovapd	%xmm4, %xmm0
 424 080b C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 424      01
 425 0810 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
GAS LISTING /tmp/cc0bEwmm.s 			page 14


 425      00000000 
 426 0818 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 426      05000000 
 426      00
 427 0821 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 427      00000000 
 428 0829 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 428      C601
 429 082f C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 430 0833 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 430      D001
 431 0839 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 431      EF40
 432 083f C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 432      E240
 433 0845 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 433      F13E
 434 084b C4C13173 		vpsllq	$62, %xmm15, %xmm9
 434      F73E
 435 0851 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 436 0855 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 436      CA
 437 085a C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 437      E4B0
 438 0860 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 438      00000000 
 439 0868 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 439      00000000 
 440 0870 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 440      C801
 441 0876 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 441      E1
 442 087b C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 443 087f C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 443      00000000 
 444 0887 C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 444      E0
 445 088c C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 445      E0
 446 0891 C51D5925 		vmulpd	.LC26(%rip), %ymm12, %ymm12
 446      00000000 
 447 0899 C51D58A2 		vaddpd	160(%rdx), %ymm12, %ymm12
 447      A0000000 
 448 08a1 C57D2962 		vmovapd	%ymm12, 64(%rdx)
 448      40
 449 08a6 4C39E2   		cmpq	%r12, %rdx
 450 08a9 0F856CFD 		jne	.L17
 450      FFFF
 451 08af 488D9424 		leaq	240(%rsp), %rdx
 451      F0000000 
 452              	.L19:
 453 08b7 C57D2852 		vmovapd	96(%rdx), %ymm10
 453      60
 454 08bc 4883C220 		addq	$32, %rdx
 455 08c0 C57D28A2 		vmovapd	256(%rdx), %ymm12
 455      00010000 
 456 08c8 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
GAS LISTING /tmp/cc0bEwmm.s 			page 15


 456      00000000 
 457 08d0 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 457      00000000 
 458 08d8 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 458      C008
 459 08de C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 459      D808
 460 08e4 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 460      24D00000 
 460      00
 461 08ed C5FB109C 		vmovsd	208(%rsp), %xmm3
 461      24D00000 
 461      00
 462 08f6 C5FB10AC 		vmovsd	216(%rsp), %xmm5
 462      24D80000 
 462      00
 463 08ff C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 463      C3
 464 0904 C4E1FB2C 		vcvttsd2siq	%xmm5, %rcx
 464      CD
 465 0909 C57B108C 		vmovsd	224(%rsp), %xmm9
 465      24E00000 
 465      00
 466 0912 C57B109C 		vmovsd	232(%rsp), %xmm11
 466      24E80000 
 466      00
 467 091b 48898424 		movq	%rax, 176(%rsp)
 467      B0000000 
 468 0923 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 468      C1
 469 0928 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 469      24B00000 
 469      00
 470 0931 C4E3D122 		vpinsrq	$1, %rcx, %xmm5, %xmm3
 470      D901
 471 0937 C4C1FB2C 		vcvttsd2siq	%xmm11, %rcx
 471      CB
 472 093c C5F97F9C 		vmovdqa	%xmm3, 176(%rsp)
 472      24B00000 
 472      00
 473 0945 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 473      00000000 
 474 094d 48898424 		movq	%rax, 144(%rsp)
 474      90000000 
 475 0955 C5FA7EAC 		vmovq	144(%rsp), %xmm5
 475      24900000 
 475      00
 476 095e C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm9
 476      C901
 477 0964 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 477      00000000 
 478 096c C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 478      00000000 
 479 0974 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 480 0978 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 481 097c C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 482 0980 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
GAS LISTING /tmp/cc0bEwmm.s 			page 16


 483 0984 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 483      00000000 
 484 098c C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 485 0990 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 485      00000000 
 486 0998 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 486      00000000 
 487 09a0 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 487      00000000 
 488 09a8 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 489 09ac C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 489      00000000 
 490 09b4 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 490      00000000 
 491 09bc C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 491      F3
 492 09c1 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 492      F7
 493 09c6 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 494 09ca C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 494      00000000 
 495 09d2 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 495      EE
 496 09d7 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 496      00000000 
 497 09df C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 497      00000000 
 498 09e7 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 498      00000000 
 499 09ef C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 499      DB
 500 09f4 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 500      FF
 501 09f9 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 501      F6
 502 09fe C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 503 0a02 C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 504 0a06 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 505 0a0a C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 505      F6
 506 0a0f C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 507 0a13 C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 508 0a17 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 508      DE
 509 0a1c C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 509      ED
 510 0a21 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 511 0a25 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 511      E601
 512 0a2b C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 513 0a2f C4C10973 		vpsllq	$1, %xmm14, %xmm14
 513      F601
 514 0a35 C5796FAC 		vmovdqa	176(%rsp), %xmm13
 514      24B00000 
 514      00
 515 0a3e C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 516 0a42 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
GAS LISTING /tmp/cc0bEwmm.s 			page 17


 516      00000000 
 517 0a4a C511DB1D 		vpand	.LC20(%rip), %xmm13, %xmm11
 517      00000000 
 518 0a52 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 518      00000000 
 519 0a5a C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 519      C7
 520 0a5f C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 520      DF
 521 0a64 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 521      00000000 
 522 0a6c C441796F 		vmovdqa	%xmm13, %xmm15
 522      FD
 523 0a71 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 523      00000000 
 524 0a79 C4621137 		vpcmpgtq	.LC21(%rip), %xmm13, %xmm13
 524      2D000000 
 524      00
 525 0a82 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 525      35000000 
 525      00
 526 0a8b C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 526      00000000 
 527 0a93 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 527      D801
 528 0a99 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 528      05000000 
 528      00
 529 0aa2 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 529      E801
 530 0aa8 C5F928C4 		vmovapd	%xmm4, %xmm0
 531 0aac C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 531      01
 532 0ab1 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 532      00000000 
 533 0ab9 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 533      05000000 
 533      00
 534 0ac2 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 534      00000000 
 535 0aca C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 535      C601
 536 0ad0 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 537 0ad4 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 537      D001
 538 0ada C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 538      EF40
 539 0ae0 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 539      E240
 540 0ae6 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 540      F13E
 541 0aec C4C13173 		vpsllq	$62, %xmm15, %xmm9
 541      F73E
 542 0af2 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 543 0af6 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 543      CA
 544 0afb C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
GAS LISTING /tmp/cc0bEwmm.s 			page 18


 544      E4B0
 545 0b01 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 545      00000000 
 546 0b09 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 546      00000000 
 547 0b11 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 547      C801
 548 0b17 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 548      E1
 549 0b1c C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 550 0b20 C57D2962 		vmovapd	%ymm12, 64(%rdx)
 550      40
 551 0b25 C51D5862 		vaddpd	-32(%rdx), %ymm12, %ymm12
 551      E0
 552 0b2a C57D2962 		vmovapd	%ymm12, -32(%rdx)
 552      E0
 553 0b2f 4939D4   		cmpq	%rdx, %r12
 554 0b32 0F857FFD 		jne	.L19
 554      FFFF
 555 0b38 C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 555      00000000 
 556 0b40 83EF01   		subl	$1, %edi
 557 0b43 C5DD5984 		vmulpd	240(%rsp), %ymm4, %ymm0
 557      24F00000 
 557      00
 558 0b4c C5FD5884 		vaddpd	432(%rsp), %ymm0, %ymm0
 558      24B00100 
 558      00
 559 0b55 C5FD2984 		vmovapd	%ymm0, 432(%rsp)
 559      24B00100 
 559      00
 560 0b5e C5DD5984 		vmulpd	272(%rsp), %ymm4, %ymm0
 560      24100100 
 560      00
 561 0b67 C5FD5884 		vaddpd	464(%rsp), %ymm0, %ymm0
 561      24D00100 
 561      00
 562 0b70 C5FD2984 		vmovapd	%ymm0, 464(%rsp)
 562      24D00100 
 562      00
 563 0b79 C5DD5984 		vmulpd	304(%rsp), %ymm4, %ymm0
 563      24300100 
 563      00
 564 0b82 C5FD5884 		vaddpd	496(%rsp), %ymm0, %ymm0
 564      24F00100 
 564      00
 565 0b8b C5FD2984 		vmovapd	%ymm0, 496(%rsp)
 565      24F00100 
 565      00
 566 0b94 0F8556F5 		jne	.L30
 566      FFFF
 567 0b9a 4489E8   		movl	%r13d, %eax
 568 0b9d BA1F85EB 		movl	$1374389535, %edx
 568      51
 569 0ba2 F7EA     		imull	%edx
 570 0ba4 4489E8   		movl	%r13d, %eax
 571 0ba7 C1F81F   		sarl	$31, %eax
GAS LISTING /tmp/cc0bEwmm.s 			page 19


 572 0baa C1FA05   		sarl	$5, %edx
 573 0bad 29C2     		subl	%eax, %edx
 574 0baf B8640000 		movl	$100, %eax
 574      00
 575 0bb4 0FAFD0   		imull	%eax, %edx
 576 0bb7 4489E8   		movl	%r13d, %eax
 577 0bba 29D0     		subl	%edx, %eax
 578 0bbc 83F801   		cmpl	$1, %eax
 579 0bbf 0F848B00 		je	.L22
 579      0000
 580              	.L28:
 581 0bc5 4183C50C 		addl	$12, %r13d
 582 0bc9 4983C660 		addq	$96, %r14
 583 0bcd 4181FDE0 		cmpl	$18144, %r13d
 583      460000
 584 0bd4 0F8590F4 		jne	.L12
 584      FFFF
 585 0bda C5F877   		vzeroupper
 586 0bdd E8000000 		call	clock
 586      00
 587 0be2 BA0C0000 		movl	$12, %edx
 587      00
 588 0be7 4989C4   		movq	%rax, %r12
 589 0bea BE000000 		movl	$.LC31, %esi
 589      00
 590 0bef BF000000 		movl	$_ZSt4cout, %edi
 590      00
 591 0bf4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 591      00
 592 0bf9 4C89E1   		movq	%r12, %rcx
 593 0bfc 482B4C24 		subq	8(%rsp), %rcx
 593      08
 594 0c01 48BECFF7 		movabsq	$2361183241434822607, %rsi
 594      53E3A59B 
 594      C420
 595 0c0b BF000000 		movl	$_ZSt4cout, %edi
 595      00
 596 0c10 4889C8   		movq	%rcx, %rax
 597 0c13 48C1F93F 		sarq	$63, %rcx
 598 0c17 48F7EE   		imulq	%rsi
 599 0c1a 4889D6   		movq	%rdx, %rsi
 600 0c1d 48C1FE07 		sarq	$7, %rsi
 601 0c21 4829CE   		subq	%rcx, %rsi
 602 0c24 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 602      00
 603 0c29 BE000000 		movl	$.LC32, %esi
 603      00
 604 0c2e 4889C7   		movq	%rax, %rdi
 605 0c31 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 605      00
 606 0c36 4889C7   		movq	%rax, %rdi
 607 0c39 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 607      00
 608 0c3e 488D65D8 		leaq	-40(%rbp), %rsp
 609 0c42 31C0     		xorl	%eax, %eax
 610 0c44 5B       		popq	%rbx
 611 0c45 415C     		popq	%r12
GAS LISTING /tmp/cc0bEwmm.s 			page 20


 612 0c47 415D     		popq	%r13
 613 0c49 415E     		popq	%r14
 614 0c4b 415F     		popq	%r15
 615 0c4d 5D       		popq	%rbp
 616              		.cfi_remember_state
 617              		.cfi_def_cfa 7, 8
 618 0c4e C3       		ret
 619 0c4f 90       		.p2align 4,,10
 620              		.p2align 3
 621              	.L22:
 622              		.cfi_restore_state
 623 0c50 4C8DBC24 		leaq	240(%rsp), %r15
 623      F0000000 
 624              	.L29:
 625 0c58 C4C17B10 		vmovsd	192(%r15), %xmm3
 625      9FC00000 
 625      00
 626 0c61 BA040000 		movl	$4, %edx
 626      00
 627 0c66 BE000000 		movl	$.LC28, %esi
 627      00
 628 0c6b C4C17B10 		vmovsd	288(%r15), %xmm0
 628      87200100 
 628      00
 629 0c74 BF000000 		movl	$_ZSt4cout, %edi
 629      00
 630 0c79 C5FD2954 		vmovapd	%ymm2, 16(%rsp)
 630      2410
 631 0c7f C5FD2974 		vmovapd	%ymm6, 48(%rsp)
 631      2430
 632 0c85 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 632      2450
 633 0c8b C57D2944 		vmovapd	%ymm8, 112(%rsp)
 633      2470
 634 0c91 C5FB119C 		vmovsd	%xmm3, 144(%rsp)
 634      24900000 
 634      00
 635 0c9a C5FB1184 		vmovsd	%xmm0, 176(%rsp)
 635      24B00000 
 635      00
 636 0ca3 C5F877   		vzeroupper
 637 0ca6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 637      00
 638 0cab C5FB1084 		vmovsd	176(%rsp), %xmm0
 638      24B00000 
 638      00
 639 0cb4 BF000000 		movl	$_ZSt4cout, %edi
 639      00
 640 0cb9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 640      00
 641 0cbe BA030000 		movl	$3, %edx
 641      00
 642 0cc3 BE000000 		movl	$.LC29, %esi
 642      00
 643 0cc8 4889C7   		movq	%rax, %rdi
 644 0ccb 4889C3   		movq	%rax, %rbx
 645 0cce E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
GAS LISTING /tmp/cc0bEwmm.s 			page 21


 645      00
 646 0cd3 C5FB109C 		vmovsd	144(%rsp), %xmm3
 646      24900000 
 646      00
 647 0cdc 4889DF   		movq	%rbx, %rdi
 648 0cdf C5F928C3 		vmovapd	%xmm3, %xmm0
 649 0ce3 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 649      00
 650 0ce8 4889C3   		movq	%rax, %rbx
 651 0ceb 488B00   		movq	(%rax), %rax
 652 0cee C57D2844 		vmovapd	112(%rsp), %ymm8
 652      2470
 653 0cf4 C5FD284C 		vmovapd	80(%rsp), %ymm1
 653      2450
 654 0cfa C5FD2874 		vmovapd	48(%rsp), %ymm6
 654      2430
 655 0d00 488B40E8 		movq	-24(%rax), %rax
 656 0d04 C5FD2854 		vmovapd	16(%rsp), %ymm2
 656      2410
 657 0d0a 488B9403 		movq	240(%rbx,%rax), %rdx
 657      F0000000 
 658 0d12 4885D2   		testq	%rdx, %rdx
 659 0d15 0F84D200 		je	.L33
 659      0000
 660 0d1b 807A3800 		cmpb	$0, 56(%rdx)
 661 0d1f 7468     		je	.L26
 662 0d21 0FB64243 		movzbl	67(%rdx), %eax
 663              	.L27:
 664 0d25 0FBEF0   		movsbl	%al, %esi
 665 0d28 4889DF   		movq	%rbx, %rdi
 666 0d2b C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 666      2450
 667 0d31 C5FD2974 		vmovapd	%ymm6, 112(%rsp)
 667      2470
 668 0d37 C5FD298C 		vmovapd	%ymm1, 144(%rsp)
 668      24900000 
 668      00
 669 0d40 C57D2984 		vmovapd	%ymm8, 176(%rsp)
 669      24B00000 
 669      00
 670 0d49 C5F877   		vzeroupper
 671 0d4c 4983C720 		addq	$32, %r15
 672 0d50 E8000000 		call	_ZNSo3putEc
 672      00
 673 0d55 4889C7   		movq	%rax, %rdi
 674 0d58 E8000000 		call	_ZNSo5flushEv
 674      00
 675 0d5d 4D39E7   		cmpq	%r12, %r15
 676 0d60 C57D2884 		vmovapd	176(%rsp), %ymm8
 676      24B00000 
 676      00
 677 0d69 C5FD288C 		vmovapd	144(%rsp), %ymm1
 677      24900000 
 677      00
 678 0d72 C5FD2874 		vmovapd	112(%rsp), %ymm6
 678      2470
 679 0d78 C5FD2854 		vmovapd	80(%rsp), %ymm2
GAS LISTING /tmp/cc0bEwmm.s 			page 22


 679      2450
 680 0d7e 0F85D4FE 		jne	.L29
 680      FFFF
 681 0d84 E93CFEFF 		jmp	.L28
 681      FF
 682              	.L26:
 683 0d89 4889D7   		movq	%rdx, %rdi
 684 0d8c C5FD2954 		vmovapd	%ymm2, 48(%rsp)
 684      2430
 685 0d92 48899424 		movq	%rdx, 176(%rsp)
 685      B0000000 
 686 0d9a C5FD2974 		vmovapd	%ymm6, 80(%rsp)
 686      2450
 687 0da0 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 687      2470
 688 0da6 C57D2984 		vmovapd	%ymm8, 144(%rsp)
 688      24900000 
 688      00
 689 0daf C5F877   		vzeroupper
 690 0db2 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 690      00
 691 0db7 488B9424 		movq	176(%rsp), %rdx
 691      B0000000 
 692 0dbf BE0A0000 		movl	$10, %esi
 692      00
 693 0dc4 488B02   		movq	(%rdx), %rax
 694 0dc7 4889D7   		movq	%rdx, %rdi
 695 0dca FF5030   		call	*48(%rax)
 696 0dcd C5FD2854 		vmovapd	48(%rsp), %ymm2
 696      2430
 697 0dd3 C5FD2874 		vmovapd	80(%rsp), %ymm6
 697      2450
 698 0dd9 C5FD284C 		vmovapd	112(%rsp), %ymm1
 698      2470
 699 0ddf C57D2884 		vmovapd	144(%rsp), %ymm8
 699      24900000 
 699      00
 700 0de8 E938FFFF 		jmp	.L27
 700      FF
 701              	.L33:
 702 0ded C5F877   		vzeroupper
 703 0df0 E8000000 		call	_ZSt16__throw_bad_castv
 703      00
 704              		.cfi_endproc
 705              	.LFE4443:
 706              		.size	main, .-main
 707 0df5 66662E0F 		.p2align 4,,15
 707      1F840000 
 707      000000
 708              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 709              	_GLOBAL__sub_I__Z8linspaceddi:
 710              	.LFB4703:
 711              		.cfi_startproc
 712 0e00 4883EC08 		subq	$8, %rsp
 713              		.cfi_def_cfa_offset 16
 714 0e04 BF000000 		movl	$_ZStL8__ioinit, %edi
 714      00
GAS LISTING /tmp/cc0bEwmm.s 			page 23


 715 0e09 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 715      00
 716 0e0e BA000000 		movl	$__dso_handle, %edx
 716      00
 717 0e13 BE000000 		movl	$_ZStL8__ioinit, %esi
 717      00
 718 0e18 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 718      00
 719 0e1d 4883C408 		addq	$8, %rsp
 720              		.cfi_def_cfa_offset 8
 721 0e21 E9000000 		jmp	__cxa_atexit
 721      00
 722              		.cfi_endproc
 723              	.LFE4703:
 724              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 725              		.section	.init_array,"aw"
 726              		.align 8
 727 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 727      00000000 
 728              		.section	.rodata
 729              		.align 32
 730              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 731              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 732              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 733 0000 FFFFFFFF 		.long	-1
 734 0004 FFFFFF7F 		.long	2147483647
 735 0008 FFFFFFFF 		.long	-1
 736 000c FFFFFF7F 		.long	2147483647
 737 0010 FFFFFFFF 		.long	-1
 738 0014 FFFFFF7F 		.long	2147483647
 739 0018 FFFFFFFF 		.long	-1
 740 001c FFFFFF7F 		.long	2147483647
 741              		.local	_ZStL8__ioinit
 742              		.comm	_ZStL8__ioinit,1,1
 743              		.section	.rodata.cst8,"aM",@progbits,8
 744              		.align 8
 745              	.LC0:
 746 0000 9A999999 		.long	2576980378
 747 0004 9999B93F 		.long	1069128089
 748              		.align 8
 749              	.LC1:
 750 0008 00000000 		.long	0
 751 000c 0000F03F 		.long	1072693248
 752              		.section	.rodata.cst32,"aM",@progbits,32
 753              		.align 32
 754              	.LC2:
 755 0000 83C8C96D 		.long	1841940611
 756 0004 305FE43F 		.long	1071931184
 757 0008 83C8C96D 		.long	1841940611
 758 000c 305FE43F 		.long	1071931184
 759 0010 83C8C96D 		.long	1841940611
 760 0014 305FE43F 		.long	1071931184
 761 0018 83C8C96D 		.long	1841940611
 762 001c 305FE43F 		.long	1071931184
 763              		.align 32
 764              	.LC3:
 765 0020 00000050 		.long	1342177280
GAS LISTING /tmp/cc0bEwmm.s 			page 24


 766 0024 FB21F93F 		.long	1073291771
 767 0028 00000050 		.long	1342177280
 768 002c FB21F93F 		.long	1073291771
 769 0030 00000050 		.long	1342177280
 770 0034 FB21F93F 		.long	1073291771
 771 0038 00000050 		.long	1342177280
 772 003c FB21F93F 		.long	1073291771
 773              		.align 32
 774              	.LC4:
 775 0040 00000060 		.long	1610612736
 776 0044 B410513E 		.long	1045500084
 777 0048 00000060 		.long	1610612736
 778 004c B410513E 		.long	1045500084
 779 0050 00000060 		.long	1610612736
 780 0054 B410513E 		.long	1045500084
 781 0058 00000060 		.long	1610612736
 782 005c B410513E 		.long	1045500084
 783              		.align 32
 784              	.LC5:
 785 0060 075C1433 		.long	856972295
 786 0064 26A6913C 		.long	1016178214
 787 0068 075C1433 		.long	856972295
 788 006c 26A6913C 		.long	1016178214
 789 0070 075C1433 		.long	856972295
 790 0074 26A6913C 		.long	1016178214
 791 0078 075C1433 		.long	856972295
 792 007c 26A6913C 		.long	1016178214
 793              		.align 32
 794              	.LC6:
 795 0080 D0F71011 		.long	286324688
 796 0084 1111813F 		.long	1065423121
 797 0088 D0F71011 		.long	286324688
 798 008c 1111813F 		.long	1065423121
 799 0090 D0F71011 		.long	286324688
 800 0094 1111813F 		.long	1065423121
 801 0098 D0F71011 		.long	286324688
 802 009c 1111813F 		.long	1065423121
 803              		.align 32
 804              	.LC7:
 805 00a0 48555555 		.long	1431655752
 806 00a4 5555C5BF 		.long	-1077586603
 807 00a8 48555555 		.long	1431655752
 808 00ac 5555C5BF 		.long	-1077586603
 809 00b0 48555555 		.long	1431655752
 810 00b4 5555C5BF 		.long	-1077586603
 811 00b8 48555555 		.long	1431655752
 812 00bc 5555C5BF 		.long	-1077586603
 813              		.align 32
 814              	.LC8:
 815 00c0 CD9CD11F 		.long	533830861
 816 00c4 FDD8E53D 		.long	1038473469
 817 00c8 CD9CD11F 		.long	533830861
 818 00cc FDD8E53D 		.long	1038473469
 819 00d0 CD9CD11F 		.long	533830861
 820 00d4 FDD8E53D 		.long	1038473469
 821 00d8 CD9CD11F 		.long	533830861
 822 00dc FDD8E53D 		.long	1038473469
GAS LISTING /tmp/cc0bEwmm.s 			page 25


 823              		.align 32
 824              	.LC9:
 825 00e0 5D1F29A9 		.long	2838044509
 826 00e4 E5E55ABE 		.long	-1101339163
 827 00e8 5D1F29A9 		.long	2838044509
 828 00ec E5E55ABE 		.long	-1101339163
 829 00f0 5D1F29A9 		.long	2838044509
 830 00f4 E5E55ABE 		.long	-1101339163
 831 00f8 5D1F29A9 		.long	2838044509
 832 00fc E5E55ABE 		.long	-1101339163
 833              		.align 32
 834              	.LC10:
 835 0100 A1487D56 		.long	1451051169
 836 0104 E31DC73E 		.long	1053236707
 837 0108 A1487D56 		.long	1451051169
 838 010c E31DC73E 		.long	1053236707
 839 0110 A1487D56 		.long	1451051169
 840 0114 E31DC73E 		.long	1053236707
 841 0118 A1487D56 		.long	1451051169
 842 011c E31DC73E 		.long	1053236707
 843              		.align 32
 844              	.LC11:
 845 0120 03DFBF19 		.long	432004867
 846 0124 A0012ABF 		.long	-1087766112
 847 0128 03DFBF19 		.long	432004867
 848 012c A0012ABF 		.long	-1087766112
 849 0130 03DFBF19 		.long	432004867
 850 0134 A0012ABF 		.long	-1087766112
 851 0138 03DFBF19 		.long	432004867
 852 013c A0012ABF 		.long	-1087766112
 853              		.align 32
 854              	.LC12:
 855 0140 914FC116 		.long	381767569
 856 0144 6CC156BF 		.long	-1084833428
 857 0148 914FC116 		.long	381767569
 858 014c 6CC156BF 		.long	-1084833428
 859 0150 914FC116 		.long	381767569
 860 0154 6CC156BF 		.long	-1084833428
 861 0158 914FC116 		.long	381767569
 862 015c 6CC156BF 		.long	-1084833428
 863              		.align 32
 864              	.LC13:
 865 0160 4B555555 		.long	1431655755
 866 0164 5555A53F 		.long	1067799893
 867 0168 4B555555 		.long	1431655755
 868 016c 5555A53F 		.long	1067799893
 869 0170 4B555555 		.long	1431655755
 870 0174 5555A53F 		.long	1067799893
 871 0178 4B555555 		.long	1431655755
 872 017c 5555A53F 		.long	1067799893
 873              		.align 32
 874              	.LC14:
 875 0180 9B1A86A0 		.long	2693143195
 876 0184 49FAA8BD 		.long	-1112999351
 877 0188 9B1A86A0 		.long	2693143195
 878 018c 49FAA8BD 		.long	-1112999351
 879 0190 9B1A86A0 		.long	2693143195
GAS LISTING /tmp/cc0bEwmm.s 			page 26


 880 0194 49FAA8BD 		.long	-1112999351
 881 0198 9B1A86A0 		.long	2693143195
 882 019c 49FAA8BD 		.long	-1112999351
 883              		.align 32
 884              	.LC15:
 885 01a0 053F4E7B 		.long	2068725509
 886 01a4 9DEE213E 		.long	1042411165
 887 01a8 053F4E7B 		.long	2068725509
 888 01ac 9DEE213E 		.long	1042411165
 889 01b0 053F4E7B 		.long	2068725509
 890 01b4 9DEE213E 		.long	1042411165
 891 01b8 053F4E7B 		.long	2068725509
 892 01bc 9DEE213E 		.long	1042411165
 893              		.align 32
 894              	.LC16:
 895 01c0 C64BAC7E 		.long	2125220806
 896 01c4 4F7E92BE 		.long	-1097695665
 897 01c8 C64BAC7E 		.long	2125220806
 898 01cc 4F7E92BE 		.long	-1097695665
 899 01d0 C64BAC7E 		.long	2125220806
 900 01d4 4F7E92BE 		.long	-1097695665
 901 01d8 C64BAC7E 		.long	2125220806
 902 01dc 4F7E92BE 		.long	-1097695665
 903              		.align 32
 904              	.LC17:
 905 01e0 F544C819 		.long	432555253
 906 01e4 A001FA3E 		.long	1056571808
 907 01e8 F544C819 		.long	432555253
 908 01ec A001FA3E 		.long	1056571808
 909 01f0 F544C819 		.long	432555253
 910 01f4 A001FA3E 		.long	1056571808
 911 01f8 F544C819 		.long	432555253
 912 01fc A001FA3E 		.long	1056571808
 913              		.align 32
 914              	.LC18:
 915 0200 00000000 		.long	0
 916 0204 0000E03F 		.long	1071644672
 917 0208 00000000 		.long	0
 918 020c 0000E03F 		.long	1071644672
 919 0210 00000000 		.long	0
 920 0214 0000E03F 		.long	1071644672
 921 0218 00000000 		.long	0
 922 021c 0000E03F 		.long	1071644672
 923              		.align 32
 924              	.LC19:
 925 0220 00000000 		.long	0
 926 0224 0000F03F 		.long	1072693248
 927 0228 00000000 		.long	0
 928 022c 0000F03F 		.long	1072693248
 929 0230 00000000 		.long	0
 930 0234 0000F03F 		.long	1072693248
 931 0238 00000000 		.long	0
 932 023c 0000F03F 		.long	1072693248
 933              		.section	.rodata.cst16,"aM",@progbits,16
 934              		.align 16
 935              	.LC20:
 936 0000 01000000 		.quad	1
GAS LISTING /tmp/cc0bEwmm.s 			page 27


 936      00000000 
 937 0008 01000000 		.quad	1
 937      00000000 
 938              		.align 16
 939              	.LC21:
 940 0010 00000000 		.quad	36028797018963968
 940      00008000 
 941 0018 00000000 		.quad	36028797018963968
 941      00008000 
 942              		.align 16
 943              	.LC22:
 944 0020 00000000 		.quad	-9007199254740992
 944      0000E0FF 
 945 0028 00000000 		.quad	-9007199254740992
 945      0000E0FF 
 946              		.align 16
 947              	.LC23:
 948 0030 00000000 		.quad	-9223372036854775808
 948      00000080 
 949 0038 00000000 		.quad	-9223372036854775808
 949      00000080 
 950              		.section	.rodata.cst32
 951              		.align 32
 952              	.LC24:
 953 0240 7B14AE47 		.long	1202590843
 954 0244 E17A743F 		.long	1064598241
 955 0248 7B14AE47 		.long	1202590843
 956 024c E17A743F 		.long	1064598241
 957 0250 7B14AE47 		.long	1202590843
 958 0254 E17A743F 		.long	1064598241
 959 0258 7B14AE47 		.long	1202590843
 960 025c E17A743F 		.long	1064598241
 961              		.align 32
 962              	.LC25:
 963 0260 00000000 		.long	0
 964 0264 00000040 		.long	1073741824
 965 0268 00000000 		.long	0
 966 026c 00000040 		.long	1073741824
 967 0270 00000000 		.long	0
 968 0274 00000040 		.long	1073741824
 969 0278 00000000 		.long	0
 970 027c 00000040 		.long	1073741824
 971              		.align 32
 972              	.LC26:
 973 0280 7B14AE47 		.long	1202590843
 974 0284 E17A843F 		.long	1065646817
 975 0288 7B14AE47 		.long	1202590843
 976 028c E17A843F 		.long	1065646817
 977 0290 7B14AE47 		.long	1202590843
 978 0294 E17A843F 		.long	1065646817
 979 0298 7B14AE47 		.long	1202590843
 980 029c E17A843F 		.long	1065646817
 981              		.align 32
 982              	.LC27:
 983 02a0 4F1BE8B4 		.long	3035110223
 984 02a4 814E5B3F 		.long	1062948481
 985 02a8 4F1BE8B4 		.long	3035110223
GAS LISTING /tmp/cc0bEwmm.s 			page 28


 986 02ac 814E5B3F 		.long	1062948481
 987 02b0 4F1BE8B4 		.long	3035110223
 988 02b4 814E5B3F 		.long	1062948481
 989 02b8 4F1BE8B4 		.long	3035110223
 990 02bc 814E5B3F 		.long	1062948481
 991              		.align 32
 992              	.LC30:
 993 02c0 9A999999 		.long	2576980378
 994 02c4 9999B93F 		.long	1069128089
 995 02c8 9A999999 		.long	2576980378
 996 02cc 9999B93F 		.long	1069128089
 997 02d0 9A999999 		.long	2576980378
 998 02d4 9999B93F 		.long	1069128089
 999 02d8 9A999999 		.long	2576980378
 1000 02dc 9999B93F 		.long	1069128089
 1001              		.section	.rodata.cst16
 1002              		.align 16
 1003              	.LC33:
 1004 0040 FFFFFFFF 		.quad	-1
 1004      FFFFFFFF 
 1005 0048 FFFFFFFF 		.quad	-1
 1005      FFFFFFFF 
 1006              		.hidden	__dso_handle
 1007              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1008              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc0bEwmm.s 			page 29


DEFINED SYMBOLS
                            *ABS*:0000000000000000 FLOPS_TEST_TRANSZENDENTAL.cpp
     /tmp/cc0bEwmm.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cc0bEwmm.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc0bEwmm.s:81     .text.startup:0000000000000000 main
     /tmp/cc0bEwmm.s:732    .rodata:0000000000000000 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cc0bEwmm.s:709    .text.startup:0000000000000e00 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc0bEwmm.s:749    .rodata.cst8:0000000000000008 .LC1
     /tmp/cc0bEwmm.s:745    .rodata.cst8:0000000000000000 .LC0
     /tmp/cc0bEwmm.s:894    .rodata.cst32:00000000000001c0 .LC16
     /tmp/cc0bEwmm.s:904    .rodata.cst32:00000000000001e0 .LC17
     /tmp/cc0bEwmm.s:914    .rodata.cst32:0000000000000200 .LC18
     /tmp/cc0bEwmm.s:924    .rodata.cst32:0000000000000220 .LC19
     /tmp/cc0bEwmm.s:992    .rodata.cst32:00000000000002c0 .LC30
     /tmp/cc0bEwmm.s:754    .rodata.cst32:0000000000000000 .LC2
     /tmp/cc0bEwmm.s:764    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc0bEwmm.s:774    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc0bEwmm.s:784    .rodata.cst32:0000000000000060 .LC5
     /tmp/cc0bEwmm.s:814    .rodata.cst32:00000000000000c0 .LC8
     /tmp/cc0bEwmm.s:794    .rodata.cst32:0000000000000080 .LC6
     /tmp/cc0bEwmm.s:834    .rodata.cst32:0000000000000100 .LC10
     /tmp/cc0bEwmm.s:824    .rodata.cst32:00000000000000e0 .LC9
     /tmp/cc0bEwmm.s:804    .rodata.cst32:00000000000000a0 .LC7
     /tmp/cc0bEwmm.s:844    .rodata.cst32:0000000000000120 .LC11
     /tmp/cc0bEwmm.s:874    .rodata.cst32:0000000000000180 .LC14
     /tmp/cc0bEwmm.s:854    .rodata.cst32:0000000000000140 .LC12
     /tmp/cc0bEwmm.s:884    .rodata.cst32:00000000000001a0 .LC15
     /tmp/cc0bEwmm.s:864    .rodata.cst32:0000000000000160 .LC13
     /tmp/cc0bEwmm.s:935    .rodata.cst16:0000000000000000 .LC20
     /tmp/cc0bEwmm.s:943    .rodata.cst16:0000000000000020 .LC22
     /tmp/cc0bEwmm.s:1003   .rodata.cst16:0000000000000040 .LC33
     /tmp/cc0bEwmm.s:939    .rodata.cst16:0000000000000010 .LC21
     /tmp/cc0bEwmm.s:947    .rodata.cst16:0000000000000030 .LC23
     /tmp/cc0bEwmm.s:952    .rodata.cst32:0000000000000240 .LC24
     /tmp/cc0bEwmm.s:962    .rodata.cst32:0000000000000260 .LC25
     /tmp/cc0bEwmm.s:972    .rodata.cst32:0000000000000280 .LC26
     /tmp/cc0bEwmm.s:982    .rodata.cst32:00000000000002a0 .LC27

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
GAS LISTING /tmp/cc0bEwmm.s 			page 30


