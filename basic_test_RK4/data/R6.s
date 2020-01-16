GAS LISTING /tmp/cc6a7vY9.s 			page 1


   1              		.file	"basic_test_RK4.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1:
   5              	.LFB4597:
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
  18              	.LFE4597:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4381:
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
  39 0023 C5EB2AD3 		vcvtsi2sd	%ebx, %xmm2, %xmm2
  40 0027 83FB01   		cmpl	$1, %ebx
  41 002a C5FB1044 		vmovsd	8(%rsp), %xmm0
  41      2408
  42 0030 C5FB100C 		vmovsd	(%rsp), %xmm1
  42      24
  43 0035 C5FB1100 		vmovsd	%xmm0, (%rax)
  44 0039 C5F35CC8 		vsubsd	%xmm0, %xmm1, %xmm1
  45 003d C5EB5C15 		vsubsd	.LC0(%rip), %xmm2, %xmm2
  45      00000000 
  46 0045 C5F35ECA 		vdivsd	%xmm2, %xmm1, %xmm1
  47 0049 7E27     		jle	.L8
  48 004b 8D4BFE   		leal	-2(%rbx), %ecx
  49 004e 488D5008 		leaq	8(%rax), %rdx
GAS LISTING /tmp/cc6a7vY9.s 			page 2


  50 0052 488D4CC8 		leaq	16(%rax,%rcx,8), %rcx
  50      10
  51 0057 660F1F84 		.p2align 4,,10
  51      00000000 
  51      00
  52              		.p2align 3
  53              	.L6:
  54 0060 C5F358C0 		vaddsd	%xmm0, %xmm1, %xmm0
  55 0064 4883C208 		addq	$8, %rdx
  56 0068 C5FB1142 		vmovsd	%xmm0, -8(%rdx)
  56      F8
  57 006d 4839CA   		cmpq	%rcx, %rdx
  58 0070 75EE     		jne	.L6
  59              	.L8:
  60 0072 4883C410 		addq	$16, %rsp
  61              		.cfi_def_cfa_offset 16
  62 0076 5B       		popq	%rbx
  63              		.cfi_def_cfa_offset 8
  64 0077 C3       		ret
  65              		.cfi_endproc
  66              	.LFE4381:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.1,"aMS",@progbits,1
  69              	.LC7:
  70 0000 70203D20 		.string	"p = "
  70      00
  71              	.LC8:
  72 0005 78203D00 		.string	"x ="
  73              	.LC9:
  74 0009 456C7465 		.string	"Eltelt ido: "
  74      6C742069 
  74      646F3A20 
  74      00
  75              	.LC10:
  76 0016 206D7300 		.string	" ms"
  77              		.section	.text.startup,"ax",@progbits
  78              		.p2align 4,,15
  79              		.globl	main
  80              		.type	main, @function
  81              	main:
  82              	.LFB4383:
  83              		.cfi_startproc
  84 0000 55       		pushq	%rbp
  85              		.cfi_def_cfa_offset 16
  86              		.cfi_offset 6, -16
  87 0001 BFC0C402 		movl	$181440, %edi
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
GAS LISTING /tmp/cc6a7vY9.s 			page 3


  98 0014 53       		pushq	%rbx
  99 0015 4883E4E0 		andq	$-32, %rsp
 100 0019 4881ECD0 		subq	$976, %rsp
 100      030000
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 103      00000000 
 104 0028 4C8DB424 		leaq	784(%rsp), %r14
 104      10030000 
 105 0030 C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 105      00000000 
 106 0038 E8000000 		call	_Z8linspaceddi
 106      00
 107 003d 4989C4   		movq	%rax, %r12
 108 0040 E8000000 		call	clock
 108      00
 109 0045 C5FD2835 		vmovapd	.LC3(%rip), %ymm6
 109      00000000 
 110 004d 48894424 		movq	%rax, 8(%rsp)
 110      08
 111 0052 C57D2805 		vmovapd	.LC4(%rip), %ymm8
 111      00000000 
 112 005a C5FD283D 		vmovapd	.LC5(%rip), %ymm7
 112      00000000 
 113              	.L12:
 114 0062 C4C17D10 		vmovupd	(%r12), %ymm4
 114      2424
 115 0068 B8102700 		movl	$10000, %eax
 115      00
 116 006d C5FD2815 		vmovapd	.LC1(%rip), %ymm2
 116      00000000 
 117 0075 C5FD29A4 		vmovapd	%ymm4, 176(%rsp)
 117      24B00000 
 117      00
 118 007e C57D28CC 		vmovapd	%ymm4, %ymm9
 119 0082 C5FD29A4 		vmovapd	%ymm4, 784(%rsp)
 119      24100300 
 119      00
 120 008b C5FD2994 		vmovapd	%ymm2, 592(%rsp)
 120      24500200 
 120      00
 121 0094 C5FD281D 		vmovapd	.LC1(%rip), %ymm3
 121      00000000 
 122 009c C4C17D10 		vmovupd	32(%r12), %ymm2
 122      542420
 123 00a3 C5FD299C 		vmovapd	%ymm3, 624(%rsp)
 123      24700200 
 123      00
 124 00ac C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 124      24900000 
 124      00
 125 00b5 C57D28D2 		vmovapd	%ymm2, %ymm10
 126 00b9 C5FD2994 		vmovapd	%ymm2, 816(%rsp)
 126      24300300 
 126      00
 127 00c2 C5FD280D 		vmovapd	.LC1(%rip), %ymm1
GAS LISTING /tmp/cc6a7vY9.s 			page 4


 127      00000000 
 128 00ca C4C17D10 		vmovupd	64(%r12), %ymm3
 128      5C2440
 129 00d1 C5FD298C 		vmovapd	%ymm1, 656(%rsp)
 129      24900200 
 129      00
 130 00da C5FD295C 		vmovapd	%ymm3, 112(%rsp)
 130      2470
 131 00e0 C57D28FB 		vmovapd	%ymm3, %ymm15
 132 00e4 C5FD299C 		vmovapd	%ymm3, 848(%rsp)
 132      24500300 
 132      00
 133 00ed C5FD282D 		vmovapd	.LC1(%rip), %ymm5
 133      00000000 
 134 00f5 C4C17D10 		vmovupd	96(%r12), %ymm1
 134      4C2460
 135 00fc C5FD29AC 		vmovapd	%ymm5, 688(%rsp)
 135      24B00200 
 135      00
 136 0105 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 136      2450
 137 010b C57D28E1 		vmovapd	%ymm1, %ymm12
 138 010f C5FD298C 		vmovapd	%ymm1, 880(%rsp)
 138      24700300 
 138      00
 139 0118 C5FD2805 		vmovapd	.LC1(%rip), %ymm0
 139      00000000 
 140 0120 C4C17D10 		vmovupd	128(%r12), %ymm5
 140      AC248000 
 140      0000
 141 012a C5FD2984 		vmovapd	%ymm0, 720(%rsp)
 141      24D00200 
 141      00
 142 0133 C5FD296C 		vmovapd	%ymm5, 48(%rsp)
 142      2430
 143 0139 C57D28ED 		vmovapd	%ymm5, %ymm13
 144 013d C5FD29AC 		vmovapd	%ymm5, 912(%rsp)
 144      24900300 
 144      00
 145 0146 C57D281D 		vmovapd	.LC1(%rip), %ymm11
 145      00000000 
 146 014e C4C17D10 		vmovupd	160(%r12), %ymm0
 146      8424A000 
 146      0000
 147 0158 C57D29DC 		vmovapd	%ymm11, %ymm4
 148 015c C57D299C 		vmovapd	%ymm11, 752(%rsp)
 148      24F00200 
 148      00
 149 0165 C57D29DB 		vmovapd	%ymm11, %ymm3
 150 0169 C5FD2944 		vmovapd	%ymm0, 16(%rsp)
 150      2410
 151 016f C57D28F0 		vmovapd	%ymm0, %ymm14
 152 0173 C57D29DA 		vmovapd	%ymm11, %ymm2
 153 0177 C5FD2984 		vmovapd	%ymm0, 944(%rsp)
 153      24B00300 
 153      00
 154 0180 C57D29D9 		vmovapd	%ymm11, %ymm1
GAS LISTING /tmp/cc6a7vY9.s 			page 5


 155 0184 C57D29D8 		vmovapd	%ymm11, %ymm0
 156 0188 C57D29DD 		vmovapd	%ymm11, %ymm5
 157 018c EB2C     		jmp	.L22
 158 018e 6690     		.p2align 4,,10
 159              		.p2align 3
 160              	.L13:
 161 0190 C57D288C 		vmovapd	176(%rsp), %ymm9
 161      24B00000 
 161      00
 162 0199 C57D2894 		vmovapd	144(%rsp), %ymm10
 162      24900000 
 162      00
 163 01a2 C57D287C 		vmovapd	112(%rsp), %ymm15
 163      2470
 164 01a8 C57D2864 		vmovapd	80(%rsp), %ymm12
 164      2450
 165 01ae C57D286C 		vmovapd	48(%rsp), %ymm13
 165      2430
 166 01b4 C57D2874 		vmovapd	16(%rsp), %ymm14
 166      2410
 167              	.L22:
 168 01ba C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 169 01be 83E801   		subl	$1, %eax
 170 01c1 C441555C 		vsubpd	%ymm9, %ymm5, %ymm11
 170      D9
 171 01c6 C57D59C8 		vmulpd	%ymm0, %ymm0, %ymm9
 172 01ca C4C14D59 		vmulpd	%ymm11, %ymm6, %ymm5
 172      EB
 173 01cf C441355C 		vsubpd	%ymm10, %ymm9, %ymm10
 173      D2
 174 01d4 C5D558AC 		vaddpd	592(%rsp), %ymm5, %ymm5
 174      24500200 
 174      00
 175 01dd C4414D59 		vmulpd	%ymm10, %ymm6, %ymm9
 175      CA
 176 01e2 C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 176      C1
 177 01e7 C57559C9 		vmulpd	%ymm1, %ymm1, %ymm9
 178 01eb C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 179 01ef C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 180 01f3 C441355C 		vsubpd	%ymm15, %ymm9, %ymm9
 180      CF
 181 01f8 C5D55CAC 		vsubpd	784(%rsp), %ymm5, %ymm5
 181      24100300 
 181      00
 182 0201 C5FD5C84 		vsubpd	816(%rsp), %ymm0, %ymm0
 182      24300300 
 182      00
 183 020a C4414D59 		vmulpd	%ymm9, %ymm6, %ymm15
 183      F9
 184 020f C4C17558 		vaddpd	%ymm15, %ymm1, %ymm1
 184      CF
 185 0214 C56D59FA 		vmulpd	%ymm2, %ymm2, %ymm15
 186 0218 C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 187 021c C441055C 		vsubpd	%ymm12, %ymm15, %ymm12
 187      E4
 188 0221 C5F55C8C 		vsubpd	848(%rsp), %ymm1, %ymm1
GAS LISTING /tmp/cc6a7vY9.s 			page 6


 188      24500300 
 188      00
 189 022a C4414D59 		vmulpd	%ymm12, %ymm6, %ymm15
 189      FC
 190 022f C4C16D58 		vaddpd	%ymm15, %ymm2, %ymm2
 190      D7
 191 0234 C56559FB 		vmulpd	%ymm3, %ymm3, %ymm15
 192 0238 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 193 023c C441055C 		vsubpd	%ymm13, %ymm15, %ymm13
 193      ED
 194 0241 C5ED5C94 		vsubpd	880(%rsp), %ymm2, %ymm2
 194      24700300 
 194      00
 195 024a C4414D59 		vmulpd	%ymm13, %ymm6, %ymm15
 195      FD
 196 024f C4C16558 		vaddpd	%ymm15, %ymm3, %ymm3
 196      DF
 197 0254 C55D59FC 		vmulpd	%ymm4, %ymm4, %ymm15
 198 0258 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 199 025c C441055C 		vsubpd	%ymm14, %ymm15, %ymm14
 199      F6
 200 0261 C5E55C9C 		vsubpd	912(%rsp), %ymm3, %ymm3
 200      24900300 
 200      00
 201 026a C4414D59 		vmulpd	%ymm14, %ymm6, %ymm15
 201      FE
 202 026f C4C15D58 		vaddpd	%ymm15, %ymm4, %ymm4
 202      E7
 203 0274 C53D59FD 		vmulpd	%ymm5, %ymm8, %ymm15
 204 0278 C5CD59ED 		vmulpd	%ymm5, %ymm6, %ymm5
 205 027c C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 206 0280 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 206      DB
 207 0285 C53D59F8 		vmulpd	%ymm0, %ymm8, %ymm15
 208 0289 C5D558AC 		vaddpd	592(%rsp), %ymm5, %ymm5
 208      24500200 
 208      00
 209 0292 C5CD59C0 		vmulpd	%ymm0, %ymm6, %ymm0
 210 0296 C5DD5CA4 		vsubpd	944(%rsp), %ymm4, %ymm4
 210      24B00300 
 210      00
 211 029f C4410558 		vaddpd	%ymm10, %ymm15, %ymm10
 211      D2
 212 02a4 C57D58BC 		vaddpd	624(%rsp), %ymm0, %ymm15
 212      24700200 
 212      00
 213 02ad C5BD59C1 		vmulpd	%ymm1, %ymm8, %ymm0
 214 02b1 C5CD59C9 		vmulpd	%ymm1, %ymm6, %ymm1
 215 02b5 C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 216 02b9 C4417D58 		vaddpd	%ymm9, %ymm0, %ymm9
 216      C9
 217 02be C5BD59C2 		vmulpd	%ymm2, %ymm8, %ymm0
 218 02c2 C5F5588C 		vaddpd	656(%rsp), %ymm1, %ymm1
 218      24900200 
 218      00
 219 02cb C5CD59D2 		vmulpd	%ymm2, %ymm6, %ymm2
 220 02cf C5D55CAC 		vsubpd	784(%rsp), %ymm5, %ymm5
GAS LISTING /tmp/cc6a7vY9.s 			page 7


 220      24100300 
 220      00
 221 02d8 C4410559 		vmulpd	%ymm15, %ymm15, %ymm15
 221      FF
 222 02dd C4417D58 		vaddpd	%ymm12, %ymm0, %ymm12
 222      E4
 223 02e2 C5BD59C3 		vmulpd	%ymm3, %ymm8, %ymm0
 224 02e6 C5ED5894 		vaddpd	688(%rsp), %ymm2, %ymm2
 224      24B00200 
 224      00
 225 02ef C5CD59DB 		vmulpd	%ymm3, %ymm6, %ymm3
 226 02f3 C5055CBC 		vsubpd	816(%rsp), %ymm15, %ymm15
 226      24300300 
 226      00
 227 02fc C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 228 0300 C4417D58 		vaddpd	%ymm13, %ymm0, %ymm13
 228      ED
 229 0305 C5BD59C4 		vmulpd	%ymm4, %ymm8, %ymm0
 230 0309 C5E5589C 		vaddpd	720(%rsp), %ymm3, %ymm3
 230      24D00200 
 230      00
 231 0312 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 232 0316 C5F55C8C 		vsubpd	848(%rsp), %ymm1, %ymm1
 232      24500300 
 232      00
 233 031f C4417D58 		vaddpd	%ymm14, %ymm0, %ymm14
 233      F6
 234 0324 C5CD59C4 		vmulpd	%ymm4, %ymm6, %ymm0
 235 0328 C5ED5C94 		vsubpd	880(%rsp), %ymm2, %ymm2
 235      24700300 
 235      00
 236 0331 C5BD59E5 		vmulpd	%ymm5, %ymm8, %ymm4
 237 0335 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 238 0339 C5FD5884 		vaddpd	752(%rsp), %ymm0, %ymm0
 238      24F00200 
 238      00
 239 0342 C4415D58 		vaddpd	%ymm11, %ymm4, %ymm11
 239      DB
 240 0347 C5C559E5 		vmulpd	%ymm5, %ymm7, %ymm4
 241 034b C5E55C9C 		vsubpd	912(%rsp), %ymm3, %ymm3
 241      24900300 
 241      00
 242 0354 C4C13D59 		vmulpd	%ymm15, %ymm8, %ymm5
 242      EF
 243 0359 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 244 035d C5DD58A4 		vaddpd	592(%rsp), %ymm4, %ymm4
 244      24500200 
 244      00
 245 0366 C4415558 		vaddpd	%ymm10, %ymm5, %ymm10
 245      D2
 246 036b C4C14559 		vmulpd	%ymm15, %ymm7, %ymm5
 246      EF
 247 0370 C5FD5C84 		vsubpd	944(%rsp), %ymm0, %ymm0
 247      24B00300 
 247      00
 248 0379 C53D59F9 		vmulpd	%ymm1, %ymm8, %ymm15
 249 037d C5C559C9 		vmulpd	%ymm1, %ymm7, %ymm1
GAS LISTING /tmp/cc6a7vY9.s 			page 8


 250 0381 C5D558AC 		vaddpd	624(%rsp), %ymm5, %ymm5
 250      24700200 
 250      00
 251 038a C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 252 038e C4410558 		vaddpd	%ymm9, %ymm15, %ymm9
 252      C9
 253 0393 C53D59FA 		vmulpd	%ymm2, %ymm8, %ymm15
 254 0397 C5F5588C 		vaddpd	656(%rsp), %ymm1, %ymm1
 254      24900200 
 254      00
 255 03a0 C5C559D2 		vmulpd	%ymm2, %ymm7, %ymm2
 256 03a4 C5DD5CA4 		vsubpd	176(%rsp), %ymm4, %ymm4
 256      24B00000 
 256      00
 257 03ad C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 258 03b1 C4410558 		vaddpd	%ymm12, %ymm15, %ymm12
 258      E4
 259 03b6 C53D59FB 		vmulpd	%ymm3, %ymm8, %ymm15
 260 03ba C5ED5894 		vaddpd	688(%rsp), %ymm2, %ymm2
 260      24B00200 
 260      00
 261 03c3 C5C559DB 		vmulpd	%ymm3, %ymm7, %ymm3
 262 03c7 C5D55CAC 		vsubpd	144(%rsp), %ymm5, %ymm5
 262      24900000 
 262      00
 263 03d0 C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 264 03d4 C5FD29A4 		vmovapd	%ymm4, 400(%rsp)
 264      24900100 
 264      00
 265 03dd C4410558 		vaddpd	%ymm13, %ymm15, %ymm13
 265      ED
 266 03e2 C53D59F8 		vmulpd	%ymm0, %ymm8, %ymm15
 267 03e6 C5E5589C 		vaddpd	720(%rsp), %ymm3, %ymm3
 267      24D00200 
 267      00
 268 03ef C5C559C0 		vmulpd	%ymm0, %ymm7, %ymm0
 269 03f3 C5F55C4C 		vsubpd	112(%rsp), %ymm1, %ymm1
 269      2470
 270 03f9 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 271 03fd C5FD29AC 		vmovapd	%ymm5, 432(%rsp)
 271      24B00100 
 271      00
 272 0406 C4415D58 		vaddpd	%ymm11, %ymm4, %ymm11
 272      DB
 273 040b C5FD5884 		vaddpd	752(%rsp), %ymm0, %ymm0
 273      24F00200 
 273      00
 274 0414 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 275 0418 C4415558 		vaddpd	%ymm10, %ymm5, %ymm10
 275      D2
 276 041d C5FD298C 		vmovapd	%ymm1, 464(%rsp)
 276      24D00100 
 276      00
 277 0426 C4417558 		vaddpd	%ymm9, %ymm1, %ymm9
 277      C9
 278 042b C57D299C 		vmovapd	%ymm11, 208(%rsp)
 278      24D00000 
GAS LISTING /tmp/cc6a7vY9.s 			page 9


 278      00
 279 0434 C4410558 		vaddpd	%ymm14, %ymm15, %ymm14
 279      F6
 280 0439 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 281 043d C57D2994 		vmovapd	%ymm10, 240(%rsp)
 281      24F00000 
 281      00
 282 0446 C57D298C 		vmovapd	%ymm9, 272(%rsp)
 282      24100100 
 282      00
 283 044f C5ED5C54 		vsubpd	80(%rsp), %ymm2, %ymm2
 283      2450
 284 0455 C5E55C5C 		vsubpd	48(%rsp), %ymm3, %ymm3
 284      2430
 285 045b C5A5592D 		vmulpd	.LC6(%rip), %ymm11, %ymm5
 285      00000000 
 286 0463 C5FD5C44 		vsubpd	16(%rsp), %ymm0, %ymm0
 286      2410
 287 0469 C5B5590D 		vmulpd	.LC6(%rip), %ymm9, %ymm1
 287      00000000 
 288 0471 C4416D58 		vaddpd	%ymm12, %ymm2, %ymm12
 288      E4
 289 0476 C5FD2994 		vmovapd	%ymm2, 496(%rsp)
 289      24F00100 
 289      00
 290 047f C4416558 		vaddpd	%ymm13, %ymm3, %ymm13
 290      ED
 291 0484 C5FD299C 		vmovapd	%ymm3, 528(%rsp)
 291      24100200 
 291      00
 292 048d C4417D58 		vaddpd	%ymm14, %ymm0, %ymm14
 292      F6
 293 0492 C5FD2984 		vmovapd	%ymm0, 560(%rsp)
 293      24300200 
 293      00
 294 049b C59D5915 		vmulpd	.LC6(%rip), %ymm12, %ymm2
 294      00000000 
 295 04a3 C57D29A4 		vmovapd	%ymm12, 304(%rsp)
 295      24300100 
 295      00
 296 04ac C57D29AC 		vmovapd	%ymm13, 336(%rsp)
 296      24500100 
 296      00
 297 04b5 C5AD5905 		vmulpd	.LC6(%rip), %ymm10, %ymm0
 297      00000000 
 298 04bd C57D29B4 		vmovapd	%ymm14, 368(%rsp)
 298      24700100 
 298      00
 299 04c6 C595591D 		vmulpd	.LC6(%rip), %ymm13, %ymm3
 299      00000000 
 300 04ce C58D5925 		vmulpd	.LC6(%rip), %ymm14, %ymm4
 300      00000000 
 301 04d6 C5D558AC 		vaddpd	592(%rsp), %ymm5, %ymm5
 301      24500200 
 301      00
 302 04df C5FD5884 		vaddpd	624(%rsp), %ymm0, %ymm0
 302      24700200 
GAS LISTING /tmp/cc6a7vY9.s 			page 10


 302      00
 303 04e8 C5F5588C 		vaddpd	656(%rsp), %ymm1, %ymm1
 303      24900200 
 303      00
 304 04f1 C5ED5894 		vaddpd	688(%rsp), %ymm2, %ymm2
 304      24B00200 
 304      00
 305 04fa C5FD29AC 		vmovapd	%ymm5, 592(%rsp)
 305      24500200 
 305      00
 306 0503 C5E5589C 		vaddpd	720(%rsp), %ymm3, %ymm3
 306      24D00200 
 306      00
 307 050c C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 307      24700200 
 307      00
 308 0515 C5DD58A4 		vaddpd	752(%rsp), %ymm4, %ymm4
 308      24F00200 
 308      00
 309 051e C5FD298C 		vmovapd	%ymm1, 656(%rsp)
 309      24900200 
 309      00
 310 0527 C5FD2994 		vmovapd	%ymm2, 688(%rsp)
 310      24B00200 
 310      00
 311 0530 C5FD299C 		vmovapd	%ymm3, 720(%rsp)
 311      24D00200 
 311      00
 312 0539 C5FD29A4 		vmovapd	%ymm4, 752(%rsp)
 312      24F00200 
 312      00
 313 0542 0F8548FC 		jne	.L13
 313      FFFF
 314 0548 B8AD8BDB 		movl	$1759218605, %eax
 314      68
 315 054d 41F7ED   		imull	%r13d
 316 0550 4489E8   		movl	%r13d, %eax
 317 0553 C1F81F   		sarl	$31, %eax
 318 0556 C1FA0B   		sarl	$11, %edx
 319 0559 29C2     		subl	%eax, %edx
 320 055b 4489E8   		movl	%r13d, %eax
 321 055e 69D28813 		imull	$5000, %edx, %edx
 321      0000
 322 0564 29D0     		subl	%edx, %eax
 323 0566 83F801   		cmpl	$1, %eax
 324 0569 0F849100 		je	.L14
 324      0000
 325              	.L20:
 326 056f 4183C518 		addl	$24, %r13d
 327 0573 4981C4C0 		addq	$192, %r12
 327      000000
 328 057a 4181FDC0 		cmpl	$181440, %r13d
 328      C40200
 329 0581 0F85DBFA 		jne	.L12
 329      FFFF
 330 0587 C5F877   		vzeroupper
 331 058a E8000000 		call	clock
GAS LISTING /tmp/cc6a7vY9.s 			page 11


 331      00
 332 058f BA0C0000 		movl	$12, %edx
 332      00
 333 0594 4889C3   		movq	%rax, %rbx
 334 0597 BE000000 		movl	$.LC9, %esi
 334      00
 335 059c BF000000 		movl	$_ZSt4cout, %edi
 335      00
 336 05a1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 336      00
 337 05a6 4889D9   		movq	%rbx, %rcx
 338 05a9 482B4C24 		subq	8(%rsp), %rcx
 338      08
 339 05ae 48BECFF7 		movabsq	$2361183241434822607, %rsi
 339      53E3A59B 
 339      C420
 340 05b8 BF000000 		movl	$_ZSt4cout, %edi
 340      00
 341 05bd 4889C8   		movq	%rcx, %rax
 342 05c0 48C1F93F 		sarq	$63, %rcx
 343 05c4 48F7EE   		imulq	%rsi
 344 05c7 4889D6   		movq	%rdx, %rsi
 345 05ca 48C1FE07 		sarq	$7, %rsi
 346 05ce 4829CE   		subq	%rcx, %rsi
 347 05d1 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 347      00
 348 05d6 BE000000 		movl	$.LC10, %esi
 348      00
 349 05db 4889C7   		movq	%rax, %rdi
 350 05de E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 350      00
 351 05e3 4889C7   		movq	%rax, %rdi
 352 05e6 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 352      00
 353 05eb 488D65D8 		leaq	-40(%rbp), %rsp
 354 05ef 31C0     		xorl	%eax, %eax
 355 05f1 5B       		popq	%rbx
 356 05f2 415C     		popq	%r12
 357 05f4 415D     		popq	%r13
 358 05f6 415E     		popq	%r14
 359 05f8 415F     		popq	%r15
 360 05fa 5D       		popq	%rbp
 361              		.cfi_remember_state
 362              		.cfi_def_cfa 7, 8
 363 05fb C3       		ret
 364 05fc 0F1F4000 		.p2align 4,,10
 365              		.p2align 3
 366              	.L14:
 367              		.cfi_restore_state
 368 0600 488D9C24 		leaq	592(%rsp), %rbx
 368      50020000 
 369 0608 EB5D     		jmp	.L21
 370 060a 660F1F44 		.p2align 4,,10
 370      0000
 371              		.p2align 3
 372              	.L26:
 373 0610 0FB64243 		movzbl	67(%rdx), %eax
GAS LISTING /tmp/cc6a7vY9.s 			page 12


 374              	.L19:
 375 0614 0FBEF0   		movsbl	%al, %esi
 376 0617 4C89FF   		movq	%r15, %rdi
 377 061a C5FD297C 		vmovapd	%ymm7, 112(%rsp)
 377      2470
 378 0620 C57D2984 		vmovapd	%ymm8, 144(%rsp)
 378      24900000 
 378      00
 379 0629 C5FD29B4 		vmovapd	%ymm6, 176(%rsp)
 379      24B00000 
 379      00
 380 0632 C5F877   		vzeroupper
 381 0635 4883C320 		addq	$32, %rbx
 382 0639 E8000000 		call	_ZNSo3putEc
 382      00
 383 063e 4889C7   		movq	%rax, %rdi
 384 0641 E8000000 		call	_ZNSo5flushEv
 384      00
 385 0646 4C39F3   		cmpq	%r14, %rbx
 386 0649 C5FD28B4 		vmovapd	176(%rsp), %ymm6
 386      24B00000 
 386      00
 387 0652 C57D2884 		vmovapd	144(%rsp), %ymm8
 387      24900000 
 387      00
 388 065b C5FD287C 		vmovapd	112(%rsp), %ymm7
 388      2470
 389 0661 0F8408FF 		je	.L20
 389      FFFF
 390              	.L21:
 391 0667 C5FB100B 		vmovsd	(%rbx), %xmm1
 392 066b BA040000 		movl	$4, %edx
 392      00
 393 0670 BE000000 		movl	$.LC7, %esi
 393      00
 394 0675 C5FB1083 		vmovsd	192(%rbx), %xmm0
 394      C0000000 
 395 067d BF000000 		movl	$_ZSt4cout, %edi
 395      00
 396 0682 C5FD297C 		vmovapd	%ymm7, 48(%rsp)
 396      2430
 397 0688 C57D2944 		vmovapd	%ymm8, 80(%rsp)
 397      2450
 398 068e C5FD2974 		vmovapd	%ymm6, 112(%rsp)
 398      2470
 399 0694 C5FB118C 		vmovsd	%xmm1, 144(%rsp)
 399      24900000 
 399      00
 400 069d C5FB1184 		vmovsd	%xmm0, 176(%rsp)
 400      24B00000 
 400      00
 401 06a6 C5F877   		vzeroupper
 402 06a9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 402      00
 403 06ae C5FB1084 		vmovsd	176(%rsp), %xmm0
 403      24B00000 
 403      00
GAS LISTING /tmp/cc6a7vY9.s 			page 13


 404 06b7 BF000000 		movl	$_ZSt4cout, %edi
 404      00
 405 06bc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 405      00
 406 06c1 BA030000 		movl	$3, %edx
 406      00
 407 06c6 BE000000 		movl	$.LC8, %esi
 407      00
 408 06cb 4889C7   		movq	%rax, %rdi
 409 06ce 4989C7   		movq	%rax, %r15
 410 06d1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 410      00
 411 06d6 C5FB108C 		vmovsd	144(%rsp), %xmm1
 411      24900000 
 411      00
 412 06df 4C89FF   		movq	%r15, %rdi
 413 06e2 C5F928C1 		vmovapd	%xmm1, %xmm0
 414 06e6 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 414      00
 415 06eb 4989C7   		movq	%rax, %r15
 416 06ee 488B00   		movq	(%rax), %rax
 417 06f1 C5FD2874 		vmovapd	112(%rsp), %ymm6
 417      2470
 418 06f7 C57D2844 		vmovapd	80(%rsp), %ymm8
 418      2450
 419 06fd C5FD287C 		vmovapd	48(%rsp), %ymm7
 419      2430
 420 0703 488B40E8 		movq	-24(%rax), %rax
 421 0707 498B9407 		movq	240(%r15,%rax), %rdx
 421      F0000000 
 422 070f 4885D2   		testq	%rdx, %rdx
 423 0712 7462     		je	.L25
 424 0714 807A3800 		cmpb	$0, 56(%rdx)
 425 0718 0F85F2FE 		jne	.L26
 425      FFFF
 426 071e 4889D7   		movq	%rdx, %rdi
 427 0721 C5FD297C 		vmovapd	%ymm7, 80(%rsp)
 427      2450
 428 0727 48899424 		movq	%rdx, 176(%rsp)
 428      B0000000 
 429 072f C57D2944 		vmovapd	%ymm8, 112(%rsp)
 429      2470
 430 0735 C5FD29B4 		vmovapd	%ymm6, 144(%rsp)
 430      24900000 
 430      00
 431 073e C5F877   		vzeroupper
 432 0741 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 432      00
 433 0746 488B9424 		movq	176(%rsp), %rdx
 433      B0000000 
 434 074e BE0A0000 		movl	$10, %esi
 434      00
 435 0753 488B02   		movq	(%rdx), %rax
 436 0756 4889D7   		movq	%rdx, %rdi
 437 0759 FF5030   		call	*48(%rax)
 438 075c C5FD287C 		vmovapd	80(%rsp), %ymm7
 438      2450
GAS LISTING /tmp/cc6a7vY9.s 			page 14


 439 0762 C57D2844 		vmovapd	112(%rsp), %ymm8
 439      2470
 440 0768 C5FD28B4 		vmovapd	144(%rsp), %ymm6
 440      24900000 
 440      00
 441 0771 E99EFEFF 		jmp	.L19
 441      FF
 442              	.L25:
 443 0776 C5F877   		vzeroupper
 444 0779 E8000000 		call	_ZSt16__throw_bad_castv
 444      00
 445              		.cfi_endproc
 446              	.LFE4383:
 447              		.size	main, .-main
 448 077e 6690     		.p2align 4,,15
 449              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 450              	_GLOBAL__sub_I__Z8linspaceddi:
 451              	.LFB4595:
 452              		.cfi_startproc
 453 0780 4883EC08 		subq	$8, %rsp
 454              		.cfi_def_cfa_offset 16
 455 0784 BF000000 		movl	$_ZStL8__ioinit, %edi
 455      00
 456 0789 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 456      00
 457 078e BA000000 		movl	$__dso_handle, %edx
 457      00
 458 0793 BE000000 		movl	$_ZStL8__ioinit, %esi
 458      00
 459 0798 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 459      00
 460 079d 4883C408 		addq	$8, %rsp
 461              		.cfi_def_cfa_offset 8
 462 07a1 E9000000 		jmp	__cxa_atexit
 462      00
 463              		.cfi_endproc
 464              	.LFE4595:
 465              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 466              		.section	.init_array,"aw"
 467              		.align 8
 468 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 468      00000000 
 469              		.local	_ZStL8__ioinit
 470              		.comm	_ZStL8__ioinit,1,1
 471              		.section	.rodata.cst8,"aM",@progbits,8
 472              		.align 8
 473              	.LC0:
 474 0000 00000000 		.long	0
 475 0004 0000F03F 		.long	1072693248
 476              		.section	.rodata.cst32,"aM",@progbits,32
 477              		.align 32
 478              	.LC1:
 479 0000 00000000 		.long	0
 480 0004 0000E0BF 		.long	-1075838976
 481 0008 00000000 		.long	0
 482 000c 0000E0BF 		.long	-1075838976
 483 0010 00000000 		.long	0
GAS LISTING /tmp/cc6a7vY9.s 			page 15


 484 0014 0000E0BF 		.long	-1075838976
 485 0018 00000000 		.long	0
 486 001c 0000E0BF 		.long	-1075838976
 487              		.section	.rodata.cst8
 488              		.align 8
 489              	.LC2:
 490 0008 9A999999 		.long	2576980378
 491 000c 9999B93F 		.long	1069128089
 492              		.section	.rodata.cst32
 493              		.align 32
 494              	.LC3:
 495 0020 7B14AE47 		.long	1202590843
 496 0024 E17A743F 		.long	1064598241
 497 0028 7B14AE47 		.long	1202590843
 498 002c E17A743F 		.long	1064598241
 499 0030 7B14AE47 		.long	1202590843
 500 0034 E17A743F 		.long	1064598241
 501 0038 7B14AE47 		.long	1202590843
 502 003c E17A743F 		.long	1064598241
 503              		.align 32
 504              	.LC4:
 505 0040 00000000 		.long	0
 506 0044 00000040 		.long	1073741824
 507 0048 00000000 		.long	0
 508 004c 00000040 		.long	1073741824
 509 0050 00000000 		.long	0
 510 0054 00000040 		.long	1073741824
 511 0058 00000000 		.long	0
 512 005c 00000040 		.long	1073741824
 513              		.align 32
 514              	.LC5:
 515 0060 7B14AE47 		.long	1202590843
 516 0064 E17A843F 		.long	1065646817
 517 0068 7B14AE47 		.long	1202590843
 518 006c E17A843F 		.long	1065646817
 519 0070 7B14AE47 		.long	1202590843
 520 0074 E17A843F 		.long	1065646817
 521 0078 7B14AE47 		.long	1202590843
 522 007c E17A843F 		.long	1065646817
 523              		.align 32
 524              	.LC6:
 525 0080 4F1BE8B4 		.long	3035110223
 526 0084 814E5B3F 		.long	1062948481
 527 0088 4F1BE8B4 		.long	3035110223
 528 008c 814E5B3F 		.long	1062948481
 529 0090 4F1BE8B4 		.long	3035110223
 530 0094 814E5B3F 		.long	1062948481
 531 0098 4F1BE8B4 		.long	3035110223
 532 009c 814E5B3F 		.long	1062948481
 533              		.hidden	__dso_handle
 534              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 535              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc6a7vY9.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/cc6a7vY9.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cc6a7vY9.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc6a7vY9.s:81     .text.startup:0000000000000000 main
     /tmp/cc6a7vY9.s:450    .text.startup:0000000000000780 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc6a7vY9.s:473    .rodata.cst8:0000000000000000 .LC0
     /tmp/cc6a7vY9.s:489    .rodata.cst8:0000000000000008 .LC2
     /tmp/cc6a7vY9.s:494    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc6a7vY9.s:504    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc6a7vY9.s:514    .rodata.cst32:0000000000000060 .LC5
     /tmp/cc6a7vY9.s:478    .rodata.cst32:0000000000000000 .LC1
     /tmp/cc6a7vY9.s:524    .rodata.cst32:0000000000000080 .LC6

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
