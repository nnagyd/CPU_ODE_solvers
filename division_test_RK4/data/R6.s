GAS LISTING /tmp/ccIBUw01.s 			page 1


   1              		.file	"kibontott.cpp"
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
GAS LISTING /tmp/ccIBUw01.s 			page 2


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
  87 0001 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
  88 0005 BFE04600 		movl	$18144, %edi
  88      00
  89 000a 4889E5   		movq	%rsp, %rbp
  90              		.cfi_def_cfa_register 6
  91 000d 4157     		pushq	%r15
  92 000f 4156     		pushq	%r14
  93 0011 4155     		pushq	%r13
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96              		.cfi_offset 13, -40
  97 0013 4531ED   		xorl	%r13d, %r13d
  98 0016 4154     		pushq	%r12
  99 0018 53       		pushq	%rbx
GAS LISTING /tmp/ccIBUw01.s 			page 3


 100 0019 4883E4E0 		andq	$-32, %rsp
 101 001d 4881ECD0 		subq	$976, %rsp
 101      030000
 102              		.cfi_offset 12, -48
 103              		.cfi_offset 3, -56
 104 0024 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 104      00000000 
 105 002c 4C8DB424 		leaq	400(%rsp), %r14
 105      90010000 
 106 0034 4C8DBC24 		leaq	592(%rsp), %r15
 106      50020000 
 107 003c E8000000 		call	_Z8linspaceddi
 107      00
 108 0041 4989C4   		movq	%rax, %r12
 109 0044 E8000000 		call	clock
 109      00
 110 0049 48890424 		movq	%rax, (%rsp)
 111 004d 488D8424 		leaq	784(%rsp), %rax
 111      10030000 
 112 0055 C5FD280D 		vmovapd	.LC3(%rip), %ymm1
 112      00000000 
 113 005d C5FD2815 		vmovapd	.LC0(%rip), %ymm2
 113      00000000 
 114 0065 C5FD281D 		vmovapd	.LC4(%rip), %ymm3
 114      00000000 
 115 006d 48894424 		movq	%rax, 8(%rsp)
 115      08
 116 0072 C57D283D 		vmovapd	.LC6(%rip), %ymm15
 116      00000000 
 117              	.L12:
 118 007a C4417D10 		vmovupd	(%r12), %ymm14
 118      3424
 119 0080 C57D28C2 		vmovapd	%ymm2, %ymm8
 120 0084 C5FD28C2 		vmovapd	%ymm2, %ymm0
 121 0088 C5FD2994 		vmovapd	%ymm2, 592(%rsp)
 121      24500200 
 121      00
 122 0091 C5FD28E2 		vmovapd	%ymm2, %ymm4
 123 0095 C5FD28EA 		vmovapd	%ymm2, %ymm5
 124 0099 C57D29B4 		vmovapd	%ymm14, 784(%rsp)
 124      24100300 
 124      00
 125 00a2 C5FD28F2 		vmovapd	%ymm2, %ymm6
 126 00a6 C5FD28FA 		vmovapd	%ymm2, %ymm7
 127 00aa BA102700 		movl	$10000, %edx
 127      00
 128 00af C4417D10 		vmovupd	32(%r12), %ymm13
 128      6C2420
 129 00b6 C5FD2994 		vmovapd	%ymm2, 624(%rsp)
 129      24700200 
 129      00
 130 00bf C57D29AC 		vmovapd	%ymm13, 816(%rsp)
 130      24300300 
 130      00
 131 00c8 C4417D10 		vmovupd	64(%r12), %ymm12
 131      642440
 132 00cf C5FD2994 		vmovapd	%ymm2, 656(%rsp)
GAS LISTING /tmp/ccIBUw01.s 			page 4


 132      24900200 
 132      00
 133 00d8 C57D29A4 		vmovapd	%ymm12, 848(%rsp)
 133      24500300 
 133      00
 134 00e1 C4417D10 		vmovupd	96(%r12), %ymm11
 134      5C2460
 135 00e8 C5FD2994 		vmovapd	%ymm2, 688(%rsp)
 135      24B00200 
 135      00
 136 00f1 C57D299C 		vmovapd	%ymm11, 880(%rsp)
 136      24700300 
 136      00
 137 00fa C4417D10 		vmovupd	128(%r12), %ymm10
 137      94248000 
 137      0000
 138 0104 C5FD2994 		vmovapd	%ymm2, 720(%rsp)
 138      24D00200 
 138      00
 139 010d C57D2994 		vmovapd	%ymm10, 912(%rsp)
 139      24900300 
 139      00
 140 0116 C4417D10 		vmovupd	160(%r12), %ymm9
 140      8C24A000 
 140      0000
 141 0120 C57D2994 		vmovapd	%ymm10, 176(%rsp)
 141      24B00000 
 141      00
 142 0129 C4417D28 		vmovapd	%ymm11, %ymm10
 142      D3
 143 012e C4417D28 		vmovapd	%ymm12, %ymm11
 143      DC
 144 0133 C57D298C 		vmovapd	%ymm9, 944(%rsp)
 144      24B00300 
 144      00
 145 013c C4417D28 		vmovapd	%ymm13, %ymm12
 145      E5
 146 0141 C4417D28 		vmovapd	%ymm14, %ymm13
 146      EE
 147 0146 C5FD2994 		vmovapd	%ymm2, 752(%rsp)
 147      24F00200 
 147      00
 148 014f C4417D28 		vmovapd	%ymm9, %ymm14
 148      F1
 149 0154 C57D288C 		vmovapd	176(%rsp), %ymm9
 149      24B00000 
 149      00
 150 015d 0F1F00   		.p2align 4,,10
 151              		.p2align 3
 152              	.L26:
 153 0160 C51559EF 		vmulpd	%ymm7, %ymm13, %ymm13
 154 0164 4C89F0   		movq	%r14, %rax
 155 0167 C51D59E6 		vmulpd	%ymm6, %ymm12, %ymm12
 156 016b C52559DD 		vmulpd	%ymm5, %ymm11, %ymm11
 157 016f C52D59D4 		vmulpd	%ymm4, %ymm10, %ymm10
 158 0173 C53559C8 		vmulpd	%ymm0, %ymm9, %ymm9
 159 0177 C4410D59 		vmulpd	%ymm8, %ymm14, %ymm14
GAS LISTING /tmp/ccIBUw01.s 			page 5


 159      F0
 160 017c C5F55EFF 		vdivpd	%ymm7, %ymm1, %ymm7
 161 0180 C441455C 		vsubpd	%ymm13, %ymm7, %ymm13
 161      ED
 162 0185 C5F55EFE 		vdivpd	%ymm6, %ymm1, %ymm7
 163 0189 C57D29AC 		vmovapd	%ymm13, 208(%rsp)
 163      24D00000 
 163      00
 164 0192 C4416559 		vmulpd	%ymm13, %ymm3, %ymm13
 164      ED
 165 0197 C51558AC 		vaddpd	592(%rsp), %ymm13, %ymm13
 165      24500200 
 165      00
 166 01a0 C441455C 		vsubpd	%ymm12, %ymm7, %ymm12
 166      E4
 167 01a5 C57D29AC 		vmovapd	%ymm13, 400(%rsp)
 167      24900100 
 167      00
 168 01ae C57D29A4 		vmovapd	%ymm12, 240(%rsp)
 168      24F00000 
 168      00
 169 01b7 C4416559 		vmulpd	%ymm12, %ymm3, %ymm12
 169      E4
 170 01bc C4C14D58 		vaddpd	%ymm12, %ymm6, %ymm6
 170      F4
 171 01c1 C5FD29B4 		vmovapd	%ymm6, 432(%rsp)
 171      24B00100 
 171      00
 172 01ca C5F55EF5 		vdivpd	%ymm5, %ymm1, %ymm6
 173 01ce C4414D5C 		vsubpd	%ymm11, %ymm6, %ymm11
 173      DB
 174 01d3 C57D299C 		vmovapd	%ymm11, 272(%rsp)
 174      24100100 
 174      00
 175 01dc C4416559 		vmulpd	%ymm11, %ymm3, %ymm11
 175      DB
 176 01e1 C4C15558 		vaddpd	%ymm11, %ymm5, %ymm5
 176      EB
 177 01e6 C5FD29AC 		vmovapd	%ymm5, 464(%rsp)
 177      24D00100 
 177      00
 178 01ef C5F55EEC 		vdivpd	%ymm4, %ymm1, %ymm5
 179 01f3 C441555C 		vsubpd	%ymm10, %ymm5, %ymm10
 179      D2
 180 01f8 C57D2994 		vmovapd	%ymm10, 304(%rsp)
 180      24300100 
 180      00
 181 0201 C4416559 		vmulpd	%ymm10, %ymm3, %ymm10
 181      D2
 182 0206 C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 182      E2
 183 020b C5FD29A4 		vmovapd	%ymm4, 496(%rsp)
 183      24F00100 
 183      00
 184 0214 C5F55EE0 		vdivpd	%ymm0, %ymm1, %ymm4
 185 0218 C4415D5C 		vsubpd	%ymm9, %ymm4, %ymm9
 185      C9
GAS LISTING /tmp/ccIBUw01.s 			page 6


 186 021d C57D298C 		vmovapd	%ymm9, 336(%rsp)
 186      24500100 
 186      00
 187 0226 C4416559 		vmulpd	%ymm9, %ymm3, %ymm9
 187      C9
 188 022b C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 188      C1
 189 0230 C5FD2984 		vmovapd	%ymm0, 528(%rsp)
 189      24100200 
 189      00
 190 0239 C4C1755E 		vdivpd	%ymm8, %ymm1, %ymm0
 190      C0
 191 023e C4417D5C 		vsubpd	%ymm14, %ymm0, %ymm14
 191      F6
 192 0243 C57D29B4 		vmovapd	%ymm14, 368(%rsp)
 192      24700100 
 192      00
 193 024c C4416559 		vmulpd	%ymm14, %ymm3, %ymm14
 193      F6
 194 0251 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm8
 194      C6
 195 0256 C57D2984 		vmovapd	%ymm8, 560(%rsp)
 195      24300200 
 195      00
 196 025f 90       		.p2align 4,,10
 197              		.p2align 3
 198              	.L17:
 199 0260 C5FD2820 		vmovapd	(%rax), %ymm4
 200 0264 4883C020 		addq	$32, %rax
 201 0268 C5F55EC4 		vdivpd	%ymm4, %ymm1, %ymm0
 202 026c C5DD59A8 		vmulpd	352(%rax), %ymm4, %ymm5
 202      60010000 
 203 0274 C5FD5CC5 		vsubpd	%ymm5, %ymm0, %ymm0
 204 0278 C5ED59E0 		vmulpd	%ymm0, %ymm2, %ymm4
 205 027c C5E559C0 		vmulpd	%ymm0, %ymm3, %ymm0
 206 0280 C5DD58A0 		vaddpd	-224(%rax), %ymm4, %ymm4
 206      20FFFFFF 
 207 0288 C5FD5880 		vaddpd	160(%rax), %ymm0, %ymm0
 207      A0000000 
 208 0290 C5FD29A0 		vmovapd	%ymm4, -224(%rax)
 208      20FFFFFF 
 209 0298 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 209      E0
 210 029d 4C39F8   		cmpq	%r15, %rax
 211 02a0 75BE     		jne	.L17
 212 02a2 4C89F0   		movq	%r14, %rax
 213              		.p2align 4,,10
 214 02a5 0F1F00   		.p2align 3
 215              	.L15:
 216 02a8 C5FD2820 		vmovapd	(%rax), %ymm4
 217 02ac 4883C020 		addq	$32, %rax
 218 02b0 C5F55EC4 		vdivpd	%ymm4, %ymm1, %ymm0
 219 02b4 C5DD59A8 		vmulpd	352(%rax), %ymm4, %ymm5
 219      60010000 
 220 02bc C5FD5CC5 		vsubpd	%ymm5, %ymm0, %ymm0
 221 02c0 C5ED59E0 		vmulpd	%ymm0, %ymm2, %ymm4
 222 02c4 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
GAS LISTING /tmp/ccIBUw01.s 			page 7


 222      00000000 
 223 02cc C5DD58A0 		vaddpd	-224(%rax), %ymm4, %ymm4
 223      20FFFFFF 
 224 02d4 C5FD5880 		vaddpd	160(%rax), %ymm0, %ymm0
 224      A0000000 
 225 02dc C5FD29A0 		vmovapd	%ymm4, -224(%rax)
 225      20FFFFFF 
 226 02e4 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 226      E0
 227 02e9 4C39F8   		cmpq	%r15, %rax
 228 02ec 75BA     		jne	.L15
 229 02ee C5FD2884 		vmovapd	400(%rsp), %ymm0
 229      24900100 
 229      00
 230 02f7 83EA01   		subl	$1, %edx
 231 02fa C57D28AC 		vmovapd	784(%rsp), %ymm13
 231      24100300 
 231      00
 232 0303 C5F55EF8 		vdivpd	%ymm0, %ymm1, %ymm7
 233 0307 C57D28A4 		vmovapd	816(%rsp), %ymm12
 233      24300300 
 233      00
 234 0310 C57D289C 		vmovapd	848(%rsp), %ymm11
 234      24500300 
 234      00
 235 0319 C57D2894 		vmovapd	880(%rsp), %ymm10
 235      24700300 
 235      00
 236 0322 C59559E0 		vmulpd	%ymm0, %ymm13, %ymm4
 237 0326 C5FD2884 		vmovapd	432(%rsp), %ymm0
 237      24B00100 
 237      00
 238 032f C5F55EF0 		vdivpd	%ymm0, %ymm1, %ymm6
 239 0333 C5C55CFC 		vsubpd	%ymm4, %ymm7, %ymm7
 240 0337 C5FD29BC 		vmovapd	%ymm7, 400(%rsp)
 240      24900100 
 240      00
 241 0340 C5C558BC 		vaddpd	208(%rsp), %ymm7, %ymm7
 241      24D00000 
 241      00
 242 0349 C5FD29BC 		vmovapd	%ymm7, 208(%rsp)
 242      24D00000 
 242      00
 243 0352 C59D59E0 		vmulpd	%ymm0, %ymm12, %ymm4
 244 0356 C5FD2884 		vmovapd	464(%rsp), %ymm0
 244      24D00100 
 244      00
 245 035f C4C14559 		vmulpd	%ymm15, %ymm7, %ymm7
 245      FF
 246 0364 C5F55EE8 		vdivpd	%ymm0, %ymm1, %ymm5
 247 0368 C5CD5CF4 		vsubpd	%ymm4, %ymm6, %ymm6
 248 036c C5C558BC 		vaddpd	592(%rsp), %ymm7, %ymm7
 248      24500200 
 248      00
 249 0375 C5FD29B4 		vmovapd	%ymm6, 432(%rsp)
 249      24B00100 
 249      00
GAS LISTING /tmp/ccIBUw01.s 			page 8


 250 037e C5CD58B4 		vaddpd	240(%rsp), %ymm6, %ymm6
 250      24F00000 
 250      00
 251 0387 C5FD29BC 		vmovapd	%ymm7, 592(%rsp)
 251      24500200 
 251      00
 252 0390 C5FD29B4 		vmovapd	%ymm6, 240(%rsp)
 252      24F00000 
 252      00
 253 0399 C5A559E0 		vmulpd	%ymm0, %ymm11, %ymm4
 254 039d C5FD2884 		vmovapd	496(%rsp), %ymm0
 254      24F00100 
 254      00
 255 03a6 C52D59C0 		vmulpd	%ymm0, %ymm10, %ymm8
 256 03aa C4C14D59 		vmulpd	%ymm15, %ymm6, %ymm6
 256      F7
 257 03af C5D55CEC 		vsubpd	%ymm4, %ymm5, %ymm5
 258 03b3 C5F55EE0 		vdivpd	%ymm0, %ymm1, %ymm4
 259 03b7 C5FD2884 		vmovapd	912(%rsp), %ymm0
 259      24900300 
 259      00
 260 03c0 C5CD58B4 		vaddpd	624(%rsp), %ymm6, %ymm6
 260      24700200 
 260      00
 261 03c9 C5FD2984 		vmovapd	%ymm0, 176(%rsp)
 261      24B00000 
 261      00
 262 03d2 C5FD29AC 		vmovapd	%ymm5, 464(%rsp)
 262      24D00100 
 262      00
 263 03db C5D558AC 		vaddpd	272(%rsp), %ymm5, %ymm5
 263      24100100 
 263      00
 264 03e4 C5FD29AC 		vmovapd	%ymm5, 272(%rsp)
 264      24100100 
 264      00
 265 03ed C4C15559 		vmulpd	%ymm15, %ymm5, %ymm5
 265      EF
 266 03f2 C4C15D5C 		vsubpd	%ymm8, %ymm4, %ymm4
 266      E0
 267 03f7 C57D2884 		vmovapd	528(%rsp), %ymm8
 267      24100200 
 267      00
 268 0400 C53D59F0 		vmulpd	%ymm0, %ymm8, %ymm14
 269 0404 C5FD29A4 		vmovapd	%ymm4, 496(%rsp)
 269      24F00100 
 269      00
 270 040d C5DD58A4 		vaddpd	304(%rsp), %ymm4, %ymm4
 270      24300100 
 270      00
 271 0416 C4C1755E 		vdivpd	%ymm8, %ymm1, %ymm0
 271      C0
 272 041b C57D2884 		vmovapd	560(%rsp), %ymm8
 272      24300200 
 272      00
 273 0424 C5FD29A4 		vmovapd	%ymm4, 304(%rsp)
 273      24300100 
GAS LISTING /tmp/ccIBUw01.s 			page 9


 273      00
 274 042d C4C15D59 		vmulpd	%ymm15, %ymm4, %ymm4
 274      E7
 275 0432 C4C17D5C 		vsubpd	%ymm14, %ymm0, %ymm0
 275      C6
 276 0437 C57D28B4 		vmovapd	944(%rsp), %ymm14
 276      24B00300 
 276      00
 277 0440 C4410D59 		vmulpd	%ymm8, %ymm14, %ymm9
 277      C8
 278 0445 C5FD2984 		vmovapd	%ymm0, 528(%rsp)
 278      24100200 
 278      00
 279 044e C5FD5884 		vaddpd	336(%rsp), %ymm0, %ymm0
 279      24500100 
 279      00
 280 0457 C441755E 		vdivpd	%ymm8, %ymm1, %ymm8
 280      C0
 281 045c C5FD2984 		vmovapd	%ymm0, 336(%rsp)
 281      24500100 
 281      00
 282 0465 C4C17D59 		vmulpd	%ymm15, %ymm0, %ymm0
 282      C7
 283 046a C4413D5C 		vsubpd	%ymm9, %ymm8, %ymm8
 283      C1
 284 046f C57D2984 		vmovapd	%ymm8, 560(%rsp)
 284      24300200 
 284      00
 285 0478 C53D5884 		vaddpd	368(%rsp), %ymm8, %ymm8
 285      24700100 
 285      00
 286 0481 C57D2984 		vmovapd	%ymm8, 368(%rsp)
 286      24700100 
 286      00
 287 048a C4413D59 		vmulpd	%ymm15, %ymm8, %ymm8
 287      C7
 288 048f C5FD29B4 		vmovapd	%ymm6, 624(%rsp)
 288      24700200 
 288      00
 289 0498 C5D558AC 		vaddpd	656(%rsp), %ymm5, %ymm5
 289      24900200 
 289      00
 290 04a1 C5DD58A4 		vaddpd	688(%rsp), %ymm4, %ymm4
 290      24B00200 
 290      00
 291 04aa C5FD5884 		vaddpd	720(%rsp), %ymm0, %ymm0
 291      24D00200 
 291      00
 292 04b3 C53D5884 		vaddpd	752(%rsp), %ymm8, %ymm8
 292      24F00200 
 292      00
 293 04bc C5FD29AC 		vmovapd	%ymm5, 656(%rsp)
 293      24900200 
 293      00
 294 04c5 C5FD29A4 		vmovapd	%ymm4, 688(%rsp)
 294      24B00200 
 294      00
GAS LISTING /tmp/ccIBUw01.s 			page 10


 295 04ce C5FD2984 		vmovapd	%ymm0, 720(%rsp)
 295      24D00200 
 295      00
 296 04d7 C57D2984 		vmovapd	%ymm8, 752(%rsp)
 296      24F00200 
 296      00
 297 04e0 740E     		je	.L16
 298 04e2 C57D288C 		vmovapd	176(%rsp), %ymm9
 298      24B00000 
 298      00
 299 04eb E970FCFF 		jmp	.L26
 299      FF
 300              	.L16:
 301 04f0 B81F85EB 		movl	$1374389535, %eax
 301      51
 302 04f5 41F7ED   		imull	%r13d
 303 04f8 4489E8   		movl	%r13d, %eax
 304 04fb C1F81F   		sarl	$31, %eax
 305 04fe C1FA05   		sarl	$5, %edx
 306 0501 29C2     		subl	%eax, %edx
 307 0503 B8640000 		movl	$100, %eax
 307      00
 308 0508 0FAFD0   		imull	%eax, %edx
 309 050b 4489E8   		movl	%r13d, %eax
 310 050e 29D0     		subl	%edx, %eax
 311 0510 83F801   		cmpl	$1, %eax
 312 0513 0F848F00 		je	.L18
 312      0000
 313              	.L24:
 314 0519 4183C518 		addl	$24, %r13d
 315 051d 4981C4C0 		addq	$192, %r12
 315      000000
 316 0524 4181FDE0 		cmpl	$18144, %r13d
 316      460000
 317 052b 0F8549FB 		jne	.L12
 317      FFFF
 318 0531 C5F877   		vzeroupper
 319 0534 E8000000 		call	clock
 319      00
 320 0539 BA0C0000 		movl	$12, %edx
 320      00
 321 053e 4889C3   		movq	%rax, %rbx
 322 0541 BE000000 		movl	$.LC9, %esi
 322      00
 323 0546 BF000000 		movl	$_ZSt4cout, %edi
 323      00
 324 054b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 324      00
 325 0550 4889D9   		movq	%rbx, %rcx
 326 0553 482B0C24 		subq	(%rsp), %rcx
 327 0557 48BECFF7 		movabsq	$2361183241434822607, %rsi
 327      53E3A59B 
 327      C420
 328 0561 BF000000 		movl	$_ZSt4cout, %edi
 328      00
 329 0566 4889C8   		movq	%rcx, %rax
 330 0569 48C1F93F 		sarq	$63, %rcx
GAS LISTING /tmp/ccIBUw01.s 			page 11


 331 056d 48F7EE   		imulq	%rsi
 332 0570 4889D6   		movq	%rdx, %rsi
 333 0573 48C1FE07 		sarq	$7, %rsi
 334 0577 4829CE   		subq	%rcx, %rsi
 335 057a E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 335      00
 336 057f BE000000 		movl	$.LC10, %esi
 336      00
 337 0584 4889C7   		movq	%rax, %rdi
 338 0587 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 338      00
 339 058c 4889C7   		movq	%rax, %rdi
 340 058f E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 340      00
 341 0594 488D65D8 		leaq	-40(%rbp), %rsp
 342 0598 31C0     		xorl	%eax, %eax
 343 059a 5B       		popq	%rbx
 344 059b 415C     		popq	%r12
 345 059d 415D     		popq	%r13
 346 059f 415E     		popq	%r14
 347 05a1 415F     		popq	%r15
 348 05a3 5D       		popq	%rbp
 349              		.cfi_remember_state
 350              		.cfi_def_cfa 7, 8
 351 05a4 C3       		ret
 352              		.p2align 4,,10
 353 05a5 0F1F00   		.p2align 3
 354              	.L18:
 355              		.cfi_restore_state
 356 05a8 4C89FB   		movq	%r15, %rbx
 357 05ab EB65     		jmp	.L25
 358              	.L30:
 359 05ad 0FB64243 		movzbl	67(%rdx), %eax
 360              	.L23:
 361 05b1 0FBEF0   		movsbl	%al, %esi
 362 05b4 4C89CF   		movq	%r9, %rdi
 363 05b7 C57D297C 		vmovapd	%ymm15, 80(%rsp)
 363      2450
 364 05bd C5FD295C 		vmovapd	%ymm3, 112(%rsp)
 364      2470
 365 05c3 C5FD298C 		vmovapd	%ymm1, 144(%rsp)
 365      24900000 
 365      00
 366 05cc C5FD2994 		vmovapd	%ymm2, 176(%rsp)
 366      24B00000 
 366      00
 367 05d5 C5F877   		vzeroupper
 368 05d8 4883C320 		addq	$32, %rbx
 369 05dc E8000000 		call	_ZNSo3putEc
 369      00
 370 05e1 4889C7   		movq	%rax, %rdi
 371 05e4 E8000000 		call	_ZNSo5flushEv
 371      00
 372 05e9 483B5C24 		cmpq	8(%rsp), %rbx
 372      08
 373 05ee C5FD2894 		vmovapd	176(%rsp), %ymm2
 373      24B00000 
GAS LISTING /tmp/ccIBUw01.s 			page 12


 373      00
 374 05f7 C5FD288C 		vmovapd	144(%rsp), %ymm1
 374      24900000 
 374      00
 375 0600 C5FD285C 		vmovapd	112(%rsp), %ymm3
 375      2470
 376 0606 C57D287C 		vmovapd	80(%rsp), %ymm15
 376      2450
 377 060c 0F8407FF 		je	.L24
 377      FFFF
 378              	.L25:
 379 0612 C5FB1023 		vmovsd	(%rbx), %xmm4
 380 0616 BA040000 		movl	$4, %edx
 380      00
 381 061b BE000000 		movl	$.LC7, %esi
 381      00
 382 0620 C5FB1083 		vmovsd	192(%rbx), %xmm0
 382      C0000000 
 383 0628 BF000000 		movl	$_ZSt4cout, %edi
 383      00
 384 062d C57D297C 		vmovapd	%ymm15, 16(%rsp)
 384      2410
 385 0633 C5FD295C 		vmovapd	%ymm3, 48(%rsp)
 385      2430
 386 0639 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 386      2450
 387 063f C5FD2954 		vmovapd	%ymm2, 112(%rsp)
 387      2470
 388 0645 C5FB11A4 		vmovsd	%xmm4, 144(%rsp)
 388      24900000 
 388      00
 389 064e C5FB1184 		vmovsd	%xmm0, 176(%rsp)
 389      24B00000 
 389      00
 390 0657 C5F877   		vzeroupper
 391 065a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 391      00
 392 065f C5FB1084 		vmovsd	176(%rsp), %xmm0
 392      24B00000 
 392      00
 393 0668 BF000000 		movl	$_ZSt4cout, %edi
 393      00
 394 066d E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 394      00
 395 0672 BA030000 		movl	$3, %edx
 395      00
 396 0677 BE000000 		movl	$.LC8, %esi
 396      00
 397 067c 4889C7   		movq	%rax, %rdi
 398 067f 48898424 		movq	%rax, 176(%rsp)
 398      B0000000 
 399 0687 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 399      00
 400 068c 4C8B8C24 		movq	176(%rsp), %r9
 400      B0000000 
 401 0694 C5FB10A4 		vmovsd	144(%rsp), %xmm4
 401      24900000 
GAS LISTING /tmp/ccIBUw01.s 			page 13


 401      00
 402 069d C5F928C4 		vmovapd	%xmm4, %xmm0
 403 06a1 4C89CF   		movq	%r9, %rdi
 404 06a4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 404      00
 405 06a9 4989C1   		movq	%rax, %r9
 406 06ac 488B00   		movq	(%rax), %rax
 407 06af C5FD2854 		vmovapd	112(%rsp), %ymm2
 407      2470
 408 06b5 C5FD284C 		vmovapd	80(%rsp), %ymm1
 408      2450
 409 06bb C5FD285C 		vmovapd	48(%rsp), %ymm3
 409      2430
 410 06c1 488B40E8 		movq	-24(%rax), %rax
 411 06c5 C57D287C 		vmovapd	16(%rsp), %ymm15
 411      2410
 412 06cb 498B9401 		movq	240(%r9,%rax), %rdx
 412      F0000000 
 413 06d3 4885D2   		testq	%rdx, %rdx
 414 06d6 7478     		je	.L29
 415 06d8 807A3800 		cmpb	$0, 56(%rdx)
 416 06dc 0F85CBFE 		jne	.L30
 416      FFFF
 417 06e2 4889D7   		movq	%rdx, %rdi
 418 06e5 C57D297C 		vmovapd	%ymm15, 16(%rsp)
 418      2410
 419 06eb 4C898C24 		movq	%r9, 144(%rsp)
 419      90000000 
 420 06f3 C5FD295C 		vmovapd	%ymm3, 48(%rsp)
 420      2430
 421 06f9 48899424 		movq	%rdx, 176(%rsp)
 421      B0000000 
 422 0701 C5FD294C 		vmovapd	%ymm1, 80(%rsp)
 422      2450
 423 0707 C5FD2954 		vmovapd	%ymm2, 112(%rsp)
 423      2470
 424 070d C5F877   		vzeroupper
 425 0710 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 425      00
 426 0715 488B9424 		movq	176(%rsp), %rdx
 426      B0000000 
 427 071d BE0A0000 		movl	$10, %esi
 427      00
 428 0722 488B02   		movq	(%rdx), %rax
 429 0725 4889D7   		movq	%rdx, %rdi
 430 0728 FF5030   		call	*48(%rax)
 431 072b C57D287C 		vmovapd	16(%rsp), %ymm15
 431      2410
 432 0731 4C8B8C24 		movq	144(%rsp), %r9
 432      90000000 
 433 0739 C5FD285C 		vmovapd	48(%rsp), %ymm3
 433      2430
 434 073f C5FD284C 		vmovapd	80(%rsp), %ymm1
 434      2450
 435 0745 C5FD2854 		vmovapd	112(%rsp), %ymm2
 435      2470
 436 074b E961FEFF 		jmp	.L23
GAS LISTING /tmp/ccIBUw01.s 			page 14


 436      FF
 437              	.L29:
 438 0750 C5F877   		vzeroupper
 439 0753 E8000000 		call	_ZSt16__throw_bad_castv
 439      00
 440              		.cfi_endproc
 441              	.LFE4383:
 442              		.size	main, .-main
 443 0758 0F1F8400 		.p2align 4,,15
 443      00000000 
 444              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 445              	_GLOBAL__sub_I__Z8linspaceddi:
 446              	.LFB4595:
 447              		.cfi_startproc
 448 0760 4883EC08 		subq	$8, %rsp
 449              		.cfi_def_cfa_offset 16
 450 0764 BF000000 		movl	$_ZStL8__ioinit, %edi
 450      00
 451 0769 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 451      00
 452 076e BA000000 		movl	$__dso_handle, %edx
 452      00
 453 0773 BE000000 		movl	$_ZStL8__ioinit, %esi
 453      00
 454 0778 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 454      00
 455 077d 4883C408 		addq	$8, %rsp
 456              		.cfi_def_cfa_offset 8
 457 0781 E9000000 		jmp	__cxa_atexit
 457      00
 458              		.cfi_endproc
 459              	.LFE4595:
 460              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 461              		.section	.init_array,"aw"
 462              		.align 8
 463 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 463      00000000 
 464              		.local	_ZStL8__ioinit
 465              		.comm	_ZStL8__ioinit,1,1
 466              		.section	.rodata.cst32,"aM",@progbits,32
 467              		.align 32
 468              	.LC0:
 469 0000 00000000 		.long	0
 470 0004 00000040 		.long	1073741824
 471 0008 00000000 		.long	0
 472 000c 00000040 		.long	1073741824
 473 0010 00000000 		.long	0
 474 0014 00000040 		.long	1073741824
 475 0018 00000000 		.long	0
 476 001c 00000040 		.long	1073741824
 477              		.section	.rodata.cst8,"aM",@progbits,8
 478              		.align 8
 479              	.LC1:
 480 0000 9A999999 		.long	2576980378
 481 0004 9999E93F 		.long	1072273817
 482              		.section	.rodata.cst32
 483              		.align 32
GAS LISTING /tmp/ccIBUw01.s 			page 15


 484              	.LC3:
 485 0020 00000000 		.long	0
 486 0024 0000F03F 		.long	1072693248
 487 0028 00000000 		.long	0
 488 002c 0000F03F 		.long	1072693248
 489 0030 00000000 		.long	0
 490 0034 0000F03F 		.long	1072693248
 491 0038 00000000 		.long	0
 492 003c 0000F03F 		.long	1072693248
 493              		.align 32
 494              	.LC4:
 495 0040 7B14AE47 		.long	1202590843
 496 0044 E17A743F 		.long	1064598241
 497 0048 7B14AE47 		.long	1202590843
 498 004c E17A743F 		.long	1064598241
 499 0050 7B14AE47 		.long	1202590843
 500 0054 E17A743F 		.long	1064598241
 501 0058 7B14AE47 		.long	1202590843
 502 005c E17A743F 		.long	1064598241
 503              		.align 32
 504              	.LC5:
 505 0060 7B14AE47 		.long	1202590843
 506 0064 E17A843F 		.long	1065646817
 507 0068 7B14AE47 		.long	1202590843
 508 006c E17A843F 		.long	1065646817
 509 0070 7B14AE47 		.long	1202590843
 510 0074 E17A843F 		.long	1065646817
 511 0078 7B14AE47 		.long	1202590843
 512 007c E17A843F 		.long	1065646817
 513              		.align 32
 514              	.LC6:
 515 0080 4F1BE8B4 		.long	3035110223
 516 0084 814E5B3F 		.long	1062948481
 517 0088 4F1BE8B4 		.long	3035110223
 518 008c 814E5B3F 		.long	1062948481
 519 0090 4F1BE8B4 		.long	3035110223
 520 0094 814E5B3F 		.long	1062948481
 521 0098 4F1BE8B4 		.long	3035110223
 522 009c 814E5B3F 		.long	1062948481
 523              		.hidden	__dso_handle
 524              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 525              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccIBUw01.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 kibontott.cpp
     /tmp/ccIBUw01.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/ccIBUw01.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccIBUw01.s:81     .text.startup:0000000000000000 main
     /tmp/ccIBUw01.s:445    .text.startup:0000000000000760 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccIBUw01.s:479    .rodata.cst8:0000000000000000 .LC1
     /tmp/ccIBUw01.s:484    .rodata.cst32:0000000000000020 .LC3
     /tmp/ccIBUw01.s:468    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccIBUw01.s:494    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccIBUw01.s:514    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccIBUw01.s:504    .rodata.cst32:0000000000000060 .LC5

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
