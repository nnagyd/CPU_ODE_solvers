GAS LISTING /tmp/ccitTqu7.s 			page 1


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
GAS LISTING /tmp/ccitTqu7.s 			page 2


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
GAS LISTING /tmp/ccitTqu7.s 			page 3


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
GAS LISTING /tmp/ccitTqu7.s 			page 4


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
GAS LISTING /tmp/ccitTqu7.s 			page 5


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
GAS LISTING /tmp/ccitTqu7.s 			page 6


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
 228 0019 4881ECC0 		subq	$2752, %rsp
 228      0A0000
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
 238 004c C57D2835 		vmovapd	.LC19(%rip), %ymm14
 238      00000000 
 239 0054 C5FD280D 		vmovapd	.LC20(%rip), %ymm1
 239      00000000 
 240 005c C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm2
 240      D201
 241 0062 C57D283D 		vmovapd	.LC25(%rip), %ymm15
 241      00000000 
 242 006a C5FC2994 		vmovaps	%ymm2, 192(%rsp)
 242      24C00000 
 242      00
 243 0073 C5ED5715 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 243      00000000 
 244 007b C5FD2994 		vmovapd	%ymm2, 224(%rsp)
 244      24E00000 
 244      00
 245              		.p2align 4,,10
 246 0084 0F1F4000 		.p2align 3
 247              	.L21:
 248 0088 C4C17D28 		vmovapd	0(%r13), %ymm0
 248      4500
 249 008e 4531C9   		xorl	%r9d, %r9d
 250 0091 4531D2   		xorl	%r10d, %r10d
 251 0094 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 251      00000000 
 252 009c 4C8D8424 		leaq	1888(%rsp), %r8
 252      60070000 
 253 00a4 488DBC24 		leaq	2368(%rsp), %rdi
 253      40090000 
 254 00ac C5FD2984 		vmovapd	%ymm0, 2624(%rsp)
 254      24400A00 
GAS LISTING /tmp/ccitTqu7.s 			page 7


 254      00
 255 00b5 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 256 00b9 C5FD2994 		vmovapd	%ymm2, 2496(%rsp)
 256      24C00900 
 256      00
 257 00c2 488D8424 		leaq	2144(%rsp), %rax
 257      60080000 
 258 00ca 488DB424 		leaq	576(%rsp), %rsi
 258      40020000 
 259 00d2 C5FD2984 		vmovapd	%ymm0, 2368(%rsp)
 259      24400900 
 259      00
 260 00db C4C17D28 		vmovapd	32(%r13), %ymm2
 260      5520
 261 00e1 C5FD2984 		vmovapd	%ymm0, 2400(%rsp)
 261      24600900 
 261      00
 262 00ea C5FD2994 		vmovapd	%ymm2, 2656(%rsp)
 262      24600A00 
 262      00
 263 00f3 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 263      00000000 
 264 00fb C5FD2994 		vmovapd	%ymm2, 2528(%rsp)
 264      24E00900 
 264      00
 265 0104 C4C17D28 		vmovapd	64(%r13), %ymm2
 265      5540
 266 010a C5FD2984 		vmovapd	%ymm0, 2432(%rsp)
 266      24800900 
 266      00
 267 0113 C5FD2994 		vmovapd	%ymm2, 2688(%rsp)
 267      24800A00 
 267      00
 268 011c C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 268      00000000 
 269 0124 C5FD2994 		vmovapd	%ymm2, 2560(%rsp)
 269      24000A00 
 269      00
 270 012d C4C17D28 		vmovapd	96(%r13), %ymm2
 270      5560
 271 0133 C5FD2984 		vmovapd	%ymm0, 2464(%rsp)
 271      24A00900 
 271      00
 272 013c C5FD2994 		vmovapd	%ymm2, 2720(%rsp)
 272      24A00A00 
 272      00
 273 0145 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 273      00000000 
 274 014d C5FD2994 		vmovapd	%ymm2, 2592(%rsp)
 274      24200A00 
 274      00
 275 0156 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 275      00000000 
 276 015e C5FD2994 		vmovapd	%ymm2, 2112(%rsp)
 276      24400800 
 276      00
 277 0167 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
GAS LISTING /tmp/ccitTqu7.s 			page 8


 277      00000000 
 278 016f C5FD2994 		vmovapd	%ymm2, 2144(%rsp)
 278      24600800 
 278      00
 279 0178 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 279      00000000 
 280 0180 C5FD2994 		vmovapd	%ymm2, 2176(%rsp)
 280      24800800 
 280      00
 281 0189 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 281      00000000 
 282 0191 C5FD2994 		vmovapd	%ymm2, 2208(%rsp)
 282      24A00800 
 282      00
 283 019a C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 283      00000000 
 284 01a2 C5FD2994 		vmovapd	%ymm2, 2240(%rsp)
 284      24C00800 
 284      00
 285 01ab C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 285      00000000 
 286 01b3 C5FD2994 		vmovapd	%ymm2, 2272(%rsp)
 286      24E00800 
 286      00
 287 01bc C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 287      00000000 
 288 01c4 C5FD2994 		vmovapd	%ymm2, 2304(%rsp)
 288      24000900 
 288      00
 289 01cd C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 289      00000000 
 290 01d5 C5FD2994 		vmovapd	%ymm2, 2336(%rsp)
 290      24200900 
 290      00
 291 01de E9B90200 		jmp	.L56
 291      00
 292              		.p2align 4,,10
 293 01e3 0F1F4400 		.p2align 3
 293      00
 294              	.L22:
 295 01e8 4963D2   		movslq	%r10d, %rdx
 296 01eb C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 296      00000000 
 297 01f3 4963C9   		movslq	%r9d, %rcx
 298 01f6 48C1E205 		salq	$5, %rdx
 299 01fa 48C1E105 		salq	$5, %rcx
 300 01fe 4183C202 		addl	$2, %r10d
 301 0202 4C8D5A20 		leaq	32(%rdx), %r11
 302 0206 4183C101 		addl	$1, %r9d
 303 020a 4E8DB41C 		leaq	2112(%rsp,%r11), %r14
 303      40080000 
 304 0212 C4C17D28 		vmovapd	(%r14), %ymm0
 304      06
 305 0217 C5FD2984 		vmovapd	%ymm0, 1088(%rsp,%rdx)
 305      14400400 
 305      00
 306 0220 C5ED549C 		vandpd	2368(%rsp,%rcx), %ymm2, %ymm3
GAS LISTING /tmp/ccitTqu7.s 			page 9


 306      0C400900 
 306      00
 307 0229 C5E55905 		vmulpd	.LC3(%rip), %ymm3, %ymm0
 307      00000000 
 308 0231 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 308      C008
 309 0237 C4E37D09 		vroundpd	$8, %ymm0, %ymm2
 309      D008
 310 023d C5FD1194 		vmovupd	%ymm2, 288(%rsp)
 310      24200100 
 310      00
 311 0246 C5FD5925 		vmulpd	.LC4(%rip), %ymm0, %ymm4
 311      00000000 
 312 024e C57B108C 		vmovsd	288(%rsp), %xmm9
 312      24200100 
 312      00
 313 0257 C57B1094 		vmovsd	296(%rsp), %xmm10
 313      24280100 
 313      00
 314 0260 C441FB2C 		vcvttsd2siq	%xmm9, %r15
 314      F9
 315 0265 C57B109C 		vmovsd	304(%rsp), %xmm11
 315      24300100 
 315      00
 316 026e C57B10A4 		vmovsd	312(%rsp), %xmm12
 316      24380100 
 316      00
 317 0277 C5E55CE4 		vsubpd	%ymm4, %ymm3, %ymm4
 318 027b 4C89BC24 		movq	%r15, 256(%rsp)
 318      00010000 
 319 0283 C441FB2C 		vcvttsd2siq	%xmm10, %r15
 319      FA
 320 0288 C5FA7E94 		vmovq	256(%rsp), %xmm2
 320      24000100 
 320      00
 321 0291 C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm5
 321      EF01
 322 0297 C441FB2C 		vcvttsd2siq	%xmm11, %r15
 322      FB
 323 029c 4C89BC24 		movq	%r15, 256(%rsp)
 323      00010000 
 324 02a4 C441FB2C 		vcvttsd2siq	%xmm12, %r15
 324      FC
 325 02a9 C5FA7E94 		vmovq	256(%rsp), %xmm2
 325      24000100 
 325      00
 326 02b2 C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm6
 326      F701
 327 02b8 C5FD5915 		vmulpd	.LC5(%rip), %ymm0, %ymm2
 327      00000000 
 328 02c0 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 328      00000000 
 329 02c8 C5DD5CE2 		vsubpd	%ymm2, %ymm4, %ymm4
 330 02cc C5DD5CE0 		vsubpd	%ymm0, %ymm4, %ymm4
 331 02d0 C5DD59C4 		vmulpd	%ymm4, %ymm4, %ymm0
 332 02d4 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 332      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 10


 333 02dc C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 334 02e0 C57D5915 		vmulpd	.LC7(%rip), %ymm0, %ymm10
 334      00000000 
 335 02e8 C57D5905 		vmulpd	.LC11(%rip), %ymm0, %ymm8
 335      00000000 
 336 02f0 C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 336      00000000 
 337 02f8 C5ED59FA 		vmulpd	%ymm2, %ymm2, %ymm7
 338 02fc C52D5815 		vaddpd	.LC8(%rip), %ymm10, %ymm10
 338      00000000 
 339 0304 C53D5805 		vaddpd	.LC12(%rip), %ymm8, %ymm8
 339      00000000 
 340 030c C53559CF 		vmulpd	%ymm7, %ymm9, %ymm9
 341 0310 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 341      CA
 342 0315 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 343 0319 C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 343      00000000 
 344 0321 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 344      C1
 345 0326 C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
 345      00000000 
 346 032e C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 346      00000000 
 347 0336 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 347      00000000 
 348 033e C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 349 0342 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 349      F9
 350 0347 C57D590D 		vmulpd	.LC17(%rip), %ymm0, %ymm9
 350      00000000 
 351 034f C535580D 		vaddpd	.LC18(%rip), %ymm9, %ymm9
 351      00000000 
 352 0357 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 353 035b C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 354 035f C55D59C8 		vmulpd	%ymm0, %ymm4, %ymm9
 355 0363 C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 355      C6
 356 0368 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 357 036c C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 357      C0
 358 0371 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 359 0375 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 360 0379 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 360      D901
 361 037f C5BD58E4 		vaddpd	%ymm4, %ymm8, %ymm4
 362 0383 C551DB05 		vpand	.LC21(%rip), %xmm5, %xmm8
 362      00000000 
 363 038b C4C13173 		vpsllq	$1, %xmm9, %xmm9
 363      F101
 364 0391 C5ED58D0 		vaddpd	%ymm0, %ymm2, %ymm2
 365 0395 C5C9DB05 		vpand	.LC21(%rip), %xmm6, %xmm0
 365      00000000 
 366 039d C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 366      00000000 
 367 03a5 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 367      C7
GAS LISTING /tmp/ccitTqu7.s 			page 11


 368 03aa C4E23929 		vpcmpeqq	%xmm7, %xmm8, %xmm7
 368      FF
 369 03af C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 369      00000000 
 370 03b7 C4625137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm8
 370      05000000 
 370      00
 371 03c0 C5D1D42D 		vpaddq	.LC21(%rip), %xmm5, %xmm5
 371      00000000 
 372 03c8 C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 372      0D000000 
 372      00
 373 03d1 C5C1EF3D 		vpxor	.LC103(%rip), %xmm7, %xmm7
 373      00000000 
 374 03d9 C531EF0D 		vpxor	.LC103(%rip), %xmm9, %xmm9
 374      00000000 
 375 03e1 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 375      F801
 376 03e7 C4E24937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm0
 376      05000000 
 376      00
 377 03f0 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 377      C001
 378 03f6 C5F928C3 		vmovapd	%xmm3, %xmm0
 379 03fa C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 379      01
 380 03ff C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 380      00000000 
 381 0407 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 381      05000000 
 381      00
 382 0410 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 382      00000000 
 383 0418 C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 383      C101
 384 041e C5BD54D8 		vandpd	%ymm0, %ymm8, %ymm3
 385 0422 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 386 0426 C4E36D4B 		vblendvpd	%ymm3, %ymm1, %ymm2, %ymm2
 386      D130
 387 042c C4E35D4B 		vblendvpd	%ymm3, %ymm0, %ymm4, %ymm4
 387      E030
 388 0432 C5C9D405 		vpaddq	.LC21(%rip), %xmm6, %xmm0
 388      00000000 
 389 043a C5D1DB35 		vpand	.LC24(%rip), %xmm5, %xmm6
 389      00000000 
 390 0442 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 390      00000000 
 391 044a C4E36D4B 		vblendvpd	%ymm7, %ymm4, %ymm2, %ymm3
 391      DC70
 392 0450 C5FD2894 		vmovapd	2624(%rsp,%rcx), %ymm2
 392      0C400A00 
 392      00
 393 0459 C5C973F6 		vpsllq	$62, %xmm6, %xmm6
 393      3E
 394 045e C4C16D59 		vmulpd	(%r14), %ymm2, %ymm2
 394      16
 395 0463 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
GAS LISTING /tmp/ccitTqu7.s 			page 12


 395      3E
 396 0468 C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 396      F001
 397 046e C5FD2884 		vmovapd	2112(%rsp,%rdx), %ymm0
 397      14400800 
 397      00
 398 0477 C5FD59E0 		vmulpd	%ymm0, %ymm0, %ymm4
 399 047b C5E557DE 		vxorpd	%ymm6, %ymm3, %ymm3
 400 047f C5F55CE4 		vsubpd	%ymm4, %ymm1, %ymm4
 401 0483 C58559DB 		vmulpd	%ymm3, %ymm15, %ymm3
 402 0487 C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 403 048b C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 404 048f C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 405 0493 C5FD2984 		vmovapd	%ymm0, 1120(%rsp,%rdx)
 405      14600400 
 405      00
 406              	.L56:
 407 049c 4183F903 		cmpl	$3, %r9d
 408 04a0 0F8E42FD 		jle	.L22
 408      FFFF
 409 04a6 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 409      00000000 
 410 04ae C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 410      C9
 411 04b3 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 411      ED
 412 04b8 4889F9   		movq	%rdi, %rcx
 413 04bb C5ED5984 		vmulpd	1088(%rsp), %ymm2, %ymm0
 413      24400400 
 413      00
 414 04c4 4C89C2   		movq	%r8, %rdx
 415 04c7 C5FD5984 		vmulpd	2496(%rsp), %ymm0, %ymm0
 415      24C00900 
 415      00
 416 04d0 C5FD5884 		vaddpd	2112(%rsp), %ymm0, %ymm0
 416      24400800 
 416      00
 417 04d9 C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 417      24400700 
 417      00
 418 04e2 C5ED5984 		vmulpd	1120(%rsp), %ymm2, %ymm0
 418      24600400 
 418      00
 419 04eb C5ED5994 		vmulpd	1152(%rsp), %ymm2, %ymm2
 419      24800400 
 419      00
 420 04f4 C5FD5984 		vmulpd	2496(%rsp), %ymm0, %ymm0
 420      24C00900 
 420      00
 421 04fd C5FD5884 		vaddpd	2144(%rsp), %ymm0, %ymm0
 421      24600800 
 421      00
 422 0506 C5FD2984 		vmovapd	%ymm0, 1888(%rsp)
 422      24600700 
 422      00
 423 050f C5FD2884 		vmovapd	2528(%rsp), %ymm0
 423      24E00900 
GAS LISTING /tmp/ccitTqu7.s 			page 13


 423      00
 424 0518 C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 425 051c C5ED5894 		vaddpd	2176(%rsp), %ymm2, %ymm2
 425      24800800 
 425      00
 426 0525 C5FD2994 		vmovapd	%ymm2, 1920(%rsp)
 426      24800700 
 426      00
 427 052e C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 427      00000000 
 428 0536 C5ED5994 		vmulpd	1184(%rsp), %ymm2, %ymm2
 428      24A00400 
 428      00
 429 053f C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 430 0543 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 430      00000000 
 431 054b C5ED5994 		vmulpd	1216(%rsp), %ymm2, %ymm2
 431      24C00400 
 431      00
 432 0554 C5FD5884 		vaddpd	2208(%rsp), %ymm0, %ymm0
 432      24A00800 
 432      00
 433 055d C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 433      24A00700 
 433      00
 434 0566 C5FD2884 		vmovapd	2560(%rsp), %ymm0
 434      24000A00 
 434      00
 435 056f C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 436 0573 C5ED5894 		vaddpd	2240(%rsp), %ymm2, %ymm2
 436      24C00800 
 436      00
 437 057c C5FD2994 		vmovapd	%ymm2, 1984(%rsp)
 437      24C00700 
 437      00
 438 0585 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 438      00000000 
 439 058d C5ED5994 		vmulpd	1248(%rsp), %ymm2, %ymm2
 439      24E00400 
 439      00
 440 0596 C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 441 059a C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 441      00000000 
 442 05a2 C5ED5994 		vmulpd	1280(%rsp), %ymm2, %ymm2
 442      24000500 
 442      00
 443 05ab C5FD5884 		vaddpd	2272(%rsp), %ymm0, %ymm0
 443      24E00800 
 443      00
 444 05b4 C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 444      24E00700 
 444      00
 445 05bd C5FD2884 		vmovapd	2592(%rsp), %ymm0
 445      24200A00 
 445      00
 446 05c6 C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 447 05ca C5ED5894 		vaddpd	2304(%rsp), %ymm2, %ymm2
GAS LISTING /tmp/ccitTqu7.s 			page 14


 447      24000900 
 447      00
 448 05d3 C5FD2994 		vmovapd	%ymm2, 2048(%rsp)
 448      24000800 
 448      00
 449 05dc C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 449      00000000 
 450 05e4 C5ED5994 		vmulpd	1312(%rsp), %ymm2, %ymm2
 450      24200500 
 450      00
 451 05ed C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 452 05f1 C5FD5884 		vaddpd	2336(%rsp), %ymm0, %ymm0
 452      24200900 
 452      00
 453 05fa C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 453      24200800 
 453      00
 454 0603 C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 454      00000000 
 455              	.L24:
 456 060b C5FD2802 		vmovapd	(%rdx), %ymm0
 457 060f 4883C240 		addq	$64, %rdx
 458 0613 4883C120 		addq	$32, %rcx
 459 0617 C5FD2982 		vmovapd	%ymm0, -1632(%rdx)
 459      A0F9FFFF 
 460 061f C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 460      E0
 461 0624 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 461      00000000 
 462 062c C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 462      C008
 463 0632 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 463      D808
 464 0638 C5FD119C 		vmovupd	%ymm3, 288(%rsp)
 464      24200100 
 464      00
 465 0641 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 465      00000000 
 466 0649 C5FB10AC 		vmovsd	288(%rsp), %xmm5
 466      24200100 
 466      00
 467 0652 C5FB10B4 		vmovsd	296(%rsp), %xmm6
 467      24280100 
 467      00
 468 065b C461FB2C 		vcvttsd2siq	%xmm5, %r11
 468      DD
 469 0660 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 469      00000000 
 470 0668 C461FB2C 		vcvttsd2siq	%xmm6, %r9
 470      CE
 471 066d C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 471      00000000 
 472 0675 C57B1084 		vmovsd	312(%rsp), %xmm8
 472      24380100 
 472      00
 473 067e C5FB10BC 		vmovsd	304(%rsp), %xmm7
 473      24300100 
GAS LISTING /tmp/ccitTqu7.s 			page 15


 473      00
 474 0687 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 475 068b C461FB2C 		vcvttsd2siq	%xmm7, %r14
 475      F7
 476 0690 4C899C24 		movq	%r11, 256(%rsp)
 476      00010000 
 477 0698 C5FA7EB4 		vmovq	256(%rsp), %xmm6
 477      24000100 
 477      00
 478 06a1 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 479 06a5 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 479      F101
 480 06ab C441FB2C 		vcvttsd2siq	%xmm8, %r9
 480      C8
 481 06b0 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 482 06b4 4C89B424 		movq	%r14, 256(%rsp)
 482      00010000 
 483 06bc C5FA7EBC 		vmovq	256(%rsp), %xmm7
 483      24000100 
 483      00
 484 06c5 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 485 06c9 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 485      F901
 486 06cf C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 486      00000000 
 487 06d7 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 488 06db C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 488      00000000 
 489 06e3 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 489      00000000 
 490 06eb C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 490      00000000 
 491 06f3 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 492 06f7 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 492      00000000 
 493 06ff C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 493      00000000 
 494 0707 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 494      D8
 495 070c C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 495      DC
 496 0711 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 497 0715 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 497      00000000 
 498 071d C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 498      D3
 499 0722 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 499      00000000 
 500 072a C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 500      00000000 
 501 0732 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 501      00000000 
 502 073a C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 502      C0
 503 073f C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 503      C3
 504 0744 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
GAS LISTING /tmp/ccitTqu7.s 			page 16


 504      00000000 
 505 074c C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 505      00000000 
 506 0754 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 507 0758 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 507      C0
 508 075d C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 509 0761 C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 509      C6
 510 0766 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 510      D8
 511 076b C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 511      00000000 
 512 0773 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 513 0777 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 513      D2
 514 077c C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 514      E301
 515 0782 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 515      C1
 516 0787 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 517 078b C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 517      00000000 
 518 0793 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 518      F301
 519 0799 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 519      00000000 
 520 07a1 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 521 07a5 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 521      00000000 
 522 07ad C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 522      C1
 523 07b2 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 523      15000000 
 523      00
 524 07bb C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 524      00000000 
 525 07c3 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 525      00000000 
 526 07cb C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 526      1D000000 
 526      00
 527 07d4 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 527      00000000 
 528 07dc C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 528      C001
 529 07e2 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 529      05000000 
 529      00
 530 07eb C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 530      D001
 531 07f1 C5F928C4 		vmovapd	%xmm4, %xmm0
 532 07f5 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 532      01
 533 07fa C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 533      00000000 
 534 0802 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
GAS LISTING /tmp/ccitTqu7.s 			page 17


 534      05000000 
 534      00
 535 080b C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 535      00000000 
 536 0813 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 536      C301
 537 0819 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 538 081d C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 538      00000000 
 539 0825 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 539      00000000 
 540 082d C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 540      00000000 
 541 0835 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 541      ED40
 542 083b C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 542      D940
 543 0841 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 543      3E
 544 0846 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 544      E580
 545 084c C5FD2899 		vmovapd	224(%rcx), %ymm3
 545      E0000000 
 546 0854 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 546      3E
 547 0859 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 547      F801
 548 085f C5FD2842 		vmovapd	-96(%rdx), %ymm0
 548      A0
 549 0864 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 549      C0
 550 0869 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 551 086d C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 552 0871 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 553 0875 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 554 0879 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 555 087d C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 556 0881 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 557 0885 C5FD2982 		vmovapd	%ymm0, -1600(%rdx)
 557      C0F9FFFF 
 558 088d 4839C2   		cmpq	%rax, %rdx
 559 0890 0F8575FD 		jne	.L24
 559      FFFF
 560 0896 C5FD2825 		vmovapd	.LC27(%rip), %ymm4
 560      00000000 
 561 089e C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 561      C9
 562 08a3 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 562      00000000 
 563 08ab C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 563      ED
 564 08b0 C5DD5984 		vmulpd	320(%rsp), %ymm4, %ymm0
 564      24400100 
 564      00
 565 08b9 4889F9   		movq	%rdi, %rcx
 566 08bc C5FD2825 		vmovapd	.LC28(%rip), %ymm4
 566      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 18


 567 08c4 4C89C2   		movq	%r8, %rdx
 568 08c7 C5DD599C 		vmulpd	1088(%rsp), %ymm4, %ymm3
 568      24400400 
 568      00
 569 08d0 C5FD28FC 		vmovapd	%ymm4, %ymm7
 570 08d4 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 571 08d8 C5DD599C 		vmulpd	1120(%rsp), %ymm4, %ymm3
 571      24600400 
 571      00
 572 08e1 C5FD28E6 		vmovapd	%ymm6, %ymm4
 573 08e5 C5FD5984 		vmulpd	2496(%rsp), %ymm0, %ymm0
 573      24C00900 
 573      00
 574 08ee C5FD5884 		vaddpd	2112(%rsp), %ymm0, %ymm0
 574      24400800 
 574      00
 575 08f7 C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 575      24400700 
 575      00
 576 0900 C5CD5984 		vmulpd	352(%rsp), %ymm6, %ymm0
 576      24600100 
 576      00
 577 0909 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 578 090d C5C5599C 		vmulpd	1152(%rsp), %ymm7, %ymm3
 578      24800400 
 578      00
 579 0916 C5FD5984 		vmulpd	2496(%rsp), %ymm0, %ymm0
 579      24C00900 
 579      00
 580 091f C5FD5884 		vaddpd	2144(%rsp), %ymm0, %ymm0
 580      24600800 
 580      00
 581 0928 C5FD2984 		vmovapd	%ymm0, 1888(%rsp)
 581      24600700 
 581      00
 582 0931 C5CD5984 		vmulpd	384(%rsp), %ymm6, %ymm0
 582      24800100 
 582      00
 583 093a C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 584 093e C5C5599C 		vmulpd	1184(%rsp), %ymm7, %ymm3
 584      24A00400 
 584      00
 585 0947 C5FD5984 		vmulpd	2528(%rsp), %ymm0, %ymm0
 585      24E00900 
 585      00
 586 0950 C5FD5884 		vaddpd	2176(%rsp), %ymm0, %ymm0
 586      24800800 
 586      00
 587 0959 C5FD2984 		vmovapd	%ymm0, 1920(%rsp)
 587      24800700 
 587      00
 588 0962 C5DD5984 		vmulpd	416(%rsp), %ymm4, %ymm0
 588      24A00100 
 588      00
 589 096b C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 590 096f C5C5599C 		vmulpd	1216(%rsp), %ymm7, %ymm3
 590      24C00400 
GAS LISTING /tmp/ccitTqu7.s 			page 19


 590      00
 591 0978 C5FD5984 		vmulpd	2528(%rsp), %ymm0, %ymm0
 591      24E00900 
 591      00
 592 0981 C5FD5884 		vaddpd	2208(%rsp), %ymm0, %ymm0
 592      24A00800 
 592      00
 593 098a C5FD2984 		vmovapd	%ymm0, 1952(%rsp)
 593      24A00700 
 593      00
 594 0993 C5DD5984 		vmulpd	448(%rsp), %ymm4, %ymm0
 594      24C00100 
 594      00
 595 099c C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 596 09a0 C5C5599C 		vmulpd	1248(%rsp), %ymm7, %ymm3
 596      24E00400 
 596      00
 597 09a9 C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 597      24000A00 
 597      00
 598 09b2 C5FD5884 		vaddpd	2240(%rsp), %ymm0, %ymm0
 598      24C00800 
 598      00
 599 09bb C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 599      24C00700 
 599      00
 600 09c4 C5DD5984 		vmulpd	480(%rsp), %ymm4, %ymm0
 600      24E00100 
 600      00
 601 09cd C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 602 09d1 C5C5599C 		vmulpd	1280(%rsp), %ymm7, %ymm3
 602      24000500 
 602      00
 603 09da C5FD5984 		vmulpd	2560(%rsp), %ymm0, %ymm0
 603      24000A00 
 603      00
 604 09e3 C5FD5884 		vaddpd	2272(%rsp), %ymm0, %ymm0
 604      24E00800 
 604      00
 605 09ec C5FD2984 		vmovapd	%ymm0, 2016(%rsp)
 605      24E00700 
 605      00
 606 09f5 C5DD5984 		vmulpd	512(%rsp), %ymm4, %ymm0
 606      24000200 
 606      00
 607 09fe C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 608 0a02 C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 608      24200A00 
 608      00
 609 0a0b C5FD5884 		vaddpd	2304(%rsp), %ymm0, %ymm0
 609      24000900 
 609      00
 610 0a14 C5FD2984 		vmovapd	%ymm0, 2048(%rsp)
 610      24000800 
 610      00
 611 0a1d C5DD5984 		vmulpd	544(%rsp), %ymm4, %ymm0
 611      24200200 
GAS LISTING /tmp/ccitTqu7.s 			page 20


 611      00
 612 0a26 C5C5599C 		vmulpd	1312(%rsp), %ymm7, %ymm3
 612      24200500 
 612      00
 613 0a2f C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 614 0a33 C5FD5984 		vmulpd	2592(%rsp), %ymm0, %ymm0
 614      24200A00 
 614      00
 615 0a3c C5FD5884 		vaddpd	2336(%rsp), %ymm0, %ymm0
 615      24200900 
 615      00
 616 0a45 C5FD2984 		vmovapd	%ymm0, 2080(%rsp)
 616      24200800 
 616      00
 617              	.L26:
 618 0a4e C5FD2802 		vmovapd	(%rdx), %ymm0
 619 0a52 4883C240 		addq	$64, %rdx
 620 0a56 4883C120 		addq	$32, %rcx
 621 0a5a C5FD2982 		vmovapd	%ymm0, -608(%rdx)
 621      A0FDFFFF 
 622 0a62 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 622      E0
 623 0a67 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 623      00000000 
 624 0a6f C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 624      C008
 625 0a75 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 625      D808
 626 0a7b C5FD119C 		vmovupd	%ymm3, 288(%rsp)
 626      24200100 
 626      00
 627 0a84 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 627      00000000 
 628 0a8c C57B1094 		vmovsd	288(%rsp), %xmm10
 628      24200100 
 628      00
 629 0a95 C57B109C 		vmovsd	296(%rsp), %xmm11
 629      24280100 
 629      00
 630 0a9e C441FB2C 		vcvttsd2siq	%xmm10, %r10
 630      D2
 631 0aa3 C441FB2C 		vcvttsd2siq	%xmm11, %r9
 631      CB
 632 0aa8 C5FB109C 		vmovsd	312(%rsp), %xmm3
 632      24380100 
 632      00
 633 0ab1 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 634 0ab5 C57B10A4 		vmovsd	304(%rsp), %xmm12
 634      24300100 
 634      00
 635 0abe C441FB2C 		vcvttsd2siq	%xmm12, %r11
 635      DC
 636 0ac3 4C899424 		movq	%r10, 256(%rsp)
 636      00010000 
 637 0acb C5FA7EB4 		vmovq	256(%rsp), %xmm6
 637      24000100 
 637      00
GAS LISTING /tmp/ccitTqu7.s 			page 21


 638 0ad4 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 638      F101
 639 0ada C461FB2C 		vcvttsd2siq	%xmm3, %r9
 639      CB
 640 0adf C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 640      00000000 
 641 0ae7 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 641      00000000 
 642 0aef 4C899C24 		movq	%r11, 256(%rsp)
 642      00010000 
 643 0af7 C5FA7EBC 		vmovq	256(%rsp), %xmm7
 643      24000100 
 643      00
 644 0b00 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 645 0b04 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 645      F901
 646 0b0a C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 647 0b0e C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 648 0b12 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 648      00000000 
 649 0b1a C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 650 0b1e C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 650      00000000 
 651 0b26 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 651      00000000 
 652 0b2e C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 652      00000000 
 653 0b36 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 654 0b3a C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 654      00000000 
 655 0b42 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 655      00000000 
 656 0b4a C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 656      D8
 657 0b4f C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 657      DC
 658 0b54 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 659 0b58 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 659      00000000 
 660 0b60 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 660      D3
 661 0b65 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 661      00000000 
 662 0b6d C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 662      00000000 
 663 0b75 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 663      00000000 
 664 0b7d C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 664      C0
 665 0b82 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 665      C3
 666 0b87 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 666      00000000 
 667 0b8f C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 667      00000000 
 668 0b97 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 669 0b9b C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
GAS LISTING /tmp/ccitTqu7.s 			page 22


 669      C0
 670 0ba0 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 671 0ba4 C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 671      C6
 672 0ba9 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 672      D8
 673 0bae C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 673      00000000 
 674 0bb6 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 675 0bba C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 675      D2
 676 0bbf C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 676      E301
 677 0bc5 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 677      C1
 678 0bca C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 679 0bce C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 679      00000000 
 680 0bd6 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 680      F301
 681 0bdc C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 681      00000000 
 682 0be4 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 683 0be8 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 683      00000000 
 684 0bf0 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 684      C1
 685 0bf5 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 685      15000000 
 685      00
 686 0bfe C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 686      00000000 
 687 0c06 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 687      00000000 
 688 0c0e C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 688      1D000000 
 688      00
 689 0c17 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 689      00000000 
 690 0c1f C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 690      C001
 691 0c25 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 691      05000000 
 691      00
 692 0c2e C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 692      D001
 693 0c34 C5F928C4 		vmovapd	%xmm4, %xmm0
 694 0c38 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 694      01
 695 0c3d C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 695      00000000 
 696 0c45 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 696      05000000 
 696      00
 697 0c4e C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 697      00000000 
 698 0c56 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
GAS LISTING /tmp/ccitTqu7.s 			page 23


 698      C301
 699 0c5c C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 700 0c60 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 700      00000000 
 701 0c68 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 701      00000000 
 702 0c70 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 702      00000000 
 703 0c78 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 703      ED40
 704 0c7e C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 704      D940
 705 0c84 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 705      3E
 706 0c89 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 706      E580
 707 0c8f C5FD2899 		vmovapd	224(%rcx), %ymm3
 707      E0000000 
 708 0c97 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 708      3E
 709 0c9c C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 709      F801
 710 0ca2 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 710      A0
 711 0ca7 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 711      C0
 712 0cac C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 713 0cb0 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 714 0cb4 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 715 0cb8 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 716 0cbc C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 717 0cc0 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 718 0cc4 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 719 0cc8 C5FD2982 		vmovapd	%ymm0, -576(%rdx)
 719      C0FDFFFF 
 720 0cd0 4839D0   		cmpq	%rdx, %rax
 721 0cd3 0F8575FD 		jne	.L26
 721      FFFF
 722 0cd9 488D8C24 		leaq	320(%rsp), %rcx
 722      40010000 
 723 0ce1 4889CA   		movq	%rcx, %rdx
 724              	.L28:
 725 0ce4 C5FD2835 		vmovapd	.LC29(%rip), %ymm6
 725      00000000 
 726 0cec 4883C240 		addq	$64, %rdx
 727 0cf0 4883C120 		addq	$32, %rcx
 728 0cf4 C58559A2 		vmulpd	704(%rdx), %ymm15, %ymm4
 728      C0020000 
 729 0cfc C5CD599A 		vmulpd	960(%rdx), %ymm6, %ymm3
 729      C0030000 
 730 0d04 C5FD2835 		vmovapd	.LC30(%rip), %ymm6
 730      00000000 
 731 0d0c C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 731      C0
 732 0d11 C5FD2835 		vmovapd	.LC29(%rip), %ymm6
 732      00000000 
 733 0d19 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
GAS LISTING /tmp/ccitTqu7.s 			page 24


 734 0d1d C58559A2 		vmulpd	736(%rdx), %ymm15, %ymm4
 734      E0020000 
 735 0d25 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 736 0d29 C5CD599A 		vmulpd	992(%rdx), %ymm6, %ymm3
 736      E0030000 
 737 0d31 C5FD2835 		vmovapd	.LC30(%rip), %ymm6
 737      00000000 
 738 0d39 C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 738      60080000 
 739 0d41 C5FD5882 		vaddpd	1728(%rdx), %ymm0, %ymm0
 739      C0060000 
 740 0d49 C5FD2982 		vmovapd	%ymm0, 1472(%rdx)
 740      C0050000 
 741 0d51 C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 741      E0
 742 0d56 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 743 0d5a C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 744 0d5e C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 744      60080000 
 745 0d66 C5FD5882 		vaddpd	1760(%rdx), %ymm0, %ymm0
 745      E0060000 
 746 0d6e C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 746      E0050000 
 747 0d76 4839F2   		cmpq	%rsi, %rdx
 748 0d79 0F8565FF 		jne	.L28
 748      FFFF
 749 0d7f C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 749      C9
 750 0d84 4889F9   		movq	%rdi, %rcx
 751 0d87 4C89C2   		movq	%r8, %rdx
 752 0d8a C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 752      ED
 753              	.L30:
 754 0d8f C5FD2802 		vmovapd	(%rdx), %ymm0
 755 0d93 4883C240 		addq	$64, %rdx
 756 0d97 4883C120 		addq	$32, %rcx
 757 0d9b C5FD2982 		vmovapd	%ymm0, -352(%rdx)
 757      A0FEFFFF 
 758 0da3 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 758      E0
 759 0da8 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 759      00000000 
 760 0db0 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 760      C008
 761 0db6 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 761      D808
 762 0dbc C5FD119C 		vmovupd	%ymm3, 288(%rsp)
 762      24200100 
 762      00
 763 0dc5 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 763      00000000 
 764 0dcd C5FB10AC 		vmovsd	288(%rsp), %xmm5
 764      24200100 
 764      00
 765 0dd6 C5FB10B4 		vmovsd	296(%rsp), %xmm6
 765      24280100 
 765      00
GAS LISTING /tmp/ccitTqu7.s 			page 25


 766 0ddf C461FB2C 		vcvttsd2siq	%xmm5, %r14
 766      F5
 767 0de4 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 767      00000000 
 768 0dec C461FB2C 		vcvttsd2siq	%xmm6, %r9
 768      CE
 769 0df1 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 769      00000000 
 770 0df9 C57B1084 		vmovsd	312(%rsp), %xmm8
 770      24380100 
 770      00
 771 0e02 C5FB10BC 		vmovsd	304(%rsp), %xmm7
 771      24300100 
 771      00
 772 0e0b C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 773 0e0f C461FB2C 		vcvttsd2siq	%xmm7, %r10
 773      D7
 774 0e14 4C89B424 		movq	%r14, 256(%rsp)
 774      00010000 
 775 0e1c C5FA7EB4 		vmovq	256(%rsp), %xmm6
 775      24000100 
 775      00
 776 0e25 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 777 0e29 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 777      F101
 778 0e2f C441FB2C 		vcvttsd2siq	%xmm8, %r9
 778      C8
 779 0e34 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 780 0e38 4C899424 		movq	%r10, 256(%rsp)
 780      00010000 
 781 0e40 C5FA7EBC 		vmovq	256(%rsp), %xmm7
 781      24000100 
 781      00
 782 0e49 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 783 0e4d C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 783      F901
 784 0e53 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 784      00000000 
 785 0e5b C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 786 0e5f C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 786      00000000 
 787 0e67 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 787      00000000 
 788 0e6f C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 788      00000000 
 789 0e77 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 790 0e7b C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 790      00000000 
 791 0e83 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 791      00000000 
 792 0e8b C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 792      D8
 793 0e90 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 793      DC
 794 0e95 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 795 0e99 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 795      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 26


 796 0ea1 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 796      D3
 797 0ea6 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 797      00000000 
 798 0eae C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 798      00000000 
 799 0eb6 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 799      00000000 
 800 0ebe C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 800      C0
 801 0ec3 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 801      C3
 802 0ec8 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 802      00000000 
 803 0ed0 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 803      00000000 
 804 0ed8 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 805 0edc C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 805      C0
 806 0ee1 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 807 0ee5 C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 807      C6
 808 0eea C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 808      D8
 809 0eef C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 809      00000000 
 810 0ef7 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 811 0efb C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 811      D2
 812 0f00 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 812      E301
 813 0f06 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 813      C1
 814 0f0b C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 815 0f0f C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 815      00000000 
 816 0f17 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 816      F301
 817 0f1d C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 817      00000000 
 818 0f25 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 819 0f29 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 819      00000000 
 820 0f31 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 820      C1
 821 0f36 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 821      15000000 
 821      00
 822 0f3f C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 822      00000000 
 823 0f47 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 823      00000000 
 824 0f4f C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 824      1D000000 
 824      00
 825 0f58 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 825      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 27


 826 0f60 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 826      C001
 827 0f66 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 827      05000000 
 827      00
 828 0f6f C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 828      D001
 829 0f75 C5F928C4 		vmovapd	%xmm4, %xmm0
 830 0f79 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 830      01
 831 0f7e C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 831      00000000 
 832 0f86 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 832      05000000 
 832      00
 833 0f8f C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 833      00000000 
 834 0f97 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 834      C301
 835 0f9d C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 836 0fa1 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 836      00000000 
 837 0fa9 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 837      00000000 
 838 0fb1 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 838      00000000 
 839 0fb9 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 839      ED40
 840 0fbf C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 840      D940
 841 0fc5 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 841      3E
 842 0fca C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 842      E580
 843 0fd0 C5FD2899 		vmovapd	224(%rcx), %ymm3
 843      E0000000 
 844 0fd8 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 844      3E
 845 0fdd C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 845      F801
 846 0fe3 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 846      A0
 847 0fe8 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 847      C0
 848 0fed C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 849 0ff1 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 850 0ff5 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 851 0ff9 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 852 0ffd C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 853 1001 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 854 1005 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 855 1009 C5FD2982 		vmovapd	%ymm0, -320(%rdx)
 855      C0FEFFFF 
 856 1011 4839D0   		cmpq	%rdx, %rax
 857 1014 0F8575FD 		jne	.L30
 857      FFFF
 858 101a 488D8C24 		leaq	320(%rsp), %rcx
GAS LISTING /tmp/ccitTqu7.s 			page 28


 858      40010000 
 859 1022 4889CA   		movq	%rcx, %rdx
 860              	.L32:
 861 1025 C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 861      00000000 
 862 102d 4883C240 		addq	$64, %rdx
 863 1031 4883C120 		addq	$32, %rcx
 864 1035 C5CD599A 		vmulpd	1216(%rdx), %ymm6, %ymm3
 864      C0040000 
 865 103d C5FD2835 		vmovapd	.LC32(%rip), %ymm6
 865      00000000 
 866 1045 C5CD59A2 		vmulpd	960(%rdx), %ymm6, %ymm4
 866      C0030000 
 867 104d C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 867      00000000 
 868 1055 C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 868      C0
 869 105a C5FD2835 		vmovapd	.LC34(%rip), %ymm6
 869      00000000 
 870 1062 C5CD59AA 		vmulpd	704(%rdx), %ymm6, %ymm5
 870      C0020000 
 871 106a C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 871      00000000 
 872 1072 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 873 1076 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 874 107a C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 875 107e C5CD599A 		vmulpd	1248(%rdx), %ymm6, %ymm3
 875      E0040000 
 876 1086 C5FD2835 		vmovapd	.LC32(%rip), %ymm6
 876      00000000 
 877 108e C5CD59A2 		vmulpd	992(%rdx), %ymm6, %ymm4
 877      E0030000 
 878 1096 C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 878      00000000 
 879 109e C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 879      60080000 
 880 10a6 C5FD5882 		vaddpd	1728(%rdx), %ymm0, %ymm0
 880      C0060000 
 881 10ae C5FD2982 		vmovapd	%ymm0, 1472(%rdx)
 881      C0050000 
 882 10b6 C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 882      E0
 883 10bb C5FD2835 		vmovapd	.LC34(%rip), %ymm6
 883      00000000 
 884 10c3 C5CD59AA 		vmulpd	736(%rdx), %ymm6, %ymm5
 884      E0020000 
 885 10cb C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 886 10cf C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 887 10d3 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 888 10d7 C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 888      60080000 
 889 10df C5FD5882 		vaddpd	1760(%rdx), %ymm0, %ymm0
 889      E0060000 
 890 10e7 C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 890      E0050000 
 891 10ef 4839D6   		cmpq	%rdx, %rsi
 892 10f2 0F852DFF 		jne	.L32
GAS LISTING /tmp/ccitTqu7.s 			page 29


 892      FFFF
 893 10f8 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 893      C9
 894 10fd 4889F9   		movq	%rdi, %rcx
 895 1100 4C89C2   		movq	%r8, %rdx
 896 1103 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 896      ED
 897              	.L34:
 898 1108 C5FD2802 		vmovapd	(%rdx), %ymm0
 899 110c 4883C240 		addq	$64, %rdx
 900 1110 4883C120 		addq	$32, %rcx
 901 1114 C5FD2982 		vmovapd	%ymm0, -1120(%rdx)
 901      A0FBFFFF 
 902 111c C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 902      E0
 903 1121 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 903      00000000 
 904 1129 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 904      C008
 905 112f C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 905      D808
 906 1135 C5FD119C 		vmovupd	%ymm3, 288(%rsp)
 906      24200100 
 906      00
 907 113e C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 907      00000000 
 908 1146 C57B1094 		vmovsd	288(%rsp), %xmm10
 908      24200100 
 908      00
 909 114f C57B109C 		vmovsd	296(%rsp), %xmm11
 909      24280100 
 909      00
 910 1158 C441FB2C 		vcvttsd2siq	%xmm10, %r11
 910      DA
 911 115d C441FB2C 		vcvttsd2siq	%xmm11, %r9
 911      CB
 912 1162 C5FB109C 		vmovsd	312(%rsp), %xmm3
 912      24380100 
 912      00
 913 116b C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 914 116f C57B10A4 		vmovsd	304(%rsp), %xmm12
 914      24300100 
 914      00
 915 1178 C441FB2C 		vcvttsd2siq	%xmm12, %r14
 915      F4
 916 117d 4C899C24 		movq	%r11, 256(%rsp)
 916      00010000 
 917 1185 C5FA7EB4 		vmovq	256(%rsp), %xmm6
 917      24000100 
 917      00
 918 118e C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 918      F101
 919 1194 C461FB2C 		vcvttsd2siq	%xmm3, %r9
 919      CB
 920 1199 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 920      00000000 
 921 11a1 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
GAS LISTING /tmp/ccitTqu7.s 			page 30


 921      00000000 
 922 11a9 4C89B424 		movq	%r14, 256(%rsp)
 922      00010000 
 923 11b1 C5FA7EBC 		vmovq	256(%rsp), %xmm7
 923      24000100 
 923      00
 924 11ba C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 925 11be C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 925      F901
 926 11c4 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 927 11c8 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 928 11cc C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 928      00000000 
 929 11d4 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 930 11d8 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 930      00000000 
 931 11e0 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 931      00000000 
 932 11e8 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 932      00000000 
 933 11f0 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 934 11f4 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 934      00000000 
 935 11fc C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 935      00000000 
 936 1204 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 936      D8
 937 1209 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 937      DC
 938 120e C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 939 1212 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 939      00000000 
 940 121a C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 940      D3
 941 121f C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 941      00000000 
 942 1227 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 942      00000000 
 943 122f C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 943      00000000 
 944 1237 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 944      C0
 945 123c C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 945      C3
 946 1241 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 946      00000000 
 947 1249 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 947      00000000 
 948 1251 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 949 1255 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 949      C0
 950 125a C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 951 125e C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 951      C6
 952 1263 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 952      D8
 953 1268 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
GAS LISTING /tmp/ccitTqu7.s 			page 31


 953      00000000 
 954 1270 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 955 1274 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 955      D2
 956 1279 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 956      E301
 957 127f C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 957      C1
 958 1284 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 959 1288 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 959      00000000 
 960 1290 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 960      F301
 961 1296 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 961      00000000 
 962 129e C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 963 12a2 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 963      00000000 
 964 12aa C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 964      C1
 965 12af C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 965      15000000 
 965      00
 966 12b8 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 966      00000000 
 967 12c0 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 967      00000000 
 968 12c8 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 968      1D000000 
 968      00
 969 12d1 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 969      00000000 
 970 12d9 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 970      C001
 971 12df C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 971      05000000 
 971      00
 972 12e8 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 972      D001
 973 12ee C5F928C4 		vmovapd	%xmm4, %xmm0
 974 12f2 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 974      01
 975 12f7 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 975      00000000 
 976 12ff C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 976      05000000 
 976      00
 977 1308 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 977      00000000 
 978 1310 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 978      C301
 979 1316 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 980 131a C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 980      00000000 
 981 1322 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 981      00000000 
 982 132a C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
GAS LISTING /tmp/ccitTqu7.s 			page 32


 982      00000000 
 983 1332 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 983      ED40
 984 1338 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 984      D940
 985 133e C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 985      3E
 986 1343 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 986      E580
 987 1349 C5FD2899 		vmovapd	224(%rcx), %ymm3
 987      E0000000 
 988 1351 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 988      3E
 989 1356 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 989      F801
 990 135c C5FD2842 		vmovapd	-96(%rdx), %ymm0
 990      A0
 991 1361 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 991      C0
 992 1366 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 993 136a C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 994 136e C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 995 1372 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 996 1376 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 997 137a C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 998 137e C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 999 1382 C5FD2982 		vmovapd	%ymm0, -1088(%rdx)
 999      C0FBFFFF 
 1000 138a 4839D0   		cmpq	%rdx, %rax
 1001 138d 0F8575FD 		jne	.L34
 1001      FFFF
 1002 1393 488D8C24 		leaq	320(%rsp), %rcx
 1002      40010000 
 1003 139b 4889CA   		movq	%rcx, %rdx
 1004              	.L36:
 1005 139e C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 1005      00000000 
 1006 13a6 4883C240 		addq	$64, %rdx
 1007 13aa 4883C120 		addq	$32, %rcx
 1008 13ae C5FD283D 		vmovapd	.LC37(%rip), %ymm7
 1008      00000000 
 1009 13b6 C5CD599A 		vmulpd	448(%rdx), %ymm6, %ymm3
 1009      C0010000 
 1010 13be C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 1010      00000000 
 1011 13c6 C5CD59A2 		vmulpd	1216(%rdx), %ymm6, %ymm4
 1011      C0040000 
 1012 13ce C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 1012      00000000 
 1013 13d6 C5CD59AA 		vmulpd	960(%rdx), %ymm6, %ymm5
 1013      C0030000 
 1014 13de C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 1014      00000000 
 1015 13e6 C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 1015      C0
 1016 13eb C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 1016      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 33


 1017 13f3 C5CD59B2 		vmulpd	704(%rdx), %ymm6, %ymm6
 1017      C0020000 
 1018 13fb C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1019 13ff C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 1019      00000000 
 1020 1407 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1021 140b C5C559AA 		vmulpd	992(%rdx), %ymm7, %ymm5
 1021      E0030000 
 1022 1413 C5FD283D 		vmovapd	.LC39(%rip), %ymm7
 1022      00000000 
 1023 141b C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1024 141f C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1025 1423 C5CD599A 		vmulpd	480(%rdx), %ymm6, %ymm3
 1025      E0010000 
 1026 142b C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 1026      00000000 
 1027 1433 C5CD59A2 		vmulpd	1248(%rdx), %ymm6, %ymm4
 1027      E0040000 
 1028 143b C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 1028      00000000 
 1029 1443 C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 1029      60080000 
 1030 144b C5FD5882 		vaddpd	1728(%rdx), %ymm0, %ymm0
 1030      C0060000 
 1031 1453 C5FD2982 		vmovapd	%ymm0, 1472(%rdx)
 1031      C0050000 
 1032 145b C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 1032      E0
 1033 1460 C5C559B2 		vmulpd	736(%rdx), %ymm7, %ymm6
 1033      E0020000 
 1034 1468 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1035 146c C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1036 1470 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1037 1474 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1038 1478 C5FD5981 		vmulpd	2144(%rcx), %ymm0, %ymm0
 1038      60080000 
 1039 1480 C5FD5882 		vaddpd	1760(%rdx), %ymm0, %ymm0
 1039      E0060000 
 1040 1488 C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 1040      E0050000 
 1041 1490 4839D6   		cmpq	%rdx, %rsi
 1042 1493 0F8505FF 		jne	.L36
 1042      FFFF
 1043 1499 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 1043      C9
 1044 149e 4889F9   		movq	%rdi, %rcx
 1045 14a1 4C89C2   		movq	%r8, %rdx
 1046 14a4 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 1046      ED
 1047              	.L38:
 1048 14a9 C5FD2802 		vmovapd	(%rdx), %ymm0
 1049 14ad 4883C240 		addq	$64, %rdx
 1050 14b1 4883C120 		addq	$32, %rcx
 1051 14b5 C5FD2982 		vmovapd	%ymm0, -1376(%rdx)
 1051      A0FAFFFF 
 1052 14bd C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 1052      E0
GAS LISTING /tmp/ccitTqu7.s 			page 34


 1053 14c2 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 1053      00000000 
 1054 14ca C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 1054      C008
 1055 14d0 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 1055      D808
 1056 14d6 C5FD119C 		vmovupd	%ymm3, 288(%rsp)
 1056      24200100 
 1056      00
 1057 14df C5FB10AC 		vmovsd	296(%rsp), %xmm5
 1057      24280100 
 1057      00
 1058 14e8 C5FB109C 		vmovsd	288(%rsp), %xmm3
 1058      24200100 
 1058      00
 1059 14f1 C461FB2C 		vcvttsd2siq	%xmm5, %r9
 1059      CD
 1060 14f6 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 1060      00000000 
 1061 14fe C461FB2C 		vcvttsd2siq	%xmm3, %r15
 1061      FB
 1062 1503 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 1062      00000000 
 1063 150b C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 1063      00000000 
 1064 1513 C57B1084 		vmovsd	312(%rsp), %xmm8
 1064      24380100 
 1064      00
 1065 151c C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 1066 1520 C5FB10BC 		vmovsd	304(%rsp), %xmm7
 1066      24300100 
 1066      00
 1067 1529 C461FB2C 		vcvttsd2siq	%xmm7, %r10
 1067      D7
 1068 152e C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 1069 1532 4C89BC24 		movq	%r15, 256(%rsp)
 1069      00010000 
 1070 153a C5FA7EB4 		vmovq	256(%rsp), %xmm6
 1070      24000100 
 1070      00
 1071 1543 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 1071      F101
 1072 1549 C441FB2C 		vcvttsd2siq	%xmm8, %r9
 1072      C8
 1073 154e C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 1074 1552 4C899424 		movq	%r10, 256(%rsp)
 1074      00010000 
 1075 155a C5FA7EBC 		vmovq	256(%rsp), %xmm7
 1075      24000100 
 1075      00
 1076 1563 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 1077 1567 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 1077      F901
 1078 156d C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 1078      00000000 
 1079 1575 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1080 1579 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
GAS LISTING /tmp/ccitTqu7.s 			page 35


 1080      00000000 
 1081 1581 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 1081      00000000 
 1082 1589 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 1082      00000000 
 1083 1591 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1084 1595 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 1084      00000000 
 1085 159d C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 1085      00000000 
 1086 15a5 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 1086      D8
 1087 15aa C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 1087      DC
 1088 15af C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 1089 15b3 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 1089      00000000 
 1090 15bb C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1090      D3
 1091 15c0 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 1091      00000000 
 1092 15c8 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 1092      00000000 
 1093 15d0 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 1093      00000000 
 1094 15d8 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 1094      C0
 1095 15dd C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 1095      C3
 1096 15e2 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 1096      00000000 
 1097 15ea C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 1097      00000000 
 1098 15f2 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 1099 15f6 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 1099      C0
 1100 15fb C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 1101 15ff C4C17D59 		vmulpd	%ymm14, %ymm0, %ymm0
 1101      C6
 1102 1604 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 1102      D8
 1103 1609 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 1103      00000000 
 1104 1611 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 1105 1615 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 1105      D2
 1106 161a C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 1106      E301
 1107 1620 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 1107      C1
 1108 1625 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 1109 1629 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 1109      00000000 
 1110 1631 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 1110      F301
 1111 1637 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 1111      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 36


 1112 163f C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 1113 1643 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 1113      00000000 
 1114 164b C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 1114      C1
 1115 1650 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 1115      15000000 
 1115      00
 1116 1659 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 1116      00000000 
 1117 1661 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 1117      00000000 
 1118 1669 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 1118      1D000000 
 1118      00
 1119 1672 C521EF1D 		vpxor	.LC103(%rip), %xmm11, %xmm11
 1119      00000000 
 1120 167a C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 1120      C001
 1121 1680 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 1121      05000000 
 1121      00
 1122 1689 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 1122      D001
 1123 168f C5F928C4 		vmovapd	%xmm4, %xmm0
 1124 1693 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1124      01
 1125 1698 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1125      00000000 
 1126 16a0 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1126      05000000 
 1126      00
 1127 16a9 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 1127      00000000 
 1128 16b1 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 1128      C301
 1129 16b7 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 1130 16bb C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 1130      00000000 
 1131 16c3 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 1131      00000000 
 1132 16cb C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 1132      00000000 
 1133 16d3 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 1133      ED40
 1134 16d9 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 1134      D940
 1135 16df C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 1135      3E
 1136 16e4 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 1136      E580
 1137 16ea C5FD2899 		vmovapd	224(%rcx), %ymm3
 1137      E0000000 
 1138 16f2 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 1138      3E
 1139 16f7 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 1139      F801
GAS LISTING /tmp/ccitTqu7.s 			page 37


 1140 16fd C5FD2842 		vmovapd	-96(%rdx), %ymm0
 1140      A0
 1141 1702 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 1141      C0
 1142 1707 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 1143 170b C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 1144 170f C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 1145 1713 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 1146 1717 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 1147 171b C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1148 171f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1149 1723 C5FD2982 		vmovapd	%ymm0, -1344(%rdx)
 1149      C0FAFFFF 
 1150 172b 4839C2   		cmpq	%rax, %rdx
 1151 172e 0F8575FD 		jne	.L38
 1151      FFFF
 1152 1734 488D9424 		leaq	320(%rsp), %rdx
 1152      40010000 
 1153 173c 4531C9   		xorl	%r9d, %r9d
 1154 173f 4C8D9280 		leaq	2176(%rdx), %r10
 1154      080000
 1155              	.L40:
 1156 1746 C5FD2835 		vmovapd	.LC40(%rip), %ymm6
 1156      00000000 
 1157 174e 4B8D0C11 		leaq	(%r9,%r10), %rcx
 1158 1752 4983C120 		addq	$32, %r9
 1159 1756 C5FD283D 		vmovapd	.LC41(%rip), %ymm7
 1159      00000000 
 1160 175e 4883C240 		addq	$64, %rdx
 1161 1762 C5CD599A 		vmulpd	192(%rdx), %ymm6, %ymm3
 1161      C0000000 
 1162 176a C5FD2835 		vmovapd	.LC42(%rip), %ymm6
 1162      00000000 
 1163 1772 C5C559A2 		vmulpd	1216(%rdx), %ymm7, %ymm4
 1163      C0040000 
 1164 177a C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 1164      00000000 
 1165 1782 C5CD5982 		vmulpd	960(%rdx), %ymm6, %ymm0
 1165      C0030000 
 1166 178a C5FD2835 		vmovapd	.LC44(%rip), %ymm6
 1166      00000000 
 1167 1792 C5C559AA 		vmulpd	704(%rdx), %ymm7, %ymm5
 1167      C0020000 
 1168 179a C5FD283D 		vmovapd	.LC45(%rip), %ymm7
 1168      00000000 
 1169 17a2 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1170 17a6 C5FD282D 		vmovapd	.LC46(%rip), %ymm5
 1170      00000000 
 1171 17ae C5D559AA 		vmulpd	1216(%rdx), %ymm5, %ymm5
 1171      C0040000 
 1172 17b6 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1173 17ba C5C559A2 		vmulpd	448(%rdx), %ymm7, %ymm4
 1173      C0010000 
 1174 17c2 C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 1174      00000000 
 1175 17ca C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1176 17ce C5CD599A 		vmulpd	192(%rdx), %ymm6, %ymm3
GAS LISTING /tmp/ccitTqu7.s 			page 38


 1176      C0000000 
 1177 17d6 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1177      00000000 
 1178 17de C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1179 17e2 C5FD5882 		vaddpd	1728(%rdx), %ymm0, %ymm0
 1179      C0060000 
 1180 17ea C5FD2982 		vmovapd	%ymm0, 1472(%rdx)
 1180      C0050000 
 1181 17f2 C5CD5982 		vmulpd	960(%rdx), %ymm6, %ymm0
 1181      C0030000 
 1182 17fa C5C559B2 		vmulpd	704(%rdx), %ymm7, %ymm6
 1182      C0020000 
 1183 1802 C5FD283D 		vmovapd	.LC42(%rip), %ymm7
 1183      00000000 
 1184 180a C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1185 180e C5FD2835 		vmovapd	.LC41(%rip), %ymm6
 1185      00000000 
 1186 1816 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1187 181a C5FD282D 		vmovapd	.LC40(%rip), %ymm5
 1187      00000000 
 1188 1822 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1189 1826 C5CD59A2 		vmulpd	1248(%rdx), %ymm6, %ymm4
 1189      E0040000 
 1190 182e C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1191 1832 C5ED549A 		vandpd	1472(%rdx), %ymm2, %ymm3
 1191      C0050000 
 1192 183a C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1193 183e C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1193      00000000 
 1194 1846 C5FD2942 		vmovapd	%ymm0, -64(%rdx)
 1194      C0
 1195 184b C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1195      00000000 
 1196 1853 C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1197 1857 C5FD299A 		vmovapd	%ymm3, 192(%rdx)
 1197      C0000000 
 1198 185f C5D5599A 		vmulpd	224(%rdx), %ymm5, %ymm3
 1198      E0000000 
 1199 1867 C5FD282D 		vmovapd	.LC43(%rip), %ymm5
 1199      00000000 
 1200 186f C5D559AA 		vmulpd	736(%rdx), %ymm5, %ymm5
 1200      E0020000 
 1201 1877 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1202 187b C5FD2982 		vmovapd	%ymm0, 448(%rdx)
 1202      C0010000 
 1203 1883 C5C55982 		vmulpd	992(%rdx), %ymm7, %ymm0
 1203      E0030000 
 1204 188b C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1205 188f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1206 1893 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1207 1897 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1208 189b C5FD5882 		vaddpd	1760(%rdx), %ymm0, %ymm0
 1208      E0060000 
 1209 18a3 C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 1209      E0050000 
 1210 18ab C5FD2835 		vmovapd	.LC44(%rip), %ymm6
 1210      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 39


 1211 18b3 C5FD283D 		vmovapd	.LC45(%rip), %ymm7
 1211      00000000 
 1212 18bb C5CD599A 		vmulpd	224(%rdx), %ymm6, %ymm3
 1212      E0000000 
 1213 18c3 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1213      00000000 
 1214 18cb C5C559A2 		vmulpd	480(%rdx), %ymm7, %ymm4
 1214      E0010000 
 1215 18d3 C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 1215      00000000 
 1216 18db C5CD5982 		vmulpd	992(%rdx), %ymm6, %ymm0
 1216      E0030000 
 1217 18e3 C5FD282D 		vmovapd	.LC46(%rip), %ymm5
 1217      00000000 
 1218 18eb C5C559B2 		vmulpd	736(%rdx), %ymm7, %ymm6
 1218      E0020000 
 1219 18f3 C5D559AA 		vmulpd	1248(%rdx), %ymm5, %ymm5
 1219      E0040000 
 1220 18fb C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1221 18ff C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1222 1903 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1223 1907 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1224 190b C5ED549A 		vandpd	1504(%rdx), %ymm2, %ymm3
 1224      E0050000 
 1225 1913 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1226 1917 C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1226      00000000 
 1227 191f C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 1227      E0
 1228 1924 C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1228      00000000 
 1229 192c C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1230 1930 C5FD299A 		vmovapd	%ymm3, 224(%rdx)
 1230      E0000000 
 1231 1938 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1232 193c C5FD2982 		vmovapd	%ymm0, 480(%rdx)
 1232      E0010000 
 1233 1944 4981F980 		cmpq	$128, %r9
 1233      000000
 1234 194b 0F85F5FD 		jne	.L40
 1234      FFFF
 1235 1951 C5FD2884 		vmovapd	832(%rsp), %ymm0
 1235      24400300 
 1235      00
 1236 195a 488D8C24 		leaq	320(%rsp), %rcx
 1236      40010000 
 1237 1962 C57D28AC 		vmovapd	192(%rsp), %ymm13
 1237      24C00000 
 1237      00
 1238 196b C5FD5D84 		vminpd	864(%rsp), %ymm0, %ymm0
 1238      24600300 
 1238      00
 1239 1974 4C8D9180 		leaq	128(%rcx), %r10
 1239      000000
 1240 197b 4889CA   		movq	%rcx, %rdx
 1241 197e C5FD2984 		vmovapd	%ymm0, 576(%rsp)
 1241      24400200 
GAS LISTING /tmp/ccitTqu7.s 			page 40


 1241      00
 1242 1987 C5FD2884 		vmovapd	896(%rsp), %ymm0
 1242      24800300 
 1242      00
 1243 1990 C5FD5D84 		vminpd	928(%rsp), %ymm0, %ymm0
 1243      24A00300 
 1243      00
 1244 1999 C5FD2984 		vmovapd	%ymm0, 608(%rsp)
 1244      24600200 
 1244      00
 1245 19a2 C5FD2884 		vmovapd	960(%rsp), %ymm0
 1245      24C00300 
 1245      00
 1246 19ab C5FD5D84 		vminpd	992(%rsp), %ymm0, %ymm0
 1246      24E00300 
 1246      00
 1247 19b4 C5FD2984 		vmovapd	%ymm0, 640(%rsp)
 1247      24800200 
 1247      00
 1248 19bd C5FD2884 		vmovapd	1024(%rsp), %ymm0
 1248      24000400 
 1248      00
 1249 19c6 C5FD5D84 		vminpd	1056(%rsp), %ymm0, %ymm0
 1249      24200400 
 1249      00
 1250 19cf C5FD2984 		vmovapd	%ymm0, 672(%rsp)
 1250      24A00200 
 1250      00
 1251              	.L46:
 1252 19d8 C5FD28B2 		vmovapd	256(%rdx), %ymm6
 1252      00010000 
 1253 19e0 C44119EF 		vpxor	%xmm12, %xmm12, %xmm12
 1253      E4
 1254 19e5 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 1254      F501
 1255 19eb C5F928E6 		vmovapd	%xmm6, %xmm4
 1256 19ef C5D1DB1D 		vpand	.LC50(%rip), %xmm5, %xmm3
 1256      00000000 
 1257 19f7 C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 1257      34
 1258 19fc C5C173D4 		vpsrlq	$52, %xmm4, %xmm7
 1258      34
 1259 1a01 C559DB05 		vpand	.LC50(%rip), %xmm4, %xmm8
 1259      00000000 
 1260 1a09 C5F9EB05 		vpor	.LC52(%rip), %xmm0, %xmm0
 1260      00000000 
 1261 1a11 C5E1EB1D 		vpor	.LC51(%rip), %xmm3, %xmm3
 1261      00000000 
 1262 1a19 C539EB05 		vpor	.LC51(%rip), %xmm8, %xmm8
 1262      00000000 
 1263 1a21 C5C1EB3D 		vpor	.LC52(%rip), %xmm7, %xmm7
 1263      00000000 
 1264 1a29 C4633D18 		vinsertf128	$0x1, %xmm3, %ymm8, %ymm8
 1264      C301
 1265 1a2f C5FD281D 		vmovapd	.LC54(%rip), %ymm3
 1265      00000000 
 1266 1a37 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
GAS LISTING /tmp/ccitTqu7.s 			page 41


 1266      F801
 1267 1a3d C4C165C2 		vcmppd	$1, %ymm8, %ymm3, %ymm3
 1267      D801
 1268 1a43 C5C55C3D 		vsubpd	.LC53(%rip), %ymm7, %ymm7
 1268      00000000 
 1269 1a4b C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 1269      D901
 1270 1a51 C5F928C3 		vmovapd	%xmm3, %xmm0
 1271 1a55 C5E554D9 		vandpd	%ymm1, %ymm3, %ymm3
 1272 1a59 C531570D 		vxorpd	.LC55(%rip), %xmm9, %xmm9
 1272      00000000 
 1273 1a61 C5F95705 		vxorpd	.LC55(%rip), %xmm0, %xmm0
 1273      00000000 
 1274 1a69 C5C558FB 		vaddpd	%ymm3, %ymm7, %ymm7
 1275 1a6d C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 1275      C101
 1276 1a73 C4C17D54 		vandpd	%ymm8, %ymm0, %ymm0
 1276      C0
 1277 1a78 C4C17D58 		vaddpd	%ymm8, %ymm0, %ymm0
 1277      C0
 1278 1a7d C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1279 1a81 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 1279      00000000 
 1280 1a89 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1281 1a8d C57D591D 		vmulpd	.LC56(%rip), %ymm0, %ymm11
 1281      00000000 
 1282 1a95 C57D590D 		vmulpd	.LC60(%rip), %ymm0, %ymm9
 1282      00000000 
 1283 1a9d C52D5815 		vaddpd	.LC59(%rip), %ymm10, %ymm10
 1283      00000000 
 1284 1aa5 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1285 1aa9 C525581D 		vaddpd	.LC57(%rip), %ymm11, %ymm11
 1285      00000000 
 1286 1ab1 C535580D 		vaddpd	.LC61(%rip), %ymm9, %ymm9
 1286      00000000 
 1287 1ab9 C4412D59 		vmulpd	%ymm8, %ymm10, %ymm10
 1287      D0
 1288 1abe C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1288      D3
 1289 1ac3 C53559CB 		vmulpd	%ymm3, %ymm9, %ymm9
 1290 1ac7 C57D581D 		vaddpd	.LC64(%rip), %ymm0, %ymm11
 1290      00000000 
 1291 1acf C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1291      CA
 1292 1ad4 C57D59D3 		vmulpd	%ymm3, %ymm0, %ymm10
 1293 1ad8 C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 1293      C0
 1294 1add C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 1294      CA
 1295 1ae2 C57D5915 		vmulpd	.LC62(%rip), %ymm0, %ymm10
 1295      00000000 
 1296 1aea C52D5815 		vaddpd	.LC63(%rip), %ymm10, %ymm10
 1296      00000000 
 1297 1af2 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 1297      D2
 1298 1af7 C57D5905 		vmulpd	.LC65(%rip), %ymm0, %ymm8
 1298      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 42


 1299 1aff C53D5805 		vaddpd	.LC66(%rip), %ymm8, %ymm8
 1299      00000000 
 1300 1b07 C53D59C3 		vmulpd	%ymm3, %ymm8, %ymm8
 1301 1b0b C4C16559 		vmulpd	%ymm14, %ymm3, %ymm3
 1301      DE
 1302 1b10 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 1302      D2
 1303 1b15 C5455905 		vmulpd	.LC67(%rip), %ymm7, %ymm8
 1303      00000000 
 1304 1b1d C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1305 1b21 C5C5593D 		vmulpd	.LC68(%rip), %ymm7, %ymm7
 1305      00000000 
 1306 1b29 C441355E 		vdivpd	%ymm10, %ymm9, %ymm9
 1306      CA
 1307 1b2e C4413D58 		vaddpd	%ymm9, %ymm8, %ymm9
 1307      C9
 1308 1b33 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 1308      01
 1309 1b38 C5B558C0 		vaddpd	%ymm0, %ymm9, %ymm0
 1310 1b3c C539DB0D 		vpand	.LC23(%rip), %xmm8, %xmm9
 1310      00000000 
 1311 1b44 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1311      05000000 
 1311      00
 1312 1b4d C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1313 1b51 C5C173F4 		vpsllq	$1, %xmm4, %xmm7
 1313      01
 1314 1b56 C5C1DB1D 		vpand	.LC23(%rip), %xmm7, %xmm3
 1314      00000000 
 1315 1b5e C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 1315      0D000000 
 1315      00
 1316 1b67 C531EF0D 		vpxor	.LC103(%rip), %xmm9, %xmm9
 1316      00000000 
 1317 1b6f C4E26129 		vpcmpeqq	.LC23(%rip), %xmm3, %xmm3
 1317      1D000000 
 1317      00
 1318 1b78 C5E1EF1D 		vpxor	.LC103(%rip), %xmm3, %xmm3
 1318      00000000 
 1319 1b80 C4C36518 		vinsertf128	$0x1, %xmm9, %ymm3, %ymm3
 1319      D901
 1320 1b86 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm10
 1320      DA01
 1321 1b8c C561570D 		vxorpd	.LC55(%rip), %xmm3, %xmm9
 1321      00000000 
 1322 1b94 C5295715 		vxorpd	.LC55(%rip), %xmm10, %xmm10
 1322      00000000 
 1323 1b9c C4433518 		vinsertf128	$0x1, %xmm10, %ymm9, %ymm9
 1323      CA01
 1324 1ba2 C54DC215 		vcmppd	$1, .LC69(%rip), %ymm6, %ymm10
 1324      00000000 
 1324      01
 1325 1bab C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 1325      D9
 1326 1bb0 C4637D4B 		vblendvpd	%ymm10, .LC70(%rip), %ymm0, %ymm10
 1326      15000000 
 1326      00A0
GAS LISTING /tmp/ccitTqu7.s 			page 43


 1327 1bba C4637D19 		vextractf128	$0x1, %ymm11, %xmm3
 1327      DB01
 1328 1bc0 C52156DB 		vorpd	%xmm3, %xmm11, %xmm11
 1329 1bc4 C5D1DB1D 		vpand	.LC72(%rip), %xmm5, %xmm3
 1329      00000000 
 1330 1bcc C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 1330      1F
 1331 1bd1 C4417950 		vmovmskpd	%xmm11, %r9d
 1331      CB
 1332 1bd6 C44121EF 		vpxor	%xmm11, %xmm11, %xmm11
 1332      DB
 1333 1bdb 4585C9   		testl	%r9d, %r9d
 1334 1bde C4C26129 		vpcmpeqq	%xmm11, %xmm3, %xmm3
 1334      DB
 1335 1be3 C559DB1D 		vpand	.LC72(%rip), %xmm4, %xmm11
 1335      00000000 
 1336 1beb C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 1336      1F
 1337 1bf0 C4422129 		vpcmpeqq	%xmm12, %xmm11, %xmm11
 1337      DC
 1338 1bf5 C4E32518 		vinsertf128	$0x1, %xmm3, %ymm11, %ymm3
 1338      DB01
 1339 1bfb C4632D4B 		vblendvpd	%ymm3, 224(%rsp), %ymm10, %ymm10
 1339      9424E000 
 1339      000030
 1340 1c06 C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 1340      CE90
 1341 1c0c C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 1341      20
 1342 1c11 C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 1342      EDCC
 1343 1c17 C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 1343      20
 1344 1c1c C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 1344      E4CC
 1345 1c22 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm6
 1345      35000000 
 1345      00
 1346 1c2b C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 1346      ED01
 1347 1c31 C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 1347      F001
 1348 1c37 C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 1349 1c3b C4E3354B 		vblendvpd	%ymm6, .LC70(%rip), %ymm9, %ymm6
 1349      35000000 
 1349      0060
 1350 1c45 7504     		jne	.L42
 1351 1c47 C5FD28F0 		vmovapd	%ymm0, %ymm6
 1352              	.L42:
 1353 1c4b C5CD5935 		vmulpd	.LC26(%rip), %ymm6, %ymm6
 1353      00000000 
 1354 1c53 C5CD592D 		vmulpd	.LC73(%rip), %ymm6, %ymm5
 1354      00000000 
 1355 1c5b C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 1355      ED08
 1356 1c61 C5D55905 		vmulpd	.LC74(%rip), %ymm5, %ymm0
 1356      00000000 
GAS LISTING /tmp/ccitTqu7.s 			page 44


 1357 1c69 C5D5591D 		vmulpd	.LC75(%rip), %ymm5, %ymm3
 1357      00000000 
 1358 1c71 C5D5582D 		vaddpd	.LC53(%rip), %ymm5, %ymm5
 1358      00000000 
 1359 1c79 C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 1360 1c7d C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1361 1c81 C5FD593D 		vmulpd	.LC79(%rip), %ymm0, %ymm7
 1361      00000000 
 1362 1c89 C57D5915 		vmulpd	.LC77(%rip), %ymm0, %ymm10
 1362      00000000 
 1363 1c91 C57D590D 		vmulpd	.LC76(%rip), %ymm0, %ymm9
 1363      00000000 
 1364 1c99 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1365 1c9d C5C5583D 		vaddpd	.LC80(%rip), %ymm7, %ymm7
 1365      00000000 
 1366 1ca5 C52D5815 		vaddpd	.LC78(%rip), %ymm10, %ymm10
 1366      00000000 
 1367 1cad C4413558 		vaddpd	%ymm14, %ymm9, %ymm9
 1367      CE
 1368 1cb2 C5E559E3 		vmulpd	%ymm3, %ymm3, %ymm4
 1369 1cb6 C5C559FB 		vmulpd	%ymm3, %ymm7, %ymm7
 1370 1cba C53559CB 		vmulpd	%ymm3, %ymm9, %ymm9
 1371 1cbe C55D59C4 		vmulpd	%ymm4, %ymm4, %ymm8
 1372 1cc2 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1372      FA
 1373 1cc7 C57D5915 		vmulpd	.LC83(%rip), %ymm0, %ymm10
 1373      00000000 
 1374 1ccf C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 1375 1cd3 C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 1376 1cd7 C52D5815 		vaddpd	.LC84(%rip), %ymm10, %ymm10
 1376      00000000 
 1377 1cdf C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1377      F9
 1378 1ce4 C57D590D 		vmulpd	.LC81(%rip), %ymm0, %ymm9
 1378      00000000 
 1379 1cec C5FD5905 		vmulpd	.LC85(%rip), %ymm0, %ymm0
 1379      00000000 
 1380 1cf4 C5AD59DB 		vmulpd	%ymm3, %ymm10, %ymm3
 1381 1cf8 C535580D 		vaddpd	.LC82(%rip), %ymm9, %ymm9
 1381      00000000 
 1382 1d00 C5FD5805 		vaddpd	.LC86(%rip), %ymm0, %ymm0
 1382      00000000 
 1383 1d08 C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
 1383      D9
 1384 1d0d C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 1385 1d11 C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 1385      34
 1386 1d16 C5DD58E3 		vaddpd	%ymm3, %ymm4, %ymm4
 1387 1d1a C4E37D19 		vextractf128	$0x1, %ymm5, %xmm3
 1387      EB01
 1388 1d20 C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1388      34
 1389 1d25 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1389      C301
 1390 1d2b C4C15D59 		vmulpd	%ymm8, %ymm4, %ymm4
 1390      E0
 1391 1d30 C5F928DE 		vmovapd	%xmm6, %xmm3
GAS LISTING /tmp/ccitTqu7.s 			page 45


 1392 1d34 C5DD58E7 		vaddpd	%ymm7, %ymm4, %ymm4
 1393 1d38 C5CD54FA 		vandpd	%ymm2, %ymm6, %ymm7
 1394 1d3c C5C5C23D 		vcmppd	$1, .LC87(%rip), %ymm7, %ymm7
 1394      00000000 
 1394      01
 1395 1d45 C5DD58E9 		vaddpd	%ymm1, %ymm4, %ymm5
 1396 1d49 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 1396      F401
 1397 1d4f C5B973F4 		vpsllq	$1, %xmm4, %xmm8
 1397      01
 1398 1d54 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 1398      00000000 
 1399 1d5c C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 1399      1F
 1400 1d61 C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 1401 1d65 C5F973F3 		vpsllq	$1, %xmm3, %xmm0
 1401      01
 1402 1d6a C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1402      1F
 1403 1d6f C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1403      00000000 
 1404 1d77 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1404      05000000 
 1404      00
 1405 1d80 C539EF05 		vpxor	.LC103(%rip), %xmm8, %xmm8
 1405      00000000 
 1406 1d88 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1406      05000000 
 1406      00
 1407 1d91 C5F9EF05 		vpxor	.LC103(%rip), %xmm0, %xmm0
 1407      00000000 
 1408 1d99 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 1408      C001
 1409 1d9f C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 1410 1da3 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm7
 1410      C701
 1411 1da9 C57928C0 		vmovapd	%xmm0, %xmm8
 1412 1dad C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1413 1db1 C57950CF 		vmovmskpd	%xmm7, %r9d
 1414 1db5 C5C173D4 		vpsrlq	$32, %xmm4, %xmm7
 1414      20
 1415 1dba C4E3410E 		vpblendw	$204, %xmm4, %xmm7, %xmm4
 1415      E4CC
 1416 1dc0 C5C173D3 		vpsrlq	$32, %xmm3, %xmm7
 1416      20
 1417 1dc5 C4E3410E 		vpblendw	$204, %xmm3, %xmm7, %xmm3
 1417      DBCC
 1418 1dcb C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 1419 1dcf 4183F903 		cmpl	$3, %r9d
 1420 1dd3 C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm4
 1420      E401
 1421 1dd9 C5CDC2DE 		vcmppd	$4, %ymm6, %ymm6, %ymm3
 1421      04
 1422 1dde C4E3154B 		vblendvpd	%ymm4, %ymm7, %ymm13, %ymm4
 1422      E740
 1423 1de4 C4E35D4B 		vblendvpd	%ymm0, %ymm5, %ymm4, %ymm0
 1423      C500
GAS LISTING /tmp/ccitTqu7.s 			page 46


 1424 1dea C4E37D4B 		vblendvpd	%ymm3, %ymm6, %ymm0, %ymm6
 1424      F630
 1425 1df0 0F844A01 		je	.L62
 1425      0000
 1426              	.L44:
 1427 1df6 C5FD2882 		vmovapd	2176(%rdx), %ymm0
 1427      80080000 
 1428 1dfe C5F5C29A 		vcmppd	$2, 256(%rdx), %ymm1, %ymm3
 1428      00010000 
 1428      02
 1429 1e07 C5FD2825 		vmovapd	.LC89(%rip), %ymm4
 1429      00000000 
 1430 1e0f 4883C220 		addq	$32, %rdx
 1431 1e13 4883C140 		addq	$64, %rcx
 1432 1e17 C5FDC205 		vcmppd	$2, .LC88(%rip), %ymm0, %ymm0
 1432      00000000 
 1432      02
 1433 1e20 C5FD282D 		vmovapd	.LC91(%rip), %ymm5
 1433      00000000 
 1434 1e28 C5E556C0 		vorpd	%ymm0, %ymm3, %ymm0
 1435 1e2c C5DDC2DE 		vcmppd	$1, %ymm6, %ymm4, %ymm3
 1435      01
 1436 1e31 C4E34D4B 		vblendvpd	%ymm3, %ymm4, %ymm6, %ymm6
 1436      F430
 1437 1e37 C5CDC21D 		vcmppd	$1, .LC26(%rip), %ymm6, %ymm3
 1437      00000000 
 1437      01
 1438 1e40 C4E34D4B 		vblendvpd	%ymm3, .LC26(%rip), %ymm6, %ymm6
 1438      35000000 
 1438      0030
 1439 1e4a C5FD29B2 		vmovapd	%ymm6, 480(%rdx)
 1439      E0010000 
 1440 1e52 C5FD2899 		vmovapd	1728(%rcx), %ymm3
 1440      C0060000 
 1441 1e5a C4E3654B 		vblendvpd	%ymm0, 1472(%rcx), %ymm3, %ymm3
 1441      99C00500 
 1441      0000
 1442 1e64 C5FD2999 		vmovapd	%ymm3, 1728(%rcx)
 1442      C0060000 
 1443 1e6c C5FD2899 		vmovapd	1760(%rcx), %ymm3
 1443      E0060000 
 1444 1e74 C4E3654B 		vblendvpd	%ymm0, 1504(%rcx), %ymm3, %ymm3
 1444      99E00500 
 1444      0000
 1445 1e7e C5FD2999 		vmovapd	%ymm3, 1760(%rcx)
 1445      E0060000 
 1446 1e86 C5FD289A 		vmovapd	2016(%rdx), %ymm3
 1446      E0070000 
 1447 1e8e C5E558A2 		vaddpd	2144(%rdx), %ymm3, %ymm4
 1447      60080000 
 1448 1e96 C4E3654B 		vblendvpd	%ymm0, %ymm4, %ymm3, %ymm0
 1448      C400
 1449 1e9c C5FD2982 		vmovapd	%ymm0, 2016(%rdx)
 1449      E0070000 
 1450 1ea4 C5FD2882 		vmovapd	480(%rdx), %ymm0
 1450      E0010000 
 1451 1eac C5FD5982 		vmulpd	2144(%rdx), %ymm0, %ymm0
GAS LISTING /tmp/ccitTqu7.s 			page 47


 1451      60080000 
 1452 1eb4 C5FD5905 		vmulpd	.LC90(%rip), %ymm0, %ymm0
 1452      00000000 
 1453 1ebc C5D5C2D8 		vcmppd	$1, %ymm0, %ymm5, %ymm3
 1453      01
 1454 1ec1 C4E37D4B 		vblendvpd	%ymm3, %ymm5, %ymm0, %ymm0
 1454      C530
 1455 1ec7 C5FDC21D 		vcmppd	$1, .LC88(%rip), %ymm0, %ymm3
 1455      00000000 
 1455      01
 1456 1ed0 C4E37D4B 		vblendvpd	%ymm3, .LC88(%rip), %ymm0, %ymm0
 1456      05000000 
 1456      0030
 1457 1eda C5FD2982 		vmovapd	%ymm0, 2144(%rdx)
 1457      60080000 
 1458 1ee2 4C39D2   		cmpq	%r10, %rdx
 1459 1ee5 0F85EDFA 		jne	.L46
 1459      FFFF
 1460 1eeb C5FD2884 		vmovapd	2368(%rsp), %ymm0
 1460      24400900 
 1460      00
 1461 1ef4 C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1461      00000000 
 1462 1efc C5FD5D84 		vminpd	2400(%rsp), %ymm0, %ymm0
 1462      24600900 
 1462      00
 1463 1f05 C5FD5D84 		vminpd	2432(%rsp), %ymm0, %ymm0
 1463      24800900 
 1463      00
 1464 1f0e C5FD5D84 		vminpd	2464(%rsp), %ymm0, %ymm0
 1464      24A00900 
 1464      00
 1465 1f17 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1465      02
 1466 1f1c C4E37D19 		vextractf128	$0x1, %ymm0, %xmm2
 1466      C201
 1467 1f22 C5F954C2 		vandpd	%xmm2, %xmm0, %xmm0
 1468 1f26 C5F950D0 		vmovmskpd	%xmm0, %edx
 1469 1f2a 83FA03   		cmpl	$3, %edx
 1470 1f2d 7421     		je	.L63
 1471 1f2f 4531C9   		xorl	%r9d, %r9d
 1472 1f32 4531D2   		xorl	%r10d, %r10d
 1473 1f35 E9AEE2FF 		jmp	.L22
 1473      FF
 1474 1f3a 660F1F44 		.p2align 4,,10
 1474      0000
 1475              		.p2align 3
 1476              	.L62:
 1477 1f40 C5FD28F5 		vmovapd	%ymm5, %ymm6
 1478 1f44 E9ADFEFF 		jmp	.L44
 1478      FF
 1479 1f49 0F1F8000 		.p2align 4,,10
 1479      000000
 1480              		.p2align 3
 1481              	.L63:
 1482 1f50 4489E0   		movl	%r12d, %eax
 1483 1f53 BAD34D62 		movl	$274877907, %edx
GAS LISTING /tmp/ccitTqu7.s 			page 48


 1483      10
 1484 1f58 F7EA     		imull	%edx
 1485 1f5a 4489E0   		movl	%r12d, %eax
 1486 1f5d C1F81F   		sarl	$31, %eax
 1487 1f60 C1FA06   		sarl	$6, %edx
 1488 1f63 29C2     		subl	%eax, %edx
 1489 1f65 4489E0   		movl	%r12d, %eax
 1490 1f68 69D2E803 		imull	$1000, %edx, %edx
 1490      0000
 1491 1f6e 29D0     		subl	%edx, %eax
 1492 1f70 83F801   		cmpl	$1, %eax
 1493 1f73 0F848800 		je	.L64
 1493      0000
 1494              	.L48:
 1495 1f79 4183C410 		addl	$16, %r12d
 1496 1f7d 4983ED80 		subq	$-128, %r13
 1497 1f81 4181FCA0 		cmpl	$1440, %r12d
 1497      050000
 1498 1f88 0F85FAE0 		jne	.L21
 1498      FFFF
 1499 1f8e C5F877   		vzeroupper
 1500 1f91 E8000000 		call	clock
 1500      00
 1501 1f96 BA0C0000 		movl	$12, %edx
 1501      00
 1502 1f9b 4989C4   		movq	%rax, %r12
 1503 1f9e BE000000 		movl	$.LC101, %esi
 1503      00
 1504 1fa3 BF000000 		movl	$_ZSt4cout, %edi
 1504      00
 1505 1fa8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1505      00
 1506 1fad 4C89E1   		movq	%r12, %rcx
 1507 1fb0 48BECFF7 		movabsq	$2361183241434822607, %rsi
 1507      53E3A59B 
 1507      C420
 1508 1fba BF000000 		movl	$_ZSt4cout, %edi
 1508      00
 1509 1fbf 4829D9   		subq	%rbx, %rcx
 1510 1fc2 4889C8   		movq	%rcx, %rax
 1511 1fc5 48C1F93F 		sarq	$63, %rcx
 1512 1fc9 48F7EE   		imulq	%rsi
 1513 1fcc 4889D6   		movq	%rdx, %rsi
 1514 1fcf 48C1FE07 		sarq	$7, %rsi
 1515 1fd3 4829CE   		subq	%rcx, %rsi
 1516 1fd6 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1516      00
 1517 1fdb BE000000 		movl	$.LC102, %esi
 1517      00
 1518 1fe0 4889C7   		movq	%rax, %rdi
 1519 1fe3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1519      00
 1520 1fe8 4889C7   		movq	%rax, %rdi
 1521 1feb E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1521      00
 1522 1ff0 488D65D8 		leaq	-40(%rbp), %rsp
 1523 1ff4 31C0     		xorl	%eax, %eax
GAS LISTING /tmp/ccitTqu7.s 			page 49


 1524 1ff6 5B       		popq	%rbx
 1525 1ff7 415C     		popq	%r12
 1526 1ff9 415D     		popq	%r13
 1527 1ffb 415E     		popq	%r14
 1528 1ffd 415F     		popq	%r15
 1529 1fff 5D       		popq	%rbp
 1530              		.cfi_remember_state
 1531              		.cfi_def_cfa 7, 8
 1532 2000 C3       		ret
 1533              	.L64:
 1534              		.cfi_restore_state
 1535 2001 BA390000 		movl	$57, %edx
 1535      00
 1536 2006 BE000000 		movl	$.LC93, %esi
 1536      00
 1537 200b BF000000 		movl	$_ZSt4cout, %edi
 1537      00
 1538 2010 C57D293C 		vmovapd	%ymm15, (%rsp)
 1538      24
 1539 2015 C5FD294C 		vmovapd	%ymm1, 32(%rsp)
 1539      2420
 1540 201b C57D2974 		vmovapd	%ymm14, 64(%rsp)
 1540      2440
 1541 2021 C5F877   		vzeroupper
 1542 2024 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1542      00
 1543 2029 C5FD2884 		vmovapd	2624(%rsp), %ymm0
 1543      24400A00 
 1543      00
 1544 2032 4489E6   		movl	%r12d, %esi
 1545 2035 BF000000 		movl	$_ZSt4cout, %edi
 1545      00
 1546 203a C5FD1184 		vmovupd	%ymm0, 288(%rsp)
 1546      24200100 
 1546      00
 1547 2043 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1547      24200100 
 1547      00
 1548 204c C5FB1184 		vmovsd	%xmm0, 256(%rsp)
 1548      24000100 
 1548      00
 1549 2055 C5F877   		vzeroupper
 1550 2058 E8000000 		call	_ZNSolsEi
 1550      00
 1551 205d BA060000 		movl	$6, %edx
 1551      00
 1552 2062 BE000000 		movl	$.LC94, %esi
 1552      00
 1553 2067 4889C7   		movq	%rax, %rdi
 1554 206a 4989C6   		movq	%rax, %r14
 1555 206d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1555      00
 1556 2072 C5FB1084 		vmovsd	256(%rsp), %xmm0
 1556      24000100 
 1556      00
 1557 207b 4C89F7   		movq	%r14, %rdi
 1558 207e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/ccitTqu7.s 			page 50


 1558      00
 1559 2083 BA010000 		movl	$1, %edx
 1559      00
 1560 2088 BE000000 		movl	$.LC95, %esi
 1560      00
 1561 208d 4889C7   		movq	%rax, %rdi
 1562 2090 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1562      00
 1563 2095 C5FD2894 		vmovapd	2112(%rsp), %ymm2
 1563      24400800 
 1563      00
 1564 209e BA050000 		movl	$5, %edx
 1564      00
 1565 20a3 BE000000 		movl	$.LC96, %esi
 1565      00
 1566 20a8 BF000000 		movl	$_ZSt4cout, %edi
 1566      00
 1567 20ad C5FD1194 		vmovupd	%ymm2, 288(%rsp)
 1567      24200100 
 1567      00
 1568 20b6 C5FB109C 		vmovsd	312(%rsp), %xmm3
 1568      24380100 
 1568      00
 1569 20bf C5FB10A4 		vmovsd	304(%rsp), %xmm4
 1569      24300100 
 1569      00
 1570 20c8 C5FB10AC 		vmovsd	296(%rsp), %xmm5
 1570      24280100 
 1570      00
 1571 20d1 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1571      24200100 
 1571      00
 1572 20da C5FB115C 		vmovsd	%xmm3, 120(%rsp)
 1572      2478
 1573 20e0 C5FB11A4 		vmovsd	%xmm4, 128(%rsp)
 1573      24800000 
 1573      00
 1574 20e9 C5FB11AC 		vmovsd	%xmm5, 160(%rsp)
 1574      24A00000 
 1574      00
 1575 20f2 C5FB1184 		vmovsd	%xmm0, 256(%rsp)
 1575      24000100 
 1575      00
 1576 20fb C5F877   		vzeroupper
 1577 20fe E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1577      00
 1578 2103 BA010000 		movl	$1, %edx
 1578      00
 1579 2108 BE000000 		movl	$.LC0, %esi
 1579      00
 1580 210d BF000000 		movl	$_ZSt4cout, %edi
 1580      00
 1581 2112 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1581      00
 1582 2117 C5FB1084 		vmovsd	256(%rsp), %xmm0
 1582      24000100 
 1582      00
GAS LISTING /tmp/ccitTqu7.s 			page 51


 1583 2120 BF000000 		movl	$_ZSt4cout, %edi
 1583      00
 1584 2125 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1584      00
 1585 212a BA010000 		movl	$1, %edx
 1585      00
 1586 212f BE000000 		movl	$.LC0, %esi
 1586      00
 1587 2134 4889C7   		movq	%rax, %rdi
 1588 2137 4989C6   		movq	%rax, %r14
 1589 213a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1589      00
 1590 213f C5FB10AC 		vmovsd	160(%rsp), %xmm5
 1590      24A00000 
 1590      00
 1591 2148 4C89F7   		movq	%r14, %rdi
 1592 214b C5F928C5 		vmovapd	%xmm5, %xmm0
 1593 214f E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1593      00
 1594 2154 BA010000 		movl	$1, %edx
 1594      00
 1595 2159 BE000000 		movl	$.LC0, %esi
 1595      00
 1596 215e 4889C7   		movq	%rax, %rdi
 1597 2161 4989C6   		movq	%rax, %r14
 1598 2164 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1598      00
 1599 2169 C5FB10A4 		vmovsd	128(%rsp), %xmm4
 1599      24800000 
 1599      00
 1600 2172 4C89F7   		movq	%r14, %rdi
 1601 2175 C5F928C4 		vmovapd	%xmm4, %xmm0
 1602 2179 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1602      00
 1603 217e BA010000 		movl	$1, %edx
 1603      00
 1604 2183 BE000000 		movl	$.LC0, %esi
 1604      00
 1605 2188 4889C7   		movq	%rax, %rdi
 1606 218b 4989C6   		movq	%rax, %r14
 1607 218e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1607      00
 1608 2193 C5FB105C 		vmovsd	120(%rsp), %xmm3
 1608      2478
 1609 2199 4C89F7   		movq	%r14, %rdi
 1610 219c C5F928C3 		vmovapd	%xmm3, %xmm0
 1611 21a0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1611      00
 1612 21a5 4989C7   		movq	%rax, %r15
 1613 21a8 488B00   		movq	(%rax), %rax
 1614 21ab C57D2874 		vmovapd	64(%rsp), %ymm14
 1614      2440
 1615 21b1 C5FD284C 		vmovapd	32(%rsp), %ymm1
 1615      2420
 1616 21b7 C57D283C 		vmovapd	(%rsp), %ymm15
 1616      24
 1617 21bc 488B40E8 		movq	-24(%rax), %rax
GAS LISTING /tmp/ccitTqu7.s 			page 52


 1618 21c0 4D8BB407 		movq	240(%r15,%rax), %r14
 1618      F0000000 
 1619 21c8 4D85F6   		testq	%r14, %r14
 1620 21cb 0F847C02 		je	.L65
 1620      0000
 1621 21d1 41807E38 		cmpb	$0, 56(%r14)
 1621      00
 1622 21d6 0F84C901 		je	.L50
 1622      0000
 1623 21dc 410FB646 		movzbl	67(%r14), %eax
 1623      43
 1624              	.L51:
 1625 21e1 0FBEF0   		movsbl	%al, %esi
 1626 21e4 4C89FF   		movq	%r15, %rdi
 1627 21e7 C57D293C 		vmovapd	%ymm15, (%rsp)
 1627      24
 1628 21ec C5FD294C 		vmovapd	%ymm1, 32(%rsp)
 1628      2420
 1629 21f2 C57D2974 		vmovapd	%ymm14, 64(%rsp)
 1629      2440
 1630 21f8 C5F877   		vzeroupper
 1631 21fb E8000000 		call	_ZNSo3putEc
 1631      00
 1632 2200 4889C7   		movq	%rax, %rdi
 1633 2203 E8000000 		call	_ZNSo5flushEv
 1633      00
 1634 2208 C5FD2894 		vmovapd	2208(%rsp), %ymm2
 1634      24A00800 
 1634      00
 1635 2211 BA050000 		movl	$5, %edx
 1635      00
 1636 2216 BE000000 		movl	$.LC97, %esi
 1636      00
 1637 221b BF000000 		movl	$_ZSt4cout, %edi
 1637      00
 1638 2220 C5FD1194 		vmovupd	%ymm2, 288(%rsp)
 1638      24200100 
 1638      00
 1639 2229 C5FB109C 		vmovsd	312(%rsp), %xmm3
 1639      24380100 
 1639      00
 1640 2232 C5FB10A4 		vmovsd	304(%rsp), %xmm4
 1640      24300100 
 1640      00
 1641 223b C5FB10AC 		vmovsd	296(%rsp), %xmm5
 1641      24280100 
 1641      00
 1642 2244 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1642      24200100 
 1642      00
 1643 224d C5FB115C 		vmovsd	%xmm3, 120(%rsp)
 1643      2478
 1644 2253 C5FB11A4 		vmovsd	%xmm4, 128(%rsp)
 1644      24800000 
 1644      00
 1645 225c C5FB11AC 		vmovsd	%xmm5, 160(%rsp)
 1645      24A00000 
GAS LISTING /tmp/ccitTqu7.s 			page 53


 1645      00
 1646 2265 C5FB1184 		vmovsd	%xmm0, 256(%rsp)
 1646      24000100 
 1646      00
 1647 226e C5F877   		vzeroupper
 1648 2271 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1648      00
 1649 2276 BA010000 		movl	$1, %edx
 1649      00
 1650 227b BE000000 		movl	$.LC0, %esi
 1650      00
 1651 2280 BF000000 		movl	$_ZSt4cout, %edi
 1651      00
 1652 2285 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1652      00
 1653 228a C5FB1084 		vmovsd	256(%rsp), %xmm0
 1653      24000100 
 1653      00
 1654 2293 BF000000 		movl	$_ZSt4cout, %edi
 1654      00
 1655 2298 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1655      00
 1656 229d BA010000 		movl	$1, %edx
 1656      00
 1657 22a2 BE000000 		movl	$.LC0, %esi
 1657      00
 1658 22a7 4889C7   		movq	%rax, %rdi
 1659 22aa 4989C6   		movq	%rax, %r14
 1660 22ad E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1660      00
 1661 22b2 C5FB10AC 		vmovsd	160(%rsp), %xmm5
 1661      24A00000 
 1661      00
 1662 22bb 4C89F7   		movq	%r14, %rdi
 1663 22be C5F928C5 		vmovapd	%xmm5, %xmm0
 1664 22c2 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1664      00
 1665 22c7 BA010000 		movl	$1, %edx
 1665      00
 1666 22cc BE000000 		movl	$.LC0, %esi
 1666      00
 1667 22d1 4889C7   		movq	%rax, %rdi
 1668 22d4 4989C6   		movq	%rax, %r14
 1669 22d7 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1669      00
 1670 22dc C5FB10A4 		vmovsd	128(%rsp), %xmm4
 1670      24800000 
 1670      00
 1671 22e5 4C89F7   		movq	%r14, %rdi
 1672 22e8 C5F928C4 		vmovapd	%xmm4, %xmm0
 1673 22ec E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1673      00
 1674 22f1 BA010000 		movl	$1, %edx
 1674      00
 1675 22f6 BE000000 		movl	$.LC0, %esi
 1675      00
 1676 22fb 4889C7   		movq	%rax, %rdi
GAS LISTING /tmp/ccitTqu7.s 			page 54


 1677 22fe 4989C6   		movq	%rax, %r14
 1678 2301 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1678      00
 1679 2306 C5FB105C 		vmovsd	120(%rsp), %xmm3
 1679      2478
 1680 230c 4C89F7   		movq	%r14, %rdi
 1681 230f C5F928C3 		vmovapd	%xmm3, %xmm0
 1682 2313 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1682      00
 1683 2318 4989C7   		movq	%rax, %r15
 1684 231b 488B00   		movq	(%rax), %rax
 1685 231e 488B40E8 		movq	-24(%rax), %rax
 1686 2322 4D8BB407 		movq	240(%r15,%rax), %r14
 1686      F0000000 
 1687 232a 4D85F6   		testq	%r14, %r14
 1688 232d 0F841D01 		je	.L52
 1688      0000
 1689 2333 41807E38 		cmpb	$0, 56(%r14)
 1689      00
 1690 2338 C57D2874 		vmovapd	64(%rsp), %ymm14
 1690      2440
 1691 233e C5FD284C 		vmovapd	32(%rsp), %ymm1
 1691      2420
 1692 2344 C57D283C 		vmovapd	(%rsp), %ymm15
 1692      24
 1693 2349 0F84AA00 		je	.L53
 1693      0000
 1694 234f 410FB646 		movzbl	67(%r14), %eax
 1694      43
 1695              	.L54:
 1696 2354 0FBEF0   		movsbl	%al, %esi
 1697 2357 4C89FF   		movq	%r15, %rdi
 1698 235a C57D29BC 		vmovapd	%ymm15, 128(%rsp)
 1698      24800000 
 1698      00
 1699 2363 C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 1699      24A00000 
 1699      00
 1700 236c C57D29B4 		vmovapd	%ymm14, 256(%rsp)
 1700      24000100 
 1700      00
 1701 2375 C5F877   		vzeroupper
 1702 2378 E8000000 		call	_ZNSo3putEc
 1702      00
 1703 237d 4889C7   		movq	%rax, %rdi
 1704 2380 E8000000 		call	_ZNSo5flushEv
 1704      00
 1705 2385 C57D28BC 		vmovapd	128(%rsp), %ymm15
 1705      24800000 
 1705      00
 1706 238e C5FD288C 		vmovapd	160(%rsp), %ymm1
 1706      24A00000 
 1706      00
 1707 2397 C57D28B4 		vmovapd	256(%rsp), %ymm14
 1707      24000100 
 1707      00
 1708 23a0 E9D4FBFF 		jmp	.L48
GAS LISTING /tmp/ccitTqu7.s 			page 55


 1708      FF
 1709              	.L50:
 1710 23a5 4C89F7   		movq	%r14, %rdi
 1711 23a8 C57D29BC 		vmovapd	%ymm15, 128(%rsp)
 1711      24800000 
 1711      00
 1712 23b1 C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 1712      24A00000 
 1712      00
 1713 23ba C57D29B4 		vmovapd	%ymm14, 256(%rsp)
 1713      24000100 
 1713      00
 1714 23c3 C5F877   		vzeroupper
 1715 23c6 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1715      00
 1716 23cb 498B06   		movq	(%r14), %rax
 1717 23ce BE0A0000 		movl	$10, %esi
 1717      00
 1718 23d3 4C89F7   		movq	%r14, %rdi
 1719 23d6 FF5030   		call	*48(%rax)
 1720 23d9 C57D28BC 		vmovapd	128(%rsp), %ymm15
 1720      24800000 
 1720      00
 1721 23e2 C5FD288C 		vmovapd	160(%rsp), %ymm1
 1721      24A00000 
 1721      00
 1722 23eb C57D28B4 		vmovapd	256(%rsp), %ymm14
 1722      24000100 
 1722      00
 1723 23f4 E9E8FDFF 		jmp	.L51
 1723      FF
 1724              	.L53:
 1725 23f9 4C89F7   		movq	%r14, %rdi
 1726 23fc C57D29BC 		vmovapd	%ymm15, 128(%rsp)
 1726      24800000 
 1726      00
 1727 2405 C5FD298C 		vmovapd	%ymm1, 160(%rsp)
 1727      24A00000 
 1727      00
 1728 240e C57D29B4 		vmovapd	%ymm14, 256(%rsp)
 1728      24000100 
 1728      00
 1729 2417 C5F877   		vzeroupper
 1730 241a E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1730      00
 1731 241f 498B06   		movq	(%r14), %rax
 1732 2422 BE0A0000 		movl	$10, %esi
 1732      00
 1733 2427 4C89F7   		movq	%r14, %rdi
 1734 242a FF5030   		call	*48(%rax)
 1735 242d C57D28BC 		vmovapd	128(%rsp), %ymm15
 1735      24800000 
 1735      00
 1736 2436 C5FD288C 		vmovapd	160(%rsp), %ymm1
 1736      24A00000 
 1736      00
 1737 243f C57D28B4 		vmovapd	256(%rsp), %ymm14
GAS LISTING /tmp/ccitTqu7.s 			page 56


 1737      24000100 
 1737      00
 1738 2448 E907FFFF 		jmp	.L54
 1738      FF
 1739              	.L65:
 1740 244d C5F877   		vzeroupper
 1741              	.L52:
 1742 2450 E8000000 		call	_ZSt16__throw_bad_castv
 1742      00
 1743              		.cfi_endproc
 1744              	.LFE4733:
 1745              		.size	main, .-main
 1746 2455 66662E0F 		.p2align 4,,15
 1746      1F840000 
 1746      000000
 1747              		.type	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, @function
 1748              	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d:
 1749              	.LFB5042:
 1750              		.cfi_startproc
 1751 2460 4883EC08 		subq	$8, %rsp
 1752              		.cfi_def_cfa_offset 16
 1753 2464 BF000000 		movl	$_ZStL8__ioinit, %edi
 1753      00
 1754 2469 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1754      00
 1755 246e BA000000 		movl	$__dso_handle, %edx
 1755      00
 1756 2473 BE000000 		movl	$_ZStL8__ioinit, %esi
 1756      00
 1757 2478 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1757      00
 1758 247d 4883C408 		addq	$8, %rsp
 1759              		.cfi_def_cfa_offset 8
 1760 2481 E9000000 		jmp	__cxa_atexit
 1760      00
 1761              		.cfi_endproc
 1762              	.LFE5042:
 1763              		.size	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, .-_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1764              		.section	.init_array,"aw"
 1765              		.align 8
 1766 0000 00000000 		.quad	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1766      00000000 
 1767              		.section	.rodata
 1768              		.align 32
 1769              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1770              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1771              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1772 0000 00000000 		.long	0
 1773 0004 00000080 		.long	-2147483648
 1774 0008 00000000 		.long	0
 1775 000c 00000080 		.long	-2147483648
 1776 0010 00000000 		.long	0
 1777 0014 00000080 		.long	-2147483648
 1778 0018 00000000 		.long	0
 1779 001c 00000080 		.long	-2147483648
 1780              		.align 32
 1781              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
GAS LISTING /tmp/ccitTqu7.s 			page 57


 1782              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1783              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1784 0020 FFFFFFFF 		.long	-1
 1785 0024 FFFFFF7F 		.long	2147483647
 1786 0028 FFFFFFFF 		.long	-1
 1787 002c FFFFFF7F 		.long	2147483647
 1788 0030 FFFFFFFF 		.long	-1
 1789 0034 FFFFFF7F 		.long	2147483647
 1790 0038 FFFFFFFF 		.long	-1
 1791 003c FFFFFF7F 		.long	2147483647
 1792              		.local	_ZStL8__ioinit
 1793              		.comm	_ZStL8__ioinit,1,1
 1794              		.section	.rodata.cst8,"aM",@progbits,8
 1795              		.align 8
 1796              	.LC1:
 1797 0000 33333333 		.long	858993459
 1798 0004 3333D33F 		.long	1070805811
 1799              		.align 8
 1800              	.LC2:
 1801 0008 9A999999 		.long	2576980378
 1802 000c 9999C93F 		.long	1070176665
 1803              		.section	.rodata.cst32,"aM",@progbits,32
 1804              		.align 32
 1805              	.LC3:
 1806 0000 83C8C96D 		.long	1841940611
 1807 0004 305FE43F 		.long	1071931184
 1808 0008 83C8C96D 		.long	1841940611
 1809 000c 305FE43F 		.long	1071931184
 1810 0010 83C8C96D 		.long	1841940611
 1811 0014 305FE43F 		.long	1071931184
 1812 0018 83C8C96D 		.long	1841940611
 1813 001c 305FE43F 		.long	1071931184
 1814              		.align 32
 1815              	.LC4:
 1816 0020 00000050 		.long	1342177280
 1817 0024 FB21F93F 		.long	1073291771
 1818 0028 00000050 		.long	1342177280
 1819 002c FB21F93F 		.long	1073291771
 1820 0030 00000050 		.long	1342177280
 1821 0034 FB21F93F 		.long	1073291771
 1822 0038 00000050 		.long	1342177280
 1823 003c FB21F93F 		.long	1073291771
 1824              		.align 32
 1825              	.LC5:
 1826 0040 00000060 		.long	1610612736
 1827 0044 B410513E 		.long	1045500084
 1828 0048 00000060 		.long	1610612736
 1829 004c B410513E 		.long	1045500084
 1830 0050 00000060 		.long	1610612736
 1831 0054 B410513E 		.long	1045500084
 1832 0058 00000060 		.long	1610612736
 1833 005c B410513E 		.long	1045500084
 1834              		.align 32
 1835              	.LC6:
 1836 0060 075C1433 		.long	856972295
 1837 0064 26A6913C 		.long	1016178214
 1838 0068 075C1433 		.long	856972295
GAS LISTING /tmp/ccitTqu7.s 			page 58


 1839 006c 26A6913C 		.long	1016178214
 1840 0070 075C1433 		.long	856972295
 1841 0074 26A6913C 		.long	1016178214
 1842 0078 075C1433 		.long	856972295
 1843 007c 26A6913C 		.long	1016178214
 1844              		.align 32
 1845              	.LC7:
 1846 0080 D0F71011 		.long	286324688
 1847 0084 1111813F 		.long	1065423121
 1848 0088 D0F71011 		.long	286324688
 1849 008c 1111813F 		.long	1065423121
 1850 0090 D0F71011 		.long	286324688
 1851 0094 1111813F 		.long	1065423121
 1852 0098 D0F71011 		.long	286324688
 1853 009c 1111813F 		.long	1065423121
 1854              		.align 32
 1855              	.LC8:
 1856 00a0 48555555 		.long	1431655752
 1857 00a4 5555C5BF 		.long	-1077586603
 1858 00a8 48555555 		.long	1431655752
 1859 00ac 5555C5BF 		.long	-1077586603
 1860 00b0 48555555 		.long	1431655752
 1861 00b4 5555C5BF 		.long	-1077586603
 1862 00b8 48555555 		.long	1431655752
 1863 00bc 5555C5BF 		.long	-1077586603
 1864              		.align 32
 1865              	.LC9:
 1866 00c0 CD9CD11F 		.long	533830861
 1867 00c4 FDD8E53D 		.long	1038473469
 1868 00c8 CD9CD11F 		.long	533830861
 1869 00cc FDD8E53D 		.long	1038473469
 1870 00d0 CD9CD11F 		.long	533830861
 1871 00d4 FDD8E53D 		.long	1038473469
 1872 00d8 CD9CD11F 		.long	533830861
 1873 00dc FDD8E53D 		.long	1038473469
 1874              		.align 32
 1875              	.LC10:
 1876 00e0 5D1F29A9 		.long	2838044509
 1877 00e4 E5E55ABE 		.long	-1101339163
 1878 00e8 5D1F29A9 		.long	2838044509
 1879 00ec E5E55ABE 		.long	-1101339163
 1880 00f0 5D1F29A9 		.long	2838044509
 1881 00f4 E5E55ABE 		.long	-1101339163
 1882 00f8 5D1F29A9 		.long	2838044509
 1883 00fc E5E55ABE 		.long	-1101339163
 1884              		.align 32
 1885              	.LC11:
 1886 0100 A1487D56 		.long	1451051169
 1887 0104 E31DC73E 		.long	1053236707
 1888 0108 A1487D56 		.long	1451051169
 1889 010c E31DC73E 		.long	1053236707
 1890 0110 A1487D56 		.long	1451051169
 1891 0114 E31DC73E 		.long	1053236707
 1892 0118 A1487D56 		.long	1451051169
 1893 011c E31DC73E 		.long	1053236707
 1894              		.align 32
 1895              	.LC12:
GAS LISTING /tmp/ccitTqu7.s 			page 59


 1896 0120 03DFBF19 		.long	432004867
 1897 0124 A0012ABF 		.long	-1087766112
 1898 0128 03DFBF19 		.long	432004867
 1899 012c A0012ABF 		.long	-1087766112
 1900 0130 03DFBF19 		.long	432004867
 1901 0134 A0012ABF 		.long	-1087766112
 1902 0138 03DFBF19 		.long	432004867
 1903 013c A0012ABF 		.long	-1087766112
 1904              		.align 32
 1905              	.LC13:
 1906 0140 914FC116 		.long	381767569
 1907 0144 6CC156BF 		.long	-1084833428
 1908 0148 914FC116 		.long	381767569
 1909 014c 6CC156BF 		.long	-1084833428
 1910 0150 914FC116 		.long	381767569
 1911 0154 6CC156BF 		.long	-1084833428
 1912 0158 914FC116 		.long	381767569
 1913 015c 6CC156BF 		.long	-1084833428
 1914              		.align 32
 1915              	.LC14:
 1916 0160 4B555555 		.long	1431655755
 1917 0164 5555A53F 		.long	1067799893
 1918 0168 4B555555 		.long	1431655755
 1919 016c 5555A53F 		.long	1067799893
 1920 0170 4B555555 		.long	1431655755
 1921 0174 5555A53F 		.long	1067799893
 1922 0178 4B555555 		.long	1431655755
 1923 017c 5555A53F 		.long	1067799893
 1924              		.align 32
 1925              	.LC15:
 1926 0180 9B1A86A0 		.long	2693143195
 1927 0184 49FAA8BD 		.long	-1112999351
 1928 0188 9B1A86A0 		.long	2693143195
 1929 018c 49FAA8BD 		.long	-1112999351
 1930 0190 9B1A86A0 		.long	2693143195
 1931 0194 49FAA8BD 		.long	-1112999351
 1932 0198 9B1A86A0 		.long	2693143195
 1933 019c 49FAA8BD 		.long	-1112999351
 1934              		.align 32
 1935              	.LC16:
 1936 01a0 053F4E7B 		.long	2068725509
 1937 01a4 9DEE213E 		.long	1042411165
 1938 01a8 053F4E7B 		.long	2068725509
 1939 01ac 9DEE213E 		.long	1042411165
 1940 01b0 053F4E7B 		.long	2068725509
 1941 01b4 9DEE213E 		.long	1042411165
 1942 01b8 053F4E7B 		.long	2068725509
 1943 01bc 9DEE213E 		.long	1042411165
 1944              		.align 32
 1945              	.LC17:
 1946 01c0 C64BAC7E 		.long	2125220806
 1947 01c4 4F7E92BE 		.long	-1097695665
 1948 01c8 C64BAC7E 		.long	2125220806
 1949 01cc 4F7E92BE 		.long	-1097695665
 1950 01d0 C64BAC7E 		.long	2125220806
 1951 01d4 4F7E92BE 		.long	-1097695665
 1952 01d8 C64BAC7E 		.long	2125220806
GAS LISTING /tmp/ccitTqu7.s 			page 60


 1953 01dc 4F7E92BE 		.long	-1097695665
 1954              		.align 32
 1955              	.LC18:
 1956 01e0 F544C819 		.long	432555253
 1957 01e4 A001FA3E 		.long	1056571808
 1958 01e8 F544C819 		.long	432555253
 1959 01ec A001FA3E 		.long	1056571808
 1960 01f0 F544C819 		.long	432555253
 1961 01f4 A001FA3E 		.long	1056571808
 1962 01f8 F544C819 		.long	432555253
 1963 01fc A001FA3E 		.long	1056571808
 1964              		.align 32
 1965              	.LC19:
 1966 0200 00000000 		.long	0
 1967 0204 0000E03F 		.long	1071644672
 1968 0208 00000000 		.long	0
 1969 020c 0000E03F 		.long	1071644672
 1970 0210 00000000 		.long	0
 1971 0214 0000E03F 		.long	1071644672
 1972 0218 00000000 		.long	0
 1973 021c 0000E03F 		.long	1071644672
 1974              		.align 32
 1975              	.LC20:
 1976 0220 00000000 		.long	0
 1977 0224 0000F03F 		.long	1072693248
 1978 0228 00000000 		.long	0
 1979 022c 0000F03F 		.long	1072693248
 1980 0230 00000000 		.long	0
 1981 0234 0000F03F 		.long	1072693248
 1982 0238 00000000 		.long	0
 1983 023c 0000F03F 		.long	1072693248
 1984              		.section	.rodata.cst16,"aM",@progbits,16
 1985              		.align 16
 1986              	.LC21:
 1987 0000 01000000 		.quad	1
 1987      00000000 
 1988 0008 01000000 		.quad	1
 1988      00000000 
 1989              		.align 16
 1990              	.LC22:
 1991 0010 00000000 		.quad	36028797018963968
 1991      00008000 
 1992 0018 00000000 		.quad	36028797018963968
 1992      00008000 
 1993              		.align 16
 1994              	.LC23:
 1995 0020 00000000 		.quad	-9007199254740992
 1995      0000E0FF 
 1996 0028 00000000 		.quad	-9007199254740992
 1996      0000E0FF 
 1997              		.align 16
 1998              	.LC24:
 1999 0030 02000000 		.quad	2
 1999      00000000 
 2000 0038 02000000 		.quad	2
 2000      00000000 
 2001              		.section	.rodata.cst32
GAS LISTING /tmp/ccitTqu7.s 			page 61


 2002              		.align 32
 2003              	.LC25:
 2004 0240 33333333 		.long	858993459
 2005 0244 3333D33F 		.long	1070805811
 2006 0248 33333333 		.long	858993459
 2007 024c 3333D33F 		.long	1070805811
 2008 0250 33333333 		.long	858993459
 2009 0254 3333D33F 		.long	1070805811
 2010 0258 33333333 		.long	858993459
 2011 025c 3333D33F 		.long	1070805811
 2012              		.align 32
 2013              	.LC26:
 2014 0260 9A999999 		.long	2576980378
 2015 0264 9999C93F 		.long	1070176665
 2016 0268 9A999999 		.long	2576980378
 2017 026c 9999C93F 		.long	1070176665
 2018 0270 9A999999 		.long	2576980378
 2019 0274 9999C93F 		.long	1070176665
 2020 0278 9A999999 		.long	2576980378
 2021 027c 9999C93F 		.long	1070176665
 2022              		.align 32
 2023              	.LC27:
 2024 0280 CDCCCCCC 		.long	3435973837
 2025 0284 CCCCCC3F 		.long	1070386380
 2026 0288 CDCCCCCC 		.long	3435973837
 2027 028c CCCCCC3F 		.long	1070386380
 2028 0290 CDCCCCCC 		.long	3435973837
 2029 0294 CCCCCC3F 		.long	1070386380
 2030 0298 CDCCCCCC 		.long	3435973837
 2031 029c CCCCCC3F 		.long	1070386380
 2032              		.align 32
 2033              	.LC28:
 2034 02a0 33333333 		.long	858993459
 2035 02a4 3333B33F 		.long	1068708659
 2036 02a8 33333333 		.long	858993459
 2037 02ac 3333B33F 		.long	1068708659
 2038 02b0 33333333 		.long	858993459
 2039 02b4 3333B33F 		.long	1068708659
 2040 02b8 33333333 		.long	858993459
 2041 02bc 3333B33F 		.long	1068708659
 2042              		.align 32
 2043              	.LC29:
 2044 02c0 33333333 		.long	858993459
 2045 02c4 3333F33F 		.long	1072902963
 2046 02c8 33333333 		.long	858993459
 2047 02cc 3333F33F 		.long	1072902963
 2048 02d0 33333333 		.long	858993459
 2049 02d4 3333F33F 		.long	1072902963
 2050 02d8 33333333 		.long	858993459
 2051 02dc 3333F33F 		.long	1072902963
 2052              		.align 32
 2053              	.LC30:
 2054 02e0 CDCCCCCC 		.long	3435973837
 2055 02e4 CCCCECBF 		.long	-1075000116
 2056 02e8 CDCCCCCC 		.long	3435973837
 2057 02ec CCCCECBF 		.long	-1075000116
 2058 02f0 CDCCCCCC 		.long	3435973837
GAS LISTING /tmp/ccitTqu7.s 			page 62


 2059 02f4 CCCCECBF 		.long	-1075000116
 2060 02f8 CDCCCCCC 		.long	3435973837
 2061 02fc CCCCECBF 		.long	-1075000116
 2062              		.align 32
 2063              	.LC31:
 2064 0300 D94B682F 		.long	795364313
 2065 0304 A1BDF43F 		.long	1073003937
 2066 0308 D94B682F 		.long	795364313
 2067 030c A1BDF43F 		.long	1073003937
 2068 0310 D94B682F 		.long	795364313
 2069 0314 A1BDF43F 		.long	1073003937
 2070 0318 D94B682F 		.long	795364313
 2071 031c A1BDF43F 		.long	1073003937
 2072              		.align 32
 2073              	.LC32:
 2074 0320 D44B682F 		.long	795364308
 2075 0324 A1BD04C0 		.long	-1073431135
 2076 0328 D44B682F 		.long	795364308
 2077 032c A1BD04C0 		.long	-1073431135
 2078 0330 D44B682F 		.long	795364308
 2079 0334 A1BD04C0 		.long	-1073431135
 2080 0338 D44B682F 		.long	795364308
 2081 033c A1BD04C0 		.long	-1073431135
 2082              		.align 32
 2083              	.LC33:
 2084 0340 00000000 		.long	0
 2085 0344 00000440 		.long	1074003968
 2086 0348 00000000 		.long	0
 2087 034c 00000440 		.long	1074003968
 2088 0350 00000000 		.long	0
 2089 0354 00000440 		.long	1074003968
 2090 0358 00000000 		.long	0
 2091 035c 00000440 		.long	1074003968
 2092              		.align 32
 2093              	.LC34:
 2094 0360 2FA1BD84 		.long	2227020079
 2095 0364 F612CABF 		.long	-1077275914
 2096 0368 2FA1BD84 		.long	2227020079
 2097 036c F612CABF 		.long	-1077275914
 2098 0370 2FA1BD84 		.long	2227020079
 2099 0374 F612CABF 		.long	-1077275914
 2100 0378 2FA1BD84 		.long	2227020079
 2101 037c F612CABF 		.long	-1077275914
 2102              		.align 32
 2103              	.LC35:
 2104 0380 00000000 		.long	0
 2105 0384 00A0AF3F 		.long	1068474368
 2106 0388 00000000 		.long	0
 2107 038c 00A0AF3F 		.long	1068474368
 2108 0390 00000000 		.long	0
 2109 0394 00A0AF3F 		.long	1068474368
 2110 0398 00000000 		.long	0
 2111 039c 00A0AF3F 		.long	1068474368
 2112              		.align 32
 2113              	.LC36:
 2114 03a0 B497D05E 		.long	1590728628
 2115 03a4 429FD93F 		.long	1071226690
GAS LISTING /tmp/ccitTqu7.s 			page 63


 2116 03a8 B497D05E 		.long	1590728628
 2117 03ac 429FD93F 		.long	1071226690
 2118 03b0 B497D05E 		.long	1590728628
 2119 03b4 429FD93F 		.long	1071226690
 2120 03b8 B497D05E 		.long	1590728628
 2121 03bc 429FD93F 		.long	1071226690
 2122              		.align 32
 2123              	.LC37:
 2124 03c0 BE84F612 		.long	318145726
 2125 03c4 DA4BA53F 		.long	1067797466
 2126 03c8 BE84F612 		.long	318145726
 2127 03cc DA4BA53F 		.long	1067797466
 2128 03d0 BE84F612 		.long	318145726
 2129 03d4 DA4BA53F 		.long	1067797466
 2130 03d8 BE84F612 		.long	318145726
 2131 03dc DA4BA53F 		.long	1067797466
 2132              		.align 32
 2133              	.LC38:
 2134 03e0 00000000 		.long	0
 2135 03e4 00E0D53F 		.long	1070981120
 2136 03e8 00000000 		.long	0
 2137 03ec 00E0D53F 		.long	1070981120
 2138 03f0 00000000 		.long	0
 2139 03f4 00E0D53F 		.long	1070981120
 2140 03f8 00000000 		.long	0
 2141 03fc 00E0D53F 		.long	1070981120
 2142              		.align 32
 2143              	.LC39:
 2144 0400 427B09ED 		.long	3976821570
 2145 0404 25349E3F 		.long	1067332645
 2146 0408 427B09ED 		.long	3976821570
 2147 040c 25349E3F 		.long	1067332645
 2148 0410 427B09ED 		.long	3976821570
 2149 0414 25349E3F 		.long	1067332645
 2150 0418 427B09ED 		.long	3976821570
 2151 041c 25349E3F 		.long	1067332645
 2152              		.align 32
 2153              	.LC40:
 2154 0420 B0B4DA85 		.long	2245702832
 2155 0424 A680D23F 		.long	1070760102
 2156 0428 B0B4DA85 		.long	2245702832
 2157 042c A680D23F 		.long	1070760102
 2158 0430 B0B4DA85 		.long	2245702832
 2159 0434 A680D23F 		.long	1070760102
 2160 0438 B0B4DA85 		.long	2245702832
 2161 043c A680D23F 		.long	1070760102
 2162              		.align 32
 2163              	.LC41:
 2164 0440 29691676 		.long	1981180201
 2165 0444 9FEFCA3F 		.long	1070264223
 2166 0448 29691676 		.long	1981180201
 2167 044c 9FEFCA3F 		.long	1070264223
 2168 0450 29691676 		.long	1981180201
 2169 0454 9FEFCA3F 		.long	1070264223
 2170 0458 29691676 		.long	1981180201
 2171 045c 9FEFCA3F 		.long	1070264223
 2172              		.align 32
GAS LISTING /tmp/ccitTqu7.s 			page 64


 2173              	.LC42:
 2174 0460 80B22B2E 		.long	774615680
 2175 0464 D0C3D93F 		.long	1071236048
 2176 0468 80B22B2E 		.long	774615680
 2177 046c D0C3D93F 		.long	1071236048
 2178 0470 80B22B2E 		.long	774615680
 2179 0474 D0C3D93F 		.long	1071236048
 2180 0478 80B22B2E 		.long	774615680
 2181 047c D0C3D93F 		.long	1071236048
 2182              		.align 32
 2183              	.LC43:
 2184 0480 EE90B943 		.long	1136234734
 2185 0484 E60EB93F 		.long	1069092582
 2186 0488 EE90B943 		.long	1136234734
 2187 048c E60EB93F 		.long	1069092582
 2188 0490 EE90B943 		.long	1136234734
 2189 0494 E60EB93F 		.long	1069092582
 2190 0498 EE90B943 		.long	1136234734
 2191 049c E60EB93F 		.long	1069092582
 2192              		.align 32
 2193              	.LC44:
 2194 04a0 83A5D52E 		.long	785753475
 2195 04a4 3405A4BF 		.long	-1079769804
 2196 04a8 83A5D52E 		.long	785753475
 2197 04ac 3405A4BF 		.long	-1079769804
 2198 04b0 83A5D52E 		.long	785753475
 2199 04b4 3405A4BF 		.long	-1079769804
 2200 04b8 83A5D52E 		.long	785753475
 2201 04bc 3405A4BF 		.long	-1079769804
 2202              		.align 32
 2203              	.LC45:
 2204 04c0 92244992 		.long	2454267026
 2205 04c4 24C9933F 		.long	1066649892
 2206 04c8 92244992 		.long	2454267026
 2207 04cc 24C9933F 		.long	1066649892
 2208 04d0 92244992 		.long	2454267026
 2209 04d4 24C9933F 		.long	1066649892
 2210 04d8 92244992 		.long	2454267026
 2211 04dc 24C9933F 		.long	1066649892
 2212              		.align 32
 2213              	.LC46:
 2214 04e0 12F37686 		.long	2255942418
 2215 04e4 C47CA13F 		.long	1067547844
 2216 04e8 12F37686 		.long	2255942418
 2217 04ec C47CA13F 		.long	1067547844
 2218 04f0 12F37686 		.long	2255942418
 2219 04f4 C47CA13F 		.long	1067547844
 2220 04f8 12F37686 		.long	2255942418
 2221 04fc C47CA13F 		.long	1067547844
 2222              		.align 32
 2223              	.LC47:
 2224 0500 0A56F19A 		.long	2599507466
 2225 0504 DB1D93BF 		.long	-1080877605
 2226 0508 0A56F19A 		.long	2599507466
 2227 050c DB1D93BF 		.long	-1080877605
 2228 0510 0A56F19A 		.long	2599507466
 2229 0514 DB1D93BF 		.long	-1080877605
GAS LISTING /tmp/ccitTqu7.s 			page 65


 2230 0518 0A56F19A 		.long	2599507466
 2231 051c DB1D93BF 		.long	-1080877605
 2232              		.align 32
 2233              	.LC48:
 2234 0520 66599665 		.long	1704352102
 2235 0524 5996713F 		.long	1064408665
 2236 0528 66599665 		.long	1704352102
 2237 052c 5996713F 		.long	1064408665
 2238 0530 66599665 		.long	1704352102
 2239 0534 5996713F 		.long	1064408665
 2240 0538 66599665 		.long	1704352102
 2241 053c 5996713F 		.long	1064408665
 2242              		.align 32
 2243              	.LC49:
 2244 0540 95D626E8 		.long	3894859413
 2245 0544 0B2E113E 		.long	1041313291
 2246 0548 95D626E8 		.long	3894859413
 2247 054c 0B2E113E 		.long	1041313291
 2248 0550 95D626E8 		.long	3894859413
 2249 0554 0B2E113E 		.long	1041313291
 2250 0558 95D626E8 		.long	3894859413
 2251 055c 0B2E113E 		.long	1041313291
 2252              		.section	.rodata.cst16
 2253              		.align 16
 2254              	.LC50:
 2255 0040 FFFFFFFF 		.quad	4503599627370495
 2255      FFFF0F00 
 2256 0048 FFFFFFFF 		.quad	4503599627370495
 2256      FFFF0F00 
 2257              		.align 16
 2258              	.LC51:
 2259 0050 00000000 		.quad	4602678819172646912
 2259      0000E03F 
 2260 0058 00000000 		.quad	4602678819172646912
 2260      0000E03F 
 2261              		.align 16
 2262              	.LC52:
 2263 0060 00000000 		.quad	4841369599423283200
 2263      00003043 
 2264 0068 00000000 		.quad	4841369599423283200
 2264      00003043 
 2265              		.section	.rodata.cst32
 2266              		.align 32
 2267              	.LC53:
 2268 0560 FF030000 		.long	1023
 2269 0564 00003043 		.long	1127219200
 2270 0568 FF030000 		.long	1023
 2271 056c 00003043 		.long	1127219200
 2272 0570 FF030000 		.long	1023
 2273 0574 00003043 		.long	1127219200
 2274 0578 FF030000 		.long	1023
 2275 057c 00003043 		.long	1127219200
 2276              		.align 32
 2277              	.LC54:
 2278 0580 CD3B7F66 		.long	1719614413
 2279 0584 9EA0E63F 		.long	1072079006
 2280 0588 CD3B7F66 		.long	1719614413
GAS LISTING /tmp/ccitTqu7.s 			page 66


 2281 058c 9EA0E63F 		.long	1072079006
 2282 0590 CD3B7F66 		.long	1719614413
 2283 0594 9EA0E63F 		.long	1072079006
 2284 0598 CD3B7F66 		.long	1719614413
 2285 059c 9EA0E63F 		.long	1072079006
 2286              		.section	.rodata.cst16
 2287              		.align 16
 2288              	.LC55:
 2289 0070 FFFFFFFF 		.long	4294967295
 2290 0074 FFFFFFFF 		.long	-1
 2291 0078 FFFFFFFF 		.long	4294967295
 2292 007c FFFFFFFF 		.long	-1
 2293              		.section	.rodata.cst32
 2294              		.align 32
 2295              	.LC56:
 2296 05a0 4DC84B92 		.long	2454440013
 2297 05a4 D6EF3140 		.long	1077014486
 2298 05a8 4DC84B92 		.long	2454440013
 2299 05ac D6EF3140 		.long	1077014486
 2300 05b0 4DC84B92 		.long	2454440013
 2301 05b4 D6EF3140 		.long	1077014486
 2302 05b8 4DC84B92 		.long	2454440013
 2303 05bc D6EF3140 		.long	1077014486
 2304              		.align 32
 2305              	.LC57:
 2306 05c0 F8DC7E7D 		.long	2105466104
 2307 05c4 63D51E40 		.long	1075762531
 2308 05c8 F8DC7E7D 		.long	2105466104
 2309 05cc 63D51E40 		.long	1075762531
 2310 05d0 F8DC7E7D 		.long	2105466104
 2311 05d4 63D51E40 		.long	1075762531
 2312 05d8 F8DC7E7D 		.long	2105466104
 2313 05dc 63D51E40 		.long	1075762531
 2314              		.align 32
 2315              	.LC58:
 2316 05e0 B01BC393 		.long	2479037360
 2317 05e4 C2B41A3F 		.long	1058714818
 2318 05e8 B01BC393 		.long	2479037360
 2319 05ec C2B41A3F 		.long	1058714818
 2320 05f0 B01BC393 		.long	2479037360
 2321 05f4 C2B41A3F 		.long	1058714818
 2322 05f8 B01BC393 		.long	2479037360
 2323 05fc C2B41A3F 		.long	1058714818
 2324              		.align 32
 2325              	.LC59:
 2326 0600 F252563F 		.long	1062621938
 2327 0604 F5D6DF3F 		.long	1071634165
 2328 0608 F252563F 		.long	1062621938
 2329 060c F5D6DF3F 		.long	1071634165
 2330 0610 F252563F 		.long	1062621938
 2331 0614 F5D6DF3F 		.long	1071634165
 2332 0618 F252563F 		.long	1062621938
 2333 061c F5D6DF3F 		.long	1071634165
 2334              		.align 32
 2335              	.LC60:
 2336 0620 116992ED 		.long	3985795345
 2337 0624 BAD21240 		.long	1074975418
GAS LISTING /tmp/ccitTqu7.s 			page 67


 2338 0628 116992ED 		.long	3985795345
 2339 062c BAD21240 		.long	1074975418
 2340 0630 116992ED 		.long	3985795345
 2341 0634 BAD21240 		.long	1074975418
 2342 0638 116992ED 		.long	3985795345
 2343 063c BAD21240 		.long	1074975418
 2344              		.align 32
 2345              	.LC61:
 2346 0640 2EEB3EC6 		.long	3326012206
 2347 0644 72FF2C40 		.long	1076690802
 2348 0648 2EEB3EC6 		.long	3326012206
 2349 064c 72FF2C40 		.long	1076690802
 2350 0650 2EEB3EC6 		.long	3326012206
 2351 0654 72FF2C40 		.long	1076690802
 2352 0658 2EEB3EC6 		.long	3326012206
 2353 065c 72FF2C40 		.long	1076690802
 2354              		.align 32
 2355              	.LC62:
 2356 0660 21AE5EEB 		.long	3948850721
 2357 0664 E2C95140 		.long	1079101922
 2358 0668 21AE5EEB 		.long	3948850721
 2359 066c E2C95140 		.long	1079101922
 2360 0670 21AE5EEB 		.long	3948850721
 2361 0674 E2C95140 		.long	1079101922
 2362 0678 21AE5EEB 		.long	3948850721
 2363 067c E2C95140 		.long	1079101922
 2364              		.align 32
 2365              	.LC63:
 2366 0680 B2251F9E 		.long	2652841394
 2367 0684 0A203740 		.long	1077354506
 2368 0688 B2251F9E 		.long	2652841394
 2369 068c 0A203740 		.long	1077354506
 2370 0690 B2251F9E 		.long	2652841394
 2371 0694 0A203740 		.long	1077354506
 2372 0698 B2251F9E 		.long	2652841394
 2373 069c 0A203740 		.long	1077354506
 2374              		.align 32
 2375              	.LC64:
 2376 06a0 8EEF97AE 		.long	2929192846
 2377 06a4 20932640 		.long	1076269856
 2378 06a8 8EEF97AE 		.long	2929192846
 2379 06ac 20932640 		.long	1076269856
 2380 06b0 8EEF97AE 		.long	2929192846
 2381 06b4 20932640 		.long	1076269856
 2382 06b8 8EEF97AE 		.long	2929192846
 2383 06bc 20932640 		.long	1076269856
 2384              		.align 32
 2385              	.LC65:
 2386 06c0 33C0194E 		.long	1310310451
 2387 06c4 2C9D4640 		.long	1078369580
 2388 06c8 33C0194E 		.long	1310310451
 2389 06cc 2C9D4640 		.long	1078369580
 2390 06d0 33C0194E 		.long	1310310451
 2391 06d4 2C9D4640 		.long	1078369580
 2392 06d8 33C0194E 		.long	1310310451
 2393 06dc 2C9D4640 		.long	1078369580
 2394              		.align 32
GAS LISTING /tmp/ccitTqu7.s 			page 68


 2395              	.LC66:
 2396 06e0 BDBD26A3 		.long	2737225149
 2397 06e4 33BF5440 		.long	1079295795
 2398 06e8 BDBD26A3 		.long	2737225149
 2399 06ec 33BF5440 		.long	1079295795
 2400 06f0 BDBD26A3 		.long	2737225149
 2401 06f4 33BF5440 		.long	1079295795
 2402 06f8 BDBD26A3 		.long	2737225149
 2403 06fc 33BF5440 		.long	1079295795
 2404              		.align 32
 2405              	.LC67:
 2406 0700 A80C615C 		.long	1549864104
 2407 0704 10D02BBF 		.long	-1087647728
 2408 0708 A80C615C 		.long	1549864104
 2409 070c 10D02BBF 		.long	-1087647728
 2410 0710 A80C615C 		.long	1549864104
 2411 0714 10D02BBF 		.long	-1087647728
 2412 0718 A80C615C 		.long	1549864104
 2413 071c 10D02BBF 		.long	-1087647728
 2414              		.align 32
 2415              	.LC68:
 2416 0720 00000000 		.long	0
 2417 0724 0030E63F 		.long	1072050176
 2418 0728 00000000 		.long	0
 2419 072c 0030E63F 		.long	1072050176
 2420 0730 00000000 		.long	0
 2421 0734 0030E63F 		.long	1072050176
 2422 0738 00000000 		.long	0
 2423 073c 0030E63F 		.long	1072050176
 2424              		.align 32
 2425              	.LC69:
 2426 0740 00000000 		.long	0
 2427 0744 00001000 		.long	1048576
 2428 0748 00000000 		.long	0
 2429 074c 00001000 		.long	1048576
 2430 0750 00000000 		.long	0
 2431 0754 00001000 		.long	1048576
 2432 0758 00000000 		.long	0
 2433 075c 00001000 		.long	1048576
 2434              		.align 32
 2435              	.LC70:
 2436 0760 00000020 		.long	536870912
 2437 0764 2000F87F 		.long	2146959392
 2438 0768 00000020 		.long	536870912
 2439 076c 2000F87F 		.long	2146959392
 2440 0770 00000020 		.long	536870912
 2441 0774 2000F87F 		.long	2146959392
 2442 0778 00000020 		.long	536870912
 2443 077c 2000F87F 		.long	2146959392
 2444              		.section	.rodata.cst16
 2445              		.align 16
 2446              	.LC71:
 2447 0080 00000000 		.long	0
 2448 0084 0000F07F 		.long	2146435072
 2449 0088 00000000 		.long	0
 2450 008c 0000F07F 		.long	2146435072
 2451              		.align 16
GAS LISTING /tmp/ccitTqu7.s 			page 69


 2452              	.LC72:
 2453 0090 00000000 		.quad	9218868437227405312
 2453      0000F07F 
 2454 0098 00000000 		.quad	9218868437227405312
 2454      0000F07F 
 2455              		.section	.rodata.cst32
 2456              		.align 32
 2457              	.LC73:
 2458 0780 FE822B65 		.long	1697350398
 2459 0784 4715F73F 		.long	1073157447
 2460 0788 FE822B65 		.long	1697350398
 2461 078c 4715F73F 		.long	1073157447
 2462 0790 FE822B65 		.long	1697350398
 2463 0794 4715F73F 		.long	1073157447
 2464 0798 FE822B65 		.long	1697350398
 2465 079c 4715F73F 		.long	1073157447
 2466              		.align 32
 2467              	.LC74:
 2468 07a0 00000000 		.long	0
 2469 07a4 402EE63F 		.long	1072049728
 2470 07a8 00000000 		.long	0
 2471 07ac 402EE63F 		.long	1072049728
 2472 07b0 00000000 		.long	0
 2473 07b4 402EE63F 		.long	1072049728
 2474 07b8 00000000 		.long	0
 2475 07bc 402EE63F 		.long	1072049728
 2476              		.align 32
 2477              	.LC75:
 2478 07c0 CAAB79CF 		.long	3480857546
 2479 07c4 D1F7B73E 		.long	1052243921
 2480 07c8 CAAB79CF 		.long	3480857546
 2481 07cc D1F7B73E 		.long	1052243921
 2482 07d0 CAAB79CF 		.long	3480857546
 2483 07d4 D1F7B73E 		.long	1052243921
 2484 07d8 CAAB79CF 		.long	3480857546
 2485 07dc D1F7B73E 		.long	1052243921
 2486              		.align 32
 2487              	.LC76:
 2488 07e0 55555555 		.long	1431655765
 2489 07e4 5555C53F 		.long	1069897045
 2490 07e8 55555555 		.long	1431655765
 2491 07ec 5555C53F 		.long	1069897045
 2492 07f0 55555555 		.long	1431655765
 2493 07f4 5555C53F 		.long	1069897045
 2494 07f8 55555555 		.long	1431655765
 2495 07fc 5555C53F 		.long	1069897045
 2496              		.align 32
 2497              	.LC77:
 2498 0800 11111111 		.long	286331153
 2499 0804 1111813F 		.long	1065423121
 2500 0808 11111111 		.long	286331153
 2501 080c 1111813F 		.long	1065423121
 2502 0810 11111111 		.long	286331153
 2503 0814 1111813F 		.long	1065423121
 2504 0818 11111111 		.long	286331153
 2505 081c 1111813F 		.long	1065423121
 2506              		.align 32
GAS LISTING /tmp/ccitTqu7.s 			page 70


 2507              	.LC78:
 2508 0820 55555555 		.long	1431655765
 2509 0824 5555A53F 		.long	1067799893
 2510 0828 55555555 		.long	1431655765
 2511 082c 5555A53F 		.long	1067799893
 2512 0830 55555555 		.long	1431655765
 2513 0834 5555A53F 		.long	1067799893
 2514 0838 55555555 		.long	1431655765
 2515 083c 5555A53F 		.long	1067799893
 2516              		.align 32
 2517              	.LC79:
 2518 0840 1AA0011A 		.long	436314138
 2519 0844 A0012A3F 		.long	1059717536
 2520 0848 1AA0011A 		.long	436314138
 2521 084c A0012A3F 		.long	1059717536
 2522 0850 1AA0011A 		.long	436314138
 2523 0854 A0012A3F 		.long	1059717536
 2524 0858 1AA0011A 		.long	436314138
 2525 085c A0012A3F 		.long	1059717536
 2526              		.align 32
 2527              	.LC80:
 2528 0860 176CC116 		.long	381774871
 2529 0864 6CC1563F 		.long	1062650220
 2530 0868 176CC116 		.long	381774871
 2531 086c 6CC1563F 		.long	1062650220
 2532 0870 176CC116 		.long	381774871
 2533 0874 6CC1563F 		.long	1062650220
 2534 0878 176CC116 		.long	381774871
 2535 087c 6CC1563F 		.long	1062650220
 2536              		.align 32
 2537              	.LC81:
 2538 0880 34C756A5 		.long	2773927732
 2539 0884 E31DC73E 		.long	1053236707
 2540 0888 34C756A5 		.long	2773927732
 2541 088c E31DC73E 		.long	1053236707
 2542 0890 34C756A5 		.long	2773927732
 2543 0894 E31DC73E 		.long	1053236707
 2544 0898 34C756A5 		.long	2773927732
 2545 089c E31DC73E 		.long	1053236707
 2546              		.align 32
 2547              	.LC82:
 2548 08a0 1AA0011A 		.long	436314138
 2549 08a4 A001FA3E 		.long	1056571808
 2550 08a8 1AA0011A 		.long	436314138
 2551 08ac A001FA3E 		.long	1056571808
 2552 08b0 1AA0011A 		.long	436314138
 2553 08b4 A001FA3E 		.long	1056571808
 2554 08b8 1AA0011A 		.long	436314138
 2555 08bc A001FA3E 		.long	1056571808
 2556              		.align 32
 2557              	.LC83:
 2558 08c0 E444F567 		.long	1744127204
 2559 08c4 45E65A3E 		.long	1046144581
 2560 08c8 E444F567 		.long	1744127204
 2561 08cc 45E65A3E 		.long	1046144581
 2562 08d0 E444F567 		.long	1744127204
 2563 08d4 45E65A3E 		.long	1046144581
GAS LISTING /tmp/ccitTqu7.s 			page 71


 2564 08d8 E444F567 		.long	1744127204
 2565 08dc 45E65A3E 		.long	1046144581
 2566              		.align 32
 2567              	.LC84:
 2568 08e0 5C9F78B7 		.long	3078135644
 2569 08e4 4F7E923E 		.long	1049787983
 2570 08e8 5C9F78B7 		.long	3078135644
 2571 08ec 4F7E923E 		.long	1049787983
 2572 08f0 5C9F78B7 		.long	3078135644
 2573 08f4 4F7E923E 		.long	1049787983
 2574 08f8 5C9F78B7 		.long	3078135644
 2575 08fc 4F7E923E 		.long	1049787983
 2576              		.align 32
 2577              	.LC85:
 2578 0900 096DA813 		.long	329805065
 2579 0904 4612E63D 		.long	1038488134
 2580 0908 096DA813 		.long	329805065
 2581 090c 4612E63D 		.long	1038488134
 2582 0910 096DA813 		.long	329805065
 2583 0914 4612E63D 		.long	1038488134
 2584 0918 096DA813 		.long	329805065
 2585 091c 4612E63D 		.long	1038488134
 2586              		.align 32
 2587              	.LC86:
 2588 0920 98D8F8EF 		.long	4026063000
 2589 0924 D8EE213E 		.long	1042411224
 2590 0928 98D8F8EF 		.long	4026063000
 2591 092c D8EE213E 		.long	1042411224
 2592 0930 98D8F8EF 		.long	4026063000
 2593 0934 D8EE213E 		.long	1042411224
 2594 0938 98D8F8EF 		.long	4026063000
 2595 093c D8EE213E 		.long	1042411224
 2596              		.align 32
 2597              	.LC87:
 2598 0940 85EB51B8 		.long	3092376453
 2599 0944 1E238640 		.long	1082532638
 2600 0948 85EB51B8 		.long	3092376453
 2601 094c 1E238640 		.long	1082532638
 2602 0950 85EB51B8 		.long	3092376453
 2603 0954 1E238640 		.long	1082532638
 2604 0958 85EB51B8 		.long	3092376453
 2605 095c 1E238640 		.long	1082532638
 2606              		.align 32
 2607              	.LC88:
 2608 0960 2D431CEB 		.long	3944497965
 2609 0964 E2361A3F 		.long	1058682594
 2610 0968 2D431CEB 		.long	3944497965
 2611 096c E2361A3F 		.long	1058682594
 2612 0970 2D431CEB 		.long	3944497965
 2613 0974 E2361A3F 		.long	1058682594
 2614 0978 2D431CEB 		.long	3944497965
 2615 097c E2361A3F 		.long	1058682594
 2616              		.align 32
 2617              	.LC89:
 2618 0980 00000000 		.long	0
 2619 0984 00001440 		.long	1075052544
 2620 0988 00000000 		.long	0
GAS LISTING /tmp/ccitTqu7.s 			page 72


 2621 098c 00001440 		.long	1075052544
 2622 0990 00000000 		.long	0
 2623 0994 00001440 		.long	1075052544
 2624 0998 00000000 		.long	0
 2625 099c 00001440 		.long	1075052544
 2626              		.align 32
 2627              	.LC90:
 2628 09a0 9A999999 		.long	2576980378
 2629 09a4 9999E93F 		.long	1072273817
 2630 09a8 9A999999 		.long	2576980378
 2631 09ac 9999E93F 		.long	1072273817
 2632 09b0 9A999999 		.long	2576980378
 2633 09b4 9999E93F 		.long	1072273817
 2634 09b8 9A999999 		.long	2576980378
 2635 09bc 9999E93F 		.long	1072273817
 2636              		.align 32
 2637              	.LC91:
 2638 09c0 00000000 		.long	0
 2639 09c4 00408F40 		.long	1083129856
 2640 09c8 00000000 		.long	0
 2641 09cc 00408F40 		.long	1083129856
 2642 09d0 00000000 		.long	0
 2643 09d4 00408F40 		.long	1083129856
 2644 09d8 00000000 		.long	0
 2645 09dc 00408F40 		.long	1083129856
 2646              		.align 32
 2647              	.LC92:
 2648 09e0 814EE62E 		.long	786845313
 2649 09e4 0BEBB940 		.long	1085926155
 2650 09e8 814EE62E 		.long	786845313
 2651 09ec 0BEBB940 		.long	1085926155
 2652 09f0 814EE62E 		.long	786845313
 2653 09f4 0BEBB940 		.long	1085926155
 2654 09f8 814EE62E 		.long	786845313
 2655 09fc 0BEBB940 		.long	1085926155
 2656              		.align 32
 2657              	.LC98:
 2658 0a00 7B14AE47 		.long	1202590843
 2659 0a04 E17A843F 		.long	1065646817
 2660 0a08 7B14AE47 		.long	1202590843
 2661 0a0c E17A843F 		.long	1065646817
 2662 0a10 7B14AE47 		.long	1202590843
 2663 0a14 E17A843F 		.long	1065646817
 2664 0a18 7B14AE47 		.long	1202590843
 2665 0a1c E17A843F 		.long	1065646817
 2666              		.align 32
 2667              	.LC99:
 2668 0a20 00000000 		.long	0
 2669 0a24 0000E0BF 		.long	-1075838976
 2670 0a28 00000000 		.long	0
 2671 0a2c 0000E0BF 		.long	-1075838976
 2672 0a30 00000000 		.long	0
 2673 0a34 0000E0BF 		.long	-1075838976
 2674 0a38 00000000 		.long	0
 2675 0a3c 0000E0BF 		.long	-1075838976
 2676              		.align 32
 2677              	.LC100:
GAS LISTING /tmp/ccitTqu7.s 			page 73


 2678 0a40 9A999999 		.long	2576980378
 2679 0a44 9999B9BF 		.long	-1078355559
 2680 0a48 9A999999 		.long	2576980378
 2681 0a4c 9999B9BF 		.long	-1078355559
 2682 0a50 9A999999 		.long	2576980378
 2683 0a54 9999B9BF 		.long	-1078355559
 2684 0a58 9A999999 		.long	2576980378
 2685 0a5c 9999B9BF 		.long	-1078355559
 2686              		.section	.rodata.cst16
 2687              		.align 16
 2688              	.LC103:
 2689 00a0 FFFFFFFF 		.quad	-1
 2689      FFFFFFFF 
 2690 00a8 FFFFFFFF 		.quad	-1
 2690      FFFFFFFF 
 2691              		.hidden	__dso_handle
 2692              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2693              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccitTqu7.s 			page 74


DEFINED SYMBOLS
                            *ABS*:0000000000000000 Duffing_RKCK45.cpp
     /tmp/ccitTqu7.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccitTqu7.s:27     .text:0000000000000000 _Z11printVectorPKc5Vec4d
     /tmp/ccitTqu7.s:143    .text:0000000000000180 _Z8linspaceddi
     /tmp/ccitTqu7.s:208    .text.startup:0000000000000000 main
     /tmp/ccitTqu7.s:1771   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccitTqu7.s:1783   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccitTqu7.s:1748   .text.startup:0000000000002460 _GLOBAL__sub_I__Z11printVectorPKc5Vec4d
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccitTqu7.s:1796   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccitTqu7.s:1800   .rodata.cst8:0000000000000008 .LC2
     /tmp/ccitTqu7.s:2446   .rodata.cst16:0000000000000080 .LC71
     /tmp/ccitTqu7.s:1965   .rodata.cst32:0000000000000200 .LC19
     /tmp/ccitTqu7.s:1975   .rodata.cst32:0000000000000220 .LC20
     /tmp/ccitTqu7.s:2003   .rodata.cst32:0000000000000240 .LC25
     /tmp/ccitTqu7.s:2657   .rodata.cst32:0000000000000a00 .LC98
     /tmp/ccitTqu7.s:2667   .rodata.cst32:0000000000000a20 .LC99
     /tmp/ccitTqu7.s:2677   .rodata.cst32:0000000000000a40 .LC100
     /tmp/ccitTqu7.s:1805   .rodata.cst32:0000000000000000 .LC3
     /tmp/ccitTqu7.s:1815   .rodata.cst32:0000000000000020 .LC4
     /tmp/ccitTqu7.s:1825   .rodata.cst32:0000000000000040 .LC5
     /tmp/ccitTqu7.s:1835   .rodata.cst32:0000000000000060 .LC6
     /tmp/ccitTqu7.s:1865   .rodata.cst32:00000000000000c0 .LC9
     /tmp/ccitTqu7.s:1845   .rodata.cst32:0000000000000080 .LC7
     /tmp/ccitTqu7.s:1885   .rodata.cst32:0000000000000100 .LC11
     /tmp/ccitTqu7.s:1875   .rodata.cst32:00000000000000e0 .LC10
     /tmp/ccitTqu7.s:1855   .rodata.cst32:00000000000000a0 .LC8
     /tmp/ccitTqu7.s:1895   .rodata.cst32:0000000000000120 .LC12
     /tmp/ccitTqu7.s:1925   .rodata.cst32:0000000000000180 .LC15
     /tmp/ccitTqu7.s:1905   .rodata.cst32:0000000000000140 .LC13
     /tmp/ccitTqu7.s:1935   .rodata.cst32:00000000000001a0 .LC16
     /tmp/ccitTqu7.s:1915   .rodata.cst32:0000000000000160 .LC14
     /tmp/ccitTqu7.s:1945   .rodata.cst32:00000000000001c0 .LC17
     /tmp/ccitTqu7.s:1955   .rodata.cst32:00000000000001e0 .LC18
     /tmp/ccitTqu7.s:1986   .rodata.cst16:0000000000000000 .LC21
     /tmp/ccitTqu7.s:1994   .rodata.cst16:0000000000000020 .LC23
     /tmp/ccitTqu7.s:2688   .rodata.cst16:00000000000000a0 .LC103
     /tmp/ccitTqu7.s:1990   .rodata.cst16:0000000000000010 .LC22
     /tmp/ccitTqu7.s:1998   .rodata.cst16:0000000000000030 .LC24
     /tmp/ccitTqu7.s:2013   .rodata.cst32:0000000000000260 .LC26
     /tmp/ccitTqu7.s:2023   .rodata.cst32:0000000000000280 .LC27
     /tmp/ccitTqu7.s:2033   .rodata.cst32:00000000000002a0 .LC28
     /tmp/ccitTqu7.s:2043   .rodata.cst32:00000000000002c0 .LC29
     /tmp/ccitTqu7.s:2053   .rodata.cst32:00000000000002e0 .LC30
     /tmp/ccitTqu7.s:2063   .rodata.cst32:0000000000000300 .LC31
     /tmp/ccitTqu7.s:2073   .rodata.cst32:0000000000000320 .LC32
     /tmp/ccitTqu7.s:2083   .rodata.cst32:0000000000000340 .LC33
     /tmp/ccitTqu7.s:2093   .rodata.cst32:0000000000000360 .LC34
     /tmp/ccitTqu7.s:2103   .rodata.cst32:0000000000000380 .LC35
     /tmp/ccitTqu7.s:2123   .rodata.cst32:00000000000003c0 .LC37
     /tmp/ccitTqu7.s:2113   .rodata.cst32:00000000000003a0 .LC36
     /tmp/ccitTqu7.s:2133   .rodata.cst32:00000000000003e0 .LC38
     /tmp/ccitTqu7.s:2143   .rodata.cst32:0000000000000400 .LC39
     /tmp/ccitTqu7.s:2153   .rodata.cst32:0000000000000420 .LC40
     /tmp/ccitTqu7.s:2163   .rodata.cst32:0000000000000440 .LC41
     /tmp/ccitTqu7.s:2173   .rodata.cst32:0000000000000460 .LC42
GAS LISTING /tmp/ccitTqu7.s 			page 75


     /tmp/ccitTqu7.s:2183   .rodata.cst32:0000000000000480 .LC43
     /tmp/ccitTqu7.s:2193   .rodata.cst32:00000000000004a0 .LC44
     /tmp/ccitTqu7.s:2203   .rodata.cst32:00000000000004c0 .LC45
     /tmp/ccitTqu7.s:2213   .rodata.cst32:00000000000004e0 .LC46
     /tmp/ccitTqu7.s:2233   .rodata.cst32:0000000000000520 .LC48
     /tmp/ccitTqu7.s:2223   .rodata.cst32:0000000000000500 .LC47
     /tmp/ccitTqu7.s:2243   .rodata.cst32:0000000000000540 .LC49
     /tmp/ccitTqu7.s:2254   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccitTqu7.s:2262   .rodata.cst16:0000000000000060 .LC52
     /tmp/ccitTqu7.s:2258   .rodata.cst16:0000000000000050 .LC51
     /tmp/ccitTqu7.s:2277   .rodata.cst32:0000000000000580 .LC54
     /tmp/ccitTqu7.s:2267   .rodata.cst32:0000000000000560 .LC53
     /tmp/ccitTqu7.s:2288   .rodata.cst16:0000000000000070 .LC55
     /tmp/ccitTqu7.s:2315   .rodata.cst32:00000000000005e0 .LC58
     /tmp/ccitTqu7.s:2295   .rodata.cst32:00000000000005a0 .LC56
     /tmp/ccitTqu7.s:2335   .rodata.cst32:0000000000000620 .LC60
     /tmp/ccitTqu7.s:2325   .rodata.cst32:0000000000000600 .LC59
     /tmp/ccitTqu7.s:2305   .rodata.cst32:00000000000005c0 .LC57
     /tmp/ccitTqu7.s:2345   .rodata.cst32:0000000000000640 .LC61
     /tmp/ccitTqu7.s:2375   .rodata.cst32:00000000000006a0 .LC64
     /tmp/ccitTqu7.s:2355   .rodata.cst32:0000000000000660 .LC62
     /tmp/ccitTqu7.s:2365   .rodata.cst32:0000000000000680 .LC63
     /tmp/ccitTqu7.s:2385   .rodata.cst32:00000000000006c0 .LC65
     /tmp/ccitTqu7.s:2395   .rodata.cst32:00000000000006e0 .LC66
     /tmp/ccitTqu7.s:2405   .rodata.cst32:0000000000000700 .LC67
     /tmp/ccitTqu7.s:2415   .rodata.cst32:0000000000000720 .LC68
     /tmp/ccitTqu7.s:2425   .rodata.cst32:0000000000000740 .LC69
     /tmp/ccitTqu7.s:2435   .rodata.cst32:0000000000000760 .LC70
     /tmp/ccitTqu7.s:2452   .rodata.cst16:0000000000000090 .LC72
     /tmp/ccitTqu7.s:2457   .rodata.cst32:0000000000000780 .LC73
     /tmp/ccitTqu7.s:2467   .rodata.cst32:00000000000007a0 .LC74
     /tmp/ccitTqu7.s:2477   .rodata.cst32:00000000000007c0 .LC75
     /tmp/ccitTqu7.s:2517   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccitTqu7.s:2497   .rodata.cst32:0000000000000800 .LC77
     /tmp/ccitTqu7.s:2487   .rodata.cst32:00000000000007e0 .LC76
     /tmp/ccitTqu7.s:2527   .rodata.cst32:0000000000000860 .LC80
     /tmp/ccitTqu7.s:2507   .rodata.cst32:0000000000000820 .LC78
     /tmp/ccitTqu7.s:2557   .rodata.cst32:00000000000008c0 .LC83
     /tmp/ccitTqu7.s:2567   .rodata.cst32:00000000000008e0 .LC84
     /tmp/ccitTqu7.s:2537   .rodata.cst32:0000000000000880 .LC81
     /tmp/ccitTqu7.s:2577   .rodata.cst32:0000000000000900 .LC85
     /tmp/ccitTqu7.s:2547   .rodata.cst32:00000000000008a0 .LC82
     /tmp/ccitTqu7.s:2587   .rodata.cst32:0000000000000920 .LC86
     /tmp/ccitTqu7.s:2597   .rodata.cst32:0000000000000940 .LC87
     /tmp/ccitTqu7.s:2617   .rodata.cst32:0000000000000980 .LC89
     /tmp/ccitTqu7.s:2607   .rodata.cst32:0000000000000960 .LC88
     /tmp/ccitTqu7.s:2637   .rodata.cst32:00000000000009c0 .LC91
     /tmp/ccitTqu7.s:2627   .rodata.cst32:00000000000009a0 .LC90
     /tmp/ccitTqu7.s:2647   .rodata.cst32:00000000000009e0 .LC92

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
strlen
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
GAS LISTING /tmp/ccitTqu7.s 			page 76


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
