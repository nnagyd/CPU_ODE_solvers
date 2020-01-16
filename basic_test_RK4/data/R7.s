GAS LISTING /tmp/cc2L4m4i.s 			page 1


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
GAS LISTING /tmp/cc2L4m4i.s 			page 2


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
GAS LISTING /tmp/cc2L4m4i.s 			page 3


  98 0014 53       		pushq	%rbx
  99 0015 4883E4E0 		andq	$-32, %rsp
 100 0019 4881EC30 		subq	$1072, %rsp
 100      040000
 101              		.cfi_offset 12, -48
 102              		.cfi_offset 3, -56
 103 0020 C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 103      00000000 
 104 0028 4C8DB424 		leaq	400(%rsp), %r14
 104      90010000 
 105 0030 4C8DBC24 		leaq	624(%rsp), %r15
 105      70020000 
 106 0038 C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 106      00000000 
 107 0040 E8000000 		call	_Z8linspaceddi
 107      00
 108 0045 4989C4   		movq	%rax, %r12
 109 0048 E8000000 		call	clock
 109      00
 110 004d 48890424 		movq	%rax, (%rsp)
 111 0051 488D8424 		leaq	848(%rsp), %rax
 111      50030000 
 112 0059 C5FD2815 		vmovapd	.LC3(%rip), %ymm2
 112      00000000 
 113 0061 C5FD280D 		vmovapd	.LC4(%rip), %ymm1
 113      00000000 
 114 0069 C57D280D 		vmovapd	.LC6(%rip), %ymm9
 114      00000000 
 115 0071 48894424 		movq	%rax, 8(%rsp)
 115      08
 116              	.L12:
 117 0076 C4417D10 		vmovupd	(%r12), %ymm15
 117      3C24
 118 007c BA102700 		movl	$10000, %edx
 118      00
 119 0081 C5FD2825 		vmovapd	.LC1(%rip), %ymm4
 119      00000000 
 120 0089 C57D29BC 		vmovapd	%ymm15, 848(%rsp)
 120      24500300 
 120      00
 121 0092 C5FD29A4 		vmovapd	%ymm4, 624(%rsp)
 121      24700200 
 121      00
 122 009b C5FD28EC 		vmovapd	%ymm4, %ymm5
 123 009f C5FD28F4 		vmovapd	%ymm4, %ymm6
 124 00a3 C5FD28DC 		vmovapd	%ymm4, %ymm3
 125 00a7 C5FD28FC 		vmovapd	%ymm4, %ymm7
 126 00ab C4417D10 		vmovupd	32(%r12), %ymm14
 126      742420
 127 00b2 C57D28C4 		vmovapd	%ymm4, %ymm8
 128 00b6 C5FD29A4 		vmovapd	%ymm4, 656(%rsp)
 128      24900200 
 128      00
 129 00bf C57D29B4 		vmovapd	%ymm14, 880(%rsp)
 129      24700300 
 129      00
 130 00c8 C4C17D10 		vmovupd	64(%r12), %ymm0
GAS LISTING /tmp/cc2L4m4i.s 			page 4


 130      442440
 131 00cf C5FD29A4 		vmovapd	%ymm4, 688(%rsp)
 131      24B00200 
 131      00
 132 00d8 C5FD2984 		vmovapd	%ymm0, 912(%rsp)
 132      24900300 
 132      00
 133 00e1 C4417D10 		vmovupd	96(%r12), %ymm12
 133      642460
 134 00e8 C5FD29A4 		vmovapd	%ymm4, 720(%rsp)
 134      24D00200 
 134      00
 135 00f1 C57D29A4 		vmovapd	%ymm12, 944(%rsp)
 135      24B00300 
 135      00
 136 00fa C4417D10 		vmovupd	128(%r12), %ymm11
 136      9C248000 
 136      0000
 137 0104 C5FD29A4 		vmovapd	%ymm4, 752(%rsp)
 137      24F00200 
 137      00
 138 010d C57D299C 		vmovapd	%ymm11, 976(%rsp)
 138      24D00300 
 138      00
 139 0116 C4417D10 		vmovupd	160(%r12), %ymm10
 139      9424A000 
 139      0000
 140 0120 C5FD29A4 		vmovapd	%ymm4, 784(%rsp)
 140      24100300 
 140      00
 141 0129 C57D2994 		vmovapd	%ymm10, 1008(%rsp)
 141      24F00300 
 141      00
 142 0132 C4417D10 		vmovupd	192(%r12), %ymm13
 142      AC24C000 
 142      0000
 143 013c C5FD2944 		vmovapd	%ymm0, 112(%rsp)
 143      2470
 144 0142 C5FD28C4 		vmovapd	%ymm4, %ymm0
 145 0146 C57D29AC 		vmovapd	%ymm13, 1040(%rsp)
 145      24100400 
 145      00
 146 014f C5FD29A4 		vmovapd	%ymm4, 816(%rsp)
 146      24300300 
 146      00
 147 0158 0F1F8400 		.p2align 4,,10
 147      00000000 
 148              		.p2align 3
 149              	.L26:
 150 0160 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 150      C0
 151 0165 4C89F0   		movq	%r14, %rax
 152 0168 C4413D5C 		vsubpd	%ymm15, %ymm8, %ymm8
 152      C7
 153 016d C57D2984 		vmovapd	%ymm8, 176(%rsp)
 153      24B00000 
 153      00
GAS LISTING /tmp/cc2L4m4i.s 			page 5


 154 0176 C4417559 		vmulpd	%ymm8, %ymm1, %ymm8
 154      C0
 155 017b C53D5884 		vaddpd	624(%rsp), %ymm8, %ymm8
 155      24700200 
 155      00
 156 0184 C57D2984 		vmovapd	%ymm8, 400(%rsp)
 156      24900100 
 156      00
 157 018d C54559C7 		vmulpd	%ymm7, %ymm7, %ymm8
 158 0191 C4413D5C 		vsubpd	%ymm14, %ymm8, %ymm14
 158      F6
 159 0196 C57D29B4 		vmovapd	%ymm14, 208(%rsp)
 159      24D00000 
 159      00
 160 019f C4417559 		vmulpd	%ymm14, %ymm1, %ymm14
 160      F6
 161 01a4 C4C14558 		vaddpd	%ymm14, %ymm7, %ymm7
 161      FE
 162 01a9 C5FD29BC 		vmovapd	%ymm7, 432(%rsp)
 162      24B00100 
 162      00
 163 01b2 C5CD59FE 		vmulpd	%ymm6, %ymm6, %ymm7
 164 01b6 C5C55C7C 		vsubpd	112(%rsp), %ymm7, %ymm7
 164      2470
 165 01bc C5FD29BC 		vmovapd	%ymm7, 240(%rsp)
 165      24F00000 
 165      00
 166 01c5 C5F559FF 		vmulpd	%ymm7, %ymm1, %ymm7
 167 01c9 C5CD58F7 		vaddpd	%ymm7, %ymm6, %ymm6
 168 01cd C5FD29B4 		vmovapd	%ymm6, 464(%rsp)
 168      24D00100 
 168      00
 169 01d6 C5D559F5 		vmulpd	%ymm5, %ymm5, %ymm6
 170 01da C4414D5C 		vsubpd	%ymm12, %ymm6, %ymm12
 170      E4
 171 01df C57D29A4 		vmovapd	%ymm12, 272(%rsp)
 171      24100100 
 171      00
 172 01e8 C4417559 		vmulpd	%ymm12, %ymm1, %ymm12
 172      E4
 173 01ed C4C15558 		vaddpd	%ymm12, %ymm5, %ymm5
 173      EC
 174 01f2 C5FD29AC 		vmovapd	%ymm5, 496(%rsp)
 174      24F00100 
 174      00
 175 01fb C5DD59EC 		vmulpd	%ymm4, %ymm4, %ymm5
 176 01ff C441555C 		vsubpd	%ymm11, %ymm5, %ymm11
 176      DB
 177 0204 C57D299C 		vmovapd	%ymm11, 304(%rsp)
 177      24300100 
 177      00
 178 020d C4417559 		vmulpd	%ymm11, %ymm1, %ymm11
 178      DB
 179 0212 C4C15D58 		vaddpd	%ymm11, %ymm4, %ymm4
 179      E3
 180 0217 C5FD29A4 		vmovapd	%ymm4, 528(%rsp)
 180      24100200 
GAS LISTING /tmp/cc2L4m4i.s 			page 6


 180      00
 181 0220 C5E559E3 		vmulpd	%ymm3, %ymm3, %ymm4
 182 0224 C4415D5C 		vsubpd	%ymm10, %ymm4, %ymm10
 182      D2
 183 0229 C57D2994 		vmovapd	%ymm10, 336(%rsp)
 183      24500100 
 183      00
 184 0232 C4417559 		vmulpd	%ymm10, %ymm1, %ymm10
 184      D2
 185 0237 C4C16558 		vaddpd	%ymm10, %ymm3, %ymm3
 185      DA
 186 023c C5FD299C 		vmovapd	%ymm3, 560(%rsp)
 186      24300200 
 186      00
 187 0245 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 188 0249 C441655C 		vsubpd	%ymm13, %ymm3, %ymm13
 188      ED
 189 024e C57D29AC 		vmovapd	%ymm13, 368(%rsp)
 189      24700100 
 189      00
 190 0257 C4417559 		vmulpd	%ymm13, %ymm1, %ymm13
 190      ED
 191 025c C4C17D58 		vaddpd	%ymm13, %ymm0, %ymm0
 191      C5
 192 0261 C5FD2984 		vmovapd	%ymm0, 592(%rsp)
 192      24500200 
 192      00
 193 026a 660F1F44 		.p2align 4,,10
 193      0000
 194              		.p2align 3
 195              	.L17:
 196 0270 C5FD2800 		vmovapd	(%rax), %ymm0
 197 0274 4883C020 		addq	$32, %rax
 198 0278 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 199 027c C5FD5C80 		vsubpd	416(%rax), %ymm0, %ymm0
 199      A0010000 
 200 0284 C5ED59D8 		vmulpd	%ymm0, %ymm2, %ymm3
 201 0288 C5F559C0 		vmulpd	%ymm0, %ymm1, %ymm0
 202 028c C5E55898 		vaddpd	-256(%rax), %ymm3, %ymm3
 202      00FFFFFF 
 203 0294 C5FD5880 		vaddpd	192(%rax), %ymm0, %ymm0
 203      C0000000 
 204 029c C5FD2998 		vmovapd	%ymm3, -256(%rax)
 204      00FFFFFF 
 205 02a4 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 205      E0
 206 02a9 4C39F8   		cmpq	%r15, %rax
 207 02ac 75C2     		jne	.L17
 208 02ae 4C89F0   		movq	%r14, %rax
 209              		.p2align 4,,10
 210 02b1 0F1F8000 		.p2align 3
 210      000000
 211              	.L15:
 212 02b8 C5FD2800 		vmovapd	(%rax), %ymm0
 213 02bc 4883C020 		addq	$32, %rax
 214 02c0 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 215 02c4 C5FD5C80 		vsubpd	416(%rax), %ymm0, %ymm0
GAS LISTING /tmp/cc2L4m4i.s 			page 7


 215      A0010000 
 216 02cc C5ED59D8 		vmulpd	%ymm0, %ymm2, %ymm3
 217 02d0 C5FD5905 		vmulpd	.LC5(%rip), %ymm0, %ymm0
 217      00000000 
 218 02d8 C5E55898 		vaddpd	-256(%rax), %ymm3, %ymm3
 218      00FFFFFF 
 219 02e0 C5FD5880 		vaddpd	192(%rax), %ymm0, %ymm0
 219      C0000000 
 220 02e8 C5FD2998 		vmovapd	%ymm3, -256(%rax)
 220      00FFFFFF 
 221 02f0 C5FD2940 		vmovapd	%ymm0, -32(%rax)
 221      E0
 222 02f5 4939C7   		cmpq	%rax, %r15
 223 02f8 75BE     		jne	.L15
 224 02fa C57D2884 		vmovapd	400(%rsp), %ymm8
 224      24900100 
 224      00
 225 0303 83EA01   		subl	$1, %edx
 226 0306 C5FD28BC 		vmovapd	432(%rsp), %ymm7
 226      24B00100 
 226      00
 227 030f C5FD28B4 		vmovapd	464(%rsp), %ymm6
 227      24D00100 
 227      00
 228 0318 C4413D59 		vmulpd	%ymm8, %ymm8, %ymm8
 228      C0
 229 031d C5FD28AC 		vmovapd	496(%rsp), %ymm5
 229      24F00100 
 229      00
 230 0326 C5FD28A4 		vmovapd	528(%rsp), %ymm4
 230      24100200 
 230      00
 231 032f C5C559FF 		vmulpd	%ymm7, %ymm7, %ymm7
 232 0333 C5FD289C 		vmovapd	560(%rsp), %ymm3
 232      24300200 
 232      00
 233 033c C5CD59F6 		vmulpd	%ymm6, %ymm6, %ymm6
 234 0340 C5FD2884 		vmovapd	1008(%rsp), %ymm0
 234      24F00300 
 234      00
 235 0349 C57D28BC 		vmovapd	848(%rsp), %ymm15
 235      24500300 
 235      00
 236 0352 C5D559ED 		vmulpd	%ymm5, %ymm5, %ymm5
 237 0356 C57D28B4 		vmovapd	880(%rsp), %ymm14
 237      24700300 
 237      00
 238 035f C57D2894 		vmovapd	912(%rsp), %ymm10
 238      24900300 
 238      00
 239 0368 C4413D5C 		vsubpd	%ymm15, %ymm8, %ymm8
 239      C7
 240 036d C5DD59E4 		vmulpd	%ymm4, %ymm4, %ymm4
 241 0371 C57D28A4 		vmovapd	944(%rsp), %ymm12
 241      24B00300 
 241      00
 242 037a C57D289C 		vmovapd	976(%rsp), %ymm11
GAS LISTING /tmp/cc2L4m4i.s 			page 8


 242      24D00300 
 242      00
 243 0383 C4C1455C 		vsubpd	%ymm14, %ymm7, %ymm7
 243      FE
 244 0388 C5E559DB 		vmulpd	%ymm3, %ymm3, %ymm3
 245 038c C5FD2984 		vmovapd	%ymm0, 144(%rsp)
 245      24900000 
 245      00
 246 0395 C4C14D5C 		vsubpd	%ymm10, %ymm6, %ymm6
 246      F2
 247 039a C57D28AC 		vmovapd	1040(%rsp), %ymm13
 247      24100400 
 247      00
 248 03a3 C57D2984 		vmovapd	%ymm8, 400(%rsp)
 248      24900100 
 248      00
 249 03ac C4C1555C 		vsubpd	%ymm12, %ymm5, %ymm5
 249      EC
 250 03b1 C5FD29BC 		vmovapd	%ymm7, 432(%rsp)
 250      24B00100 
 250      00
 251 03ba C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 252 03be C5FD2884 		vmovapd	592(%rsp), %ymm0
 252      24500200 
 252      00
 253 03c7 C5FD29B4 		vmovapd	%ymm6, 464(%rsp)
 253      24D00100 
 253      00
 254 03d0 C4C15D5C 		vsubpd	%ymm11, %ymm4, %ymm4
 254      E3
 255 03d5 C5FD59C0 		vmulpd	%ymm0, %ymm0, %ymm0
 256 03d9 C5FD29AC 		vmovapd	%ymm5, 496(%rsp)
 256      24F00100 
 256      00
 257 03e2 C53D5884 		vaddpd	176(%rsp), %ymm8, %ymm8
 257      24B00000 
 257      00
 258 03eb C5FD299C 		vmovapd	%ymm3, 560(%rsp)
 258      24300200 
 258      00
 259 03f4 C5C558BC 		vaddpd	208(%rsp), %ymm7, %ymm7
 259      24D00000 
 259      00
 260 03fd C5FD29A4 		vmovapd	%ymm4, 528(%rsp)
 260      24100200 
 260      00
 261 0406 C5CD58B4 		vaddpd	240(%rsp), %ymm6, %ymm6
 261      24F00000 
 261      00
 262 040f C5D558AC 		vaddpd	272(%rsp), %ymm5, %ymm5
 262      24100100 
 262      00
 263 0418 C57D2984 		vmovapd	%ymm8, 176(%rsp)
 263      24B00000 
 263      00
 264 0421 C4413D59 		vmulpd	%ymm9, %ymm8, %ymm8
 264      C1
GAS LISTING /tmp/cc2L4m4i.s 			page 9


 265 0426 C5DD58A4 		vaddpd	304(%rsp), %ymm4, %ymm4
 265      24300100 
 265      00
 266 042f C5FD29BC 		vmovapd	%ymm7, 208(%rsp)
 266      24D00000 
 266      00
 267 0438 C4C14559 		vmulpd	%ymm9, %ymm7, %ymm7
 267      F9
 268 043d C5E5589C 		vaddpd	336(%rsp), %ymm3, %ymm3
 268      24500100 
 268      00
 269 0446 C5FD29B4 		vmovapd	%ymm6, 240(%rsp)
 269      24F00000 
 269      00
 270 044f C4C14D59 		vmulpd	%ymm9, %ymm6, %ymm6
 270      F1
 271 0454 C4C17D5C 		vsubpd	%ymm13, %ymm0, %ymm0
 271      C5
 272 0459 C5FD29AC 		vmovapd	%ymm5, 272(%rsp)
 272      24100100 
 272      00
 273 0462 C4C15559 		vmulpd	%ymm9, %ymm5, %ymm5
 273      E9
 274 0467 C5FD29A4 		vmovapd	%ymm4, 304(%rsp)
 274      24300100 
 274      00
 275 0470 C4C15D59 		vmulpd	%ymm9, %ymm4, %ymm4
 275      E1
 276 0475 C5FD299C 		vmovapd	%ymm3, 336(%rsp)
 276      24500100 
 276      00
 277 047e C4C16559 		vmulpd	%ymm9, %ymm3, %ymm3
 277      D9
 278 0483 C5FD2984 		vmovapd	%ymm0, 592(%rsp)
 278      24500200 
 278      00
 279 048c C5FD5884 		vaddpd	368(%rsp), %ymm0, %ymm0
 279      24700100 
 279      00
 280 0495 C53D5884 		vaddpd	624(%rsp), %ymm8, %ymm8
 280      24700200 
 280      00
 281 049e C5C558BC 		vaddpd	656(%rsp), %ymm7, %ymm7
 281      24900200 
 281      00
 282 04a7 C5FD2984 		vmovapd	%ymm0, 368(%rsp)
 282      24700100 
 282      00
 283 04b0 C4C17D59 		vmulpd	%ymm9, %ymm0, %ymm0
 283      C1
 284 04b5 C5CD58B4 		vaddpd	688(%rsp), %ymm6, %ymm6
 284      24B00200 
 284      00
 285 04be C5D558AC 		vaddpd	720(%rsp), %ymm5, %ymm5
 285      24D00200 
 285      00
 286 04c7 C57D2984 		vmovapd	%ymm8, 624(%rsp)
GAS LISTING /tmp/cc2L4m4i.s 			page 10


 286      24700200 
 286      00
 287 04d0 C5FD29BC 		vmovapd	%ymm7, 656(%rsp)
 287      24900200 
 287      00
 288 04d9 C5DD58A4 		vaddpd	752(%rsp), %ymm4, %ymm4
 288      24F00200 
 288      00
 289 04e2 C5E5589C 		vaddpd	784(%rsp), %ymm3, %ymm3
 289      24100300 
 289      00
 290 04eb C5FD29B4 		vmovapd	%ymm6, 688(%rsp)
 290      24B00200 
 290      00
 291 04f4 C5FD29AC 		vmovapd	%ymm5, 720(%rsp)
 291      24D00200 
 291      00
 292 04fd C5FD5884 		vaddpd	816(%rsp), %ymm0, %ymm0
 292      24300300 
 292      00
 293 0506 C5FD29A4 		vmovapd	%ymm4, 752(%rsp)
 293      24F00200 
 293      00
 294 050f C5FD299C 		vmovapd	%ymm3, 784(%rsp)
 294      24100300 
 294      00
 295 0518 C5FD2984 		vmovapd	%ymm0, 816(%rsp)
 295      24300300 
 295      00
 296 0521 7414     		je	.L16
 297 0523 C57D2954 		vmovapd	%ymm10, 112(%rsp)
 297      2470
 298 0529 C57D2894 		vmovapd	144(%rsp), %ymm10
 298      24900000 
 298      00
 299 0532 E929FCFF 		jmp	.L26
 299      FF
 300              	.L16:
 301 0537 B8AD8BDB 		movl	$1759218605, %eax
 301      68
 302 053c 41F7ED   		imull	%r13d
 303 053f 4489E8   		movl	%r13d, %eax
 304 0542 C1F81F   		sarl	$31, %eax
 305 0545 C1FA0B   		sarl	$11, %edx
 306 0548 29C2     		subl	%eax, %edx
 307 054a 4489E8   		movl	%r13d, %eax
 308 054d 69D28813 		imull	$5000, %edx, %edx
 308      0000
 309 0553 29D0     		subl	%edx, %eax
 310 0555 83F801   		cmpl	$1, %eax
 311 0558 0F849200 		je	.L18
 311      0000
 312              	.L24:
 313 055e 4183C51C 		addl	$28, %r13d
 314 0562 4981C4E0 		addq	$224, %r12
 314      000000
 315 0569 4181FDC0 		cmpl	$181440, %r13d
GAS LISTING /tmp/cc2L4m4i.s 			page 11


 315      C40200
 316 0570 0F8500FB 		jne	.L12
 316      FFFF
 317 0576 C5F877   		vzeroupper
 318 0579 E8000000 		call	clock
 318      00
 319 057e BA0C0000 		movl	$12, %edx
 319      00
 320 0583 4889C3   		movq	%rax, %rbx
 321 0586 BE000000 		movl	$.LC9, %esi
 321      00
 322 058b BF000000 		movl	$_ZSt4cout, %edi
 322      00
 323 0590 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 323      00
 324 0595 4889D9   		movq	%rbx, %rcx
 325 0598 482B0C24 		subq	(%rsp), %rcx
 326 059c 48BECFF7 		movabsq	$2361183241434822607, %rsi
 326      53E3A59B 
 326      C420
 327 05a6 BF000000 		movl	$_ZSt4cout, %edi
 327      00
 328 05ab 4889C8   		movq	%rcx, %rax
 329 05ae 48C1F93F 		sarq	$63, %rcx
 330 05b2 48F7EE   		imulq	%rsi
 331 05b5 4889D6   		movq	%rdx, %rsi
 332 05b8 48C1FE07 		sarq	$7, %rsi
 333 05bc 4829CE   		subq	%rcx, %rsi
 334 05bf E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 334      00
 335 05c4 BE000000 		movl	$.LC10, %esi
 335      00
 336 05c9 4889C7   		movq	%rax, %rdi
 337 05cc E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 337      00
 338 05d1 4889C7   		movq	%rax, %rdi
 339 05d4 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 339      00
 340 05d9 488D65D8 		leaq	-40(%rbp), %rsp
 341 05dd 31C0     		xorl	%eax, %eax
 342 05df 5B       		popq	%rbx
 343 05e0 415C     		popq	%r12
 344 05e2 415D     		popq	%r13
 345 05e4 415E     		popq	%r14
 346 05e6 415F     		popq	%r15
 347 05e8 5D       		popq	%rbp
 348              		.cfi_remember_state
 349              		.cfi_def_cfa 7, 8
 350 05e9 C3       		ret
 351 05ea 660F1F44 		.p2align 4,,10
 351      0000
 352              		.p2align 3
 353              	.L18:
 354              		.cfi_restore_state
 355 05f0 4C89FB   		movq	%r15, %rbx
 356 05f3 EB53     		jmp	.L25
 357              	.L30:
GAS LISTING /tmp/cc2L4m4i.s 			page 12


 358 05f5 0FB64243 		movzbl	67(%rdx), %eax
 359              	.L23:
 360 05f9 0FBEF0   		movsbl	%al, %esi
 361 05fc 4C89CF   		movq	%r9, %rdi
 362 05ff C57D294C 		vmovapd	%ymm9, 80(%rsp)
 362      2450
 363 0605 C5FD294C 		vmovapd	%ymm1, 112(%rsp)
 363      2470
 364 060b C5FD2994 		vmovapd	%ymm2, 144(%rsp)
 364      24900000 
 364      00
 365 0614 C5F877   		vzeroupper
 366 0617 4883C320 		addq	$32, %rbx
 367 061b E8000000 		call	_ZNSo3putEc
 367      00
 368 0620 4889C7   		movq	%rax, %rdi
 369 0623 E8000000 		call	_ZNSo5flushEv
 369      00
 370 0628 483B5C24 		cmpq	8(%rsp), %rbx
 370      08
 371 062d C5FD2894 		vmovapd	144(%rsp), %ymm2
 371      24900000 
 371      00
 372 0636 C5FD284C 		vmovapd	112(%rsp), %ymm1
 372      2470
 373 063c C57D284C 		vmovapd	80(%rsp), %ymm9
 373      2450
 374 0642 0F8416FF 		je	.L24
 374      FFFF
 375              	.L25:
 376 0648 C5FB101B 		vmovsd	(%rbx), %xmm3
 377 064c BA040000 		movl	$4, %edx
 377      00
 378 0651 BE000000 		movl	$.LC7, %esi
 378      00
 379 0656 C5FB1083 		vmovsd	224(%rbx), %xmm0
 379      E0000000 
 380 065e BF000000 		movl	$_ZSt4cout, %edi
 380      00
 381 0663 C57D294C 		vmovapd	%ymm9, 16(%rsp)
 381      2410
 382 0669 C5FD294C 		vmovapd	%ymm1, 48(%rsp)
 382      2430
 383 066f C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 383      2450
 384 0675 C5FB115C 		vmovsd	%xmm3, 112(%rsp)
 384      2470
 385 067b C5FB1184 		vmovsd	%xmm0, 144(%rsp)
 385      24900000 
 385      00
 386 0684 C5F877   		vzeroupper
 387 0687 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 387      00
 388 068c C5FB1084 		vmovsd	144(%rsp), %xmm0
 388      24900000 
 388      00
 389 0695 BF000000 		movl	$_ZSt4cout, %edi
GAS LISTING /tmp/cc2L4m4i.s 			page 13


 389      00
 390 069a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 390      00
 391 069f BA030000 		movl	$3, %edx
 391      00
 392 06a4 BE000000 		movl	$.LC8, %esi
 392      00
 393 06a9 4889C7   		movq	%rax, %rdi
 394 06ac 48898424 		movq	%rax, 144(%rsp)
 394      90000000 
 395 06b4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 395      00
 396 06b9 4C8B8C24 		movq	144(%rsp), %r9
 396      90000000 
 397 06c1 C5FB105C 		vmovsd	112(%rsp), %xmm3
 397      2470
 398 06c7 C5F928C3 		vmovapd	%xmm3, %xmm0
 399 06cb 4C89CF   		movq	%r9, %rdi
 400 06ce E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 400      00
 401 06d3 4989C1   		movq	%rax, %r9
 402 06d6 488B00   		movq	(%rax), %rax
 403 06d9 C5FD2854 		vmovapd	80(%rsp), %ymm2
 403      2450
 404 06df C5FD284C 		vmovapd	48(%rsp), %ymm1
 404      2430
 405 06e5 C57D284C 		vmovapd	16(%rsp), %ymm9
 405      2410
 406 06eb 488B40E8 		movq	-24(%rax), %rax
 407 06ef 498B9401 		movq	240(%r9,%rax), %rdx
 407      F0000000 
 408 06f7 4885D2   		testq	%rdx, %rdx
 409 06fa 7466     		je	.L29
 410 06fc 807A3800 		cmpb	$0, 56(%rdx)
 411 0700 0F85EFFE 		jne	.L30
 411      FFFF
 412 0706 4889D7   		movq	%rdx, %rdi
 413 0709 C57D294C 		vmovapd	%ymm9, 16(%rsp)
 413      2410
 414 070f 4C894C24 		movq	%r9, 112(%rsp)
 414      70
 415 0714 C5FD294C 		vmovapd	%ymm1, 48(%rsp)
 415      2430
 416 071a 48899424 		movq	%rdx, 144(%rsp)
 416      90000000 
 417 0722 C5FD2954 		vmovapd	%ymm2, 80(%rsp)
 417      2450
 418 0728 C5F877   		vzeroupper
 419 072b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 419      00
 420 0730 488B9424 		movq	144(%rsp), %rdx
 420      90000000 
 421 0738 BE0A0000 		movl	$10, %esi
 421      00
 422 073d 488B02   		movq	(%rdx), %rax
 423 0740 4889D7   		movq	%rdx, %rdi
 424 0743 FF5030   		call	*48(%rax)
GAS LISTING /tmp/cc2L4m4i.s 			page 14


 425 0746 C57D284C 		vmovapd	16(%rsp), %ymm9
 425      2410
 426 074c 4C8B4C24 		movq	112(%rsp), %r9
 426      70
 427 0751 C5FD284C 		vmovapd	48(%rsp), %ymm1
 427      2430
 428 0757 C5FD2854 		vmovapd	80(%rsp), %ymm2
 428      2450
 429 075d E997FEFF 		jmp	.L23
 429      FF
 430              	.L29:
 431 0762 C5F877   		vzeroupper
 432 0765 E8000000 		call	_ZSt16__throw_bad_castv
 432      00
 433              		.cfi_endproc
 434              	.LFE4383:
 435              		.size	main, .-main
 436 076a 660F1F44 		.p2align 4,,15
 436      0000
 437              		.type	_GLOBAL__sub_I__Z8linspaceddi, @function
 438              	_GLOBAL__sub_I__Z8linspaceddi:
 439              	.LFB4595:
 440              		.cfi_startproc
 441 0770 4883EC08 		subq	$8, %rsp
 442              		.cfi_def_cfa_offset 16
 443 0774 BF000000 		movl	$_ZStL8__ioinit, %edi
 443      00
 444 0779 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 444      00
 445 077e BA000000 		movl	$__dso_handle, %edx
 445      00
 446 0783 BE000000 		movl	$_ZStL8__ioinit, %esi
 446      00
 447 0788 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 447      00
 448 078d 4883C408 		addq	$8, %rsp
 449              		.cfi_def_cfa_offset 8
 450 0791 E9000000 		jmp	__cxa_atexit
 450      00
 451              		.cfi_endproc
 452              	.LFE4595:
 453              		.size	_GLOBAL__sub_I__Z8linspaceddi, .-_GLOBAL__sub_I__Z8linspaceddi
 454              		.section	.init_array,"aw"
 455              		.align 8
 456 0000 00000000 		.quad	_GLOBAL__sub_I__Z8linspaceddi
 456      00000000 
 457              		.local	_ZStL8__ioinit
 458              		.comm	_ZStL8__ioinit,1,1
 459              		.section	.rodata.cst8,"aM",@progbits,8
 460              		.align 8
 461              	.LC0:
 462 0000 00000000 		.long	0
 463 0004 0000F03F 		.long	1072693248
 464              		.section	.rodata.cst32,"aM",@progbits,32
 465              		.align 32
 466              	.LC1:
 467 0000 00000000 		.long	0
GAS LISTING /tmp/cc2L4m4i.s 			page 15


 468 0004 0000E0BF 		.long	-1075838976
 469 0008 00000000 		.long	0
 470 000c 0000E0BF 		.long	-1075838976
 471 0010 00000000 		.long	0
 472 0014 0000E0BF 		.long	-1075838976
 473 0018 00000000 		.long	0
 474 001c 0000E0BF 		.long	-1075838976
 475              		.section	.rodata.cst8
 476              		.align 8
 477              	.LC2:
 478 0008 9A999999 		.long	2576980378
 479 000c 9999B93F 		.long	1069128089
 480              		.section	.rodata.cst32
 481              		.align 32
 482              	.LC3:
 483 0020 00000000 		.long	0
 484 0024 00000040 		.long	1073741824
 485 0028 00000000 		.long	0
 486 002c 00000040 		.long	1073741824
 487 0030 00000000 		.long	0
 488 0034 00000040 		.long	1073741824
 489 0038 00000000 		.long	0
 490 003c 00000040 		.long	1073741824
 491              		.align 32
 492              	.LC4:
 493 0040 7B14AE47 		.long	1202590843
 494 0044 E17A743F 		.long	1064598241
 495 0048 7B14AE47 		.long	1202590843
 496 004c E17A743F 		.long	1064598241
 497 0050 7B14AE47 		.long	1202590843
 498 0054 E17A743F 		.long	1064598241
 499 0058 7B14AE47 		.long	1202590843
 500 005c E17A743F 		.long	1064598241
 501              		.align 32
 502              	.LC5:
 503 0060 7B14AE47 		.long	1202590843
 504 0064 E17A843F 		.long	1065646817
 505 0068 7B14AE47 		.long	1202590843
 506 006c E17A843F 		.long	1065646817
 507 0070 7B14AE47 		.long	1202590843
 508 0074 E17A843F 		.long	1065646817
 509 0078 7B14AE47 		.long	1202590843
 510 007c E17A843F 		.long	1065646817
 511              		.align 32
 512              	.LC6:
 513 0080 4F1BE8B4 		.long	3035110223
 514 0084 814E5B3F 		.long	1062948481
 515 0088 4F1BE8B4 		.long	3035110223
 516 008c 814E5B3F 		.long	1062948481
 517 0090 4F1BE8B4 		.long	3035110223
 518 0094 814E5B3F 		.long	1062948481
 519 0098 4F1BE8B4 		.long	3035110223
 520 009c 814E5B3F 		.long	1062948481
 521              		.hidden	__dso_handle
 522              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 523              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc2L4m4i.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 basic_test_RK4.cpp
     /tmp/cc2L4m4i.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1
     /tmp/cc2L4m4i.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/cc2L4m4i.s:81     .text.startup:0000000000000000 main
     /tmp/cc2L4m4i.s:438    .text.startup:0000000000000770 _GLOBAL__sub_I__Z8linspaceddi
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc2L4m4i.s:461    .rodata.cst8:0000000000000000 .LC0
     /tmp/cc2L4m4i.s:477    .rodata.cst8:0000000000000008 .LC2
     /tmp/cc2L4m4i.s:482    .rodata.cst32:0000000000000020 .LC3
     /tmp/cc2L4m4i.s:492    .rodata.cst32:0000000000000040 .LC4
     /tmp/cc2L4m4i.s:512    .rodata.cst32:0000000000000080 .LC6
     /tmp/cc2L4m4i.s:466    .rodata.cst32:0000000000000000 .LC1
     /tmp/cc2L4m4i.s:502    .rodata.cst32:0000000000000060 .LC5

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
