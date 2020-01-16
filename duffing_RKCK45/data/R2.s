GAS LISTING /tmp/ccryaM5C.s 			page 1


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
GAS LISTING /tmp/ccryaM5C.s 			page 2


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
GAS LISTING /tmp/ccryaM5C.s 			page 3


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
GAS LISTING /tmp/ccryaM5C.s 			page 4


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
GAS LISTING /tmp/ccryaM5C.s 			page 5


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
GAS LISTING /tmp/ccryaM5C.s 			page 6


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
 228 0019 4881ECC0 		subq	$1472, %rsp
 228      050000
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
 235 003d C5F82815 		vmovaps	.LC71(%rip), %xmm2
 235      00000000 
 236 0045 4889C3   		movq	%rax, %rbx
 237 0048 C5F828C2 		vmovaps	%xmm2, %xmm0
 238 004c C5FD280D 		vmovapd	.LC20(%rip), %ymm1
 238      00000000 
 239 0054 C57D283D 		vmovapd	.LC25(%rip), %ymm15
 239      00000000 
 240 005c C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm2
 240      D201
 241 0062 C5FC2994 		vmovaps	%ymm2, 128(%rsp)
 241      24800000 
 241      00
 242 006b C5ED5715 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 242      00000000 
 243 0073 C5FD2994 		vmovapd	%ymm2, 160(%rsp)
 243      24A00000 
 243      00
 244 007c 0F1F4000 		.p2align 4,,10
 245              		.p2align 3
 246              	.L21:
 247 0080 C4C17D28 		vmovapd	0(%r13), %ymm0
 247      4500
 248 0086 4531C9   		xorl	%r9d, %r9d
 249 0089 4531D2   		xorl	%r10d, %r10d
 250 008c C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 250      00000000 
 251 0094 4183F901 		cmpl	$1, %r9d
 252 0098 488DBC24 		leaq	1056(%rsp), %rdi
 252      20040000 
 253 00a0 C5FD2984 		vmovapd	%ymm0, 1408(%rsp)
 253      24800500 
 253      00
 254 00a9 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 255 00ad C5FD2994 		vmovapd	%ymm2, 1344(%rsp)
GAS LISTING /tmp/ccryaM5C.s 			page 7


 255      24400500 
 255      00
 256 00b6 488DB424 		leaq	1280(%rsp), %rsi
 256      00050000 
 257 00be 488D8424 		leaq	1184(%rsp), %rax
 257      A0040000 
 258 00c6 C4410976 		vpcmpeqd	%xmm14, %xmm14, %xmm14
 258      F6
 259 00cb 4C8D8424 		leaq	1344(%rsp), %r8
 259      40050000 
 260 00d3 C5FD2984 		vmovapd	%ymm0, 1280(%rsp)
 260      24000500 
 260      00
 261 00dc C4C17D28 		vmovapd	32(%r13), %ymm2
 261      5520
 262 00e2 C5FD2984 		vmovapd	%ymm0, 1312(%rsp)
 262      24200500 
 262      00
 263 00eb C5FD2994 		vmovapd	%ymm2, 1440(%rsp)
 263      24A00500 
 263      00
 264 00f4 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 264      00000000 
 265 00fc C5FD2994 		vmovapd	%ymm2, 1376(%rsp)
 265      24600500 
 265      00
 266 0105 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 266      00000000 
 267 010d C5FD2994 		vmovapd	%ymm2, 1152(%rsp)
 267      24800400 
 267      00
 268 0116 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 268      00000000 
 269 011e C5FD2994 		vmovapd	%ymm2, 1184(%rsp)
 269      24A00400 
 269      00
 270 0127 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 270      00000000 
 271 012f C5FD2994 		vmovapd	%ymm2, 1216(%rsp)
 271      24C00400 
 271      00
 272 0138 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 272      00000000 
 273 0140 C5FD2994 		vmovapd	%ymm2, 1248(%rsp)
 273      24E00400 
 273      00
 274 0149 0F8FB602 		jg	.L56
 274      0000
 275 014f 90       		.p2align 4,,10
 276              		.p2align 3
 277              	.L22:
 278 0150 4963D2   		movslq	%r10d, %rdx
 279 0153 C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 279      00000000 
 280 015b 4963C9   		movslq	%r9d, %rcx
 281 015e 48C1E205 		salq	$5, %rdx
 282 0162 48C1E105 		salq	$5, %rcx
GAS LISTING /tmp/ccryaM5C.s 			page 8


 283 0166 4183C101 		addl	$1, %r9d
 284 016a 4C8D5A20 		leaq	32(%rdx), %r11
 285 016e 4183C202 		addl	$2, %r10d
 286 0172 4183F901 		cmpl	$1, %r9d
 287 0176 4E8DB41C 		leaq	1152(%rsp,%r11), %r14
 287      80040000 
 288 017e C4C17D28 		vmovapd	(%r14), %ymm0
 288      06
 289 0183 C5FD2984 		vmovapd	%ymm0, 640(%rsp,%rdx)
 289      14800200 
 289      00
 290 018c C5ED549C 		vandpd	1280(%rsp,%rcx), %ymm2, %ymm3
 290      0C000500 
 290      00
 291 0195 C5E55905 		vmulpd	.LC3(%rip), %ymm3, %ymm0
 291      00000000 
 292 019d C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 292      C008
 293 01a3 C4E37D09 		vroundpd	$8, %ymm0, %ymm2
 293      D008
 294 01a9 C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 294      24E00000 
 294      00
 295 01b2 C5FD5925 		vmulpd	.LC4(%rip), %ymm0, %ymm4
 295      00000000 
 296 01ba C57B108C 		vmovsd	224(%rsp), %xmm9
 296      24E00000 
 296      00
 297 01c3 C57B1094 		vmovsd	232(%rsp), %xmm10
 297      24E80000 
 297      00
 298 01cc C441FB2C 		vcvttsd2siq	%xmm9, %r15
 298      F9
 299 01d1 C57B109C 		vmovsd	240(%rsp), %xmm11
 299      24F00000 
 299      00
 300 01da C57B10A4 		vmovsd	248(%rsp), %xmm12
 300      24F80000 
 300      00
 301 01e3 C5E55CE4 		vsubpd	%ymm4, %ymm3, %ymm4
 302 01e7 4C89BC24 		movq	%r15, 192(%rsp)
 302      C0000000 
 303 01ef C441FB2C 		vcvttsd2siq	%xmm10, %r15
 303      FA
 304 01f4 C5FA7E94 		vmovq	192(%rsp), %xmm2
 304      24C00000 
 304      00
 305 01fd C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm5
 305      EF01
 306 0203 C441FB2C 		vcvttsd2siq	%xmm11, %r15
 306      FB
 307 0208 4C89BC24 		movq	%r15, 192(%rsp)
 307      C0000000 
 308 0210 C441FB2C 		vcvttsd2siq	%xmm12, %r15
 308      FC
 309 0215 C5FA7E94 		vmovq	192(%rsp), %xmm2
 309      24C00000 
GAS LISTING /tmp/ccryaM5C.s 			page 9


 309      00
 310 021e C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm6
 310      F701
 311 0224 C5FD5915 		vmulpd	.LC5(%rip), %ymm0, %ymm2
 311      00000000 
 312 022c C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 312      00000000 
 313 0234 C5DD5CE2 		vsubpd	%ymm2, %ymm4, %ymm4
 314 0238 C5DD5CE0 		vsubpd	%ymm0, %ymm4, %ymm4
 315 023c C5DD59C4 		vmulpd	%ymm4, %ymm4, %ymm0
 316 0240 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 316      00000000 
 317 0248 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 318 024c C57D5915 		vmulpd	.LC7(%rip), %ymm0, %ymm10
 318      00000000 
 319 0254 C57D5905 		vmulpd	.LC11(%rip), %ymm0, %ymm8
 319      00000000 
 320 025c C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 320      00000000 
 321 0264 C5ED59FA 		vmulpd	%ymm2, %ymm2, %ymm7
 322 0268 C52D5815 		vaddpd	.LC8(%rip), %ymm10, %ymm10
 322      00000000 
 323 0270 C53D5805 		vaddpd	.LC12(%rip), %ymm8, %ymm8
 323      00000000 
 324 0278 C53559CF 		vmulpd	%ymm7, %ymm9, %ymm9
 325 027c C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 325      CA
 326 0281 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 327 0285 C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 327      00000000 
 328 028d C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 328      C1
 329 0292 C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 329      00000000 
 330 029a C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 330      00000000 
 331 02a2 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 331      00000000 
 332 02aa C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 333 02ae C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 333      F9
 334 02b3 C57D590D 		vmulpd	.LC17(%rip), %ymm0, %ymm9
 334      00000000 
 335 02bb C535580D 		vaddpd	.LC18(%rip), %ymm9, %ymm9
 335      00000000 
 336 02c3 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 337 02c7 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 338 02cb C55D59C8 		vmulpd	%ymm0, %ymm4, %ymm9
 339 02cf C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 339      00000000 
 340 02d7 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 341 02db C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 341      C0
 342 02e0 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 343 02e4 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 344 02e8 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 344      D901
GAS LISTING /tmp/ccryaM5C.s 			page 10


 345 02ee C5BD58E4 		vaddpd	%ymm4, %ymm8, %ymm4
 346 02f2 C551DB05 		vpand	.LC21(%rip), %xmm5, %xmm8
 346      00000000 
 347 02fa C4C13173 		vpsllq	$1, %xmm9, %xmm9
 347      F101
 348 0300 C5ED58D0 		vaddpd	%ymm0, %ymm2, %ymm2
 349 0304 C5C9DB05 		vpand	.LC21(%rip), %xmm6, %xmm0
 349      00000000 
 350 030c C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 350      00000000 
 351 0314 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 351      C7
 352 0319 C4E23929 		vpcmpeqq	%xmm7, %xmm8, %xmm7
 352      FF
 353 031e C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 353      C6
 354 0323 C4625137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm8
 354      05000000 
 354      00
 355 032c C5D1D42D 		vpaddq	.LC21(%rip), %xmm5, %xmm5
 355      00000000 
 356 0334 C4C141EF 		vpxor	%xmm14, %xmm7, %xmm7
 356      FE
 357 0339 C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 357      0D000000 
 357      00
 358 0342 C44131EF 		vpxor	%xmm14, %xmm9, %xmm9
 358      CE
 359 0347 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 359      F801
 360 034d C4E24937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm0
 360      05000000 
 360      00
 361 0356 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 361      C001
 362 035c C5F928C3 		vmovapd	%xmm3, %xmm0
 363 0360 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 363      01
 364 0365 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 364      00000000 
 365 036d C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 365      05000000 
 365      00
 366 0376 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 366      C6
 367 037b C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 367      C101
 368 0381 C5BD54D8 		vandpd	%ymm0, %ymm8, %ymm3
 369 0385 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 370 0389 C4E36D4B 		vblendvpd	%ymm3, %ymm1, %ymm2, %ymm2
 370      D130
 371 038f C4E35D4B 		vblendvpd	%ymm3, %ymm0, %ymm4, %ymm4
 371      E030
 372 0395 C5C9D405 		vpaddq	.LC21(%rip), %xmm6, %xmm0
 372      00000000 
 373 039d C5D1DB35 		vpand	.LC24(%rip), %xmm5, %xmm6
 373      00000000 
GAS LISTING /tmp/ccryaM5C.s 			page 11


 374 03a5 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 374      00000000 
 375 03ad C4E36D4B 		vblendvpd	%ymm7, %ymm4, %ymm2, %ymm3
 375      DC70
 376 03b3 C5FD2894 		vmovapd	1408(%rsp,%rcx), %ymm2
 376      0C800500 
 376      00
 377 03bc C5C973F6 		vpsllq	$62, %xmm6, %xmm6
 377      3E
 378 03c1 C4C16D59 		vmulpd	(%r14), %ymm2, %ymm2
 378      16
 379 03c6 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 379      3E
 380 03cb C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 380      F001
 381 03d1 C5FD2884 		vmovapd	1152(%rsp,%rdx), %ymm0
 381      14800400 
 381      00
 382 03da C5FD59E0 		vmulpd	%ymm0, %ymm0, %ymm4
 383 03de C5E557DE 		vxorpd	%ymm6, %ymm3, %ymm3
 384 03e2 C5F55CE4 		vsubpd	%ymm4, %ymm1, %ymm4
 385 03e6 C58559DB 		vmulpd	%ymm3, %ymm15, %ymm3
 386 03ea C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 387 03ee C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 388 03f2 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 389 03f6 C5FD2984 		vmovapd	%ymm0, 672(%rsp,%rdx)
 389      14A00200 
 389      00
 390 03ff 0F8E4BFD 		jle	.L22
 390      FFFF
 391              	.L56:
 392 0405 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 392      00000000 
 393 040d C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 393      C9
 394 0412 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 394      ED
 395 0417 4889F1   		movq	%rsi, %rcx
 396 041a C5ED5984 		vmulpd	640(%rsp), %ymm2, %ymm0
 396      24800200 
 396      00
 397 0423 4889FA   		movq	%rdi, %rdx
 398 0426 C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 398      24400500 
 398      00
 399 042f C5FD5884 		vaddpd	1152(%rsp), %ymm0, %ymm0
 399      24800400 
 399      00
 400 0438 C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 400      24000400 
 400      00
 401 0441 C5ED5984 		vmulpd	672(%rsp), %ymm2, %ymm0
 401      24A00200 
 401      00
 402 044a C5ED5994 		vmulpd	704(%rsp), %ymm2, %ymm2
 402      24C00200 
 402      00
GAS LISTING /tmp/ccryaM5C.s 			page 12


 403 0453 C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 403      24400500 
 403      00
 404 045c C5FD5884 		vaddpd	1184(%rsp), %ymm0, %ymm0
 404      24A00400 
 404      00
 405 0465 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 405      24200400 
 405      00
 406 046e C5FD2884 		vmovapd	1376(%rsp), %ymm0
 406      24600500 
 406      00
 407 0477 C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 408 047b C5ED5894 		vaddpd	1216(%rsp), %ymm2, %ymm2
 408      24C00400 
 408      00
 409 0484 C5FD2994 		vmovapd	%ymm2, 1088(%rsp)
 409      24400400 
 409      00
 410 048d C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 410      00000000 
 411 0495 C5ED5994 		vmulpd	736(%rsp), %ymm2, %ymm2
 411      24E00200 
 411      00
 412 049e C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 413 04a2 C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 413      00000000 
 414 04aa C5FD5884 		vaddpd	1248(%rsp), %ymm0, %ymm0
 414      24E00400 
 414      00
 415 04b3 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 415      24600400 
 415      00
 416              	.L24:
 417 04bc C5FD2802 		vmovapd	(%rdx), %ymm0
 418 04c0 4883C240 		addq	$64, %rdx
 419 04c4 4883C120 		addq	$32, %rcx
 420 04c8 C5FD2982 		vmovapd	%ymm0, -864(%rdx)
 420      A0FCFFFF 
 421 04d0 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 421      E0
 422 04d5 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 422      00000000 
 423 04dd C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 423      C008
 424 04e3 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 424      D808
 425 04e9 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 425      24E00000 
 425      00
 426 04f2 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 426      00000000 
 427 04fa C5FB10AC 		vmovsd	224(%rsp), %xmm5
 427      24E00000 
 427      00
 428 0503 C5FB10B4 		vmovsd	232(%rsp), %xmm6
 428      24E80000 
GAS LISTING /tmp/ccryaM5C.s 			page 13


 428      00
 429 050c C461FB2C 		vcvttsd2siq	%xmm5, %r11
 429      DD
 430 0511 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 430      00000000 
 431 0519 C461FB2C 		vcvttsd2siq	%xmm6, %r9
 431      CE
 432 051e C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 432      00000000 
 433 0526 C57B1084 		vmovsd	248(%rsp), %xmm8
 433      24F80000 
 433      00
 434 052f C5FB10BC 		vmovsd	240(%rsp), %xmm7
 434      24F00000 
 434      00
 435 0538 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 436 053c C461FB2C 		vcvttsd2siq	%xmm7, %r14
 436      F7
 437 0541 4C899C24 		movq	%r11, 192(%rsp)
 437      C0000000 
 438 0549 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 438      24C00000 
 438      00
 439 0552 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 440 0556 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 440      F101
 441 055c C441FB2C 		vcvttsd2siq	%xmm8, %r9
 441      C8
 442 0561 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 443 0565 4C89B424 		movq	%r14, 192(%rsp)
 443      C0000000 
 444 056d C5FA7EBC 		vmovq	192(%rsp), %xmm7
 444      24C00000 
 444      00
 445 0576 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 446 057a C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 446      F901
 447 0580 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 447      00000000 
 448 0588 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 449 058c C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 449      00000000 
 450 0594 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 450      00000000 
 451 059c C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 451      00000000 
 452 05a4 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 453 05a8 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 453      00000000 
 454 05b0 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 454      00000000 
 455 05b8 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 455      D8
 456 05bd C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 456      DC
 457 05c2 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 458 05c6 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
GAS LISTING /tmp/ccryaM5C.s 			page 14


 458      00000000 
 459 05ce C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 459      D3
 460 05d3 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 460      00000000 
 461 05db C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 461      00000000 
 462 05e3 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 462      00000000 
 463 05eb C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 463      C0
 464 05f0 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 464      C3
 465 05f5 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 465      00000000 
 466 05fd C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 466      00000000 
 467 0605 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 468 0609 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 468      C0
 469 060e C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 470 0612 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 470      00000000 
 471 061a C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 471      D8
 472 061f C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 472      00000000 
 473 0627 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 473      D2
 474 062c C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 475 0630 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 475      E301
 476 0636 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 476      C1
 477 063b C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 477      C6
 478 0640 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 478      F301
 479 0646 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 480 064a C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 480      00000000 
 481 0652 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 482 0656 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 482      00000000 
 483 065e C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 483      15000000 
 483      00
 484 0667 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 484      00000000 
 485 066f C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 485      C1
 486 0674 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 486      C6
 487 0679 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 487      1D000000 
 487      00
 488 0682 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
GAS LISTING /tmp/ccryaM5C.s 			page 15


 488      C001
 489 0688 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 489      05000000 
 489      00
 490 0691 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 490      DE
 491 0696 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 491      D001
 492 069c C5F928C4 		vmovapd	%xmm4, %xmm0
 493 06a0 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 493      01
 494 06a5 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 494      00000000 
 495 06ad C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 495      05000000 
 495      00
 496 06b6 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 496      C6
 497 06bb C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 497      C301
 498 06c1 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 499 06c5 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 499      00000000 
 500 06cd C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 500      00000000 
 501 06d5 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 501      00000000 
 502 06dd C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 502      ED40
 503 06e3 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 503      D940
 504 06e9 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 504      3E
 505 06ee C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 505      E580
 506 06f4 C5FD2859 		vmovapd	96(%rcx), %ymm3
 506      60
 507 06f9 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 507      3E
 508 06fe C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 508      F801
 509 0704 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 509      A0
 510 0709 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 510      C0
 511 070e C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 512 0712 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 513 0716 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 514 071a C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 515 071e C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 516 0722 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 517 0726 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 518 072a C5FD2982 		vmovapd	%ymm0, -832(%rdx)
 518      C0FCFFFF 
 519 0732 4839C2   		cmpq	%rax, %rdx
 520 0735 0F8581FD 		jne	.L24
 520      FFFF
GAS LISTING /tmp/ccryaM5C.s 			page 16


 521 073b C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 521      00000000 
 522 0743 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 522      C9
 523 0748 C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 523      00000000 
 524 0750 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 524      ED
 525 0755 C5CD5984 		vmulpd	256(%rsp), %ymm6, %ymm0
 525      24000100 
 525      00
 526 075e 4889F1   		movq	%rsi, %rcx
 527 0761 4889FA   		movq	%rdi, %rdx
 528 0764 C5C5599C 		vmulpd	640(%rsp), %ymm7, %ymm3
 528      24800200 
 528      00
 529 076d C5C559A4 		vmulpd	672(%rsp), %ymm7, %ymm4
 529      24A00200 
 529      00
 530 0776 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 531 077a C5FD2884 		vmovapd	1344(%rsp), %ymm0
 531      24400500 
 531      00
 532 0783 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 533 0787 C5E5589C 		vaddpd	1152(%rsp), %ymm3, %ymm3
 533      24800400 
 533      00
 534 0790 C5FD299C 		vmovapd	%ymm3, 1024(%rsp)
 534      24000400 
 534      00
 535 0799 C5CD599C 		vmulpd	288(%rsp), %ymm6, %ymm3
 535      24200100 
 535      00
 536 07a2 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 537 07a6 C5C559A4 		vmulpd	736(%rsp), %ymm7, %ymm4
 537      24E00200 
 537      00
 538 07af C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 539 07b3 C5C5599C 		vmulpd	704(%rsp), %ymm7, %ymm3
 539      24C00200 
 539      00
 540 07bc C5FD5884 		vaddpd	1184(%rsp), %ymm0, %ymm0
 540      24A00400 
 540      00
 541 07c5 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 541      24200400 
 541      00
 542 07ce C5CD5984 		vmulpd	320(%rsp), %ymm6, %ymm0
 542      24400100 
 542      00
 543 07d7 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 544 07db C5FD2884 		vmovapd	1376(%rsp), %ymm0
 544      24600500 
 544      00
 545 07e4 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 546 07e8 C5E5589C 		vaddpd	1216(%rsp), %ymm3, %ymm3
 546      24C00400 
GAS LISTING /tmp/ccryaM5C.s 			page 17


 546      00
 547 07f1 C5FD299C 		vmovapd	%ymm3, 1088(%rsp)
 547      24400400 
 547      00
 548 07fa C5CD599C 		vmulpd	352(%rsp), %ymm6, %ymm3
 548      24600100 
 548      00
 549 0803 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 550 0807 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 551 080b C5FD5884 		vaddpd	1248(%rsp), %ymm0, %ymm0
 551      24E00400 
 551      00
 552 0814 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 552      24600400 
 552      00
 553              	.L26:
 554 081d C5FD2802 		vmovapd	(%rdx), %ymm0
 555 0821 4883C240 		addq	$64, %rdx
 556 0825 4883C120 		addq	$32, %rcx
 557 0829 C5FD2982 		vmovapd	%ymm0, -352(%rdx)
 557      A0FEFFFF 
 558 0831 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 558      E0
 559 0836 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 559      00000000 
 560 083e C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 560      C008
 561 0844 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 561      D808
 562 084a C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 562      24E00000 
 562      00
 563 0853 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 563      00000000 
 564 085b C57B1094 		vmovsd	224(%rsp), %xmm10
 564      24E00000 
 564      00
 565 0864 C57B109C 		vmovsd	232(%rsp), %xmm11
 565      24E80000 
 565      00
 566 086d C441FB2C 		vcvttsd2siq	%xmm10, %r10
 566      D2
 567 0872 C441FB2C 		vcvttsd2siq	%xmm11, %r9
 567      CB
 568 0877 C5FB109C 		vmovsd	248(%rsp), %xmm3
 568      24F80000 
 568      00
 569 0880 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 570 0884 C57B10A4 		vmovsd	240(%rsp), %xmm12
 570      24F00000 
 570      00
 571 088d C441FB2C 		vcvttsd2siq	%xmm12, %r11
 571      DC
 572 0892 4C899424 		movq	%r10, 192(%rsp)
 572      C0000000 
 573 089a C5FA7EB4 		vmovq	192(%rsp), %xmm6
 573      24C00000 
GAS LISTING /tmp/ccryaM5C.s 			page 18


 573      00
 574 08a3 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 574      F101
 575 08a9 C461FB2C 		vcvttsd2siq	%xmm3, %r9
 575      CB
 576 08ae C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 576      00000000 
 577 08b6 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 577      00000000 
 578 08be 4C899C24 		movq	%r11, 192(%rsp)
 578      C0000000 
 579 08c6 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 579      24C00000 
 579      00
 580 08cf C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 581 08d3 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 581      F901
 582 08d9 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 583 08dd C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 584 08e1 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 584      00000000 
 585 08e9 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 586 08ed C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 586      00000000 
 587 08f5 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 587      00000000 
 588 08fd C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 588      00000000 
 589 0905 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 590 0909 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 590      00000000 
 591 0911 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 591      00000000 
 592 0919 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 592      D8
 593 091e C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 593      DC
 594 0923 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 595 0927 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 595      00000000 
 596 092f C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 596      D3
 597 0934 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 597      00000000 
 598 093c C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 598      00000000 
 599 0944 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 599      00000000 
 600 094c C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 600      C0
 601 0951 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 601      C3
 602 0956 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 602      00000000 
 603 095e C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 603      00000000 
 604 0966 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
GAS LISTING /tmp/ccryaM5C.s 			page 19


 605 096a C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 605      C0
 606 096f C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 607 0973 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 607      00000000 
 608 097b C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 608      D8
 609 0980 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 609      00000000 
 610 0988 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 610      D2
 611 098d C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 612 0991 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 612      E301
 613 0997 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 613      C1
 614 099c C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 614      C6
 615 09a1 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 615      F301
 616 09a7 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 617 09ab C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 617      00000000 
 618 09b3 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 619 09b7 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 619      00000000 
 620 09bf C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 620      15000000 
 620      00
 621 09c8 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 621      00000000 
 622 09d0 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 622      C1
 623 09d5 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 623      C6
 624 09da C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 624      1D000000 
 624      00
 625 09e3 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 625      C001
 626 09e9 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 626      05000000 
 626      00
 627 09f2 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 627      DE
 628 09f7 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 628      D001
 629 09fd C5F928C4 		vmovapd	%xmm4, %xmm0
 630 0a01 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 630      01
 631 0a06 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 631      00000000 
 632 0a0e C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 632      05000000 
 632      00
 633 0a17 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 633      C6
GAS LISTING /tmp/ccryaM5C.s 			page 20


 634 0a1c C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 634      C301
 635 0a22 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 636 0a26 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 636      00000000 
 637 0a2e C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 637      00000000 
 638 0a36 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 638      00000000 
 639 0a3e C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 639      ED40
 640 0a44 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 640      D940
 641 0a4a C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 641      3E
 642 0a4f C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 642      E580
 643 0a55 C5FD2859 		vmovapd	96(%rcx), %ymm3
 643      60
 644 0a5a C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 644      3E
 645 0a5f C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 645      F801
 646 0a65 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 646      A0
 647 0a6a C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 647      C0
 648 0a6f C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 649 0a73 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 650 0a77 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 651 0a7b C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 652 0a7f C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 653 0a83 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 654 0a87 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 655 0a8b C5FD2982 		vmovapd	%ymm0, -320(%rdx)
 655      C0FEFFFF 
 656 0a93 4839D0   		cmpq	%rdx, %rax
 657 0a96 0F8581FD 		jne	.L26
 657      FFFF
 658 0a9c C5FD283D 		vmovapd	.LC30(%rip), %ymm7
 658      00000000 
 659 0aa4 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 659      C9
 660 0aa9 C58559A4 		vmulpd	640(%rsp), %ymm15, %ymm4
 660      24800200 
 660      00
 661 0ab2 4889F1   		movq	%rsi, %rcx
 662 0ab5 C5FD2835 		vmovapd	.LC29(%rip), %ymm6
 662      00000000 
 663 0abd 4889FA   		movq	%rdi, %rdx
 664 0ac0 C5C5599C 		vmulpd	256(%rsp), %ymm7, %ymm3
 664      24000100 
 664      00
 665 0ac9 C5CD5984 		vmulpd	768(%rsp), %ymm6, %ymm0
 665      24000300 
 665      00
 666 0ad2 C58559AC 		vmulpd	672(%rsp), %ymm15, %ymm5
GAS LISTING /tmp/ccryaM5C.s 			page 21


 666      24A00200 
 666      00
 667 0adb C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 667      ED
 668 0ae0 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 669 0ae4 C5CD59A4 		vmulpd	800(%rsp), %ymm6, %ymm4
 669      24200300 
 669      00
 670 0aed C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 671 0af1 C5FD2884 		vmovapd	1344(%rsp), %ymm0
 671      24400500 
 671      00
 672 0afa C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 673 0afe C5E5589C 		vaddpd	1152(%rsp), %ymm3, %ymm3
 673      24800400 
 673      00
 674 0b07 C5FD299C 		vmovapd	%ymm3, 1024(%rsp)
 674      24000400 
 674      00
 675 0b10 C5C5599C 		vmulpd	288(%rsp), %ymm7, %ymm3
 675      24200100 
 675      00
 676 0b19 C5D558DB 		vaddpd	%ymm3, %ymm5, %ymm3
 677 0b1d C58559AC 		vmulpd	736(%rsp), %ymm15, %ymm5
 677      24E00200 
 677      00
 678 0b26 C5E558DC 		vaddpd	%ymm4, %ymm3, %ymm3
 679 0b2a C58559A4 		vmulpd	704(%rsp), %ymm15, %ymm4
 679      24C00200 
 679      00
 680 0b33 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 681 0b37 C5C5599C 		vmulpd	320(%rsp), %ymm7, %ymm3
 681      24400100 
 681      00
 682 0b40 C5FD5884 		vaddpd	1184(%rsp), %ymm0, %ymm0
 682      24A00400 
 682      00
 683 0b49 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 684 0b4d C5CD59A4 		vmulpd	864(%rsp), %ymm6, %ymm4
 684      24600300 
 684      00
 685 0b56 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 685      24200400 
 685      00
 686 0b5f C5CD5984 		vmulpd	832(%rsp), %ymm6, %ymm0
 686      24400300 
 686      00
 687 0b68 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 688 0b6c C5FD2884 		vmovapd	1376(%rsp), %ymm0
 688      24600500 
 688      00
 689 0b75 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 690 0b79 C5E5589C 		vaddpd	1216(%rsp), %ymm3, %ymm3
 690      24C00400 
 690      00
 691 0b82 C5FD299C 		vmovapd	%ymm3, 1088(%rsp)
 691      24400400 
GAS LISTING /tmp/ccryaM5C.s 			page 22


 691      00
 692 0b8b C5C5599C 		vmulpd	352(%rsp), %ymm7, %ymm3
 692      24600100 
 692      00
 693 0b94 C5D558DB 		vaddpd	%ymm3, %ymm5, %ymm3
 694 0b98 C5E558DC 		vaddpd	%ymm4, %ymm3, %ymm3
 695 0b9c C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 696 0ba0 C5FD5884 		vaddpd	1248(%rsp), %ymm0, %ymm0
 696      24E00400 
 696      00
 697 0ba9 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 697      24600400 
 697      00
 698              	.L28:
 699 0bb2 C5FD2802 		vmovapd	(%rdx), %ymm0
 700 0bb6 4883C240 		addq	$64, %rdx
 701 0bba 4883C120 		addq	$32, %rcx
 702 0bbe C5FD2982 		vmovapd	%ymm0, -224(%rdx)
 702      20FFFFFF 
 703 0bc6 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 703      E0
 704 0bcb C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 704      00000000 
 705 0bd3 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 705      C008
 706 0bd9 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 706      D808
 707 0bdf C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 707      24E00000 
 707      00
 708 0be8 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 708      00000000 
 709 0bf0 C5FB10AC 		vmovsd	224(%rsp), %xmm5
 709      24E00000 
 709      00
 710 0bf9 C5FB10B4 		vmovsd	232(%rsp), %xmm6
 710      24E80000 
 710      00
 711 0c02 C461FB2C 		vcvttsd2siq	%xmm5, %r14
 711      F5
 712 0c07 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 712      00000000 
 713 0c0f C461FB2C 		vcvttsd2siq	%xmm6, %r9
 713      CE
 714 0c14 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 714      00000000 
 715 0c1c C57B1084 		vmovsd	248(%rsp), %xmm8
 715      24F80000 
 715      00
 716 0c25 C5FB10BC 		vmovsd	240(%rsp), %xmm7
 716      24F00000 
 716      00
 717 0c2e C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 718 0c32 C461FB2C 		vcvttsd2siq	%xmm7, %r10
 718      D7
 719 0c37 4C89B424 		movq	%r14, 192(%rsp)
 719      C0000000 
GAS LISTING /tmp/ccryaM5C.s 			page 23


 720 0c3f C5FA7EB4 		vmovq	192(%rsp), %xmm6
 720      24C00000 
 720      00
 721 0c48 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 722 0c4c C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 722      F101
 723 0c52 C441FB2C 		vcvttsd2siq	%xmm8, %r9
 723      C8
 724 0c57 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 725 0c5b 4C899424 		movq	%r10, 192(%rsp)
 725      C0000000 
 726 0c63 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 726      24C00000 
 726      00
 727 0c6c C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 728 0c70 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 728      F901
 729 0c76 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 729      00000000 
 730 0c7e C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 731 0c82 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 731      00000000 
 732 0c8a C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 732      00000000 
 733 0c92 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 733      00000000 
 734 0c9a C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 735 0c9e C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 735      00000000 
 736 0ca6 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 736      00000000 
 737 0cae C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 737      D8
 738 0cb3 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 738      DC
 739 0cb8 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 740 0cbc C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 740      00000000 
 741 0cc4 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 741      D3
 742 0cc9 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 742      00000000 
 743 0cd1 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 743      00000000 
 744 0cd9 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 744      00000000 
 745 0ce1 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 745      C0
 746 0ce6 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 746      C3
 747 0ceb C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 747      00000000 
 748 0cf3 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 748      00000000 
 749 0cfb C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 750 0cff C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 750      C0
GAS LISTING /tmp/ccryaM5C.s 			page 24


 751 0d04 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 752 0d08 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 752      00000000 
 753 0d10 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 753      D8
 754 0d15 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 754      00000000 
 755 0d1d C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 755      D2
 756 0d22 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 757 0d26 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 757      E301
 758 0d2c C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 758      C1
 759 0d31 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 759      C6
 760 0d36 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 760      F301
 761 0d3c C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 762 0d40 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 762      00000000 
 763 0d48 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 764 0d4c C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 764      00000000 
 765 0d54 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 765      15000000 
 765      00
 766 0d5d C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 766      00000000 
 767 0d65 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 767      C1
 768 0d6a C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 768      C6
 769 0d6f C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 769      1D000000 
 769      00
 770 0d78 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 770      C001
 771 0d7e C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 771      05000000 
 771      00
 772 0d87 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 772      DE
 773 0d8c C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 773      D001
 774 0d92 C5F928C4 		vmovapd	%xmm4, %xmm0
 775 0d96 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 775      01
 776 0d9b C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 776      00000000 
 777 0da3 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 777      05000000 
 777      00
 778 0dac C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 778      C6
 779 0db1 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 779      C301
GAS LISTING /tmp/ccryaM5C.s 			page 25


 780 0db7 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 781 0dbb C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 781      00000000 
 782 0dc3 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 782      00000000 
 783 0dcb C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 783      00000000 
 784 0dd3 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 784      ED40
 785 0dd9 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 785      D940
 786 0ddf C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 786      3E
 787 0de4 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 787      E580
 788 0dea C5FD2859 		vmovapd	96(%rcx), %ymm3
 788      60
 789 0def C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 789      3E
 790 0df4 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 790      F801
 791 0dfa C5FD2842 		vmovapd	-96(%rdx), %ymm0
 791      A0
 792 0dff C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 792      C0
 793 0e04 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 794 0e08 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 795 0e0c C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 796 0e10 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 797 0e14 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 798 0e18 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 799 0e1c C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 800 0e20 C5FD2982 		vmovapd	%ymm0, -192(%rdx)
 800      40FFFFFF 
 801 0e28 4839D0   		cmpq	%rdx, %rax
 802 0e2b 0F8581FD 		jne	.L28
 802      FFFF
 803 0e31 C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 803      00000000 
 804 0e39 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 804      C9
 805 0e3e C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 805      00000000 
 806 0e46 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 806      ED
 807 0e4b C5CD599C 		vmulpd	896(%rsp), %ymm6, %ymm3
 807      24800300 
 807      00
 808 0e54 4889F1   		movq	%rsi, %rcx
 809 0e57 C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 809      00000000 
 810 0e5f 4889FA   		movq	%rdi, %rdx
 811 0e62 C5C559A4 		vmulpd	768(%rsp), %ymm7, %ymm4
 811      24000300 
 811      00
 812 0e6b C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 812      00000000 
GAS LISTING /tmp/ccryaM5C.s 			page 26


 813 0e73 C5CD5984 		vmulpd	256(%rsp), %ymm6, %ymm0
 813      24000100 
 813      00
 814 0e7c C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 814      00000000 
 815 0e84 C5C559AC 		vmulpd	640(%rsp), %ymm7, %ymm5
 815      24800200 
 815      00
 816 0e8d C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 816      00000000 
 817 0e95 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 818 0e99 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 819 0e9d C5C559A4 		vmulpd	800(%rsp), %ymm7, %ymm4
 819      24200300 
 819      00
 820 0ea6 C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 820      00000000 
 821 0eae C5C559AC 		vmulpd	672(%rsp), %ymm7, %ymm5
 821      24A00200 
 821      00
 822 0eb7 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 823 0ebb C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 823      00000000 
 824 0ec3 C5CD599C 		vmulpd	928(%rsp), %ymm6, %ymm3
 824      24A00300 
 824      00
 825 0ecc C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 825      00000000 
 826 0ed4 C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 826      24400500 
 826      00
 827 0edd C5FD5884 		vaddpd	1152(%rsp), %ymm0, %ymm0
 827      24800400 
 827      00
 828 0ee6 C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 828      24000400 
 828      00
 829 0eef C5CD5984 		vmulpd	288(%rsp), %ymm6, %ymm0
 829      24200100 
 829      00
 830 0ef8 C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 830      00000000 
 831 0f00 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 832 0f04 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 833 0f08 C5C559A4 		vmulpd	832(%rsp), %ymm7, %ymm4
 833      24400300 
 833      00
 834 0f11 C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 834      00000000 
 835 0f19 C5C559AC 		vmulpd	704(%rsp), %ymm7, %ymm5
 835      24C00200 
 835      00
 836 0f22 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 837 0f26 C5FD283D 		vmovapd	.LC32(%rip), %ymm7
 837      00000000 
 838 0f2e C5CD599C 		vmulpd	960(%rsp), %ymm6, %ymm3
 838      24C00300 
GAS LISTING /tmp/ccryaM5C.s 			page 27


 838      00
 839 0f37 C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 839      00000000 
 840 0f3f C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 840      24400500 
 840      00
 841 0f48 C5FD5884 		vaddpd	1184(%rsp), %ymm0, %ymm0
 841      24A00400 
 841      00
 842 0f51 C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 842      24200400 
 842      00
 843 0f5a C5CD5984 		vmulpd	320(%rsp), %ymm6, %ymm0
 843      24400100 
 843      00
 844 0f63 C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 844      00000000 
 845 0f6b C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 846 0f6f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 847 0f73 C5C559A4 		vmulpd	864(%rsp), %ymm7, %ymm4
 847      24600300 
 847      00
 848 0f7c C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 848      00000000 
 849 0f84 C5C559AC 		vmulpd	736(%rsp), %ymm7, %ymm5
 849      24E00200 
 849      00
 850 0f8d C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 851 0f91 C5CD599C 		vmulpd	992(%rsp), %ymm6, %ymm3
 851      24E00300 
 851      00
 852 0f9a C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 852      00000000 
 853 0fa2 C5FD5984 		vmulpd	1376(%rsp), %ymm0, %ymm0
 853      24600500 
 853      00
 854 0fab C5FD5884 		vaddpd	1216(%rsp), %ymm0, %ymm0
 854      24C00400 
 854      00
 855 0fb4 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 855      24400400 
 855      00
 856 0fbd C5CD5984 		vmulpd	352(%rsp), %ymm6, %ymm0
 856      24600100 
 856      00
 857 0fc6 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 858 0fca C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 859 0fce C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 860 0fd2 C5FD5984 		vmulpd	1376(%rsp), %ymm0, %ymm0
 860      24600500 
 860      00
 861 0fdb C5FD5884 		vaddpd	1248(%rsp), %ymm0, %ymm0
 861      24E00400 
 861      00
 862 0fe4 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 862      24600400 
 862      00
GAS LISTING /tmp/ccryaM5C.s 			page 28


 863              	.L30:
 864 0fed C5FD2802 		vmovapd	(%rdx), %ymm0
 865 0ff1 4883C240 		addq	$64, %rdx
 866 0ff5 4883C120 		addq	$32, %rcx
 867 0ff9 C5FD2982 		vmovapd	%ymm0, -608(%rdx)
 867      A0FDFFFF 
 868 1001 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 868      E0
 869 1006 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 869      00000000 
 870 100e C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 870      C008
 871 1014 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 871      D808
 872 101a C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 872      24E00000 
 872      00
 873 1023 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 873      00000000 
 874 102b C57B1094 		vmovsd	224(%rsp), %xmm10
 874      24E00000 
 874      00
 875 1034 C57B109C 		vmovsd	232(%rsp), %xmm11
 875      24E80000 
 875      00
 876 103d C441FB2C 		vcvttsd2siq	%xmm10, %r11
 876      DA
 877 1042 C441FB2C 		vcvttsd2siq	%xmm11, %r9
 877      CB
 878 1047 C5FB109C 		vmovsd	248(%rsp), %xmm3
 878      24F80000 
 878      00
 879 1050 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 880 1054 C57B10A4 		vmovsd	240(%rsp), %xmm12
 880      24F00000 
 880      00
 881 105d C441FB2C 		vcvttsd2siq	%xmm12, %r14
 881      F4
 882 1062 4C899C24 		movq	%r11, 192(%rsp)
 882      C0000000 
 883 106a C5FA7EB4 		vmovq	192(%rsp), %xmm6
 883      24C00000 
 883      00
 884 1073 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 884      F101
 885 1079 C461FB2C 		vcvttsd2siq	%xmm3, %r9
 885      CB
 886 107e C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 886      00000000 
 887 1086 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 887      00000000 
 888 108e 4C89B424 		movq	%r14, 192(%rsp)
 888      C0000000 
 889 1096 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 889      24C00000 
 889      00
 890 109f C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
GAS LISTING /tmp/ccryaM5C.s 			page 29


 891 10a3 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 891      F901
 892 10a9 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 893 10ad C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 894 10b1 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 894      00000000 
 895 10b9 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 896 10bd C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 896      00000000 
 897 10c5 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 897      00000000 
 898 10cd C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 898      00000000 
 899 10d5 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 900 10d9 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 900      00000000 
 901 10e1 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 901      00000000 
 902 10e9 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 902      D8
 903 10ee C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 903      DC
 904 10f3 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 905 10f7 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 905      00000000 
 906 10ff C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 906      D3
 907 1104 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 907      00000000 
 908 110c C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 908      00000000 
 909 1114 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 909      00000000 
 910 111c C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 910      C0
 911 1121 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 911      C3
 912 1126 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 912      00000000 
 913 112e C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 913      00000000 
 914 1136 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 915 113a C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 915      C0
 916 113f C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 917 1143 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 917      00000000 
 918 114b C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 918      D8
 919 1150 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 919      00000000 
 920 1158 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 920      D2
 921 115d C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 922 1161 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 922      E301
 923 1167 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
GAS LISTING /tmp/ccryaM5C.s 			page 30


 923      C1
 924 116c C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 924      C6
 925 1171 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 925      F301
 926 1177 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 927 117b C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 927      00000000 
 928 1183 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 929 1187 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 929      00000000 
 930 118f C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 930      15000000 
 930      00
 931 1198 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 931      00000000 
 932 11a0 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 932      C1
 933 11a5 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 933      C6
 934 11aa C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 934      1D000000 
 934      00
 935 11b3 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 935      C001
 936 11b9 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 936      05000000 
 936      00
 937 11c2 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 937      DE
 938 11c7 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 938      D001
 939 11cd C5F928C4 		vmovapd	%xmm4, %xmm0
 940 11d1 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 940      01
 941 11d6 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 941      00000000 
 942 11de C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 942      05000000 
 942      00
 943 11e7 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 943      C6
 944 11ec C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 944      C301
 945 11f2 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 946 11f6 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 946      00000000 
 947 11fe C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 947      00000000 
 948 1206 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 948      00000000 
 949 120e C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 949      ED40
 950 1214 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 950      D940
 951 121a C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 951      3E
GAS LISTING /tmp/ccryaM5C.s 			page 31


 952 121f C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 952      E580
 953 1225 C5FD2859 		vmovapd	96(%rcx), %ymm3
 953      60
 954 122a C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 954      3E
 955 122f C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 955      F801
 956 1235 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 956      A0
 957 123a C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 957      C0
 958 123f C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 959 1243 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 960 1247 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 961 124b C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 962 124f C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 963 1253 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 964 1257 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 965 125b C5FD2982 		vmovapd	%ymm0, -576(%rdx)
 965      C0FDFFFF 
 966 1263 4839D0   		cmpq	%rdx, %rax
 967 1266 0F8581FD 		jne	.L30
 967      FFFF
 968 126c C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 968      00000000 
 969 1274 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 969      C9
 970 1279 C5FD283D 		vmovapd	.LC36(%rip), %ymm7
 970      00000000 
 971 1281 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 971      ED
 972 1286 C5CD599C 		vmulpd	512(%rsp), %ymm6, %ymm3
 972      24000200 
 972      00
 973 128f 4889F1   		movq	%rsi, %rcx
 974 1292 C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 974      00000000 
 975 129a 4889FA   		movq	%rdi, %rdx
 976 129d C5C559A4 		vmulpd	896(%rsp), %ymm7, %ymm4
 976      24800300 
 976      00
 977 12a6 C5FD283D 		vmovapd	.LC38(%rip), %ymm7
 977      00000000 
 978 12ae C5CD59AC 		vmulpd	768(%rsp), %ymm6, %ymm5
 978      24000300 
 978      00
 979 12b7 C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 979      00000000 
 980 12bf C5C55984 		vmulpd	256(%rsp), %ymm7, %ymm0
 980      24000100 
 980      00
 981 12c8 C5FD283D 		vmovapd	.LC35(%rip), %ymm7
 981      00000000 
 982 12d0 C5CD59B4 		vmulpd	640(%rsp), %ymm6, %ymm6
 982      24800200 
 982      00
GAS LISTING /tmp/ccryaM5C.s 			page 32


 983 12d9 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 984 12dd C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 984      00000000 
 985 12e5 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 986 12e9 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 987 12ed C5CD59A4 		vmulpd	928(%rsp), %ymm6, %ymm4
 987      24A00300 
 987      00
 988 12f6 C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 988      00000000 
 989 12fe C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 990 1302 C5C5599C 		vmulpd	544(%rsp), %ymm7, %ymm3
 990      24200200 
 990      00
 991 130b C5FD283D 		vmovapd	.LC37(%rip), %ymm7
 991      00000000 
 992 1313 C5C559AC 		vmulpd	800(%rsp), %ymm7, %ymm5
 992      24200300 
 992      00
 993 131c C5FD283D 		vmovapd	.LC39(%rip), %ymm7
 993      00000000 
 994 1324 C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 994      24400500 
 994      00
 995 132d C5FD5884 		vaddpd	1152(%rsp), %ymm0, %ymm0
 995      24800400 
 995      00
 996 1336 C5FD2984 		vmovapd	%ymm0, 1024(%rsp)
 996      24000400 
 996      00
 997 133f C5CD5984 		vmulpd	288(%rsp), %ymm6, %ymm0
 997      24200100 
 997      00
 998 1348 C5C559B4 		vmulpd	672(%rsp), %ymm7, %ymm6
 998      24A00200 
 998      00
 999 1351 C5FD283D 		vmovapd	.LC36(%rip), %ymm7
 999      00000000 
 1000 1359 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1001 135d C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 1001      00000000 
 1002 1365 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1003 1369 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1004 136d C5C559A4 		vmulpd	960(%rsp), %ymm7, %ymm4
 1004      24C00300 
 1004      00
 1005 1376 C5FD283D 		vmovapd	.LC38(%rip), %ymm7
 1005      00000000 
 1006 137e C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1007 1382 C5CD599C 		vmulpd	576(%rsp), %ymm6, %ymm3
 1007      24400200 
 1007      00
 1008 138b C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 1008      00000000 
 1009 1393 C5CD59AC 		vmulpd	832(%rsp), %ymm6, %ymm5
 1009      24400300 
 1009      00
GAS LISTING /tmp/ccryaM5C.s 			page 33


 1010 139c C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 1010      00000000 
 1011 13a4 C5FD5984 		vmulpd	1344(%rsp), %ymm0, %ymm0
 1011      24400500 
 1011      00
 1012 13ad C5CD59B4 		vmulpd	704(%rsp), %ymm6, %ymm6
 1012      24C00200 
 1012      00
 1013 13b6 C5FD5884 		vaddpd	1184(%rsp), %ymm0, %ymm0
 1013      24A00400 
 1013      00
 1014 13bf C5FD2984 		vmovapd	%ymm0, 1056(%rsp)
 1014      24200400 
 1014      00
 1015 13c8 C5C55984 		vmulpd	320(%rsp), %ymm7, %ymm0
 1015      24400100 
 1015      00
 1016 13d1 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1017 13d5 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1018 13d9 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1019 13dd C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1020 13e1 C5FD5984 		vmulpd	1376(%rsp), %ymm0, %ymm0
 1020      24600500 
 1020      00
 1021 13ea C5FD5884 		vaddpd	1216(%rsp), %ymm0, %ymm0
 1021      24C00400 
 1021      00
 1022 13f3 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 1022      24400400 
 1022      00
 1023 13fc C5FD283D 		vmovapd	.LC35(%rip), %ymm7
 1023      00000000 
 1024 1404 C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 1024      00000000 
 1025 140c C5C5599C 		vmulpd	608(%rsp), %ymm7, %ymm3
 1025      24600200 
 1025      00
 1026 1415 C5FD283D 		vmovapd	.LC37(%rip), %ymm7
 1026      00000000 
 1027 141d C5CD59A4 		vmulpd	992(%rsp), %ymm6, %ymm4
 1027      24E00300 
 1027      00
 1028 1426 C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 1028      00000000 
 1029 142e C5C559AC 		vmulpd	864(%rsp), %ymm7, %ymm5
 1029      24600300 
 1029      00
 1030 1437 C5FD283D 		vmovapd	.LC39(%rip), %ymm7
 1030      00000000 
 1031 143f C5CD5984 		vmulpd	352(%rsp), %ymm6, %ymm0
 1031      24600100 
 1031      00
 1032 1448 C5C559B4 		vmulpd	736(%rsp), %ymm7, %ymm6
 1032      24E00200 
 1032      00
 1033 1451 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1034 1455 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
GAS LISTING /tmp/ccryaM5C.s 			page 34


 1035 1459 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1036 145d C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1037 1461 C5FD5984 		vmulpd	1376(%rsp), %ymm0, %ymm0
 1037      24600500 
 1037      00
 1038 146a C5FD5884 		vaddpd	1248(%rsp), %ymm0, %ymm0
 1038      24E00400 
 1038      00
 1039 1473 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 1039      24600400 
 1039      00
 1040              	.L32:
 1041 147c C5FD2802 		vmovapd	(%rdx), %ymm0
 1042 1480 4883C240 		addq	$64, %rdx
 1043 1484 4883C120 		addq	$32, %rcx
 1044 1488 C5FD2982 		vmovapd	%ymm0, -736(%rdx)
 1044      20FDFFFF 
 1045 1490 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 1045      E0
 1046 1495 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 1046      00000000 
 1047 149d C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 1047      C008
 1048 14a3 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 1048      D808
 1049 14a9 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 1049      24E00000 
 1049      00
 1050 14b2 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1050      24E80000 
 1050      00
 1051 14bb C5FB109C 		vmovsd	224(%rsp), %xmm3
 1051      24E00000 
 1051      00
 1052 14c4 C461FB2C 		vcvttsd2siq	%xmm5, %r9
 1052      CD
 1053 14c9 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 1053      00000000 
 1054 14d1 C461FB2C 		vcvttsd2siq	%xmm3, %r10
 1054      D3
 1055 14d6 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 1055      00000000 
 1056 14de C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 1056      00000000 
 1057 14e6 C57B1084 		vmovsd	248(%rsp), %xmm8
 1057      24F80000 
 1057      00
 1058 14ef C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 1059 14f3 C5FB10BC 		vmovsd	240(%rsp), %xmm7
 1059      24F00000 
 1059      00
 1060 14fc C461FB2C 		vcvttsd2siq	%xmm7, %r15
 1060      FF
 1061 1501 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 1062 1505 4C899424 		movq	%r10, 192(%rsp)
 1062      C0000000 
 1063 150d C5FA7EB4 		vmovq	192(%rsp), %xmm6
GAS LISTING /tmp/ccryaM5C.s 			page 35


 1063      24C00000 
 1063      00
 1064 1516 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 1064      F101
 1065 151c C441FB2C 		vcvttsd2siq	%xmm8, %r9
 1065      C8
 1066 1521 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 1067 1525 4C89BC24 		movq	%r15, 192(%rsp)
 1067      C0000000 
 1068 152d C5FA7EBC 		vmovq	192(%rsp), %xmm7
 1068      24C00000 
 1068      00
 1069 1536 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 1070 153a C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 1070      F901
 1071 1540 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 1071      00000000 
 1072 1548 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1073 154c C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 1073      00000000 
 1074 1554 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 1074      00000000 
 1075 155c C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 1075      00000000 
 1076 1564 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1077 1568 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 1077      00000000 
 1078 1570 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 1078      00000000 
 1079 1578 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 1079      D8
 1080 157d C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 1080      DC
 1081 1582 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 1082 1586 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 1082      00000000 
 1083 158e C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1083      D3
 1084 1593 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 1084      00000000 
 1085 159b C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 1085      00000000 
 1086 15a3 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 1086      00000000 
 1087 15ab C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 1087      C0
 1088 15b0 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 1088      C3
 1089 15b5 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 1089      00000000 
 1090 15bd C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 1090      00000000 
 1091 15c5 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 1092 15c9 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 1092      C0
 1093 15ce C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 1094 15d2 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
GAS LISTING /tmp/ccryaM5C.s 			page 36


 1094      00000000 
 1095 15da C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 1095      D8
 1096 15df C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 1096      00000000 
 1097 15e7 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 1097      D2
 1098 15ec C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 1099 15f0 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 1099      E301
 1100 15f6 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 1100      C1
 1101 15fb C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 1101      C6
 1102 1600 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 1102      F301
 1103 1606 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 1104 160a C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 1104      00000000 
 1105 1612 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 1106 1616 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 1106      00000000 
 1107 161e C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 1107      15000000 
 1107      00
 1108 1627 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 1108      00000000 
 1109 162f C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 1109      C1
 1110 1634 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1110      C6
 1111 1639 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 1111      1D000000 
 1111      00
 1112 1642 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 1112      C001
 1113 1648 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 1113      05000000 
 1113      00
 1114 1651 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 1114      DE
 1115 1656 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 1115      D001
 1116 165c C5F928C4 		vmovapd	%xmm4, %xmm0
 1117 1660 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1117      01
 1118 1665 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1118      00000000 
 1119 166d C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1119      05000000 
 1119      00
 1120 1676 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1120      C6
 1121 167b C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 1121      C301
 1122 1681 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 1123 1685 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
GAS LISTING /tmp/ccryaM5C.s 			page 37


 1123      00000000 
 1124 168d C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 1124      00000000 
 1125 1695 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 1125      00000000 
 1126 169d C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 1126      ED40
 1127 16a3 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 1127      D940
 1128 16a9 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 1128      3E
 1129 16ae C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 1129      E580
 1130 16b4 C5FD2859 		vmovapd	96(%rcx), %ymm3
 1130      60
 1131 16b9 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 1131      3E
 1132 16be C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 1132      F801
 1133 16c4 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 1133      A0
 1134 16c9 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 1134      C0
 1135 16ce C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 1136 16d2 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 1137 16d6 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 1138 16da C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 1139 16de C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 1140 16e2 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1141 16e6 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1142 16ea C5FD2982 		vmovapd	%ymm0, -704(%rdx)
 1142      40FDFFFF 
 1143 16f2 4839C2   		cmpq	%rax, %rdx
 1144 16f5 0F8581FD 		jne	.L32
 1144      FFFF
 1145 16fb 488D9424 		leaq	256(%rsp), %rdx
 1145      00010000 
 1146 1703 C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 1146      00000000 
 1147 170b 4531C9   		xorl	%r9d, %r9d
 1148              	.L34:
 1149 170e C5FD2835 		vmovapd	.LC40(%rip), %ymm6
 1149      00000000 
 1150 1716 4B8D0C01 		leaq	(%r9,%r8), %rcx
 1151 171a 4983C120 		addq	$32, %r9
 1152 171e 4883C240 		addq	$64, %rdx
 1153 1722 C5CD595A 		vmulpd	64(%rdx), %ymm6, %ymm3
 1153      40
 1154 1727 C5FD2835 		vmovapd	.LC41(%rip), %ymm6
 1154      00000000 
 1155 172f C5CD59A2 		vmulpd	576(%rdx), %ymm6, %ymm4
 1155      40020000 
 1156 1737 C5FD2835 		vmovapd	.LC42(%rip), %ymm6
 1156      00000000 
 1157 173f C5CD5982 		vmulpd	448(%rdx), %ymm6, %ymm0
 1157      C0010000 
 1158 1747 C5FD2835 		vmovapd	.LC43(%rip), %ymm6
GAS LISTING /tmp/ccryaM5C.s 			page 38


 1158      00000000 
 1159 174f C5CD59AA 		vmulpd	320(%rdx), %ymm6, %ymm5
 1159      40010000 
 1160 1757 C5FD2835 		vmovapd	.LC44(%rip), %ymm6
 1160      00000000 
 1161 175f C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1162 1763 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1163 1767 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1164 176b C5CD595A 		vmulpd	64(%rdx), %ymm6, %ymm3
 1164      40
 1165 1770 C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1165      00000000 
 1166 1778 C5CD59A2 		vmulpd	192(%rdx), %ymm6, %ymm4
 1166      C0000000 
 1167 1780 C5FD2835 		vmovapd	.LC46(%rip), %ymm6
 1167      00000000 
 1168 1788 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1169 178c C5CD59AA 		vmulpd	576(%rdx), %ymm6, %ymm5
 1169      40020000 
 1170 1794 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1170      00000000 
 1171 179c C5FD5882 		vaddpd	832(%rdx), %ymm0, %ymm0
 1171      40030000 
 1172 17a4 C5FD2982 		vmovapd	%ymm0, 704(%rdx)
 1172      C0020000 
 1173 17ac C5CD5982 		vmulpd	448(%rdx), %ymm6, %ymm0
 1173      C0010000 
 1174 17b4 C5FD2835 		vmovapd	.LC48(%rip), %ymm6
 1174      00000000 
 1175 17bc C5CD59B2 		vmulpd	320(%rdx), %ymm6, %ymm6
 1175      40010000 
 1176 17c4 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1177 17c8 C5FD2835 		vmovapd	.LC40(%rip), %ymm6
 1177      00000000 
 1178 17d0 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1179 17d4 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1180 17d8 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1181 17dc C5ED549A 		vandpd	704(%rdx), %ymm2, %ymm3
 1181      C0020000 
 1182 17e4 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1183 17e8 C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1183      00000000 
 1184 17f0 C5FD2942 		vmovapd	%ymm0, -64(%rdx)
 1184      C0
 1185 17f5 C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1185      00000000 
 1186 17fd C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1187 1801 C5FD295A 		vmovapd	%ymm3, 64(%rdx)
 1187      40
 1188 1806 C5CD595A 		vmulpd	96(%rdx), %ymm6, %ymm3
 1188      60
 1189 180b C5FD2835 		vmovapd	.LC41(%rip), %ymm6
 1189      00000000 
 1190 1813 C5CD59A2 		vmulpd	608(%rdx), %ymm6, %ymm4
 1190      60020000 
 1191 181b C5FD2835 		vmovapd	.LC42(%rip), %ymm6
 1191      00000000 
GAS LISTING /tmp/ccryaM5C.s 			page 39


 1192 1823 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1193 1827 C5FD2982 		vmovapd	%ymm0, 192(%rdx)
 1193      C0000000 
 1194 182f C5CD5982 		vmulpd	480(%rdx), %ymm6, %ymm0
 1194      E0010000 
 1195 1837 C5FD2835 		vmovapd	.LC43(%rip), %ymm6
 1195      00000000 
 1196 183f C5CD59AA 		vmulpd	352(%rdx), %ymm6, %ymm5
 1196      60010000 
 1197 1847 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1198 184b C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1199 184f C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1200 1853 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1201 1857 C5FD5882 		vaddpd	864(%rdx), %ymm0, %ymm0
 1201      60030000 
 1202 185f C5FD2982 		vmovapd	%ymm0, 736(%rdx)
 1202      E0020000 
 1203 1867 C5FD2835 		vmovapd	.LC44(%rip), %ymm6
 1203      00000000 
 1204 186f C5CD595A 		vmulpd	96(%rdx), %ymm6, %ymm3
 1204      60
 1205 1874 C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1205      00000000 
 1206 187c C5CD59A2 		vmulpd	224(%rdx), %ymm6, %ymm4
 1206      E0000000 
 1207 1884 C5FD2835 		vmovapd	.LC46(%rip), %ymm6
 1207      00000000 
 1208 188c C5CD59AA 		vmulpd	608(%rdx), %ymm6, %ymm5
 1208      60020000 
 1209 1894 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1209      00000000 
 1210 189c C5CD5982 		vmulpd	480(%rdx), %ymm6, %ymm0
 1210      E0010000 
 1211 18a4 C5C559B2 		vmulpd	352(%rdx), %ymm7, %ymm6
 1211      60010000 
 1212 18ac C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1213 18b0 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1214 18b4 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1215 18b8 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1216 18bc C5ED549A 		vandpd	736(%rdx), %ymm2, %ymm3
 1216      E0020000 
 1217 18c4 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1218 18c8 C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1218      00000000 
 1219 18d0 C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 1219      E0
 1220 18d5 C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1220      00000000 
 1221 18dd C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1222 18e1 C5FD295A 		vmovapd	%ymm3, 96(%rdx)
 1222      60
 1223 18e6 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1224 18ea C5FD2982 		vmovapd	%ymm0, 224(%rdx)
 1224      E0000000 
 1225 18f2 4983F940 		cmpq	$64, %r9
 1226 18f6 0F8512FE 		jne	.L34
 1226      FFFF
GAS LISTING /tmp/ccryaM5C.s 			page 40


 1227 18fc C5FD2884 		vmovapd	512(%rsp), %ymm0
 1227      24000200 
 1227      00
 1228 1905 488D8C24 		leaq	256(%rsp), %rcx
 1228      00010000 
 1229 190d C57D28AC 		vmovapd	128(%rsp), %ymm13
 1229      24800000 
 1229      00
 1230 1916 C5FD5D84 		vminpd	544(%rsp), %ymm0, %ymm0
 1230      24200200 
 1230      00
 1231 191f 4C8D5140 		leaq	64(%rcx), %r10
 1232 1923 4889CA   		movq	%rcx, %rdx
 1233 1926 C5FD2984 		vmovapd	%ymm0, 384(%rsp)
 1233      24800100 
 1233      00
 1234 192f C5FD2884 		vmovapd	576(%rsp), %ymm0
 1234      24400200 
 1234      00
 1235 1938 C5FD5D84 		vminpd	608(%rsp), %ymm0, %ymm0
 1235      24600200 
 1235      00
 1236 1941 C5FD2984 		vmovapd	%ymm0, 416(%rsp)
 1236      24A00100 
 1236      00
 1237              	.L40:
 1238 194a C5FD28BA 		vmovapd	128(%rdx), %ymm7
 1238      80000000 
 1239 1952 C44119EF 		vpxor	%xmm12, %xmm12, %xmm12
 1239      E4
 1240 1957 C4E37D19 		vextractf128	$0x1, %ymm7, %xmm6
 1240      FE01
 1241 195d C5F928EF 		vmovapd	%xmm7, %xmm5
 1242 1961 C5C9DB1D 		vpand	.LC50(%rip), %xmm6, %xmm3
 1242      00000000 
 1243 1969 C5F973D6 		vpsrlq	$52, %xmm6, %xmm0
 1243      34
 1244 196e C5B973D5 		vpsrlq	$52, %xmm5, %xmm8
 1244      34
 1245 1973 C5D1DB25 		vpand	.LC50(%rip), %xmm5, %xmm4
 1245      00000000 
 1246 197b C5F9EB05 		vpor	.LC52(%rip), %xmm0, %xmm0
 1246      00000000 
 1247 1983 C5E1EB1D 		vpor	.LC51(%rip), %xmm3, %xmm3
 1247      00000000 
 1248 198b C5D9EB25 		vpor	.LC51(%rip), %xmm4, %xmm4
 1248      00000000 
 1249 1993 C539EB05 		vpor	.LC52(%rip), %xmm8, %xmm8
 1249      00000000 
 1250 199b C4E35D18 		vinsertf128	$0x1, %xmm3, %ymm4, %ymm4
 1250      E301
 1251 19a1 C5FD281D 		vmovapd	.LC54(%rip), %ymm3
 1251      00000000 
 1252 19a9 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 1252      C001
 1253 19af C5E5C2DC 		vcmppd	$1, %ymm4, %ymm3, %ymm3
 1253      01
GAS LISTING /tmp/ccryaM5C.s 			page 41


 1254 19b4 C53D5C05 		vsubpd	.LC53(%rip), %ymm8, %ymm8
 1254      00000000 
 1255 19bc C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 1255      D901
 1256 19c2 C5F928C3 		vmovapd	%xmm3, %xmm0
 1257 19c6 C5E554D9 		vandpd	%ymm1, %ymm3, %ymm3
 1258 19ca C531570D 		vxorpd	.LC55(%rip), %xmm9, %xmm9
 1258      00000000 
 1259 19d2 C5F95705 		vxorpd	.LC55(%rip), %xmm0, %xmm0
 1259      00000000 
 1260 19da C5BD58DB 		vaddpd	%ymm3, %ymm8, %ymm3
 1261 19de C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 1261      C101
 1262 19e4 C5FD54C4 		vandpd	%ymm4, %ymm0, %ymm0
 1263 19e8 C5FD58E4 		vaddpd	%ymm4, %ymm0, %ymm4
 1264 19ec C5DD5CC1 		vsubpd	%ymm1, %ymm4, %ymm0
 1265 19f0 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 1265      00000000 
 1266 19f8 C5FD59E0 		vmulpd	%ymm0, %ymm0, %ymm4
 1267 19fc C57D591D 		vmulpd	.LC56(%rip), %ymm0, %ymm11
 1267      00000000 
 1268 1a04 C57D590D 		vmulpd	.LC60(%rip), %ymm0, %ymm9
 1268      00000000 
 1269 1a0c C52D5815 		vaddpd	.LC59(%rip), %ymm10, %ymm10
 1269      00000000 
 1270 1a14 C55D59C4 		vmulpd	%ymm4, %ymm4, %ymm8
 1271 1a18 C525581D 		vaddpd	.LC57(%rip), %ymm11, %ymm11
 1271      00000000 
 1272 1a20 C535580D 		vaddpd	.LC61(%rip), %ymm9, %ymm9
 1272      00000000 
 1273 1a28 C4412D59 		vmulpd	%ymm8, %ymm10, %ymm10
 1273      D0
 1274 1a2d C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1274      D3
 1275 1a32 C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 1276 1a36 C57D591D 		vmulpd	.LC62(%rip), %ymm0, %ymm11
 1276      00000000 
 1277 1a3e C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1277      CA
 1278 1a43 C57D59D4 		vmulpd	%ymm4, %ymm0, %ymm10
 1279 1a47 C525581D 		vaddpd	.LC63(%rip), %ymm11, %ymm11
 1279      00000000 
 1280 1a4f C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 1280      CA
 1281 1a54 C57D5815 		vaddpd	.LC64(%rip), %ymm0, %ymm10
 1281      00000000 
 1282 1a5c C4412D59 		vmulpd	%ymm8, %ymm10, %ymm8
 1282      C0
 1283 1a61 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm10
 1283      D3
 1284 1a66 C57D5905 		vmulpd	.LC65(%rip), %ymm0, %ymm8
 1284      00000000 
 1285 1a6e C545C21D 		vcmppd	$1, .LC69(%rip), %ymm7, %ymm11
 1285      00000000 
 1285      01
 1286 1a77 C53D5805 		vaddpd	.LC66(%rip), %ymm8, %ymm8
 1286      00000000 
GAS LISTING /tmp/ccryaM5C.s 			page 42


 1287 1a7f C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 1288 1a83 C5DD5925 		vmulpd	.LC19(%rip), %ymm4, %ymm4
 1288      00000000 
 1289 1a8b C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 1289      C2
 1290 1a90 C5FD5CC4 		vsubpd	%ymm4, %ymm0, %ymm0
 1291 1a94 C441355E 		vdivpd	%ymm8, %ymm9, %ymm8
 1291      C0
 1292 1a99 C565590D 		vmulpd	.LC67(%rip), %ymm3, %ymm9
 1292      00000000 
 1293 1aa1 C5E5591D 		vmulpd	.LC68(%rip), %ymm3, %ymm3
 1293      00000000 
 1294 1aa9 C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 1294      C0
 1295 1aae C5B173F6 		vpsllq	$1, %xmm6, %xmm9
 1295      01
 1296 1ab3 C5B1DB25 		vpand	.LC23(%rip), %xmm9, %xmm4
 1296      00000000 
 1297 1abb C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 1297      0D000000 
 1297      00
 1298 1ac4 C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 1299 1ac8 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 1299      01
 1300 1acd C4E25929 		vpcmpeqq	.LC23(%rip), %xmm4, %xmm4
 1300      25000000 
 1300      00
 1301 1ad6 C4C159EF 		vpxor	%xmm14, %xmm4, %xmm4
 1301      E6
 1302 1adb C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 1303 1adf C5B9DB1D 		vpand	.LC23(%rip), %xmm8, %xmm3
 1303      00000000 
 1304 1ae7 C4E26129 		vpcmpeqq	.LC23(%rip), %xmm3, %xmm3
 1304      1D000000 
 1304      00
 1305 1af0 C4C161EF 		vpxor	%xmm14, %xmm3, %xmm3
 1305      DE
 1306 1af5 C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm3
 1306      DC01
 1307 1afb C4E37D19 		vextractf128	$0x1, %ymm3, %xmm4
 1307      DC01
 1308 1b01 C5615715 		vxorpd	.LC55(%rip), %xmm3, %xmm10
 1308      00000000 
 1309 1b09 C5D95725 		vxorpd	.LC55(%rip), %xmm4, %xmm4
 1309      00000000 
 1310 1b11 C4632D18 		vinsertf128	$0x1, %xmm4, %ymm10, %ymm10
 1310      D401
 1311 1b17 C4C12556 		vorpd	%ymm10, %ymm11, %ymm3
 1311      DA
 1312 1b1c C4637D4B 		vblendvpd	%ymm11, .LC70(%rip), %ymm0, %ymm11
 1312      1D000000 
 1312      00B0
 1313 1b26 C4E37D19 		vextractf128	$0x1, %ymm3, %xmm4
 1313      DC01
 1314 1b2c C5E156DC 		vorpd	%xmm4, %xmm3, %xmm3
 1315 1b30 C5C9DB25 		vpand	.LC72(%rip), %xmm6, %xmm4
 1315      00000000 
GAS LISTING /tmp/ccryaM5C.s 			page 43


 1316 1b38 C5C972E6 		vpsrad	$31, %xmm6, %xmm6
 1316      1F
 1317 1b3d C57950CB 		vmovmskpd	%xmm3, %r9d
 1318 1b41 C5E1EFDB 		vpxor	%xmm3, %xmm3, %xmm3
 1319 1b45 4585C9   		testl	%r9d, %r9d
 1320 1b48 C4E25929 		vpcmpeqq	%xmm3, %xmm4, %xmm4
 1320      E3
 1321 1b4d C5D1DB1D 		vpand	.LC72(%rip), %xmm5, %xmm3
 1321      00000000 
 1322 1b55 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 1322      1F
 1323 1b5a C4C26129 		vpcmpeqq	%xmm12, %xmm3, %xmm3
 1323      DC
 1324 1b5f C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm3
 1324      DC01
 1325 1b65 C4E3254B 		vblendvpd	%ymm3, 160(%rsp), %ymm11, %ymm3
 1325      9C24A000 
 1325      000030
 1326 1b70 C4E3654B 		vblendvpd	%ymm10, %ymm7, %ymm3, %ymm7
 1326      FFA0
 1327 1b76 C5E173D6 		vpsrlq	$32, %xmm6, %xmm3
 1327      20
 1328 1b7b C4E3610E 		vpblendw	$204, %xmm6, %xmm3, %xmm6
 1328      F6CC
 1329 1b81 C5E173D5 		vpsrlq	$32, %xmm5, %xmm3
 1329      20
 1330 1b86 C4E3610E 		vpblendw	$204, %xmm5, %xmm3, %xmm5
 1330      EDCC
 1331 1b8c C5F828DD 		vmovaps	%xmm5, %xmm3
 1332 1b90 C4E36518 		vinsertf128	$0x1, %xmm6, %ymm3, %ymm6
 1332      F601
 1333 1b96 C4E23929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm3
 1333      1D000000 
 1333      00
 1334 1b9f C4C36518 		vinsertf128	$0x1, %xmm9, %ymm3, %ymm3
 1334      D901
 1335 1ba5 C5E554DE 		vandpd	%ymm6, %ymm3, %ymm3
 1336 1ba9 C4E3454B 		vblendvpd	%ymm3, .LC70(%rip), %ymm7, %ymm3
 1336      1D000000 
 1336      0030
 1337 1bb3 7504     		jne	.L36
 1338 1bb5 C5FD28D8 		vmovapd	%ymm0, %ymm3
 1339              	.L36:
 1340 1bb9 C5E5591D 		vmulpd	.LC26(%rip), %ymm3, %ymm3
 1340      00000000 
 1341 1bc1 C5E55935 		vmulpd	.LC73(%rip), %ymm3, %ymm6
 1341      00000000 
 1342 1bc9 C4E37D09 		vroundpd	$8, %ymm6, %ymm6
 1342      F608
 1343 1bcf C5CD5905 		vmulpd	.LC74(%rip), %ymm6, %ymm0
 1343      00000000 
 1344 1bd7 C5CD5925 		vmulpd	.LC75(%rip), %ymm6, %ymm4
 1344      00000000 
 1345 1bdf C5CD5835 		vaddpd	.LC53(%rip), %ymm6, %ymm6
 1345      00000000 
 1346 1be7 C5E55CC0 		vsubpd	%ymm0, %ymm3, %ymm0
 1347 1beb C5FD5CC4 		vsubpd	%ymm4, %ymm0, %ymm0
GAS LISTING /tmp/ccryaM5C.s 			page 44


 1348 1bef C5FD593D 		vmulpd	.LC79(%rip), %ymm0, %ymm7
 1348      00000000 
 1349 1bf7 C57D590D 		vmulpd	.LC76(%rip), %ymm0, %ymm9
 1349      00000000 
 1350 1bff C57D5915 		vmulpd	.LC77(%rip), %ymm0, %ymm10
 1350      00000000 
 1351 1c07 C5FD59E0 		vmulpd	%ymm0, %ymm0, %ymm4
 1352 1c0b C5C5583D 		vaddpd	.LC80(%rip), %ymm7, %ymm7
 1352      00000000 
 1353 1c13 C535580D 		vaddpd	.LC19(%rip), %ymm9, %ymm9
 1353      00000000 
 1354 1c1b C52D5815 		vaddpd	.LC78(%rip), %ymm10, %ymm10
 1354      00000000 
 1355 1c23 C5DD59EC 		vmulpd	%ymm4, %ymm4, %ymm5
 1356 1c27 C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 1357 1c2b C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 1358 1c2f C55559C5 		vmulpd	%ymm5, %ymm5, %ymm8
 1359 1c33 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1359      FA
 1360 1c38 C57D5915 		vmulpd	.LC83(%rip), %ymm0, %ymm10
 1360      00000000 
 1361 1c40 C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 1362 1c44 C5C559FD 		vmulpd	%ymm5, %ymm7, %ymm7
 1363 1c48 C52D5815 		vaddpd	.LC84(%rip), %ymm10, %ymm10
 1363      00000000 
 1364 1c50 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1364      F9
 1365 1c55 C57D590D 		vmulpd	.LC81(%rip), %ymm0, %ymm9
 1365      00000000 
 1366 1c5d C5FD5905 		vmulpd	.LC85(%rip), %ymm0, %ymm0
 1366      00000000 
 1367 1c65 C5AD59E4 		vmulpd	%ymm4, %ymm10, %ymm4
 1368 1c69 C535580D 		vaddpd	.LC82(%rip), %ymm9, %ymm9
 1368      00000000 
 1369 1c71 C5FD5805 		vaddpd	.LC86(%rip), %ymm0, %ymm0
 1369      00000000 
 1370 1c79 C4C15D58 		vaddpd	%ymm9, %ymm4, %ymm4
 1370      E1
 1371 1c7e C5FD59ED 		vmulpd	%ymm5, %ymm0, %ymm5
 1372 1c82 C5F973F6 		vpsllq	$52, %xmm6, %xmm0
 1372      34
 1373 1c87 C5D558EC 		vaddpd	%ymm4, %ymm5, %ymm5
 1374 1c8b C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 1374      F401
 1375 1c91 C5D973F4 		vpsllq	$52, %xmm4, %xmm4
 1375      34
 1376 1c96 C4E37D18 		vinsertf128	$0x1, %xmm4, %ymm0, %ymm0
 1376      C401
 1377 1c9c C4C15559 		vmulpd	%ymm8, %ymm5, %ymm5
 1377      E8
 1378 1ca1 C5F928E3 		vmovapd	%xmm3, %xmm4
 1379 1ca5 C5D558EF 		vaddpd	%ymm7, %ymm5, %ymm5
 1380 1ca9 C5E554FA 		vandpd	%ymm2, %ymm3, %ymm7
 1381 1cad C5C5C23D 		vcmppd	$1, .LC87(%rip), %ymm7, %ymm7
 1381      00000000 
 1381      01
 1382 1cb6 C5D558F1 		vaddpd	%ymm1, %ymm5, %ymm6
GAS LISTING /tmp/ccryaM5C.s 			page 45


 1383 1cba C4E37D19 		vextractf128	$0x1, %ymm3, %xmm5
 1383      DD01
 1384 1cc0 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 1384      01
 1385 1cc5 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 1385      00000000 
 1386 1ccd C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 1386      1F
 1387 1cd2 C5CD59F0 		vmulpd	%ymm0, %ymm6, %ymm6
 1388 1cd6 C5F973F4 		vpsllq	$1, %xmm4, %xmm0
 1388      01
 1389 1cdb C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 1389      1F
 1390 1ce0 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1390      00000000 
 1391 1ce8 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1391      05000000 
 1391      00
 1392 1cf1 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 1392      C6
 1393 1cf6 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1393      05000000 
 1393      00
 1394 1cff C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1394      C6
 1395 1d04 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 1395      C001
 1396 1d0a C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 1397 1d0e C4E37D19 		vextractf128	$0x1, %ymm0, %xmm7
 1397      C701
 1398 1d14 C57928C0 		vmovapd	%xmm0, %xmm8
 1399 1d18 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1400 1d1c C57950CF 		vmovmskpd	%xmm7, %r9d
 1401 1d20 C5C173D5 		vpsrlq	$32, %xmm5, %xmm7
 1401      20
 1402 1d25 C4E3410E 		vpblendw	$204, %xmm5, %xmm7, %xmm5
 1402      EDCC
 1403 1d2b C5C173D4 		vpsrlq	$32, %xmm4, %xmm7
 1403      20
 1404 1d30 C4E3410E 		vpblendw	$204, %xmm4, %xmm7, %xmm4
 1404      E4CC
 1405 1d36 C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 1406 1d3a 4183F903 		cmpl	$3, %r9d
 1407 1d3e C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 1407      ED01
 1408 1d44 C5E5C2E3 		vcmppd	$4, %ymm3, %ymm3, %ymm4
 1408      04
 1409 1d49 C4E3154B 		vblendvpd	%ymm5, %ymm7, %ymm13, %ymm5
 1409      EF50
 1410 1d4f C4E3554B 		vblendvpd	%ymm0, %ymm6, %ymm5, %ymm0
 1410      C600
 1411 1d55 C4E37D4B 		vblendvpd	%ymm4, %ymm3, %ymm0, %ymm3
 1411      DB40
 1412 1d5b 0F843701 		je	.L57
 1412      0000
 1413              	.L38:
 1414 1d61 C5FD2882 		vmovapd	1088(%rdx), %ymm0
GAS LISTING /tmp/ccryaM5C.s 			page 46


 1414      40040000 
 1415 1d69 C5F5C2A2 		vcmppd	$2, 128(%rdx), %ymm1, %ymm4
 1415      80000000 
 1415      02
 1416 1d72 C5FD2835 		vmovapd	.LC89(%rip), %ymm6
 1416      00000000 
 1417 1d7a 4883C220 		addq	$32, %rdx
 1418 1d7e 4883C140 		addq	$64, %rcx
 1419 1d82 C5FDC205 		vcmppd	$2, .LC88(%rip), %ymm0, %ymm0
 1419      00000000 
 1419      02
 1420 1d8b C5FD283D 		vmovapd	.LC91(%rip), %ymm7
 1420      00000000 
 1421 1d93 C5DD56C0 		vorpd	%ymm0, %ymm4, %ymm0
 1422 1d97 C5CDC2E3 		vcmppd	$1, %ymm3, %ymm6, %ymm4
 1422      01
 1423 1d9c C4E3654B 		vblendvpd	%ymm4, %ymm6, %ymm3, %ymm3
 1423      DE40
 1424 1da2 C5E5C225 		vcmppd	$1, .LC26(%rip), %ymm3, %ymm4
 1424      00000000 
 1424      01
 1425 1dab C4E3654B 		vblendvpd	%ymm4, .LC26(%rip), %ymm3, %ymm3
 1425      1D000000 
 1425      0040
 1426 1db5 C5FD299A 		vmovapd	%ymm3, 224(%rdx)
 1426      E0000000 
 1427 1dbd C5FD2899 		vmovapd	832(%rcx), %ymm3
 1427      40030000 
 1428 1dc5 C4E3654B 		vblendvpd	%ymm0, 704(%rcx), %ymm3, %ymm3
 1428      99C00200 
 1428      0000
 1429 1dcf C5FD2999 		vmovapd	%ymm3, 832(%rcx)
 1429      40030000 
 1430 1dd7 C5FD2899 		vmovapd	864(%rcx), %ymm3
 1430      60030000 
 1431 1ddf C4E3654B 		vblendvpd	%ymm0, 736(%rcx), %ymm3, %ymm3
 1431      99E00200 
 1431      0000
 1432 1de9 C5FD2999 		vmovapd	%ymm3, 864(%rcx)
 1432      60030000 
 1433 1df1 C5FD289A 		vmovapd	992(%rdx), %ymm3
 1433      E0030000 
 1434 1df9 C5E558A2 		vaddpd	1056(%rdx), %ymm3, %ymm4
 1434      20040000 
 1435 1e01 C4E3654B 		vblendvpd	%ymm0, %ymm4, %ymm3, %ymm0
 1435      C400
 1436 1e07 C5FD2982 		vmovapd	%ymm0, 992(%rdx)
 1436      E0030000 
 1437 1e0f C5FD2882 		vmovapd	224(%rdx), %ymm0
 1437      E0000000 
 1438 1e17 C5FD5982 		vmulpd	1056(%rdx), %ymm0, %ymm0
 1438      20040000 
 1439 1e1f C5FD5905 		vmulpd	.LC90(%rip), %ymm0, %ymm0
 1439      00000000 
 1440 1e27 C5C5C2D8 		vcmppd	$1, %ymm0, %ymm7, %ymm3
 1440      01
 1441 1e2c C4E37D4B 		vblendvpd	%ymm3, %ymm7, %ymm0, %ymm0
GAS LISTING /tmp/ccryaM5C.s 			page 47


 1441      C730
 1442 1e32 C5FDC21D 		vcmppd	$1, .LC88(%rip), %ymm0, %ymm3
 1442      00000000 
 1442      01
 1443 1e3b C4E37D4B 		vblendvpd	%ymm3, .LC88(%rip), %ymm0, %ymm0
 1443      05000000 
 1443      0030
 1444 1e45 C5FD2982 		vmovapd	%ymm0, 1056(%rdx)
 1444      20040000 
 1445 1e4d 4C39D2   		cmpq	%r10, %rdx
 1446 1e50 0F85F4FA 		jne	.L40
 1446      FFFF
 1447 1e56 C5FD2884 		vmovapd	1280(%rsp), %ymm0
 1447      24000500 
 1447      00
 1448 1e5f C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1448      00000000 
 1449 1e67 C5FD5D84 		vminpd	1312(%rsp), %ymm0, %ymm0
 1449      24200500 
 1449      00
 1450 1e70 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1450      02
 1451 1e75 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm2
 1451      C201
 1452 1e7b C5F954C2 		vandpd	%xmm2, %xmm0, %xmm0
 1453 1e7f C5F950D0 		vmovmskpd	%xmm0, %edx
 1454 1e83 83FA03   		cmpl	$3, %edx
 1455 1e86 7420     		je	.L58
 1456 1e88 4531C9   		xorl	%r9d, %r9d
 1457 1e8b 4531D2   		xorl	%r10d, %r10d
 1458 1e8e E9BDE2FF 		jmp	.L22
 1458      FF
 1459              		.p2align 4,,10
 1460 1e93 0F1F4400 		.p2align 3
 1460      00
 1461              	.L57:
 1462 1e98 C5FD28DE 		vmovapd	%ymm6, %ymm3
 1463 1e9c E9C0FEFF 		jmp	.L38
 1463      FF
 1464              		.p2align 4,,10
 1465 1ea1 0F1F8000 		.p2align 3
 1465      000000
 1466              	.L58:
 1467 1ea8 4489E0   		movl	%r12d, %eax
 1468 1eab BAD34D62 		movl	$274877907, %edx
 1468      10
 1469 1eb0 F7EA     		imull	%edx
 1470 1eb2 4489E0   		movl	%r12d, %eax
 1471 1eb5 C1F81F   		sarl	$31, %eax
 1472 1eb8 C1FA06   		sarl	$6, %edx
 1473 1ebb 29C2     		subl	%eax, %edx
 1474 1ebd 4489E0   		movl	%r12d, %eax
 1475 1ec0 69D2E803 		imull	$1000, %edx, %edx
 1475      0000
 1476 1ec6 29D0     		subl	%edx, %eax
 1477 1ec8 83F801   		cmpl	$1, %eax
 1478 1ecb 0F848800 		je	.L59
GAS LISTING /tmp/ccryaM5C.s 			page 48


 1478      0000
 1479              	.L42:
 1480 1ed1 4183C408 		addl	$8, %r12d
 1481 1ed5 4983C540 		addq	$64, %r13
 1482 1ed9 4181FCA0 		cmpl	$1440, %r12d
 1482      050000
 1483 1ee0 0F859AE1 		jne	.L21
 1483      FFFF
 1484 1ee6 C5F877   		vzeroupper
 1485 1ee9 E8000000 		call	clock
 1485      00
 1486 1eee BA0C0000 		movl	$12, %edx
 1486      00
 1487 1ef3 4989C4   		movq	%rax, %r12
 1488 1ef6 BE000000 		movl	$.LC101, %esi
 1488      00
 1489 1efb BF000000 		movl	$_ZSt4cout, %edi
 1489      00
 1490 1f00 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1490      00
 1491 1f05 4C89E1   		movq	%r12, %rcx
 1492 1f08 48BECFF7 		movabsq	$2361183241434822607, %rsi
 1492      53E3A59B 
 1492      C420
 1493 1f12 BF000000 		movl	$_ZSt4cout, %edi
 1493      00
 1494 1f17 4829D9   		subq	%rbx, %rcx
 1495 1f1a 4889C8   		movq	%rcx, %rax
 1496 1f1d 48C1F93F 		sarq	$63, %rcx
 1497 1f21 48F7EE   		imulq	%rsi
 1498 1f24 4889D6   		movq	%rdx, %rsi
 1499 1f27 48C1FE07 		sarq	$7, %rsi
 1500 1f2b 4829CE   		subq	%rcx, %rsi
 1501 1f2e E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1501      00
 1502 1f33 BE000000 		movl	$.LC102, %esi
 1502      00
 1503 1f38 4889C7   		movq	%rax, %rdi
 1504 1f3b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1504      00
 1505 1f40 4889C7   		movq	%rax, %rdi
 1506 1f43 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1506      00
 1507 1f48 488D65D8 		leaq	-40(%rbp), %rsp
 1508 1f4c 31C0     		xorl	%eax, %eax
 1509 1f4e 5B       		popq	%rbx
 1510 1f4f 415C     		popq	%r12
 1511 1f51 415D     		popq	%r13
 1512 1f53 415E     		popq	%r14
 1513 1f55 415F     		popq	%r15
 1514 1f57 5D       		popq	%rbp
 1515              		.cfi_remember_state
 1516              		.cfi_def_cfa 7, 8
 1517 1f58 C3       		ret
 1518              	.L59:
 1519              		.cfi_restore_state
 1520 1f59 BA390000 		movl	$57, %edx
GAS LISTING /tmp/ccryaM5C.s 			page 49


 1520      00
 1521 1f5e BE000000 		movl	$.LC93, %esi
 1521      00
 1522 1f63 BF000000 		movl	$_ZSt4cout, %edi
 1522      00
 1523 1f68 C57D293C 		vmovapd	%ymm15, (%rsp)
 1523      24
 1524 1f6d C5FD294C 		vmovapd	%ymm1, 32(%rsp)
 1524      2420
 1525 1f73 C5F877   		vzeroupper
 1526 1f76 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1526      00
 1527 1f7b C5FD2884 		vmovapd	1408(%rsp), %ymm0
 1527      24800500 
 1527      00
 1528 1f84 4489E6   		movl	%r12d, %esi
 1529 1f87 BF000000 		movl	$_ZSt4cout, %edi
 1529      00
 1530 1f8c C5FD1184 		vmovupd	%ymm0, 224(%rsp)
 1530      24E00000 
 1530      00
 1531 1f95 C5FB1084 		vmovsd	224(%rsp), %xmm0
 1531      24E00000 
 1531      00
 1532 1f9e C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1532      24C00000 
 1532      00
 1533 1fa7 C5F877   		vzeroupper
 1534 1faa E8000000 		call	_ZNSolsEi
 1534      00
 1535 1faf BA060000 		movl	$6, %edx
 1535      00
 1536 1fb4 BE000000 		movl	$.LC94, %esi
 1536      00
 1537 1fb9 4889C7   		movq	%rax, %rdi
 1538 1fbc 4989C6   		movq	%rax, %r14
 1539 1fbf E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1539      00
 1540 1fc4 C5FB1084 		vmovsd	192(%rsp), %xmm0
 1540      24C00000 
 1540      00
 1541 1fcd 4C89F7   		movq	%r14, %rdi
 1542 1fd0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1542      00
 1543 1fd5 BA010000 		movl	$1, %edx
 1543      00
 1544 1fda BE000000 		movl	$.LC95, %esi
 1544      00
 1545 1fdf 4889C7   		movq	%rax, %rdi
 1546 1fe2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1546      00
 1547 1fe7 C5FD2894 		vmovapd	1152(%rsp), %ymm2
 1547      24800400 
 1547      00
 1548 1ff0 BA050000 		movl	$5, %edx
 1548      00
 1549 1ff5 BE000000 		movl	$.LC96, %esi
GAS LISTING /tmp/ccryaM5C.s 			page 50


 1549      00
 1550 1ffa BF000000 		movl	$_ZSt4cout, %edi
 1550      00
 1551 1fff C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 1551      24E00000 
 1551      00
 1552 2008 C5FB109C 		vmovsd	248(%rsp), %xmm3
 1552      24F80000 
 1552      00
 1553 2011 C5FB10A4 		vmovsd	240(%rsp), %xmm4
 1553      24F00000 
 1553      00
 1554 201a C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1554      24E80000 
 1554      00
 1555 2023 C5FB1084 		vmovsd	224(%rsp), %xmm0
 1555      24E00000 
 1555      00
 1556 202c C5FB115C 		vmovsd	%xmm3, 80(%rsp)
 1556      2450
 1557 2032 C5FB1164 		vmovsd	%xmm4, 88(%rsp)
 1557      2458
 1558 2038 C5FB116C 		vmovsd	%xmm5, 96(%rsp)
 1558      2460
 1559 203e C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1559      24C00000 
 1559      00
 1560 2047 C5F877   		vzeroupper
 1561 204a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1561      00
 1562 204f BA010000 		movl	$1, %edx
 1562      00
 1563 2054 BE000000 		movl	$.LC0, %esi
 1563      00
 1564 2059 BF000000 		movl	$_ZSt4cout, %edi
 1564      00
 1565 205e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1565      00
 1566 2063 C5FB1084 		vmovsd	192(%rsp), %xmm0
 1566      24C00000 
 1566      00
 1567 206c BF000000 		movl	$_ZSt4cout, %edi
 1567      00
 1568 2071 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1568      00
 1569 2076 BA010000 		movl	$1, %edx
 1569      00
 1570 207b BE000000 		movl	$.LC0, %esi
 1570      00
 1571 2080 4889C7   		movq	%rax, %rdi
 1572 2083 4989C6   		movq	%rax, %r14
 1573 2086 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1573      00
 1574 208b C5FB106C 		vmovsd	96(%rsp), %xmm5
 1574      2460
 1575 2091 4C89F7   		movq	%r14, %rdi
 1576 2094 C5F928C5 		vmovapd	%xmm5, %xmm0
GAS LISTING /tmp/ccryaM5C.s 			page 51


 1577 2098 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1577      00
 1578 209d BA010000 		movl	$1, %edx
 1578      00
 1579 20a2 BE000000 		movl	$.LC0, %esi
 1579      00
 1580 20a7 4889C7   		movq	%rax, %rdi
 1581 20aa 4989C6   		movq	%rax, %r14
 1582 20ad E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1582      00
 1583 20b2 C5FB1064 		vmovsd	88(%rsp), %xmm4
 1583      2458
 1584 20b8 4C89F7   		movq	%r14, %rdi
 1585 20bb C5F928C4 		vmovapd	%xmm4, %xmm0
 1586 20bf E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1586      00
 1587 20c4 BA010000 		movl	$1, %edx
 1587      00
 1588 20c9 BE000000 		movl	$.LC0, %esi
 1588      00
 1589 20ce 4889C7   		movq	%rax, %rdi
 1590 20d1 4989C6   		movq	%rax, %r14
 1591 20d4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1591      00
 1592 20d9 C5FB105C 		vmovsd	80(%rsp), %xmm3
 1592      2450
 1593 20df 4C89F7   		movq	%r14, %rdi
 1594 20e2 C5F928C3 		vmovapd	%xmm3, %xmm0
 1595 20e6 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1595      00
 1596 20eb 4989C7   		movq	%rax, %r15
 1597 20ee 488B00   		movq	(%rax), %rax
 1598 20f1 C5FD284C 		vmovapd	32(%rsp), %ymm1
 1598      2420
 1599 20f7 C57D283C 		vmovapd	(%rsp), %ymm15
 1599      24
 1600 20fc 488B40E8 		movq	-24(%rax), %rax
 1601 2100 4D8BB407 		movq	240(%r15,%rax), %r14
 1601      F0000000 
 1602 2108 4D85F6   		testq	%r14, %r14
 1603 210b 0F841802 		je	.L60
 1603      0000
 1604 2111 41807E38 		cmpb	$0, 56(%r14)
 1604      00
 1605 2116 0F849501 		je	.L44
 1605      0000
 1606 211c 410FB646 		movzbl	67(%r14), %eax
 1606      43
 1607              	.L45:
 1608 2121 0FBEF0   		movsbl	%al, %esi
 1609 2124 4C89FF   		movq	%r15, %rdi
 1610 2127 C57D293C 		vmovapd	%ymm15, (%rsp)
 1610      24
 1611 212c C5FD294C 		vmovapd	%ymm1, 32(%rsp)
 1611      2420
 1612 2132 C5F877   		vzeroupper
 1613 2135 E8000000 		call	_ZNSo3putEc
GAS LISTING /tmp/ccryaM5C.s 			page 52


 1613      00
 1614 213a 4889C7   		movq	%rax, %rdi
 1615 213d E8000000 		call	_ZNSo5flushEv
 1615      00
 1616 2142 C5FD2894 		vmovapd	1248(%rsp), %ymm2
 1616      24E00400 
 1616      00
 1617 214b BA050000 		movl	$5, %edx
 1617      00
 1618 2150 BE000000 		movl	$.LC97, %esi
 1618      00
 1619 2155 BF000000 		movl	$_ZSt4cout, %edi
 1619      00
 1620 215a C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 1620      24E00000 
 1620      00
 1621 2163 C5FB109C 		vmovsd	248(%rsp), %xmm3
 1621      24F80000 
 1621      00
 1622 216c C5FB10A4 		vmovsd	240(%rsp), %xmm4
 1622      24F00000 
 1622      00
 1623 2175 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1623      24E80000 
 1623      00
 1624 217e C5FB1084 		vmovsd	224(%rsp), %xmm0
 1624      24E00000 
 1624      00
 1625 2187 C5FB115C 		vmovsd	%xmm3, 80(%rsp)
 1625      2450
 1626 218d C5FB1164 		vmovsd	%xmm4, 88(%rsp)
 1626      2458
 1627 2193 C5FB116C 		vmovsd	%xmm5, 96(%rsp)
 1627      2460
 1628 2199 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1628      24C00000 
 1628      00
 1629 21a2 C5F877   		vzeroupper
 1630 21a5 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1630      00
 1631 21aa BA010000 		movl	$1, %edx
 1631      00
 1632 21af BE000000 		movl	$.LC0, %esi
 1632      00
 1633 21b4 BF000000 		movl	$_ZSt4cout, %edi
 1633      00
 1634 21b9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1634      00
 1635 21be C5FB1084 		vmovsd	192(%rsp), %xmm0
 1635      24C00000 
 1635      00
 1636 21c7 BF000000 		movl	$_ZSt4cout, %edi
 1636      00
 1637 21cc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1637      00
 1638 21d1 BA010000 		movl	$1, %edx
 1638      00
GAS LISTING /tmp/ccryaM5C.s 			page 53


 1639 21d6 BE000000 		movl	$.LC0, %esi
 1639      00
 1640 21db 4889C7   		movq	%rax, %rdi
 1641 21de 4989C6   		movq	%rax, %r14
 1642 21e1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1642      00
 1643 21e6 C5FB106C 		vmovsd	96(%rsp), %xmm5
 1643      2460
 1644 21ec 4C89F7   		movq	%r14, %rdi
 1645 21ef C5F928C5 		vmovapd	%xmm5, %xmm0
 1646 21f3 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1646      00
 1647 21f8 BA010000 		movl	$1, %edx
 1647      00
 1648 21fd BE000000 		movl	$.LC0, %esi
 1648      00
 1649 2202 4889C7   		movq	%rax, %rdi
 1650 2205 4989C6   		movq	%rax, %r14
 1651 2208 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1651      00
 1652 220d C5FB1064 		vmovsd	88(%rsp), %xmm4
 1652      2458
 1653 2213 4C89F7   		movq	%r14, %rdi
 1654 2216 C5F928C4 		vmovapd	%xmm4, %xmm0
 1655 221a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1655      00
 1656 221f BA010000 		movl	$1, %edx
 1656      00
 1657 2224 BE000000 		movl	$.LC0, %esi
 1657      00
 1658 2229 4889C7   		movq	%rax, %rdi
 1659 222c 4989C6   		movq	%rax, %r14
 1660 222f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1660      00
 1661 2234 C5FB105C 		vmovsd	80(%rsp), %xmm3
 1661      2450
 1662 223a 4C89F7   		movq	%r14, %rdi
 1663 223d C5F928C3 		vmovapd	%xmm3, %xmm0
 1664 2241 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1664      00
 1665 2246 4989C7   		movq	%rax, %r15
 1666 2249 488B00   		movq	(%rax), %rax
 1667 224c 488B40E8 		movq	-24(%rax), %rax
 1668 2250 4D8BB407 		movq	240(%r15,%rax), %r14
 1668      F0000000 
 1669 2258 4D85F6   		testq	%r14, %r14
 1670 225b 0F84CB00 		je	.L46
 1670      0000
 1671 2261 41807E38 		cmpb	$0, 56(%r14)
 1671      00
 1672 2266 C5FD284C 		vmovapd	32(%rsp), %ymm1
 1672      2420
 1673 226c C57D283C 		vmovapd	(%rsp), %ymm15
 1673      24
 1674 2271 747A     		je	.L47
 1675 2273 410FB646 		movzbl	67(%r14), %eax
 1675      43
GAS LISTING /tmp/ccryaM5C.s 			page 54


 1676              	.L48:
 1677 2278 0FBEF0   		movsbl	%al, %esi
 1678 227b 4C89FF   		movq	%r15, %rdi
 1679 227e C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1679      2460
 1680 2284 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1680      24C00000 
 1680      00
 1681 228d C5F877   		vzeroupper
 1682 2290 E8000000 		call	_ZNSo3putEc
 1682      00
 1683 2295 4889C7   		movq	%rax, %rdi
 1684 2298 E8000000 		call	_ZNSo5flushEv
 1684      00
 1685 229d C57D287C 		vmovapd	96(%rsp), %ymm15
 1685      2460
 1686 22a3 C5FD288C 		vmovapd	192(%rsp), %ymm1
 1686      24C00000 
 1686      00
 1687 22ac E920FCFF 		jmp	.L42
 1687      FF
 1688              	.L44:
 1689 22b1 4C89F7   		movq	%r14, %rdi
 1690 22b4 C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1690      2460
 1691 22ba C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1691      24C00000 
 1691      00
 1692 22c3 C5F877   		vzeroupper
 1693 22c6 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1693      00
 1694 22cb 498B06   		movq	(%r14), %rax
 1695 22ce BE0A0000 		movl	$10, %esi
 1695      00
 1696 22d3 4C89F7   		movq	%r14, %rdi
 1697 22d6 FF5030   		call	*48(%rax)
 1698 22d9 C57D287C 		vmovapd	96(%rsp), %ymm15
 1698      2460
 1699 22df C5FD288C 		vmovapd	192(%rsp), %ymm1
 1699      24C00000 
 1699      00
 1700 22e8 E934FEFF 		jmp	.L45
 1700      FF
 1701              	.L47:
 1702 22ed 4C89F7   		movq	%r14, %rdi
 1703 22f0 C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1703      2460
 1704 22f6 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1704      24C00000 
 1704      00
 1705 22ff C5F877   		vzeroupper
 1706 2302 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1706      00
 1707 2307 498B06   		movq	(%r14), %rax
 1708 230a BE0A0000 		movl	$10, %esi
 1708      00
 1709 230f 4C89F7   		movq	%r14, %rdi
GAS LISTING /tmp/ccryaM5C.s 			page 55


 1710 2312 FF5030   		call	*48(%rax)
 1711 2315 C57D287C 		vmovapd	96(%rsp), %ymm15
 1711      2460
 1712 231b C5FD288C 		vmovapd	192(%rsp), %ymm1
 1712      24C00000 
 1712      00
 1713 2324 E94FFFFF 		jmp	.L48
 1713      FF
 1714              	.L60:
 1715 2329 C5F877   		vzeroupper
 1716              	.L46:
 1717 232c E8000000 		call	_ZSt16__throw_bad_castv
 1717      00
 1718              		.cfi_endproc
 1719              	.LFE4733:
 1720              		.size	main, .-main
 1721 2331 66666666 		.p2align 4,,15
 1721      66662E0F 
 1721      1F840000 
 1721      000000
 1722              		.type	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, @function
 1723              	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d:
 1724              	.LFB5042:
 1725              		.cfi_startproc
 1726 2340 4883EC08 		subq	$8, %rsp
 1727              		.cfi_def_cfa_offset 16
 1728 2344 BF000000 		movl	$_ZStL8__ioinit, %edi
 1728      00
 1729 2349 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1729      00
 1730 234e BA000000 		movl	$__dso_handle, %edx
 1730      00
 1731 2353 BE000000 		movl	$_ZStL8__ioinit, %esi
 1731      00
 1732 2358 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1732      00
 1733 235d 4883C408 		addq	$8, %rsp
 1734              		.cfi_def_cfa_offset 8
 1735 2361 E9000000 		jmp	__cxa_atexit
 1735      00
 1736              		.cfi_endproc
 1737              	.LFE5042:
 1738              		.size	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, .-_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1739              		.section	.init_array,"aw"
 1740              		.align 8
 1741 0000 00000000 		.quad	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1741      00000000 
 1742              		.section	.rodata
 1743              		.align 32
 1744              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1745              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1746              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1747 0000 00000000 		.long	0
 1748 0004 00000080 		.long	-2147483648
 1749 0008 00000000 		.long	0
 1750 000c 00000080 		.long	-2147483648
 1751 0010 00000000 		.long	0
GAS LISTING /tmp/ccryaM5C.s 			page 56


 1752 0014 00000080 		.long	-2147483648
 1753 0018 00000000 		.long	0
 1754 001c 00000080 		.long	-2147483648
 1755              		.align 32
 1756              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1757              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1758              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1759 0020 FFFFFFFF 		.long	-1
 1760 0024 FFFFFF7F 		.long	2147483647
 1761 0028 FFFFFFFF 		.long	-1
 1762 002c FFFFFF7F 		.long	2147483647
 1763 0030 FFFFFFFF 		.long	-1
 1764 0034 FFFFFF7F 		.long	2147483647
 1765 0038 FFFFFFFF 		.long	-1
 1766 003c FFFFFF7F 		.long	2147483647
 1767              		.local	_ZStL8__ioinit
 1768              		.comm	_ZStL8__ioinit,1,1
 1769              		.section	.rodata.cst8,"aM",@progbits,8
 1770              		.align 8
 1771              	.LC1:
 1772 0000 33333333 		.long	858993459
 1773 0004 3333D33F 		.long	1070805811
 1774              		.align 8
 1775              	.LC2:
 1776 0008 9A999999 		.long	2576980378
 1777 000c 9999C93F 		.long	1070176665
 1778              		.section	.rodata.cst32,"aM",@progbits,32
 1779              		.align 32
 1780              	.LC3:
 1781 0000 83C8C96D 		.long	1841940611
 1782 0004 305FE43F 		.long	1071931184
 1783 0008 83C8C96D 		.long	1841940611
 1784 000c 305FE43F 		.long	1071931184
 1785 0010 83C8C96D 		.long	1841940611
 1786 0014 305FE43F 		.long	1071931184
 1787 0018 83C8C96D 		.long	1841940611
 1788 001c 305FE43F 		.long	1071931184
 1789              		.align 32
 1790              	.LC4:
 1791 0020 00000050 		.long	1342177280
 1792 0024 FB21F93F 		.long	1073291771
 1793 0028 00000050 		.long	1342177280
 1794 002c FB21F93F 		.long	1073291771
 1795 0030 00000050 		.long	1342177280
 1796 0034 FB21F93F 		.long	1073291771
 1797 0038 00000050 		.long	1342177280
 1798 003c FB21F93F 		.long	1073291771
 1799              		.align 32
 1800              	.LC5:
 1801 0040 00000060 		.long	1610612736
 1802 0044 B410513E 		.long	1045500084
 1803 0048 00000060 		.long	1610612736
 1804 004c B410513E 		.long	1045500084
 1805 0050 00000060 		.long	1610612736
 1806 0054 B410513E 		.long	1045500084
 1807 0058 00000060 		.long	1610612736
 1808 005c B410513E 		.long	1045500084
GAS LISTING /tmp/ccryaM5C.s 			page 57


 1809              		.align 32
 1810              	.LC6:
 1811 0060 075C1433 		.long	856972295
 1812 0064 26A6913C 		.long	1016178214
 1813 0068 075C1433 		.long	856972295
 1814 006c 26A6913C 		.long	1016178214
 1815 0070 075C1433 		.long	856972295
 1816 0074 26A6913C 		.long	1016178214
 1817 0078 075C1433 		.long	856972295
 1818 007c 26A6913C 		.long	1016178214
 1819              		.align 32
 1820              	.LC7:
 1821 0080 D0F71011 		.long	286324688
 1822 0084 1111813F 		.long	1065423121
 1823 0088 D0F71011 		.long	286324688
 1824 008c 1111813F 		.long	1065423121
 1825 0090 D0F71011 		.long	286324688
 1826 0094 1111813F 		.long	1065423121
 1827 0098 D0F71011 		.long	286324688
 1828 009c 1111813F 		.long	1065423121
 1829              		.align 32
 1830              	.LC8:
 1831 00a0 48555555 		.long	1431655752
 1832 00a4 5555C5BF 		.long	-1077586603
 1833 00a8 48555555 		.long	1431655752
 1834 00ac 5555C5BF 		.long	-1077586603
 1835 00b0 48555555 		.long	1431655752
 1836 00b4 5555C5BF 		.long	-1077586603
 1837 00b8 48555555 		.long	1431655752
 1838 00bc 5555C5BF 		.long	-1077586603
 1839              		.align 32
 1840              	.LC9:
 1841 00c0 CD9CD11F 		.long	533830861
 1842 00c4 FDD8E53D 		.long	1038473469
 1843 00c8 CD9CD11F 		.long	533830861
 1844 00cc FDD8E53D 		.long	1038473469
 1845 00d0 CD9CD11F 		.long	533830861
 1846 00d4 FDD8E53D 		.long	1038473469
 1847 00d8 CD9CD11F 		.long	533830861
 1848 00dc FDD8E53D 		.long	1038473469
 1849              		.align 32
 1850              	.LC10:
 1851 00e0 5D1F29A9 		.long	2838044509
 1852 00e4 E5E55ABE 		.long	-1101339163
 1853 00e8 5D1F29A9 		.long	2838044509
 1854 00ec E5E55ABE 		.long	-1101339163
 1855 00f0 5D1F29A9 		.long	2838044509
 1856 00f4 E5E55ABE 		.long	-1101339163
 1857 00f8 5D1F29A9 		.long	2838044509
 1858 00fc E5E55ABE 		.long	-1101339163
 1859              		.align 32
 1860              	.LC11:
 1861 0100 A1487D56 		.long	1451051169
 1862 0104 E31DC73E 		.long	1053236707
 1863 0108 A1487D56 		.long	1451051169
 1864 010c E31DC73E 		.long	1053236707
 1865 0110 A1487D56 		.long	1451051169
GAS LISTING /tmp/ccryaM5C.s 			page 58


 1866 0114 E31DC73E 		.long	1053236707
 1867 0118 A1487D56 		.long	1451051169
 1868 011c E31DC73E 		.long	1053236707
 1869              		.align 32
 1870              	.LC12:
 1871 0120 03DFBF19 		.long	432004867
 1872 0124 A0012ABF 		.long	-1087766112
 1873 0128 03DFBF19 		.long	432004867
 1874 012c A0012ABF 		.long	-1087766112
 1875 0130 03DFBF19 		.long	432004867
 1876 0134 A0012ABF 		.long	-1087766112
 1877 0138 03DFBF19 		.long	432004867
 1878 013c A0012ABF 		.long	-1087766112
 1879              		.align 32
 1880              	.LC13:
 1881 0140 914FC116 		.long	381767569
 1882 0144 6CC156BF 		.long	-1084833428
 1883 0148 914FC116 		.long	381767569
 1884 014c 6CC156BF 		.long	-1084833428
 1885 0150 914FC116 		.long	381767569
 1886 0154 6CC156BF 		.long	-1084833428
 1887 0158 914FC116 		.long	381767569
 1888 015c 6CC156BF 		.long	-1084833428
 1889              		.align 32
 1890              	.LC14:
 1891 0160 4B555555 		.long	1431655755
 1892 0164 5555A53F 		.long	1067799893
 1893 0168 4B555555 		.long	1431655755
 1894 016c 5555A53F 		.long	1067799893
 1895 0170 4B555555 		.long	1431655755
 1896 0174 5555A53F 		.long	1067799893
 1897 0178 4B555555 		.long	1431655755
 1898 017c 5555A53F 		.long	1067799893
 1899              		.align 32
 1900              	.LC15:
 1901 0180 9B1A86A0 		.long	2693143195
 1902 0184 49FAA8BD 		.long	-1112999351
 1903 0188 9B1A86A0 		.long	2693143195
 1904 018c 49FAA8BD 		.long	-1112999351
 1905 0190 9B1A86A0 		.long	2693143195
 1906 0194 49FAA8BD 		.long	-1112999351
 1907 0198 9B1A86A0 		.long	2693143195
 1908 019c 49FAA8BD 		.long	-1112999351
 1909              		.align 32
 1910              	.LC16:
 1911 01a0 053F4E7B 		.long	2068725509
 1912 01a4 9DEE213E 		.long	1042411165
 1913 01a8 053F4E7B 		.long	2068725509
 1914 01ac 9DEE213E 		.long	1042411165
 1915 01b0 053F4E7B 		.long	2068725509
 1916 01b4 9DEE213E 		.long	1042411165
 1917 01b8 053F4E7B 		.long	2068725509
 1918 01bc 9DEE213E 		.long	1042411165
 1919              		.align 32
 1920              	.LC17:
 1921 01c0 C64BAC7E 		.long	2125220806
 1922 01c4 4F7E92BE 		.long	-1097695665
GAS LISTING /tmp/ccryaM5C.s 			page 59


 1923 01c8 C64BAC7E 		.long	2125220806
 1924 01cc 4F7E92BE 		.long	-1097695665
 1925 01d0 C64BAC7E 		.long	2125220806
 1926 01d4 4F7E92BE 		.long	-1097695665
 1927 01d8 C64BAC7E 		.long	2125220806
 1928 01dc 4F7E92BE 		.long	-1097695665
 1929              		.align 32
 1930              	.LC18:
 1931 01e0 F544C819 		.long	432555253
 1932 01e4 A001FA3E 		.long	1056571808
 1933 01e8 F544C819 		.long	432555253
 1934 01ec A001FA3E 		.long	1056571808
 1935 01f0 F544C819 		.long	432555253
 1936 01f4 A001FA3E 		.long	1056571808
 1937 01f8 F544C819 		.long	432555253
 1938 01fc A001FA3E 		.long	1056571808
 1939              		.align 32
 1940              	.LC19:
 1941 0200 00000000 		.long	0
 1942 0204 0000E03F 		.long	1071644672
 1943 0208 00000000 		.long	0
 1944 020c 0000E03F 		.long	1071644672
 1945 0210 00000000 		.long	0
 1946 0214 0000E03F 		.long	1071644672
 1947 0218 00000000 		.long	0
 1948 021c 0000E03F 		.long	1071644672
 1949              		.align 32
 1950              	.LC20:
 1951 0220 00000000 		.long	0
 1952 0224 0000F03F 		.long	1072693248
 1953 0228 00000000 		.long	0
 1954 022c 0000F03F 		.long	1072693248
 1955 0230 00000000 		.long	0
 1956 0234 0000F03F 		.long	1072693248
 1957 0238 00000000 		.long	0
 1958 023c 0000F03F 		.long	1072693248
 1959              		.section	.rodata.cst16,"aM",@progbits,16
 1960              		.align 16
 1961              	.LC21:
 1962 0000 01000000 		.quad	1
 1962      00000000 
 1963 0008 01000000 		.quad	1
 1963      00000000 
 1964              		.align 16
 1965              	.LC22:
 1966 0010 00000000 		.quad	36028797018963968
 1966      00008000 
 1967 0018 00000000 		.quad	36028797018963968
 1967      00008000 
 1968              		.align 16
 1969              	.LC23:
 1970 0020 00000000 		.quad	-9007199254740992
 1970      0000E0FF 
 1971 0028 00000000 		.quad	-9007199254740992
 1971      0000E0FF 
 1972              		.align 16
 1973              	.LC24:
GAS LISTING /tmp/ccryaM5C.s 			page 60


 1974 0030 02000000 		.quad	2
 1974      00000000 
 1975 0038 02000000 		.quad	2
 1975      00000000 
 1976              		.section	.rodata.cst32
 1977              		.align 32
 1978              	.LC25:
 1979 0240 33333333 		.long	858993459
 1980 0244 3333D33F 		.long	1070805811
 1981 0248 33333333 		.long	858993459
 1982 024c 3333D33F 		.long	1070805811
 1983 0250 33333333 		.long	858993459
 1984 0254 3333D33F 		.long	1070805811
 1985 0258 33333333 		.long	858993459
 1986 025c 3333D33F 		.long	1070805811
 1987              		.align 32
 1988              	.LC26:
 1989 0260 9A999999 		.long	2576980378
 1990 0264 9999C93F 		.long	1070176665
 1991 0268 9A999999 		.long	2576980378
 1992 026c 9999C93F 		.long	1070176665
 1993 0270 9A999999 		.long	2576980378
 1994 0274 9999C93F 		.long	1070176665
 1995 0278 9A999999 		.long	2576980378
 1996 027c 9999C93F 		.long	1070176665
 1997              		.align 32
 1998              	.LC27:
 1999 0280 CDCCCCCC 		.long	3435973837
 2000 0284 CCCCCC3F 		.long	1070386380
 2001 0288 CDCCCCCC 		.long	3435973837
 2002 028c CCCCCC3F 		.long	1070386380
 2003 0290 CDCCCCCC 		.long	3435973837
 2004 0294 CCCCCC3F 		.long	1070386380
 2005 0298 CDCCCCCC 		.long	3435973837
 2006 029c CCCCCC3F 		.long	1070386380
 2007              		.align 32
 2008              	.LC28:
 2009 02a0 33333333 		.long	858993459
 2010 02a4 3333B33F 		.long	1068708659
 2011 02a8 33333333 		.long	858993459
 2012 02ac 3333B33F 		.long	1068708659
 2013 02b0 33333333 		.long	858993459
 2014 02b4 3333B33F 		.long	1068708659
 2015 02b8 33333333 		.long	858993459
 2016 02bc 3333B33F 		.long	1068708659
 2017              		.align 32
 2018              	.LC29:
 2019 02c0 33333333 		.long	858993459
 2020 02c4 3333F33F 		.long	1072902963
 2021 02c8 33333333 		.long	858993459
 2022 02cc 3333F33F 		.long	1072902963
 2023 02d0 33333333 		.long	858993459
 2024 02d4 3333F33F 		.long	1072902963
 2025 02d8 33333333 		.long	858993459
 2026 02dc 3333F33F 		.long	1072902963
 2027              		.align 32
 2028              	.LC30:
GAS LISTING /tmp/ccryaM5C.s 			page 61


 2029 02e0 CDCCCCCC 		.long	3435973837
 2030 02e4 CCCCECBF 		.long	-1075000116
 2031 02e8 CDCCCCCC 		.long	3435973837
 2032 02ec CCCCECBF 		.long	-1075000116
 2033 02f0 CDCCCCCC 		.long	3435973837
 2034 02f4 CCCCECBF 		.long	-1075000116
 2035 02f8 CDCCCCCC 		.long	3435973837
 2036 02fc CCCCECBF 		.long	-1075000116
 2037              		.align 32
 2038              	.LC31:
 2039 0300 D94B682F 		.long	795364313
 2040 0304 A1BDF43F 		.long	1073003937
 2041 0308 D94B682F 		.long	795364313
 2042 030c A1BDF43F 		.long	1073003937
 2043 0310 D94B682F 		.long	795364313
 2044 0314 A1BDF43F 		.long	1073003937
 2045 0318 D94B682F 		.long	795364313
 2046 031c A1BDF43F 		.long	1073003937
 2047              		.align 32
 2048              	.LC32:
 2049 0320 D44B682F 		.long	795364308
 2050 0324 A1BD04C0 		.long	-1073431135
 2051 0328 D44B682F 		.long	795364308
 2052 032c A1BD04C0 		.long	-1073431135
 2053 0330 D44B682F 		.long	795364308
 2054 0334 A1BD04C0 		.long	-1073431135
 2055 0338 D44B682F 		.long	795364308
 2056 033c A1BD04C0 		.long	-1073431135
 2057              		.align 32
 2058              	.LC33:
 2059 0340 00000000 		.long	0
 2060 0344 00000440 		.long	1074003968
 2061 0348 00000000 		.long	0
 2062 034c 00000440 		.long	1074003968
 2063 0350 00000000 		.long	0
 2064 0354 00000440 		.long	1074003968
 2065 0358 00000000 		.long	0
 2066 035c 00000440 		.long	1074003968
 2067              		.align 32
 2068              	.LC34:
 2069 0360 2FA1BD84 		.long	2227020079
 2070 0364 F612CABF 		.long	-1077275914
 2071 0368 2FA1BD84 		.long	2227020079
 2072 036c F612CABF 		.long	-1077275914
 2073 0370 2FA1BD84 		.long	2227020079
 2074 0374 F612CABF 		.long	-1077275914
 2075 0378 2FA1BD84 		.long	2227020079
 2076 037c F612CABF 		.long	-1077275914
 2077              		.align 32
 2078              	.LC35:
 2079 0380 00000000 		.long	0
 2080 0384 00A0AF3F 		.long	1068474368
 2081 0388 00000000 		.long	0
 2082 038c 00A0AF3F 		.long	1068474368
 2083 0390 00000000 		.long	0
 2084 0394 00A0AF3F 		.long	1068474368
 2085 0398 00000000 		.long	0
GAS LISTING /tmp/ccryaM5C.s 			page 62


 2086 039c 00A0AF3F 		.long	1068474368
 2087              		.align 32
 2088              	.LC36:
 2089 03a0 B497D05E 		.long	1590728628
 2090 03a4 429FD93F 		.long	1071226690
 2091 03a8 B497D05E 		.long	1590728628
 2092 03ac 429FD93F 		.long	1071226690
 2093 03b0 B497D05E 		.long	1590728628
 2094 03b4 429FD93F 		.long	1071226690
 2095 03b8 B497D05E 		.long	1590728628
 2096 03bc 429FD93F 		.long	1071226690
 2097              		.align 32
 2098              	.LC37:
 2099 03c0 BE84F612 		.long	318145726
 2100 03c4 DA4BA53F 		.long	1067797466
 2101 03c8 BE84F612 		.long	318145726
 2102 03cc DA4BA53F 		.long	1067797466
 2103 03d0 BE84F612 		.long	318145726
 2104 03d4 DA4BA53F 		.long	1067797466
 2105 03d8 BE84F612 		.long	318145726
 2106 03dc DA4BA53F 		.long	1067797466
 2107              		.align 32
 2108              	.LC38:
 2109 03e0 00000000 		.long	0
 2110 03e4 00E0D53F 		.long	1070981120
 2111 03e8 00000000 		.long	0
 2112 03ec 00E0D53F 		.long	1070981120
 2113 03f0 00000000 		.long	0
 2114 03f4 00E0D53F 		.long	1070981120
 2115 03f8 00000000 		.long	0
 2116 03fc 00E0D53F 		.long	1070981120
 2117              		.align 32
 2118              	.LC39:
 2119 0400 427B09ED 		.long	3976821570
 2120 0404 25349E3F 		.long	1067332645
 2121 0408 427B09ED 		.long	3976821570
 2122 040c 25349E3F 		.long	1067332645
 2123 0410 427B09ED 		.long	3976821570
 2124 0414 25349E3F 		.long	1067332645
 2125 0418 427B09ED 		.long	3976821570
 2126 041c 25349E3F 		.long	1067332645
 2127              		.align 32
 2128              	.LC40:
 2129 0420 B0B4DA85 		.long	2245702832
 2130 0424 A680D23F 		.long	1070760102
 2131 0428 B0B4DA85 		.long	2245702832
 2132 042c A680D23F 		.long	1070760102
 2133 0430 B0B4DA85 		.long	2245702832
 2134 0434 A680D23F 		.long	1070760102
 2135 0438 B0B4DA85 		.long	2245702832
 2136 043c A680D23F 		.long	1070760102
 2137              		.align 32
 2138              	.LC41:
 2139 0440 29691676 		.long	1981180201
 2140 0444 9FEFCA3F 		.long	1070264223
 2141 0448 29691676 		.long	1981180201
 2142 044c 9FEFCA3F 		.long	1070264223
GAS LISTING /tmp/ccryaM5C.s 			page 63


 2143 0450 29691676 		.long	1981180201
 2144 0454 9FEFCA3F 		.long	1070264223
 2145 0458 29691676 		.long	1981180201
 2146 045c 9FEFCA3F 		.long	1070264223
 2147              		.align 32
 2148              	.LC42:
 2149 0460 80B22B2E 		.long	774615680
 2150 0464 D0C3D93F 		.long	1071236048
 2151 0468 80B22B2E 		.long	774615680
 2152 046c D0C3D93F 		.long	1071236048
 2153 0470 80B22B2E 		.long	774615680
 2154 0474 D0C3D93F 		.long	1071236048
 2155 0478 80B22B2E 		.long	774615680
 2156 047c D0C3D93F 		.long	1071236048
 2157              		.align 32
 2158              	.LC43:
 2159 0480 EE90B943 		.long	1136234734
 2160 0484 E60EB93F 		.long	1069092582
 2161 0488 EE90B943 		.long	1136234734
 2162 048c E60EB93F 		.long	1069092582
 2163 0490 EE90B943 		.long	1136234734
 2164 0494 E60EB93F 		.long	1069092582
 2165 0498 EE90B943 		.long	1136234734
 2166 049c E60EB93F 		.long	1069092582
 2167              		.align 32
 2168              	.LC44:
 2169 04a0 83A5D52E 		.long	785753475
 2170 04a4 3405A4BF 		.long	-1079769804
 2171 04a8 83A5D52E 		.long	785753475
 2172 04ac 3405A4BF 		.long	-1079769804
 2173 04b0 83A5D52E 		.long	785753475
 2174 04b4 3405A4BF 		.long	-1079769804
 2175 04b8 83A5D52E 		.long	785753475
 2176 04bc 3405A4BF 		.long	-1079769804
 2177              		.align 32
 2178              	.LC45:
 2179 04c0 92244992 		.long	2454267026
 2180 04c4 24C9933F 		.long	1066649892
 2181 04c8 92244992 		.long	2454267026
 2182 04cc 24C9933F 		.long	1066649892
 2183 04d0 92244992 		.long	2454267026
 2184 04d4 24C9933F 		.long	1066649892
 2185 04d8 92244992 		.long	2454267026
 2186 04dc 24C9933F 		.long	1066649892
 2187              		.align 32
 2188              	.LC46:
 2189 04e0 12F37686 		.long	2255942418
 2190 04e4 C47CA13F 		.long	1067547844
 2191 04e8 12F37686 		.long	2255942418
 2192 04ec C47CA13F 		.long	1067547844
 2193 04f0 12F37686 		.long	2255942418
 2194 04f4 C47CA13F 		.long	1067547844
 2195 04f8 12F37686 		.long	2255942418
 2196 04fc C47CA13F 		.long	1067547844
 2197              		.align 32
 2198              	.LC47:
 2199 0500 0A56F19A 		.long	2599507466
GAS LISTING /tmp/ccryaM5C.s 			page 64


 2200 0504 DB1D93BF 		.long	-1080877605
 2201 0508 0A56F19A 		.long	2599507466
 2202 050c DB1D93BF 		.long	-1080877605
 2203 0510 0A56F19A 		.long	2599507466
 2204 0514 DB1D93BF 		.long	-1080877605
 2205 0518 0A56F19A 		.long	2599507466
 2206 051c DB1D93BF 		.long	-1080877605
 2207              		.align 32
 2208              	.LC48:
 2209 0520 66599665 		.long	1704352102
 2210 0524 5996713F 		.long	1064408665
 2211 0528 66599665 		.long	1704352102
 2212 052c 5996713F 		.long	1064408665
 2213 0530 66599665 		.long	1704352102
 2214 0534 5996713F 		.long	1064408665
 2215 0538 66599665 		.long	1704352102
 2216 053c 5996713F 		.long	1064408665
 2217              		.align 32
 2218              	.LC49:
 2219 0540 95D626E8 		.long	3894859413
 2220 0544 0B2E113E 		.long	1041313291
 2221 0548 95D626E8 		.long	3894859413
 2222 054c 0B2E113E 		.long	1041313291
 2223 0550 95D626E8 		.long	3894859413
 2224 0554 0B2E113E 		.long	1041313291
 2225 0558 95D626E8 		.long	3894859413
 2226 055c 0B2E113E 		.long	1041313291
 2227              		.section	.rodata.cst16
 2228              		.align 16
 2229              	.LC50:
 2230 0040 FFFFFFFF 		.quad	4503599627370495
 2230      FFFF0F00 
 2231 0048 FFFFFFFF 		.quad	4503599627370495
 2231      FFFF0F00 
 2232              		.align 16
 2233              	.LC51:
 2234 0050 00000000 		.quad	4602678819172646912
 2234      0000E03F 
 2235 0058 00000000 		.quad	4602678819172646912
 2235      0000E03F 
 2236              		.align 16
 2237              	.LC52:
 2238 0060 00000000 		.quad	4841369599423283200
 2238      00003043 
 2239 0068 00000000 		.quad	4841369599423283200
 2239      00003043 
 2240              		.section	.rodata.cst32
 2241              		.align 32
 2242              	.LC53:
 2243 0560 FF030000 		.long	1023
 2244 0564 00003043 		.long	1127219200
 2245 0568 FF030000 		.long	1023
 2246 056c 00003043 		.long	1127219200
 2247 0570 FF030000 		.long	1023
 2248 0574 00003043 		.long	1127219200
 2249 0578 FF030000 		.long	1023
 2250 057c 00003043 		.long	1127219200
GAS LISTING /tmp/ccryaM5C.s 			page 65


 2251              		.align 32
 2252              	.LC54:
 2253 0580 CD3B7F66 		.long	1719614413
 2254 0584 9EA0E63F 		.long	1072079006
 2255 0588 CD3B7F66 		.long	1719614413
 2256 058c 9EA0E63F 		.long	1072079006
 2257 0590 CD3B7F66 		.long	1719614413
 2258 0594 9EA0E63F 		.long	1072079006
 2259 0598 CD3B7F66 		.long	1719614413
 2260 059c 9EA0E63F 		.long	1072079006
 2261              		.section	.rodata.cst16
 2262              		.align 16
 2263              	.LC55:
 2264 0070 FFFFFFFF 		.long	4294967295
 2265 0074 FFFFFFFF 		.long	-1
 2266 0078 FFFFFFFF 		.long	4294967295
 2267 007c FFFFFFFF 		.long	-1
 2268              		.section	.rodata.cst32
 2269              		.align 32
 2270              	.LC56:
 2271 05a0 4DC84B92 		.long	2454440013
 2272 05a4 D6EF3140 		.long	1077014486
 2273 05a8 4DC84B92 		.long	2454440013
 2274 05ac D6EF3140 		.long	1077014486
 2275 05b0 4DC84B92 		.long	2454440013
 2276 05b4 D6EF3140 		.long	1077014486
 2277 05b8 4DC84B92 		.long	2454440013
 2278 05bc D6EF3140 		.long	1077014486
 2279              		.align 32
 2280              	.LC57:
 2281 05c0 F8DC7E7D 		.long	2105466104
 2282 05c4 63D51E40 		.long	1075762531
 2283 05c8 F8DC7E7D 		.long	2105466104
 2284 05cc 63D51E40 		.long	1075762531
 2285 05d0 F8DC7E7D 		.long	2105466104
 2286 05d4 63D51E40 		.long	1075762531
 2287 05d8 F8DC7E7D 		.long	2105466104
 2288 05dc 63D51E40 		.long	1075762531
 2289              		.align 32
 2290              	.LC58:
 2291 05e0 B01BC393 		.long	2479037360
 2292 05e4 C2B41A3F 		.long	1058714818
 2293 05e8 B01BC393 		.long	2479037360
 2294 05ec C2B41A3F 		.long	1058714818
 2295 05f0 B01BC393 		.long	2479037360
 2296 05f4 C2B41A3F 		.long	1058714818
 2297 05f8 B01BC393 		.long	2479037360
 2298 05fc C2B41A3F 		.long	1058714818
 2299              		.align 32
 2300              	.LC59:
 2301 0600 F252563F 		.long	1062621938
 2302 0604 F5D6DF3F 		.long	1071634165
 2303 0608 F252563F 		.long	1062621938
 2304 060c F5D6DF3F 		.long	1071634165
 2305 0610 F252563F 		.long	1062621938
 2306 0614 F5D6DF3F 		.long	1071634165
 2307 0618 F252563F 		.long	1062621938
GAS LISTING /tmp/ccryaM5C.s 			page 66


 2308 061c F5D6DF3F 		.long	1071634165
 2309              		.align 32
 2310              	.LC60:
 2311 0620 116992ED 		.long	3985795345
 2312 0624 BAD21240 		.long	1074975418
 2313 0628 116992ED 		.long	3985795345
 2314 062c BAD21240 		.long	1074975418
 2315 0630 116992ED 		.long	3985795345
 2316 0634 BAD21240 		.long	1074975418
 2317 0638 116992ED 		.long	3985795345
 2318 063c BAD21240 		.long	1074975418
 2319              		.align 32
 2320              	.LC61:
 2321 0640 2EEB3EC6 		.long	3326012206
 2322 0644 72FF2C40 		.long	1076690802
 2323 0648 2EEB3EC6 		.long	3326012206
 2324 064c 72FF2C40 		.long	1076690802
 2325 0650 2EEB3EC6 		.long	3326012206
 2326 0654 72FF2C40 		.long	1076690802
 2327 0658 2EEB3EC6 		.long	3326012206
 2328 065c 72FF2C40 		.long	1076690802
 2329              		.align 32
 2330              	.LC62:
 2331 0660 21AE5EEB 		.long	3948850721
 2332 0664 E2C95140 		.long	1079101922
 2333 0668 21AE5EEB 		.long	3948850721
 2334 066c E2C95140 		.long	1079101922
 2335 0670 21AE5EEB 		.long	3948850721
 2336 0674 E2C95140 		.long	1079101922
 2337 0678 21AE5EEB 		.long	3948850721
 2338 067c E2C95140 		.long	1079101922
 2339              		.align 32
 2340              	.LC63:
 2341 0680 B2251F9E 		.long	2652841394
 2342 0684 0A203740 		.long	1077354506
 2343 0688 B2251F9E 		.long	2652841394
 2344 068c 0A203740 		.long	1077354506
 2345 0690 B2251F9E 		.long	2652841394
 2346 0694 0A203740 		.long	1077354506
 2347 0698 B2251F9E 		.long	2652841394
 2348 069c 0A203740 		.long	1077354506
 2349              		.align 32
 2350              	.LC64:
 2351 06a0 8EEF97AE 		.long	2929192846
 2352 06a4 20932640 		.long	1076269856
 2353 06a8 8EEF97AE 		.long	2929192846
 2354 06ac 20932640 		.long	1076269856
 2355 06b0 8EEF97AE 		.long	2929192846
 2356 06b4 20932640 		.long	1076269856
 2357 06b8 8EEF97AE 		.long	2929192846
 2358 06bc 20932640 		.long	1076269856
 2359              		.align 32
 2360              	.LC65:
 2361 06c0 33C0194E 		.long	1310310451
 2362 06c4 2C9D4640 		.long	1078369580
 2363 06c8 33C0194E 		.long	1310310451
 2364 06cc 2C9D4640 		.long	1078369580
GAS LISTING /tmp/ccryaM5C.s 			page 67


 2365 06d0 33C0194E 		.long	1310310451
 2366 06d4 2C9D4640 		.long	1078369580
 2367 06d8 33C0194E 		.long	1310310451
 2368 06dc 2C9D4640 		.long	1078369580
 2369              		.align 32
 2370              	.LC66:
 2371 06e0 BDBD26A3 		.long	2737225149
 2372 06e4 33BF5440 		.long	1079295795
 2373 06e8 BDBD26A3 		.long	2737225149
 2374 06ec 33BF5440 		.long	1079295795
 2375 06f0 BDBD26A3 		.long	2737225149
 2376 06f4 33BF5440 		.long	1079295795
 2377 06f8 BDBD26A3 		.long	2737225149
 2378 06fc 33BF5440 		.long	1079295795
 2379              		.align 32
 2380              	.LC67:
 2381 0700 A80C615C 		.long	1549864104
 2382 0704 10D02BBF 		.long	-1087647728
 2383 0708 A80C615C 		.long	1549864104
 2384 070c 10D02BBF 		.long	-1087647728
 2385 0710 A80C615C 		.long	1549864104
 2386 0714 10D02BBF 		.long	-1087647728
 2387 0718 A80C615C 		.long	1549864104
 2388 071c 10D02BBF 		.long	-1087647728
 2389              		.align 32
 2390              	.LC68:
 2391 0720 00000000 		.long	0
 2392 0724 0030E63F 		.long	1072050176
 2393 0728 00000000 		.long	0
 2394 072c 0030E63F 		.long	1072050176
 2395 0730 00000000 		.long	0
 2396 0734 0030E63F 		.long	1072050176
 2397 0738 00000000 		.long	0
 2398 073c 0030E63F 		.long	1072050176
 2399              		.align 32
 2400              	.LC69:
 2401 0740 00000000 		.long	0
 2402 0744 00001000 		.long	1048576
 2403 0748 00000000 		.long	0
 2404 074c 00001000 		.long	1048576
 2405 0750 00000000 		.long	0
 2406 0754 00001000 		.long	1048576
 2407 0758 00000000 		.long	0
 2408 075c 00001000 		.long	1048576
 2409              		.align 32
 2410              	.LC70:
 2411 0760 00000020 		.long	536870912
 2412 0764 2000F87F 		.long	2146959392
 2413 0768 00000020 		.long	536870912
 2414 076c 2000F87F 		.long	2146959392
 2415 0770 00000020 		.long	536870912
 2416 0774 2000F87F 		.long	2146959392
 2417 0778 00000020 		.long	536870912
 2418 077c 2000F87F 		.long	2146959392
 2419              		.section	.rodata.cst16
 2420              		.align 16
 2421              	.LC71:
GAS LISTING /tmp/ccryaM5C.s 			page 68


 2422 0080 00000000 		.long	0
 2423 0084 0000F07F 		.long	2146435072
 2424 0088 00000000 		.long	0
 2425 008c 0000F07F 		.long	2146435072
 2426              		.align 16
 2427              	.LC72:
 2428 0090 00000000 		.quad	9218868437227405312
 2428      0000F07F 
 2429 0098 00000000 		.quad	9218868437227405312
 2429      0000F07F 
 2430              		.section	.rodata.cst32
 2431              		.align 32
 2432              	.LC73:
 2433 0780 FE822B65 		.long	1697350398
 2434 0784 4715F73F 		.long	1073157447
 2435 0788 FE822B65 		.long	1697350398
 2436 078c 4715F73F 		.long	1073157447
 2437 0790 FE822B65 		.long	1697350398
 2438 0794 4715F73F 		.long	1073157447
 2439 0798 FE822B65 		.long	1697350398
 2440 079c 4715F73F 		.long	1073157447
 2441              		.align 32
 2442              	.LC74:
 2443 07a0 00000000 		.long	0
 2444 07a4 402EE63F 		.long	1072049728
 2445 07a8 00000000 		.long	0
 2446 07ac 402EE63F 		.long	1072049728
 2447 07b0 00000000 		.long	0
 2448 07b4 402EE63F 		.long	1072049728
 2449 07b8 00000000 		.long	0
 2450 07bc 402EE63F 		.long	1072049728
 2451              		.align 32
 2452              	.LC75:
 2453 07c0 CAAB79CF 		.long	3480857546
 2454 07c4 D1F7B73E 		.long	1052243921
 2455 07c8 CAAB79CF 		.long	3480857546
 2456 07cc D1F7B73E 		.long	1052243921
 2457 07d0 CAAB79CF 		.long	3480857546
 2458 07d4 D1F7B73E 		.long	1052243921
 2459 07d8 CAAB79CF 		.long	3480857546
 2460 07dc D1F7B73E 		.long	1052243921
 2461              		.align 32
 2462              	.LC76:
 2463 07e0 55555555 		.long	1431655765
 2464 07e4 5555C53F 		.long	1069897045
 2465 07e8 55555555 		.long	1431655765
 2466 07ec 5555C53F 		.long	1069897045
 2467 07f0 55555555 		.long	1431655765
 2468 07f4 5555C53F 		.long	1069897045
 2469 07f8 55555555 		.long	1431655765
 2470 07fc 5555C53F 		.long	1069897045
 2471              		.align 32
 2472              	.LC77:
 2473 0800 11111111 		.long	286331153
 2474 0804 1111813F 		.long	1065423121
 2475 0808 11111111 		.long	286331153
 2476 080c 1111813F 		.long	1065423121
GAS LISTING /tmp/ccryaM5C.s 			page 69


 2477 0810 11111111 		.long	286331153
 2478 0814 1111813F 		.long	1065423121
 2479 0818 11111111 		.long	286331153
 2480 081c 1111813F 		.long	1065423121
 2481              		.align 32
 2482              	.LC78:
 2483 0820 55555555 		.long	1431655765
 2484 0824 5555A53F 		.long	1067799893
 2485 0828 55555555 		.long	1431655765
 2486 082c 5555A53F 		.long	1067799893
 2487 0830 55555555 		.long	1431655765
 2488 0834 5555A53F 		.long	1067799893
 2489 0838 55555555 		.long	1431655765
 2490 083c 5555A53F 		.long	1067799893
 2491              		.align 32
 2492              	.LC79:
 2493 0840 1AA0011A 		.long	436314138
 2494 0844 A0012A3F 		.long	1059717536
 2495 0848 1AA0011A 		.long	436314138
 2496 084c A0012A3F 		.long	1059717536
 2497 0850 1AA0011A 		.long	436314138
 2498 0854 A0012A3F 		.long	1059717536
 2499 0858 1AA0011A 		.long	436314138
 2500 085c A0012A3F 		.long	1059717536
 2501              		.align 32
 2502              	.LC80:
 2503 0860 176CC116 		.long	381774871
 2504 0864 6CC1563F 		.long	1062650220
 2505 0868 176CC116 		.long	381774871
 2506 086c 6CC1563F 		.long	1062650220
 2507 0870 176CC116 		.long	381774871
 2508 0874 6CC1563F 		.long	1062650220
 2509 0878 176CC116 		.long	381774871
 2510 087c 6CC1563F 		.long	1062650220
 2511              		.align 32
 2512              	.LC81:
 2513 0880 34C756A5 		.long	2773927732
 2514 0884 E31DC73E 		.long	1053236707
 2515 0888 34C756A5 		.long	2773927732
 2516 088c E31DC73E 		.long	1053236707
 2517 0890 34C756A5 		.long	2773927732
 2518 0894 E31DC73E 		.long	1053236707
 2519 0898 34C756A5 		.long	2773927732
 2520 089c E31DC73E 		.long	1053236707
 2521              		.align 32
 2522              	.LC82:
 2523 08a0 1AA0011A 		.long	436314138
 2524 08a4 A001FA3E 		.long	1056571808
 2525 08a8 1AA0011A 		.long	436314138
 2526 08ac A001FA3E 		.long	1056571808
 2527 08b0 1AA0011A 		.long	436314138
 2528 08b4 A001FA3E 		.long	1056571808
 2529 08b8 1AA0011A 		.long	436314138
 2530 08bc A001FA3E 		.long	1056571808
 2531              		.align 32
 2532              	.LC83:
 2533 08c0 E444F567 		.long	1744127204
GAS LISTING /tmp/ccryaM5C.s 			page 70


 2534 08c4 45E65A3E 		.long	1046144581
 2535 08c8 E444F567 		.long	1744127204
 2536 08cc 45E65A3E 		.long	1046144581
 2537 08d0 E444F567 		.long	1744127204
 2538 08d4 45E65A3E 		.long	1046144581
 2539 08d8 E444F567 		.long	1744127204
 2540 08dc 45E65A3E 		.long	1046144581
 2541              		.align 32
 2542              	.LC84:
 2543 08e0 5C9F78B7 		.long	3078135644
 2544 08e4 4F7E923E 		.long	1049787983
 2545 08e8 5C9F78B7 		.long	3078135644
 2546 08ec 4F7E923E 		.long	1049787983
 2547 08f0 5C9F78B7 		.long	3078135644
 2548 08f4 4F7E923E 		.long	1049787983
 2549 08f8 5C9F78B7 		.long	3078135644
 2550 08fc 4F7E923E 		.long	1049787983
 2551              		.align 32
 2552              	.LC85:
 2553 0900 096DA813 		.long	329805065
 2554 0904 4612E63D 		.long	1038488134
 2555 0908 096DA813 		.long	329805065
 2556 090c 4612E63D 		.long	1038488134
 2557 0910 096DA813 		.long	329805065
 2558 0914 4612E63D 		.long	1038488134
 2559 0918 096DA813 		.long	329805065
 2560 091c 4612E63D 		.long	1038488134
 2561              		.align 32
 2562              	.LC86:
 2563 0920 98D8F8EF 		.long	4026063000
 2564 0924 D8EE213E 		.long	1042411224
 2565 0928 98D8F8EF 		.long	4026063000
 2566 092c D8EE213E 		.long	1042411224
 2567 0930 98D8F8EF 		.long	4026063000
 2568 0934 D8EE213E 		.long	1042411224
 2569 0938 98D8F8EF 		.long	4026063000
 2570 093c D8EE213E 		.long	1042411224
 2571              		.align 32
 2572              	.LC87:
 2573 0940 85EB51B8 		.long	3092376453
 2574 0944 1E238640 		.long	1082532638
 2575 0948 85EB51B8 		.long	3092376453
 2576 094c 1E238640 		.long	1082532638
 2577 0950 85EB51B8 		.long	3092376453
 2578 0954 1E238640 		.long	1082532638
 2579 0958 85EB51B8 		.long	3092376453
 2580 095c 1E238640 		.long	1082532638
 2581              		.align 32
 2582              	.LC88:
 2583 0960 2D431CEB 		.long	3944497965
 2584 0964 E2361A3F 		.long	1058682594
 2585 0968 2D431CEB 		.long	3944497965
 2586 096c E2361A3F 		.long	1058682594
 2587 0970 2D431CEB 		.long	3944497965
 2588 0974 E2361A3F 		.long	1058682594
 2589 0978 2D431CEB 		.long	3944497965
 2590 097c E2361A3F 		.long	1058682594
GAS LISTING /tmp/ccryaM5C.s 			page 71


 2591              		.align 32
 2592              	.LC89:
 2593 0980 00000000 		.long	0
 2594 0984 00001440 		.long	1075052544
 2595 0988 00000000 		.long	0
 2596 098c 00001440 		.long	1075052544
 2597 0990 00000000 		.long	0
 2598 0994 00001440 		.long	1075052544
 2599 0998 00000000 		.long	0
 2600 099c 00001440 		.long	1075052544
 2601              		.align 32
 2602              	.LC90:
 2603 09a0 9A999999 		.long	2576980378
 2604 09a4 9999E93F 		.long	1072273817
 2605 09a8 9A999999 		.long	2576980378
 2606 09ac 9999E93F 		.long	1072273817
 2607 09b0 9A999999 		.long	2576980378
 2608 09b4 9999E93F 		.long	1072273817
 2609 09b8 9A999999 		.long	2576980378
 2610 09bc 9999E93F 		.long	1072273817
 2611              		.align 32
 2612              	.LC91:
 2613 09c0 00000000 		.long	0
 2614 09c4 00408F40 		.long	1083129856
 2615 09c8 00000000 		.long	0
 2616 09cc 00408F40 		.long	1083129856
 2617 09d0 00000000 		.long	0
 2618 09d4 00408F40 		.long	1083129856
 2619 09d8 00000000 		.long	0
 2620 09dc 00408F40 		.long	1083129856
 2621              		.align 32
 2622              	.LC92:
 2623 09e0 814EE62E 		.long	786845313
 2624 09e4 0BEBB940 		.long	1085926155
 2625 09e8 814EE62E 		.long	786845313
 2626 09ec 0BEBB940 		.long	1085926155
 2627 09f0 814EE62E 		.long	786845313
 2628 09f4 0BEBB940 		.long	1085926155
 2629 09f8 814EE62E 		.long	786845313
 2630 09fc 0BEBB940 		.long	1085926155
 2631              		.align 32
 2632              	.LC98:
 2633 0a00 7B14AE47 		.long	1202590843
 2634 0a04 E17A843F 		.long	1065646817
 2635 0a08 7B14AE47 		.long	1202590843
 2636 0a0c E17A843F 		.long	1065646817
 2637 0a10 7B14AE47 		.long	1202590843
 2638 0a14 E17A843F 		.long	1065646817
 2639 0a18 7B14AE47 		.long	1202590843
 2640 0a1c E17A843F 		.long	1065646817
 2641              		.align 32
 2642              	.LC99:
 2643 0a20 00000000 		.long	0
 2644 0a24 0000E0BF 		.long	-1075838976
 2645 0a28 00000000 		.long	0
 2646 0a2c 0000E0BF 		.long	-1075838976
 2647 0a30 00000000 		.long	0
GAS LISTING /tmp/ccryaM5C.s 			page 72


 2648 0a34 0000E0BF 		.long	-1075838976
 2649 0a38 00000000 		.long	0
 2650 0a3c 0000E0BF 		.long	-1075838976
 2651              		.align 32
 2652              	.LC100:
 2653 0a40 9A999999 		.long	2576980378
 2654 0a44 9999B9BF 		.long	-1078355559
 2655 0a48 9A999999 		.long	2576980378
 2656 0a4c 9999B9BF 		.long	-1078355559
 2657 0a50 9A999999 		.long	2576980378
 2658 0a54 9999B9BF 		.long	-1078355559
 2659 0a58 9A999999 		.long	2576980378
 2660 0a5c 9999B9BF 		.long	-1078355559
 2661              		.hidden	__dso_handle
 2662              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2663              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccryaM5C.s 			page 73


DEFINED SYMBOLS
                            *ABS*:0000000000000000 Duffing_RKCK45.cpp
     /tmp/ccryaM5C.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccryaM5C.s:27     .text:0000000000000000 _Z11printVectorPKc5Vec4d
     /tmp/ccryaM5C.s:143    .text:0000000000000180 _Z8linspaceddi
     /tmp/ccryaM5C.s:208    .text.startup:0000000000000000 main
     /tmp/ccryaM5C.s:1746   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccryaM5C.s:1758   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccryaM5C.s:1723   .text.startup:0000000000002340 _GLOBAL__sub_I__Z11printVectorPKc5Vec4d
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccryaM5C.s:1771   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccryaM5C.s:1775   .rodata.cst8:0000000000000008 .LC2
     /tmp/ccryaM5C.s:2421   .rodata.cst16:0000000000000080 .LC71
     /tmp/ccryaM5C.s:1950   .rodata.cst32:0000000000000220 .LC20
     /tmp/ccryaM5C.s:1978   .rodata.cst32:0000000000000240 .LC25
     /tmp/ccryaM5C.s:2632   .rodata.cst32:0000000000000a00 .LC98
     /tmp/ccryaM5C.s:2642   .rodata.cst32:0000000000000a20 .LC99
     /tmp/ccryaM5C.s:2652   .rodata.cst32:0000000000000a40 .LC100
     /tmp/ccryaM5C.s:1780   .rodata.cst32:0000000000000000 .LC3
     /tmp/ccryaM5C.s:1790   .rodata.cst32:0000000000000020 .LC4
     /tmp/ccryaM5C.s:1800   .rodata.cst32:0000000000000040 .LC5
     /tmp/ccryaM5C.s:1810   .rodata.cst32:0000000000000060 .LC6
     /tmp/ccryaM5C.s:1840   .rodata.cst32:00000000000000c0 .LC9
     /tmp/ccryaM5C.s:1820   .rodata.cst32:0000000000000080 .LC7
     /tmp/ccryaM5C.s:1860   .rodata.cst32:0000000000000100 .LC11
     /tmp/ccryaM5C.s:1850   .rodata.cst32:00000000000000e0 .LC10
     /tmp/ccryaM5C.s:1830   .rodata.cst32:00000000000000a0 .LC8
     /tmp/ccryaM5C.s:1870   .rodata.cst32:0000000000000120 .LC12
     /tmp/ccryaM5C.s:1900   .rodata.cst32:0000000000000180 .LC15
     /tmp/ccryaM5C.s:1880   .rodata.cst32:0000000000000140 .LC13
     /tmp/ccryaM5C.s:1910   .rodata.cst32:00000000000001a0 .LC16
     /tmp/ccryaM5C.s:1890   .rodata.cst32:0000000000000160 .LC14
     /tmp/ccryaM5C.s:1920   .rodata.cst32:00000000000001c0 .LC17
     /tmp/ccryaM5C.s:1930   .rodata.cst32:00000000000001e0 .LC18
     /tmp/ccryaM5C.s:1940   .rodata.cst32:0000000000000200 .LC19
     /tmp/ccryaM5C.s:1961   .rodata.cst16:0000000000000000 .LC21
     /tmp/ccryaM5C.s:1969   .rodata.cst16:0000000000000020 .LC23
     /tmp/ccryaM5C.s:1965   .rodata.cst16:0000000000000010 .LC22
     /tmp/ccryaM5C.s:1973   .rodata.cst16:0000000000000030 .LC24
     /tmp/ccryaM5C.s:1988   .rodata.cst32:0000000000000260 .LC26
     /tmp/ccryaM5C.s:1998   .rodata.cst32:0000000000000280 .LC27
     /tmp/ccryaM5C.s:2008   .rodata.cst32:00000000000002a0 .LC28
     /tmp/ccryaM5C.s:2028   .rodata.cst32:00000000000002e0 .LC30
     /tmp/ccryaM5C.s:2018   .rodata.cst32:00000000000002c0 .LC29
     /tmp/ccryaM5C.s:2038   .rodata.cst32:0000000000000300 .LC31
     /tmp/ccryaM5C.s:2048   .rodata.cst32:0000000000000320 .LC32
     /tmp/ccryaM5C.s:2058   .rodata.cst32:0000000000000340 .LC33
     /tmp/ccryaM5C.s:2068   .rodata.cst32:0000000000000360 .LC34
     /tmp/ccryaM5C.s:2078   .rodata.cst32:0000000000000380 .LC35
     /tmp/ccryaM5C.s:2088   .rodata.cst32:00000000000003a0 .LC36
     /tmp/ccryaM5C.s:2098   .rodata.cst32:00000000000003c0 .LC37
     /tmp/ccryaM5C.s:2108   .rodata.cst32:00000000000003e0 .LC38
     /tmp/ccryaM5C.s:2118   .rodata.cst32:0000000000000400 .LC39
     /tmp/ccryaM5C.s:2208   .rodata.cst32:0000000000000520 .LC48
     /tmp/ccryaM5C.s:2128   .rodata.cst32:0000000000000420 .LC40
     /tmp/ccryaM5C.s:2138   .rodata.cst32:0000000000000440 .LC41
     /tmp/ccryaM5C.s:2148   .rodata.cst32:0000000000000460 .LC42
GAS LISTING /tmp/ccryaM5C.s 			page 74


     /tmp/ccryaM5C.s:2158   .rodata.cst32:0000000000000480 .LC43
     /tmp/ccryaM5C.s:2168   .rodata.cst32:00000000000004a0 .LC44
     /tmp/ccryaM5C.s:2178   .rodata.cst32:00000000000004c0 .LC45
     /tmp/ccryaM5C.s:2188   .rodata.cst32:00000000000004e0 .LC46
     /tmp/ccryaM5C.s:2198   .rodata.cst32:0000000000000500 .LC47
     /tmp/ccryaM5C.s:2218   .rodata.cst32:0000000000000540 .LC49
     /tmp/ccryaM5C.s:2229   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccryaM5C.s:2237   .rodata.cst16:0000000000000060 .LC52
     /tmp/ccryaM5C.s:2233   .rodata.cst16:0000000000000050 .LC51
     /tmp/ccryaM5C.s:2252   .rodata.cst32:0000000000000580 .LC54
     /tmp/ccryaM5C.s:2242   .rodata.cst32:0000000000000560 .LC53
     /tmp/ccryaM5C.s:2263   .rodata.cst16:0000000000000070 .LC55
     /tmp/ccryaM5C.s:2290   .rodata.cst32:00000000000005e0 .LC58
     /tmp/ccryaM5C.s:2270   .rodata.cst32:00000000000005a0 .LC56
     /tmp/ccryaM5C.s:2310   .rodata.cst32:0000000000000620 .LC60
     /tmp/ccryaM5C.s:2300   .rodata.cst32:0000000000000600 .LC59
     /tmp/ccryaM5C.s:2280   .rodata.cst32:00000000000005c0 .LC57
     /tmp/ccryaM5C.s:2320   .rodata.cst32:0000000000000640 .LC61
     /tmp/ccryaM5C.s:2330   .rodata.cst32:0000000000000660 .LC62
     /tmp/ccryaM5C.s:2340   .rodata.cst32:0000000000000680 .LC63
     /tmp/ccryaM5C.s:2350   .rodata.cst32:00000000000006a0 .LC64
     /tmp/ccryaM5C.s:2360   .rodata.cst32:00000000000006c0 .LC65
     /tmp/ccryaM5C.s:2400   .rodata.cst32:0000000000000740 .LC69
     /tmp/ccryaM5C.s:2370   .rodata.cst32:00000000000006e0 .LC66
     /tmp/ccryaM5C.s:2380   .rodata.cst32:0000000000000700 .LC67
     /tmp/ccryaM5C.s:2390   .rodata.cst32:0000000000000720 .LC68
     /tmp/ccryaM5C.s:2410   .rodata.cst32:0000000000000760 .LC70
     /tmp/ccryaM5C.s:2427   .rodata.cst16:0000000000000090 .LC72
     /tmp/ccryaM5C.s:2432   .rodata.cst32:0000000000000780 .LC73
     /tmp/ccryaM5C.s:2442   .rodata.cst32:00000000000007a0 .LC74
     /tmp/ccryaM5C.s:2452   .rodata.cst32:00000000000007c0 .LC75
     /tmp/ccryaM5C.s:2492   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccryaM5C.s:2462   .rodata.cst32:00000000000007e0 .LC76
     /tmp/ccryaM5C.s:2472   .rodata.cst32:0000000000000800 .LC77
     /tmp/ccryaM5C.s:2502   .rodata.cst32:0000000000000860 .LC80
     /tmp/ccryaM5C.s:2482   .rodata.cst32:0000000000000820 .LC78
     /tmp/ccryaM5C.s:2532   .rodata.cst32:00000000000008c0 .LC83
     /tmp/ccryaM5C.s:2542   .rodata.cst32:00000000000008e0 .LC84
     /tmp/ccryaM5C.s:2512   .rodata.cst32:0000000000000880 .LC81
     /tmp/ccryaM5C.s:2552   .rodata.cst32:0000000000000900 .LC85
     /tmp/ccryaM5C.s:2522   .rodata.cst32:00000000000008a0 .LC82
     /tmp/ccryaM5C.s:2562   .rodata.cst32:0000000000000920 .LC86
     /tmp/ccryaM5C.s:2572   .rodata.cst32:0000000000000940 .LC87
     /tmp/ccryaM5C.s:2592   .rodata.cst32:0000000000000980 .LC89
     /tmp/ccryaM5C.s:2582   .rodata.cst32:0000000000000960 .LC88
     /tmp/ccryaM5C.s:2612   .rodata.cst32:00000000000009c0 .LC91
     /tmp/ccryaM5C.s:2602   .rodata.cst32:00000000000009a0 .LC90
     /tmp/ccryaM5C.s:2622   .rodata.cst32:00000000000009e0 .LC92

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
strlen
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
GAS LISTING /tmp/ccryaM5C.s 			page 75


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
