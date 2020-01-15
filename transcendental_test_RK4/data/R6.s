GAS LISTING /tmp/ccN8IMmu.s 			page 1


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
GAS LISTING /tmp/ccN8IMmu.s 			page 2


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
  93 000f 4154     		pushq	%r12
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96              		.cfi_offset 13, -40
  97              		.cfi_offset 12, -48
  98 0011 4531E4   		xorl	%r12d, %r12d
  99 0014 53       		pushq	%rbx
GAS LISTING /tmp/ccN8IMmu.s 			page 3


 100 0015 4883E4E0 		andq	$-32, %rsp
 101 0019 4881ECF0 		subq	$1008, %rsp
 101      030000
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 103      00000000 
 104 0028 4C8DAC24 		leaq	432(%rsp), %r13
 104      B0010000 
 105 0030 C5FB1005 		vmovsd	.LC0(%rip), %xmm0
 105      00000000 
 106 0038 E8000000 		call	_Z8linspaceddi
 106      00
 107 003d 4889C3   		movq	%rax, %rbx
 108 0040 E8000000 		call	clock
 108      00
 109 0045 C57D2805 		vmovapd	.LC16(%rip), %ymm8
 109      00000000 
 110 004d 48890424 		movq	%rax, (%rsp)
 111 0051 C5FD2815 		vmovapd	.LC17(%rip), %ymm2
 111      00000000 
 112 0059 C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 112      00000000 
 113 0061 C5FD280D 		vmovapd	.LC19(%rip), %ymm1
 113      00000000 
 114              	.L12:
 115 0069 C5FD1003 		vmovupd	(%rbx), %ymm0
 116 006d 488DB424 		leaq	624(%rsp), %rsi
 116      70020000 
 117 0075 BF102700 		movl	$10000, %edi
 117      00
 118 007a C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 118      00000000 
 119 0082 C5FD2984 		vmovapd	%ymm0, 816(%rsp)
 119      24300300 
 119      00
 120 008b C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 121 008f C5FD29BC 		vmovapd	%ymm7, 624(%rsp)
 121      24700200 
 121      00
 122 0098 C5FD2984 		vmovapd	%ymm0, 240(%rsp)
 122      24F00000 
 122      00
 123 00a1 C5FD105B 		vmovupd	32(%rbx), %ymm3
 123      20
 124 00a6 C5FD29BC 		vmovapd	%ymm7, 656(%rsp)
 124      24900200 
 124      00
 125 00af C5FD299C 		vmovapd	%ymm3, 848(%rsp)
 125      24500300 
 125      00
 126 00b8 C5FD2984 		vmovapd	%ymm0, 272(%rsp)
 126      24100100 
 126      00
 127 00c1 C5FD105B 		vmovupd	64(%rbx), %ymm3
 127      40
 128 00c6 C5FD29BC 		vmovapd	%ymm7, 688(%rsp)
 128      24B00200 
GAS LISTING /tmp/ccN8IMmu.s 			page 4


 128      00
 129 00cf C5FD299C 		vmovapd	%ymm3, 880(%rsp)
 129      24700300 
 129      00
 130 00d8 C5FD2984 		vmovapd	%ymm0, 304(%rsp)
 130      24300100 
 130      00
 131 00e1 C5FD105B 		vmovupd	96(%rbx), %ymm3
 131      60
 132 00e6 C5FD29BC 		vmovapd	%ymm7, 720(%rsp)
 132      24D00200 
 132      00
 133 00ef C5FD299C 		vmovapd	%ymm3, 912(%rsp)
 133      24900300 
 133      00
 134 00f8 C5FD2984 		vmovapd	%ymm0, 336(%rsp)
 134      24500100 
 134      00
 135 0101 C5FD109B 		vmovupd	128(%rbx), %ymm3
 135      80000000 
 136 0109 C5FD29BC 		vmovapd	%ymm7, 752(%rsp)
 136      24F00200 
 136      00
 137 0112 C5FD299C 		vmovapd	%ymm3, 944(%rsp)
 137      24B00300 
 137      00
 138 011b C5FD2984 		vmovapd	%ymm0, 368(%rsp)
 138      24700100 
 138      00
 139 0124 C5FD109B 		vmovupd	160(%rbx), %ymm3
 139      A0000000 
 140 012c C5FD29BC 		vmovapd	%ymm7, 784(%rsp)
 140      24100300 
 140      00
 141 0135 C5FD28F8 		vmovapd	%ymm0, %ymm7
 142 0139 C5FD299C 		vmovapd	%ymm3, 976(%rsp)
 142      24D00300 
 142      00
 143 0142 C5FD2984 		vmovapd	%ymm0, 400(%rsp)
 143      24900100 
 143      00
 144 014b 0F1F4400 		.p2align 4,,10
 144      00
 145              		.p2align 3
 146              	.L30:
 147 0150 4C89E8   		movq	%r13, %rax
 148              		.p2align 4,,10
 149 0153 0F1F4400 		.p2align 3
 149      00
 150              	.L21:
 151 0158 C57D2890 		vmovapd	192(%rax), %ymm10
 151      C0000000 
 152 0160 4883C020 		addq	$32, %rax
 153 0164 C57D28A0 		vmovapd	352(%rax), %ymm12
 153      60010000 
 154 016c C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 154      00000000 
GAS LISTING /tmp/ccN8IMmu.s 			page 5


 155 0174 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 155      00000000 
 156 017c C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 156      C008
 157 0182 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 157      D808
 158 0188 C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 158      24D00000 
 158      00
 159 0191 C57B10B4 		vmovsd	208(%rsp), %xmm14
 159      24D00000 
 159      00
 160 019a C57B10BC 		vmovsd	216(%rsp), %xmm15
 160      24D80000 
 160      00
 161 01a3 C4C1FB2C 		vcvttsd2siq	%xmm14, %rcx
 161      CE
 162 01a8 C4C1FB2C 		vcvttsd2siq	%xmm15, %rdx
 162      D7
 163 01ad C5FB109C 		vmovsd	224(%rsp), %xmm3
 163      24E00000 
 163      00
 164 01b6 48898C24 		movq	%rcx, 176(%rsp)
 164      B0000000 
 165 01be C4E1FB2C 		vcvttsd2siq	%xmm3, %rcx
 165      CB
 166 01c3 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 166      24B00000 
 166      00
 167 01cc C4E3D122 		vpinsrq	$1, %rdx, %xmm5, %xmm5
 167      EA01
 168 01d2 C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 168      24B00000 
 168      00
 169 01db C5FB10AC 		vmovsd	232(%rsp), %xmm5
 169      24E80000 
 169      00
 170 01e4 C4E1FB2C 		vcvttsd2siq	%xmm5, %rdx
 170      D5
 171 01e9 48898C24 		movq	%rcx, 144(%rsp)
 171      90000000 
 172 01f1 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 172      00000000 
 173 01f9 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 173      24900000 
 173      00
 174 0202 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 175 0206 C463E122 		vpinsrq	$1, %rdx, %xmm3, %xmm9
 175      CA01
 176 020c C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 176      00000000 
 177 0214 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 177      00000000 
 178 021c C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 179 0220 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 180 0224 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 181 0228 C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
GAS LISTING /tmp/ccN8IMmu.s 			page 6


 181      00000000 
 182 0230 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 183 0234 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 183      00000000 
 184 023c C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 184      00000000 
 185 0244 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 185      00000000 
 186 024c C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 187 0250 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 187      00000000 
 188 0258 C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 188      00000000 
 189 0260 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 189      F3
 190 0265 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 190      F7
 191 026a C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 192 026e C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 192      00000000 
 193 0276 C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 193      EE
 194 027b C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 194      00000000 
 195 0283 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 195      00000000 
 196 028b C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 196      00000000 
 197 0293 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 197      DB
 198 0298 C5796FBC 		vmovdqa	176(%rsp), %xmm15
 198      24B00000 
 198      00
 199 02a1 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 199      F6
 200 02a6 C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 201 02aa C52558DA 		vaddpd	%ymm2, %ymm11, %ymm11
 202 02ae C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 203 02b2 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 203      F6
 204 02b7 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 205 02bb C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 206 02bf C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 206      DE
 207 02c4 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 207      ED
 208 02c9 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 209 02cd C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 209      00000000 
 210 02d5 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 210      E601
 211 02db C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 212 02df C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 212      ED
 213 02e4 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 214 02e8 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 214      F601
GAS LISTING /tmp/ccN8IMmu.s 			page 7


 215 02ee C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 215      00000000 
 216 02f6 C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 216      DD
 217 02fb C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 217      00000000 
 218 0303 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 218      00000000 
 219 030b C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 219      C5
 220 0310 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 220      2D000000 
 220      00
 221 0319 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 221      00000000 
 222 0321 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 222      35000000 
 222      00
 223 032a C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 223      00000000 
 224 0332 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 224      D801
 225 0338 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 225      05000000 
 225      00
 226 0341 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 226      E801
 227 0347 C5F928C4 		vmovapd	%xmm4, %xmm0
 228 034b C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 228      01
 229 0350 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 229      00000000 
 230 0358 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 230      05000000 
 230      00
 231 0361 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 231      00000000 
 232 0369 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 232      C601
 233 036f C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 234 0373 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 234      D001
 235 0379 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 235      EF40
 236 037f C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 236      E140
 237 0385 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 237      F13E
 238 038b C4C13173 		vpsllq	$62, %xmm15, %xmm9
 238      F73E
 239 0391 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 240 0395 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 240      CA
 241 039a C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 241      E4B0
 242 03a0 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 242      00000000 
GAS LISTING /tmp/ccN8IMmu.s 			page 8


 243 03a8 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 243      00000000 
 244 03b0 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 244      C801
 245 03b6 C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 245      E1
 246 03bb C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 247 03bf C57D29A0 		vmovapd	%ymm12, -224(%rax)
 247      20FFFFFF 
 248 03c7 C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 248      00000000 
 249 03cf C51D58A0 		vaddpd	160(%rax), %ymm12, %ymm12
 249      A0000000 
 250 03d7 C57D2960 		vmovapd	%ymm12, -32(%rax)
 250      E0
 251 03dc 4839F0   		cmpq	%rsi, %rax
 252 03df 0F8573FD 		jne	.L21
 252      FFFF
 253 03e5 4C89EA   		movq	%r13, %rdx
 254 03e8 0F1F8400 		.p2align 4,,10
 254      00000000 
 255              		.p2align 3
 256              	.L15:
 257 03f0 C57D2812 		vmovapd	(%rdx), %ymm10
 258 03f4 4883C220 		addq	$32, %rdx
 259 03f8 C57D28A2 		vmovapd	352(%rdx), %ymm12
 259      60010000 
 260 0400 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 260      00000000 
 261 0408 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 261      00000000 
 262 0410 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 262      C008
 263 0416 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 263      D808
 264 041c C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 264      24D00000 
 264      00
 265 0425 C5FB10AC 		vmovsd	208(%rsp), %xmm5
 265      24D00000 
 265      00
 266 042e C57B108C 		vmovsd	216(%rsp), %xmm9
 266      24D80000 
 266      00
 267 0437 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 267      C5
 268 043c C57B109C 		vmovsd	224(%rsp), %xmm11
 268      24E00000 
 268      00
 269 0445 C57B10AC 		vmovsd	232(%rsp), %xmm13
 269      24E80000 
 269      00
 270 044e 48898424 		movq	%rax, 176(%rsp)
 270      B0000000 
 271 0456 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 271      C1
 272 045b C5FA7EAC 		vmovq	176(%rsp), %xmm5
GAS LISTING /tmp/ccN8IMmu.s 			page 9


 272      24B00000 
 272      00
 273 0464 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 273      E801
 274 046a C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 274      C3
 275 046f C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 275      24B00000 
 275      00
 276 0478 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 276      00000000 
 277 0480 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 278 0484 48898424 		movq	%rax, 144(%rsp)
 278      90000000 
 279 048c C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 279      C5
 280 0491 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 280      24900000 
 280      00
 281 049a C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 281      C801
 282 04a0 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 282      00000000 
 283 04a8 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 283      00000000 
 284 04b0 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 285 04b4 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 286 04b8 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 287 04bc C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 287      00000000 
 288 04c4 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 289 04c8 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 289      00000000 
 290 04d0 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 290      00000000 
 291 04d8 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 291      00000000 
 292 04e0 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 293 04e4 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 293      00000000 
 294 04ec C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 294      00000000 
 295 04f4 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 295      F3
 296 04f9 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 296      F7
 297 04fe C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 298 0502 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 298      00000000 
 299 050a C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 299      EE
 300 050f C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 300      00000000 
 301 0517 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 301      00000000 
 302 051f C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 302      00000000 
GAS LISTING /tmp/ccN8IMmu.s 			page 10


 303 0527 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 303      DB
 304 052c C5796FBC 		vmovdqa	176(%rsp), %xmm15
 304      24B00000 
 304      00
 305 0535 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 305      F6
 306 053a C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 307 053e C52558DA 		vaddpd	%ymm2, %ymm11, %ymm11
 308 0542 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 309 0546 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 309      F6
 310 054b C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 311 054f C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 312 0553 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 312      DE
 313 0558 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 313      ED
 314 055d C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 315 0561 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 315      00000000 
 316 0569 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 316      E601
 317 056f C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 318 0573 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 318      ED
 319 0578 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 320 057c C4C10973 		vpsllq	$1, %xmm14, %xmm14
 320      F601
 321 0582 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 321      00000000 
 322 058a C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 322      DD
 323 058f C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 323      00000000 
 324 0597 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 324      00000000 
 325 059f C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 325      C5
 326 05a4 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 326      2D000000 
 326      00
 327 05ad C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 327      00000000 
 328 05b5 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 328      35000000 
 328      00
 329 05be C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 329      00000000 
 330 05c6 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 330      D801
 331 05cc C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 331      05000000 
 331      00
 332 05d5 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 332      E801
 333 05db C5F928C4 		vmovapd	%xmm4, %xmm0
GAS LISTING /tmp/ccN8IMmu.s 			page 11


 334 05df C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 334      01
 335 05e4 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 335      00000000 
 336 05ec C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 336      05000000 
 336      00
 337 05f5 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 337      00000000 
 338 05fd C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 338      C601
 339 0603 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 340 0607 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 340      D001
 341 060d C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 341      EF40
 342 0613 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 342      E140
 343 0619 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 343      F13E
 344 061f C4C13173 		vpsllq	$62, %xmm15, %xmm9
 344      F73E
 345 0625 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 346 0629 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 346      CA
 347 062e C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 347      E4B0
 348 0634 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 348      00000000 
 349 063c C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 349      00000000 
 350 0644 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 350      C801
 351 064a C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 351      E1
 352 064f C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 353 0653 C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 353      00000000 
 354 065b C5FD5882 		vaddpd	-224(%rdx), %ymm0, %ymm0
 354      20FFFFFF 
 355 0663 C5FD2982 		vmovapd	%ymm0, -224(%rdx)
 355      20FFFFFF 
 356 066b C51D5925 		vmulpd	.LC24(%rip), %ymm12, %ymm12
 356      00000000 
 357 0673 C51D58A2 		vaddpd	160(%rdx), %ymm12, %ymm12
 357      A0000000 
 358 067b C57D2962 		vmovapd	%ymm12, -32(%rdx)
 358      E0
 359 0680 4839D6   		cmpq	%rdx, %rsi
 360 0683 0F8567FD 		jne	.L15
 360      FFFF
 361 0689 4C89EA   		movq	%r13, %rdx
 362 068c 0F1F4000 		.p2align 4,,10
 363              		.p2align 3
 364              	.L17:
 365 0690 C57D2812 		vmovapd	(%rdx), %ymm10
 366 0694 4883C220 		addq	$32, %rdx
GAS LISTING /tmp/ccN8IMmu.s 			page 12


 367 0698 C57D28A2 		vmovapd	352(%rdx), %ymm12
 367      60010000 
 368 06a0 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 368      00000000 
 369 06a8 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 369      00000000 
 370 06b0 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 370      C008
 371 06b6 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 371      D808
 372 06bc C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 372      24D00000 
 372      00
 373 06c5 C57B10AC 		vmovsd	208(%rsp), %xmm13
 373      24D00000 
 373      00
 374 06ce C57B10B4 		vmovsd	216(%rsp), %xmm14
 374      24D80000 
 374      00
 375 06d7 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 375      C5
 376 06dc C57B10BC 		vmovsd	224(%rsp), %xmm15
 376      24E00000 
 376      00
 377 06e5 C5FB109C 		vmovsd	232(%rsp), %xmm3
 377      24E80000 
 377      00
 378 06ee 48898424 		movq	%rax, 176(%rsp)
 378      B0000000 
 379 06f6 C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 379      C6
 380 06fb C5FA7EAC 		vmovq	176(%rsp), %xmm5
 380      24B00000 
 380      00
 381 0704 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 381      E801
 382 070a C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 382      C7
 383 070f C5F97FAC 		vmovdqa	%xmm5, 176(%rsp)
 383      24B00000 
 383      00
 384 0718 C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 384      00000000 
 385 0720 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 386 0724 48898424 		movq	%rax, 144(%rsp)
 386      90000000 
 387 072c C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 387      C3
 388 0731 C5FA7E9C 		vmovq	144(%rsp), %xmm3
 388      24900000 
 388      00
 389 073a C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm9
 389      C801
 390 0740 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 390      00000000 
 391 0748 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 391      00000000 
GAS LISTING /tmp/ccN8IMmu.s 			page 13


 392 0750 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 393 0754 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 394 0758 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 395 075c C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 395      00000000 
 396 0764 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 397 0768 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 397      00000000 
 398 0770 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 398      00000000 
 399 0778 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 399      00000000 
 400 0780 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 401 0784 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 401      00000000 
 402 078c C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 402      00000000 
 403 0794 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 403      F3
 404 0799 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 404      F7
 405 079e C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 406 07a2 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 406      00000000 
 407 07aa C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 407      EE
 408 07af C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 408      00000000 
 409 07b7 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 409      00000000 
 410 07bf C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 410      00000000 
 411 07c7 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 411      DB
 412 07cc C5796FBC 		vmovdqa	176(%rsp), %xmm15
 412      24B00000 
 412      00
 413 07d5 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 413      F6
 414 07da C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 415 07de C52558DA 		vaddpd	%ymm2, %ymm11, %ymm11
 416 07e2 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 417 07e6 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 417      F6
 418 07eb C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 419 07ef C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 420 07f3 C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 420      DE
 421 07f8 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 421      ED
 422 07fd C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 423 0801 C501DB1D 		vpand	.LC20(%rip), %xmm15, %xmm11
 423      00000000 
 424 0809 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 424      E601
 425 080f C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 426 0813 C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
GAS LISTING /tmp/ccN8IMmu.s 			page 14


 426      ED
 427 0818 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 428 081c C4C10973 		vpsllq	$1, %xmm14, %xmm14
 428      F601
 429 0822 C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 429      00000000 
 430 082a C4422129 		vpcmpeqq	%xmm13, %xmm11, %xmm11
 430      DD
 431 082f C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 431      00000000 
 432 0837 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 432      00000000 
 433 083f C4C27929 		vpcmpeqq	%xmm13, %xmm0, %xmm0
 433      C5
 434 0844 C4620137 		vpcmpgtq	.LC21(%rip), %xmm15, %xmm13
 434      2D000000 
 434      00
 435 084d C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 435      00000000 
 436 0855 C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 436      35000000 
 436      00
 437 085e C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
 437      00000000 
 438 0866 C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 438      D801
 439 086c C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 439      05000000 
 439      00
 440 0875 C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 440      E801
 441 087b C5F928C4 		vmovapd	%xmm4, %xmm0
 442 087f C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 442      01
 443 0884 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 443      00000000 
 444 088c C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 444      05000000 
 444      00
 445 0895 C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 445      00000000 
 446 089d C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 446      C601
 447 08a3 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 448 08a7 C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 448      D001
 449 08ad C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 449      EF40
 450 08b3 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 450      E140
 451 08b9 C4C16173 		vpsllq	$62, %xmm9, %xmm3
 451      F13E
 452 08bf C4C13173 		vpsllq	$62, %xmm15, %xmm9
 452      F73E
 453 08c5 C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 454 08c9 C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 454      CA
GAS LISTING /tmp/ccN8IMmu.s 			page 15


 455 08ce C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 455      E4B0
 456 08d4 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 456      00000000 
 457 08dc C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 457      00000000 
 458 08e4 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 458      C801
 459 08ea C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 459      E1
 460 08ef C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 461 08f3 C59D5905 		vmulpd	.LC25(%rip), %ymm12, %ymm0
 461      00000000 
 462 08fb C5FD5882 		vaddpd	-224(%rdx), %ymm0, %ymm0
 462      20FFFFFF 
 463 0903 C5FD2982 		vmovapd	%ymm0, -224(%rdx)
 463      20FFFFFF 
 464 090b C51D5925 		vmulpd	.LC26(%rip), %ymm12, %ymm12
 464      00000000 
 465 0913 C51D58A2 		vaddpd	160(%rdx), %ymm12, %ymm12
 465      A0000000 
 466 091b C57D2962 		vmovapd	%ymm12, -32(%rdx)
 466      E0
 467 0920 4839D6   		cmpq	%rdx, %rsi
 468 0923 0F8567FD 		jne	.L17
 468      FFFF
 469 0929 4C89E8   		movq	%r13, %rax
 470 092c 0F1F4000 		.p2align 4,,10
 471              		.p2align 3
 472              	.L19:
 473 0930 C57D2810 		vmovapd	(%rax), %ymm10
 474 0934 4883C020 		addq	$32, %rax
 475 0938 C57D28A0 		vmovapd	352(%rax), %ymm12
 475      60010000 
 476 0940 C5AD5425 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 476      00000000 
 477 0948 C5DD5905 		vmulpd	.LC2(%rip), %ymm4, %ymm0
 477      00000000 
 478 0950 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 478      C008
 479 0956 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 479      D808
 480 095c C5FD119C 		vmovupd	%ymm3, 208(%rsp)
 480      24D00000 
 480      00
 481 0965 C5FB109C 		vmovsd	208(%rsp), %xmm3
 481      24D00000 
 481      00
 482 096e C5FB10AC 		vmovsd	216(%rsp), %xmm5
 482      24D80000 
 482      00
 483 0977 C4E1FB2C 		vcvttsd2siq	%xmm3, %rcx
 483      CB
 484 097c C4E1FB2C 		vcvttsd2siq	%xmm5, %rdx
 484      D5
 485 0981 C57B108C 		vmovsd	224(%rsp), %xmm9
 485      24E00000 
GAS LISTING /tmp/ccN8IMmu.s 			page 16


 485      00
 486 098a C57B109C 		vmovsd	232(%rsp), %xmm11
 486      24E80000 
 486      00
 487 0993 48898C24 		movq	%rcx, 176(%rsp)
 487      B0000000 
 488 099b C4C1FB2C 		vcvttsd2siq	%xmm9, %rcx
 488      C9
 489 09a0 C5FA7EAC 		vmovq	176(%rsp), %xmm5
 489      24B00000 
 489      00
 490 09a9 C4E3D122 		vpinsrq	$1, %rdx, %xmm5, %xmm3
 490      DA01
 491 09af C4C1FB2C 		vcvttsd2siq	%xmm11, %rdx
 491      D3
 492 09b4 C5F97F9C 		vmovdqa	%xmm3, 176(%rsp)
 492      24B00000 
 492      00
 493 09bd C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 493      00000000 
 494 09c5 48898C24 		movq	%rcx, 144(%rsp)
 494      90000000 
 495 09cd C5FA7EAC 		vmovq	144(%rsp), %xmm5
 495      24900000 
 495      00
 496 09d6 C463D122 		vpinsrq	$1, %rdx, %xmm5, %xmm9
 496      CA01
 497 09dc C5FD592D 		vmulpd	.LC3(%rip), %ymm0, %ymm5
 497      00000000 
 498 09e4 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 498      00000000 
 499 09ec C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 500 09f0 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 501 09f4 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 502 09f8 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 503 09fc C57D5935 		vmulpd	.LC8(%rip), %ymm0, %ymm14
 503      00000000 
 504 0a04 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 505 0a08 C57D593D 		vmulpd	.LC6(%rip), %ymm0, %ymm15
 505      00000000 
 506 0a10 C57D592D 		vmulpd	.LC10(%rip), %ymm0, %ymm13
 506      00000000 
 507 0a18 C50D5835 		vaddpd	.LC9(%rip), %ymm14, %ymm14
 507      00000000 
 508 0a20 C56559DB 		vmulpd	%ymm3, %ymm3, %ymm11
 509 0a24 C505583D 		vaddpd	.LC7(%rip), %ymm15, %ymm15
 509      00000000 
 510 0a2c C515582D 		vaddpd	.LC11(%rip), %ymm13, %ymm13
 510      00000000 
 511 0a34 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm14
 511      F3
 512 0a39 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 512      F7
 513 0a3e C51559EB 		vmulpd	%ymm3, %ymm13, %ymm13
 514 0a42 C57D593D 		vmulpd	.LC14(%rip), %ymm0, %ymm15
 514      00000000 
 515 0a4a C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
GAS LISTING /tmp/ccN8IMmu.s 			page 17


 515      EE
 516 0a4f C57D5935 		vmulpd	.LC12(%rip), %ymm0, %ymm14
 516      00000000 
 517 0a57 C505583D 		vaddpd	.LC15(%rip), %ymm15, %ymm15
 517      00000000 
 518 0a5f C50D5835 		vaddpd	.LC13(%rip), %ymm14, %ymm14
 518      00000000 
 519 0a67 C4410559 		vmulpd	%ymm11, %ymm15, %ymm11
 519      DB
 520 0a6c C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 520      FF
 521 0a71 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 521      F6
 522 0a76 C53D59D8 		vmulpd	%ymm0, %ymm8, %ymm11
 523 0a7a C52558DA 		vaddpd	%ymm2, %ymm11, %ymm11
 524 0a7e C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 525 0a82 C4412558 		vaddpd	%ymm14, %ymm11, %ymm14
 525      F6
 526 0a87 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 527 0a8b C5FD59C6 		vmulpd	%ymm6, %ymm0, %ymm0
 528 0a8f C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 528      DE
 529 0a94 C4412559 		vmulpd	%ymm13, %ymm11, %ymm13
 529      ED
 530 0a99 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 531 0a9d C4C37D19 		vextractf128	$0x1, %ymm4, %xmm14
 531      E601
 532 0aa3 C59558ED 		vaddpd	%ymm5, %ymm13, %ymm5
 533 0aa7 C4C10973 		vpsllq	$1, %xmm14, %xmm14
 533      F601
 534 0aad C5796FAC 		vmovdqa	176(%rsp), %xmm13
 534      24B00000 
 534      00
 535 0ab6 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 536 0aba C5B1DB05 		vpand	.LC20(%rip), %xmm9, %xmm0
 536      00000000 
 537 0ac2 C511DB1D 		vpand	.LC20(%rip), %xmm13, %xmm11
 537      00000000 
 538 0aca C509DB35 		vpand	.LC22(%rip), %xmm14, %xmm14
 538      00000000 
 539 0ad2 C4C27929 		vpcmpeqq	%xmm15, %xmm0, %xmm0
 539      C7
 540 0ad7 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
 540      DF
 541 0adc C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 541      00000000 
 542 0ae4 C441796F 		vmovdqa	%xmm13, %xmm15
 542      FD
 543 0ae9 C521EF1D 		vpxor	.LC33(%rip), %xmm11, %xmm11
 543      00000000 
 544 0af1 C4621137 		vpcmpgtq	.LC21(%rip), %xmm13, %xmm13
 544      2D000000 
 544      00
 545 0afa C4620929 		vpcmpeqq	.LC22(%rip), %xmm14, %xmm14
 545      35000000 
 545      00
 546 0b03 C509EF35 		vpxor	.LC33(%rip), %xmm14, %xmm14
GAS LISTING /tmp/ccN8IMmu.s 			page 18


 546      00000000 
 547 0b0b C4632518 		vinsertf128	$0x1, %xmm0, %ymm11, %ymm11
 547      D801
 548 0b11 C4E23137 		vpcmpgtq	.LC21(%rip), %xmm9, %xmm0
 548      05000000 
 548      00
 549 0b1a C4631518 		vinsertf128	$0x1, %xmm0, %ymm13, %ymm13
 549      E801
 550 0b20 C5F928C4 		vmovapd	%xmm4, %xmm0
 551 0b24 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 551      01
 552 0b29 C5F9DB05 		vpand	.LC22(%rip), %xmm0, %xmm0
 552      00000000 
 553 0b31 C4E27929 		vpcmpeqq	.LC22(%rip), %xmm0, %xmm0
 553      05000000 
 553      00
 554 0b3a C5F9EF05 		vpxor	.LC33(%rip), %xmm0, %xmm0
 554      00000000 
 555 0b42 C4C37D18 		vinsertf128	$0x1, %xmm14, %ymm0, %ymm0
 555      C601
 556 0b48 C59554E0 		vandpd	%ymm0, %ymm13, %ymm4
 557 0b4c C4637D19 		vextractf128	$0x1, %ymm10, %xmm0
 557      D001
 558 0b52 C4E3554B 		vblendvpd	%ymm4, %ymm7, %ymm5, %ymm5
 558      EF40
 559 0b58 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm4
 559      E140
 560 0b5e C4C16173 		vpsllq	$62, %xmm9, %xmm3
 560      F13E
 561 0b64 C4C13173 		vpsllq	$62, %xmm15, %xmm9
 561      F73E
 562 0b6a C5E1EFC0 		vpxor	%xmm0, %xmm3, %xmm0
 563 0b6e C44131EF 		vpxor	%xmm10, %xmm9, %xmm9
 563      CA
 564 0b73 C4E3554B 		vblendvpd	%ymm11, %ymm4, %ymm5, %ymm4
 564      E4B0
 565 0b79 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 565      00000000 
 566 0b81 C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 566      00000000 
 567 0b89 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 567      C801
 568 0b8f C4C15D57 		vxorpd	%ymm9, %ymm4, %ymm4
 568      E1
 569 0b94 C51D59E4 		vmulpd	%ymm4, %ymm12, %ymm12
 570 0b98 C57D2960 		vmovapd	%ymm12, -32(%rax)
 570      E0
 571 0b9d C51D58A0 		vaddpd	-224(%rax), %ymm12, %ymm12
 571      20FFFFFF 
 572 0ba5 C57D29A0 		vmovapd	%ymm12, -224(%rax)
 572      20FFFFFF 
 573 0bad 4839C6   		cmpq	%rax, %rsi
 574 0bb0 0F857AFD 		jne	.L19
 574      FFFF
 575 0bb6 C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 575      00000000 
 576 0bbe 83EF01   		subl	$1, %edi
GAS LISTING /tmp/ccN8IMmu.s 			page 19


 577 0bc1 C5DD5984 		vmulpd	240(%rsp), %ymm4, %ymm0
 577      24F00000 
 577      00
 578 0bca C5FD5884 		vaddpd	624(%rsp), %ymm0, %ymm0
 578      24700200 
 578      00
 579 0bd3 C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 579      24700200 
 579      00
 580 0bdc C5DD5984 		vmulpd	272(%rsp), %ymm4, %ymm0
 580      24100100 
 580      00
 581 0be5 C5FD5884 		vaddpd	656(%rsp), %ymm0, %ymm0
 581      24900200 
 581      00
 582 0bee C5FD2984 		vmovapd	%ymm0, 656(%rsp)
 582      24900200 
 582      00
 583 0bf7 C5DD5984 		vmulpd	304(%rsp), %ymm4, %ymm0
 583      24300100 
 583      00
 584 0c00 C5FD5884 		vaddpd	688(%rsp), %ymm0, %ymm0
 584      24B00200 
 584      00
 585 0c09 C5FD2984 		vmovapd	%ymm0, 688(%rsp)
 585      24B00200 
 585      00
 586 0c12 C5DD5984 		vmulpd	336(%rsp), %ymm4, %ymm0
 586      24500100 
 586      00
 587 0c1b C5FD5884 		vaddpd	720(%rsp), %ymm0, %ymm0
 587      24D00200 
 587      00
 588 0c24 C5FD2984 		vmovapd	%ymm0, 720(%rsp)
 588      24D00200 
 588      00
 589 0c2d C5DD5984 		vmulpd	368(%rsp), %ymm4, %ymm0
 589      24700100 
 589      00
 590 0c36 C5FD5884 		vaddpd	752(%rsp), %ymm0, %ymm0
 590      24F00200 
 590      00
 591 0c3f C5FD2984 		vmovapd	%ymm0, 752(%rsp)
 591      24F00200 
 591      00
 592 0c48 C5DD5984 		vmulpd	400(%rsp), %ymm4, %ymm0
 592      24900100 
 592      00
 593 0c51 C5FD5884 		vaddpd	784(%rsp), %ymm0, %ymm0
 593      24100300 
 593      00
 594 0c5a C5FD2984 		vmovapd	%ymm0, 784(%rsp)
 594      24100300 
 594      00
 595 0c63 0F85E7F4 		jne	.L30
 595      FFFF
 596 0c69 4489E0   		movl	%r12d, %eax
GAS LISTING /tmp/ccN8IMmu.s 			page 20


 597 0c6c BA1F85EB 		movl	$1374389535, %edx
 597      51
 598 0c71 F7EA     		imull	%edx
 599 0c73 4489E0   		movl	%r12d, %eax
 600 0c76 C1F81F   		sarl	$31, %eax
 601 0c79 C1FA05   		sarl	$5, %edx
 602 0c7c 29C2     		subl	%eax, %edx
 603 0c7e B8640000 		movl	$100, %eax
 603      00
 604 0c83 0FAFD0   		imull	%eax, %edx
 605 0c86 4489E0   		movl	%r12d, %eax
 606 0c89 29D0     		subl	%edx, %eax
 607 0c8b 83F801   		cmpl	$1, %eax
 608 0c8e 0F848C00 		je	.L22
 608      0000
 609              	.L28:
 610 0c94 4183C418 		addl	$24, %r12d
 611 0c98 4881C3C0 		addq	$192, %rbx
 611      000000
 612 0c9f 4181FCE0 		cmpl	$18144, %r12d
 612      460000
 613 0ca6 0F85BDF3 		jne	.L12
 613      FFFF
 614 0cac C5F877   		vzeroupper
 615 0caf E8000000 		call	clock
 615      00
 616 0cb4 BA0C0000 		movl	$12, %edx
 616      00
 617 0cb9 BE000000 		movl	$.LC31, %esi
 617      00
 618 0cbe BF000000 		movl	$_ZSt4cout, %edi
 618      00
 619 0cc3 4889C3   		movq	%rax, %rbx
 620 0cc6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 620      00
 621 0ccb 482B1C24 		subq	(%rsp), %rbx
 622 0ccf 48BECFF7 		movabsq	$2361183241434822607, %rsi
 622      53E3A59B 
 622      C420
 623 0cd9 BF000000 		movl	$_ZSt4cout, %edi
 623      00
 624 0cde 4889D8   		movq	%rbx, %rax
 625 0ce1 4889D9   		movq	%rbx, %rcx
 626 0ce4 48F7EE   		imulq	%rsi
 627 0ce7 48C1F93F 		sarq	$63, %rcx
 628 0ceb 4889D6   		movq	%rdx, %rsi
 629 0cee 48C1FE07 		sarq	$7, %rsi
 630 0cf2 4829CE   		subq	%rcx, %rsi
 631 0cf5 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 631      00
 632 0cfa BE000000 		movl	$.LC32, %esi
 632      00
 633 0cff 4889C7   		movq	%rax, %rdi
 634 0d02 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 634      00
 635 0d07 4889C7   		movq	%rax, %rdi
 636 0d0a E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
GAS LISTING /tmp/ccN8IMmu.s 			page 21


 636      00
 637 0d0f 488D65D8 		leaq	-40(%rbp), %rsp
 638 0d13 31C0     		xorl	%eax, %eax
 639 0d15 5B       		popq	%rbx
 640 0d16 415C     		popq	%r12
 641 0d18 415D     		popq	%r13
 642 0d1a 415E     		popq	%r14
 643 0d1c 415F     		popq	%r15
 644 0d1e 5D       		popq	%rbp
 645              		.cfi_remember_state
 646              		.cfi_def_cfa 7, 8
 647 0d1f C3       		ret
 648              		.p2align 4,,10
 649              		.p2align 3
 650              	.L22:
 651              		.cfi_restore_state
 652 0d20 488D8424 		leaq	816(%rsp), %rax
 652      30030000 
 653 0d28 4C8DB424 		leaq	624(%rsp), %r14
 653      70020000 
 654 0d30 48894424 		movq	%rax, 8(%rsp)
 654      08
 655 0d35 EB65     		jmp	.L29
 656              	.L34:
 657 0d37 0FB64243 		movzbl	67(%rdx), %eax
 658              	.L27:
 659 0d3b 0FBEF0   		movsbl	%al, %esi
 660 0d3e 4C89C7   		movq	%r8, %rdi
 661 0d41 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 661      2450
 662 0d47 C5FD2974 		vmovapd	%ymm6, 112(%rsp)
 662      2470
 663 0d4d C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 663      24900000 
 663      00
 664 0d56 C57D2984 		vmovapd	%ymm8, 176(%rsp)
 664      24B00000 
 664      00
 665 0d5f C5F877   		vzeroupper
 666 0d62 4983C620 		addq	$32, %r14
 667 0d66 E8000000 		call	_ZNSo3putEc
 667      00
 668 0d6b 4889C7   		movq	%rax, %rdi
 669 0d6e E8000000 		call	_ZNSo5flushEv
 669      00
 670 0d73 4C3B7424 		cmpq	8(%rsp), %r14
 670      08
 671 0d78 C57D2884 		vmovapd	176(%rsp), %ymm8
 671      24B00000 
 671      00
 672 0d81 C5FD2894 		vmovapd	144(%rsp), %ymm2
 672      24900000 
 672      00
 673 0d8a C5FD2874 		vmovapd	112(%rsp), %ymm6
 673      2470
 674 0d90 C5FD284C 		vmovapd	80(%rsp), %ymm1
 674      2450
GAS LISTING /tmp/ccN8IMmu.s 			page 22


 675 0d96 0F84F8FE 		je	.L28
 675      FFFF
 676              	.L29:
 677 0d9c C4C17B10 		vmovsd	(%r14), %xmm3
 677      1E
 678 0da1 BA040000 		movl	$4, %edx
 678      00
 679 0da6 BE000000 		movl	$.LC28, %esi
 679      00
 680 0dab C4C17B10 		vmovsd	192(%r14), %xmm0
 680      86C00000 
 680      00
 681 0db4 BF000000 		movl	$_ZSt4cout, %edi
 681      00
 682 0db9 C5FD294C 		vmovapd	%ymm1, 16(%rsp)
 682      2410
 683 0dbf C5FD2974 		vmovapd	%ymm6, 48(%rsp)
 683      2430
 684 0dc5 C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 684      2450
 685 0dcb C57D2944 		vmovapd	%ymm8, 112(%rsp)
 685      2470
 686 0dd1 C5FB119C 		vmovsd	%xmm3, 144(%rsp)
 686      24900000 
 686      00
 687 0dda C5FB1184 		vmovsd	%xmm0, 176(%rsp)
 687      24B00000 
 687      00
 688 0de3 C5F877   		vzeroupper
 689 0de6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 689      00
 690 0deb C5FB1084 		vmovsd	176(%rsp), %xmm0
 690      24B00000 
 690      00
 691 0df4 BF000000 		movl	$_ZSt4cout, %edi
 691      00
 692 0df9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 692      00
 693 0dfe BA030000 		movl	$3, %edx
 693      00
 694 0e03 BE000000 		movl	$.LC29, %esi
 694      00
 695 0e08 4889C7   		movq	%rax, %rdi
 696 0e0b 4989C7   		movq	%rax, %r15
 697 0e0e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 697      00
 698 0e13 C5FB109C 		vmovsd	144(%rsp), %xmm3
 698      24900000 
 698      00
 699 0e1c 4C89FF   		movq	%r15, %rdi
 700 0e1f C5F928C3 		vmovapd	%xmm3, %xmm0
 701 0e23 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 701      00
 702 0e28 4989C0   		movq	%rax, %r8
 703 0e2b 488B00   		movq	(%rax), %rax
 704 0e2e C57D2844 		vmovapd	112(%rsp), %ymm8
 704      2470
GAS LISTING /tmp/ccN8IMmu.s 			page 23


 705 0e34 C5FD2854 		vmovapd	80(%rsp), %ymm2
 705      2450
 706 0e3a C5FD2874 		vmovapd	48(%rsp), %ymm6
 706      2430
 707 0e40 488B40E8 		movq	-24(%rax), %rax
 708 0e44 C5FD284C 		vmovapd	16(%rsp), %ymm1
 708      2410
 709 0e4a 498B9400 		movq	240(%r8,%rax), %rdx
 709      F0000000 
 710 0e52 4885D2   		testq	%rdx, %rdx
 711 0e55 7478     		je	.L33
 712 0e57 807A3800 		cmpb	$0, 56(%rdx)
 713 0e5b 0F85D6FE 		jne	.L34
 713      FFFF
 714 0e61 4889D7   		movq	%rdx, %rdi
 715 0e64 C5FD294C 		vmovapd	%ymm1, 16(%rsp)
 715      2410
 716 0e6a 4C898424 		movq	%r8, 144(%rsp)
 716      90000000 
 717 0e72 C5FD2974 		vmovapd	%ymm6, 48(%rsp)
 717      2430
 718 0e78 48899424 		movq	%rdx, 176(%rsp)
 718      B0000000 
 719 0e80 C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 719      2450
 720 0e86 C57D2944 		vmovapd	%ymm8, 112(%rsp)
 720      2470
 721 0e8c C5F877   		vzeroupper
 722 0e8f E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 722      00
 723 0e94 488B9424 		movq	176(%rsp), %rdx
 723      B0000000 
 724 0e9c BE0A0000 		movl	$10, %esi
 724      00
 725 0ea1 488B02   		movq	(%rdx), %rax
 726 0ea4 4889D7   		movq	%rdx, %rdi
 727 0ea7 FF5030   		call	*48(%rax)
 728 0eaa C5FD284C 		vmovapd	16(%rsp), %ymm1
 728      2410
 729 0eb0 4C8B8424 		movq	144(%rsp), %r8
 729      90000000 
 730 0eb8 C5FD2874 		vmovapd	48(%rsp), %ymm6
 730      2430
 731 0ebe C5FD2854 		vmovapd	80(%rsp), %ymm2
 731      2450
 732 0ec4 C57D2844 		vmovapd	112(%rsp), %ymm8
 732      2470
 733 0eca E96CFEFF 		jmp	.L27
 733      FF
 734              	.L33:
 735 0ecf C5F877   		vzeroupper
 736 0ed2 E8000000 		call	_ZSt16__throw_bad_castv
 736      00
 737              		.cfi_endproc
 738              	.LFE4443:
 739              		.size	main, .-main
 740 0ed7 660F1F84 		.p2align 4,,15
GAS LISTING /tmp/ccN8IMmu.s 			page 24


 740      00000000 
 740      00
 741              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 742              	_GLOBAL__sub_I__Z8linspaceddi:
 743              	.LFB4703:
 744              		.cfi_startproc
 745 0ee0 4883EC08 		subq	$8, %rsp
 746              		.cfi_def_cfa_offset 16
 747 0ee4 BF000000 		movl	$_ZStL8__ioinit, %edi
 747      00
 748 0ee9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 748      00
 749 0eee BA000000 		movl	$__dso_handle, %edx
 749      00
 750 0ef3 BE000000 		movl	$_ZStL8__ioinit, %esi
 750      00
 751 0ef8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 751      00
 752 0efd 4883C408 		addq	$8, %rsp
 753              		.cfi_def_cfa_offset 8
 754 0f01 E9000000 		jmp	__cxa_atexit
 754      00
 755              		.cfi_endproc
 756              	.LFE4703:
 757              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 758              		.section	.init_array,"aw"
 759              		.align 8
 760 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 760      00000000 
 761              		.section	.rodata
 762              		.align 32
 763              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 764              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 765              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 766 0000 FFFFFFFF 		.long	-1
 767 0004 FFFFFF7F 		.long	2147483647
 768 0008 FFFFFFFF 		.long	-1
 769 000c FFFFFF7F 		.long	2147483647
 770 0010 FFFFFFFF 		.long	-1
 771 0014 FFFFFF7F 		.long	2147483647
 772 0018 FFFFFFFF 		.long	-1
 773 001c FFFFFF7F 		.long	2147483647
 774              		.local	_ZStL8__ioinit
 775              		.comm	_ZStL8__ioinit,1,1
 776              		.section	.rodata.cst8,"aM",@progbits,8
 777              		.align 8
 778              	.LC0:
 779 0000 9A999999 		.long	2576980378
 780 0004 9999B93F 		.long	1069128089
 781              		.align 8
 782              	.LC1:
 783 0008 00000000 		.long	0
 784 000c 0000F03F 		.long	1072693248
 785              		.section	.rodata.cst32,"aM",@progbits,32
 786              		.align 32
 787              	.LC2:
 788 0000 83C8C96D 		.long	1841940611
GAS LISTING /tmp/ccN8IMmu.s 			page 25


 789 0004 305FE43F 		.long	1071931184
 790 0008 83C8C96D 		.long	1841940611
 791 000c 305FE43F 		.long	1071931184
 792 0010 83C8C96D 		.long	1841940611
 793 0014 305FE43F 		.long	1071931184
 794 0018 83C8C96D 		.long	1841940611
 795 001c 305FE43F 		.long	1071931184
 796              		.align 32
 797              	.LC3:
 798 0020 00000050 		.long	1342177280
 799 0024 FB21F93F 		.long	1073291771
 800 0028 00000050 		.long	1342177280
 801 002c FB21F93F 		.long	1073291771
 802 0030 00000050 		.long	1342177280
 803 0034 FB21F93F 		.long	1073291771
 804 0038 00000050 		.long	1342177280
 805 003c FB21F93F 		.long	1073291771
 806              		.align 32
 807              	.LC4:
 808 0040 00000060 		.long	1610612736
 809 0044 B410513E 		.long	1045500084
 810 0048 00000060 		.long	1610612736
 811 004c B410513E 		.long	1045500084
 812 0050 00000060 		.long	1610612736
 813 0054 B410513E 		.long	1045500084
 814 0058 00000060 		.long	1610612736
 815 005c B410513E 		.long	1045500084
 816              		.align 32
 817              	.LC5:
 818 0060 075C1433 		.long	856972295
 819 0064 26A6913C 		.long	1016178214
 820 0068 075C1433 		.long	856972295
 821 006c 26A6913C 		.long	1016178214
 822 0070 075C1433 		.long	856972295
 823 0074 26A6913C 		.long	1016178214
 824 0078 075C1433 		.long	856972295
 825 007c 26A6913C 		.long	1016178214
 826              		.align 32
 827              	.LC6:
 828 0080 D0F71011 		.long	286324688
 829 0084 1111813F 		.long	1065423121
 830 0088 D0F71011 		.long	286324688
 831 008c 1111813F 		.long	1065423121
 832 0090 D0F71011 		.long	286324688
 833 0094 1111813F 		.long	1065423121
 834 0098 D0F71011 		.long	286324688
 835 009c 1111813F 		.long	1065423121
 836              		.align 32
 837              	.LC7:
 838 00a0 48555555 		.long	1431655752
 839 00a4 5555C5BF 		.long	-1077586603
 840 00a8 48555555 		.long	1431655752
 841 00ac 5555C5BF 		.long	-1077586603
 842 00b0 48555555 		.long	1431655752
 843 00b4 5555C5BF 		.long	-1077586603
 844 00b8 48555555 		.long	1431655752
 845 00bc 5555C5BF 		.long	-1077586603
GAS LISTING /tmp/ccN8IMmu.s 			page 26


 846              		.align 32
 847              	.LC8:
 848 00c0 CD9CD11F 		.long	533830861
 849 00c4 FDD8E53D 		.long	1038473469
 850 00c8 CD9CD11F 		.long	533830861
 851 00cc FDD8E53D 		.long	1038473469
 852 00d0 CD9CD11F 		.long	533830861
 853 00d4 FDD8E53D 		.long	1038473469
 854 00d8 CD9CD11F 		.long	533830861
 855 00dc FDD8E53D 		.long	1038473469
 856              		.align 32
 857              	.LC9:
 858 00e0 5D1F29A9 		.long	2838044509
 859 00e4 E5E55ABE 		.long	-1101339163
 860 00e8 5D1F29A9 		.long	2838044509
 861 00ec E5E55ABE 		.long	-1101339163
 862 00f0 5D1F29A9 		.long	2838044509
 863 00f4 E5E55ABE 		.long	-1101339163
 864 00f8 5D1F29A9 		.long	2838044509
 865 00fc E5E55ABE 		.long	-1101339163
 866              		.align 32
 867              	.LC10:
 868 0100 A1487D56 		.long	1451051169
 869 0104 E31DC73E 		.long	1053236707
 870 0108 A1487D56 		.long	1451051169
 871 010c E31DC73E 		.long	1053236707
 872 0110 A1487D56 		.long	1451051169
 873 0114 E31DC73E 		.long	1053236707
 874 0118 A1487D56 		.long	1451051169
 875 011c E31DC73E 		.long	1053236707
 876              		.align 32
 877              	.LC11:
 878 0120 03DFBF19 		.long	432004867
 879 0124 A0012ABF 		.long	-1087766112
 880 0128 03DFBF19 		.long	432004867
 881 012c A0012ABF 		.long	-1087766112
 882 0130 03DFBF19 		.long	432004867
 883 0134 A0012ABF 		.long	-1087766112
 884 0138 03DFBF19 		.long	432004867
 885 013c A0012ABF 		.long	-1087766112
 886              		.align 32
 887              	.LC12:
 888 0140 914FC116 		.long	381767569
 889 0144 6CC156BF 		.long	-1084833428
 890 0148 914FC116 		.long	381767569
 891 014c 6CC156BF 		.long	-1084833428
 892 0150 914FC116 		.long	381767569
 893 0154 6CC156BF 		.long	-1084833428
 894 0158 914FC116 		.long	381767569
 895 015c 6CC156BF 		.long	-1084833428
 896              		.align 32
 897              	.LC13:
 898 0160 4B555555 		.long	1431655755
 899 0164 5555A53F 		.long	1067799893
 900 0168 4B555555 		.long	1431655755
 901 016c 5555A53F 		.long	1067799893
 902 0170 4B555555 		.long	1431655755
GAS LISTING /tmp/ccN8IMmu.s 			page 27


 903 0174 5555A53F 		.long	1067799893
 904 0178 4B555555 		.long	1431655755
 905 017c 5555A53F 		.long	1067799893
 906              		.align 32
 907              	.LC14:
 908 0180 9B1A86A0 		.long	2693143195
 909 0184 49FAA8BD 		.long	-1112999351
 910 0188 9B1A86A0 		.long	2693143195
 911 018c 49FAA8BD 		.long	-1112999351
 912 0190 9B1A86A0 		.long	2693143195
 913 0194 49FAA8BD 		.long	-1112999351
 914 0198 9B1A86A0 		.long	2693143195
 915 019c 49FAA8BD 		.long	-1112999351
 916              		.align 32
 917              	.LC15:
 918 01a0 053F4E7B 		.long	2068725509
 919 01a4 9DEE213E 		.long	1042411165
 920 01a8 053F4E7B 		.long	2068725509
 921 01ac 9DEE213E 		.long	1042411165
 922 01b0 053F4E7B 		.long	2068725509
 923 01b4 9DEE213E 		.long	1042411165
 924 01b8 053F4E7B 		.long	2068725509
 925 01bc 9DEE213E 		.long	1042411165
 926              		.align 32
 927              	.LC16:
 928 01c0 C64BAC7E 		.long	2125220806
 929 01c4 4F7E92BE 		.long	-1097695665
 930 01c8 C64BAC7E 		.long	2125220806
 931 01cc 4F7E92BE 		.long	-1097695665
 932 01d0 C64BAC7E 		.long	2125220806
 933 01d4 4F7E92BE 		.long	-1097695665
 934 01d8 C64BAC7E 		.long	2125220806
 935 01dc 4F7E92BE 		.long	-1097695665
 936              		.align 32
 937              	.LC17:
 938 01e0 F544C819 		.long	432555253
 939 01e4 A001FA3E 		.long	1056571808
 940 01e8 F544C819 		.long	432555253
 941 01ec A001FA3E 		.long	1056571808
 942 01f0 F544C819 		.long	432555253
 943 01f4 A001FA3E 		.long	1056571808
 944 01f8 F544C819 		.long	432555253
 945 01fc A001FA3E 		.long	1056571808
 946              		.align 32
 947              	.LC18:
 948 0200 00000000 		.long	0
 949 0204 0000E03F 		.long	1071644672
 950 0208 00000000 		.long	0
 951 020c 0000E03F 		.long	1071644672
 952 0210 00000000 		.long	0
 953 0214 0000E03F 		.long	1071644672
 954 0218 00000000 		.long	0
 955 021c 0000E03F 		.long	1071644672
 956              		.align 32
 957              	.LC19:
 958 0220 00000000 		.long	0
 959 0224 0000F03F 		.long	1072693248
GAS LISTING /tmp/ccN8IMmu.s 			page 28


 960 0228 00000000 		.long	0
 961 022c 0000F03F 		.long	1072693248
 962 0230 00000000 		.long	0
 963 0234 0000F03F 		.long	1072693248
 964 0238 00000000 		.long	0
 965 023c 0000F03F 		.long	1072693248
 966              		.section	.rodata.cst16,"aM",@progbits,16
 967              		.align 16
 968              	.LC20:
 969 0000 01000000 		.quad	1
 969      00000000 
 970 0008 01000000 		.quad	1
 970      00000000 
 971              		.align 16
 972              	.LC21:
 973 0010 00000000 		.quad	36028797018963968
 973      00008000 
 974 0018 00000000 		.quad	36028797018963968
 974      00008000 
 975              		.align 16
 976              	.LC22:
 977 0020 00000000 		.quad	-9007199254740992
 977      0000E0FF 
 978 0028 00000000 		.quad	-9007199254740992
 978      0000E0FF 
 979              		.align 16
 980              	.LC23:
 981 0030 00000000 		.quad	-9223372036854775808
 981      00000080 
 982 0038 00000000 		.quad	-9223372036854775808
 982      00000080 
 983              		.section	.rodata.cst32
 984              		.align 32
 985              	.LC24:
 986 0240 7B14AE47 		.long	1202590843
 987 0244 E17A743F 		.long	1064598241
 988 0248 7B14AE47 		.long	1202590843
 989 024c E17A743F 		.long	1064598241
 990 0250 7B14AE47 		.long	1202590843
 991 0254 E17A743F 		.long	1064598241
 992 0258 7B14AE47 		.long	1202590843
 993 025c E17A743F 		.long	1064598241
 994              		.align 32
 995              	.LC25:
 996 0260 00000000 		.long	0
 997 0264 00000040 		.long	1073741824
 998 0268 00000000 		.long	0
 999 026c 00000040 		.long	1073741824
 1000 0270 00000000 		.long	0
 1001 0274 00000040 		.long	1073741824
 1002 0278 00000000 		.long	0
 1003 027c 00000040 		.long	1073741824
 1004              		.align 32
 1005              	.LC26:
 1006 0280 7B14AE47 		.long	1202590843
 1007 0284 E17A843F 		.long	1065646817
 1008 0288 7B14AE47 		.long	1202590843
GAS LISTING /tmp/ccN8IMmu.s 			page 29


 1009 028c E17A843F 		.long	1065646817
 1010 0290 7B14AE47 		.long	1202590843
 1011 0294 E17A843F 		.long	1065646817
 1012 0298 7B14AE47 		.long	1202590843
 1013 029c E17A843F 		.long	1065646817
 1014              		.align 32
 1015              	.LC27:
 1016 02a0 4F1BE8B4 		.long	3035110223
 1017 02a4 814E5B3F 		.long	1062948481
 1018 02a8 4F1BE8B4 		.long	3035110223
 1019 02ac 814E5B3F 		.long	1062948481
 1020 02b0 4F1BE8B4 		.long	3035110223
 1021 02b4 814E5B3F 		.long	1062948481
 1022 02b8 4F1BE8B4 		.long	3035110223
 1023 02bc 814E5B3F 		.long	1062948481
 1024              		.align 32
 1025              	.LC30:
 1026 02c0 9A999999 		.long	2576980378
 1027 02c4 9999B93F 		.long	1069128089
 1028 02c8 9A999999 		.long	2576980378
 1029 02cc 9999B93F 		.long	1069128089
 1030 02d0 9A999999 		.long	2576980378
 1031 02d4 9999B93F 		.long	1069128089
 1032 02d8 9A999999 		.long	2576980378
 1033 02dc 9999B93F 		.long	1069128089
 1034              		.section	.rodata.cst16
 1035              		.align 16
 1036              	.LC33:
 1037 0040 FFFFFFFF 		.quad	-1
 1037      FFFFFFFF 
 1038 0048 FFFFFFFF 		.quad	-1
 1038      FFFFFFFF 
 1039              		.hidden	__dso_handle
 1040              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1041              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccN8IMmu.s 			page 30


DEFINED SYMBOLS
                            *ABS*:0000000000000000 FLOPS_TEST_TRANSZENDENTAL.cpp
     /tmp/ccN8IMmu.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccN8IMmu.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccN8IMmu.s:81     .text.startup:0000000000000000 main
     /tmp/ccN8IMmu.s:765    .rodata:0000000000000000 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccN8IMmu.s:742    .text.startup:0000000000000ee0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccN8IMmu.s:782    .rodata.cst8:0000000000000008 .LC1
     /tmp/ccN8IMmu.s:778    .rodata.cst8:0000000000000000 .LC0
     /tmp/ccN8IMmu.s:927    .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccN8IMmu.s:937    .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccN8IMmu.s:947    .rodata.cst32:0000000000000200 .LC18
     /tmp/ccN8IMmu.s:957    .rodata.cst32:0000000000000220 .LC19
     /tmp/ccN8IMmu.s:1025   .rodata.cst32:00000000000002c0 .LC30
     /tmp/ccN8IMmu.s:787    .rodata.cst32:0000000000000000 .LC2
     /tmp/ccN8IMmu.s:797    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccN8IMmu.s:807    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccN8IMmu.s:817    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccN8IMmu.s:847    .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccN8IMmu.s:827    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccN8IMmu.s:867    .rodata.cst32:0000000000000100 .LC10
     /tmp/ccN8IMmu.s:857    .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccN8IMmu.s:837    .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccN8IMmu.s:877    .rodata.cst32:0000000000000120 .LC11
     /tmp/ccN8IMmu.s:907    .rodata.cst32:0000000000000180 .LC14
     /tmp/ccN8IMmu.s:887    .rodata.cst32:0000000000000140 .LC12
     /tmp/ccN8IMmu.s:917    .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccN8IMmu.s:897    .rodata.cst32:0000000000000160 .LC13
     /tmp/ccN8IMmu.s:968    .rodata.cst16:0000000000000000 .LC20
     /tmp/ccN8IMmu.s:976    .rodata.cst16:0000000000000020 .LC22
     /tmp/ccN8IMmu.s:1036   .rodata.cst16:0000000000000040 .LC33
     /tmp/ccN8IMmu.s:972    .rodata.cst16:0000000000000010 .LC21
     /tmp/ccN8IMmu.s:980    .rodata.cst16:0000000000000030 .LC23
     /tmp/ccN8IMmu.s:985    .rodata.cst32:0000000000000240 .LC24
     /tmp/ccN8IMmu.s:995    .rodata.cst32:0000000000000260 .LC25
     /tmp/ccN8IMmu.s:1005   .rodata.cst32:0000000000000280 .LC26
     /tmp/ccN8IMmu.s:1015   .rodata.cst32:00000000000002a0 .LC27

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSo3putEc
_ZNSo5flushEv
_ZNSo9_M_insertIdEERSoT_
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
GAS LISTING /tmp/ccN8IMmu.s 			page 31


