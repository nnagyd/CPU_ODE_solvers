GAS LISTING /tmp/cc1VVzxq.s 			page 1


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
GAS LISTING /tmp/cc1VVzxq.s 			page 2


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
GAS LISTING /tmp/cc1VVzxq.s 			page 3


  98 0014 53       		pushq	%rbx
  99 0015 4883E4E0 		andq	$-32, %rsp
 100 0019 4881ECB0 		subq	$944, %rsp
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
 109 0045 C57D2805 		vmovapd	.LC3(%rip), %ymm8
 109      00000000 
 110 004d 48894424 		movq	%rax, 8(%rsp)
 110      08
 111 0052 C5FD283D 		vmovapd	.LC4(%rip), %ymm7
 111      00000000 
 112 005a C5FD2835 		vmovapd	.LC5(%rip), %ymm6
 112      00000000 
 113 0062 C5FD282D 		vmovapd	.LC6(%rip), %ymm5
 113      00000000 
 114 006a 660F1F44 		.p2align 4,,10
 114      0000
 115              		.p2align 3
 116              	.L12:
 117 0070 C4C17D10 		vmovupd	(%r12), %ymm0
 117      0424
 118 0076 B8102700 		movl	$10000, %eax
 118      00
 119 007b C5FD2984 		vmovapd	%ymm0, 144(%rsp)
 119      24900000 
 119      00
 120 0084 C5FD2984 		vmovapd	%ymm0, 784(%rsp)
 120      24100300 
 120      00
 121 008d C5FD2805 		vmovapd	.LC1(%rip), %ymm0
 121      00000000 
 122 0095 C5FD2984 		vmovapd	%ymm0, 624(%rsp)
 122      24700200 
 122      00
 123 009e C4C17D10 		vmovupd	32(%r12), %ymm0
 123      442420
 124 00a5 C5FD2944 		vmovapd	%ymm0, 112(%rsp)
 124      2470
 125 00ab C5FD2984 		vmovapd	%ymm0, 816(%rsp)
 125      24300300 
 125      00
 126 00b4 C4C17D10 		vmovupd	64(%r12), %ymm0
 126      442440
 127 00bb C5FD2944 		vmovapd	%ymm0, 80(%rsp)
 127      2450
GAS LISTING /tmp/cc1VVzxq.s 			page 4


 128 00c1 C5FD2984 		vmovapd	%ymm0, 848(%rsp)
 128      24500300 
 128      00
 129 00ca C4C17D10 		vmovupd	96(%r12), %ymm0
 129      442460
 130 00d1 C5FD2944 		vmovapd	%ymm0, 48(%rsp)
 130      2430
 131 00d7 C5FD2984 		vmovapd	%ymm0, 880(%rsp)
 131      24700300 
 131      00
 132 00e0 C4C17D10 		vmovupd	128(%r12), %ymm0
 132      84248000 
 132      0000
 133 00ea C5FD2944 		vmovapd	%ymm0, 16(%rsp)
 133      2410
 134 00f0 C5FD2984 		vmovapd	%ymm0, 912(%rsp)
 134      24900300 
 134      00
 135 00f9 C5FD2805 		vmovapd	.LC1(%rip), %ymm0
 135      00000000 
 136 0101 C5FD2984 		vmovapd	%ymm0, 176(%rsp)
 136      24B00000 
 136      00
 137 010a C5FD28D8 		vmovapd	%ymm0, %ymm3
 138 010e C5FD28C8 		vmovapd	%ymm0, %ymm1
 139 0112 C5FD2984 		vmovapd	%ymm0, 272(%rsp)
 139      24100100 
 139      00
 140 011b C57D28F0 		vmovapd	%ymm0, %ymm14
 141 011f C57D28F8 		vmovapd	%ymm0, %ymm15
 142 0123 C5FD2984 		vmovapd	%ymm0, 208(%rsp)
 142      24D00000 
 142      00
 143 012c C5FD2984 		vmovapd	%ymm0, 240(%rsp)
 143      24F00000 
 143      00
 144 0135 EB47     		jmp	.L22
 145 0137 660F1F84 		.p2align 4,,10
 145      00000000 
 145      00
 146              		.p2align 3
 147              	.L13:
 148 0140 C57D29B4 		vmovapd	%ymm14, 176(%rsp)
 148      24B00000 
 148      00
 149 0149 C5FD28DC 		vmovapd	%ymm4, %ymm3
 150 014d C5FD298C 		vmovapd	%ymm1, 272(%rsp)
 150      24100100 
 150      00
 151 0156 C5FD28CA 		vmovapd	%ymm2, %ymm1
 152 015a C5FD2994 		vmovapd	%ymm2, 208(%rsp)
 152      24D00000 
 152      00
 153 0163 C5FD29A4 		vmovapd	%ymm4, 240(%rsp)
 153      24F00000 
 153      00
 154 016c C57D28B4 		vmovapd	272(%rsp), %ymm14
GAS LISTING /tmp/cc1VVzxq.s 			page 5


 154      24100100 
 154      00
 155 0175 C57D28BC 		vmovapd	176(%rsp), %ymm15
 155      24B00000 
 155      00
 156              	.L22:
 157 017e C57559D9 		vmulpd	%ymm1, %ymm1, %ymm11
 158 0182 83E801   		subl	$1, %eax
 159 0185 C56559EB 		vmulpd	%ymm3, %ymm3, %ymm13
 160 0189 C4410D59 		vmulpd	%ymm14, %ymm14, %ymm10
 160      D6
 161 018e C5255C5C 		vsubpd	80(%rsp), %ymm11, %ymm11
 161      2450
 162 0194 C57D59E0 		vmulpd	%ymm0, %ymm0, %ymm12
 163 0198 C5155CAC 		vsubpd	144(%rsp), %ymm13, %ymm13
 163      24900000 
 163      00
 164 01a1 C52D5C54 		vsubpd	48(%rsp), %ymm10, %ymm10
 164      2430
 165 01a7 C51D5C64 		vsubpd	112(%rsp), %ymm12, %ymm12
 165      2470
 166 01ad C4C13D59 		vmulpd	%ymm11, %ymm8, %ymm2
 166      D3
 167 01b2 C4C13D59 		vmulpd	%ymm13, %ymm8, %ymm4
 167      E5
 168 01b7 C5ED58D1 		vaddpd	%ymm1, %ymm2, %ymm2
 169 01bb C4C13D59 		vmulpd	%ymm10, %ymm8, %ymm1
 169      CA
 170 01c0 C5DD58A4 		vaddpd	624(%rsp), %ymm4, %ymm4
 170      24700200 
 170      00
 171 01c9 C4C13D59 		vmulpd	%ymm12, %ymm8, %ymm3
 171      DC
 172 01ce C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 173 01d2 C4C17558 		vaddpd	%ymm14, %ymm1, %ymm1
 173      CE
 174 01d7 C4410559 		vmulpd	%ymm15, %ymm15, %ymm14
 174      F7
 175 01dc C5FD58DB 		vaddpd	%ymm3, %ymm0, %ymm3
 176 01e0 C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 177 01e4 C5ED5C54 		vsubpd	80(%rsp), %ymm2, %ymm2
 177      2450
 178 01ea C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 179 01ee C50D5C74 		vsubpd	16(%rsp), %ymm14, %ymm14
 179      2410
 180 01f4 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 181 01f8 C5DD5CA4 		vsubpd	144(%rsp), %ymm4, %ymm4
 181      24900000 
 181      00
 182 0201 C5F55C4C 		vsubpd	48(%rsp), %ymm1, %ymm1
 182      2430
 183 0207 C5E55C5C 		vsubpd	112(%rsp), %ymm3, %ymm3
 183      2470
 184 020d C4413D59 		vmulpd	%ymm14, %ymm8, %ymm9
 184      CE
 185 0212 C4413558 		vaddpd	%ymm15, %ymm9, %ymm9
 185      CF
GAS LISTING /tmp/cc1VVzxq.s 			page 6


 186 0217 C54559FC 		vmulpd	%ymm4, %ymm7, %ymm15
 187 021b C5BD59E4 		vmulpd	%ymm4, %ymm8, %ymm4
 188 021f C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 188      C9
 189 0224 C4410558 		vaddpd	%ymm13, %ymm15, %ymm13
 189      ED
 190 0229 C54559FB 		vmulpd	%ymm3, %ymm7, %ymm15
 191 022d C5DD58A4 		vaddpd	240(%rsp), %ymm4, %ymm4
 191      24F00000 
 191      00
 192 0236 C5BD59DB 		vmulpd	%ymm3, %ymm8, %ymm3
 193 023a C5355C4C 		vsubpd	16(%rsp), %ymm9, %ymm9
 193      2410
 194 0240 C4410558 		vaddpd	%ymm12, %ymm15, %ymm12
 194      E4
 195 0245 C54559FA 		vmulpd	%ymm2, %ymm7, %ymm15
 196 0249 C5FD58DB 		vaddpd	%ymm3, %ymm0, %ymm3
 197 024d C5BD59D2 		vmulpd	%ymm2, %ymm8, %ymm2
 198 0251 C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 199 0255 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 199      DB
 200 025a C54559F9 		vmulpd	%ymm1, %ymm7, %ymm15
 201 025e C5ED5894 		vaddpd	208(%rsp), %ymm2, %ymm2
 201      24D00000 
 201      00
 202 0267 C5BD59C9 		vmulpd	%ymm1, %ymm8, %ymm1
 203 026b C5DD5CA4 		vsubpd	144(%rsp), %ymm4, %ymm4
 203      24900000 
 203      00
 204 0274 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 205 0278 C4410558 		vaddpd	%ymm10, %ymm15, %ymm10
 205      D2
 206 027d C4414559 		vmulpd	%ymm9, %ymm7, %ymm15
 206      F9
 207 0282 C5F5588C 		vaddpd	272(%rsp), %ymm1, %ymm1
 207      24100100 
 207      00
 208 028b C4413D59 		vmulpd	%ymm9, %ymm8, %ymm9
 208      C9
 209 0290 C5E55C5C 		vsubpd	112(%rsp), %ymm3, %ymm3
 209      2470
 210 0296 C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 211 029a C4410558 		vaddpd	%ymm14, %ymm15, %ymm14
 211      F6
 212 029f C54559FC 		vmulpd	%ymm4, %ymm7, %ymm15
 213 02a3 C535588C 		vaddpd	176(%rsp), %ymm9, %ymm9
 213      24B00000 
 213      00
 214 02ac C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 215 02b0 C5ED5C54 		vsubpd	80(%rsp), %ymm2, %ymm2
 215      2450
 216 02b6 C5CD59E4 		vmulpd	%ymm4, %ymm6, %ymm4
 217 02ba C4411558 		vaddpd	%ymm15, %ymm13, %ymm13
 217      EF
 218 02bf C54559FB 		vmulpd	%ymm3, %ymm7, %ymm15
 219 02c3 C5F55C4C 		vsubpd	48(%rsp), %ymm1, %ymm1
 219      2430
GAS LISTING /tmp/cc1VVzxq.s 			page 7


 220 02c9 C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 220      C9
 221 02ce C5DD58A4 		vaddpd	240(%rsp), %ymm4, %ymm4
 221      24F00000 
 221      00
 222 02d7 C5CD59DB 		vmulpd	%ymm3, %ymm6, %ymm3
 223 02db C4411D58 		vaddpd	%ymm15, %ymm12, %ymm12
 223      E7
 224 02e0 C54559FA 		vmulpd	%ymm2, %ymm7, %ymm15
 225 02e4 C5355C4C 		vsubpd	16(%rsp), %ymm9, %ymm9
 225      2410
 226 02ea C5CD59D2 		vmulpd	%ymm2, %ymm6, %ymm2
 227 02ee C5FD58DB 		vaddpd	%ymm3, %ymm0, %ymm3
 228 02f2 C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 229 02f6 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 229      DF
 230 02fb C54559F9 		vmulpd	%ymm1, %ymm7, %ymm15
 231 02ff C5ED5894 		vaddpd	208(%rsp), %ymm2, %ymm2
 231      24D00000 
 231      00
 232 0308 C5CD59C9 		vmulpd	%ymm1, %ymm6, %ymm1
 233 030c C5DD5CA4 		vsubpd	144(%rsp), %ymm4, %ymm4
 233      24900000 
 233      00
 234 0315 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 235 0319 C4412D58 		vaddpd	%ymm15, %ymm10, %ymm10
 235      D7
 236 031e C4414559 		vmulpd	%ymm9, %ymm7, %ymm15
 236      F9
 237 0323 C5F5588C 		vaddpd	272(%rsp), %ymm1, %ymm1
 237      24100100 
 237      00
 238 032c C5ED59D2 		vmulpd	%ymm2, %ymm2, %ymm2
 239 0330 C5E55C5C 		vsubpd	112(%rsp), %ymm3, %ymm3
 239      2470
 240 0336 C4414D59 		vmulpd	%ymm9, %ymm6, %ymm9
 240      C9
 241 033b C5FD29A4 		vmovapd	%ymm4, 464(%rsp)
 241      24D00100 
 241      00
 242 0344 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
 242      F7
 243 0349 C57D28BC 		vmovapd	176(%rsp), %ymm15
 243      24B00000 
 243      00
 244 0352 C5ED5C54 		vsubpd	80(%rsp), %ymm2, %ymm2
 244      2450
 245 0358 C5F559C9 		vmulpd	%ymm1, %ymm1, %ymm1
 246 035c C4413558 		vaddpd	%ymm15, %ymm9, %ymm9
 246      CF
 247 0361 C5FD299C 		vmovapd	%ymm3, 496(%rsp)
 247      24F00100 
 247      00
 248 036a C59558E4 		vaddpd	%ymm4, %ymm13, %ymm4
 249 036e C5F55C4C 		vsubpd	48(%rsp), %ymm1, %ymm1
 249      2430
 250 0374 C5FD2994 		vmovapd	%ymm2, 528(%rsp)
GAS LISTING /tmp/cc1VVzxq.s 			page 8


 250      24100200 
 250      00
 251 037d C4413559 		vmulpd	%ymm9, %ymm9, %ymm9
 251      C9
 252 0382 C59D58DB 		vaddpd	%ymm3, %ymm12, %ymm3
 253 0386 C5FD29A4 		vmovapd	%ymm4, 304(%rsp)
 253      24300100 
 253      00
 254 038f C5DD59E5 		vmulpd	%ymm5, %ymm4, %ymm4
 255 0393 C5A558D2 		vaddpd	%ymm2, %ymm11, %ymm2
 256 0397 C5FD299C 		vmovapd	%ymm3, 336(%rsp)
 256      24500100 
 256      00
 257 03a0 C5E559DD 		vmulpd	%ymm5, %ymm3, %ymm3
 258 03a4 C5FD2994 		vmovapd	%ymm2, 368(%rsp)
 258      24700100 
 258      00
 259 03ad C5ED59D5 		vmulpd	%ymm5, %ymm2, %ymm2
 260 03b1 C5FD298C 		vmovapd	%ymm1, 560(%rsp)
 260      24300200 
 260      00
 261 03ba C5355C4C 		vsubpd	16(%rsp), %ymm9, %ymm9
 261      2410
 262 03c0 C5AD58C9 		vaddpd	%ymm1, %ymm10, %ymm1
 263 03c4 C5DD58A4 		vaddpd	240(%rsp), %ymm4, %ymm4
 263      24F00000 
 263      00
 264 03cd C5ED5894 		vaddpd	208(%rsp), %ymm2, %ymm2
 264      24D00000 
 264      00
 265 03d6 C5FD298C 		vmovapd	%ymm1, 400(%rsp)
 265      24900100 
 265      00
 266 03df C5F559CD 		vmulpd	%ymm5, %ymm1, %ymm1
 267 03e3 C4410D58 		vaddpd	%ymm9, %ymm14, %ymm14
 267      F1
 268 03e8 C57D298C 		vmovapd	%ymm9, 592(%rsp)
 268      24500200 
 268      00
 269 03f1 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 270 03f5 C5FD29A4 		vmovapd	%ymm4, 624(%rsp)
 270      24700200 
 270      00
 271 03fe C5F5588C 		vaddpd	272(%rsp), %ymm1, %ymm1
 271      24100100 
 271      00
 272 0407 C57D29B4 		vmovapd	%ymm14, 432(%rsp)
 272      24B00100 
 272      00
 273 0410 C50D59F5 		vmulpd	%ymm5, %ymm14, %ymm14
 274 0414 C5FD2994 		vmovapd	%ymm2, 688(%rsp)
 274      24B00200 
 274      00
 275 041d C5FD2984 		vmovapd	%ymm0, 656(%rsp)
 275      24900200 
 275      00
 276 0426 C4410D58 		vaddpd	%ymm15, %ymm14, %ymm14
GAS LISTING /tmp/cc1VVzxq.s 			page 9


 276      F7
 277 042b C5FD298C 		vmovapd	%ymm1, 720(%rsp)
 277      24D00200 
 277      00
 278 0434 C57D29B4 		vmovapd	%ymm14, 752(%rsp)
 278      24F00200 
 278      00
 279 043d 0F85FDFC 		jne	.L13
 279      FFFF
 280 0443 B8AD8BDB 		movl	$1759218605, %eax
 280      68
 281 0448 41F7ED   		imull	%r13d
 282 044b 4489E8   		movl	%r13d, %eax
 283 044e C1F81F   		sarl	$31, %eax
 284 0451 C1FA0B   		sarl	$11, %edx
 285 0454 29C2     		subl	%eax, %edx
 286 0456 4489E8   		movl	%r13d, %eax
 287 0459 69D28813 		imull	$5000, %edx, %edx
 287      0000
 288 045f 29D0     		subl	%edx, %eax
 289 0461 83F801   		cmpl	$1, %eax
 290 0464 0F849600 		je	.L14
 290      0000
 291              	.L20:
 292 046a 4183C514 		addl	$20, %r13d
 293 046e 4981C4A0 		addq	$160, %r12
 293      000000
 294 0475 4181FDC0 		cmpl	$181440, %r13d
 294      C40200
 295 047c 0F85EEFB 		jne	.L12
 295      FFFF
 296 0482 C5F877   		vzeroupper
 297 0485 E8000000 		call	clock
 297      00
 298 048a BA0C0000 		movl	$12, %edx
 298      00
 299 048f 4889C3   		movq	%rax, %rbx
 300 0492 BE000000 		movl	$.LC9, %esi
 300      00
 301 0497 BF000000 		movl	$_ZSt4cout, %edi
 301      00
 302 049c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 302      00
 303 04a1 4889D9   		movq	%rbx, %rcx
 304 04a4 482B4C24 		subq	8(%rsp), %rcx
 304      08
 305 04a9 48BECFF7 		movabsq	$2361183241434822607, %rsi
 305      53E3A59B 
 305      C420
 306 04b3 BF000000 		movl	$_ZSt4cout, %edi
 306      00
 307 04b8 4889C8   		movq	%rcx, %rax
 308 04bb 48C1F93F 		sarq	$63, %rcx
 309 04bf 48F7EE   		imulq	%rsi
 310 04c2 4889D6   		movq	%rdx, %rsi
 311 04c5 48C1FE07 		sarq	$7, %rsi
 312 04c9 4829CE   		subq	%rcx, %rsi
GAS LISTING /tmp/cc1VVzxq.s 			page 10


 313 04cc E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 313      00
 314 04d1 BE000000 		movl	$.LC10, %esi
 314      00
 315 04d6 4889C7   		movq	%rax, %rdi
 316 04d9 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 316      00
 317 04de 4889C7   		movq	%rax, %rdi
 318 04e1 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 318      00
 319 04e6 488D65D8 		leaq	-40(%rbp), %rsp
 320 04ea 31C0     		xorl	%eax, %eax
 321 04ec 5B       		popq	%rbx
 322 04ed 415C     		popq	%r12
 323 04ef 415D     		popq	%r13
 324 04f1 415E     		popq	%r14
 325 04f3 415F     		popq	%r15
 326 04f5 5D       		popq	%rbp
 327              		.cfi_remember_state
 328              		.cfi_def_cfa 7, 8
 329 04f6 C3       		ret
 330 04f7 660F1F84 		.p2align 4,,10
 330      00000000 
 330      00
 331              		.p2align 3
 332              	.L14:
 333              		.cfi_restore_state
 334 0500 488D9C24 		leaq	624(%rsp), %rbx
 334      70020000 
 335              	.L21:
 336 0508 C5FB100B 		vmovsd	(%rbx), %xmm1
 337 050c BA040000 		movl	$4, %edx
 337      00
 338 0511 BE000000 		movl	$.LC7, %esi
 338      00
 339 0516 C5FB1083 		vmovsd	160(%rbx), %xmm0
 339      A0000000 
 340 051e BF000000 		movl	$_ZSt4cout, %edi
 340      00
 341 0523 C5FD296C 		vmovapd	%ymm5, 112(%rsp)
 341      2470
 342 0529 C5FD29B4 		vmovapd	%ymm6, 144(%rsp)
 342      24900000 
 342      00
 343 0532 C5FD29BC 		vmovapd	%ymm7, 176(%rsp)
 343      24B00000 
 343      00
 344 053b C57D2984 		vmovapd	%ymm8, 208(%rsp)
 344      24D00000 
 344      00
 345 0544 C5FB118C 		vmovsd	%xmm1, 240(%rsp)
 345      24F00000 
 345      00
 346 054d C5FB1184 		vmovsd	%xmm0, 272(%rsp)
 346      24100100 
 346      00
 347 0556 C5F877   		vzeroupper
GAS LISTING /tmp/cc1VVzxq.s 			page 11


 348 0559 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 348      00
 349 055e C5FB1084 		vmovsd	272(%rsp), %xmm0
 349      24100100 
 349      00
 350 0567 BF000000 		movl	$_ZSt4cout, %edi
 350      00
 351 056c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 351      00
 352 0571 BA030000 		movl	$3, %edx
 352      00
 353 0576 BE000000 		movl	$.LC8, %esi
 353      00
 354 057b 4889C7   		movq	%rax, %rdi
 355 057e 4989C7   		movq	%rax, %r15
 356 0581 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 356      00
 357 0586 C5FB108C 		vmovsd	240(%rsp), %xmm1
 357      24F00000 
 357      00
 358 058f 4C89FF   		movq	%r15, %rdi
 359 0592 C5F928C1 		vmovapd	%xmm1, %xmm0
 360 0596 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 360      00
 361 059b 4989C7   		movq	%rax, %r15
 362 059e 488B00   		movq	(%rax), %rax
 363 05a1 C57D2884 		vmovapd	208(%rsp), %ymm8
 363      24D00000 
 363      00
 364 05aa C5FD28BC 		vmovapd	176(%rsp), %ymm7
 364      24B00000 
 364      00
 365 05b3 C5FD28B4 		vmovapd	144(%rsp), %ymm6
 365      24900000 
 365      00
 366 05bc 488B40E8 		movq	-24(%rax), %rax
 367 05c0 C5FD286C 		vmovapd	112(%rsp), %ymm5
 367      2470
 368 05c6 498B9407 		movq	240(%r15,%rax), %rdx
 368      F0000000 
 369 05ce 4885D2   		testq	%rdx, %rdx
 370 05d1 0F84F000 		je	.L25
 370      0000
 371 05d7 807A3800 		cmpb	$0, 56(%rdx)
 372 05db 7474     		je	.L18
 373 05dd 0FB64243 		movzbl	67(%rdx), %eax
 374              	.L19:
 375 05e1 0FBEF0   		movsbl	%al, %esi
 376 05e4 4C89FF   		movq	%r15, %rdi
 377 05e7 C5FD29AC 		vmovapd	%ymm5, 176(%rsp)
 377      24B00000 
 377      00
 378 05f0 C5FD29B4 		vmovapd	%ymm6, 208(%rsp)
 378      24D00000 
 378      00
 379 05f9 C5FD29BC 		vmovapd	%ymm7, 240(%rsp)
 379      24F00000 
GAS LISTING /tmp/cc1VVzxq.s 			page 12


 379      00
 380 0602 C57D2984 		vmovapd	%ymm8, 272(%rsp)
 380      24100100 
 380      00
 381 060b C5F877   		vzeroupper
 382 060e 4883C320 		addq	$32, %rbx
 383 0612 E8000000 		call	_ZNSo3putEc
 383      00
 384 0617 4889C7   		movq	%rax, %rdi
 385 061a E8000000 		call	_ZNSo5flushEv
 385      00
 386 061f 4C39F3   		cmpq	%r14, %rbx
 387 0622 C57D2884 		vmovapd	272(%rsp), %ymm8
 387      24100100 
 387      00
 388 062b C5FD28BC 		vmovapd	240(%rsp), %ymm7
 388      24F00000 
 388      00
 389 0634 C5FD28B4 		vmovapd	208(%rsp), %ymm6
 389      24D00000 
 389      00
 390 063d C5FD28AC 		vmovapd	176(%rsp), %ymm5
 390      24B00000 
 390      00
 391 0646 0F85BCFE 		jne	.L21
 391      FFFF
 392 064c E919FEFF 		jmp	.L20
 392      FF
 393              	.L18:
 394 0651 4889D7   		movq	%rdx, %rdi
 395 0654 C5FD29AC 		vmovapd	%ymm5, 144(%rsp)
 395      24900000 
 395      00
 396 065d 48899424 		movq	%rdx, 272(%rsp)
 396      10010000 
 397 0665 C5FD29B4 		vmovapd	%ymm6, 176(%rsp)
 397      24B00000 
 397      00
 398 066e C5FD29BC 		vmovapd	%ymm7, 208(%rsp)
 398      24D00000 
 398      00
 399 0677 C57D2984 		vmovapd	%ymm8, 240(%rsp)
 399      24F00000 
 399      00
 400 0680 C5F877   		vzeroupper
 401 0683 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 401      00
 402 0688 488B9424 		movq	272(%rsp), %rdx
 402      10010000 
 403 0690 BE0A0000 		movl	$10, %esi
 403      00
 404 0695 488B02   		movq	(%rdx), %rax
 405 0698 4889D7   		movq	%rdx, %rdi
 406 069b FF5030   		call	*48(%rax)
 407 069e C5FD28AC 		vmovapd	144(%rsp), %ymm5
 407      24900000 
 407      00
GAS LISTING /tmp/cc1VVzxq.s 			page 13


 408 06a7 C5FD28B4 		vmovapd	176(%rsp), %ymm6
 408      24B00000 
 408      00
 409 06b0 C5FD28BC 		vmovapd	208(%rsp), %ymm7
 409      24D00000 
 409      00
 410 06b9 C57D2884 		vmovapd	240(%rsp), %ymm8
 410      24F00000 
 410      00
 411 06c2 E91AFFFF 		jmp	.L19
 411      FF
 412              	.L25:
 413 06c7 C5F877   		vzeroupper
 414 06ca E8000000 		call	_ZSt16__throw_bad_castv
 414      00
 415              		.cfi_endproc
 416              	.LFE4383:
 417              		.size	main, .-main
 418 06cf 90       		.p2align 4,,15
 419              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 420              	_GLOBAL__sub_I__Z8linspaceddi:
 421              	.LFB4595:
 422              		.cfi_startproc
 423 06d0 4883EC08 		subq	$8, %rsp
 424              		.cfi_def_cfa_offset 16
 425 06d4 BF000000 		movl	$_ZStL8__ioinit, %edi
 425      00
 426 06d9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 426      00
 427 06de BA000000 		movl	$__dso_handle, %edx
 427      00
 428 06e3 BE000000 		movl	$_ZStL8__ioinit, %esi
 428      00
 429 06e8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 429      00
 430 06ed 4883C408 		addq	$8, %rsp
 431              		.cfi_def_cfa_offset 8
 432 06f1 E9000000 		jmp	__cxa_atexit
 432      00
 433              		.cfi_endproc
 434              	.LFE4595:
 435              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 436              		.section	.init_array,"aw"
 437              		.align 8
 438 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 438      00000000 
 439              		.local	_ZStL8__ioinit
 440              		.comm	_ZStL8__ioinit,1,1
 441              		.section	.rodata.cst8,"aM",@progbits,8
 442              		.align 8
 443              	.LC0:
 444 0000 00000000 		.long	0
 445 0004 0000F03F 		.long	1072693248
 446              		.section	.rodata.cst32,"aM",@progbits,32
 447              		.align 32
 448              	.LC1:
 449 0000 00000000 		.long	0
GAS LISTING /tmp/cc1VVzxq.s 			page 14


 450 0004 0000E0BF 		.long	-1075838976
 451 0008 00000000 		.long	0
 452 000c 0000E0BF 		.long	-1075838976
 453 0010 00000000 		.long	0
 454 0014 0000E0BF 		.long	-1075838976
 455 0018 00000000 		.long	0
 456 001c 0000E0BF 		.long	-1075838976
 457              		.section	.rodata.cst8
 458              		.align 8
 459              	.LC2:
 460 0008 9A999999 		.long	2576980378
 461 000c 9999B93F 		.long	1069128089
 462              		.section	.rodata.cst32
 463              		.align 32
 464              	.LC3:
 465 0020 7B14AE47 		.long	1202590843
 466 0024 E17A743F 		.long	1064598241
 467 0028 7B14AE47 		.long	1202590843
 468 002c E17A743F 		.long	1064598241
 469 0030 7B14AE47 		.long	1202590843
 470 0034 E17A743F 		.long	1064598241
 471 0038 7B14AE47 		.long	1202590843
 472 003c E17A743F 		.long	1064598241
 473              		.align 32
 474              	.LC4:
 475 0040 00000000 		.long	0
 476 0044 00000040 		.long	1073741824
 477 0048 00000000 		.long	0
 478 004c 00000040 		.long	1073741824
 479 0050 00000000 		.long	0
 480 0054 00000040 		.long	1073741824
 481 0058 00000000 		.long	0
 482 005c 00000040 		.long	1073741824
 483              		.align 32
 484              	.LC5:
 485 0060 7B14AE47 		.long	1202590843
 486 0064 E17A843F 		.long	1065646817
 487 0068 7B14AE47 		.long	1202590843
 488 006c E17A843F 		.long	1065646817
 489 0070 7B14AE47 		.long	1202590843
 490 0074 E17A843F 		.long	1065646817
 491 0078 7B14AE47 		.long	1202590843
 492 007c E17A843F 		.long	1065646817
 493              		.align 32
 494              	.LC6:
 495 0080 4F1BE8B4 		.long	3035110223
 496 0084 814E5B3F 		.long	1062948481
 497 0088 4F1BE8B4 		.long	3035110223
 498 008c 814E5B3F 		.long	1062948481
 499 0090 4F1BE8B4 		.long	3035110223
 500 0094 814E5B3F 		.long	1062948481
 501 0098 4F1BE8B4 		.long	3035110223
 502 009c 814E5B3F 		.long	1062948481
 503              		.hidden	__dso_handle
 504              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 505              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc1VVzxq.s 			page 15


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/cc1VVzxq.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cc1VVzxq.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc1VVzxq.s:81     .text.startup:0000000000000000 main
     /tmp/cc1VVzxq.s:420    .text.startup:00000000000006d0 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc1VVzxq.s:443    .rodata.cst8:0000000000000000 .LC0
     /tmp/cc1VVzxq.s:459    .rodata.cst8:0000000000000008 .LC2
     /tmp/cc1VVzxq.s:464    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc1VVzxq.s:474    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc1VVzxq.s:484    .rodata.cst32:0000000000000060 .LC5
     /tmp/cc1VVzxq.s:494    .rodata.cst32:0000000000000080 .LC6
     /tmp/cc1VVzxq.s:448    .rodata.cst32:0000000000000000 .LC1

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
