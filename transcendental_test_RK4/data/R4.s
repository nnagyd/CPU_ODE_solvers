GAS LISTING /tmp/ccUAmGVt.s 			page 1


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
GAS LISTING /tmp/ccUAmGVt.s 			page 2


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
GAS LISTING /tmp/ccUAmGVt.s 			page 3


 100 0019 4881ECF0 		subq	$752, %rsp
 100      020000
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 103      00000000 
 104 0028 4C8DA424 		leaq	368(%rsp), %r12
 104      70010000 
 105 0030 C5FB1005 		vmovsd	.LC0(%rip), %xmm0
 105      00000000 
 106 0038 E8000000 		call	_Z8linspaceddi
 106      00
 107 003d 4989C6   		movq	%rax, %r14
 108 0040 E8000000 		call	clock
 108      00
 109 0045 C5FD2835 		vmovapd	.LC2(%rip), %ymm6
 109      00000000 
 110 004d 48894424 		movq	%rax, 8(%rsp)
 110      08
 111 0052 C57D2805 		vmovapd	.LC17(%rip), %ymm8
 111      00000000 
 112 005a C5FD280D 		vmovapd	.LC18(%rip), %ymm1
 112      00000000 
 113 0062 C5FD2815 		vmovapd	.LC19(%rip), %ymm2
 113      00000000 
 114              	.L12:
 115 006a C4C17D10 		vmovupd	(%r14), %ymm0
 115      06
 116 006f 488DB424 		leaq	496(%rsp), %rsi
 116      F0010000 
 117 0077 BF102700 		movl	$10000, %edi
 117      00
 118 007c C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 118      00000000 
 119 0084 C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 119      24700200 
 119      00
 120 008d C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 121 0091 C5FD29BC 		vmovapd	%ymm7, 496(%rsp)
 121      24F00100 
 121      00
 122 009a C5FD2984 		vmovapd	%ymm0, 240(%rsp)
 122      24F00000 
 122      00
 123 00a3 C4C17D10 		vmovupd	32(%r14), %ymm3
 123      5E20
 124 00a9 C5FD29BC 		vmovapd	%ymm7, 528(%rsp)
 124      24100200 
 124      00
 125 00b2 C5FD299C 		vmovapd	%ymm3, 656(%rsp)
 125      24900200 
 125      00
 126 00bb C5FD2984 		vmovapd	%ymm0, 272(%rsp)
 126      24100100 
 126      00
 127 00c4 C4C17D10 		vmovupd	64(%r14), %ymm3
 127      5E40
GAS LISTING /tmp/ccUAmGVt.s 			page 4


 128 00ca C5FD29BC 		vmovapd	%ymm7, 560(%rsp)
 128      24300200 
 128      00
 129 00d3 C5FD299C 		vmovapd	%ymm3, 688(%rsp)
 129      24B00200 
 129      00
 130 00dc C5FD2984 		vmovapd	%ymm0, 304(%rsp)
 130      24300100 
 130      00
 131 00e5 C4C17D10 		vmovupd	96(%r14), %ymm3
 131      5E60
 132 00eb C5FD29BC 		vmovapd	%ymm7, 592(%rsp)
 132      24500200 
 132      00
 133 00f4 C5FD28F8 		vmovapd	%ymm0, %ymm7
 134 00f8 C5FD299C 		vmovapd	%ymm3, 720(%rsp)
 134      24D00200 
 134      00
 135 0101 C5FD2984 		vmovapd	%ymm0, 336(%rsp)
 135      24500100 
 135      00
 136 010a 660F1F44 		.p2align 4,,10
 136      0000
 137              		.p2align 3
 138              	.L30:
 139 0110 4C89E2   		movq	%r12, %rdx
 140              	.L21:
 141 0113 C57D2892 		vmovapd	128(%rdx), %ymm10
 141      80000000 
 142 011b 4883C220 		addq	$32, %rdx
 143 011f C57D28A2 		vmovapd	224(%rdx), %ymm12
 143      E0000000 
 144 0127 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 144      00000000 
 145 012f C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 146 0133 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 146      C008
 147 0139 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 147      D808
 148 013f C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 148      24D00000 
 148      00
 149 0148 C57B10B4 		vmovsd	208(%rsp), %xmm14
 149      24D00000 
 149      00
 150 0151 C57B10BC 		vmovsd	216(%rsp), %xmm15
 150      24D80000 
 150      00
 151 015a C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 151      C6
 152 015f C5FB109C 		vmovsd	224(%rsp), %xmm3
 152      24E00000 
 152      00
 153 0168 48898424 		movq	%rax, 176(%rsp)
 153      B0000000 
 154 0170 C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 154      C7
GAS LISTING /tmp/ccUAmGVt.s 			page 5


 155 0175 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 155      24B00000 
 155      00
 156 017e C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 156      E801
 157 0184 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 157      C3
 158 0189 C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 158      24B00000 
 158      00
 159 0192 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 159      24E80000 
 159      00
 160 019b 48898424 		movq	%rax, 144(%rsp)
 160      90000000 
 161 01a3 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 161      C5
 162 01a8 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 162      00000000 
 163 01b0 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 163      24900000 
 163      00
 164 01b9 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 165 01bd C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 165      C801
 166 01c3 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 166      00000000 
 167 01cb C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 167      00000000 
 168 01d3 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 169 01d7 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 170 01db C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 171 01df C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 171      00000000 
 172 01e7 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 173 01eb C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 173      00000000 
 174 01f3 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 174      00000000 
 175 01fb C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 175      00000000 
 176 0203 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 177 0207 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 177      00000000 
 178 020f C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 178      00000000 
 179 0217 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 179      F3
 180 021c C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 180      F7
 181 0221 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 182 0225 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 182      00000000 
 183 022d C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 183      EE
 184 0232 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 184      00000000 
GAS LISTING /tmp/ccUAmGVt.s 			page 6


 185 023a C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 185      00000000 
 186 0242 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 186      00000000 
 187 024a C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 187      DB
 188 024f C5796FBC 		vmovdqa	176(%rsp), %xmm15
 188      24B00000 
 188      00
 189 0258 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 189      F6
 190 025d C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 190      00000000 
 191 0265 C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 191      D8
 192 026a C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 193 026e C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 193      F6
 194 0273 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 195 0277 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 196 027b C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 196      DE
 197 0280 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 197      ED
 198 0285 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 199 0289 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 199      00000000 
 200 0291 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 200      E601
 201 0297 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 202 029b C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 202      ED
 203 02a0 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 204 02a4 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 204      F601
 205 02aa C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 205      00000000 
 206 02b2 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 206      DD
 207 02b7 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 207      00000000 
 208 02bf C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 208      00000000 
 209 02c7 C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 209      C5
 210 02cc C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 210      2D000000 
 210      00
 211 02d5 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 211      00000000 
 212 02dd C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 212      35000000 
 212      00
 213 02e6 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 213      00000000 
 214 02ee C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 214      D801
GAS LISTING /tmp/ccUAmGVt.s 			page 7


 215 02f4 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 215      05000000 
 215      00
 216 02fd C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 216      E801
 217 0303 C5F928C4 		vmovapd	%xmm4, %xmm0
 218 0307 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 218      01
 219 030c C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 219      00000000 
 220 0314 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 220      05000000 
 220      00
 221 031d C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 221      00000000 
 222 0325 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 222      C601
 223 032b C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 224 032f C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 224      D001
 225 0335 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 225      EF40
 226 033b C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 226      E240
 227 0341 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 227      F13E
 228 0347 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 228      F73E
 229 034d C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 230 0351 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 230      CA
 231 0356 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 231      E4B0
 232 035c C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 232      00000000 
 233 0364 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 233      00000000 
 234 036c C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 234      C801
 235 0372 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 235      E1
 236 0377 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 237 037b C57D29A2 		vmovapd	%ymm12, -160(%rdx)
 237      60FFFFFF 
 238 0383 C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 238      00000000 
 239 038b C51D5862 		vaddpd	96(%rdx), %ymm12, %ymm12
 239      60
 240 0390 C57D2962 		vmovapd	%ymm12, -32(%rdx)
 240      E0
 241 0395 4839F2   		cmpq	%rsi, %rdx
 242 0398 0F8575FD 		jne	.L21
 242      FFFF
 243 039e 488D9424 		leaq	240(%rsp), %rdx
 243      F0000000 
 244              	.L15:
 245 03a6 C57D2892 		vmovapd	128(%rdx), %ymm10
GAS LISTING /tmp/ccUAmGVt.s 			page 8


 245      80000000 
 246 03ae 4883C220 		addq	$32, %rdx
 247 03b2 C57D28A2 		vmovapd	352(%rdx), %ymm12
 247      60010000 
 248 03ba C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 248      00000000 
 249 03c2 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 250 03c6 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 250      C008
 251 03cc C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 251      D808
 252 03d2 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 252      24D00000 
 252      00
 253 03db C5FB10AC 		vmovsd	208(%rsp), %xmm5
 253      24D00000 
 253      00
 254 03e4 C57B108C 		vmovsd	216(%rsp), %xmm9
 254      24D80000 
 254      00
 255 03ed C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 255      C5
 256 03f2 C57B109C 		vmovsd	224(%rsp), %xmm11
 256      24E00000 
 256      00
 257 03fb C57B10AC 		vmovsd	232(%rsp), %xmm13
 257      24E80000 
 257      00
 258 0404 48898424 		movq	%rax, 176(%rsp)
 258      B0000000 
 259 040c C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 259      C1
 260 0411 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 260      24B00000 
 260      00
 261 041a C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 261      E801
 262 0420 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 262      C3
 263 0425 C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 263      24B00000 
 263      00
 264 042e C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 264      00000000 
 265 0436 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 266 043a 48898424 		movq	%rax, 144(%rsp)
 266      90000000 
 267 0442 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 267      C5
 268 0447 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 268      24900000 
 268      00
 269 0450 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 269      C801
 270 0456 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 270      00000000 
 271 045e C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
GAS LISTING /tmp/ccUAmGVt.s 			page 9


 271      00000000 
 272 0466 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 273 046a C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 274 046e C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 275 0472 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 275      00000000 
 276 047a C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 277 047e C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 277      00000000 
 278 0486 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 278      00000000 
 279 048e C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 279      00000000 
 280 0496 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 281 049a C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 281      00000000 
 282 04a2 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 282      00000000 
 283 04aa C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 283      F3
 284 04af C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 284      F7
 285 04b4 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 286 04b8 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 286      00000000 
 287 04c0 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 287      EE
 288 04c5 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 288      00000000 
 289 04cd C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 289      00000000 
 290 04d5 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 290      00000000 
 291 04dd C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 291      DB
 292 04e2 C5796FBC 		vmovdqa	176(%rsp), %xmm15
 292      24B00000 
 292      00
 293 04eb C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 293      F6
 294 04f0 C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 294      00000000 
 295 04f8 C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 295      D8
 296 04fd C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 297 0501 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 297      F6
 298 0506 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 299 050a C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 300 050e C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 300      DE
 301 0513 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 301      ED
 302 0518 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 303 051c C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 303      00000000 
 304 0524 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
GAS LISTING /tmp/ccUAmGVt.s 			page 10


 304      E601
 305 052a C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 306 052e C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 306      ED
 307 0533 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 308 0537 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 308      F601
 309 053d C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 309      00000000 
 310 0545 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 310      DD
 311 054a C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 311      00000000 
 312 0552 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 312      00000000 
 313 055a C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 313      C5
 314 055f C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 314      2D000000 
 314      00
 315 0568 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 315      00000000 
 316 0570 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 316      35000000 
 316      00
 317 0579 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 317      00000000 
 318 0581 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 318      D801
 319 0587 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 319      05000000 
 319      00
 320 0590 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 320      E801
 321 0596 C5F928C4 		vmovapd	%xmm4, %xmm0
 322 059a C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 322      01
 323 059f C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 323      00000000 
 324 05a7 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 324      05000000 
 324      00
 325 05b0 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 325      00000000 
 326 05b8 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 326      C601
 327 05be C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 328 05c2 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 328      D001
 329 05c8 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 329      EF40
 330 05ce C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 330      E240
 331 05d4 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 331      F13E
 332 05da C4C13173 		vpsllq	$62, %xmm15, %xmm9
 332      F73E
GAS LISTING /tmp/ccUAmGVt.s 			page 11


 333 05e0 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 334 05e4 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 334      CA
 335 05e9 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 335      E4B0
 336 05ef C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 336      00000000 
 337 05f7 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 337      00000000 
 338 05ff C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 338      C801
 339 0605 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 339      E1
 340 060a C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 341 060e C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 341      00000000 
 342 0616 C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 342      E0
 343 061b C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 343      E0
 344 0620 C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 344      00000000 
 345 0628 C51D58A2 		vaddpd	224(%rdx), %ymm12, %ymm12
 345      E0000000 
 346 0630 C57D2962 		vmovapd	%ymm12, 96(%rdx)
 346      60
 347 0635 4C39E2   		cmpq	%r12, %rdx
 348 0638 0F8568FD 		jne	.L15
 348      FFFF
 349 063e 488D9424 		leaq	240(%rsp), %rdx
 349      F0000000 
 350              	.L17:
 351 0646 C57D2892 		vmovapd	128(%rdx), %ymm10
 351      80000000 
 352 064e 4883C220 		addq	$32, %rdx
 353 0652 C57D28A2 		vmovapd	352(%rdx), %ymm12
 353      60010000 
 354 065a C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 354      00000000 
 355 0662 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 356 0666 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 356      C008
 357 066c C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 357      D808
 358 0672 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 358      24D00000 
 358      00
 359 067b C57B10AC 		vmovsd	208(%rsp), %xmm13
 359      24D00000 
 359      00
 360 0684 C57B10B4 		vmovsd	216(%rsp), %xmm14
 360      24D80000 
 360      00
 361 068d C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 361      C5
 362 0692 C57B10BC 		vmovsd	224(%rsp), %xmm15
 362      24E00000 
GAS LISTING /tmp/ccUAmGVt.s 			page 12


 362      00
 363 069b C5FB109C 		vmovsd	232(%rsp), %xmm3
 363      24E80000 
 363      00
 364 06a4 48898424 		movq	%rax, 176(%rsp)
 364      B0000000 
 365 06ac C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 365      C6
 366 06b1 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 366      24B00000 
 366      00
 367 06ba C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 367      E801
 368 06c0 C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 368      C7
 369 06c5 C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 369      24B00000 
 369      00
 370 06ce C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 370      00000000 
 371 06d6 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 372 06da 48898424 		movq	%rax, 144(%rsp)
 372      90000000 
 373 06e2 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 373      C3
 374 06e7 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 374      24900000 
 374      00
 375 06f0 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 375      C801
 376 06f6 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 376      00000000 
 377 06fe C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 377      00000000 
 378 0706 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 379 070a C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 380 070e C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 381 0712 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 381      00000000 
 382 071a C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 383 071e C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 383      00000000 
 384 0726 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 384      00000000 
 385 072e C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 385      00000000 
 386 0736 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 387 073a C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 387      00000000 
 388 0742 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 388      00000000 
 389 074a C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 389      F3
 390 074f C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 390      F7
 391 0754 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 392 0758 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
GAS LISTING /tmp/ccUAmGVt.s 			page 13


 392      00000000 
 393 0760 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 393      EE
 394 0765 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 394      00000000 
 395 076d C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 395      00000000 
 396 0775 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 396      00000000 
 397 077d C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 397      DB
 398 0782 C5796FBC 		vmovdqa	176(%rsp), %xmm15
 398      24B00000 
 398      00
 399 078b C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 399      F6
 400 0790 C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 400      00000000 
 401 0798 C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 401      D8
 402 079d C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 403 07a1 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 403      F6
 404 07a6 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 405 07aa C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 406 07ae C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 406      DE
 407 07b3 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 407      ED
 408 07b8 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 409 07bc C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 409      00000000 
 410 07c4 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 410      E601
 411 07ca C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 412 07ce C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 412      ED
 413 07d3 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 414 07d7 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 414      F601
 415 07dd C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 415      00000000 
 416 07e5 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 416      DD
 417 07ea C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 417      00000000 
 418 07f2 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 418      00000000 
 419 07fa C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 419      C5
 420 07ff C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 420      2D000000 
 420      00
 421 0808 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 421      00000000 
 422 0810 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 422      35000000 
GAS LISTING /tmp/ccUAmGVt.s 			page 14


 422      00
 423 0819 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 423      00000000 
 424 0821 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 424      D801
 425 0827 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 425      05000000 
 425      00
 426 0830 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 426      E801
 427 0836 C5F928C4 		vmovapd	%xmm4, %xmm0
 428 083a C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 428      01
 429 083f C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 429      00000000 
 430 0847 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 430      05000000 
 430      00
 431 0850 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 431      00000000 
 432 0858 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 432      C601
 433 085e C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 434 0862 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 434      D001
 435 0868 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 435      EF40
 436 086e C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 436      E240
 437 0874 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 437      F13E
 438 087a C4C13173 		vpsllq	$62, %xmm15, %xmm9
 438      F73E
 439 0880 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 440 0884 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 440      CA
 441 0889 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 441      E4B0
 442 088f C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 442      00000000 
 443 0897 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 443      00000000 
 444 089f C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 444      C801
 445 08a5 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 445      E1
 446 08aa C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 447 08ae C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 447      00000000 
 448 08b6 C5FD5842 		vaddpd	-32(%rdx), %ymm0, %ymm0
 448      E0
 449 08bb C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 449      E0
 450 08c0 C51D5925 		vmulpd	.LC26(%rip), %ymm12, %ymm12
 450      00000000 
 451 08c8 C51D58A2 		vaddpd	224(%rdx), %ymm12, %ymm12
 451      E0000000 
GAS LISTING /tmp/ccUAmGVt.s 			page 15


 452 08d0 C57D2962 		vmovapd	%ymm12, 96(%rdx)
 452      60
 453 08d5 4939D4   		cmpq	%rdx, %r12
 454 08d8 0F8568FD 		jne	.L17
 454      FFFF
 455 08de 488D9424 		leaq	240(%rsp), %rdx
 455      F0000000 
 456              	.L19:
 457 08e6 C57D2892 		vmovapd	128(%rdx), %ymm10
 457      80000000 
 458 08ee 4883C220 		addq	$32, %rdx
 459 08f2 C57D28A2 		vmovapd	352(%rdx), %ymm12
 459      60010000 
 460 08fa C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 460      00000000 
 461 0902 C5DD59C6 		vmulpd	%ymm6, %ymm4, %ymm0
 462 0906 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 462      C008
 463 090c C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 463      D808
 464 0912 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 464      24D00000 
 464      00
 465 091b C5FB109C 		vmovsd	208(%rsp), %xmm3
 465      24D00000 
 465      00
 466 0924 C5FB10AC 		vmovsd	216(%rsp), %xmm5
 466      24D80000 
 466      00
 467 092d C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 467      C3
 468 0932 C4E1FB2C 		vcvttsd2siq	%xmm5, %rcx
 468      CD
 469 0937 C57B108C 		vmovsd	224(%rsp), %xmm9
 469      24E00000 
 469      00
 470 0940 C57B109C 		vmovsd	232(%rsp), %xmm11
 470      24E80000 
 470      00
 471 0949 48898424 		movq	%rax, 176(%rsp)
 471      B0000000 
 472 0951 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 472      C1
 473 0956 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 473      24B00000 
 473      00
 474 095f C4E3D122 		vpinsrq	$1, %rcx, %xmm5, %xmm3
 474      D901
 475 0965 C4C1FB2C 		vcvttsd2siq	%xmm11, %rcx
 475      CB
 476 096a C5F97F9C 		vmovdqa	%xmm3, 176(%rsp)
 476      24B00000 
 476      00
 477 0973 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 477      00000000 
 478 097b 48898424 		movq	%rax, 144(%rsp)
 478      90000000 
GAS LISTING /tmp/ccUAmGVt.s 			page 16


 479 0983 C5FA7EAC 		vmovq	144(%rsp), %xmm5
 479      24900000 
 479      00
 480 098c C463D122 		vpinsrq	$1, %rcx, %xmm5, %xmm9
 480      C901
 481 0992 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 481      00000000 
 482 099a C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 482      00000000 
 483 09a2 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 484 09a6 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 485 09aa C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 486 09ae C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 487 09b2 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 487      00000000 
 488 09ba C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 489 09be C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 489      00000000 
 490 09c6 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 490      00000000 
 491 09ce C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 491      00000000 
 492 09d6 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 493 09da C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 493      00000000 
 494 09e2 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 494      00000000 
 495 09ea C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 495      F3
 496 09ef C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 496      F7
 497 09f4 C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 498 09f8 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 498      00000000 
 499 0a00 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 499      EE
 500 0a05 C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 500      00000000 
 501 0a0d C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 501      00000000 
 502 0a15 C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 502      00000000 
 503 0a1d C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 503      DB
 504 0a22 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 504      FF
 505 0a27 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 505      F6
 506 0a2c C57D591D 		vmulpd	.LC16(%rip), %ymm0, %ymm11
 506      00000000 
 507 0a34 C4412558 		vaddpd	%ymm8, %ymm11, %ymm11
 507      D8
 508 0a39 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 509 0a3d C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 509      F6
 510 0a42 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 511 0a46 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
GAS LISTING /tmp/ccUAmGVt.s 			page 17


 512 0a4a C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 512      DE
 513 0a4f C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 513      ED
 514 0a54 C5ED5CC0 		vsubpd	%ymm0, %ymm2, %ymm0
 515 0a58 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 515      E601
 516 0a5e C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 517 0a62 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 517      F601
 518 0a68 C5796FAC 		vmovdqa	176(%rsp), %xmm13
 518      24B00000 
 518      00
 519 0a71 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 520 0a75 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 520      00000000 
 521 0a7d C511DB1D 		vpand	.LC20(%rip), %xmm13, %xmm11
 521      00000000 
 522 0a85 C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 522      00000000 
 523 0a8d C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 523      C7
 524 0a92 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 524      DF
 525 0a97 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 525      00000000 
 526 0a9f C441796F 		vmovdqa	%xmm13, %xmm15
 526      FD
 527 0aa4 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 527      00000000 
 528 0aac C4621137 		vpcmpgtq	.LC21(%rip), %xmm13, %xmm13
 528      2D000000 
 528      00
 529 0ab5 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 529      35000000 
 529      00
 530 0abe C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 530      00000000 
 531 0ac6 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 531      D801
 532 0acc C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 532      05000000 
 532      00
 533 0ad5 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 533      E801
 534 0adb C5F928C4 		vmovapd	%xmm4, %xmm0
 535 0adf C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 535      01
 536 0ae4 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 536      00000000 
 537 0aec C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 537      05000000 
 537      00
 538 0af5 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 538      00000000 
 539 0afd C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 539      C601
GAS LISTING /tmp/ccUAmGVt.s 			page 18


 540 0b03 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 541 0b07 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 541      D001
 542 0b0d C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 542      EF40
 543 0b13 C4E3654B 		vblendvpd	%ymm4, %ymm2, %ymm3, %ymm4
 543      E240
 544 0b19 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 544      F13E
 545 0b1f C4C13173 		vpsllq	$62, %xmm15, %xmm9
 545      F73E
 546 0b25 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 547 0b29 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 547      CA
 548 0b2e C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 548      E4B0
 549 0b34 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 549      00000000 
 550 0b3c C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 550      00000000 
 551 0b44 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 551      C801
 552 0b4a C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 552      E1
 553 0b4f C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 554 0b53 C57D2962 		vmovapd	%ymm12, 96(%rdx)
 554      60
 555 0b58 C51D5862 		vaddpd	-32(%rdx), %ymm12, %ymm12
 555      E0
 556 0b5d C57D2962 		vmovapd	%ymm12, -32(%rdx)
 556      E0
 557 0b62 4C39E2   		cmpq	%r12, %rdx
 558 0b65 0F857BFD 		jne	.L19
 558      FFFF
 559 0b6b C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 559      00000000 
 560 0b73 83EF01   		subl	$1, %edi
 561 0b76 C5DD5984 		vmulpd	240(%rsp), %ymm4, %ymm0
 561      24F00000 
 561      00
 562 0b7f C5FD5884 		vaddpd	496(%rsp), %ymm0, %ymm0
 562      24F00100 
 562      00
 563 0b88 C5FD2984 		vmovapd	%ymm0, 496(%rsp)
 563      24F00100 
 563      00
 564 0b91 C5DD5984 		vmulpd	272(%rsp), %ymm4, %ymm0
 564      24100100 
 564      00
 565 0b9a C5FD5884 		vaddpd	528(%rsp), %ymm0, %ymm0
 565      24100200 
 565      00
 566 0ba3 C5FD2984 		vmovapd	%ymm0, 528(%rsp)
 566      24100200 
 566      00
 567 0bac C5DD5984 		vmulpd	304(%rsp), %ymm4, %ymm0
 567      24300100 
GAS LISTING /tmp/ccUAmGVt.s 			page 19


 567      00
 568 0bb5 C5FD5884 		vaddpd	560(%rsp), %ymm0, %ymm0
 568      24300200 
 568      00
 569 0bbe C5FD2984 		vmovapd	%ymm0, 560(%rsp)
 569      24300200 
 569      00
 570 0bc7 C5DD5984 		vmulpd	336(%rsp), %ymm4, %ymm0
 570      24500100 
 570      00
 571 0bd0 C5FD5884 		vaddpd	592(%rsp), %ymm0, %ymm0
 571      24500200 
 571      00
 572 0bd9 C5FD2984 		vmovapd	%ymm0, 592(%rsp)
 572      24500200 
 572      00
 573 0be2 0F8528F5 		jne	.L30
 573      FFFF
 574 0be8 4489E8   		movl	%r13d, %eax
 575 0beb BA1F85EB 		movl	$1374389535, %edx
 575      51
 576 0bf0 F7EA     		imull	%edx
 577 0bf2 4489E8   		movl	%r13d, %eax
 578 0bf5 C1F81F   		sarl	$31, %eax
 579 0bf8 C1FA05   		sarl	$5, %edx
 580 0bfb 29C2     		subl	%eax, %edx
 581 0bfd B8640000 		movl	$100, %eax
 581      00
 582 0c02 0FAFD0   		imull	%eax, %edx
 583 0c05 4489E8   		movl	%r13d, %eax
 584 0c08 29D0     		subl	%edx, %eax
 585 0c0a 83F801   		cmpl	$1, %eax
 586 0c0d 0F848D00 		je	.L22
 586      0000
 587              	.L28:
 588 0c13 4183C510 		addl	$16, %r13d
 589 0c17 4983EE80 		subq	$-128, %r14
 590 0c1b 4181FDE0 		cmpl	$18144, %r13d
 590      460000
 591 0c22 0F8542F4 		jne	.L12
 591      FFFF
 592 0c28 C5F877   		vzeroupper
 593 0c2b E8000000 		call	clock
 593      00
 594 0c30 BA0C0000 		movl	$12, %edx
 594      00
 595 0c35 4989C4   		movq	%rax, %r12
 596 0c38 BE000000 		movl	$.LC31, %esi
 596      00
 597 0c3d BF000000 		movl	$_ZSt4cout, %edi
 597      00
 598 0c42 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 598      00
 599 0c47 4C89E1   		movq	%r12, %rcx
 600 0c4a 482B4C24 		subq	8(%rsp), %rcx
 600      08
 601 0c4f 48BECFF7 		movabsq	$2361183241434822607, %rsi
GAS LISTING /tmp/ccUAmGVt.s 			page 20


 601      53E3A59B 
 601      C420
 602 0c59 BF000000 		movl	$_ZSt4cout, %edi
 602      00
 603 0c5e 4889C8   		movq	%rcx, %rax
 604 0c61 48C1F93F 		sarq	$63, %rcx
 605 0c65 48F7EE   		imulq	%rsi
 606 0c68 4889D6   		movq	%rdx, %rsi
 607 0c6b 48C1FE07 		sarq	$7, %rsi
 608 0c6f 4829CE   		subq	%rcx, %rsi
 609 0c72 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 609      00
 610 0c77 BE000000 		movl	$.LC32, %esi
 610      00
 611 0c7c 4889C7   		movq	%rax, %rdi
 612 0c7f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 612      00
 613 0c84 4889C7   		movq	%rax, %rdi
 614 0c87 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 614      00
 615 0c8c 488D65D8 		leaq	-40(%rbp), %rsp
 616 0c90 31C0     		xorl	%eax, %eax
 617 0c92 5B       		popq	%rbx
 618 0c93 415C     		popq	%r12
 619 0c95 415D     		popq	%r13
 620 0c97 415E     		popq	%r14
 621 0c99 415F     		popq	%r15
 622 0c9b 5D       		popq	%rbp
 623              		.cfi_remember_state
 624              		.cfi_def_cfa 7, 8
 625 0c9c C3       		ret
 626 0c9d 0F1F00   		.p2align 4,,10
 627              		.p2align 3
 628              	.L22:
 629              		.cfi_restore_state
 630 0ca0 4C8DBC24 		leaq	240(%rsp), %r15
 630      F0000000 
 631              	.L29:
 632 0ca8 C4C17B10 		vmovsd	256(%r15), %xmm3
 632      9F000100 
 632      00
 633 0cb1 BA040000 		movl	$4, %edx
 633      00
 634 0cb6 BE000000 		movl	$.LC28, %esi
 634      00
 635 0cbb C4C17B10 		vmovsd	384(%r15), %xmm0
 635      87800100 
 635      00
 636 0cc4 BF000000 		movl	$_ZSt4cout, %edi
 636      00
 637 0cc9 C5FD2954 		vmovapd	%ymm2, 16(%rsp)
 637      2410
 638 0ccf C5FD294C 		vmovapd	%ymm1, 48(%rsp)
 638      2430
 639 0cd5 C57D2944 		vmovapd	%ymm8, 80(%rsp)
 639      2450
 640 0cdb C5FD2974 		vmovapd	%ymm6, 112(%rsp)
GAS LISTING /tmp/ccUAmGVt.s 			page 21


 640      2470
 641 0ce1 C5FB119C 		vmovsd	%xmm3, 144(%rsp)
 641      24900000 
 641      00
 642 0cea C5FB1184 		vmovsd	%xmm0, 176(%rsp)
 642      24B00000 
 642      00
 643 0cf3 C5F877   		vzeroupper
 644 0cf6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 644      00
 645 0cfb C5FB1084 		vmovsd	176(%rsp), %xmm0
 645      24B00000 
 645      00
 646 0d04 BF000000 		movl	$_ZSt4cout, %edi
 646      00
 647 0d09 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 647      00
 648 0d0e BA030000 		movl	$3, %edx
 648      00
 649 0d13 BE000000 		movl	$.LC29, %esi
 649      00
 650 0d18 4889C7   		movq	%rax, %rdi
 651 0d1b 4889C3   		movq	%rax, %rbx
 652 0d1e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 652      00
 653 0d23 C5FB109C 		vmovsd	144(%rsp), %xmm3
 653      24900000 
 653      00
 654 0d2c 4889DF   		movq	%rbx, %rdi
 655 0d2f C5F928C3 		vmovapd	%xmm3, %xmm0
 656 0d33 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 656      00
 657 0d38 4889C3   		movq	%rax, %rbx
 658 0d3b 488B00   		movq	(%rax), %rax
 659 0d3e C5FD2874 		vmovapd	112(%rsp), %ymm6
 659      2470
 660 0d44 C57D2844 		vmovapd	80(%rsp), %ymm8
 660      2450
 661 0d4a C5FD284C 		vmovapd	48(%rsp), %ymm1
 661      2430
 662 0d50 488B40E8 		movq	-24(%rax), %rax
 663 0d54 C5FD2854 		vmovapd	16(%rsp), %ymm2
 663      2410
 664 0d5a 488B9403 		movq	240(%rbx,%rax), %rdx
 664      F0000000 
 665 0d62 4885D2   		testq	%rdx, %rdx
 666 0d65 0F84D200 		je	.L33
 666      0000
 667 0d6b 807A3800 		cmpb	$0, 56(%rdx)
 668 0d6f 7468     		je	.L26
 669 0d71 0FB64243 		movzbl	67(%rdx), %eax
 670              	.L27:
 671 0d75 0FBEF0   		movsbl	%al, %esi
 672 0d78 4889DF   		movq	%rbx, %rdi
 673 0d7b C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 673      2450
 674 0d81 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
GAS LISTING /tmp/ccUAmGVt.s 			page 22


 674      2470
 675 0d87 C57D2984 		vmovapd	%ymm8, 144(%rsp)
 675      24900000 
 675      00
 676 0d90 C5FD29B4 		vmovapd	%ymm6, 176(%rsp)
 676      24B00000 
 676      00
 677 0d99 C5F877   		vzeroupper
 678 0d9c 4983C720 		addq	$32, %r15
 679 0da0 E8000000 		call	_ZNSo3putEc
 679      00
 680 0da5 4889C7   		movq	%rax, %rdi
 681 0da8 E8000000 		call	_ZNSo5flushEv
 681      00
 682 0dad 4D39E7   		cmpq	%r12, %r15
 683 0db0 C5FD28B4 		vmovapd	176(%rsp), %ymm6
 683      24B00000 
 683      00
 684 0db9 C57D2884 		vmovapd	144(%rsp), %ymm8
 684      24900000 
 684      00
 685 0dc2 C5FD284C 		vmovapd	112(%rsp), %ymm1
 685      2470
 686 0dc8 C5FD2854 		vmovapd	80(%rsp), %ymm2
 686      2450
 687 0dce 0F85D4FE 		jne	.L29
 687      FFFF
 688 0dd4 E93AFEFF 		jmp	.L28
 688      FF
 689              	.L26:
 690 0dd9 4889D7   		movq	%rdx, %rdi
 691 0ddc C5FD2954 		vmovapd	%ymm2, 48(%rsp)
 691      2430
 692 0de2 48899424 		movq	%rdx, 176(%rsp)
 692      B0000000 
 693 0dea C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 693      2450
 694 0df0 C57D2944 		vmovapd	%ymm8, 112(%rsp)
 694      2470
 695 0df6 C5FD29B4 		vmovapd	%ymm6, 144(%rsp)
 695      24900000 
 695      00
 696 0dff C5F877   		vzeroupper
 697 0e02 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 697      00
 698 0e07 488B9424 		movq	176(%rsp), %rdx
 698      B0000000 
 699 0e0f BE0A0000 		movl	$10, %esi
 699      00
 700 0e14 488B02   		movq	(%rdx), %rax
 701 0e17 4889D7   		movq	%rdx, %rdi
 702 0e1a FF5030   		call	*48(%rax)
 703 0e1d C5FD2854 		vmovapd	48(%rsp), %ymm2
 703      2430
 704 0e23 C5FD284C 		vmovapd	80(%rsp), %ymm1
 704      2450
 705 0e29 C57D2844 		vmovapd	112(%rsp), %ymm8
GAS LISTING /tmp/ccUAmGVt.s 			page 23


 705      2470
 706 0e2f C5FD28B4 		vmovapd	144(%rsp), %ymm6
 706      24900000 
 706      00
 707 0e38 E938FFFF 		jmp	.L27
 707      FF
 708              	.L33:
 709 0e3d C5F877   		vzeroupper
 710 0e40 E8000000 		call	_ZSt16__throw_bad_castv
 710      00
 711              		.cfi_endproc
 712              	.LFE4443:
 713              		.size	main, .-main
 714 0e45 66662E0F 		.p2align 4,,15
 714      1F840000 
 714      000000
 715              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 716              	_GLOBAL__sub_I__Z8linspaceddi:
 717              	.LFB4703:
 718              		.cfi_startproc
 719 0e50 4883EC08 		subq	$8, %rsp
 720              		.cfi_def_cfa_offset 16
 721 0e54 BF000000 		movl	$_ZStL8__ioinit, %edi
 721      00
 722 0e59 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 722      00
 723 0e5e BA000000 		movl	$__dso_handle, %edx
 723      00
 724 0e63 BE000000 		movl	$_ZStL8__ioinit, %esi
 724      00
 725 0e68 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 725      00
 726 0e6d 4883C408 		addq	$8, %rsp
 727              		.cfi_def_cfa_offset 8
 728 0e71 E9000000 		jmp	__cxa_atexit
 728      00
 729              		.cfi_endproc
 730              	.LFE4703:
 731              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 732              		.section	.init_array,"aw"
 733              		.align 8
 734 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 734      00000000 
 735              		.section	.rodata
 736              		.align 32
 737              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 738              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 739              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 740 0000 FFFFFFFF 		.long	-1
 741 0004 FFFFFF7F 		.long	2147483647
 742 0008 FFFFFFFF 		.long	-1
 743 000c FFFFFF7F 		.long	2147483647
 744 0010 FFFFFFFF 		.long	-1
 745 0014 FFFFFF7F 		.long	2147483647
 746 0018 FFFFFFFF 		.long	-1
 747 001c FFFFFF7F 		.long	2147483647
 748              		.local	_ZStL8__ioinit
GAS LISTING /tmp/ccUAmGVt.s 			page 24


 749              		.comm	_ZStL8__ioinit,1,1
 750              		.section	.rodata.cst8,"aM",@progbits,8
 751              		.align 8
 752              	.LC0:
 753 0000 9A999999 		.long	2576980378
 754 0004 9999B93F 		.long	1069128089
 755              		.align 8
 756              	.LC1:
 757 0008 00000000 		.long	0
 758 000c 0000F03F 		.long	1072693248
 759              		.section	.rodata.cst32,"aM",@progbits,32
 760              		.align 32
 761              	.LC2:
 762 0000 83C8C96D 		.long	1841940611
 763 0004 305FE43F 		.long	1071931184
 764 0008 83C8C96D 		.long	1841940611
 765 000c 305FE43F 		.long	1071931184
 766 0010 83C8C96D 		.long	1841940611
 767 0014 305FE43F 		.long	1071931184
 768 0018 83C8C96D 		.long	1841940611
 769 001c 305FE43F 		.long	1071931184
 770              		.align 32
 771              	.LC3:
 772 0020 00000050 		.long	1342177280
 773 0024 FB21F93F 		.long	1073291771
 774 0028 00000050 		.long	1342177280
 775 002c FB21F93F 		.long	1073291771
 776 0030 00000050 		.long	1342177280
 777 0034 FB21F93F 		.long	1073291771
 778 0038 00000050 		.long	1342177280
 779 003c FB21F93F 		.long	1073291771
 780              		.align 32
 781              	.LC4:
 782 0040 00000060 		.long	1610612736
 783 0044 B410513E 		.long	1045500084
 784 0048 00000060 		.long	1610612736
 785 004c B410513E 		.long	1045500084
 786 0050 00000060 		.long	1610612736
 787 0054 B410513E 		.long	1045500084
 788 0058 00000060 		.long	1610612736
 789 005c B410513E 		.long	1045500084
 790              		.align 32
 791              	.LC5:
 792 0060 075C1433 		.long	856972295
 793 0064 26A6913C 		.long	1016178214
 794 0068 075C1433 		.long	856972295
 795 006c 26A6913C 		.long	1016178214
 796 0070 075C1433 		.long	856972295
 797 0074 26A6913C 		.long	1016178214
 798 0078 075C1433 		.long	856972295
 799 007c 26A6913C 		.long	1016178214
 800              		.align 32
 801              	.LC6:
 802 0080 D0F71011 		.long	286324688
 803 0084 1111813F 		.long	1065423121
 804 0088 D0F71011 		.long	286324688
 805 008c 1111813F 		.long	1065423121
GAS LISTING /tmp/ccUAmGVt.s 			page 25


 806 0090 D0F71011 		.long	286324688
 807 0094 1111813F 		.long	1065423121
 808 0098 D0F71011 		.long	286324688
 809 009c 1111813F 		.long	1065423121
 810              		.align 32
 811              	.LC7:
 812 00a0 48555555 		.long	1431655752
 813 00a4 5555C5BF 		.long	-1077586603
 814 00a8 48555555 		.long	1431655752
 815 00ac 5555C5BF 		.long	-1077586603
 816 00b0 48555555 		.long	1431655752
 817 00b4 5555C5BF 		.long	-1077586603
 818 00b8 48555555 		.long	1431655752
 819 00bc 5555C5BF 		.long	-1077586603
 820              		.align 32
 821              	.LC8:
 822 00c0 CD9CD11F 		.long	533830861
 823 00c4 FDD8E53D 		.long	1038473469
 824 00c8 CD9CD11F 		.long	533830861
 825 00cc FDD8E53D 		.long	1038473469
 826 00d0 CD9CD11F 		.long	533830861
 827 00d4 FDD8E53D 		.long	1038473469
 828 00d8 CD9CD11F 		.long	533830861
 829 00dc FDD8E53D 		.long	1038473469
 830              		.align 32
 831              	.LC9:
 832 00e0 5D1F29A9 		.long	2838044509
 833 00e4 E5E55ABE 		.long	-1101339163
 834 00e8 5D1F29A9 		.long	2838044509
 835 00ec E5E55ABE 		.long	-1101339163
 836 00f0 5D1F29A9 		.long	2838044509
 837 00f4 E5E55ABE 		.long	-1101339163
 838 00f8 5D1F29A9 		.long	2838044509
 839 00fc E5E55ABE 		.long	-1101339163
 840              		.align 32
 841              	.LC10:
 842 0100 A1487D56 		.long	1451051169
 843 0104 E31DC73E 		.long	1053236707
 844 0108 A1487D56 		.long	1451051169
 845 010c E31DC73E 		.long	1053236707
 846 0110 A1487D56 		.long	1451051169
 847 0114 E31DC73E 		.long	1053236707
 848 0118 A1487D56 		.long	1451051169
 849 011c E31DC73E 		.long	1053236707
 850              		.align 32
 851              	.LC11:
 852 0120 03DFBF19 		.long	432004867
 853 0124 A0012ABF 		.long	-1087766112
 854 0128 03DFBF19 		.long	432004867
 855 012c A0012ABF 		.long	-1087766112
 856 0130 03DFBF19 		.long	432004867
 857 0134 A0012ABF 		.long	-1087766112
 858 0138 03DFBF19 		.long	432004867
 859 013c A0012ABF 		.long	-1087766112
 860              		.align 32
 861              	.LC12:
 862 0140 914FC116 		.long	381767569
GAS LISTING /tmp/ccUAmGVt.s 			page 26


 863 0144 6CC156BF 		.long	-1084833428
 864 0148 914FC116 		.long	381767569
 865 014c 6CC156BF 		.long	-1084833428
 866 0150 914FC116 		.long	381767569
 867 0154 6CC156BF 		.long	-1084833428
 868 0158 914FC116 		.long	381767569
 869 015c 6CC156BF 		.long	-1084833428
 870              		.align 32
 871              	.LC13:
 872 0160 4B555555 		.long	1431655755
 873 0164 5555A53F 		.long	1067799893
 874 0168 4B555555 		.long	1431655755
 875 016c 5555A53F 		.long	1067799893
 876 0170 4B555555 		.long	1431655755
 877 0174 5555A53F 		.long	1067799893
 878 0178 4B555555 		.long	1431655755
 879 017c 5555A53F 		.long	1067799893
 880              		.align 32
 881              	.LC14:
 882 0180 9B1A86A0 		.long	2693143195
 883 0184 49FAA8BD 		.long	-1112999351
 884 0188 9B1A86A0 		.long	2693143195
 885 018c 49FAA8BD 		.long	-1112999351
 886 0190 9B1A86A0 		.long	2693143195
 887 0194 49FAA8BD 		.long	-1112999351
 888 0198 9B1A86A0 		.long	2693143195
 889 019c 49FAA8BD 		.long	-1112999351
 890              		.align 32
 891              	.LC15:
 892 01a0 053F4E7B 		.long	2068725509
 893 01a4 9DEE213E 		.long	1042411165
 894 01a8 053F4E7B 		.long	2068725509
 895 01ac 9DEE213E 		.long	1042411165
 896 01b0 053F4E7B 		.long	2068725509
 897 01b4 9DEE213E 		.long	1042411165
 898 01b8 053F4E7B 		.long	2068725509
 899 01bc 9DEE213E 		.long	1042411165
 900              		.align 32
 901              	.LC16:
 902 01c0 C64BAC7E 		.long	2125220806
 903 01c4 4F7E92BE 		.long	-1097695665
 904 01c8 C64BAC7E 		.long	2125220806
 905 01cc 4F7E92BE 		.long	-1097695665
 906 01d0 C64BAC7E 		.long	2125220806
 907 01d4 4F7E92BE 		.long	-1097695665
 908 01d8 C64BAC7E 		.long	2125220806
 909 01dc 4F7E92BE 		.long	-1097695665
 910              		.align 32
 911              	.LC17:
 912 01e0 F544C819 		.long	432555253
 913 01e4 A001FA3E 		.long	1056571808
 914 01e8 F544C819 		.long	432555253
 915 01ec A001FA3E 		.long	1056571808
 916 01f0 F544C819 		.long	432555253
 917 01f4 A001FA3E 		.long	1056571808
 918 01f8 F544C819 		.long	432555253
 919 01fc A001FA3E 		.long	1056571808
GAS LISTING /tmp/ccUAmGVt.s 			page 27


 920              		.align 32
 921              	.LC18:
 922 0200 00000000 		.long	0
 923 0204 0000E03F 		.long	1071644672
 924 0208 00000000 		.long	0
 925 020c 0000E03F 		.long	1071644672
 926 0210 00000000 		.long	0
 927 0214 0000E03F 		.long	1071644672
 928 0218 00000000 		.long	0
 929 021c 0000E03F 		.long	1071644672
 930              		.align 32
 931              	.LC19:
 932 0220 00000000 		.long	0
 933 0224 0000F03F 		.long	1072693248
 934 0228 00000000 		.long	0
 935 022c 0000F03F 		.long	1072693248
 936 0230 00000000 		.long	0
 937 0234 0000F03F 		.long	1072693248
 938 0238 00000000 		.long	0
 939 023c 0000F03F 		.long	1072693248
 940              		.section	.rodata.cst16,"aM",@progbits,16
 941              		.align 16
 942              	.LC20:
 943 0000 01000000 		.quad	1
 943      00000000 
 944 0008 01000000 		.quad	1
 944      00000000 
 945              		.align 16
 946              	.LC21:
 947 0010 00000000 		.quad	36028797018963968
 947      00008000 
 948 0018 00000000 		.quad	36028797018963968
 948      00008000 
 949              		.align 16
 950              	.LC22:
 951 0020 00000000 		.quad	-9007199254740992
 951      0000E0FF 
 952 0028 00000000 		.quad	-9007199254740992
 952      0000E0FF 
 953              		.align 16
 954              	.LC23:
 955 0030 00000000 		.quad	-9223372036854775808
 955      00000080 
 956 0038 00000000 		.quad	-9223372036854775808
 956      00000080 
 957              		.section	.rodata.cst32
 958              		.align 32
 959              	.LC24:
 960 0240 7B14AE47 		.long	1202590843
 961 0244 E17A743F 		.long	1064598241
 962 0248 7B14AE47 		.long	1202590843
 963 024c E17A743F 		.long	1064598241
 964 0250 7B14AE47 		.long	1202590843
 965 0254 E17A743F 		.long	1064598241
 966 0258 7B14AE47 		.long	1202590843
 967 025c E17A743F 		.long	1064598241
 968              		.align 32
GAS LISTING /tmp/ccUAmGVt.s 			page 28


 969              	.LC25:
 970 0260 00000000 		.long	0
 971 0264 00000040 		.long	1073741824
 972 0268 00000000 		.long	0
 973 026c 00000040 		.long	1073741824
 974 0270 00000000 		.long	0
 975 0274 00000040 		.long	1073741824
 976 0278 00000000 		.long	0
 977 027c 00000040 		.long	1073741824
 978              		.align 32
 979              	.LC26:
 980 0280 7B14AE47 		.long	1202590843
 981 0284 E17A843F 		.long	1065646817
 982 0288 7B14AE47 		.long	1202590843
 983 028c E17A843F 		.long	1065646817
 984 0290 7B14AE47 		.long	1202590843
 985 0294 E17A843F 		.long	1065646817
 986 0298 7B14AE47 		.long	1202590843
 987 029c E17A843F 		.long	1065646817
 988              		.align 32
 989              	.LC27:
 990 02a0 4F1BE8B4 		.long	3035110223
 991 02a4 814E5B3F 		.long	1062948481
 992 02a8 4F1BE8B4 		.long	3035110223
 993 02ac 814E5B3F 		.long	1062948481
 994 02b0 4F1BE8B4 		.long	3035110223
 995 02b4 814E5B3F 		.long	1062948481
 996 02b8 4F1BE8B4 		.long	3035110223
 997 02bc 814E5B3F 		.long	1062948481
 998              		.align 32
 999              	.LC30:
 1000 02c0 9A999999 		.long	2576980378
 1001 02c4 9999B93F 		.long	1069128089
 1002 02c8 9A999999 		.long	2576980378
 1003 02cc 9999B93F 		.long	1069128089
 1004 02d0 9A999999 		.long	2576980378
 1005 02d4 9999B93F 		.long	1069128089
 1006 02d8 9A999999 		.long	2576980378
 1007 02dc 9999B93F 		.long	1069128089
 1008              		.section	.rodata.cst16
 1009              		.align 16
 1010              	.LC33:
 1011 0040 FFFFFFFF 		.quad	-1
 1011      FFFFFFFF 
 1012 0048 FFFFFFFF 		.quad	-1
 1012      FFFFFFFF 
 1013              		.hidden	__dso_handle
 1014              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1015              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccUAmGVt.s 			page 29


DEFINED SYMBOLS
                            *ABS*:0000000000000000 FLOPS_TEST_TRANSZENDENTAL.cpp
     /tmp/ccUAmGVt.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccUAmGVt.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccUAmGVt.s:81     .text.startup:0000000000000000 main
     /tmp/ccUAmGVt.s:739    .rodata:0000000000000000 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccUAmGVt.s:716    .text.startup:0000000000000e50 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccUAmGVt.s:756    .rodata.cst8:0000000000000008 .LC1
     /tmp/ccUAmGVt.s:752    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccUAmGVt.s:761    .rodata.cst32:0000000000000000 .LC2
     /tmp/ccUAmGVt.s:911    .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccUAmGVt.s:921    .rodata.cst32:0000000000000200 .LC18
     /tmp/ccUAmGVt.s:931    .rodata.cst32:0000000000000220 .LC19
     /tmp/ccUAmGVt.s:999    .rodata.cst32:00000000000002c0 .LC30
     /tmp/ccUAmGVt.s:771    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccUAmGVt.s:781    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccUAmGVt.s:791    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccUAmGVt.s:821    .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccUAmGVt.s:801    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccUAmGVt.s:841    .rodata.cst32:0000000000000100 .LC10
     /tmp/ccUAmGVt.s:831    .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccUAmGVt.s:811    .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccUAmGVt.s:851    .rodata.cst32:0000000000000120 .LC11
     /tmp/ccUAmGVt.s:881    .rodata.cst32:0000000000000180 .LC14
     /tmp/ccUAmGVt.s:861    .rodata.cst32:0000000000000140 .LC12
     /tmp/ccUAmGVt.s:891    .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccUAmGVt.s:871    .rodata.cst32:0000000000000160 .LC13
     /tmp/ccUAmGVt.s:901    .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccUAmGVt.s:942    .rodata.cst16:0000000000000000 .LC20
     /tmp/ccUAmGVt.s:950    .rodata.cst16:0000000000000020 .LC22
     /tmp/ccUAmGVt.s:1010   .rodata.cst16:0000000000000040 .LC33
     /tmp/ccUAmGVt.s:946    .rodata.cst16:0000000000000010 .LC21
     /tmp/ccUAmGVt.s:954    .rodata.cst16:0000000000000030 .LC23
     /tmp/ccUAmGVt.s:959    .rodata.cst32:0000000000000240 .LC24
     /tmp/ccUAmGVt.s:969    .rodata.cst32:0000000000000260 .LC25
     /tmp/ccUAmGVt.s:979    .rodata.cst32:0000000000000280 .LC26
     /tmp/ccUAmGVt.s:989    .rodata.cst32:00000000000002a0 .LC27

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
GAS LISTING /tmp/ccUAmGVt.s 			page 30


