GAS LISTING /tmp/cca29F5P.s 			page 1


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
GAS LISTING /tmp/cca29F5P.s 			page 2


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
GAS LISTING /tmp/cca29F5P.s 			page 3


 100 0019 4881EC00 		subq	$512, %rsp
 100      020000
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 103      00000000 
 104 0028 4C8DA424 		leaq	320(%rsp), %r12
 104      40010000 
 105 0030 C5FB1005 		vmovsd	.LC0(%rip), %xmm0
 105      00000000 
 106 0038 E8000000 		call	_Z8linspaceddi
 106      00
 107 003d 4989C6   		movq	%rax, %r14
 108 0040 E8000000 		call	clock
 108      00
 109 0045 C5FD2835 		vmovapd	.LC2(%rip), %ymm6
 109      00000000 
 110 004d 48898424 		movq	%rax, 152(%rsp)
 110      98000000 
 111 0055 C57D2805 		vmovapd	.LC17(%rip), %ymm8
 111      00000000 
 112 005d C5FD280D 		vmovapd	.LC18(%rip), %ymm1
 112      00000000 
 113 0065 C5FD2815 		vmovapd	.LC19(%rip), %ymm2
 113      00000000 
 114              	.L12:
 115 006d C4C17D10 		vmovupd	(%r14), %ymm0
 115      06
 116 0072 488DBC24 		leaq	384(%rsp), %rdi
 116      80010000 
 117 007a BE102700 		movl	$10000, %esi
 117      00
 118 007f C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 118      00000000 
 119 0087 C5FD2984 		vmovapd	%ymm0, 448(%rsp)
 119      24C00100 
 119      00
 120 0090 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 121 0094 C5FD29BC 		vmovapd	%ymm7, 384(%rsp)
 121      24800100 
 121      00
 122 009d C5FD2984 		vmovapd	%ymm0, 256(%rsp)
 122      24000100 
 122      00
 123 00a6 C4C17D10 		vmovupd	32(%r14), %ymm3
 123      5E20
 124 00ac C5FD29BC 		vmovapd	%ymm7, 416(%rsp)
 124      24A00100 
 124      00
 125 00b5 C5FD28F8 		vmovapd	%ymm0, %ymm7
 126 00b9 C5FD299C 		vmovapd	%ymm3, 480(%rsp)
 126      24E00100 
 126      00
 127 00c2 C5FD2984 		vmovapd	%ymm0, 288(%rsp)
 127      24200100 
 127      00
 128 00cb 0F1F4400 		.p2align 4,,10
GAS LISTING /tmp/cca29F5P.s 			page 4


 128      00
 129              		.p2align 3
 130              	.L30:
 131 00d0 4C89E2   		movq	%r12, %rdx
 132              	.L21:
 133 00d3 C57D2852 		vmovapd	64(%rdx), %ymm10
 133      40
 134 00d8 4883C220 		addq	$32, %rdx
 135 00dc C57D2862 		vmovapd	96(%rdx), %ymm12
 135      60
 136 00e1 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 136      00000000 
 137 00e9 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 138 00ed C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 138      C008
 139 00f3 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 139      D808
 140 00f9 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 140      24E00000 
 140      00
 141 0102 C57B10B4 		vmovsd	224(%rsp), %xmm14
 141      24E00000 
 141      00
 142 010b C57B10BC 		vmovsd	232(%rsp), %xmm15
 142      24E80000 
 142      00
 143 0114 C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 143      C6
 144 0119 C5FB109C 		vmovsd	240(%rsp), %xmm3
 144      24F00000 
 144      00
 145 0122 48898424 		movq	%rax, 192(%rsp)
 145      C0000000 
 146 012a C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 146      C7
 147 012f C5FA7EAC 		vmovq	192(%rsp), %xmm5
 147      24C00000 
 147      00
 148 0138 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 148      E801
 149 013e C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 149      C3
 150 0143 C5F97FAC 		vmovdqa	%xmm5, 192(%rsp)
 150      24C00000 
 150      00
 151 014c C5FB10AC 		vmovsd	248(%rsp), %xmm5
 151      24F80000 
 151      00
 152 0155 48898424 		movq	%rax, 160(%rsp)
 152      A0000000 
 153 015d C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 153      C5
 154 0162 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 154      00000000 
 155 016a C5FA7E9C 		vmovq	160(%rsp), %xmm3
 155      24A00000 
 155      00
GAS LISTING /tmp/cca29F5P.s 			page 5


 156 0173 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 157 0177 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 157      C801
 158 017d C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 158      00000000 
 159 0185 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 159      00000000 
 160 018d C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 161 0191 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 162 0195 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 163 0199 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 163      00000000 
 164 01a1 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 165 01a5 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 165      00000000 
 166 01ad C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 166      00000000 
 167 01b5 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 167      00000000 
 168 01bd C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 169 01c1 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 169      00000000 
 170 01c9 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 170      00000000 
 171 01d1 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 171      F3
 172 01d6 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 172      F7
 173 01db C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 174 01df C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 174      00000000 
 175 01e7 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 175      EE
 176 01ec C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 176      00000000 
 177 01f4 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 177      00000000 
 178 01fc C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 178      00000000 
 179 0204 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 179      DB
 180 0209 C5796FBC 		vmovdqa	192(%rsp), %xmm15
 180      24C00000 
 180      00
 181 0212 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 181      F6
 182 0217 C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 182      00000000 
 183 021f C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 183      D8
 184 0224 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 185 0228 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 185      F6
 186 022d C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 187 0231 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 188 0235 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 188      DE
GAS LISTING /tmp/cca29F5P.s 			page 6


 189 023a C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 189      ED
 190 023f C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 191 0243 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 191      00000000 
 192 024b C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 192      E601
 193 0251 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 194 0255 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 194      ED
 195 025a C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 196 025e C4C10973 		vpsllq	$1, %xmm14, %xmm14
 196      F601
 197 0264 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 197      00000000 
 198 026c C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 198      DD
 199 0271 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 199      00000000 
 200 0279 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 200      00000000 
 201 0281 C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 201      C5
 202 0286 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 202      2D000000 
 202      00
 203 028f C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 203      00000000 
 204 0297 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 204      35000000 
 204      00
 205 02a0 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 205      00000000 
 206 02a8 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 206      D801
 207 02ae C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 207      05000000 
 207      00
 208 02b7 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 208      E801
 209 02bd C5F928C4 		vmovapd	%xmm4, %xmm0
 210 02c1 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 210      01
 211 02c6 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 211      00000000 
 212 02ce C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 212      05000000 
 212      00
 213 02d7 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 213      00000000 
 214 02df C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 214      C601
 215 02e5 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 216 02e9 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 216      D001
 217 02ef C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 217      EF40
GAS LISTING /tmp/cca29F5P.s 			page 7


 218 02f5 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 218      E240
 219 02fb C4C16173 		vpsllq	$62, %xmm9, %xmm3
 219      F13E
 220 0301 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 220      F73E
 221 0307 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 222 030b C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 222      CA
 223 0310 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 223      E4B0
 224 0316 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 224      00000000 
 225 031e C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 225      00000000 
 226 0326 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 226      C801
 227 032c C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 227      E1
 228 0331 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 229 0335 C57D2962 		vmovapd	%ymm12, -96(%rdx)
 229      A0
 230 033a C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 230      00000000 
 231 0342 C51D5862 		vaddpd	32(%rdx), %ymm12, %ymm12
 231      20
 232 0347 C57D2962 		vmovapd	%ymm12, -32(%rdx)
 232      E0
 233 034c 4839FA   		cmpq	%rdi, %rdx
 234 034f 0F857EFD 		jne	.L21
 234      FFFF
 235 0355 488D9424 		leaq	256(%rsp), %rdx
 235      00010000 
 236              	.L15:
 237 035d C57D2852 		vmovapd	64(%rdx), %ymm10
 237      40
 238 0362 4883C220 		addq	$32, %rdx
 239 0366 C57D28A2 		vmovapd	160(%rdx), %ymm12
 239      A0000000 
 240 036e C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 240      00000000 
 241 0376 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 242 037a C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 242      C008
 243 0380 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 243      D808
 244 0386 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 244      24E00000 
 244      00
 245 038f C5FB10AC 		vmovsd	224(%rsp), %xmm5
 245      24E00000 
 245      00
 246 0398 C57B108C 		vmovsd	232(%rsp), %xmm9
 246      24E80000 
 246      00
 247 03a1 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 247      C5
GAS LISTING /tmp/cca29F5P.s 			page 8


 248 03a6 C57B109C 		vmovsd	240(%rsp), %xmm11
 248      24F00000 
 248      00
 249 03af C57B10AC 		vmovsd	248(%rsp), %xmm13
 249      24F80000 
 249      00
 250 03b8 48898424 		movq	%rax, 192(%rsp)
 250      C0000000 
 251 03c0 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 251      C1
 252 03c5 C5FA7EAC 		vmovq	192(%rsp), %xmm5
 252      24C00000 
 252      00
 253 03ce C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 253      E801
 254 03d4 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 254      C3
 255 03d9 C5F97FAC 		vmovdqa	%xmm5, 192(%rsp)
 255      24C00000 
 255      00
 256 03e2 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 256      00000000 
 257 03ea C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 258 03ee 48898424 		movq	%rax, 160(%rsp)
 258      A0000000 
 259 03f6 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 259      C5
 260 03fb C5FA7E9C 		vmovq	160(%rsp), %xmm3
 260      24A00000 
 260      00
 261 0404 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 261      C801
 262 040a C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 262      00000000 
 263 0412 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 263      00000000 
 264 041a C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 265 041e C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 266 0422 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 267 0426 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 267      00000000 
 268 042e C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 269 0432 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 269      00000000 
 270 043a C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 270      00000000 
 271 0442 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 271      00000000 
 272 044a C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 273 044e C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 273      00000000 
 274 0456 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 274      00000000 
 275 045e C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 275      F3
 276 0463 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 276      F7
GAS LISTING /tmp/cca29F5P.s 			page 9


 277 0468 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 278 046c C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 278      00000000 
 279 0474 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 279      EE
 280 0479 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 280      00000000 
 281 0481 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 281      00000000 
 282 0489 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 282      00000000 
 283 0491 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 283      DB
 284 0496 C5796FBC 		vmovdqa	192(%rsp), %xmm15
 284      24C00000 
 284      00
 285 049f C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 285      F6
 286 04a4 C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 286      00000000 
 287 04ac C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 287      D8
 288 04b1 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 289 04b5 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 289      F6
 290 04ba C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 291 04be C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 292 04c2 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 292      DE
 293 04c7 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 293      ED
 294 04cc C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 295 04d0 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 295      00000000 
 296 04d8 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 296      E601
 297 04de C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 298 04e2 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 298      ED
 299 04e7 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 300 04eb C4C10973 		vpsllq	$1, %xmm14, %xmm14
 300      F601
 301 04f1 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 301      00000000 
 302 04f9 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 302      DD
 303 04fe C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 303      00000000 
 304 0506 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 304      00000000 
 305 050e C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 305      C5
 306 0513 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 306      2D000000 
 306      00
 307 051c C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 307      00000000 
GAS LISTING /tmp/cca29F5P.s 			page 10


 308 0524 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 308      35000000 
 308      00
 309 052d C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 309      00000000 
 310 0535 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 310      D801
 311 053b C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 311      05000000 
 311      00
 312 0544 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 312      E801
 313 054a C5F928C4 		vmovapd	%xmm4, %xmm0
 314 054e C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 314      01
 315 0553 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 315      00000000 
 316 055b C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 316      05000000 
 316      00
 317 0564 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 317      00000000 
 318 056c C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 318      C601
 319 0572 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 320 0576 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 320      D001
 321 057c C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 321      EF40
 322 0582 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 322      E240
 323 0588 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 323      F13E
 324 058e C4C13173 		vpsllq	$62, %xmm15, %xmm9
 324      F73E
 325 0594 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 326 0598 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 326      CA
 327 059d C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 327      E4B0
 328 05a3 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 328      00000000 
 329 05ab C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 329      00000000 
 330 05b3 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 330      C801
 331 05b9 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 331      E1
 332 05be C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 333 05c2 C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 333      00000000 
 334 05ca C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 334      E0
 335 05cf C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 335      E0
 336 05d4 C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 336      00000000 
GAS LISTING /tmp/cca29F5P.s 			page 11


 337 05dc C51D5862 		vaddpd	96(%rdx), %ymm12, %ymm12
 337      60
 338 05e1 C57D2962 		vmovapd	%ymm12, 32(%rdx)
 338      20
 339 05e6 4C39E2   		cmpq	%r12, %rdx
 340 05e9 0F856EFD 		jne	.L15
 340      FFFF
 341 05ef 488D9424 		leaq	256(%rsp), %rdx
 341      00010000 
 342              	.L17:
 343 05f7 C57D2852 		vmovapd	64(%rdx), %ymm10
 343      40
 344 05fc 4883C220 		addq	$32, %rdx
 345 0600 C57D28A2 		vmovapd	160(%rdx), %ymm12
 345      A0000000 
 346 0608 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 346      00000000 
 347 0610 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 348 0614 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 348      C008
 349 061a C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 349      D808
 350 0620 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 350      24E00000 
 350      00
 351 0629 C57B10AC 		vmovsd	224(%rsp), %xmm13
 351      24E00000 
 351      00
 352 0632 C57B10B4 		vmovsd	232(%rsp), %xmm14
 352      24E80000 
 352      00
 353 063b C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 353      C5
 354 0640 C57B10BC 		vmovsd	240(%rsp), %xmm15
 354      24F00000 
 354      00
 355 0649 C5FB109C 		vmovsd	248(%rsp), %xmm3
 355      24F80000 
 355      00
 356 0652 48898424 		movq	%rax, 192(%rsp)
 356      C0000000 
 357 065a C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 357      C6
 358 065f C5FA7EAC 		vmovq	192(%rsp), %xmm5
 358      24C00000 
 358      00
 359 0668 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 359      E801
 360 066e C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 360      C7
 361 0673 C5F97FAC 		vmovdqa	%xmm5, 192(%rsp)
 361      24C00000 
 361      00
 362 067c C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 362      00000000 
 363 0684 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 364 0688 48898424 		movq	%rax, 160(%rsp)
GAS LISTING /tmp/cca29F5P.s 			page 12


 364      A0000000 
 365 0690 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 365      C3
 366 0695 C5FA7E9C 		vmovq	160(%rsp), %xmm3
 366      24A00000 
 366      00
 367 069e C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 367      C801
 368 06a4 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 368      00000000 
 369 06ac C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 369      00000000 
 370 06b4 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 371 06b8 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 372 06bc C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 373 06c0 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 373      00000000 
 374 06c8 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 375 06cc C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 375      00000000 
 376 06d4 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 376      00000000 
 377 06dc C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 377      00000000 
 378 06e4 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 379 06e8 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 379      00000000 
 380 06f0 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 380      00000000 
 381 06f8 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 381      F3
 382 06fd C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 382      F7
 383 0702 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 384 0706 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 384      00000000 
 385 070e C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 385      EE
 386 0713 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 386      00000000 
 387 071b C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 387      00000000 
 388 0723 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 388      00000000 
 389 072b C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 389      DB
 390 0730 C5796FBC 		vmovdqa	192(%rsp), %xmm15
 390      24C00000 
 390      00
 391 0739 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 391      F6
 392 073e C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 392      00000000 
 393 0746 C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 393      D8
 394 074b C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 395 074f C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
GAS LISTING /tmp/cca29F5P.s 			page 13


 395      F6
 396 0754 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 397 0758 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 398 075c C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 398      DE
 399 0761 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 399      ED
 400 0766 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 401 076a C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 401      00000000 
 402 0772 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 402      E601
 403 0778 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 404 077c C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 404      ED
 405 0781 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 406 0785 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 406      F601
 407 078b C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 407      00000000 
 408 0793 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 408      DD
 409 0798 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 409      00000000 
 410 07a0 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 410      00000000 
 411 07a8 C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 411      C5
 412 07ad C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 412      2D000000 
 412      00
 413 07b6 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 413      00000000 
 414 07be C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 414      35000000 
 414      00
 415 07c7 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 415      00000000 
 416 07cf C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 416      D801
 417 07d5 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 417      05000000 
 417      00
 418 07de C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 418      E801
 419 07e4 C5F928C4 		vmovapd	%xmm4, %xmm0
 420 07e8 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 420      01
 421 07ed C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 421      00000000 
 422 07f5 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 422      05000000 
 422      00
 423 07fe C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 423      00000000 
 424 0806 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 424      C601
GAS LISTING /tmp/cca29F5P.s 			page 14


 425 080c C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 426 0810 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 426      D001
 427 0816 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 427      EF40
 428 081c C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 428      E240
 429 0822 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 429      F13E
 430 0828 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 430      F73E
 431 082e C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 432 0832 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 432      CA
 433 0837 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 433      E4B0
 434 083d C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 434      00000000 
 435 0845 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 435      00000000 
 436 084d C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 436      C801
 437 0853 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 437      E1
 438 0858 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 439 085c C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 439      00000000 
 440 0864 C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 440      E0
 441 0869 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 441      E0
 442 086e C51D5925 		vmulpd	.LC26(%rip), %ymm12, %ymm12
 442      00000000 
 443 0876 C51D5862 		vaddpd	96(%rdx), %ymm12, %ymm12
 443      60
 444 087b C57D2962 		vmovapd	%ymm12, 32(%rdx)
 444      20
 445 0880 4939D4   		cmpq	%rdx, %r12
 446 0883 0F856EFD 		jne	.L17
 446      FFFF
 447 0889 488D9424 		leaq	256(%rsp), %rdx
 447      00010000 
 448              	.L19:
 449 0891 C57D2852 		vmovapd	64(%rdx), %ymm10
 449      40
 450 0896 4883C220 		addq	$32, %rdx
 451 089a C57D28A2 		vmovapd	160(%rdx), %ymm12
 451      A0000000 
 452 08a2 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 452      00000000 
 453 08aa C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 454 08ae C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 454      C008
 455 08b4 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 455      D808
 456 08ba C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 456      24E00000 
GAS LISTING /tmp/cca29F5P.s 			page 15


 456      00
 457 08c3 C5FB109C 		vmovsd	224(%rsp), %xmm3
 457      24E00000 
 457      00
 458 08cc C5FB10AC 		vmovsd	232(%rsp), %xmm5
 458      24E80000 
 458      00
 459 08d5 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 459      C3
 460 08da C4E1FB2C 		vcvttsd2siq	%xmm5, %rcx
 460      CD
 461 08df C57B108C 		vmovsd	240(%rsp), %xmm9
 461      24F00000 
 461      00
 462 08e8 C57B109C 		vmovsd	248(%rsp), %xmm11
 462      24F80000 
 462      00
 463 08f1 48898424 		movq	%rax, 192(%rsp)
 463      C0000000 
 464 08f9 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 464      C1
 465 08fe C5FA7EAC 		vmovq	192(%rsp), %xmm5
 465      24C00000 
 465      00
 466 0907 C4E3D122 		vpinsrq	$1, %rcx, %xmm5, %xmm3
 466      D901
 467 090d C4C1FB2C 		vcvttsd2siq	%xmm11, %rcx
 467      CB
 468 0912 C5F97F9C 		vmovdqa	%xmm3, 192(%rsp)
 468      24C00000 
 468      00
 469 091b C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 469      00000000 
 470 0923 48898424 		movq	%rax, 160(%rsp)
 470      A0000000 
 471 092b C5FA7EAC 		vmovq	160(%rsp), %xmm5
 471      24A00000 
 471      00
 472 0934 C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm9
 472      C901
 473 093a C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 473      00000000 
 474 0942 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 474      00000000 
 475 094a C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 476 094e C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 477 0952 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 478 0956 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 479 095a C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 479      00000000 
 480 0962 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 481 0966 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 481      00000000 
 482 096e C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 482      00000000 
 483 0976 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 483      00000000 
GAS LISTING /tmp/cca29F5P.s 			page 16


 484 097e C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 485 0982 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 485      00000000 
 486 098a C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 486      00000000 
 487 0992 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 487      F3
 488 0997 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 488      F7
 489 099c C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 490 09a0 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 490      00000000 
 491 09a8 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 491      EE
 492 09ad C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 492      00000000 
 493 09b5 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 493      00000000 
 494 09bd C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 494      00000000 
 495 09c5 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 495      DB
 496 09ca C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 496      FF
 497 09cf C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 497      F6
 498 09d4 C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 498      00000000 
 499 09dc C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 499      D8
 500 09e1 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 501 09e5 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 501      F6
 502 09ea C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 503 09ee C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 504 09f2 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 504      DE
 505 09f7 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 505      ED
 506 09fc C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 507 0a00 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 507      E601
 508 0a06 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 509 0a0a C4C10973 		vpsllq	$1, %xmm14, %xmm14
 509      F601
 510 0a10 C5796FAC 		vmovdqa	192(%rsp), %xmm13
 510      24C00000 
 510      00
 511 0a19 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 512 0a1d C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 512      00000000 
 513 0a25 C511DB1D 		vpand	.LC20(%rip), %xmm13, %xmm11
 513      00000000 
 514 0a2d C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 514      00000000 
 515 0a35 C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 515      C7
GAS LISTING /tmp/cca29F5P.s 			page 17


 516 0a3a C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 516      DF
 517 0a3f C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 517      00000000 
 518 0a47 C441796F 		vmovdqa	%xmm13, %xmm15
 518      FD
 519 0a4c C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 519      00000000 
 520 0a54 C4621137 		vpcmpgtq	.LC21(%rip), %xmm13, %xmm13
 520      2D000000 
 520      00
 521 0a5d C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 521      35000000 
 521      00
 522 0a66 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 522      00000000 
 523 0a6e C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 523      D801
 524 0a74 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 524      05000000 
 524      00
 525 0a7d C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 525      E801
 526 0a83 C5F928C4 		vmovapd	%xmm4, %xmm0
 527 0a87 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 527      01
 528 0a8c C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 528      00000000 
 529 0a94 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 529      05000000 
 529      00
 530 0a9d C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 530      00000000 
 531 0aa5 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 531      C601
 532 0aab C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 533 0aaf C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 533      D001
 534 0ab5 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 534      EF40
 535 0abb C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 535      E240
 536 0ac1 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 536      F13E
 537 0ac7 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 537      F73E
 538 0acd C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 539 0ad1 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 539      CA
 540 0ad6 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 540      E4B0
 541 0adc C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 541      00000000 
 542 0ae4 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 542      00000000 
 543 0aec C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 543      C801
GAS LISTING /tmp/cca29F5P.s 			page 18


 544 0af2 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 544      E1
 545 0af7 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 546 0afb C57D2962 		vmovapd	%ymm12, 32(%rdx)
 546      20
 547 0b00 C51D5862 		vaddpd	-32(%rdx), %ymm12, %ymm12
 547      E0
 548 0b05 C57D2962 		vmovapd	%ymm12, -32(%rdx)
 548      E0
 549 0b0a 4939D4   		cmpq	%rdx, %r12
 550 0b0d 0F857EFD 		jne	.L19
 550      FFFF
 551 0b13 C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 551      00000000 
 552 0b1b 83EE01   		subl	$1, %esi
 553 0b1e C5DD5984 		vmulpd	256(%rsp), %ymm4, %ymm0
 553      24000100 
 553      00
 554 0b27 C5FD5884 		vaddpd	384(%rsp), %ymm0, %ymm0
 554      24800100 
 554      00
 555 0b30 C5FD2984 		vmovapd	%ymm0, 384(%rsp)
 555      24800100 
 555      00
 556 0b39 C5DD5984 		vmulpd	288(%rsp), %ymm4, %ymm0
 556      24200100 
 556      00
 557 0b42 C5FD5884 		vaddpd	416(%rsp), %ymm0, %ymm0
 557      24A00100 
 557      00
 558 0b4b C5FD2984 		vmovapd	%ymm0, 416(%rsp)
 558      24A00100 
 558      00
 559 0b54 0F8576F5 		jne	.L30
 559      FFFF
 560 0b5a 4489E8   		movl	%r13d, %eax
 561 0b5d BA1F85EB 		movl	$1374389535, %edx
 561      51
 562 0b62 F7EA     		imull	%edx
 563 0b64 4489E8   		movl	%r13d, %eax
 564 0b67 C1F81F   		sarl	$31, %eax
 565 0b6a C1FA05   		sarl	$5, %edx
 566 0b6d 29C2     		subl	%eax, %edx
 567 0b6f B8640000 		movl	$100, %eax
 567      00
 568 0b74 0FAFD0   		imull	%eax, %edx
 569 0b77 4489E8   		movl	%r13d, %eax
 570 0b7a 29D0     		subl	%edx, %eax
 571 0b7c 83F801   		cmpl	$1, %eax
 572 0b7f 0F849300 		je	.L22
 572      0000
 573              	.L28:
 574 0b85 4183C508 		addl	$8, %r13d
 575 0b89 4983C640 		addq	$64, %r14
 576 0b8d 4181FDE0 		cmpl	$18144, %r13d
 576      460000
 577 0b94 0F85D3F4 		jne	.L12
GAS LISTING /tmp/cca29F5P.s 			page 19


 577      FFFF
 578 0b9a C5F877   		vzeroupper
 579 0b9d E8000000 		call	clock
 579      00
 580 0ba2 BA0C0000 		movl	$12, %edx
 580      00
 581 0ba7 4989C4   		movq	%rax, %r12
 582 0baa BE000000 		movl	$.LC31, %esi
 582      00
 583 0baf BF000000 		movl	$_ZSt4cout, %edi
 583      00
 584 0bb4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 584      00
 585 0bb9 4C89E1   		movq	%r12, %rcx
 586 0bbc 482B8C24 		subq	152(%rsp), %rcx
 586      98000000 
 587 0bc4 48BECFF7 		movabsq	$2361183241434822607, %rsi
 587      53E3A59B 
 587      C420
 588 0bce BF000000 		movl	$_ZSt4cout, %edi
 588      00
 589 0bd3 4889C8   		movq	%rcx, %rax
 590 0bd6 48C1F93F 		sarq	$63, %rcx
 591 0bda 48F7EE   		imulq	%rsi
 592 0bdd 4889D6   		movq	%rdx, %rsi
 593 0be0 48C1FE07 		sarq	$7, %rsi
 594 0be4 4829CE   		subq	%rcx, %rsi
 595 0be7 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 595      00
 596 0bec BE000000 		movl	$.LC32, %esi
 596      00
 597 0bf1 4889C7   		movq	%rax, %rdi
 598 0bf4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 598      00
 599 0bf9 4889C7   		movq	%rax, %rdi
 600 0bfc E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 600      00
 601 0c01 488D65D8 		leaq	-40(%rbp), %rsp
 602 0c05 31C0     		xorl	%eax, %eax
 603 0c07 5B       		popq	%rbx
 604 0c08 415C     		popq	%r12
 605 0c0a 415D     		popq	%r13
 606 0c0c 415E     		popq	%r14
 607 0c0e 415F     		popq	%r15
 608 0c10 5D       		popq	%rbp
 609              		.cfi_remember_state
 610              		.cfi_def_cfa 7, 8
 611 0c11 C3       		ret
 612              		.p2align 4,,10
 613 0c12 660F1F44 		.p2align 3
 613      0000
 614              	.L22:
 615              		.cfi_restore_state
 616 0c18 4C8DBC24 		leaq	256(%rsp), %r15
 616      00010000 
 617              	.L29:
 618 0c20 C4C17B10 		vmovsd	128(%r15), %xmm3
GAS LISTING /tmp/cca29F5P.s 			page 20


 618      9F800000 
 618      00
 619 0c29 BA040000 		movl	$4, %edx
 619      00
 620 0c2e BE000000 		movl	$.LC28, %esi
 620      00
 621 0c33 C4C17B10 		vmovsd	192(%r15), %xmm0
 621      87C00000 
 621      00
 622 0c3c BF000000 		movl	$_ZSt4cout, %edi
 622      00
 623 0c41 C5FD2934 		vmovapd	%ymm6, (%rsp)
 623      24
 624 0c46 C5FD2954 		vmovapd	%ymm2, 32(%rsp)
 624      2420
 625 0c4c C5FD294C 		vmovapd	%ymm1, 64(%rsp)
 625      2440
 626 0c52 C57D2944 		vmovapd	%ymm8, 96(%rsp)
 626      2460
 627 0c58 C5FB119C 		vmovsd	%xmm3, 160(%rsp)
 627      24A00000 
 627      00
 628 0c61 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 628      24C00000 
 628      00
 629 0c6a C5F877   		vzeroupper
 630 0c6d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 630      00
 631 0c72 C5FB1084 		vmovsd	192(%rsp), %xmm0
 631      24C00000 
 631      00
 632 0c7b BF000000 		movl	$_ZSt4cout, %edi
 632      00
 633 0c80 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 633      00
 634 0c85 BA030000 		movl	$3, %edx
 634      00
 635 0c8a BE000000 		movl	$.LC29, %esi
 635      00
 636 0c8f 4889C7   		movq	%rax, %rdi
 637 0c92 4889C3   		movq	%rax, %rbx
 638 0c95 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 638      00
 639 0c9a C5FB109C 		vmovsd	160(%rsp), %xmm3
 639      24A00000 
 639      00
 640 0ca3 4889DF   		movq	%rbx, %rdi
 641 0ca6 C5F928C3 		vmovapd	%xmm3, %xmm0
 642 0caa E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 642      00
 643 0caf 4889C3   		movq	%rax, %rbx
 644 0cb2 488B00   		movq	(%rax), %rax
 645 0cb5 C57D2844 		vmovapd	96(%rsp), %ymm8
 645      2460
 646 0cbb C5FD284C 		vmovapd	64(%rsp), %ymm1
 646      2440
 647 0cc1 C5FD2854 		vmovapd	32(%rsp), %ymm2
GAS LISTING /tmp/cca29F5P.s 			page 21


 647      2420
 648 0cc7 488B40E8 		movq	-24(%rax), %rax
 649 0ccb C5FD2834 		vmovapd	(%rsp), %ymm6
 649      24
 650 0cd0 488B9403 		movq	240(%rbx,%rax), %rdx
 650      F0000000 
 651 0cd8 4885D2   		testq	%rdx, %rdx
 652 0cdb 0F84D200 		je	.L33
 652      0000
 653 0ce1 807A3800 		cmpb	$0, 56(%rdx)
 654 0ce5 7468     		je	.L26
 655 0ce7 0FB64243 		movzbl	67(%rdx), %eax
 656              	.L27:
 657 0ceb 0FBEF0   		movsbl	%al, %esi
 658 0cee 4889DF   		movq	%rbx, %rdi
 659 0cf1 C5FD2974 		vmovapd	%ymm6, 64(%rsp)
 659      2440
 660 0cf7 C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 660      2460
 661 0cfd C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 661      24A00000 
 661      00
 662 0d06 C57D2984 		vmovapd	%ymm8, 192(%rsp)
 662      24C00000 
 662      00
 663 0d0f C5F877   		vzeroupper
 664 0d12 4983C720 		addq	$32, %r15
 665 0d16 E8000000 		call	_ZNSo3putEc
 665      00
 666 0d1b 4889C7   		movq	%rax, %rdi
 667 0d1e E8000000 		call	_ZNSo5flushEv
 667      00
 668 0d23 4D39E7   		cmpq	%r12, %r15
 669 0d26 C57D2884 		vmovapd	192(%rsp), %ymm8
 669      24C00000 
 669      00
 670 0d2f C5FD288C 		vmovapd	160(%rsp), %ymm1
 670      24A00000 
 670      00
 671 0d38 C5FD2854 		vmovapd	96(%rsp), %ymm2
 671      2460
 672 0d3e C5FD2874 		vmovapd	64(%rsp), %ymm6
 672      2440
 673 0d44 0F85D6FE 		jne	.L29
 673      FFFF
 674 0d4a E936FEFF 		jmp	.L28
 674      FF
 675              	.L26:
 676 0d4f 4889D7   		movq	%rdx, %rdi
 677 0d52 C5FD2974 		vmovapd	%ymm6, 32(%rsp)
 677      2420
 678 0d58 48899424 		movq	%rdx, 192(%rsp)
 678      C0000000 
 679 0d60 C5FD2954 		vmovapd	%ymm2, 64(%rsp)
 679      2440
 680 0d66 C5FD294C 		vmovapd	%ymm1, 96(%rsp)
 680      2460
GAS LISTING /tmp/cca29F5P.s 			page 22


 681 0d6c C57D2984 		vmovapd	%ymm8, 160(%rsp)
 681      24A00000 
 681      00
 682 0d75 C5F877   		vzeroupper
 683 0d78 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 683      00
 684 0d7d 488B9424 		movq	192(%rsp), %rdx
 684      C0000000 
 685 0d85 BE0A0000 		movl	$10, %esi
 685      00
 686 0d8a 488B02   		movq	(%rdx), %rax
 687 0d8d 4889D7   		movq	%rdx, %rdi
 688 0d90 FF5030   		call	*48(%rax)
 689 0d93 C5FD2874 		vmovapd	32(%rsp), %ymm6
 689      2420
 690 0d99 C5FD2854 		vmovapd	64(%rsp), %ymm2
 690      2440
 691 0d9f C5FD284C 		vmovapd	96(%rsp), %ymm1
 691      2460
 692 0da5 C57D2884 		vmovapd	160(%rsp), %ymm8
 692      24A00000 
 692      00
 693 0dae E938FFFF 		jmp	.L27
 693      FF
 694              	.L33:
 695 0db3 C5F877   		vzeroupper
 696 0db6 E8000000 		call	_ZSt16__throw_bad_castv
 696      00
 697              		.cfi_endproc
 698              	.LFE4443:
 699              		.size	main, .-main
 700 0dbb 0F1F4400 		.p2align 4,,15
 700      00
 701              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 702              	_GLOBAL__sub_I__Z8linspaceddi:
 703              	.LFB4703:
 704              		.cfi_startproc
 705 0dc0 4883EC08 		subq	$8, %rsp
 706              		.cfi_def_cfa_offset 16
 707 0dc4 BF000000 		movl	$_ZStL8__ioinit, %edi
 707      00
 708 0dc9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 708      00
 709 0dce BA000000 		movl	$__dso_handle, %edx
 709      00
 710 0dd3 BE000000 		movl	$_ZStL8__ioinit, %esi
 710      00
 711 0dd8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 711      00
 712 0ddd 4883C408 		addq	$8, %rsp
 713              		.cfi_def_cfa_offset 8
 714 0de1 E9000000 		jmp	__cxa_atexit
 714      00
 715              		.cfi_endproc
 716              	.LFE4703:
 717              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 718              		.section	.init_array,"aw"
GAS LISTING /tmp/cca29F5P.s 			page 23


 719              		.align 8
 720 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 720      00000000 
 721              		.section	.rodata
 722              		.align 32
 723              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 724              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 725              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 726 0000 FFFFFFFF 		.long	-1
 727 0004 FFFFFF7F 		.long	2147483647
 728 0008 FFFFFFFF 		.long	-1
 729 000c FFFFFF7F 		.long	2147483647
 730 0010 FFFFFFFF 		.long	-1
 731 0014 FFFFFF7F 		.long	2147483647
 732 0018 FFFFFFFF 		.long	-1
 733 001c FFFFFF7F 		.long	2147483647
 734              		.local	_ZStL8__ioinit
 735              		.comm	_ZStL8__ioinit,1,1
 736              		.section	.rodata.cst8,"aM",@progbits,8
 737              		.align 8
 738              	.LC0:
 739 0000 9A999999 		.long	2576980378
 740 0004 9999B93F 		.long	1069128089
 741              		.align 8
 742              	.LC1:
 743 0008 00000000 		.long	0
 744 000c 0000F03F 		.long	1072693248
 745              		.section	.rodata.cst32,"aM",@progbits,32
 746              		.align 32
 747              	.LC2:
 748 0000 83C8C96D 		.long	1841940611
 749 0004 305FE43F 		.long	1071931184
 750 0008 83C8C96D 		.long	1841940611
 751 000c 305FE43F 		.long	1071931184
 752 0010 83C8C96D 		.long	1841940611
 753 0014 305FE43F 		.long	1071931184
 754 0018 83C8C96D 		.long	1841940611
 755 001c 305FE43F 		.long	1071931184
 756              		.align 32
 757              	.LC3:
 758 0020 00000050 		.long	1342177280
 759 0024 FB21F93F 		.long	1073291771
 760 0028 00000050 		.long	1342177280
 761 002c FB21F93F 		.long	1073291771
 762 0030 00000050 		.long	1342177280
 763 0034 FB21F93F 		.long	1073291771
 764 0038 00000050 		.long	1342177280
 765 003c FB21F93F 		.long	1073291771
 766              		.align 32
 767              	.LC4:
 768 0040 00000060 		.long	1610612736
 769 0044 B410513E 		.long	1045500084
 770 0048 00000060 		.long	1610612736
 771 004c B410513E 		.long	1045500084
 772 0050 00000060 		.long	1610612736
 773 0054 B410513E 		.long	1045500084
 774 0058 00000060 		.long	1610612736
GAS LISTING /tmp/cca29F5P.s 			page 24


 775 005c B410513E 		.long	1045500084
 776              		.align 32
 777              	.LC5:
 778 0060 075C1433 		.long	856972295
 779 0064 26A6913C 		.long	1016178214
 780 0068 075C1433 		.long	856972295
 781 006c 26A6913C 		.long	1016178214
 782 0070 075C1433 		.long	856972295
 783 0074 26A6913C 		.long	1016178214
 784 0078 075C1433 		.long	856972295
 785 007c 26A6913C 		.long	1016178214
 786              		.align 32
 787              	.LC6:
 788 0080 D0F71011 		.long	286324688
 789 0084 1111813F 		.long	1065423121
 790 0088 D0F71011 		.long	286324688
 791 008c 1111813F 		.long	1065423121
 792 0090 D0F71011 		.long	286324688
 793 0094 1111813F 		.long	1065423121
 794 0098 D0F71011 		.long	286324688
 795 009c 1111813F 		.long	1065423121
 796              		.align 32
 797              	.LC7:
 798 00a0 48555555 		.long	1431655752
 799 00a4 5555C5BF 		.long	-1077586603
 800 00a8 48555555 		.long	1431655752
 801 00ac 5555C5BF 		.long	-1077586603
 802 00b0 48555555 		.long	1431655752
 803 00b4 5555C5BF 		.long	-1077586603
 804 00b8 48555555 		.long	1431655752
 805 00bc 5555C5BF 		.long	-1077586603
 806              		.align 32
 807              	.LC8:
 808 00c0 CD9CD11F 		.long	533830861
 809 00c4 FDD8E53D 		.long	1038473469
 810 00c8 CD9CD11F 		.long	533830861
 811 00cc FDD8E53D 		.long	1038473469
 812 00d0 CD9CD11F 		.long	533830861
 813 00d4 FDD8E53D 		.long	1038473469
 814 00d8 CD9CD11F 		.long	533830861
 815 00dc FDD8E53D 		.long	1038473469
 816              		.align 32
 817              	.LC9:
 818 00e0 5D1F29A9 		.long	2838044509
 819 00e4 E5E55ABE 		.long	-1101339163
 820 00e8 5D1F29A9 		.long	2838044509
 821 00ec E5E55ABE 		.long	-1101339163
 822 00f0 5D1F29A9 		.long	2838044509
 823 00f4 E5E55ABE 		.long	-1101339163
 824 00f8 5D1F29A9 		.long	2838044509
 825 00fc E5E55ABE 		.long	-1101339163
 826              		.align 32
 827              	.LC10:
 828 0100 A1487D56 		.long	1451051169
 829 0104 E31DC73E 		.long	1053236707
 830 0108 A1487D56 		.long	1451051169
 831 010c E31DC73E 		.long	1053236707
GAS LISTING /tmp/cca29F5P.s 			page 25


 832 0110 A1487D56 		.long	1451051169
 833 0114 E31DC73E 		.long	1053236707
 834 0118 A1487D56 		.long	1451051169
 835 011c E31DC73E 		.long	1053236707
 836              		.align 32
 837              	.LC11:
 838 0120 03DFBF19 		.long	432004867
 839 0124 A0012ABF 		.long	-1087766112
 840 0128 03DFBF19 		.long	432004867
 841 012c A0012ABF 		.long	-1087766112
 842 0130 03DFBF19 		.long	432004867
 843 0134 A0012ABF 		.long	-1087766112
 844 0138 03DFBF19 		.long	432004867
 845 013c A0012ABF 		.long	-1087766112
 846              		.align 32
 847              	.LC12:
 848 0140 914FC116 		.long	381767569
 849 0144 6CC156BF 		.long	-1084833428
 850 0148 914FC116 		.long	381767569
 851 014c 6CC156BF 		.long	-1084833428
 852 0150 914FC116 		.long	381767569
 853 0154 6CC156BF 		.long	-1084833428
 854 0158 914FC116 		.long	381767569
 855 015c 6CC156BF 		.long	-1084833428
 856              		.align 32
 857              	.LC13:
 858 0160 4B555555 		.long	1431655755
 859 0164 5555A53F 		.long	1067799893
 860 0168 4B555555 		.long	1431655755
 861 016c 5555A53F 		.long	1067799893
 862 0170 4B555555 		.long	1431655755
 863 0174 5555A53F 		.long	1067799893
 864 0178 4B555555 		.long	1431655755
 865 017c 5555A53F 		.long	1067799893
 866              		.align 32
 867              	.LC14:
 868 0180 9B1A86A0 		.long	2693143195
 869 0184 49FAA8BD 		.long	-1112999351
 870 0188 9B1A86A0 		.long	2693143195
 871 018c 49FAA8BD 		.long	-1112999351
 872 0190 9B1A86A0 		.long	2693143195
 873 0194 49FAA8BD 		.long	-1112999351
 874 0198 9B1A86A0 		.long	2693143195
 875 019c 49FAA8BD 		.long	-1112999351
 876              		.align 32
 877              	.LC15:
 878 01a0 053F4E7B 		.long	2068725509
 879 01a4 9DEE213E 		.long	1042411165
 880 01a8 053F4E7B 		.long	2068725509
 881 01ac 9DEE213E 		.long	1042411165
 882 01b0 053F4E7B 		.long	2068725509
 883 01b4 9DEE213E 		.long	1042411165
 884 01b8 053F4E7B 		.long	2068725509
 885 01bc 9DEE213E 		.long	1042411165
 886              		.align 32
 887              	.LC16:
 888 01c0 C64BAC7E 		.long	2125220806
GAS LISTING /tmp/cca29F5P.s 			page 26


 889 01c4 4F7E92BE 		.long	-1097695665
 890 01c8 C64BAC7E 		.long	2125220806
 891 01cc 4F7E92BE 		.long	-1097695665
 892 01d0 C64BAC7E 		.long	2125220806
 893 01d4 4F7E92BE 		.long	-1097695665
 894 01d8 C64BAC7E 		.long	2125220806
 895 01dc 4F7E92BE 		.long	-1097695665
 896              		.align 32
 897              	.LC17:
 898 01e0 F544C819 		.long	432555253
 899 01e4 A001FA3E 		.long	1056571808
 900 01e8 F544C819 		.long	432555253
 901 01ec A001FA3E 		.long	1056571808
 902 01f0 F544C819 		.long	432555253
 903 01f4 A001FA3E 		.long	1056571808
 904 01f8 F544C819 		.long	432555253
 905 01fc A001FA3E 		.long	1056571808
 906              		.align 32
 907              	.LC18:
 908 0200 00000000 		.long	0
 909 0204 0000E03F 		.long	1071644672
 910 0208 00000000 		.long	0
 911 020c 0000E03F 		.long	1071644672
 912 0210 00000000 		.long	0
 913 0214 0000E03F 		.long	1071644672
 914 0218 00000000 		.long	0
 915 021c 0000E03F 		.long	1071644672
 916              		.align 32
 917              	.LC19:
 918 0220 00000000 		.long	0
 919 0224 0000F03F 		.long	1072693248
 920 0228 00000000 		.long	0
 921 022c 0000F03F 		.long	1072693248
 922 0230 00000000 		.long	0
 923 0234 0000F03F 		.long	1072693248
 924 0238 00000000 		.long	0
 925 023c 0000F03F 		.long	1072693248
 926              		.section	.rodata.cst16,"aM",@progbits,16
 927              		.align 16
 928              	.LC20:
 929 0000 01000000 		.quad	1
 929      00000000 
 930 0008 01000000 		.quad	1
 930      00000000 
 931              		.align 16
 932              	.LC21:
 933 0010 00000000 		.quad	36028797018963968
 933      00008000 
 934 0018 00000000 		.quad	36028797018963968
 934      00008000 
 935              		.align 16
 936              	.LC22:
 937 0020 00000000 		.quad	-9007199254740992
 937      0000E0FF 
 938 0028 00000000 		.quad	-9007199254740992
 938      0000E0FF 
 939              		.align 16
GAS LISTING /tmp/cca29F5P.s 			page 27


 940              	.LC23:
 941 0030 00000000 		.quad	-9223372036854775808
 941      00000080 
 942 0038 00000000 		.quad	-9223372036854775808
 942      00000080 
 943              		.section	.rodata.cst32
 944              		.align 32
 945              	.LC24:
 946 0240 7B14AE47 		.long	1202590843
 947 0244 E17A743F 		.long	1064598241
 948 0248 7B14AE47 		.long	1202590843
 949 024c E17A743F 		.long	1064598241
 950 0250 7B14AE47 		.long	1202590843
 951 0254 E17A743F 		.long	1064598241
 952 0258 7B14AE47 		.long	1202590843
 953 025c E17A743F 		.long	1064598241
 954              		.align 32
 955              	.LC25:
 956 0260 00000000 		.long	0
 957 0264 00000040 		.long	1073741824
 958 0268 00000000 		.long	0
 959 026c 00000040 		.long	1073741824
 960 0270 00000000 		.long	0
 961 0274 00000040 		.long	1073741824
 962 0278 00000000 		.long	0
 963 027c 00000040 		.long	1073741824
 964              		.align 32
 965              	.LC26:
 966 0280 7B14AE47 		.long	1202590843
 967 0284 E17A843F 		.long	1065646817
 968 0288 7B14AE47 		.long	1202590843
 969 028c E17A843F 		.long	1065646817
 970 0290 7B14AE47 		.long	1202590843
 971 0294 E17A843F 		.long	1065646817
 972 0298 7B14AE47 		.long	1202590843
 973 029c E17A843F 		.long	1065646817
 974              		.align 32
 975              	.LC27:
 976 02a0 4F1BE8B4 		.long	3035110223
 977 02a4 814E5B3F 		.long	1062948481
 978 02a8 4F1BE8B4 		.long	3035110223
 979 02ac 814E5B3F 		.long	1062948481
 980 02b0 4F1BE8B4 		.long	3035110223
 981 02b4 814E5B3F 		.long	1062948481
 982 02b8 4F1BE8B4 		.long	3035110223
 983 02bc 814E5B3F 		.long	1062948481
 984              		.align 32
 985              	.LC30:
 986 02c0 9A999999 		.long	2576980378
 987 02c4 9999B93F 		.long	1069128089
 988 02c8 9A999999 		.long	2576980378
 989 02cc 9999B93F 		.long	1069128089
 990 02d0 9A999999 		.long	2576980378
 991 02d4 9999B93F 		.long	1069128089
 992 02d8 9A999999 		.long	2576980378
 993 02dc 9999B93F 		.long	1069128089
 994              		.section	.rodata.cst16
GAS LISTING /tmp/cca29F5P.s 			page 28


 995              		.align 16
 996              	.LC33:
 997 0040 FFFFFFFF 		.quad	-1
 997      FFFFFFFF 
 998 0048 FFFFFFFF 		.quad	-1
 998      FFFFFFFF 
 999              		.hidden	__dso_handle
 1000              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1001              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cca29F5P.s 			page 29


DEFINED SYMBOLS
                            *ABS*:0000000000000000 FLOPS_TEST_TRANSZENDENTAL.cpp
     /tmp/cca29F5P.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cca29F5P.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cca29F5P.s:81     .text.startup:0000000000000000 main
     /tmp/cca29F5P.s:725    .rodata:0000000000000000 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cca29F5P.s:702    .text.startup:0000000000000dc0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cca29F5P.s:742    .rodata.cst8:0000000000000008 .LC1
     /tmp/cca29F5P.s:738    .rodata.cst8:0000000000000000 .LC0
     /tmp/cca29F5P.s:747    .rodata.cst32:0000000000000000 .LC2
     /tmp/cca29F5P.s:897    .rodata.cst32:00000000000001e0 .LC17
     /tmp/cca29F5P.s:907    .rodata.cst32:0000000000000200 .LC18
     /tmp/cca29F5P.s:917    .rodata.cst32:0000000000000220 .LC19
     /tmp/cca29F5P.s:985    .rodata.cst32:00000000000002c0 .LC30
     /tmp/cca29F5P.s:757    .rodata.cst32:0000000000000020 .LC3
     /tmp/cca29F5P.s:767    .rodata.cst32:0000000000000040 .LC4
     /tmp/cca29F5P.s:777    .rodata.cst32:0000000000000060 .LC5
     /tmp/cca29F5P.s:807    .rodata.cst32:00000000000000c0 .LC8
     /tmp/cca29F5P.s:787    .rodata.cst32:0000000000000080 .LC6
     /tmp/cca29F5P.s:827    .rodata.cst32:0000000000000100 .LC10
     /tmp/cca29F5P.s:817    .rodata.cst32:00000000000000e0 .LC9
     /tmp/cca29F5P.s:797    .rodata.cst32:00000000000000a0 .LC7
     /tmp/cca29F5P.s:837    .rodata.cst32:0000000000000120 .LC11
     /tmp/cca29F5P.s:867    .rodata.cst32:0000000000000180 .LC14
     /tmp/cca29F5P.s:847    .rodata.cst32:0000000000000140 .LC12
     /tmp/cca29F5P.s:877    .rodata.cst32:00000000000001a0 .LC15
     /tmp/cca29F5P.s:857    .rodata.cst32:0000000000000160 .LC13
     /tmp/cca29F5P.s:887    .rodata.cst32:00000000000001c0 .LC16
     /tmp/cca29F5P.s:928    .rodata.cst16:0000000000000000 .LC20
     /tmp/cca29F5P.s:936    .rodata.cst16:0000000000000020 .LC22
     /tmp/cca29F5P.s:996    .rodata.cst16:0000000000000040 .LC33
     /tmp/cca29F5P.s:932    .rodata.cst16:0000000000000010 .LC21
     /tmp/cca29F5P.s:940    .rodata.cst16:0000000000000030 .LC23
     /tmp/cca29F5P.s:945    .rodata.cst32:0000000000000240 .LC24
     /tmp/cca29F5P.s:955    .rodata.cst32:0000000000000260 .LC25
     /tmp/cca29F5P.s:965    .rodata.cst32:0000000000000280 .LC26
     /tmp/cca29F5P.s:975    .rodata.cst32:00000000000002a0 .LC27

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
GAS LISTING /tmp/cca29F5P.s 			page 30


