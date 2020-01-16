GAS LISTING /tmp/cc72IM0J.s 			page 1


   1              		.file	"Duffing_RKCK45.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB5046:
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
  18              	.LFE5046:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.section	.rodata.str1.1,"aMS",@progbits,1
  21              	.LC0:
  22 0000 0900     		.string	"\t"
  23              		.text
  24              		.p2align 4,,15
  25              		.globl	_Z11printVectorPKc5Vec4d
  26              		.type	_Z11printVectorPKc5Vec4d, @function
  27              	_Z11printVectorPKc5Vec4d:
  28              	.LFB4732:
  29              		.cfi_startproc
  30 0000 55       		pushq	%rbp
  31              		.cfi_def_cfa_offset 16
  32              		.cfi_offset 6, -16
  33 0001 4889E5   		movq	%rsp, %rbp
  34              		.cfi_def_cfa_register 6
  35 0004 4154     		pushq	%r12
  36 0006 53       		pushq	%rbx
  37              		.cfi_offset 12, -24
  38              		.cfi_offset 3, -32
  39 0007 4889FB   		movq	%rdi, %rbx
  40 000a 4883E4E0 		andq	$-32, %rsp
  41 000e 4883EC40 		subq	$64, %rsp
  42 0012 4885FF   		testq	%rdi, %rdi
  43 0015 C5FD1144 		vmovupd	%ymm0, 32(%rsp)
  43      2420
  44 001b C5FB104C 		vmovsd	56(%rsp), %xmm1
  44      2438
  45 0021 C5FB1054 		vmovsd	48(%rsp), %xmm2
  45      2430
  46 0027 C5FB105C 		vmovsd	40(%rsp), %xmm3
  46      2428
  47 002d C5FB1064 		vmovsd	32(%rsp), %xmm4
  47      2420
  48 0033 C5FB114C 		vmovsd	%xmm1, 24(%rsp)
  48      2418
  49 0039 C5FB1154 		vmovsd	%xmm2, 16(%rsp)
  49      2410
GAS LISTING /tmp/cc72IM0J.s 			page 2


  50 003f C5FB115C 		vmovsd	%xmm3, 8(%rsp)
  50      2408
  51 0045 C5FB1124 		vmovsd	%xmm4, (%rsp)
  51      24
  52 004a 0F840001 		je	.L11
  52      0000
  53 0050 C5F877   		vzeroupper
  54 0053 E8000000 		call	strlen
  54      00
  55 0058 4889DE   		movq	%rbx, %rsi
  56 005b 4889C2   		movq	%rax, %rdx
  57 005e BF000000 		movl	$_ZSt4cout, %edi
  57      00
  58 0063 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
  58      00
  59              	.L5:
  60 0068 BA010000 		movl	$1, %edx
  60      00
  61 006d BE000000 		movl	$.LC0, %esi
  61      00
  62 0072 BF000000 		movl	$_ZSt4cout, %edi
  62      00
  63 0077 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
  63      00
  64 007c C5FB1004 		vmovsd	(%rsp), %xmm0
  64      24
  65 0081 BF000000 		movl	$_ZSt4cout, %edi
  65      00
  66 0086 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
  66      00
  67 008b BA010000 		movl	$1, %edx
  67      00
  68 0090 BE000000 		movl	$.LC0, %esi
  68      00
  69 0095 4889C7   		movq	%rax, %rdi
  70 0098 4889C3   		movq	%rax, %rbx
  71 009b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
  71      00
  72 00a0 C5FB1044 		vmovsd	8(%rsp), %xmm0
  72      2408
  73 00a6 4889DF   		movq	%rbx, %rdi
  74 00a9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
  74      00
  75 00ae BA010000 		movl	$1, %edx
  75      00
  76 00b3 BE000000 		movl	$.LC0, %esi
  76      00
  77 00b8 4889C7   		movq	%rax, %rdi
  78 00bb 4889C3   		movq	%rax, %rbx
  79 00be E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
  79      00
  80 00c3 C5FB1044 		vmovsd	16(%rsp), %xmm0
  80      2410
  81 00c9 4889DF   		movq	%rbx, %rdi
  82 00cc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
  82      00
  83 00d1 BA010000 		movl	$1, %edx
GAS LISTING /tmp/cc72IM0J.s 			page 3


  83      00
  84 00d6 BE000000 		movl	$.LC0, %esi
  84      00
  85 00db 4889C7   		movq	%rax, %rdi
  86 00de 4889C3   		movq	%rax, %rbx
  87 00e1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
  87      00
  88 00e6 C5FB1044 		vmovsd	24(%rsp), %xmm0
  88      2418
  89 00ec 4889DF   		movq	%rbx, %rdi
  90 00ef E8000000 		call	_ZNSo9_M_insertIdEERSoT_
  90      00
  91 00f4 4989C4   		movq	%rax, %r12
  92 00f7 488B00   		movq	(%rax), %rax
  93 00fa 488B40E8 		movq	-24(%rax), %rax
  94 00fe 498B9C04 		movq	240(%r12,%rax), %rbx
  94      F0000000 
  95 0106 4885DB   		testq	%rbx, %rbx
  96 0109 746A     		je	.L12
  97 010b 807B3800 		cmpb	$0, 56(%rbx)
  98 010f 7427     		je	.L7
  99 0111 0FB64343 		movzbl	67(%rbx), %eax
 100              	.L8:
 101 0115 4C89E7   		movq	%r12, %rdi
 102 0118 0FBEF0   		movsbl	%al, %esi
 103 011b E8000000 		call	_ZNSo3putEc
 103      00
 104 0120 4889C7   		movq	%rax, %rdi
 105 0123 E8000000 		call	_ZNSo5flushEv
 105      00
 106 0128 488D65F0 		leaq	-16(%rbp), %rsp
 107 012c 5B       		popq	%rbx
 108 012d 415C     		popq	%r12
 109 012f 5D       		popq	%rbp
 110              		.cfi_remember_state
 111              		.cfi_def_cfa 7, 8
 112 0130 C3       		ret
 113              		.p2align 4,,10
 114 0131 0F1F8000 		.p2align 3
 114      000000
 115              	.L7:
 116              		.cfi_restore_state
 117 0138 4889DF   		movq	%rbx, %rdi
 118 013b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 118      00
 119 0140 488B03   		movq	(%rbx), %rax
 120 0143 BE0A0000 		movl	$10, %esi
 120      00
 121 0148 4889DF   		movq	%rbx, %rdi
 122 014b FF5030   		call	*48(%rax)
 123 014e EBC5     		jmp	.L8
 124              		.p2align 4,,10
 125              		.p2align 3
 126              	.L11:
 127 0150 488B0500 		movq	_ZSt4cout(%rip), %rax
 127      000000
 128 0157 488B78E8 		movq	-24(%rax), %rdi
GAS LISTING /tmp/cc72IM0J.s 			page 4


 129 015b 4881C700 		addq	$_ZSt4cout, %rdi
 129      000000
 130 0162 8B7720   		movl	32(%rdi), %esi
 131 0165 83CE01   		orl	$1, %esi
 132 0168 C5F877   		vzeroupper
 133 016b E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
 133      00
 134 0170 E9F3FEFF 		jmp	.L5
 134      FF
 135              	.L12:
 136 0175 E8000000 		call	_ZSt16__throw_bad_castv
 136      00
 137              		.cfi_endproc
 138              	.LFE4732:
 139              		.size	_Z11printVectorPKc5Vec4d, .-_Z11printVectorPKc5Vec4d
 140 017a 660F1F44 		.p2align 4,,15
 140      0000
 141              		.globl	_Z8linspaceddi
 142              		.type	_Z8linspaceddi, @function
 143              	_Z8linspaceddi:
 144              	.LFB4734:
 145              		.cfi_startproc
 146 0180 53       		pushq	%rbx
 147              		.cfi_def_cfa_offset 16
 148              		.cfi_offset 3, -16
 149 0181 4863F7   		movslq	%edi, %rsi
 150 0184 89FB     		movl	%edi, %ebx
 151 0186 48C1E603 		salq	$3, %rsi
 152 018a BF400000 		movl	$64, %edi
 152      00
 153 018f 4883EC10 		subq	$16, %rsp
 154              		.cfi_def_cfa_offset 32
 155 0193 C5FB1144 		vmovsd	%xmm0, 8(%rsp)
 155      2408
 156 0199 C5FB110C 		vmovsd	%xmm1, (%rsp)
 156      24
 157 019e E8000000 		call	aligned_alloc
 157      00
 158 01a3 8D53FF   		leal	-1(%rbx), %edx
 159 01a6 C5FB1044 		vmovsd	8(%rsp), %xmm0
 159      2408
 160 01ac C5FB100C 		vmovsd	(%rsp), %xmm1
 160      24
 161 01b1 83FB01   		cmpl	$1, %ebx
 162 01b4 C5EB2AD2 		vcvtsi2sd	%edx, %xmm2, %xmm2
 163 01b8 C5F35CC8 		vsubsd	%xmm0, %xmm1, %xmm1
 164 01bc C5FB1100 		vmovsd	%xmm0, (%rax)
 165 01c0 C5F35ECA 		vdivsd	%xmm2, %xmm1, %xmm1
 166 01c4 7E24     		jle	.L18
 167 01c6 8D4BFE   		leal	-2(%rbx), %ecx
 168 01c9 488D5008 		leaq	8(%rax), %rdx
 169 01cd 488D4CC8 		leaq	16(%rax,%rcx,8), %rcx
 169      10
 170              		.p2align 4,,10
 171 01d2 660F1F44 		.p2align 3
 171      0000
 172              	.L16:
GAS LISTING /tmp/cc72IM0J.s 			page 5


 173 01d8 C5F358C0 		vaddsd	%xmm0, %xmm1, %xmm0
 174 01dc 4883C208 		addq	$8, %rdx
 175 01e0 C5FB1142 		vmovsd	%xmm0, -8(%rdx)
 175      F8
 176 01e5 4839CA   		cmpq	%rcx, %rdx
 177 01e8 75EE     		jne	.L16
 178              	.L18:
 179 01ea 4883C410 		addq	$16, %rsp
 180              		.cfi_def_cfa_offset 16
 181 01ee 5B       		popq	%rbx
 182              		.cfi_def_cfa_offset 8
 183 01ef C3       		ret
 184              		.cfi_endproc
 185              	.LFE4734:
 186              		.size	_Z8linspaceddi, .-_Z8linspaceddi
 187              		.section	.rodata.str1.8,"aMS",@progbits,1
 188              		.align 8
 189              	.LC93:
 190 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
 190      2D2D2D2D 
 190      2D2D2D2D 
 190      2D2D2D2D 
 190      2D2D2D2D 
 191              		.section	.rodata.str1.1
 192              	.LC94:
 193 0002 09207020 		.string	"\t p = "
 193      3D2000
 194              	.LC95:
 195 0009 0A00     		.string	"\n"
 196              	.LC96:
 197 000b 785B305D 		.string	"x[0]="
 197      3D00
 198              	.LC97:
 199 0011 785B335D 		.string	"x[3]="
 199      3D00
 200              	.LC101:
 201 0017 456C7465 		.string	"Eltelt ido: "
 201      6C742069 
 201      646F3A20 
 201      00
 202              	.LC102:
 203 0024 206D7300 		.string	" ms"
 204              		.section	.text.startup,"ax",@progbits
 205              		.p2align 4,,15
 206              		.globl	main
 207              		.type	main, @function
 208              	main:
 209              	.LFB4733:
 210              		.cfi_startproc
 211 0000 55       		pushq	%rbp
 212              		.cfi_def_cfa_offset 16
 213              		.cfi_offset 6, -16
 214 0001 BFA00500 		movl	$1440, %edi
 214      00
 215 0006 4889E5   		movq	%rsp, %rbp
 216              		.cfi_def_cfa_register 6
 217 0009 4157     		pushq	%r15
GAS LISTING /tmp/cc72IM0J.s 			page 6


 218 000b 4156     		pushq	%r14
 219 000d 4155     		pushq	%r13
 220 000f 4154     		pushq	%r12
 221              		.cfi_offset 15, -24
 222              		.cfi_offset 14, -32
 223              		.cfi_offset 13, -40
 224              		.cfi_offset 12, -48
 225 0011 4531E4   		xorl	%r12d, %r12d
 226 0014 53       		pushq	%rbx
 227 0015 4883E4E0 		andq	$-32, %rsp
 228 0019 4881EC40 		subq	$832, %rsp
 228      030000
 229              		.cfi_offset 3, -56
 230 0020 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 230      00000000 
 231 0028 C5FB1005 		vmovsd	.LC2(%rip), %xmm0
 231      00000000 
 232 0030 E8000000 		call	_Z8linspaceddi
 232      00
 233 0035 4989C5   		movq	%rax, %r13
 234 0038 E8000000 		call	clock
 234      00
 235 003d C5F8280D 		vmovaps	.LC71(%rip), %xmm1
 235      00000000 
 236 0045 4889C3   		movq	%rax, %rbx
 237 0048 C5F828C1 		vmovaps	%xmm1, %xmm0
 238 004c C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm3
 238      D901
 239 0052 C5FC291C 		vmovaps	%ymm3, (%rsp)
 239      24
 240 0057 C5E5571D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 240      00000000 
 241 005f C5FD295C 		vmovapd	%ymm3, 32(%rsp)
 241      2420
 242              		.p2align 4,,10
 243 0065 0F1F00   		.p2align 3
 244              	.L21:
 245 0068 C5FD281D 		vmovapd	.LC98(%rip), %ymm3
 245      00000000 
 246 0070 31D2     		xorl	%edx, %edx
 247 0072 C4C17D28 		vmovapd	0(%r13), %ymm0
 247      4500
 248 0078 C5FD299C 		vmovapd	%ymm3, 768(%rsp)
 248      24000300 
 248      00
 249 0081 C5FD281D 		vmovapd	.LC99(%rip), %ymm3
 249      00000000 
 250 0089 C5FD2984 		vmovapd	%ymm0, 800(%rsp)
 250      24200300 
 250      00
 251 0092 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 252 0096 C5FD299C 		vmovapd	%ymm3, 672(%rsp)
 252      24A00200 
 252      00
 253 009f C5FD281D 		vmovapd	.LC100(%rip), %ymm3
 253      00000000 
 254 00a7 C5FD2984 		vmovapd	%ymm0, 736(%rsp)
GAS LISTING /tmp/cc72IM0J.s 			page 7


 254      24E00200 
 254      00
 255 00b0 C5FD299C 		vmovapd	%ymm3, 704(%rsp)
 255      24C00200 
 255      00
 256 00b9 C5FD281C 		vmovapd	(%rsp), %ymm3
 256      24
 257 00be C5FD295C 		vmovapd	%ymm3, 64(%rsp)
 257      2440
 258              	.L22:
 259 00c4 48C1E205 		salq	$5, %rdx
 260 00c8 C5FD283D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 260      00000000 
 261 00d0 488D4A20 		leaq	32(%rdx), %rcx
 262 00d4 C4410157 		vxorpd	%xmm15, %xmm15, %xmm15
 262      FF
 263 00d9 488DBC0C 		leaq	672(%rsp,%rcx), %rdi
 263      A0020000 
 264 00e1 C5FD2807 		vmovapd	(%rdi), %ymm0
 265 00e5 C5FD2984 		vmovapd	%ymm0, 416(%rsp,%rdx)
 265      14A00100 
 265      00
 266 00ee C5C55494 		vandpd	736(%rsp), %ymm7, %ymm2
 266      24E00200 
 266      00
 267 00f7 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 267      00000000 
 268 00ff C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 268      C008
 269 0105 C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 269      C808
 270 010b C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 270      24C00000 
 270      00
 271 0114 C5FB108C 		vmovsd	192(%rsp), %xmm1
 271      24C00000 
 271      00
 272 011d C5FB109C 		vmovsd	200(%rsp), %xmm3
 272      24C80000 
 272      00
 273 0126 C4E1FB2C 		vcvttsd2siq	%xmm1, %rax
 273      C1
 274 012b C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 274      00000000 
 275 0133 C5FB10B4 		vmovsd	216(%rsp), %xmm6
 275      24D80000 
 275      00
 276 013c 48898424 		movq	%rax, 160(%rsp)
 276      A0000000 
 277 0144 C4E1FB2C 		vcvttsd2siq	%xmm3, %rax
 277      C3
 278 0149 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
 278      00000000 
 279 0151 C5FA7EAC 		vmovq	160(%rsp), %xmm5
 279      24A00000 
 279      00
 280 015a C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
GAS LISTING /tmp/cc72IM0J.s 			page 8


 280      00000000 
 281 0162 C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 282 0166 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm4
 282      E001
 283 016c C5FB10AC 		vmovsd	208(%rsp), %xmm5
 283      24D00000 
 283      00
 284 0175 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 285 0179 C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 285      C5
 286 017e C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 287 0182 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 288 0186 48898424 		movq	%rax, 160(%rsp)
 288      A0000000 
 289 018e C4E1FB2C 		vcvttsd2siq	%xmm6, %rax
 289      C6
 290 0193 C5FA7EBC 		vmovq	160(%rsp), %xmm7
 290      24A00000 
 290      00
 291 019c C57D5905 		vmulpd	.LC9(%rip), %ymm0, %ymm8
 291      00000000 
 292 01a4 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 293 01a8 C57D590D 		vmulpd	.LC7(%rip), %ymm0, %ymm9
 293      00000000 
 294 01b0 C53D5805 		vaddpd	.LC10(%rip), %ymm8, %ymm8
 294      00000000 
 295 01b8 C4E3C122 		vpinsrq	$1, %rax, %xmm7, %xmm5
 295      E801
 296 01be C5FD593D 		vmulpd	.LC11(%rip), %ymm0, %ymm7
 296      00000000 
 297 01c6 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 298 01ca C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 298      00000000 
 299 01d2 C5C5583D 		vaddpd	.LC12(%rip), %ymm7, %ymm7
 299      00000000 
 300 01da C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
 301 01de C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 301      C1
 302 01e3 C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 303 01e7 C57D590D 		vmulpd	.LC15(%rip), %ymm0, %ymm9
 303      00000000 
 304 01ef C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 304      F8
 305 01f4 C57D5905 		vmulpd	.LC13(%rip), %ymm0, %ymm8
 305      00000000 
 306 01fc C535580D 		vaddpd	.LC16(%rip), %ymm9, %ymm9
 306      00000000 
 307 0204 C53D5805 		vaddpd	.LC14(%rip), %ymm8, %ymm8
 307      00000000 
 308 020c C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 309 0210 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 309      F0
 310 0215 C57D5905 		vmulpd	.LC17(%rip), %ymm0, %ymm8
 310      00000000 
 311 021d C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 311      00000000 
 312 0225 C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
GAS LISTING /tmp/cc72IM0J.s 			page 9


 313 0229 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 314 022d C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
 315 0231 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 315      00000000 
 316 0239 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 317 023d C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 318 0241 C5D9DB35 		vpand	.LC21(%rip), %xmm4, %xmm6
 318      00000000 
 319 0249 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 319      D001
 320 024f C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 321 0253 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 321      00000000 
 322 025b C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 323 025f C4C13973 		vpsllq	$1, %xmm8, %xmm8
 323      F001
 324 0265 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 325 0269 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 325      00000000 
 326 0271 C4E24929 		vpcmpeqq	%xmm7, %xmm6, %xmm6
 326      F7
 327 0276 C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 328 027a C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 328      00000000 
 329 0282 C5C9EF35 		vpxor	.LC103(%rip), %xmm6, %xmm6
 329      00000000 
 330 028a C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 330      05000000 
 330      00
 331 0293 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 331      00000000 
 332 029b C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 332      C7
 333 02a0 C4E25937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm7
 333      3D000000 
 333      00
 334 02a9 C5D9D425 		vpaddq	.LC21(%rip), %xmm4, %xmm4
 334      00000000 
 335 02b1 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 335      00000000 
 336 02b9 C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 336      F001
 337 02bf C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 337      05000000 
 337      00
 338 02c8 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 338      F801
 339 02ce C5F928C2 		vmovapd	%xmm2, %xmm0
 340 02d2 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 340      01
 341 02d7 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 341      00000000 
 342 02df C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 342      05000000 
 342      00
 343 02e8 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 343      00000000 
GAS LISTING /tmp/cc72IM0J.s 			page 10


 344 02f0 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 344      C001
 345 02f6 C5C554D0 		vandpd	%ymm0, %ymm7, %ymm2
 346 02fa C5D1D405 		vpaddq	.LC21(%rip), %xmm5, %xmm0
 346      00000000 
 347 0302 C5D9DB2D 		vpand	.LC24(%rip), %xmm4, %xmm5
 347      00000000 
 348 030a C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 348      00000000 
 349 0312 C4C3654B 		vblendvpd	%ymm2, %ymm15, %ymm3, %ymm3
 349      DF20
 350 0318 C4E3754B 		vblendvpd	%ymm2, .LC20(%rip), %ymm1, %ymm1
 350      0D000000 
 350      0020
 351 0322 C5D173F5 		vpsllq	$62, %xmm5, %xmm5
 351      3E
 352 0327 C4E3754B 		vblendvpd	%ymm6, %ymm3, %ymm1, %ymm2
 352      D360
 353 032d C5FD288C 		vmovapd	800(%rsp), %ymm1
 353      24200300 
 353      00
 354 0336 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 354      3E
 355 033b C4E35518 		vinsertf128	$0x1, %xmm0, %ymm5, %ymm5
 355      E801
 356 0341 C5FD2884 		vmovapd	672(%rsp,%rdx), %ymm0
 356      14A00200 
 356      00
 357 034a C5F5590F 		vmulpd	(%rdi), %ymm1, %ymm1
 358 034e C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 359 0352 C5ED57D5 		vxorpd	%ymm5, %ymm2, %ymm2
 360 0356 C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 360      00000000 
 361 035e C5D55CDB 		vsubpd	%ymm3, %ymm5, %ymm3
 362 0362 C5ED5915 		vmulpd	.LC25(%rip), %ymm2, %ymm2
 362      00000000 
 363 036a C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 364 036e C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 365 0372 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 366 0376 C5FD2984 		vmovapd	%ymm0, 448(%rsp,%rdx)
 366      14C00100 
 366      00
 367 037f C5FD281D 		vmovapd	.LC26(%rip), %ymm3
 367      00000000 
 368 0387 C5E559A4 		vmulpd	416(%rsp), %ymm3, %ymm4
 368      24A00100 
 368      00
 369 0390 C56559B4 		vmulpd	448(%rsp), %ymm3, %ymm14
 369      24C00100 
 369      00
 370 0399 C5FD289C 		vmovapd	736(%rsp), %ymm3
 370      24E00200 
 370      00
 371 03a2 C5E55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 371      00000000 
 372 03aa C5DD59A4 		vmulpd	768(%rsp), %ymm4, %ymm4
 372      24000300 
GAS LISTING /tmp/cc72IM0J.s 			page 11


 372      00
 373 03b3 C50D59B4 		vmulpd	768(%rsp), %ymm14, %ymm14
 373      24000300 
 373      00
 374 03bc C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 374      00000000 
 375 03c4 C5DD58A4 		vaddpd	672(%rsp), %ymm4, %ymm4
 375      24A00200 
 375      00
 376 03cd C50D58B4 		vaddpd	704(%rsp), %ymm14, %ymm14
 376      24C00200 
 376      00
 377 03d6 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 377      C008
 378 03dc C4E37D09 		vroundpd	$8, %ymm0, %ymm5
 378      E808
 379 03e2 C5FD11AC 		vmovupd	%ymm5, 192(%rsp)
 379      24C00000 
 379      00
 380 03eb C57D28E5 		vmovapd	%ymm5, %ymm12
 381 03ef C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 381      00000000 
 382 03f7 C5FB10BC 		vmovsd	192(%rsp), %xmm7
 382      24C00000 
 382      00
 383 0400 C57B1084 		vmovsd	200(%rsp), %xmm8
 383      24C80000 
 383      00
 384 0409 C4E1FB2C 		vcvttsd2siq	%xmm7, %rax
 384      C7
 385 040e C57B1094 		vmovsd	208(%rsp), %xmm10
 385      24D00000 
 385      00
 386 0417 C57B109C 		vmovsd	216(%rsp), %xmm11
 386      24D80000 
 386      00
 387 0420 48898424 		movq	%rax, 160(%rsp)
 387      A0000000 
 388 0428 C4C1FB2C 		vcvttsd2siq	%xmm8, %rax
 388      C0
 389 042d C5FA7EAC 		vmovq	160(%rsp), %xmm5
 389      24A00000 
 389      00
 390 0436 C463D122 		vpinsrq	$1, %rax, %xmm5, %xmm9
 390      C801
 391 043c C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 391      C2
 392 0441 48898424 		movq	%rax, 160(%rsp)
 392      A0000000 
 393 0449 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 393      C3
 394 044e C5FA7E9C 		vmovq	160(%rsp), %xmm3
 394      24A00000 
 394      00
 395 0457 C463E122 		vpinsrq	$1, %rax, %xmm3, %xmm10
 395      D001
 396 045d C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
GAS LISTING /tmp/cc72IM0J.s 			page 12


 396      00000000 
 397 0465 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 397      00000000 
 398 046d C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 399 0471 C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 400 0475 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 401 0479 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 402 047d C5FD592D 		vmulpd	.LC9(%rip), %ymm0, %ymm5
 402      00000000 
 403 0485 C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 404 0489 C57D5905 		vmulpd	.LC7(%rip), %ymm0, %ymm8
 404      00000000 
 405 0491 C5FD5935 		vmulpd	.LC11(%rip), %ymm0, %ymm6
 405      00000000 
 406 0499 C5D5582D 		vaddpd	.LC10(%rip), %ymm5, %ymm5
 406      00000000 
 407 04a1 C5F559F9 		vmulpd	%ymm1, %ymm1, %ymm7
 408 04a5 C53D5805 		vaddpd	.LC8(%rip), %ymm8, %ymm8
 408      00000000 
 409 04ad C5CD5835 		vaddpd	.LC12(%rip), %ymm6, %ymm6
 409      00000000 
 410 04b5 C5D559EF 		vmulpd	%ymm7, %ymm5, %ymm5
 411 04b9 C4C15558 		vaddpd	%ymm8, %ymm5, %ymm5
 411      E8
 412 04be C5CD59F1 		vmulpd	%ymm1, %ymm6, %ymm6
 413 04c2 C57D5905 		vmulpd	.LC15(%rip), %ymm0, %ymm8
 413      00000000 
 414 04ca C5CD58F5 		vaddpd	%ymm5, %ymm6, %ymm6
 415 04ce C5FD592D 		vmulpd	.LC13(%rip), %ymm0, %ymm5
 415      00000000 
 416 04d6 C53D5805 		vaddpd	.LC16(%rip), %ymm8, %ymm8
 416      00000000 
 417 04de C5D5582D 		vaddpd	.LC14(%rip), %ymm5, %ymm5
 417      00000000 
 418 04e6 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 419 04ea C5C558ED 		vaddpd	%ymm5, %ymm7, %ymm5
 420 04ee C5FD593D 		vmulpd	.LC17(%rip), %ymm0, %ymm7
 420      00000000 
 421 04f6 C5C5583D 		vaddpd	.LC18(%rip), %ymm7, %ymm7
 421      00000000 
 422 04fe C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
 423 0502 C5C558FD 		vaddpd	%ymm5, %ymm7, %ymm7
 424 0506 C5E559E8 		vmulpd	%ymm0, %ymm3, %ymm5
 425 050a C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 425      00000000 
 426 0512 C5D559F6 		vmulpd	%ymm6, %ymm5, %ymm6
 427 0516 C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 427      00000000 
 428 051e C5D55CC0 		vsubpd	%ymm0, %ymm5, %ymm0
 429 0522 C5F559EF 		vmulpd	%ymm7, %ymm1, %ymm5
 430 0526 C5CD58F3 		vaddpd	%ymm3, %ymm6, %ymm6
 431 052a C5A9DB0D 		vpand	.LC21(%rip), %xmm10, %xmm1
 431      00000000 
 432 0532 C5B1DB1D 		vpand	.LC21(%rip), %xmm9, %xmm3
 432      00000000 
 433 053a C5D558E8 		vaddpd	%ymm0, %ymm5, %ymm5
 434 053e C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
GAS LISTING /tmp/cc72IM0J.s 			page 13


 435 0542 C4E23137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm0
 435      05000000 
 435      00
 436 054b C531D40D 		vpaddq	.LC21(%rip), %xmm9, %xmm9
 436      00000000 
 437 0553 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 437      CF
 438 0558 C4E26129 		vpcmpeqq	%xmm7, %xmm3, %xmm3
 438      DF
 439 055d C5F928FA 		vmovapd	%xmm2, %xmm7
 440 0561 C5F1EF0D 		vpxor	.LC103(%rip), %xmm1, %xmm1
 440      00000000 
 441 0569 C5C173F7 		vpsllq	$1, %xmm7, %xmm7
 441      01
 442 056e C5E1EF1D 		vpxor	.LC103(%rip), %xmm3, %xmm3
 442      00000000 
 443 0576 C5C1DB3D 		vpand	.LC23(%rip), %xmm7, %xmm7
 443      00000000 
 444 057e C4E36518 		vinsertf128	$0x1, %xmm1, %ymm3, %ymm3
 444      D901
 445 0584 C4E22937 		vpcmpgtq	.LC22(%rip), %xmm10, %xmm1
 445      0D000000 
 445      00
 446 058d C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 446      C101
 447 0593 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 447      3D000000 
 447      00
 448 059c C4E37D19 		vextractf128	$0x1, %ymm2, %xmm1
 448      D101
 449 05a2 C5C1EF3D 		vpxor	.LC103(%rip), %xmm7, %xmm7
 449      00000000 
 450 05aa C5F173F1 		vpsllq	$1, %xmm1, %xmm1
 450      01
 451 05af C5F1DB0D 		vpand	.LC23(%rip), %xmm1, %xmm1
 451      00000000 
 452 05b7 C4E27129 		vpcmpeqq	.LC23(%rip), %xmm1, %xmm1
 452      0D000000 
 452      00
 453 05c0 C5F1EF0D 		vpxor	.LC103(%rip), %xmm1, %xmm1
 453      00000000 
 454 05c8 C4E34518 		vinsertf128	$0x1, %xmm1, %ymm7, %ymm7
 454      F901
 455 05ce C5FD54C7 		vandpd	%ymm7, %ymm0, %ymm0
 456 05d2 C4434D4B 		vblendvpd	%ymm0, %ymm15, %ymm6, %ymm8
 456      C700
 457 05d8 C4E3554B 		vblendvpd	%ymm0, .LC20(%rip), %ymm5, %ymm1
 457      0D000000 
 457      0000
 458 05e2 C4C3754B 		vblendvpd	%ymm3, %ymm8, %ymm1, %ymm0
 458      C030
 459 05e8 C55D59C4 		vmulpd	%ymm4, %ymm4, %ymm8
 460 05ec C5A9D40D 		vpaddq	.LC21(%rip), %xmm10, %xmm1
 460      00000000 
 461 05f4 C5FD281D 		vmovapd	.LC20(%rip), %ymm3
 461      00000000 
 462 05fc C531DB15 		vpand	.LC24(%rip), %xmm9, %xmm10
GAS LISTING /tmp/cc72IM0J.s 			page 14


 462      00000000 
 463 0604 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 463      00000000 
 464 060c C441655C 		vsubpd	%ymm8, %ymm3, %ymm8
 464      C0
 465 0611 C4C12973 		vpsllq	$62, %xmm10, %xmm10
 465      F23E
 466 0617 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 466      3E
 467 061c C4632D18 		vinsertf128	$0x1, %xmm1, %ymm10, %ymm10
 467      D101
 468 0622 C58D598C 		vmulpd	800(%rsp), %ymm14, %ymm1
 468      24200300 
 468      00
 469 062b C4C17D57 		vxorpd	%ymm10, %ymm0, %ymm0
 469      C2
 470 0630 C4415D59 		vmulpd	%ymm8, %ymm4, %ymm8
 470      C0
 471 0635 C5FD2825 		vmovapd	.LC28(%rip), %ymm4
 471      00000000 
 472 063d C5FD5905 		vmulpd	.LC25(%rip), %ymm0, %ymm0
 472      00000000 
 473 0645 C5DD5994 		vmulpd	448(%rsp), %ymm4, %ymm2
 473      24C00100 
 473      00
 474 064e C53D5CC1 		vsubpd	%ymm1, %ymm8, %ymm8
 475 0652 C5DD599C 		vmulpd	416(%rsp), %ymm4, %ymm3
 475      24A00100 
 475      00
 476 065b C53D58C0 		vaddpd	%ymm0, %ymm8, %ymm8
 477 065f C58D5905 		vmulpd	.LC27(%rip), %ymm14, %ymm0
 477      00000000 
 478 0667 C5BD590D 		vmulpd	.LC27(%rip), %ymm8, %ymm1
 478      00000000 
 479 066f C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 480 0673 C5FD2884 		vmovapd	768(%rsp), %ymm0
 480      24000300 
 480      00
 481 067c C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 482 0680 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 483 0684 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 484 0688 C5E5589C 		vaddpd	672(%rsp), %ymm3, %ymm3
 484      24A00200 
 484      00
 485 0691 C5F5588C 		vaddpd	704(%rsp), %ymm1, %ymm1
 485      24C00200 
 485      00
 486 069a C5FD298C 		vmovapd	%ymm1, 480(%rsp)
 486      24E00100 
 486      00
 487 06a3 C57B10AC 		vmovsd	192(%rsp), %xmm13
 487      24C00000 
 487      00
 488 06ac C5FB1094 		vmovsd	200(%rsp), %xmm2
 488      24C80000 
 488      00
 489 06b5 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
GAS LISTING /tmp/cc72IM0J.s 			page 15


 489      C5
 490 06ba C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 490      ED
 491 06bf C57B108C 		vmovsd	208(%rsp), %xmm9
 491      24D00000 
 491      00
 492 06c8 C57B1094 		vmovsd	216(%rsp), %xmm10
 492      24D80000 
 492      00
 493 06d1 48898424 		movq	%rax, 160(%rsp)
 493      A0000000 
 494 06d9 C4E1FB2C 		vcvttsd2siq	%xmm2, %rax
 494      C2
 495 06de C5FA7EA4 		vmovq	160(%rsp), %xmm4
 495      24A00000 
 495      00
 496 06e7 C4E3D922 		vpinsrq	$1, %rax, %xmm4, %xmm4
 496      E001
 497 06ed C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 497      C1
 498 06f2 48898424 		movq	%rax, 160(%rsp)
 498      A0000000 
 499 06fa C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 499      C2
 500 06ff C5FA7E94 		vmovq	160(%rsp), %xmm2
 500      24A00000 
 500      00
 501 0708 C463E922 		vpinsrq	$1, %rax, %xmm2, %xmm9
 501      C801
 502 070e C5D9DB15 		vpand	.LC21(%rip), %xmm4, %xmm2
 502      00000000 
 503 0716 C531DB15 		vpand	.LC21(%rip), %xmm9, %xmm10
 503      00000000 
 504 071e C4623137 		vpcmpgtq	.LC22(%rip), %xmm9, %xmm11
 504      1D000000 
 504      00
 505 0727 C531D40D 		vpaddq	.LC21(%rip), %xmm9, %xmm9
 505      00000000 
 506 072f C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 506      00000000 
 507 0737 C4C26929 		vpcmpeqq	%xmm13, %xmm2, %xmm2
 507      D5
 508 073c C4422929 		vpcmpeqq	%xmm13, %xmm10, %xmm10
 508      D5
 509 0741 C5E9EF15 		vpxor	.LC103(%rip), %xmm2, %xmm2
 509      00000000 
 510 0749 C57D282D 		vmovapd	.LC20(%rip), %ymm13
 510      00000000 
 511 0751 C529EF15 		vpxor	.LC103(%rip), %xmm10, %xmm10
 511      00000000 
 512 0759 C4C13173 		vpsllq	$62, %xmm9, %xmm9
 512      F13E
 513 075f C4C36D18 		vinsertf128	$0x1, %xmm10, %ymm2, %ymm2
 513      D201
 514 0765 C4625937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm10
 514      15000000 
 514      00
GAS LISTING /tmp/cc72IM0J.s 			page 16


 515 076e C5D9D425 		vpaddq	.LC21(%rip), %xmm4, %xmm4
 515      00000000 
 516 0776 C5D9DB25 		vpand	.LC24(%rip), %xmm4, %xmm4
 516      00000000 
 517 077e C4432D18 		vinsertf128	$0x1, %xmm11, %ymm10, %ymm10
 517      D301
 518 0784 C52D54D7 		vandpd	%ymm7, %ymm10, %ymm10
 519 0788 C5D973F4 		vpsllq	$62, %xmm4, %xmm4
 519      3E
 520 078d C4435D18 		vinsertf128	$0x1, %xmm9, %ymm4, %ymm9
 520      C901
 521 0793 C5F559A4 		vmulpd	800(%rsp), %ymm1, %ymm4
 521      24200300 
 521      00
 522 079c C4434D4B 		vblendvpd	%ymm10, %ymm15, %ymm6, %ymm11
 522      DFA0
 523 07a2 C463554B 		vblendvpd	%ymm10, .LC20(%rip), %ymm5, %ymm10
 523      15000000 
 523      00A0
 524 07ac C4432D4B 		vblendvpd	%ymm2, %ymm11, %ymm10, %ymm11
 524      DB20
 525 07b2 C5E559D3 		vmulpd	%ymm3, %ymm3, %ymm2
 526 07b6 C4412557 		vxorpd	%ymm9, %ymm11, %ymm10
 526      D1
 527 07bb C57D281D 		vmovapd	.LC25(%rip), %ymm11
 527      00000000 
 528 07c3 C525598C 		vmulpd	416(%rsp), %ymm11, %ymm9
 528      24A00100 
 528      00
 529 07cc C5955CD2 		vsubpd	%ymm2, %ymm13, %ymm2
 530 07d0 C52D5915 		vmulpd	.LC25(%rip), %ymm10, %ymm10
 530      00000000 
 531 07d8 C5E559D2 		vmulpd	%ymm2, %ymm3, %ymm2
 532 07dc C5F5591D 		vmulpd	.LC29(%rip), %ymm1, %ymm3
 532      00000000 
 533 07e4 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 534 07e8 C58D5925 		vmulpd	.LC30(%rip), %ymm14, %ymm4
 534      00000000 
 535 07f0 C4C16D58 		vaddpd	%ymm10, %ymm2, %ymm2
 535      D2
 536 07f5 C5255994 		vmulpd	448(%rsp), %ymm11, %ymm10
 536      24C00100 
 536      00
 537 07fe C53558CC 		vaddpd	%ymm4, %ymm9, %ymm9
 538 0802 C5ED5925 		vmulpd	.LC29(%rip), %ymm2, %ymm4
 538      00000000 
 539 080a C5FD2994 		vmovapd	%ymm2, 512(%rsp)
 539      24000200 
 539      00
 540 0813 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 540      24A00000 
 540      00
 541 081c C57D29E2 		vmovapd	%ymm12, %ymm2
 542 0820 C53558CB 		vaddpd	%ymm3, %ymm9, %ymm9
 543 0824 C5BD591D 		vmulpd	.LC30(%rip), %ymm8, %ymm3
 543      00000000 
 544 082c C4417D59 		vmulpd	%ymm9, %ymm0, %ymm9
GAS LISTING /tmp/cc72IM0J.s 			page 17


 544      C9
 545 0831 C5AD58DB 		vaddpd	%ymm3, %ymm10, %ymm3
 546 0835 C535588C 		vaddpd	672(%rsp), %ymm9, %ymm9
 546      24A00200 
 546      00
 547 083e C5E558DC 		vaddpd	%ymm4, %ymm3, %ymm3
 548 0842 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 549 0846 C5E5589C 		vaddpd	704(%rsp), %ymm3, %ymm3
 549      24C00200 
 549      00
 550 084f C5FD299C 		vmovapd	%ymm3, 544(%rsp)
 550      24200200 
 550      00
 551 0858 C57B109C 		vmovsd	192(%rsp), %xmm11
 551      24C00000 
 551      00
 552 0861 C57B10A4 		vmovsd	200(%rsp), %xmm12
 552      24C80000 
 552      00
 553 086a C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 553      C3
 554 086f C5FB10A4 		vmovsd	208(%rsp), %xmm4
 554      24D00000 
 554      00
 555 0878 C57B1094 		vmovsd	216(%rsp), %xmm10
 555      24D80000 
 555      00
 556 0881 48898424 		movq	%rax, 144(%rsp)
 556      90000000 
 557 0889 C4C1FB2C 		vcvttsd2siq	%xmm12, %rax
 557      C4
 558 088e C57A7E9C 		vmovq	144(%rsp), %xmm11
 558      24900000 
 558      00
 559 0897 C463A122 		vpinsrq	$1, %rax, %xmm11, %xmm13
 559      E801
 560 089d C4E1FB2C 		vcvttsd2siq	%xmm4, %rax
 560      C4
 561 08a2 C591DB25 		vpand	.LC21(%rip), %xmm13, %xmm4
 561      00000000 
 562 08aa 48898424 		movq	%rax, 144(%rsp)
 562      90000000 
 563 08b2 C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 563      C2
 564 08b7 C57A7E9C 		vmovq	144(%rsp), %xmm11
 564      24900000 
 564      00
 565 08c0 C463A122 		vpinsrq	$1, %rax, %xmm11, %xmm12
 565      E001
 566 08c6 C44121EF 		vpxor	%xmm11, %xmm11, %xmm11
 566      DB
 567 08cb C519DB15 		vpand	.LC21(%rip), %xmm12, %xmm10
 567      00000000 
 568 08d3 C4C25929 		vpcmpeqq	%xmm11, %xmm4, %xmm4
 568      E3
 569 08d8 C5D9EF25 		vpxor	.LC103(%rip), %xmm4, %xmm4
 569      00000000 
GAS LISTING /tmp/cc72IM0J.s 			page 18


 570 08e0 C4422929 		vpcmpeqq	%xmm11, %xmm10, %xmm10
 570      D3
 571 08e5 C4621937 		vpcmpgtq	.LC22(%rip), %xmm12, %xmm11
 571      1D000000 
 571      00
 572 08ee C519D425 		vpaddq	.LC21(%rip), %xmm12, %xmm12
 572      00000000 
 573 08f6 C519DB25 		vpand	.LC24(%rip), %xmm12, %xmm12
 573      00000000 
 574 08fe C529EF15 		vpxor	.LC103(%rip), %xmm10, %xmm10
 574      00000000 
 575 0906 C4C11973 		vpsllq	$62, %xmm12, %xmm12
 575      F43E
 576 090c C4C35D18 		vinsertf128	$0x1, %xmm10, %ymm4, %ymm4
 576      E201
 577 0912 C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm10
 577      15000000 
 577      00
 578 091b C511D42D 		vpaddq	.LC21(%rip), %xmm13, %xmm13
 578      00000000 
 579 0923 C511DB2D 		vpand	.LC24(%rip), %xmm13, %xmm13
 579      00000000 
 580 092b C4432D18 		vinsertf128	$0x1, %xmm11, %ymm10, %ymm10
 580      D301
 581 0931 C52D54D7 		vandpd	%ymm7, %ymm10, %ymm10
 582 0935 C4C11173 		vpsllq	$62, %xmm13, %xmm13
 582      F53E
 583 093b C4431518 		vinsertf128	$0x1, %xmm12, %ymm13, %ymm12
 583      E401
 584 0941 C57D282D 		vmovapd	.LC20(%rip), %ymm13
 584      00000000 
 585 0949 C4434D4B 		vblendvpd	%ymm10, %ymm15, %ymm6, %ymm11
 585      DFA0
 586 094f C463554B 		vblendvpd	%ymm10, .LC20(%rip), %ymm5, %ymm10
 586      15000000 
 586      00A0
 587 0959 C4432D4B 		vblendvpd	%ymm4, %ymm11, %ymm10, %ymm11
 587      DB40
 588 095f C4C13559 		vmulpd	%ymm9, %ymm9, %ymm4
 588      E1
 589 0964 C4412557 		vxorpd	%ymm12, %ymm11, %ymm10
 589      D4
 590 0969 C565599C 		vmulpd	800(%rsp), %ymm3, %ymm11
 590      24200300 
 590      00
 591 0972 C5955CE4 		vsubpd	%ymm4, %ymm13, %ymm4
 592 0976 C57D282D 		vmovapd	.LC34(%rip), %ymm13
 592      00000000 
 593 097e C52D5915 		vmulpd	.LC25(%rip), %ymm10, %ymm10
 593      00000000 
 594 0986 C51559A4 		vmulpd	416(%rsp), %ymm13, %ymm12
 594      24A00100 
 594      00
 595 098f C5B559E4 		vmulpd	%ymm4, %ymm9, %ymm4
 596 0993 C565590D 		vmulpd	.LC31(%rip), %ymm3, %ymm9
 596      00000000 
 597 099b C51559AC 		vmulpd	448(%rsp), %ymm13, %ymm13
GAS LISTING /tmp/cc72IM0J.s 			page 19


 597      24C00100 
 597      00
 598 09a4 C4C15D5C 		vsubpd	%ymm11, %ymm4, %ymm4
 598      E3
 599 09a9 C50D591D 		vmulpd	.LC33(%rip), %ymm14, %ymm11
 599      00000000 
 600 09b1 C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 600      E2
 601 09b6 C5755915 		vmulpd	.LC32(%rip), %ymm1, %ymm10
 601      00000000 
 602 09be C4411D58 		vaddpd	%ymm11, %ymm12, %ymm11
 602      DB
 603 09c3 C57D28A4 		vmovapd	160(%rsp), %ymm12
 603      24A00000 
 603      00
 604 09cc C5FD29A4 		vmovapd	%ymm4, 576(%rsp)
 604      24400200 
 604      00
 605 09d5 C4412558 		vaddpd	%ymm10, %ymm11, %ymm11
 605      DA
 606 09da C4412558 		vaddpd	%ymm9, %ymm11, %ymm10
 606      D1
 607 09df C51D590D 		vmulpd	.LC32(%rip), %ymm12, %ymm9
 607      00000000 
 608 09e7 C53D5925 		vmulpd	.LC33(%rip), %ymm8, %ymm12
 608      00000000 
 609 09ef C55D591D 		vmulpd	.LC31(%rip), %ymm4, %ymm11
 609      00000000 
 610 09f7 C4417D59 		vmulpd	%ymm10, %ymm0, %ymm10
 610      D2
 611 09fc C4411558 		vaddpd	%ymm12, %ymm13, %ymm12
 611      E4
 612 0a01 C52D5894 		vaddpd	672(%rsp), %ymm10, %ymm10
 612      24A00200 
 612      00
 613 0a0a C4411D58 		vaddpd	%ymm9, %ymm12, %ymm12
 613      E1
 614 0a0f C4411D58 		vaddpd	%ymm11, %ymm12, %ymm9
 614      CB
 615 0a14 C4417D59 		vmulpd	%ymm9, %ymm0, %ymm9
 615      C9
 616 0a19 C535588C 		vaddpd	704(%rsp), %ymm9, %ymm9
 616      24C00200 
 616      00
 617 0a22 C5FD2954 		vmovapd	%ymm2, 96(%rsp)
 617      2460
 618 0a28 C57B109C 		vmovsd	192(%rsp), %xmm11
 618      24C00000 
 618      00
 619 0a31 C57B10A4 		vmovsd	200(%rsp), %xmm12
 619      24C80000 
 619      00
 620 0a3a C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 620      C3
 621 0a3f C57B10AC 		vmovsd	208(%rsp), %xmm13
 621      24D00000 
 621      00
GAS LISTING /tmp/cc72IM0J.s 			page 20


 622 0a48 C5FB1094 		vmovsd	216(%rsp), %xmm2
 622      24D80000 
 622      00
 623 0a51 C50D5935 		vmulpd	.LC38(%rip), %ymm14, %ymm14
 623      00000000 
 624 0a59 C53D5905 		vmulpd	.LC38(%rip), %ymm8, %ymm8
 624      00000000 
 625 0a61 48898424 		movq	%rax, 144(%rsp)
 625      90000000 
 626 0a69 C4C1FB2C 		vcvttsd2siq	%xmm12, %rax
 626      C4
 627 0a6e C57A7EA4 		vmovq	144(%rsp), %xmm12
 627      24900000 
 627      00
 628 0a77 C4639922 		vpinsrq	$1, %rax, %xmm12, %xmm12
 628      E001
 629 0a7d C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 629      C5
 630 0a82 48898424 		movq	%rax, 144(%rsp)
 630      90000000 
 631 0a8a C4E1FB2C 		vcvttsd2siq	%xmm2, %rax
 631      C2
 632 0a8f C57A7E9C 		vmovq	144(%rsp), %xmm11
 632      24900000 
 632      00
 633 0a98 C5E9EFD2 		vpxor	%xmm2, %xmm2, %xmm2
 634 0a9c C463A122 		vpinsrq	$1, %rax, %xmm11, %xmm11
 634      D801
 635 0aa2 C5797F9C 		vmovdqa	%xmm11, 144(%rsp)
 635      24900000 
 635      00
 636 0aab C521DB2D 		vpand	.LC21(%rip), %xmm11, %xmm13
 636      00000000 
 637 0ab3 C519DB1D 		vpand	.LC21(%rip), %xmm12, %xmm11
 637      00000000 
 638 0abb C4621129 		vpcmpeqq	%xmm2, %xmm13, %xmm13
 638      EA
 639 0ac0 C511EF2D 		vpxor	.LC103(%rip), %xmm13, %xmm13
 639      00000000 
 640 0ac8 C4622129 		vpcmpeqq	%xmm2, %xmm11, %xmm11
 640      DA
 641 0acd C5797FE2 		vmovdqa	%xmm12, %xmm2
 642 0ad1 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 642      00000000 
 643 0ad9 C4621937 		vpcmpgtq	.LC22(%rip), %xmm12, %xmm12
 643      25000000 
 643      00
 644 0ae2 C4432518 		vinsertf128	$0x1, %xmm13, %ymm11, %ymm11
 644      DD01
 645 0ae8 C5796FAC 		vmovdqa	144(%rsp), %xmm13
 645      24900000 
 645      00
 646 0af1 C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm13
 646      2D000000 
 646      00
 647 0afa C4431D18 		vinsertf128	$0x1, %xmm13, %ymm12, %ymm12
 647      E501
GAS LISTING /tmp/cc72IM0J.s 			page 21


 648 0b00 C51D54E7 		vandpd	%ymm7, %ymm12, %ymm12
 649 0b04 C4434D4B 		vblendvpd	%ymm12, %ymm15, %ymm6, %ymm13
 649      EFC0
 650 0b0a C463554B 		vblendvpd	%ymm12, .LC20(%rip), %ymm5, %ymm12
 650      25000000 
 650      00C0
 651 0b14 C4431D4B 		vblendvpd	%ymm11, %ymm13, %ymm12, %ymm12
 651      E5B0
 652 0b1a C5796F9C 		vmovdqa	144(%rsp), %xmm11
 652      24900000 
 652      00
 653 0b23 C5796F2D 		vmovdqa	.LC21(%rip), %xmm13
 653      00000000 
 654 0b2b C521D41D 		vpaddq	.LC21(%rip), %xmm11, %xmm11
 654      00000000 
 655 0b33 C521DB1D 		vpand	.LC24(%rip), %xmm11, %xmm11
 655      00000000 
 656 0b3b C511D4EA 		vpaddq	%xmm2, %xmm13, %xmm13
 657 0b3f C5FD2815 		vmovapd	.LC20(%rip), %ymm2
 657      00000000 
 658 0b47 C511DB2D 		vpand	.LC24(%rip), %xmm13, %xmm13
 658      00000000 
 659 0b4f C4C12173 		vpsllq	$62, %xmm11, %xmm11
 659      F33E
 660 0b55 C4C11173 		vpsllq	$62, %xmm13, %xmm13
 660      F53E
 661 0b5b C4431518 		vinsertf128	$0x1, %xmm11, %ymm13, %ymm11
 661      DB01
 662 0b61 C53559AC 		vmulpd	800(%rsp), %ymm9, %ymm13
 662      24200300 
 662      00
 663 0b6a C4411D57 		vxorpd	%ymm11, %ymm12, %ymm12
 663      E3
 664 0b6f C4412D59 		vmulpd	%ymm10, %ymm10, %ymm11
 664      DA
 665 0b74 C51D5925 		vmulpd	.LC25(%rip), %ymm12, %ymm12
 665      00000000 
 666 0b7c C4416D5C 		vsubpd	%ymm11, %ymm2, %ymm11
 666      DB
 667 0b81 C5FD2815 		vmovapd	.LC39(%rip), %ymm2
 667      00000000 
 668 0b89 C5ED5994 		vmulpd	416(%rsp), %ymm2, %ymm2
 668      24A00100 
 668      00
 669 0b92 C4412D59 		vmulpd	%ymm11, %ymm10, %ymm11
 669      DB
 670 0b97 C5655915 		vmulpd	.LC36(%rip), %ymm3, %ymm10
 670      00000000 
 671 0b9f C50D58F2 		vaddpd	%ymm2, %ymm14, %ymm14
 672 0ba3 C5FD2894 		vmovapd	160(%rsp), %ymm2
 672      24A00000 
 672      00
 673 0bac C441255C 		vsubpd	%ymm13, %ymm11, %ymm11
 673      DD
 674 0bb1 C575592D 		vmulpd	.LC37(%rip), %ymm1, %ymm13
 674      00000000 
 675 0bb9 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
GAS LISTING /tmp/cc72IM0J.s 			page 22


 675      DC
 676 0bbe C5355925 		vmulpd	.LC35(%rip), %ymm9, %ymm12
 676      00000000 
 677 0bc6 C4410D58 		vaddpd	%ymm13, %ymm14, %ymm14
 677      F5
 678 0bcb C55D592D 		vmulpd	.LC36(%rip), %ymm4, %ymm13
 678      00000000 
 679 0bd3 C4410D58 		vaddpd	%ymm10, %ymm14, %ymm14
 679      F2
 680 0bd8 C4410D58 		vaddpd	%ymm12, %ymm14, %ymm10
 680      D4
 681 0bdd C56D5935 		vmulpd	.LC37(%rip), %ymm2, %ymm14
 681      00000000 
 682 0be5 C5FD2815 		vmovapd	.LC39(%rip), %ymm2
 682      00000000 
 683 0bed C5255925 		vmulpd	.LC35(%rip), %ymm11, %ymm12
 683      00000000 
 684 0bf5 C5ED5994 		vmulpd	448(%rsp), %ymm2, %ymm2
 684      24C00100 
 684      00
 685 0bfe C4417D59 		vmulpd	%ymm10, %ymm0, %ymm10
 685      D2
 686 0c03 C53D58C2 		vaddpd	%ymm2, %ymm8, %ymm8
 687 0c07 C52D5894 		vaddpd	672(%rsp), %ymm10, %ymm10
 687      24A00200 
 687      00
 688 0c10 C4413D58 		vaddpd	%ymm14, %ymm8, %ymm8
 688      C6
 689 0c15 C4413D58 		vaddpd	%ymm13, %ymm8, %ymm8
 689      C5
 690 0c1a C4413D58 		vaddpd	%ymm12, %ymm8, %ymm12
 690      E4
 691 0c1f C57B1084 		vmovsd	192(%rsp), %xmm8
 691      24C00000 
 691      00
 692 0c28 C4C1FB2C 		vcvttsd2siq	%xmm8, %rax
 692      C0
 693 0c2d C4417D59 		vmulpd	%ymm12, %ymm0, %ymm12
 693      E4
 694 0c32 C51D58A4 		vaddpd	704(%rsp), %ymm12, %ymm12
 694      24C00200 
 694      00
 695 0c3b 48898424 		movq	%rax, 144(%rsp)
 695      90000000 
 696 0c43 C57B10AC 		vmovsd	200(%rsp), %xmm13
 696      24C80000 
 696      00
 697 0c4c C5FA7E94 		vmovq	144(%rsp), %xmm2
 697      24900000 
 697      00
 698 0c55 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 698      C5
 699 0c5a C57B1084 		vmovsd	216(%rsp), %xmm8
 699      24D80000 
 699      00
 700 0c63 C535590D 		vmulpd	.LC45(%rip), %ymm9, %ymm9
 700      00000000 
GAS LISTING /tmp/cc72IM0J.s 			page 23


 701 0c6b C463E922 		vpinsrq	$1, %rax, %xmm2, %xmm14
 701      F001
 702 0c71 C5FB1094 		vmovsd	208(%rsp), %xmm2
 702      24D00000 
 702      00
 703 0c7a C4E1FB2C 		vcvttsd2siq	%xmm2, %rax
 703      C2
 704 0c7f 48898424 		movq	%rax, 144(%rsp)
 704      90000000 
 705 0c87 C4C1FB2C 		vcvttsd2siq	%xmm8, %rax
 705      C0
 706 0c8c C5FA7E94 		vmovq	144(%rsp), %xmm2
 706      24900000 
 706      00
 707 0c95 C509DB05 		vpand	.LC21(%rip), %xmm14, %xmm8
 707      00000000 
 708 0c9d C463E922 		vpinsrq	$1, %rax, %xmm2, %xmm13
 708      E801
 709 0ca3 C5E9EFD2 		vpxor	%xmm2, %xmm2, %xmm2
 710 0ca7 C5797FAC 		vmovdqa	%xmm13, 144(%rsp)
 710      24900000 
 710      00
 711 0cb0 C511DB2D 		vpand	.LC21(%rip), %xmm13, %xmm13
 711      00000000 
 712 0cb8 C4623929 		vpcmpeqq	%xmm2, %xmm8, %xmm8
 712      C2
 713 0cbd C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 713      00000000 
 714 0cc5 C4621129 		vpcmpeqq	%xmm2, %xmm13, %xmm13
 714      EA
 715 0cca C5797FF2 		vmovdqa	%xmm14, %xmm2
 716 0cce C4620937 		vpcmpgtq	.LC22(%rip), %xmm14, %xmm14
 716      35000000 
 716      00
 717 0cd7 C511EF2D 		vpxor	.LC103(%rip), %xmm13, %xmm13
 717      00000000 
 718 0cdf C4433D18 		vinsertf128	$0x1, %xmm13, %ymm8, %ymm8
 718      C501
 719 0ce5 C5796FAC 		vmovdqa	144(%rsp), %xmm13
 719      24900000 
 719      00
 720 0cee C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm13
 720      2D000000 
 720      00
 721 0cf7 C4430D18 		vinsertf128	$0x1, %xmm13, %ymm14, %ymm13
 721      ED01
 722 0cfd C51554EF 		vandpd	%ymm7, %ymm13, %ymm13
 723 0d01 C4C12D59 		vmulpd	%ymm10, %ymm10, %ymm7
 723      FA
 724 0d06 C4C34D4B 		vblendvpd	%ymm13, %ymm15, %ymm6, %ymm6
 724      F7D0
 725 0d0c C463554B 		vblendvpd	%ymm13, .LC20(%rip), %ymm5, %ymm13
 725      2D000000 
 725      00D0
 726 0d16 C5F96FAC 		vmovdqa	144(%rsp), %xmm5
 726      24900000 
 726      00
GAS LISTING /tmp/cc72IM0J.s 			page 24


 727 0d1f C463154B 		vblendvpd	%ymm8, %ymm6, %ymm13, %ymm13
 727      EE80
 728 0d25 C551D43D 		vpaddq	.LC21(%rip), %xmm5, %xmm15
 728      00000000 
 729 0d2d C5E9D42D 		vpaddq	.LC21(%rip), %xmm2, %xmm5
 729      00000000 
 730 0d35 C5FD2815 		vmovapd	.LC20(%rip), %ymm2
 730      00000000 
 731 0d3d C5D1DB2D 		vpand	.LC24(%rip), %xmm5, %xmm5
 731      00000000 
 732 0d45 C5ED5CFF 		vsubpd	%ymm7, %ymm2, %ymm7
 733 0d49 C5FD2815 		vmovapd	.LC43(%rip), %ymm2
 733      00000000 
 734 0d51 C501DB3D 		vpand	.LC24(%rip), %xmm15, %xmm15
 734      00000000 
 735 0d59 C56D5984 		vmulpd	416(%rsp), %ymm2, %ymm8
 735      24A00100 
 735      00
 736 0d62 C5C973F5 		vpsllq	$62, %xmm5, %xmm6
 736      3E
 737 0d67 C59D59AC 		vmulpd	800(%rsp), %ymm12, %ymm5
 737      24200300 
 737      00
 738 0d70 C4C10173 		vpsllq	$62, %xmm15, %xmm15
 738      F73E
 739 0d76 C52D59D7 		vmulpd	%ymm7, %ymm10, %ymm10
 740 0d7a C4C34D18 		vinsertf128	$0x1, %xmm15, %ymm6, %ymm6
 740      F701
 741 0d80 C5E5593D 		vmulpd	.LC41(%rip), %ymm3, %ymm7
 741      00000000 
 742 0d88 C52D5CD5 		vsubpd	%ymm5, %ymm10, %ymm10
 743 0d8c C59557F6 		vxorpd	%ymm6, %ymm13, %ymm6
 744 0d90 C5F5592D 		vmulpd	.LC42(%rip), %ymm1, %ymm5
 744      00000000 
 745 0d98 C5CD5935 		vmulpd	.LC25(%rip), %ymm6, %ymm6
 745      00000000 
 746 0da0 C5F5590D 		vmulpd	.LC47(%rip), %ymm1, %ymm1
 746      00000000 
 747 0da8 C5E5591D 		vmulpd	.LC46(%rip), %ymm3, %ymm3
 747      00000000 
 748 0db0 C5BD58ED 		vaddpd	%ymm5, %ymm8, %ymm5
 749 0db4 C52D58D6 		vaddpd	%ymm6, %ymm10, %ymm10
 750 0db8 C59D5935 		vmulpd	.LC40(%rip), %ymm12, %ymm6
 750      00000000 
 751 0dc0 C5D558EF 		vaddpd	%ymm7, %ymm5, %ymm5
 752 0dc4 C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 752      00000000 
 753 0dcc C51D5925 		vmulpd	.LC44(%rip), %ymm12, %ymm12
 753      00000000 
 754 0dd4 C5D558EE 		vaddpd	%ymm6, %ymm5, %ymm5
 755 0dd8 C5C559B4 		vmulpd	416(%rsp), %ymm7, %ymm6
 755      24A00100 
 755      00
 756 0de1 C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 757 0de5 C5CD58C9 		vaddpd	%ymm1, %ymm6, %ymm1
 758 0de9 C5D558AC 		vaddpd	672(%rsp), %ymm5, %ymm5
 758      24A00200 
GAS LISTING /tmp/cc72IM0J.s 			page 25


 758      00
 759 0df2 C5F558DB 		vaddpd	%ymm3, %ymm1, %ymm3
 760 0df6 C5FD29AC 		vmovapd	%ymm5, 608(%rsp)
 760      24600200 
 760      00
 761 0dff C4416558 		vaddpd	%ymm9, %ymm3, %ymm9
 761      C9
 762 0e04 C4413558 		vaddpd	%ymm12, %ymm9, %ymm12
 762      E4
 763 0e09 C51D59E0 		vmulpd	%ymm0, %ymm12, %ymm12
 764 0e0d C57D29A4 		vmovapd	%ymm12, 224(%rsp)
 764      24E00000 
 764      00
 765 0e16 C5D5541D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 765      00000000 
 766 0e1e C5FD2894 		vmovapd	160(%rsp), %ymm2
 766      24A00000 
 766      00
 767 0e27 C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 767      00000000 
 768 0e2f C5ED592D 		vmulpd	.LC42(%rip), %ymm2, %ymm5
 768      00000000 
 769 0e37 C5C559BC 		vmulpd	448(%rsp), %ymm7, %ymm7
 769      24C00100 
 769      00
 770 0e40 C5DD5935 		vmulpd	.LC41(%rip), %ymm4, %ymm6
 770      00000000 
 771 0e48 C5AD590D 		vmulpd	.LC40(%rip), %ymm10, %ymm1
 771      00000000 
 772 0e50 C5ED5915 		vmulpd	.LC47(%rip), %ymm2, %ymm2
 772      00000000 
 773 0e58 C5C558ED 		vaddpd	%ymm5, %ymm7, %ymm5
 774 0e5c C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 774      00000000 
 775 0e64 C5DD5925 		vmulpd	.LC46(%rip), %ymm4, %ymm4
 775      00000000 
 776 0e6c C52D5915 		vmulpd	.LC44(%rip), %ymm10, %ymm10
 776      00000000 
 777 0e74 C5D558EE 		vaddpd	%ymm6, %ymm5, %ymm5
 778 0e78 C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 778      00000000 
 779 0e80 C5D558E9 		vaddpd	%ymm1, %ymm5, %ymm5
 780 0e84 C5A5590D 		vmulpd	.LC45(%rip), %ymm11, %ymm1
 780      00000000 
 781 0e8c C545599C 		vmulpd	448(%rsp), %ymm7, %ymm11
 781      24C00100 
 781      00
 782 0e95 C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 782      00000000 
 783 0e9d C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 784 0ea1 C52558DA 		vaddpd	%ymm2, %ymm11, %ymm11
 785 0ea5 C4C1655E 		vdivpd	%ymm12, %ymm3, %ymm3
 785      DC
 786 0eaa C5D558AC 		vaddpd	704(%rsp), %ymm5, %ymm5
 786      24C00200 
 786      00
 787 0eb3 C52558DC 		vaddpd	%ymm4, %ymm11, %ymm11
GAS LISTING /tmp/cc72IM0J.s 			page 26


 788 0eb7 C5FD29AC 		vmovapd	%ymm5, 640(%rsp)
 788      24800200 
 788      00
 789 0ec0 C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 790 0ec4 C4412558 		vaddpd	%ymm10, %ymm11, %ymm11
 790      DA
 791 0ec9 C5D5540D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 791      00000000 
 792 0ed1 C52559D8 		vmulpd	%ymm0, %ymm11, %ymm11
 793 0ed5 C5F5590D 		vmulpd	.LC49(%rip), %ymm1, %ymm1
 793      00000000 
 794 0edd C57D299C 		vmovapd	%ymm11, 256(%rsp)
 794      24000100 
 794      00
 795 0ee6 C5E5541D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 795      00000000 
 796 0eee C5F5580D 		vaddpd	.LC49(%rip), %ymm1, %ymm1
 796      00000000 
 797 0ef6 C5FD298C 		vmovapd	%ymm1, 320(%rsp)
 797      24400100 
 797      00
 798 0eff C4C1755E 		vdivpd	%ymm11, %ymm1, %ymm1
 798      CB
 799 0f04 C5F5540D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 799      00000000 
 800 0f0c C5E55DD9 		vminpd	%ymm1, %ymm3, %ymm3
 801 0f10 C5FD298C 		vmovapd	%ymm1, 384(%rsp)
 801      24800100 
 801      00
 802 0f19 C4E37D19 		vextractf128	$0x1, %ymm3, %xmm5
 802      DD01
 803 0f1f C5FD299C 		vmovapd	%ymm3, 288(%rsp)
 803      24200100 
 803      00
 804 0f28 C5F928E3 		vmovapd	%xmm3, %xmm4
 805 0f2c C5D1DB15 		vpand	.LC50(%rip), %xmm5, %xmm2
 805      00000000 
 806 0f34 C5F173D5 		vpsrlq	$52, %xmm5, %xmm1
 806      34
 807 0f39 C5C173D4 		vpsrlq	$52, %xmm4, %xmm7
 807      34
 808 0f3e C5D9DB35 		vpand	.LC50(%rip), %xmm4, %xmm6
 808      00000000 
 809 0f46 C5F1EB0D 		vpor	.LC52(%rip), %xmm1, %xmm1
 809      00000000 
 810 0f4e C5E9EB15 		vpor	.LC51(%rip), %xmm2, %xmm2
 810      00000000 
 811 0f56 C5C9EB35 		vpor	.LC51(%rip), %xmm6, %xmm6
 811      00000000 
 812 0f5e C5C1EB3D 		vpor	.LC52(%rip), %xmm7, %xmm7
 812      00000000 
 813 0f66 C4E34D18 		vinsertf128	$0x1, %xmm2, %ymm6, %ymm6
 813      F201
 814 0f6c C5FD2815 		vmovapd	.LC54(%rip), %ymm2
 814      00000000 
 815 0f74 C4E34518 		vinsertf128	$0x1, %xmm1, %ymm7, %ymm7
 815      F901
GAS LISTING /tmp/cc72IM0J.s 			page 27


 816 0f7a C5EDC2D6 		vcmppd	$1, %ymm6, %ymm2, %ymm2
 816      01
 817 0f7f C5C55C3D 		vsubpd	.LC53(%rip), %ymm7, %ymm7
 817      00000000 
 818 0f87 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 818      D001
 819 0f8d C5F928CA 		vmovapd	%xmm2, %xmm1
 820 0f91 C5ED5415 		vandpd	.LC20(%rip), %ymm2, %ymm2
 820      00000000 
 821 0f99 C5395705 		vxorpd	.LC55(%rip), %xmm8, %xmm8
 821      00000000 
 822 0fa1 C5F1570D 		vxorpd	.LC55(%rip), %xmm1, %xmm1
 822      00000000 
 823 0fa9 C5C558FA 		vaddpd	%ymm2, %ymm7, %ymm7
 824 0fad C4C37518 		vinsertf128	$0x1, %xmm8, %ymm1, %ymm1
 824      C801
 825 0fb3 C5F554CE 		vandpd	%ymm6, %ymm1, %ymm1
 826 0fb7 C5F558F6 		vaddpd	%ymm6, %ymm1, %ymm6
 827 0fbb C5CD5C0D 		vsubpd	.LC20(%rip), %ymm6, %ymm1
 827      00000000 
 828 0fc3 C575590D 		vmulpd	.LC58(%rip), %ymm1, %ymm9
 828      00000000 
 829 0fcb C5F559D1 		vmulpd	%ymm1, %ymm1, %ymm2
 830 0fcf C5755915 		vmulpd	.LC56(%rip), %ymm1, %ymm10
 830      00000000 
 831 0fd7 C5755905 		vmulpd	.LC60(%rip), %ymm1, %ymm8
 831      00000000 
 832 0fdf C535580D 		vaddpd	.LC59(%rip), %ymm9, %ymm9
 832      00000000 
 833 0fe7 C5ED59F2 		vmulpd	%ymm2, %ymm2, %ymm6
 834 0feb C52D5815 		vaddpd	.LC57(%rip), %ymm10, %ymm10
 834      00000000 
 835 0ff3 C53D5805 		vaddpd	.LC61(%rip), %ymm8, %ymm8
 835      00000000 
 836 0ffb C53559CE 		vmulpd	%ymm6, %ymm9, %ymm9
 837 0fff C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 837      CA
 838 1004 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 839 1008 C5755915 		vmulpd	.LC62(%rip), %ymm1, %ymm10
 839      00000000 
 840 1010 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 840      C1
 841 1015 C57559CA 		vmulpd	%ymm2, %ymm1, %ymm9
 842 1019 C52D5815 		vaddpd	.LC63(%rip), %ymm10, %ymm10
 842      00000000 
 843 1021 C4413D59 		vmulpd	%ymm9, %ymm8, %ymm8
 843      C1
 844 1026 C575580D 		vaddpd	.LC64(%rip), %ymm1, %ymm9
 844      00000000 
 845 102e C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 846 1032 C4414D58 		vaddpd	%ymm10, %ymm6, %ymm9
 846      CA
 847 1037 C5F55935 		vmulpd	.LC65(%rip), %ymm1, %ymm6
 847      00000000 
 848 103f C5CD5835 		vaddpd	.LC66(%rip), %ymm6, %ymm6
 848      00000000 
 849 1047 C5CD59F2 		vmulpd	%ymm2, %ymm6, %ymm6
GAS LISTING /tmp/cc72IM0J.s 			page 28


 850 104b C5ED5915 		vmulpd	.LC19(%rip), %ymm2, %ymm2
 850      00000000 
 851 1053 C4C14D58 		vaddpd	%ymm9, %ymm6, %ymm6
 851      F1
 852 1058 C5F55CCA 		vsubpd	%ymm2, %ymm1, %ymm1
 853 105c C5BD5EF6 		vdivpd	%ymm6, %ymm8, %ymm6
 854 1060 C5455905 		vmulpd	.LC67(%rip), %ymm7, %ymm8
 854      00000000 
 855 1068 C5C5593D 		vmulpd	.LC68(%rip), %ymm7, %ymm7
 855      00000000 
 856 1070 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 857 1074 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 857      01
 858 1079 C5B9DB15 		vpand	.LC23(%rip), %xmm8, %xmm2
 858      00000000 
 859 1081 C5CD58C9 		vaddpd	%ymm1, %ymm6, %ymm1
 860 1085 C4E26929 		vpcmpeqq	.LC23(%rip), %xmm2, %xmm2
 860      15000000 
 860      00
 861 108e C5E9EF15 		vpxor	.LC103(%rip), %xmm2, %xmm2
 861      00000000 
 862 1096 C5C558C9 		vaddpd	%ymm1, %ymm7, %ymm1
 863 109a C5C173F4 		vpsllq	$1, %xmm4, %xmm7
 863      01
 864 109f C5C1DB35 		vpand	.LC23(%rip), %xmm7, %xmm6
 864      00000000 
 865 10a7 C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 865      35000000 
 865      00
 866 10b0 C5C9EF35 		vpxor	.LC103(%rip), %xmm6, %xmm6
 866      00000000 
 867 10b8 C4E34D18 		vinsertf128	$0x1, %xmm2, %ymm6, %ymm6
 867      F201
 868 10be C4C37D19 		vextractf128	$0x1, %ymm6, %xmm9
 868      F101
 869 10c4 C5C95715 		vxorpd	.LC55(%rip), %xmm6, %xmm2
 869      00000000 
 870 10cc C5E5C235 		vcmppd	$1, .LC69(%rip), %ymm3, %ymm6
 870      00000000 
 870      01
 871 10d5 C531570D 		vxorpd	.LC55(%rip), %xmm9, %xmm9
 871      00000000 
 872 10dd C4C36D18 		vinsertf128	$0x1, %xmm9, %ymm2, %ymm2
 872      D101
 873 10e3 C57D28D2 		vmovapd	%ymm2, %ymm10
 874 10e7 C5CD56D2 		vorpd	%ymm2, %ymm6, %ymm2
 875 10eb C4C37D19 		vextractf128	$0x1, %ymm2, %xmm9
 875      D101
 876 10f1 C4C16956 		vorpd	%xmm9, %xmm2, %xmm2
 876      D1
 877 10f6 C5F950D2 		vmovmskpd	%xmm2, %edx
 878 10fa 85D2     		testl	%edx, %edx
 879 10fc 0F848D00 		je	.L23
 879      0000
 880 1102 C5D1DB15 		vpand	.LC72(%rip), %xmm5, %xmm2
 880      00000000 
 881 110a C4E3754B 		vblendvpd	%ymm6, .LC70(%rip), %ymm1, %ymm6
GAS LISTING /tmp/cc72IM0J.s 			page 29


 881      35000000 
 881      0060
 882 1114 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 882      1F
 883 1119 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 883      05000000 
 883      00
 884 1122 C5F1EFC9 		vpxor	%xmm1, %xmm1, %xmm1
 885 1126 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 885      FF
 886 112b C4E26929 		vpcmpeqq	%xmm1, %xmm2, %xmm2
 886      D1
 887 1130 C5D9DB0D 		vpand	.LC72(%rip), %xmm4, %xmm1
 887      00000000 
 888 1138 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 888      1F
 889 113d C4C27129 		vpcmpeqq	%xmm15, %xmm1, %xmm1
 889      CF
 890 1142 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 890      CA01
 891 1148 C4E34D4B 		vblendvpd	%ymm1, 32(%rsp), %ymm6, %ymm1
 891      4C242010 
 892 1150 C463754B 		vblendvpd	%ymm10, %ymm3, %ymm1, %ymm10
 892      D3A0
 893 1156 C5F173D5 		vpsrlq	$32, %xmm5, %xmm1
 893      20
 894 115b C4E3710E 		vpblendw	$204, %xmm5, %xmm1, %xmm5
 894      EDCC
 895 1161 C5F173D4 		vpsrlq	$32, %xmm4, %xmm1
 895      20
 896 1166 C4E3710E 		vpblendw	$204, %xmm4, %xmm1, %xmm4
 896      E4CC
 897 116c C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm1
 897      0D000000 
 897      00
 898 1175 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 898      ED01
 899 117b C4C37518 		vinsertf128	$0x1, %xmm8, %ymm1, %ymm1
 899      C801
 900 1181 C5F554CD 		vandpd	%ymm5, %ymm1, %ymm1
 901 1185 C4E32D4B 		vblendvpd	%ymm1, .LC70(%rip), %ymm10, %ymm1
 901      0D000000 
 901      0010
 902              	.L23:
 903 118f C5F5590D 		vmulpd	.LC26(%rip), %ymm1, %ymm1
 903      00000000 
 904 1197 C5F55935 		vmulpd	.LC73(%rip), %ymm1, %ymm6
 904      00000000 
 905 119f C4E37D09 		vroundpd	$8, %ymm6, %ymm6
 905      F608
 906 11a5 C5CD5915 		vmulpd	.LC74(%rip), %ymm6, %ymm2
 906      00000000 
 907 11ad C5CD5925 		vmulpd	.LC75(%rip), %ymm6, %ymm4
 907      00000000 
 908 11b5 C5CD5835 		vaddpd	.LC53(%rip), %ymm6, %ymm6
 908      00000000 
 909 11bd C5F55CD2 		vsubpd	%ymm2, %ymm1, %ymm2
GAS LISTING /tmp/cc72IM0J.s 			page 30


 910 11c1 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 911 11c5 C5ED593D 		vmulpd	.LC79(%rip), %ymm2, %ymm7
 911      00000000 
 912 11cd C56D590D 		vmulpd	.LC76(%rip), %ymm2, %ymm9
 912      00000000 
 913 11d5 C56D5915 		vmulpd	.LC77(%rip), %ymm2, %ymm10
 913      00000000 
 914 11dd C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
 915 11e1 C5C5583D 		vaddpd	.LC80(%rip), %ymm7, %ymm7
 915      00000000 
 916 11e9 C535580D 		vaddpd	.LC19(%rip), %ymm9, %ymm9
 916      00000000 
 917 11f1 C52D5815 		vaddpd	.LC78(%rip), %ymm10, %ymm10
 917      00000000 
 918 11f9 C5DD59EC 		vmulpd	%ymm4, %ymm4, %ymm5
 919 11fd C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 920 1201 C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 921 1205 C55559C5 		vmulpd	%ymm5, %ymm5, %ymm8
 922 1209 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 922      FA
 923 120e C56D5915 		vmulpd	.LC83(%rip), %ymm2, %ymm10
 923      00000000 
 924 1216 C53558CA 		vaddpd	%ymm2, %ymm9, %ymm9
 925 121a C5C559FD 		vmulpd	%ymm5, %ymm7, %ymm7
 926 121e C52D5815 		vaddpd	.LC84(%rip), %ymm10, %ymm10
 926      00000000 
 927 1226 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 927      F9
 928 122b C56D590D 		vmulpd	.LC81(%rip), %ymm2, %ymm9
 928      00000000 
 929 1233 C5ED5915 		vmulpd	.LC85(%rip), %ymm2, %ymm2
 929      00000000 
 930 123b C5AD59E4 		vmulpd	%ymm4, %ymm10, %ymm4
 931 123f C535580D 		vaddpd	.LC82(%rip), %ymm9, %ymm9
 931      00000000 
 932 1247 C5ED5815 		vaddpd	.LC86(%rip), %ymm2, %ymm2
 932      00000000 
 933 124f C4C15D58 		vaddpd	%ymm9, %ymm4, %ymm4
 933      E1
 934 1254 C5ED59D5 		vmulpd	%ymm5, %ymm2, %ymm2
 935 1258 C5F928E9 		vmovapd	%xmm1, %xmm5
 936 125c C5ED58D4 		vaddpd	%ymm4, %ymm2, %ymm2
 937 1260 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 937      F401
 938 1266 C5C973F6 		vpsllq	$52, %xmm6, %xmm6
 938      34
 939 126b C5D973F4 		vpsllq	$52, %xmm4, %xmm4
 939      34
 940 1270 C4E34D18 		vinsertf128	$0x1, %xmm4, %ymm6, %ymm6
 940      F401
 941 1276 C5D973F5 		vpsllq	$1, %xmm5, %xmm4
 941      01
 942 127b C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 942      D0
 943 1280 C5D9DB25 		vpand	.LC23(%rip), %xmm4, %xmm4
 943      00000000 
 944 1288 C5ED58D7 		vaddpd	%ymm7, %ymm2, %ymm2
GAS LISTING /tmp/cc72IM0J.s 			page 31


 945 128c C5F5543D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 945      00000000 
 946 1294 C4E25929 		vpcmpeqq	.LC23(%rip), %xmm4, %xmm4
 946      25000000 
 946      00
 947 129d C5D9EF25 		vpxor	.LC103(%rip), %xmm4, %xmm4
 947      00000000 
 948 12a5 C5ED5815 		vaddpd	.LC20(%rip), %ymm2, %ymm2
 948      00000000 
 949 12ad C5C5C23D 		vcmppd	$1, .LC87(%rip), %ymm7, %ymm7
 949      00000000 
 949      01
 950 12b6 C5ED59D6 		vmulpd	%ymm6, %ymm2, %ymm2
 951 12ba C4E37D19 		vextractf128	$0x1, %ymm1, %xmm6
 951      CE01
 952 12c0 C5B973F6 		vpsllq	$1, %xmm6, %xmm8
 952      01
 953 12c5 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 953      00000000 
 954 12cd C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 954      05000000 
 954      00
 955 12d6 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 955      00000000 
 956 12de C4C35D18 		vinsertf128	$0x1, %xmm8, %ymm4, %ymm4
 956      E001
 957 12e4 C5C554E4 		vandpd	%ymm4, %ymm7, %ymm4
 958 12e8 C4E37D19 		vextractf128	$0x1, %ymm4, %xmm7
 958      E701
 959 12ee C57928C4 		vmovapd	%xmm4, %xmm8
 960 12f2 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 961 12f6 C5F950D7 		vmovmskpd	%xmm7, %edx
 962 12fa 83FA03   		cmpl	$3, %edx
 963 12fd 7447     		je	.L24
 964 12ff C5C972E6 		vpsrad	$31, %xmm6, %xmm6
 964      1F
 965 1304 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 965      1F
 966 1309 C5C173D6 		vpsrlq	$32, %xmm6, %xmm7
 966      20
 967 130e C4E3410E 		vpblendw	$204, %xmm6, %xmm7, %xmm6
 967      F6CC
 968 1314 C5C173D5 		vpsrlq	$32, %xmm5, %xmm7
 968      20
 969 1319 C4E3410E 		vpblendw	$204, %xmm5, %xmm7, %xmm5
 969      EDCC
 970 131f C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 971 1323 C4E35518 		vinsertf128	$0x1, %xmm6, %ymm5, %ymm6
 971      F601
 972 1329 C5FD286C 		vmovapd	64(%rsp), %ymm5
 972      2440
 973 132f C4E3554B 		vblendvpd	%ymm6, %ymm7, %ymm5, %ymm6
 973      F760
 974 1335 C4E34D4B 		vblendvpd	%ymm4, %ymm2, %ymm6, %ymm2
 974      D240
 975 133b C5F5C2E1 		vcmppd	$4, %ymm1, %ymm1, %ymm4
 975      04
GAS LISTING /tmp/cc72IM0J.s 			page 32


 976 1340 C4E36D4B 		vblendvpd	%ymm4, %ymm1, %ymm2, %ymm2
 976      D140
 977              	.L24:
 978 1346 C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 978      00000000 
 979 134e C5FDC20D 		vcmppd	$2, .LC88(%rip), %ymm0, %ymm1
 979      00000000 
 979      02
 980 1357 C5D5C2DB 		vcmppd	$2, %ymm3, %ymm5, %ymm3
 980      02
 981 135c C5FD282D 		vmovapd	.LC89(%rip), %ymm5
 981      00000000 
 982 1364 C5E556D9 		vorpd	%ymm1, %ymm3, %ymm3
 983 1368 C5D5C2CA 		vcmppd	$1, %ymm2, %ymm5, %ymm1
 983      01
 984 136d C4E36D4B 		vblendvpd	%ymm1, %ymm5, %ymm2, %ymm2
 984      D510
 985 1373 C5FD282D 		vmovapd	.LC92(%rip), %ymm5
 985      00000000 
 986 137b C5EDC20D 		vcmppd	$1, .LC26(%rip), %ymm2, %ymm1
 986      00000000 
 986      01
 987 1384 C4E36D4B 		vblendvpd	%ymm1, .LC26(%rip), %ymm2, %ymm2
 987      15000000 
 987      0010
 988 138e C5FD288C 		vmovapd	672(%rsp), %ymm1
 988      24A00200 
 988      00
 989 1397 C4E3754B 		vblendvpd	%ymm3, 608(%rsp), %ymm1, %ymm1
 989      8C246002 
 989      000030
 990 13a2 C5FD2994 		vmovapd	%ymm2, 352(%rsp)
 990      24600100 
 990      00
 991 13ab C5FD298C 		vmovapd	%ymm1, 672(%rsp)
 991      24A00200 
 991      00
 992 13b4 C5FD288C 		vmovapd	704(%rsp), %ymm1
 992      24C00200 
 992      00
 993 13bd C4E3754B 		vblendvpd	%ymm3, 640(%rsp), %ymm1, %ymm1
 993      8C248002 
 993      000030
 994 13c8 C5FD298C 		vmovapd	%ymm1, 704(%rsp)
 994      24C00200 
 994      00
 995 13d1 C5FD288C 		vmovapd	736(%rsp), %ymm1
 995      24E00200 
 995      00
 996 13da C5F558E0 		vaddpd	%ymm0, %ymm1, %ymm4
 997 13de C5ED59C0 		vmulpd	%ymm0, %ymm2, %ymm0
 998 13e2 C4E3754B 		vblendvpd	%ymm3, %ymm4, %ymm1, %ymm3
 998      DC30
 999 13e8 C5FD2825 		vmovapd	.LC91(%rip), %ymm4
 999      00000000 
 1000 13f0 C5FD5905 		vmulpd	.LC90(%rip), %ymm0, %ymm0
 1000      00000000 
GAS LISTING /tmp/cc72IM0J.s 			page 33


 1001 13f8 C5FD299C 		vmovapd	%ymm3, 736(%rsp)
 1001      24E00200 
 1001      00
 1002 1401 C5D5C2DB 		vcmppd	$2, %ymm3, %ymm5, %ymm3
 1002      02
 1003 1406 C5DDC2C8 		vcmppd	$1, %ymm0, %ymm4, %ymm1
 1003      01
 1004 140b C4E37D4B 		vblendvpd	%ymm1, %ymm4, %ymm0, %ymm0
 1004      C410
 1005 1411 C5FDC20D 		vcmppd	$1, .LC88(%rip), %ymm0, %ymm1
 1005      00000000 
 1005      01
 1006 141a C4E37D4B 		vblendvpd	%ymm1, .LC88(%rip), %ymm0, %ymm0
 1006      05000000 
 1006      0010
 1007 1424 C5FD2984 		vmovapd	%ymm0, 768(%rsp)
 1007      24000300 
 1007      00
 1008 142d C4E37D19 		vextractf128	$0x1, %ymm3, %xmm0
 1008      D801
 1009 1433 C5E154D8 		vandpd	%xmm0, %xmm3, %xmm3
 1010 1437 C5F950D3 		vmovmskpd	%xmm3, %edx
 1011 143b 83FA03   		cmpl	$3, %edx
 1012 143e 7410     		je	.L47
 1013 1440 31D2     		xorl	%edx, %edx
 1014 1442 E97DECFF 		jmp	.L22
 1014      FF
 1015 1447 660F1F84 		.p2align 4,,10
 1015      00000000 
 1015      00
 1016              		.p2align 3
 1017              	.L47:
 1018 1450 4489E0   		movl	%r12d, %eax
 1019 1453 BAD34D62 		movl	$274877907, %edx
 1019      10
 1020 1458 F7EA     		imull	%edx
 1021 145a 4489E0   		movl	%r12d, %eax
 1022 145d C1F81F   		sarl	$31, %eax
 1023 1460 C1FA06   		sarl	$6, %edx
 1024 1463 29C2     		subl	%eax, %edx
 1025 1465 4489E0   		movl	%r12d, %eax
 1026 1468 69D2E803 		imull	$1000, %edx, %edx
 1026      0000
 1027 146e 29D0     		subl	%edx, %eax
 1028 1470 83F801   		cmpl	$1, %eax
 1029 1473 746B     		je	.L48
 1030              	.L26:
 1031 1475 4183C404 		addl	$4, %r12d
 1032 1479 4983C520 		addq	$32, %r13
 1033 147d 4181FCA0 		cmpl	$1440, %r12d
 1033      050000
 1034 1484 0F85DEEB 		jne	.L21
 1034      FFFF
 1035 148a C5F877   		vzeroupper
 1036 148d E8000000 		call	clock
 1036      00
 1037 1492 4989C4   		movq	%rax, %r12
GAS LISTING /tmp/cc72IM0J.s 			page 34


 1038 1495 BA0C0000 		movl	$12, %edx
 1038      00
 1039 149a BE000000 		movl	$.LC101, %esi
 1039      00
 1040 149f 4929DC   		subq	%rbx, %r12
 1041 14a2 BF000000 		movl	$_ZSt4cout, %edi
 1041      00
 1042 14a7 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1042      00
 1043 14ac 4C89E6   		movq	%r12, %rsi
 1044 14af BF000000 		movl	$_ZSt4cout, %edi
 1044      00
 1045 14b4 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1045      00
 1046 14b9 BE000000 		movl	$.LC102, %esi
 1046      00
 1047 14be 4889C7   		movq	%rax, %rdi
 1048 14c1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1048      00
 1049 14c6 4889C7   		movq	%rax, %rdi
 1050 14c9 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1050      00
 1051 14ce 488D65D8 		leaq	-40(%rbp), %rsp
 1052 14d2 31C0     		xorl	%eax, %eax
 1053 14d4 5B       		popq	%rbx
 1054 14d5 415C     		popq	%r12
 1055 14d7 415D     		popq	%r13
 1056 14d9 415E     		popq	%r14
 1057 14db 415F     		popq	%r15
 1058 14dd 5D       		popq	%rbp
 1059              		.cfi_remember_state
 1060              		.cfi_def_cfa 7, 8
 1061 14de C3       		ret
 1062 14df 90       		.p2align 4,,10
 1063              		.p2align 3
 1064              	.L48:
 1065              		.cfi_restore_state
 1066 14e0 BA390000 		movl	$57, %edx
 1066      00
 1067 14e5 BE000000 		movl	$.LC93, %esi
 1067      00
 1068 14ea BF000000 		movl	$_ZSt4cout, %edi
 1068      00
 1069 14ef C5F877   		vzeroupper
 1070 14f2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1070      00
 1071 14f7 C5FD2884 		vmovapd	800(%rsp), %ymm0
 1071      24200300 
 1071      00
 1072 1500 4489E6   		movl	%r12d, %esi
 1073 1503 BF000000 		movl	$_ZSt4cout, %edi
 1073      00
 1074 1508 C5FD1184 		vmovupd	%ymm0, 192(%rsp)
 1074      24C00000 
 1074      00
 1075 1511 C5FB1084 		vmovsd	192(%rsp), %xmm0
 1075      24C00000 
GAS LISTING /tmp/cc72IM0J.s 			page 35


 1075      00
 1076 151a C5FB1184 		vmovsd	%xmm0, 160(%rsp)
 1076      24A00000 
 1076      00
 1077 1523 C5F877   		vzeroupper
 1078 1526 E8000000 		call	_ZNSolsEi
 1078      00
 1079 152b BA060000 		movl	$6, %edx
 1079      00
 1080 1530 BE000000 		movl	$.LC94, %esi
 1080      00
 1081 1535 4889C7   		movq	%rax, %rdi
 1082 1538 4989C6   		movq	%rax, %r14
 1083 153b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1083      00
 1084 1540 C5FB1084 		vmovsd	160(%rsp), %xmm0
 1084      24A00000 
 1084      00
 1085 1549 4C89F7   		movq	%r14, %rdi
 1086 154c E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1086      00
 1087 1551 BA010000 		movl	$1, %edx
 1087      00
 1088 1556 BE000000 		movl	$.LC95, %esi
 1088      00
 1089 155b 4889C7   		movq	%rax, %rdi
 1090 155e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1090      00
 1091 1563 C5FD288C 		vmovapd	672(%rsp), %ymm1
 1091      24A00200 
 1091      00
 1092 156c BA050000 		movl	$5, %edx
 1092      00
 1093 1571 BE000000 		movl	$.LC96, %esi
 1093      00
 1094 1576 BF000000 		movl	$_ZSt4cout, %edi
 1094      00
 1095 157b C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 1095      24C00000 
 1095      00
 1096 1584 C5FB1094 		vmovsd	216(%rsp), %xmm2
 1096      24D80000 
 1096      00
 1097 158d C5FB109C 		vmovsd	208(%rsp), %xmm3
 1097      24D00000 
 1097      00
 1098 1596 C5FB10A4 		vmovsd	200(%rsp), %xmm4
 1098      24C80000 
 1098      00
 1099 159f C5FB1084 		vmovsd	192(%rsp), %xmm0
 1099      24C00000 
 1099      00
 1100 15a8 C5FB1154 		vmovsd	%xmm2, 64(%rsp)
 1100      2440
 1101 15ae C5FB115C 		vmovsd	%xmm3, 96(%rsp)
 1101      2460
 1102 15b4 C5FB11A4 		vmovsd	%xmm4, 144(%rsp)
GAS LISTING /tmp/cc72IM0J.s 			page 36


 1102      24900000 
 1102      00
 1103 15bd C5FB1184 		vmovsd	%xmm0, 160(%rsp)
 1103      24A00000 
 1103      00
 1104 15c6 C5F877   		vzeroupper
 1105 15c9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1105      00
 1106 15ce BA010000 		movl	$1, %edx
 1106      00
 1107 15d3 BE000000 		movl	$.LC0, %esi
 1107      00
 1108 15d8 BF000000 		movl	$_ZSt4cout, %edi
 1108      00
 1109 15dd E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1109      00
 1110 15e2 C5FB1084 		vmovsd	160(%rsp), %xmm0
 1110      24A00000 
 1110      00
 1111 15eb BF000000 		movl	$_ZSt4cout, %edi
 1111      00
 1112 15f0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1112      00
 1113 15f5 BA010000 		movl	$1, %edx
 1113      00
 1114 15fa BE000000 		movl	$.LC0, %esi
 1114      00
 1115 15ff 4889C7   		movq	%rax, %rdi
 1116 1602 4989C6   		movq	%rax, %r14
 1117 1605 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1117      00
 1118 160a C5FB10A4 		vmovsd	144(%rsp), %xmm4
 1118      24900000 
 1118      00
 1119 1613 4C89F7   		movq	%r14, %rdi
 1120 1616 C5F928C4 		vmovapd	%xmm4, %xmm0
 1121 161a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1121      00
 1122 161f BA010000 		movl	$1, %edx
 1122      00
 1123 1624 BE000000 		movl	$.LC0, %esi
 1123      00
 1124 1629 4889C7   		movq	%rax, %rdi
 1125 162c 4989C6   		movq	%rax, %r14
 1126 162f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1126      00
 1127 1634 C5FB105C 		vmovsd	96(%rsp), %xmm3
 1127      2460
 1128 163a 4C89F7   		movq	%r14, %rdi
 1129 163d C5F928C3 		vmovapd	%xmm3, %xmm0
 1130 1641 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1130      00
 1131 1646 BA010000 		movl	$1, %edx
 1131      00
 1132 164b BE000000 		movl	$.LC0, %esi
 1132      00
 1133 1650 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/cc72IM0J.s 			page 37


 1134 1653 4989C6   		movq	%rax, %r14
 1135 1656 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1135      00
 1136 165b C5FB1054 		vmovsd	64(%rsp), %xmm2
 1136      2440
 1137 1661 4C89F7   		movq	%r14, %rdi
 1138 1664 C5F928C2 		vmovapd	%xmm2, %xmm0
 1139 1668 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1139      00
 1140 166d 4989C7   		movq	%rax, %r15
 1141 1670 488B00   		movq	(%rax), %rax
 1142 1673 488B40E8 		movq	-24(%rax), %rax
 1143 1677 4D8BB407 		movq	240(%r15,%rax), %r14
 1143      F0000000 
 1144 167f 4D85F6   		testq	%r14, %r14
 1145 1682 0F84A001 		je	.L30
 1145      0000
 1146 1688 41807E38 		cmpb	$0, 56(%r14)
 1146      00
 1147 168d 0F845D01 		je	.L28
 1147      0000
 1148 1693 410FB646 		movzbl	67(%r14), %eax
 1148      43
 1149              	.L29:
 1150 1698 0FBEF0   		movsbl	%al, %esi
 1151 169b 4C89FF   		movq	%r15, %rdi
 1152 169e E8000000 		call	_ZNSo3putEc
 1152      00
 1153 16a3 4889C7   		movq	%rax, %rdi
 1154 16a6 E8000000 		call	_ZNSo5flushEv
 1154      00
 1155 16ab C5FD288C 		vmovapd	768(%rsp), %ymm1
 1155      24000300 
 1155      00
 1156 16b4 BA050000 		movl	$5, %edx
 1156      00
 1157 16b9 BE000000 		movl	$.LC97, %esi
 1157      00
 1158 16be BF000000 		movl	$_ZSt4cout, %edi
 1158      00
 1159 16c3 C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 1159      24C00000 
 1159      00
 1160 16cc C5FB1094 		vmovsd	216(%rsp), %xmm2
 1160      24D80000 
 1160      00
 1161 16d5 C5FB109C 		vmovsd	208(%rsp), %xmm3
 1161      24D00000 
 1161      00
 1162 16de C5FB10A4 		vmovsd	200(%rsp), %xmm4
 1162      24C80000 
 1162      00
 1163 16e7 C5FB1084 		vmovsd	192(%rsp), %xmm0
 1163      24C00000 
 1163      00
 1164 16f0 C5FB1154 		vmovsd	%xmm2, 64(%rsp)
 1164      2440
GAS LISTING /tmp/cc72IM0J.s 			page 38


 1165 16f6 C5FB115C 		vmovsd	%xmm3, 96(%rsp)
 1165      2460
 1166 16fc C5FB11A4 		vmovsd	%xmm4, 144(%rsp)
 1166      24900000 
 1166      00
 1167 1705 C5FB1184 		vmovsd	%xmm0, 160(%rsp)
 1167      24A00000 
 1167      00
 1168 170e C5F877   		vzeroupper
 1169 1711 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1169      00
 1170 1716 BA010000 		movl	$1, %edx
 1170      00
 1171 171b BE000000 		movl	$.LC0, %esi
 1171      00
 1172 1720 BF000000 		movl	$_ZSt4cout, %edi
 1172      00
 1173 1725 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1173      00
 1174 172a C5FB1084 		vmovsd	160(%rsp), %xmm0
 1174      24A00000 
 1174      00
 1175 1733 BF000000 		movl	$_ZSt4cout, %edi
 1175      00
 1176 1738 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1176      00
 1177 173d BA010000 		movl	$1, %edx
 1177      00
 1178 1742 BE000000 		movl	$.LC0, %esi
 1178      00
 1179 1747 4889C7   		movq	%rax, %rdi
 1180 174a 4989C6   		movq	%rax, %r14
 1181 174d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1181      00
 1182 1752 C5FB10A4 		vmovsd	144(%rsp), %xmm4
 1182      24900000 
 1182      00
 1183 175b 4C89F7   		movq	%r14, %rdi
 1184 175e C5F928C4 		vmovapd	%xmm4, %xmm0
 1185 1762 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1185      00
 1186 1767 BA010000 		movl	$1, %edx
 1186      00
 1187 176c BE000000 		movl	$.LC0, %esi
 1187      00
 1188 1771 4889C7   		movq	%rax, %rdi
 1189 1774 4989C6   		movq	%rax, %r14
 1190 1777 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1190      00
 1191 177c C5FB105C 		vmovsd	96(%rsp), %xmm3
 1191      2460
 1192 1782 4C89F7   		movq	%r14, %rdi
 1193 1785 C5F928C3 		vmovapd	%xmm3, %xmm0
 1194 1789 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1194      00
 1195 178e BA010000 		movl	$1, %edx
 1195      00
GAS LISTING /tmp/cc72IM0J.s 			page 39


 1196 1793 BE000000 		movl	$.LC0, %esi
 1196      00
 1197 1798 4889C7   		movq	%rax, %rdi
 1198 179b 4989C6   		movq	%rax, %r14
 1199 179e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1199      00
 1200 17a3 C5FB1054 		vmovsd	64(%rsp), %xmm2
 1200      2440
 1201 17a9 4C89F7   		movq	%r14, %rdi
 1202 17ac C5F928C2 		vmovapd	%xmm2, %xmm0
 1203 17b0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1203      00
 1204 17b5 4989C7   		movq	%rax, %r15
 1205 17b8 488B00   		movq	(%rax), %rax
 1206 17bb 488B40E8 		movq	-24(%rax), %rax
 1207 17bf 4D8BB407 		movq	240(%r15,%rax), %r14
 1207      F0000000 
 1208 17c7 4D85F6   		testq	%r14, %r14
 1209 17ca 745C     		je	.L30
 1210 17cc 41807E38 		cmpb	$0, 56(%r14)
 1210      00
 1211 17d1 743D     		je	.L31
 1212 17d3 410FB646 		movzbl	67(%r14), %eax
 1212      43
 1213              	.L32:
 1214 17d8 4C89FF   		movq	%r15, %rdi
 1215 17db 0FBEF0   		movsbl	%al, %esi
 1216 17de E8000000 		call	_ZNSo3putEc
 1216      00
 1217 17e3 4889C7   		movq	%rax, %rdi
 1218 17e6 E8000000 		call	_ZNSo5flushEv
 1218      00
 1219 17eb E985FCFF 		jmp	.L26
 1219      FF
 1220              		.p2align 4,,10
 1221              		.p2align 3
 1222              	.L28:
 1223 17f0 4C89F7   		movq	%r14, %rdi
 1224 17f3 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1224      00
 1225 17f8 498B06   		movq	(%r14), %rax
 1226 17fb BE0A0000 		movl	$10, %esi
 1226      00
 1227 1800 4C89F7   		movq	%r14, %rdi
 1228 1803 FF5030   		call	*48(%rax)
 1229 1806 E98DFEFF 		jmp	.L29
 1229      FF
 1230 180b 0F1F4400 		.p2align 4,,10
 1230      00
 1231              		.p2align 3
 1232              	.L31:
 1233 1810 4C89F7   		movq	%r14, %rdi
 1234 1813 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1234      00
 1235 1818 498B06   		movq	(%r14), %rax
 1236 181b BE0A0000 		movl	$10, %esi
 1236      00
GAS LISTING /tmp/cc72IM0J.s 			page 40


 1237 1820 4C89F7   		movq	%r14, %rdi
 1238 1823 FF5030   		call	*48(%rax)
 1239 1826 EBB0     		jmp	.L32
 1240              	.L30:
 1241 1828 E8000000 		call	_ZSt16__throw_bad_castv
 1241      00
 1242              		.cfi_endproc
 1243              	.LFE4733:
 1244              		.size	main, .-main
 1245 182d 0F1F00   		.p2align 4,,15
 1246              		.type	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, @function
 1247              	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d:
 1248              	.LFB5042:
 1249              		.cfi_startproc
 1250 1830 4883EC08 		subq	$8, %rsp
 1251              		.cfi_def_cfa_offset 16
 1252 1834 BF000000 		movl	$_ZStL8__ioinit, %edi
 1252      00
 1253 1839 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1253      00
 1254 183e BA000000 		movl	$__dso_handle, %edx
 1254      00
 1255 1843 BE000000 		movl	$_ZStL8__ioinit, %esi
 1255      00
 1256 1848 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1256      00
 1257 184d 4883C408 		addq	$8, %rsp
 1258              		.cfi_def_cfa_offset 8
 1259 1851 E9000000 		jmp	__cxa_atexit
 1259      00
 1260              		.cfi_endproc
 1261              	.LFE5042:
 1262              		.size	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, .-_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1263              		.section	.init_array,"aw"
 1264              		.align 8
 1265 0000 00000000 		.quad	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1265      00000000 
 1266              		.section	.rodata
 1267              		.align 32
 1268              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1269              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1270              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1271 0000 00000000 		.long	0
 1272 0004 00000080 		.long	-2147483648
 1273 0008 00000000 		.long	0
 1274 000c 00000080 		.long	-2147483648
 1275 0010 00000000 		.long	0
 1276 0014 00000080 		.long	-2147483648
 1277 0018 00000000 		.long	0
 1278 001c 00000080 		.long	-2147483648
 1279              		.align 32
 1280              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1281              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1282              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1283 0020 FFFFFFFF 		.long	-1
 1284 0024 FFFFFF7F 		.long	2147483647
 1285 0028 FFFFFFFF 		.long	-1
GAS LISTING /tmp/cc72IM0J.s 			page 41


 1286 002c FFFFFF7F 		.long	2147483647
 1287 0030 FFFFFFFF 		.long	-1
 1288 0034 FFFFFF7F 		.long	2147483647
 1289 0038 FFFFFFFF 		.long	-1
 1290 003c FFFFFF7F 		.long	2147483647
 1291              		.local	_ZStL8__ioinit
 1292              		.comm	_ZStL8__ioinit,1,1
 1293              		.section	.rodata.cst8,"aM",@progbits,8
 1294              		.align 8
 1295              	.LC1:
 1296 0000 33333333 		.long	858993459
 1297 0004 3333D33F 		.long	1070805811
 1298              		.align 8
 1299              	.LC2:
 1300 0008 9A999999 		.long	2576980378
 1301 000c 9999C93F 		.long	1070176665
 1302              		.section	.rodata.cst32,"aM",@progbits,32
 1303              		.align 32
 1304              	.LC3:
 1305 0000 83C8C96D 		.long	1841940611
 1306 0004 305FE43F 		.long	1071931184
 1307 0008 83C8C96D 		.long	1841940611
 1308 000c 305FE43F 		.long	1071931184
 1309 0010 83C8C96D 		.long	1841940611
 1310 0014 305FE43F 		.long	1071931184
 1311 0018 83C8C96D 		.long	1841940611
 1312 001c 305FE43F 		.long	1071931184
 1313              		.align 32
 1314              	.LC4:
 1315 0020 00000050 		.long	1342177280
 1316 0024 FB21F93F 		.long	1073291771
 1317 0028 00000050 		.long	1342177280
 1318 002c FB21F93F 		.long	1073291771
 1319 0030 00000050 		.long	1342177280
 1320 0034 FB21F93F 		.long	1073291771
 1321 0038 00000050 		.long	1342177280
 1322 003c FB21F93F 		.long	1073291771
 1323              		.align 32
 1324              	.LC5:
 1325 0040 00000060 		.long	1610612736
 1326 0044 B410513E 		.long	1045500084
 1327 0048 00000060 		.long	1610612736
 1328 004c B410513E 		.long	1045500084
 1329 0050 00000060 		.long	1610612736
 1330 0054 B410513E 		.long	1045500084
 1331 0058 00000060 		.long	1610612736
 1332 005c B410513E 		.long	1045500084
 1333              		.align 32
 1334              	.LC6:
 1335 0060 075C1433 		.long	856972295
 1336 0064 26A6913C 		.long	1016178214
 1337 0068 075C1433 		.long	856972295
 1338 006c 26A6913C 		.long	1016178214
 1339 0070 075C1433 		.long	856972295
 1340 0074 26A6913C 		.long	1016178214
 1341 0078 075C1433 		.long	856972295
 1342 007c 26A6913C 		.long	1016178214
GAS LISTING /tmp/cc72IM0J.s 			page 42


 1343              		.align 32
 1344              	.LC7:
 1345 0080 D0F71011 		.long	286324688
 1346 0084 1111813F 		.long	1065423121
 1347 0088 D0F71011 		.long	286324688
 1348 008c 1111813F 		.long	1065423121
 1349 0090 D0F71011 		.long	286324688
 1350 0094 1111813F 		.long	1065423121
 1351 0098 D0F71011 		.long	286324688
 1352 009c 1111813F 		.long	1065423121
 1353              		.align 32
 1354              	.LC8:
 1355 00a0 48555555 		.long	1431655752
 1356 00a4 5555C5BF 		.long	-1077586603
 1357 00a8 48555555 		.long	1431655752
 1358 00ac 5555C5BF 		.long	-1077586603
 1359 00b0 48555555 		.long	1431655752
 1360 00b4 5555C5BF 		.long	-1077586603
 1361 00b8 48555555 		.long	1431655752
 1362 00bc 5555C5BF 		.long	-1077586603
 1363              		.align 32
 1364              	.LC9:
 1365 00c0 CD9CD11F 		.long	533830861
 1366 00c4 FDD8E53D 		.long	1038473469
 1367 00c8 CD9CD11F 		.long	533830861
 1368 00cc FDD8E53D 		.long	1038473469
 1369 00d0 CD9CD11F 		.long	533830861
 1370 00d4 FDD8E53D 		.long	1038473469
 1371 00d8 CD9CD11F 		.long	533830861
 1372 00dc FDD8E53D 		.long	1038473469
 1373              		.align 32
 1374              	.LC10:
 1375 00e0 5D1F29A9 		.long	2838044509
 1376 00e4 E5E55ABE 		.long	-1101339163
 1377 00e8 5D1F29A9 		.long	2838044509
 1378 00ec E5E55ABE 		.long	-1101339163
 1379 00f0 5D1F29A9 		.long	2838044509
 1380 00f4 E5E55ABE 		.long	-1101339163
 1381 00f8 5D1F29A9 		.long	2838044509
 1382 00fc E5E55ABE 		.long	-1101339163
 1383              		.align 32
 1384              	.LC11:
 1385 0100 A1487D56 		.long	1451051169
 1386 0104 E31DC73E 		.long	1053236707
 1387 0108 A1487D56 		.long	1451051169
 1388 010c E31DC73E 		.long	1053236707
 1389 0110 A1487D56 		.long	1451051169
 1390 0114 E31DC73E 		.long	1053236707
 1391 0118 A1487D56 		.long	1451051169
 1392 011c E31DC73E 		.long	1053236707
 1393              		.align 32
 1394              	.LC12:
 1395 0120 03DFBF19 		.long	432004867
 1396 0124 A0012ABF 		.long	-1087766112
 1397 0128 03DFBF19 		.long	432004867
 1398 012c A0012ABF 		.long	-1087766112
 1399 0130 03DFBF19 		.long	432004867
GAS LISTING /tmp/cc72IM0J.s 			page 43


 1400 0134 A0012ABF 		.long	-1087766112
 1401 0138 03DFBF19 		.long	432004867
 1402 013c A0012ABF 		.long	-1087766112
 1403              		.align 32
 1404              	.LC13:
 1405 0140 914FC116 		.long	381767569
 1406 0144 6CC156BF 		.long	-1084833428
 1407 0148 914FC116 		.long	381767569
 1408 014c 6CC156BF 		.long	-1084833428
 1409 0150 914FC116 		.long	381767569
 1410 0154 6CC156BF 		.long	-1084833428
 1411 0158 914FC116 		.long	381767569
 1412 015c 6CC156BF 		.long	-1084833428
 1413              		.align 32
 1414              	.LC14:
 1415 0160 4B555555 		.long	1431655755
 1416 0164 5555A53F 		.long	1067799893
 1417 0168 4B555555 		.long	1431655755
 1418 016c 5555A53F 		.long	1067799893
 1419 0170 4B555555 		.long	1431655755
 1420 0174 5555A53F 		.long	1067799893
 1421 0178 4B555555 		.long	1431655755
 1422 017c 5555A53F 		.long	1067799893
 1423              		.align 32
 1424              	.LC15:
 1425 0180 9B1A86A0 		.long	2693143195
 1426 0184 49FAA8BD 		.long	-1112999351
 1427 0188 9B1A86A0 		.long	2693143195
 1428 018c 49FAA8BD 		.long	-1112999351
 1429 0190 9B1A86A0 		.long	2693143195
 1430 0194 49FAA8BD 		.long	-1112999351
 1431 0198 9B1A86A0 		.long	2693143195
 1432 019c 49FAA8BD 		.long	-1112999351
 1433              		.align 32
 1434              	.LC16:
 1435 01a0 053F4E7B 		.long	2068725509
 1436 01a4 9DEE213E 		.long	1042411165
 1437 01a8 053F4E7B 		.long	2068725509
 1438 01ac 9DEE213E 		.long	1042411165
 1439 01b0 053F4E7B 		.long	2068725509
 1440 01b4 9DEE213E 		.long	1042411165
 1441 01b8 053F4E7B 		.long	2068725509
 1442 01bc 9DEE213E 		.long	1042411165
 1443              		.align 32
 1444              	.LC17:
 1445 01c0 C64BAC7E 		.long	2125220806
 1446 01c4 4F7E92BE 		.long	-1097695665
 1447 01c8 C64BAC7E 		.long	2125220806
 1448 01cc 4F7E92BE 		.long	-1097695665
 1449 01d0 C64BAC7E 		.long	2125220806
 1450 01d4 4F7E92BE 		.long	-1097695665
 1451 01d8 C64BAC7E 		.long	2125220806
 1452 01dc 4F7E92BE 		.long	-1097695665
 1453              		.align 32
 1454              	.LC18:
 1455 01e0 F544C819 		.long	432555253
 1456 01e4 A001FA3E 		.long	1056571808
GAS LISTING /tmp/cc72IM0J.s 			page 44


 1457 01e8 F544C819 		.long	432555253
 1458 01ec A001FA3E 		.long	1056571808
 1459 01f0 F544C819 		.long	432555253
 1460 01f4 A001FA3E 		.long	1056571808
 1461 01f8 F544C819 		.long	432555253
 1462 01fc A001FA3E 		.long	1056571808
 1463              		.align 32
 1464              	.LC19:
 1465 0200 00000000 		.long	0
 1466 0204 0000E03F 		.long	1071644672
 1467 0208 00000000 		.long	0
 1468 020c 0000E03F 		.long	1071644672
 1469 0210 00000000 		.long	0
 1470 0214 0000E03F 		.long	1071644672
 1471 0218 00000000 		.long	0
 1472 021c 0000E03F 		.long	1071644672
 1473              		.align 32
 1474              	.LC20:
 1475 0220 00000000 		.long	0
 1476 0224 0000F03F 		.long	1072693248
 1477 0228 00000000 		.long	0
 1478 022c 0000F03F 		.long	1072693248
 1479 0230 00000000 		.long	0
 1480 0234 0000F03F 		.long	1072693248
 1481 0238 00000000 		.long	0
 1482 023c 0000F03F 		.long	1072693248
 1483              		.section	.rodata.cst16,"aM",@progbits,16
 1484              		.align 16
 1485              	.LC21:
 1486 0000 01000000 		.quad	1
 1486      00000000 
 1487 0008 01000000 		.quad	1
 1487      00000000 
 1488              		.align 16
 1489              	.LC22:
 1490 0010 00000000 		.quad	36028797018963968
 1490      00008000 
 1491 0018 00000000 		.quad	36028797018963968
 1491      00008000 
 1492              		.align 16
 1493              	.LC23:
 1494 0020 00000000 		.quad	-9007199254740992
 1494      0000E0FF 
 1495 0028 00000000 		.quad	-9007199254740992
 1495      0000E0FF 
 1496              		.align 16
 1497              	.LC24:
 1498 0030 02000000 		.quad	2
 1498      00000000 
 1499 0038 02000000 		.quad	2
 1499      00000000 
 1500              		.section	.rodata.cst32
 1501              		.align 32
 1502              	.LC25:
 1503 0240 33333333 		.long	858993459
 1504 0244 3333D33F 		.long	1070805811
 1505 0248 33333333 		.long	858993459
GAS LISTING /tmp/cc72IM0J.s 			page 45


 1506 024c 3333D33F 		.long	1070805811
 1507 0250 33333333 		.long	858993459
 1508 0254 3333D33F 		.long	1070805811
 1509 0258 33333333 		.long	858993459
 1510 025c 3333D33F 		.long	1070805811
 1511              		.align 32
 1512              	.LC26:
 1513 0260 9A999999 		.long	2576980378
 1514 0264 9999C93F 		.long	1070176665
 1515 0268 9A999999 		.long	2576980378
 1516 026c 9999C93F 		.long	1070176665
 1517 0270 9A999999 		.long	2576980378
 1518 0274 9999C93F 		.long	1070176665
 1519 0278 9A999999 		.long	2576980378
 1520 027c 9999C93F 		.long	1070176665
 1521              		.align 32
 1522              	.LC27:
 1523 0280 CDCCCCCC 		.long	3435973837
 1524 0284 CCCCCC3F 		.long	1070386380
 1525 0288 CDCCCCCC 		.long	3435973837
 1526 028c CCCCCC3F 		.long	1070386380
 1527 0290 CDCCCCCC 		.long	3435973837
 1528 0294 CCCCCC3F 		.long	1070386380
 1529 0298 CDCCCCCC 		.long	3435973837
 1530 029c CCCCCC3F 		.long	1070386380
 1531              		.align 32
 1532              	.LC28:
 1533 02a0 33333333 		.long	858993459
 1534 02a4 3333B33F 		.long	1068708659
 1535 02a8 33333333 		.long	858993459
 1536 02ac 3333B33F 		.long	1068708659
 1537 02b0 33333333 		.long	858993459
 1538 02b4 3333B33F 		.long	1068708659
 1539 02b8 33333333 		.long	858993459
 1540 02bc 3333B33F 		.long	1068708659
 1541              		.align 32
 1542              	.LC29:
 1543 02c0 33333333 		.long	858993459
 1544 02c4 3333F33F 		.long	1072902963
 1545 02c8 33333333 		.long	858993459
 1546 02cc 3333F33F 		.long	1072902963
 1547 02d0 33333333 		.long	858993459
 1548 02d4 3333F33F 		.long	1072902963
 1549 02d8 33333333 		.long	858993459
 1550 02dc 3333F33F 		.long	1072902963
 1551              		.align 32
 1552              	.LC30:
 1553 02e0 CDCCCCCC 		.long	3435973837
 1554 02e4 CCCCECBF 		.long	-1075000116
 1555 02e8 CDCCCCCC 		.long	3435973837
 1556 02ec CCCCECBF 		.long	-1075000116
 1557 02f0 CDCCCCCC 		.long	3435973837
 1558 02f4 CCCCECBF 		.long	-1075000116
 1559 02f8 CDCCCCCC 		.long	3435973837
 1560 02fc CCCCECBF 		.long	-1075000116
 1561              		.align 32
 1562              	.LC31:
GAS LISTING /tmp/cc72IM0J.s 			page 46


 1563 0300 D94B682F 		.long	795364313
 1564 0304 A1BDF43F 		.long	1073003937
 1565 0308 D94B682F 		.long	795364313
 1566 030c A1BDF43F 		.long	1073003937
 1567 0310 D94B682F 		.long	795364313
 1568 0314 A1BDF43F 		.long	1073003937
 1569 0318 D94B682F 		.long	795364313
 1570 031c A1BDF43F 		.long	1073003937
 1571              		.align 32
 1572              	.LC32:
 1573 0320 D44B682F 		.long	795364308
 1574 0324 A1BD04C0 		.long	-1073431135
 1575 0328 D44B682F 		.long	795364308
 1576 032c A1BD04C0 		.long	-1073431135
 1577 0330 D44B682F 		.long	795364308
 1578 0334 A1BD04C0 		.long	-1073431135
 1579 0338 D44B682F 		.long	795364308
 1580 033c A1BD04C0 		.long	-1073431135
 1581              		.align 32
 1582              	.LC33:
 1583 0340 00000000 		.long	0
 1584 0344 00000440 		.long	1074003968
 1585 0348 00000000 		.long	0
 1586 034c 00000440 		.long	1074003968
 1587 0350 00000000 		.long	0
 1588 0354 00000440 		.long	1074003968
 1589 0358 00000000 		.long	0
 1590 035c 00000440 		.long	1074003968
 1591              		.align 32
 1592              	.LC34:
 1593 0360 2FA1BD84 		.long	2227020079
 1594 0364 F612CABF 		.long	-1077275914
 1595 0368 2FA1BD84 		.long	2227020079
 1596 036c F612CABF 		.long	-1077275914
 1597 0370 2FA1BD84 		.long	2227020079
 1598 0374 F612CABF 		.long	-1077275914
 1599 0378 2FA1BD84 		.long	2227020079
 1600 037c F612CABF 		.long	-1077275914
 1601              		.align 32
 1602              	.LC35:
 1603 0380 00000000 		.long	0
 1604 0384 00A0AF3F 		.long	1068474368
 1605 0388 00000000 		.long	0
 1606 038c 00A0AF3F 		.long	1068474368
 1607 0390 00000000 		.long	0
 1608 0394 00A0AF3F 		.long	1068474368
 1609 0398 00000000 		.long	0
 1610 039c 00A0AF3F 		.long	1068474368
 1611              		.align 32
 1612              	.LC36:
 1613 03a0 B497D05E 		.long	1590728628
 1614 03a4 429FD93F 		.long	1071226690
 1615 03a8 B497D05E 		.long	1590728628
 1616 03ac 429FD93F 		.long	1071226690
 1617 03b0 B497D05E 		.long	1590728628
 1618 03b4 429FD93F 		.long	1071226690
 1619 03b8 B497D05E 		.long	1590728628
GAS LISTING /tmp/cc72IM0J.s 			page 47


 1620 03bc 429FD93F 		.long	1071226690
 1621              		.align 32
 1622              	.LC37:
 1623 03c0 BE84F612 		.long	318145726
 1624 03c4 DA4BA53F 		.long	1067797466
 1625 03c8 BE84F612 		.long	318145726
 1626 03cc DA4BA53F 		.long	1067797466
 1627 03d0 BE84F612 		.long	318145726
 1628 03d4 DA4BA53F 		.long	1067797466
 1629 03d8 BE84F612 		.long	318145726
 1630 03dc DA4BA53F 		.long	1067797466
 1631              		.align 32
 1632              	.LC38:
 1633 03e0 00000000 		.long	0
 1634 03e4 00E0D53F 		.long	1070981120
 1635 03e8 00000000 		.long	0
 1636 03ec 00E0D53F 		.long	1070981120
 1637 03f0 00000000 		.long	0
 1638 03f4 00E0D53F 		.long	1070981120
 1639 03f8 00000000 		.long	0
 1640 03fc 00E0D53F 		.long	1070981120
 1641              		.align 32
 1642              	.LC39:
 1643 0400 427B09ED 		.long	3976821570
 1644 0404 25349E3F 		.long	1067332645
 1645 0408 427B09ED 		.long	3976821570
 1646 040c 25349E3F 		.long	1067332645
 1647 0410 427B09ED 		.long	3976821570
 1648 0414 25349E3F 		.long	1067332645
 1649 0418 427B09ED 		.long	3976821570
 1650 041c 25349E3F 		.long	1067332645
 1651              		.align 32
 1652              	.LC40:
 1653 0420 B0B4DA85 		.long	2245702832
 1654 0424 A680D23F 		.long	1070760102
 1655 0428 B0B4DA85 		.long	2245702832
 1656 042c A680D23F 		.long	1070760102
 1657 0430 B0B4DA85 		.long	2245702832
 1658 0434 A680D23F 		.long	1070760102
 1659 0438 B0B4DA85 		.long	2245702832
 1660 043c A680D23F 		.long	1070760102
 1661              		.align 32
 1662              	.LC41:
 1663 0440 29691676 		.long	1981180201
 1664 0444 9FEFCA3F 		.long	1070264223
 1665 0448 29691676 		.long	1981180201
 1666 044c 9FEFCA3F 		.long	1070264223
 1667 0450 29691676 		.long	1981180201
 1668 0454 9FEFCA3F 		.long	1070264223
 1669 0458 29691676 		.long	1981180201
 1670 045c 9FEFCA3F 		.long	1070264223
 1671              		.align 32
 1672              	.LC42:
 1673 0460 80B22B2E 		.long	774615680
 1674 0464 D0C3D93F 		.long	1071236048
 1675 0468 80B22B2E 		.long	774615680
 1676 046c D0C3D93F 		.long	1071236048
GAS LISTING /tmp/cc72IM0J.s 			page 48


 1677 0470 80B22B2E 		.long	774615680
 1678 0474 D0C3D93F 		.long	1071236048
 1679 0478 80B22B2E 		.long	774615680
 1680 047c D0C3D93F 		.long	1071236048
 1681              		.align 32
 1682              	.LC43:
 1683 0480 EE90B943 		.long	1136234734
 1684 0484 E60EB93F 		.long	1069092582
 1685 0488 EE90B943 		.long	1136234734
 1686 048c E60EB93F 		.long	1069092582
 1687 0490 EE90B943 		.long	1136234734
 1688 0494 E60EB93F 		.long	1069092582
 1689 0498 EE90B943 		.long	1136234734
 1690 049c E60EB93F 		.long	1069092582
 1691              		.align 32
 1692              	.LC44:
 1693 04a0 83A5D52E 		.long	785753475
 1694 04a4 3405A4BF 		.long	-1079769804
 1695 04a8 83A5D52E 		.long	785753475
 1696 04ac 3405A4BF 		.long	-1079769804
 1697 04b0 83A5D52E 		.long	785753475
 1698 04b4 3405A4BF 		.long	-1079769804
 1699 04b8 83A5D52E 		.long	785753475
 1700 04bc 3405A4BF 		.long	-1079769804
 1701              		.align 32
 1702              	.LC45:
 1703 04c0 92244992 		.long	2454267026
 1704 04c4 24C9933F 		.long	1066649892
 1705 04c8 92244992 		.long	2454267026
 1706 04cc 24C9933F 		.long	1066649892
 1707 04d0 92244992 		.long	2454267026
 1708 04d4 24C9933F 		.long	1066649892
 1709 04d8 92244992 		.long	2454267026
 1710 04dc 24C9933F 		.long	1066649892
 1711              		.align 32
 1712              	.LC46:
 1713 04e0 12F37686 		.long	2255942418
 1714 04e4 C47CA13F 		.long	1067547844
 1715 04e8 12F37686 		.long	2255942418
 1716 04ec C47CA13F 		.long	1067547844
 1717 04f0 12F37686 		.long	2255942418
 1718 04f4 C47CA13F 		.long	1067547844
 1719 04f8 12F37686 		.long	2255942418
 1720 04fc C47CA13F 		.long	1067547844
 1721              		.align 32
 1722              	.LC47:
 1723 0500 0A56F19A 		.long	2599507466
 1724 0504 DB1D93BF 		.long	-1080877605
 1725 0508 0A56F19A 		.long	2599507466
 1726 050c DB1D93BF 		.long	-1080877605
 1727 0510 0A56F19A 		.long	2599507466
 1728 0514 DB1D93BF 		.long	-1080877605
 1729 0518 0A56F19A 		.long	2599507466
 1730 051c DB1D93BF 		.long	-1080877605
 1731              		.align 32
 1732              	.LC48:
 1733 0520 66599665 		.long	1704352102
GAS LISTING /tmp/cc72IM0J.s 			page 49


 1734 0524 5996713F 		.long	1064408665
 1735 0528 66599665 		.long	1704352102
 1736 052c 5996713F 		.long	1064408665
 1737 0530 66599665 		.long	1704352102
 1738 0534 5996713F 		.long	1064408665
 1739 0538 66599665 		.long	1704352102
 1740 053c 5996713F 		.long	1064408665
 1741              		.align 32
 1742              	.LC49:
 1743 0540 95D626E8 		.long	3894859413
 1744 0544 0B2E113E 		.long	1041313291
 1745 0548 95D626E8 		.long	3894859413
 1746 054c 0B2E113E 		.long	1041313291
 1747 0550 95D626E8 		.long	3894859413
 1748 0554 0B2E113E 		.long	1041313291
 1749 0558 95D626E8 		.long	3894859413
 1750 055c 0B2E113E 		.long	1041313291
 1751              		.section	.rodata.cst16
 1752              		.align 16
 1753              	.LC50:
 1754 0040 FFFFFFFF 		.quad	4503599627370495
 1754      FFFF0F00 
 1755 0048 FFFFFFFF 		.quad	4503599627370495
 1755      FFFF0F00 
 1756              		.align 16
 1757              	.LC51:
 1758 0050 00000000 		.quad	4602678819172646912
 1758      0000E03F 
 1759 0058 00000000 		.quad	4602678819172646912
 1759      0000E03F 
 1760              		.align 16
 1761              	.LC52:
 1762 0060 00000000 		.quad	4841369599423283200
 1762      00003043 
 1763 0068 00000000 		.quad	4841369599423283200
 1763      00003043 
 1764              		.section	.rodata.cst32
 1765              		.align 32
 1766              	.LC53:
 1767 0560 FF030000 		.long	1023
 1768 0564 00003043 		.long	1127219200
 1769 0568 FF030000 		.long	1023
 1770 056c 00003043 		.long	1127219200
 1771 0570 FF030000 		.long	1023
 1772 0574 00003043 		.long	1127219200
 1773 0578 FF030000 		.long	1023
 1774 057c 00003043 		.long	1127219200
 1775              		.align 32
 1776              	.LC54:
 1777 0580 CD3B7F66 		.long	1719614413
 1778 0584 9EA0E63F 		.long	1072079006
 1779 0588 CD3B7F66 		.long	1719614413
 1780 058c 9EA0E63F 		.long	1072079006
 1781 0590 CD3B7F66 		.long	1719614413
 1782 0594 9EA0E63F 		.long	1072079006
 1783 0598 CD3B7F66 		.long	1719614413
 1784 059c 9EA0E63F 		.long	1072079006
GAS LISTING /tmp/cc72IM0J.s 			page 50


 1785              		.section	.rodata.cst16
 1786              		.align 16
 1787              	.LC55:
 1788 0070 FFFFFFFF 		.long	4294967295
 1789 0074 FFFFFFFF 		.long	-1
 1790 0078 FFFFFFFF 		.long	4294967295
 1791 007c FFFFFFFF 		.long	-1
 1792              		.section	.rodata.cst32
 1793              		.align 32
 1794              	.LC56:
 1795 05a0 4DC84B92 		.long	2454440013
 1796 05a4 D6EF3140 		.long	1077014486
 1797 05a8 4DC84B92 		.long	2454440013
 1798 05ac D6EF3140 		.long	1077014486
 1799 05b0 4DC84B92 		.long	2454440013
 1800 05b4 D6EF3140 		.long	1077014486
 1801 05b8 4DC84B92 		.long	2454440013
 1802 05bc D6EF3140 		.long	1077014486
 1803              		.align 32
 1804              	.LC57:
 1805 05c0 F8DC7E7D 		.long	2105466104
 1806 05c4 63D51E40 		.long	1075762531
 1807 05c8 F8DC7E7D 		.long	2105466104
 1808 05cc 63D51E40 		.long	1075762531
 1809 05d0 F8DC7E7D 		.long	2105466104
 1810 05d4 63D51E40 		.long	1075762531
 1811 05d8 F8DC7E7D 		.long	2105466104
 1812 05dc 63D51E40 		.long	1075762531
 1813              		.align 32
 1814              	.LC58:
 1815 05e0 B01BC393 		.long	2479037360
 1816 05e4 C2B41A3F 		.long	1058714818
 1817 05e8 B01BC393 		.long	2479037360
 1818 05ec C2B41A3F 		.long	1058714818
 1819 05f0 B01BC393 		.long	2479037360
 1820 05f4 C2B41A3F 		.long	1058714818
 1821 05f8 B01BC393 		.long	2479037360
 1822 05fc C2B41A3F 		.long	1058714818
 1823              		.align 32
 1824              	.LC59:
 1825 0600 F252563F 		.long	1062621938
 1826 0604 F5D6DF3F 		.long	1071634165
 1827 0608 F252563F 		.long	1062621938
 1828 060c F5D6DF3F 		.long	1071634165
 1829 0610 F252563F 		.long	1062621938
 1830 0614 F5D6DF3F 		.long	1071634165
 1831 0618 F252563F 		.long	1062621938
 1832 061c F5D6DF3F 		.long	1071634165
 1833              		.align 32
 1834              	.LC60:
 1835 0620 116992ED 		.long	3985795345
 1836 0624 BAD21240 		.long	1074975418
 1837 0628 116992ED 		.long	3985795345
 1838 062c BAD21240 		.long	1074975418
 1839 0630 116992ED 		.long	3985795345
 1840 0634 BAD21240 		.long	1074975418
 1841 0638 116992ED 		.long	3985795345
GAS LISTING /tmp/cc72IM0J.s 			page 51


 1842 063c BAD21240 		.long	1074975418
 1843              		.align 32
 1844              	.LC61:
 1845 0640 2EEB3EC6 		.long	3326012206
 1846 0644 72FF2C40 		.long	1076690802
 1847 0648 2EEB3EC6 		.long	3326012206
 1848 064c 72FF2C40 		.long	1076690802
 1849 0650 2EEB3EC6 		.long	3326012206
 1850 0654 72FF2C40 		.long	1076690802
 1851 0658 2EEB3EC6 		.long	3326012206
 1852 065c 72FF2C40 		.long	1076690802
 1853              		.align 32
 1854              	.LC62:
 1855 0660 21AE5EEB 		.long	3948850721
 1856 0664 E2C95140 		.long	1079101922
 1857 0668 21AE5EEB 		.long	3948850721
 1858 066c E2C95140 		.long	1079101922
 1859 0670 21AE5EEB 		.long	3948850721
 1860 0674 E2C95140 		.long	1079101922
 1861 0678 21AE5EEB 		.long	3948850721
 1862 067c E2C95140 		.long	1079101922
 1863              		.align 32
 1864              	.LC63:
 1865 0680 B2251F9E 		.long	2652841394
 1866 0684 0A203740 		.long	1077354506
 1867 0688 B2251F9E 		.long	2652841394
 1868 068c 0A203740 		.long	1077354506
 1869 0690 B2251F9E 		.long	2652841394
 1870 0694 0A203740 		.long	1077354506
 1871 0698 B2251F9E 		.long	2652841394
 1872 069c 0A203740 		.long	1077354506
 1873              		.align 32
 1874              	.LC64:
 1875 06a0 8EEF97AE 		.long	2929192846
 1876 06a4 20932640 		.long	1076269856
 1877 06a8 8EEF97AE 		.long	2929192846
 1878 06ac 20932640 		.long	1076269856
 1879 06b0 8EEF97AE 		.long	2929192846
 1880 06b4 20932640 		.long	1076269856
 1881 06b8 8EEF97AE 		.long	2929192846
 1882 06bc 20932640 		.long	1076269856
 1883              		.align 32
 1884              	.LC65:
 1885 06c0 33C0194E 		.long	1310310451
 1886 06c4 2C9D4640 		.long	1078369580
 1887 06c8 33C0194E 		.long	1310310451
 1888 06cc 2C9D4640 		.long	1078369580
 1889 06d0 33C0194E 		.long	1310310451
 1890 06d4 2C9D4640 		.long	1078369580
 1891 06d8 33C0194E 		.long	1310310451
 1892 06dc 2C9D4640 		.long	1078369580
 1893              		.align 32
 1894              	.LC66:
 1895 06e0 BDBD26A3 		.long	2737225149
 1896 06e4 33BF5440 		.long	1079295795
 1897 06e8 BDBD26A3 		.long	2737225149
 1898 06ec 33BF5440 		.long	1079295795
GAS LISTING /tmp/cc72IM0J.s 			page 52


 1899 06f0 BDBD26A3 		.long	2737225149
 1900 06f4 33BF5440 		.long	1079295795
 1901 06f8 BDBD26A3 		.long	2737225149
 1902 06fc 33BF5440 		.long	1079295795
 1903              		.align 32
 1904              	.LC67:
 1905 0700 A80C615C 		.long	1549864104
 1906 0704 10D02BBF 		.long	-1087647728
 1907 0708 A80C615C 		.long	1549864104
 1908 070c 10D02BBF 		.long	-1087647728
 1909 0710 A80C615C 		.long	1549864104
 1910 0714 10D02BBF 		.long	-1087647728
 1911 0718 A80C615C 		.long	1549864104
 1912 071c 10D02BBF 		.long	-1087647728
 1913              		.align 32
 1914              	.LC68:
 1915 0720 00000000 		.long	0
 1916 0724 0030E63F 		.long	1072050176
 1917 0728 00000000 		.long	0
 1918 072c 0030E63F 		.long	1072050176
 1919 0730 00000000 		.long	0
 1920 0734 0030E63F 		.long	1072050176
 1921 0738 00000000 		.long	0
 1922 073c 0030E63F 		.long	1072050176
 1923              		.align 32
 1924              	.LC69:
 1925 0740 00000000 		.long	0
 1926 0744 00001000 		.long	1048576
 1927 0748 00000000 		.long	0
 1928 074c 00001000 		.long	1048576
 1929 0750 00000000 		.long	0
 1930 0754 00001000 		.long	1048576
 1931 0758 00000000 		.long	0
 1932 075c 00001000 		.long	1048576
 1933              		.align 32
 1934              	.LC70:
 1935 0760 00000020 		.long	536870912
 1936 0764 2000F87F 		.long	2146959392
 1937 0768 00000020 		.long	536870912
 1938 076c 2000F87F 		.long	2146959392
 1939 0770 00000020 		.long	536870912
 1940 0774 2000F87F 		.long	2146959392
 1941 0778 00000020 		.long	536870912
 1942 077c 2000F87F 		.long	2146959392
 1943              		.section	.rodata.cst16
 1944              		.align 16
 1945              	.LC71:
 1946 0080 00000000 		.long	0
 1947 0084 0000F07F 		.long	2146435072
 1948 0088 00000000 		.long	0
 1949 008c 0000F07F 		.long	2146435072
 1950              		.align 16
 1951              	.LC72:
 1952 0090 00000000 		.quad	9218868437227405312
 1952      0000F07F 
 1953 0098 00000000 		.quad	9218868437227405312
 1953      0000F07F 
GAS LISTING /tmp/cc72IM0J.s 			page 53


 1954              		.section	.rodata.cst32
 1955              		.align 32
 1956              	.LC73:
 1957 0780 FE822B65 		.long	1697350398
 1958 0784 4715F73F 		.long	1073157447
 1959 0788 FE822B65 		.long	1697350398
 1960 078c 4715F73F 		.long	1073157447
 1961 0790 FE822B65 		.long	1697350398
 1962 0794 4715F73F 		.long	1073157447
 1963 0798 FE822B65 		.long	1697350398
 1964 079c 4715F73F 		.long	1073157447
 1965              		.align 32
 1966              	.LC74:
 1967 07a0 00000000 		.long	0
 1968 07a4 402EE63F 		.long	1072049728
 1969 07a8 00000000 		.long	0
 1970 07ac 402EE63F 		.long	1072049728
 1971 07b0 00000000 		.long	0
 1972 07b4 402EE63F 		.long	1072049728
 1973 07b8 00000000 		.long	0
 1974 07bc 402EE63F 		.long	1072049728
 1975              		.align 32
 1976              	.LC75:
 1977 07c0 CAAB79CF 		.long	3480857546
 1978 07c4 D1F7B73E 		.long	1052243921
 1979 07c8 CAAB79CF 		.long	3480857546
 1980 07cc D1F7B73E 		.long	1052243921
 1981 07d0 CAAB79CF 		.long	3480857546
 1982 07d4 D1F7B73E 		.long	1052243921
 1983 07d8 CAAB79CF 		.long	3480857546
 1984 07dc D1F7B73E 		.long	1052243921
 1985              		.align 32
 1986              	.LC76:
 1987 07e0 55555555 		.long	1431655765
 1988 07e4 5555C53F 		.long	1069897045
 1989 07e8 55555555 		.long	1431655765
 1990 07ec 5555C53F 		.long	1069897045
 1991 07f0 55555555 		.long	1431655765
 1992 07f4 5555C53F 		.long	1069897045
 1993 07f8 55555555 		.long	1431655765
 1994 07fc 5555C53F 		.long	1069897045
 1995              		.align 32
 1996              	.LC77:
 1997 0800 11111111 		.long	286331153
 1998 0804 1111813F 		.long	1065423121
 1999 0808 11111111 		.long	286331153
 2000 080c 1111813F 		.long	1065423121
 2001 0810 11111111 		.long	286331153
 2002 0814 1111813F 		.long	1065423121
 2003 0818 11111111 		.long	286331153
 2004 081c 1111813F 		.long	1065423121
 2005              		.align 32
 2006              	.LC78:
 2007 0820 55555555 		.long	1431655765
 2008 0824 5555A53F 		.long	1067799893
 2009 0828 55555555 		.long	1431655765
 2010 082c 5555A53F 		.long	1067799893
GAS LISTING /tmp/cc72IM0J.s 			page 54


 2011 0830 55555555 		.long	1431655765
 2012 0834 5555A53F 		.long	1067799893
 2013 0838 55555555 		.long	1431655765
 2014 083c 5555A53F 		.long	1067799893
 2015              		.align 32
 2016              	.LC79:
 2017 0840 1AA0011A 		.long	436314138
 2018 0844 A0012A3F 		.long	1059717536
 2019 0848 1AA0011A 		.long	436314138
 2020 084c A0012A3F 		.long	1059717536
 2021 0850 1AA0011A 		.long	436314138
 2022 0854 A0012A3F 		.long	1059717536
 2023 0858 1AA0011A 		.long	436314138
 2024 085c A0012A3F 		.long	1059717536
 2025              		.align 32
 2026              	.LC80:
 2027 0860 176CC116 		.long	381774871
 2028 0864 6CC1563F 		.long	1062650220
 2029 0868 176CC116 		.long	381774871
 2030 086c 6CC1563F 		.long	1062650220
 2031 0870 176CC116 		.long	381774871
 2032 0874 6CC1563F 		.long	1062650220
 2033 0878 176CC116 		.long	381774871
 2034 087c 6CC1563F 		.long	1062650220
 2035              		.align 32
 2036              	.LC81:
 2037 0880 34C756A5 		.long	2773927732
 2038 0884 E31DC73E 		.long	1053236707
 2039 0888 34C756A5 		.long	2773927732
 2040 088c E31DC73E 		.long	1053236707
 2041 0890 34C756A5 		.long	2773927732
 2042 0894 E31DC73E 		.long	1053236707
 2043 0898 34C756A5 		.long	2773927732
 2044 089c E31DC73E 		.long	1053236707
 2045              		.align 32
 2046              	.LC82:
 2047 08a0 1AA0011A 		.long	436314138
 2048 08a4 A001FA3E 		.long	1056571808
 2049 08a8 1AA0011A 		.long	436314138
 2050 08ac A001FA3E 		.long	1056571808
 2051 08b0 1AA0011A 		.long	436314138
 2052 08b4 A001FA3E 		.long	1056571808
 2053 08b8 1AA0011A 		.long	436314138
 2054 08bc A001FA3E 		.long	1056571808
 2055              		.align 32
 2056              	.LC83:
 2057 08c0 E444F567 		.long	1744127204
 2058 08c4 45E65A3E 		.long	1046144581
 2059 08c8 E444F567 		.long	1744127204
 2060 08cc 45E65A3E 		.long	1046144581
 2061 08d0 E444F567 		.long	1744127204
 2062 08d4 45E65A3E 		.long	1046144581
 2063 08d8 E444F567 		.long	1744127204
 2064 08dc 45E65A3E 		.long	1046144581
 2065              		.align 32
 2066              	.LC84:
 2067 08e0 5C9F78B7 		.long	3078135644
GAS LISTING /tmp/cc72IM0J.s 			page 55


 2068 08e4 4F7E923E 		.long	1049787983
 2069 08e8 5C9F78B7 		.long	3078135644
 2070 08ec 4F7E923E 		.long	1049787983
 2071 08f0 5C9F78B7 		.long	3078135644
 2072 08f4 4F7E923E 		.long	1049787983
 2073 08f8 5C9F78B7 		.long	3078135644
 2074 08fc 4F7E923E 		.long	1049787983
 2075              		.align 32
 2076              	.LC85:
 2077 0900 096DA813 		.long	329805065
 2078 0904 4612E63D 		.long	1038488134
 2079 0908 096DA813 		.long	329805065
 2080 090c 4612E63D 		.long	1038488134
 2081 0910 096DA813 		.long	329805065
 2082 0914 4612E63D 		.long	1038488134
 2083 0918 096DA813 		.long	329805065
 2084 091c 4612E63D 		.long	1038488134
 2085              		.align 32
 2086              	.LC86:
 2087 0920 98D8F8EF 		.long	4026063000
 2088 0924 D8EE213E 		.long	1042411224
 2089 0928 98D8F8EF 		.long	4026063000
 2090 092c D8EE213E 		.long	1042411224
 2091 0930 98D8F8EF 		.long	4026063000
 2092 0934 D8EE213E 		.long	1042411224
 2093 0938 98D8F8EF 		.long	4026063000
 2094 093c D8EE213E 		.long	1042411224
 2095              		.align 32
 2096              	.LC87:
 2097 0940 85EB51B8 		.long	3092376453
 2098 0944 1E238640 		.long	1082532638
 2099 0948 85EB51B8 		.long	3092376453
 2100 094c 1E238640 		.long	1082532638
 2101 0950 85EB51B8 		.long	3092376453
 2102 0954 1E238640 		.long	1082532638
 2103 0958 85EB51B8 		.long	3092376453
 2104 095c 1E238640 		.long	1082532638
 2105              		.align 32
 2106              	.LC88:
 2107 0960 2D431CEB 		.long	3944497965
 2108 0964 E2361A3F 		.long	1058682594
 2109 0968 2D431CEB 		.long	3944497965
 2110 096c E2361A3F 		.long	1058682594
 2111 0970 2D431CEB 		.long	3944497965
 2112 0974 E2361A3F 		.long	1058682594
 2113 0978 2D431CEB 		.long	3944497965
 2114 097c E2361A3F 		.long	1058682594
 2115              		.align 32
 2116              	.LC89:
 2117 0980 00000000 		.long	0
 2118 0984 00001440 		.long	1075052544
 2119 0988 00000000 		.long	0
 2120 098c 00001440 		.long	1075052544
 2121 0990 00000000 		.long	0
 2122 0994 00001440 		.long	1075052544
 2123 0998 00000000 		.long	0
 2124 099c 00001440 		.long	1075052544
GAS LISTING /tmp/cc72IM0J.s 			page 56


 2125              		.align 32
 2126              	.LC90:
 2127 09a0 9A999999 		.long	2576980378
 2128 09a4 9999E93F 		.long	1072273817
 2129 09a8 9A999999 		.long	2576980378
 2130 09ac 9999E93F 		.long	1072273817
 2131 09b0 9A999999 		.long	2576980378
 2132 09b4 9999E93F 		.long	1072273817
 2133 09b8 9A999999 		.long	2576980378
 2134 09bc 9999E93F 		.long	1072273817
 2135              		.align 32
 2136              	.LC91:
 2137 09c0 00000000 		.long	0
 2138 09c4 00408F40 		.long	1083129856
 2139 09c8 00000000 		.long	0
 2140 09cc 00408F40 		.long	1083129856
 2141 09d0 00000000 		.long	0
 2142 09d4 00408F40 		.long	1083129856
 2143 09d8 00000000 		.long	0
 2144 09dc 00408F40 		.long	1083129856
 2145              		.align 32
 2146              	.LC92:
 2147 09e0 814EE62E 		.long	786845313
 2148 09e4 0BEBB940 		.long	1085926155
 2149 09e8 814EE62E 		.long	786845313
 2150 09ec 0BEBB940 		.long	1085926155
 2151 09f0 814EE62E 		.long	786845313
 2152 09f4 0BEBB940 		.long	1085926155
 2153 09f8 814EE62E 		.long	786845313
 2154 09fc 0BEBB940 		.long	1085926155
 2155              		.align 32
 2156              	.LC98:
 2157 0a00 7B14AE47 		.long	1202590843
 2158 0a04 E17A843F 		.long	1065646817
 2159 0a08 7B14AE47 		.long	1202590843
 2160 0a0c E17A843F 		.long	1065646817
 2161 0a10 7B14AE47 		.long	1202590843
 2162 0a14 E17A843F 		.long	1065646817
 2163 0a18 7B14AE47 		.long	1202590843
 2164 0a1c E17A843F 		.long	1065646817
 2165              		.align 32
 2166              	.LC99:
 2167 0a20 00000000 		.long	0
 2168 0a24 0000E0BF 		.long	-1075838976
 2169 0a28 00000000 		.long	0
 2170 0a2c 0000E0BF 		.long	-1075838976
 2171 0a30 00000000 		.long	0
 2172 0a34 0000E0BF 		.long	-1075838976
 2173 0a38 00000000 		.long	0
 2174 0a3c 0000E0BF 		.long	-1075838976
 2175              		.align 32
 2176              	.LC100:
 2177 0a40 9A999999 		.long	2576980378
 2178 0a44 9999B9BF 		.long	-1078355559
 2179 0a48 9A999999 		.long	2576980378
 2180 0a4c 9999B9BF 		.long	-1078355559
 2181 0a50 9A999999 		.long	2576980378
GAS LISTING /tmp/cc72IM0J.s 			page 57


 2182 0a54 9999B9BF 		.long	-1078355559
 2183 0a58 9A999999 		.long	2576980378
 2184 0a5c 9999B9BF 		.long	-1078355559
 2185              		.section	.rodata.cst16
 2186              		.align 16
 2187              	.LC103:
 2188 00a0 FFFFFFFF 		.quad	-1
 2188      FFFFFFFF 
 2189 00a8 FFFFFFFF 		.quad	-1
 2189      FFFFFFFF 
 2190              		.hidden	__dso_handle
 2191              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2192              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cc72IM0J.s 			page 58


DEFINED SYMBOLS
                            *ABS*:0000000000000000 Duffing_RKCK45.cpp
     /tmp/cc72IM0J.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cc72IM0J.s:27     .text:0000000000000000 _Z11printVectorPKc5Vec4d
     /tmp/cc72IM0J.s:143    .text:0000000000000180 _Z8linspaceddi
     /tmp/cc72IM0J.s:208    .text.startup:0000000000000000 main
     /tmp/cc72IM0J.s:1270   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/cc72IM0J.s:1282   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cc72IM0J.s:1247   .text.startup:0000000000001830 _GLOBAL__sub_I__Z11printVectorPKc5Vec4d
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cc72IM0J.s:1295   .rodata.cst8:0000000000000000 .LC1
     /tmp/cc72IM0J.s:1299   .rodata.cst8:0000000000000008 .LC2
     /tmp/cc72IM0J.s:1945   .rodata.cst16:0000000000000080 .LC71
     /tmp/cc72IM0J.s:2156   .rodata.cst32:0000000000000a00 .LC98
     /tmp/cc72IM0J.s:2166   .rodata.cst32:0000000000000a20 .LC99
     /tmp/cc72IM0J.s:2176   .rodata.cst32:0000000000000a40 .LC100
     /tmp/cc72IM0J.s:1304   .rodata.cst32:0000000000000000 .LC3
     /tmp/cc72IM0J.s:1324   .rodata.cst32:0000000000000040 .LC5
     /tmp/cc72IM0J.s:1314   .rodata.cst32:0000000000000020 .LC4
     /tmp/cc72IM0J.s:1334   .rodata.cst32:0000000000000060 .LC6
     /tmp/cc72IM0J.s:1364   .rodata.cst32:00000000000000c0 .LC9
     /tmp/cc72IM0J.s:1344   .rodata.cst32:0000000000000080 .LC7
     /tmp/cc72IM0J.s:1374   .rodata.cst32:00000000000000e0 .LC10
     /tmp/cc72IM0J.s:1384   .rodata.cst32:0000000000000100 .LC11
     /tmp/cc72IM0J.s:1354   .rodata.cst32:00000000000000a0 .LC8
     /tmp/cc72IM0J.s:1394   .rodata.cst32:0000000000000120 .LC12
     /tmp/cc72IM0J.s:1424   .rodata.cst32:0000000000000180 .LC15
     /tmp/cc72IM0J.s:1404   .rodata.cst32:0000000000000140 .LC13
     /tmp/cc72IM0J.s:1434   .rodata.cst32:00000000000001a0 .LC16
     /tmp/cc72IM0J.s:1414   .rodata.cst32:0000000000000160 .LC14
     /tmp/cc72IM0J.s:1444   .rodata.cst32:00000000000001c0 .LC17
     /tmp/cc72IM0J.s:1454   .rodata.cst32:00000000000001e0 .LC18
     /tmp/cc72IM0J.s:1464   .rodata.cst32:0000000000000200 .LC19
     /tmp/cc72IM0J.s:1485   .rodata.cst16:0000000000000000 .LC21
     /tmp/cc72IM0J.s:1474   .rodata.cst32:0000000000000220 .LC20
     /tmp/cc72IM0J.s:1493   .rodata.cst16:0000000000000020 .LC23
     /tmp/cc72IM0J.s:2187   .rodata.cst16:00000000000000a0 .LC103
     /tmp/cc72IM0J.s:1489   .rodata.cst16:0000000000000010 .LC22
     /tmp/cc72IM0J.s:1497   .rodata.cst16:0000000000000030 .LC24
     /tmp/cc72IM0J.s:1502   .rodata.cst32:0000000000000240 .LC25
     /tmp/cc72IM0J.s:1512   .rodata.cst32:0000000000000260 .LC26
     /tmp/cc72IM0J.s:1532   .rodata.cst32:00000000000002a0 .LC28
     /tmp/cc72IM0J.s:1522   .rodata.cst32:0000000000000280 .LC27
     /tmp/cc72IM0J.s:1542   .rodata.cst32:00000000000002c0 .LC29
     /tmp/cc72IM0J.s:1552   .rodata.cst32:00000000000002e0 .LC30
     /tmp/cc72IM0J.s:1592   .rodata.cst32:0000000000000360 .LC34
     /tmp/cc72IM0J.s:1562   .rodata.cst32:0000000000000300 .LC31
     /tmp/cc72IM0J.s:1582   .rodata.cst32:0000000000000340 .LC33
     /tmp/cc72IM0J.s:1572   .rodata.cst32:0000000000000320 .LC32
     /tmp/cc72IM0J.s:1632   .rodata.cst32:00000000000003e0 .LC38
     /tmp/cc72IM0J.s:1642   .rodata.cst32:0000000000000400 .LC39
     /tmp/cc72IM0J.s:1612   .rodata.cst32:00000000000003a0 .LC36
     /tmp/cc72IM0J.s:1622   .rodata.cst32:00000000000003c0 .LC37
     /tmp/cc72IM0J.s:1602   .rodata.cst32:0000000000000380 .LC35
     /tmp/cc72IM0J.s:1702   .rodata.cst32:00000000000004c0 .LC45
     /tmp/cc72IM0J.s:1682   .rodata.cst32:0000000000000480 .LC43
     /tmp/cc72IM0J.s:1662   .rodata.cst32:0000000000000440 .LC41
GAS LISTING /tmp/cc72IM0J.s 			page 59


     /tmp/cc72IM0J.s:1672   .rodata.cst32:0000000000000460 .LC42
     /tmp/cc72IM0J.s:1722   .rodata.cst32:0000000000000500 .LC47
     /tmp/cc72IM0J.s:1712   .rodata.cst32:00000000000004e0 .LC46
     /tmp/cc72IM0J.s:1652   .rodata.cst32:0000000000000420 .LC40
     /tmp/cc72IM0J.s:1732   .rodata.cst32:0000000000000520 .LC48
     /tmp/cc72IM0J.s:1692   .rodata.cst32:00000000000004a0 .LC44
     /tmp/cc72IM0J.s:1742   .rodata.cst32:0000000000000540 .LC49
     /tmp/cc72IM0J.s:1753   .rodata.cst16:0000000000000040 .LC50
     /tmp/cc72IM0J.s:1761   .rodata.cst16:0000000000000060 .LC52
     /tmp/cc72IM0J.s:1757   .rodata.cst16:0000000000000050 .LC51
     /tmp/cc72IM0J.s:1776   .rodata.cst32:0000000000000580 .LC54
     /tmp/cc72IM0J.s:1766   .rodata.cst32:0000000000000560 .LC53
     /tmp/cc72IM0J.s:1787   .rodata.cst16:0000000000000070 .LC55
     /tmp/cc72IM0J.s:1814   .rodata.cst32:00000000000005e0 .LC58
     /tmp/cc72IM0J.s:1794   .rodata.cst32:00000000000005a0 .LC56
     /tmp/cc72IM0J.s:1834   .rodata.cst32:0000000000000620 .LC60
     /tmp/cc72IM0J.s:1824   .rodata.cst32:0000000000000600 .LC59
     /tmp/cc72IM0J.s:1804   .rodata.cst32:00000000000005c0 .LC57
     /tmp/cc72IM0J.s:1844   .rodata.cst32:0000000000000640 .LC61
     /tmp/cc72IM0J.s:1854   .rodata.cst32:0000000000000660 .LC62
     /tmp/cc72IM0J.s:1864   .rodata.cst32:0000000000000680 .LC63
     /tmp/cc72IM0J.s:1874   .rodata.cst32:00000000000006a0 .LC64
     /tmp/cc72IM0J.s:1884   .rodata.cst32:00000000000006c0 .LC65
     /tmp/cc72IM0J.s:1894   .rodata.cst32:00000000000006e0 .LC66
     /tmp/cc72IM0J.s:1904   .rodata.cst32:0000000000000700 .LC67
     /tmp/cc72IM0J.s:1914   .rodata.cst32:0000000000000720 .LC68
     /tmp/cc72IM0J.s:1924   .rodata.cst32:0000000000000740 .LC69
     /tmp/cc72IM0J.s:1951   .rodata.cst16:0000000000000090 .LC72
     /tmp/cc72IM0J.s:1934   .rodata.cst32:0000000000000760 .LC70
     /tmp/cc72IM0J.s:1956   .rodata.cst32:0000000000000780 .LC73
     /tmp/cc72IM0J.s:1966   .rodata.cst32:00000000000007a0 .LC74
     /tmp/cc72IM0J.s:1976   .rodata.cst32:00000000000007c0 .LC75
     /tmp/cc72IM0J.s:2016   .rodata.cst32:0000000000000840 .LC79
     /tmp/cc72IM0J.s:1986   .rodata.cst32:00000000000007e0 .LC76
     /tmp/cc72IM0J.s:1996   .rodata.cst32:0000000000000800 .LC77
     /tmp/cc72IM0J.s:2026   .rodata.cst32:0000000000000860 .LC80
     /tmp/cc72IM0J.s:2006   .rodata.cst32:0000000000000820 .LC78
     /tmp/cc72IM0J.s:2056   .rodata.cst32:00000000000008c0 .LC83
     /tmp/cc72IM0J.s:2066   .rodata.cst32:00000000000008e0 .LC84
     /tmp/cc72IM0J.s:2036   .rodata.cst32:0000000000000880 .LC81
     /tmp/cc72IM0J.s:2076   .rodata.cst32:0000000000000900 .LC85
     /tmp/cc72IM0J.s:2046   .rodata.cst32:00000000000008a0 .LC82
     /tmp/cc72IM0J.s:2086   .rodata.cst32:0000000000000920 .LC86
     /tmp/cc72IM0J.s:2096   .rodata.cst32:0000000000000940 .LC87
     /tmp/cc72IM0J.s:2106   .rodata.cst32:0000000000000960 .LC88
     /tmp/cc72IM0J.s:2116   .rodata.cst32:0000000000000980 .LC89
     /tmp/cc72IM0J.s:2146   .rodata.cst32:00000000000009e0 .LC92
     /tmp/cc72IM0J.s:2136   .rodata.cst32:00000000000009c0 .LC91
     /tmp/cc72IM0J.s:2126   .rodata.cst32:00000000000009a0 .LC90

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
strlen
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
GAS LISTING /tmp/cc72IM0J.s 			page 60


_ZNSo5flushEv
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
aligned_alloc
clock
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSolsEi
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
