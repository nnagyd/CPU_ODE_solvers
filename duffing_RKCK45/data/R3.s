GAS LISTING /tmp/cclDueTb.s 			page 1


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
GAS LISTING /tmp/cclDueTb.s 			page 2


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
GAS LISTING /tmp/cclDueTb.s 			page 3


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
GAS LISTING /tmp/cclDueTb.s 			page 4


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
GAS LISTING /tmp/cclDueTb.s 			page 5


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
GAS LISTING /tmp/cclDueTb.s 			page 6


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
 228 0019 4881EC20 		subq	$2080, %rsp
 228      080000
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
 251 0094 4183F902 		cmpl	$2, %r9d
 252 0098 4C8D8424 		leaq	1440(%rsp), %r8
 252      A0050000 
 253 00a0 C5FD2984 		vmovapd	%ymm0, 1984(%rsp)
 253      24C00700 
 253      00
 254 00a9 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 255 00ad C5FD2994 		vmovapd	%ymm2, 1888(%rsp)
GAS LISTING /tmp/cclDueTb.s 			page 7


 255      24600700 
 255      00
 256 00b6 488DBC24 		leaq	1792(%rsp), %rdi
 256      00070000 
 257 00be 488D8424 		leaq	1632(%rsp), %rax
 257      60060000 
 258 00c6 C4410976 		vpcmpeqd	%xmm14, %xmm14, %xmm14
 258      F6
 259 00cb 488DB424 		leaq	448(%rsp), %rsi
 259      C0010000 
 260 00d3 C5FD2984 		vmovapd	%ymm0, 1792(%rsp)
 260      24000700 
 260      00
 261 00dc C4C17D28 		vmovapd	32(%r13), %ymm2
 261      5520
 262 00e2 C5FD2984 		vmovapd	%ymm0, 1824(%rsp)
 262      24200700 
 262      00
 263 00eb C5FD2994 		vmovapd	%ymm2, 2016(%rsp)
 263      24E00700 
 263      00
 264 00f4 C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 264      00000000 
 265 00fc C5FD2994 		vmovapd	%ymm2, 1920(%rsp)
 265      24800700 
 265      00
 266 0105 C4C17D28 		vmovapd	64(%r13), %ymm2
 266      5540
 267 010b C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 267      24400700 
 267      00
 268 0114 C5FD2994 		vmovapd	%ymm2, 2048(%rsp)
 268      24000800 
 268      00
 269 011d C5FD2815 		vmovapd	.LC98(%rip), %ymm2
 269      00000000 
 270 0125 C5FD2994 		vmovapd	%ymm2, 1952(%rsp)
 270      24A00700 
 270      00
 271 012e C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 271      00000000 
 272 0136 C5FD2994 		vmovapd	%ymm2, 1600(%rsp)
 272      24400600 
 272      00
 273 013f C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 273      00000000 
 274 0147 C5FD2994 		vmovapd	%ymm2, 1632(%rsp)
 274      24600600 
 274      00
 275 0150 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 275      00000000 
 276 0158 C5FD2994 		vmovapd	%ymm2, 1664(%rsp)
 276      24800600 
 276      00
 277 0161 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 277      00000000 
 278 0169 C5FD2994 		vmovapd	%ymm2, 1696(%rsp)
GAS LISTING /tmp/cclDueTb.s 			page 8


 278      24A00600 
 278      00
 279 0172 C5FD2815 		vmovapd	.LC99(%rip), %ymm2
 279      00000000 
 280 017a C5FD2994 		vmovapd	%ymm2, 1728(%rsp)
 280      24C00600 
 280      00
 281 0183 C5FD2815 		vmovapd	.LC100(%rip), %ymm2
 281      00000000 
 282 018b C5FD2994 		vmovapd	%ymm2, 1760(%rsp)
 282      24E00600 
 282      00
 283 0194 0F8FBB02 		jg	.L60
 283      0000
 284 019a 660F1F44 		.p2align 4,,10
 284      0000
 285              		.p2align 3
 286              	.L22:
 287 01a0 4963D2   		movslq	%r10d, %rdx
 288 01a3 C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 288      00000000 
 289 01ab 4963C9   		movslq	%r9d, %rcx
 290 01ae 48C1E205 		salq	$5, %rdx
 291 01b2 48C1E105 		salq	$5, %rcx
 292 01b6 4183C101 		addl	$1, %r9d
 293 01ba 4C8D5A20 		leaq	32(%rdx), %r11
 294 01be 4183C202 		addl	$2, %r10d
 295 01c2 4183F902 		cmpl	$2, %r9d
 296 01c6 4E8DB41C 		leaq	1600(%rsp,%r11), %r14
 296      40060000 
 297 01ce C4C17D28 		vmovapd	(%r14), %ymm0
 297      06
 298 01d3 C5FD2984 		vmovapd	%ymm0, 832(%rsp,%rdx)
 298      14400300 
 298      00
 299 01dc C5ED549C 		vandpd	1792(%rsp,%rcx), %ymm2, %ymm3
 299      0C000700 
 299      00
 300 01e5 C5E55905 		vmulpd	.LC3(%rip), %ymm3, %ymm0
 300      00000000 
 301 01ed C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 301      C008
 302 01f3 C4E37D09 		vroundpd	$8, %ymm0, %ymm2
 302      D008
 303 01f9 C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 303      24E00000 
 303      00
 304 0202 C5FD5925 		vmulpd	.LC4(%rip), %ymm0, %ymm4
 304      00000000 
 305 020a C57B108C 		vmovsd	224(%rsp), %xmm9
 305      24E00000 
 305      00
 306 0213 C57B1094 		vmovsd	232(%rsp), %xmm10
 306      24E80000 
 306      00
 307 021c C441FB2C 		vcvttsd2siq	%xmm9, %r15
 307      F9
GAS LISTING /tmp/cclDueTb.s 			page 9


 308 0221 C57B109C 		vmovsd	240(%rsp), %xmm11
 308      24F00000 
 308      00
 309 022a C57B10A4 		vmovsd	248(%rsp), %xmm12
 309      24F80000 
 309      00
 310 0233 C5E55CE4 		vsubpd	%ymm4, %ymm3, %ymm4
 311 0237 4C89BC24 		movq	%r15, 192(%rsp)
 311      C0000000 
 312 023f C441FB2C 		vcvttsd2siq	%xmm10, %r15
 312      FA
 313 0244 C5FA7E94 		vmovq	192(%rsp), %xmm2
 313      24C00000 
 313      00
 314 024d C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm5
 314      EF01
 315 0253 C441FB2C 		vcvttsd2siq	%xmm11, %r15
 315      FB
 316 0258 4C89BC24 		movq	%r15, 192(%rsp)
 316      C0000000 
 317 0260 C441FB2C 		vcvttsd2siq	%xmm12, %r15
 317      FC
 318 0265 C5FA7E94 		vmovq	192(%rsp), %xmm2
 318      24C00000 
 318      00
 319 026e C4C3E922 		vpinsrq	$1, %r15, %xmm2, %xmm6
 319      F701
 320 0274 C5FD5915 		vmulpd	.LC5(%rip), %ymm0, %ymm2
 320      00000000 
 321 027c C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 321      00000000 
 322 0284 C5DD5CE2 		vsubpd	%ymm2, %ymm4, %ymm4
 323 0288 C5DD5CE0 		vsubpd	%ymm0, %ymm4, %ymm4
 324 028c C5DD59C4 		vmulpd	%ymm4, %ymm4, %ymm0
 325 0290 C57D590D 		vmulpd	.LC9(%rip), %ymm0, %ymm9
 325      00000000 
 326 0298 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 327 029c C57D5915 		vmulpd	.LC7(%rip), %ymm0, %ymm10
 327      00000000 
 328 02a4 C57D5905 		vmulpd	.LC11(%rip), %ymm0, %ymm8
 328      00000000 
 329 02ac C535580D 		vaddpd	.LC10(%rip), %ymm9, %ymm9
 329      00000000 
 330 02b4 C5ED59FA 		vmulpd	%ymm2, %ymm2, %ymm7
 331 02b8 C52D5815 		vaddpd	.LC8(%rip), %ymm10, %ymm10
 331      00000000 
 332 02c0 C53D5805 		vaddpd	.LC12(%rip), %ymm8, %ymm8
 332      00000000 
 333 02c8 C53559CF 		vmulpd	%ymm7, %ymm9, %ymm9
 334 02cc C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 334      CA
 335 02d1 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 336 02d5 C57D5915 		vmulpd	.LC15(%rip), %ymm0, %ymm10
 336      00000000 
 337 02dd C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 337      C1
 338 02e2 C57D590D 		vmulpd	.LC13(%rip), %ymm0, %ymm9
GAS LISTING /tmp/cclDueTb.s 			page 10


 338      00000000 
 339 02ea C52D5815 		vaddpd	.LC16(%rip), %ymm10, %ymm10
 339      00000000 
 340 02f2 C535580D 		vaddpd	.LC14(%rip), %ymm9, %ymm9
 340      00000000 
 341 02fa C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 342 02fe C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 342      F9
 343 0303 C57D590D 		vmulpd	.LC17(%rip), %ymm0, %ymm9
 343      00000000 
 344 030b C535580D 		vaddpd	.LC18(%rip), %ymm9, %ymm9
 344      00000000 
 345 0313 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 346 0317 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 347 031b C55D59C8 		vmulpd	%ymm0, %ymm4, %ymm9
 348 031f C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 348      00000000 
 349 0327 C5ED59D7 		vmulpd	%ymm7, %ymm2, %ymm2
 350 032b C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 350      C0
 351 0330 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 352 0334 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 353 0338 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 353      D901
 354 033e C5BD58E4 		vaddpd	%ymm4, %ymm8, %ymm4
 355 0342 C551DB05 		vpand	.LC21(%rip), %xmm5, %xmm8
 355      00000000 
 356 034a C4C13173 		vpsllq	$1, %xmm9, %xmm9
 356      F101
 357 0350 C5ED58D0 		vaddpd	%ymm0, %ymm2, %ymm2
 358 0354 C5C9DB05 		vpand	.LC21(%rip), %xmm6, %xmm0
 358      00000000 
 359 035c C531DB0D 		vpand	.LC23(%rip), %xmm9, %xmm9
 359      00000000 
 360 0364 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 360      C7
 361 0369 C4E23929 		vpcmpeqq	%xmm7, %xmm8, %xmm7
 361      FF
 362 036e C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 362      C6
 363 0373 C4625137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm8
 363      05000000 
 363      00
 364 037c C5D1D42D 		vpaddq	.LC21(%rip), %xmm5, %xmm5
 364      00000000 
 365 0384 C4C141EF 		vpxor	%xmm14, %xmm7, %xmm7
 365      FE
 366 0389 C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 366      0D000000 
 366      00
 367 0392 C44131EF 		vpxor	%xmm14, %xmm9, %xmm9
 367      CE
 368 0397 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 368      F801
 369 039d C4E24937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm0
 369      05000000 
 369      00
GAS LISTING /tmp/cclDueTb.s 			page 11


 370 03a6 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 370      C001
 371 03ac C5F928C3 		vmovapd	%xmm3, %xmm0
 372 03b0 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 372      01
 373 03b5 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 373      00000000 
 374 03bd C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 374      05000000 
 374      00
 375 03c6 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 375      C6
 376 03cb C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 376      C101
 377 03d1 C5BD54D8 		vandpd	%ymm0, %ymm8, %ymm3
 378 03d5 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 379 03d9 C4E36D4B 		vblendvpd	%ymm3, %ymm1, %ymm2, %ymm2
 379      D130
 380 03df C4E35D4B 		vblendvpd	%ymm3, %ymm0, %ymm4, %ymm4
 380      E030
 381 03e5 C5C9D405 		vpaddq	.LC21(%rip), %xmm6, %xmm0
 381      00000000 
 382 03ed C5D1DB35 		vpand	.LC24(%rip), %xmm5, %xmm6
 382      00000000 
 383 03f5 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 383      00000000 
 384 03fd C4E36D4B 		vblendvpd	%ymm7, %ymm4, %ymm2, %ymm3
 384      DC70
 385 0403 C5FD2894 		vmovapd	1984(%rsp,%rcx), %ymm2
 385      0CC00700 
 385      00
 386 040c C5C973F6 		vpsllq	$62, %xmm6, %xmm6
 386      3E
 387 0411 C4C16D59 		vmulpd	(%r14), %ymm2, %ymm2
 387      16
 388 0416 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 388      3E
 389 041b C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 389      F001
 390 0421 C5FD2884 		vmovapd	1600(%rsp,%rdx), %ymm0
 390      14400600 
 390      00
 391 042a C5FD59E0 		vmulpd	%ymm0, %ymm0, %ymm4
 392 042e C5E557DE 		vxorpd	%ymm6, %ymm3, %ymm3
 393 0432 C5F55CE4 		vsubpd	%ymm4, %ymm1, %ymm4
 394 0436 C58559DB 		vmulpd	%ymm3, %ymm15, %ymm3
 395 043a C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 396 043e C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 397 0442 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 398 0446 C5FD2984 		vmovapd	%ymm0, 864(%rsp,%rdx)
 398      14600300 
 398      00
 399 044f 0F8E4BFD 		jle	.L22
 399      FFFF
 400              	.L60:
 401 0455 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 401      00000000 
GAS LISTING /tmp/cclDueTb.s 			page 12


 402 045d C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 402      C9
 403 0462 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 403      ED
 404 0467 4889F9   		movq	%rdi, %rcx
 405 046a C5ED5984 		vmulpd	832(%rsp), %ymm2, %ymm0
 405      24400300 
 405      00
 406 0473 4C89C2   		movq	%r8, %rdx
 407 0476 C5FD5984 		vmulpd	1888(%rsp), %ymm0, %ymm0
 407      24600700 
 407      00
 408 047f C5FD5884 		vaddpd	1600(%rsp), %ymm0, %ymm0
 408      24400600 
 408      00
 409 0488 C5FD2984 		vmovapd	%ymm0, 1408(%rsp)
 409      24800500 
 409      00
 410 0491 C5ED5984 		vmulpd	864(%rsp), %ymm2, %ymm0
 410      24600300 
 410      00
 411 049a C5ED5994 		vmulpd	896(%rsp), %ymm2, %ymm2
 411      24800300 
 411      00
 412 04a3 C5FD5984 		vmulpd	1888(%rsp), %ymm0, %ymm0
 412      24600700 
 412      00
 413 04ac C5FD5884 		vaddpd	1632(%rsp), %ymm0, %ymm0
 413      24600600 
 413      00
 414 04b5 C5FD2984 		vmovapd	%ymm0, 1440(%rsp)
 414      24A00500 
 414      00
 415 04be C5FD2884 		vmovapd	1920(%rsp), %ymm0
 415      24800700 
 415      00
 416 04c7 C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 417 04cb C5ED5894 		vaddpd	1664(%rsp), %ymm2, %ymm2
 417      24800600 
 417      00
 418 04d4 C5FD2994 		vmovapd	%ymm2, 1472(%rsp)
 418      24C00500 
 418      00
 419 04dd C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 419      00000000 
 420 04e5 C5ED5994 		vmulpd	928(%rsp), %ymm2, %ymm2
 420      24A00300 
 420      00
 421 04ee C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 422 04f2 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 422      00000000 
 423 04fa C5ED5994 		vmulpd	960(%rsp), %ymm2, %ymm2
 423      24C00300 
 423      00
 424 0503 C5FD5884 		vaddpd	1696(%rsp), %ymm0, %ymm0
 424      24A00600 
 424      00
GAS LISTING /tmp/cclDueTb.s 			page 13


 425 050c C5FD2984 		vmovapd	%ymm0, 1504(%rsp)
 425      24E00500 
 425      00
 426 0515 C5FD2884 		vmovapd	1952(%rsp), %ymm0
 426      24A00700 
 426      00
 427 051e C5FD59D2 		vmulpd	%ymm2, %ymm0, %ymm2
 428 0522 C5ED5894 		vaddpd	1728(%rsp), %ymm2, %ymm2
 428      24C00600 
 428      00
 429 052b C5FD2994 		vmovapd	%ymm2, 1536(%rsp)
 429      24000600 
 429      00
 430 0534 C5FD2815 		vmovapd	.LC26(%rip), %ymm2
 430      00000000 
 431 053c C5ED5994 		vmulpd	992(%rsp), %ymm2, %ymm2
 431      24E00300 
 431      00
 432 0545 C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 433 0549 C5FD2815 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 433      00000000 
 434 0551 C5FD5884 		vaddpd	1760(%rsp), %ymm0, %ymm0
 434      24E00600 
 434      00
 435 055a C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
 435      24200600 
 435      00
 436              	.L24:
 437 0563 C5FD2802 		vmovapd	(%rdx), %ymm0
 438 0567 4883C240 		addq	$64, %rdx
 439 056b 4883C120 		addq	$32, %rcx
 440 056f C5FD2982 		vmovapd	%ymm0, -1248(%rdx)
 440      20FBFFFF 
 441 0577 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 441      E0
 442 057c C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 442      00000000 
 443 0584 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 443      C008
 444 058a C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 444      D808
 445 0590 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 445      24E00000 
 445      00
 446 0599 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 446      00000000 
 447 05a1 C5FB10AC 		vmovsd	224(%rsp), %xmm5
 447      24E00000 
 447      00
 448 05aa C5FB10B4 		vmovsd	232(%rsp), %xmm6
 448      24E80000 
 448      00
 449 05b3 C461FB2C 		vcvttsd2siq	%xmm5, %r11
 449      DD
 450 05b8 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 450      00000000 
 451 05c0 C461FB2C 		vcvttsd2siq	%xmm6, %r9
GAS LISTING /tmp/cclDueTb.s 			page 14


 451      CE
 452 05c5 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 452      00000000 
 453 05cd C57B1084 		vmovsd	248(%rsp), %xmm8
 453      24F80000 
 453      00
 454 05d6 C5FB10BC 		vmovsd	240(%rsp), %xmm7
 454      24F00000 
 454      00
 455 05df C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 456 05e3 C461FB2C 		vcvttsd2siq	%xmm7, %r14
 456      F7
 457 05e8 4C899C24 		movq	%r11, 192(%rsp)
 457      C0000000 
 458 05f0 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 458      24C00000 
 458      00
 459 05f9 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 460 05fd C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 460      F101
 461 0603 C441FB2C 		vcvttsd2siq	%xmm8, %r9
 461      C8
 462 0608 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 463 060c 4C89B424 		movq	%r14, 192(%rsp)
 463      C0000000 
 464 0614 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 464      24C00000 
 464      00
 465 061d C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 466 0621 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 466      F901
 467 0627 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 467      00000000 
 468 062f C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 469 0633 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 469      00000000 
 470 063b C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 470      00000000 
 471 0643 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 471      00000000 
 472 064b C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 473 064f C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 473      00000000 
 474 0657 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 474      00000000 
 475 065f C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 475      D8
 476 0664 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 476      DC
 477 0669 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 478 066d C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 478      00000000 
 479 0675 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 479      D3
 480 067a C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 480      00000000 
 481 0682 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
GAS LISTING /tmp/cclDueTb.s 			page 15


 481      00000000 
 482 068a C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 482      00000000 
 483 0692 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 483      C0
 484 0697 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 484      C3
 485 069c C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 485      00000000 
 486 06a4 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 486      00000000 
 487 06ac C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 488 06b0 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 488      C0
 489 06b5 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 490 06b9 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 490      00000000 
 491 06c1 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 491      D8
 492 06c6 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 492      00000000 
 493 06ce C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 493      D2
 494 06d3 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 495 06d7 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 495      E301
 496 06dd C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 496      C1
 497 06e2 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 497      C6
 498 06e7 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 498      F301
 499 06ed C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 500 06f1 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 500      00000000 
 501 06f9 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 502 06fd C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 502      00000000 
 503 0705 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 503      15000000 
 503      00
 504 070e C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 504      00000000 
 505 0716 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 505      C1
 506 071b C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 506      C6
 507 0720 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 507      1D000000 
 507      00
 508 0729 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 508      C001
 509 072f C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 509      05000000 
 509      00
 510 0738 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 510      DE
GAS LISTING /tmp/cclDueTb.s 			page 16


 511 073d C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 511      D001
 512 0743 C5F928C4 		vmovapd	%xmm4, %xmm0
 513 0747 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 513      01
 514 074c C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 514      00000000 
 515 0754 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 515      05000000 
 515      00
 516 075d C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 516      C6
 517 0762 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 517      C301
 518 0768 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 519 076c C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 519      00000000 
 520 0774 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 520      00000000 
 521 077c C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 521      00000000 
 522 0784 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 522      ED40
 523 078a C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 523      D940
 524 0790 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 524      3E
 525 0795 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 525      E580
 526 079b C5FD2899 		vmovapd	160(%rcx), %ymm3
 526      A0000000 
 527 07a3 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 527      3E
 528 07a8 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 528      F801
 529 07ae C5FD2842 		vmovapd	-96(%rdx), %ymm0
 529      A0
 530 07b3 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 530      C0
 531 07b8 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 532 07bc C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 533 07c0 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 534 07c4 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 535 07c8 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 536 07cc C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 537 07d0 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 538 07d4 C5FD2982 		vmovapd	%ymm0, -1216(%rdx)
 538      40FBFFFF 
 539 07dc 4839C2   		cmpq	%rax, %rdx
 540 07df 0F857EFD 		jne	.L24
 540      FFFF
 541 07e5 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 541      00000000 
 542 07ed C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 542      C9
 543 07f2 C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 543      00000000 
GAS LISTING /tmp/cclDueTb.s 			page 17


 544 07fa C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 544      ED
 545 07ff C5CD5984 		vmulpd	256(%rsp), %ymm6, %ymm0
 545      24000100 
 545      00
 546 0808 C5FD28EE 		vmovapd	%ymm6, %ymm5
 547 080c 4889F9   		movq	%rdi, %rcx
 548 080f 4C89C2   		movq	%r8, %rdx
 549 0812 C5C5599C 		vmulpd	832(%rsp), %ymm7, %ymm3
 549      24400300 
 549      00
 550 081b C5C559A4 		vmulpd	864(%rsp), %ymm7, %ymm4
 550      24600300 
 550      00
 551 0824 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 552 0828 C5FD2884 		vmovapd	1888(%rsp), %ymm0
 552      24600700 
 552      00
 553 0831 C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 554 0835 C5E5589C 		vaddpd	1600(%rsp), %ymm3, %ymm3
 554      24400600 
 554      00
 555 083e C5FD299C 		vmovapd	%ymm3, 1408(%rsp)
 555      24800500 
 555      00
 556 0847 C5CD599C 		vmulpd	288(%rsp), %ymm6, %ymm3
 556      24200100 
 556      00
 557 0850 C5FD28F7 		vmovapd	%ymm7, %ymm6
 558 0854 C5FD28FD 		vmovapd	%ymm5, %ymm7
 559 0858 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 560 085c C5CD59A4 		vmulpd	928(%rsp), %ymm6, %ymm4
 560      24A00300 
 560      00
 561 0865 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 562 0869 C5CD599C 		vmulpd	896(%rsp), %ymm6, %ymm3
 562      24800300 
 562      00
 563 0872 C5FD5884 		vaddpd	1632(%rsp), %ymm0, %ymm0
 563      24600600 
 563      00
 564 087b C5FD2984 		vmovapd	%ymm0, 1440(%rsp)
 564      24A00500 
 564      00
 565 0884 C5D55984 		vmulpd	320(%rsp), %ymm5, %ymm0
 565      24400100 
 565      00
 566 088d C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 567 0891 C5FD2884 		vmovapd	1920(%rsp), %ymm0
 567      24800700 
 567      00
 568 089a C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 569 089e C5E5589C 		vaddpd	1664(%rsp), %ymm3, %ymm3
 569      24800600 
 569      00
 570 08a7 C5FD299C 		vmovapd	%ymm3, 1472(%rsp)
 570      24C00500 
GAS LISTING /tmp/cclDueTb.s 			page 18


 570      00
 571 08b0 C5C5599C 		vmulpd	352(%rsp), %ymm7, %ymm3
 571      24600100 
 571      00
 572 08b9 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 573 08bd C5CD59A4 		vmulpd	992(%rsp), %ymm6, %ymm4
 573      24E00300 
 573      00
 574 08c6 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 575 08ca C5CD599C 		vmulpd	960(%rsp), %ymm6, %ymm3
 575      24C00300 
 575      00
 576 08d3 C5FD5884 		vaddpd	1696(%rsp), %ymm0, %ymm0
 576      24A00600 
 576      00
 577 08dc C5FD2984 		vmovapd	%ymm0, 1504(%rsp)
 577      24E00500 
 577      00
 578 08e5 C5C55984 		vmulpd	384(%rsp), %ymm7, %ymm0
 578      24800100 
 578      00
 579 08ee C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 580 08f2 C5FD2884 		vmovapd	1952(%rsp), %ymm0
 580      24A00700 
 580      00
 581 08fb C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 582 08ff C5E5589C 		vaddpd	1728(%rsp), %ymm3, %ymm3
 582      24C00600 
 582      00
 583 0908 C5FD299C 		vmovapd	%ymm3, 1536(%rsp)
 583      24000600 
 583      00
 584 0911 C5C5599C 		vmulpd	416(%rsp), %ymm7, %ymm3
 584      24A00100 
 584      00
 585 091a C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 586 091e C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 587 0922 C5FD5884 		vaddpd	1760(%rsp), %ymm0, %ymm0
 587      24E00600 
 587      00
 588 092b C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
 588      24200600 
 588      00
 589              	.L26:
 590 0934 C5FD2802 		vmovapd	(%rdx), %ymm0
 591 0938 4883C240 		addq	$64, %rdx
 592 093c 4883C120 		addq	$32, %rcx
 593 0940 C5FD2982 		vmovapd	%ymm0, -480(%rdx)
 593      20FEFFFF 
 594 0948 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 594      E0
 595 094d C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 595      00000000 
 596 0955 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 596      C008
 597 095b C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 597      D808
GAS LISTING /tmp/cclDueTb.s 			page 19


 598 0961 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 598      24E00000 
 598      00
 599 096a C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 599      00000000 
 600 0972 C57B1094 		vmovsd	224(%rsp), %xmm10
 600      24E00000 
 600      00
 601 097b C57B109C 		vmovsd	232(%rsp), %xmm11
 601      24E80000 
 601      00
 602 0984 C441FB2C 		vcvttsd2siq	%xmm10, %r10
 602      D2
 603 0989 C441FB2C 		vcvttsd2siq	%xmm11, %r9
 603      CB
 604 098e C5FB109C 		vmovsd	248(%rsp), %xmm3
 604      24F80000 
 604      00
 605 0997 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 606 099b C57B10A4 		vmovsd	240(%rsp), %xmm12
 606      24F00000 
 606      00
 607 09a4 C441FB2C 		vcvttsd2siq	%xmm12, %r11
 607      DC
 608 09a9 4C899424 		movq	%r10, 192(%rsp)
 608      C0000000 
 609 09b1 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 609      24C00000 
 609      00
 610 09ba C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 610      F101
 611 09c0 C461FB2C 		vcvttsd2siq	%xmm3, %r9
 611      CB
 612 09c5 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 612      00000000 
 613 09cd C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 613      00000000 
 614 09d5 4C899C24 		movq	%r11, 192(%rsp)
 614      C0000000 
 615 09dd C5FA7EBC 		vmovq	192(%rsp), %xmm7
 615      24C00000 
 615      00
 616 09e6 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 617 09ea C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 617      F901
 618 09f0 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 619 09f4 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 620 09f8 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 620      00000000 
 621 0a00 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 622 0a04 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 622      00000000 
 623 0a0c C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 623      00000000 
 624 0a14 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 624      00000000 
 625 0a1c C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
GAS LISTING /tmp/cclDueTb.s 			page 20


 626 0a20 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 626      00000000 
 627 0a28 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 627      00000000 
 628 0a30 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 628      D8
 629 0a35 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 629      DC
 630 0a3a C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 631 0a3e C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 631      00000000 
 632 0a46 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 632      D3
 633 0a4b C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 633      00000000 
 634 0a53 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 634      00000000 
 635 0a5b C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 635      00000000 
 636 0a63 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 636      C0
 637 0a68 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 637      C3
 638 0a6d C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 638      00000000 
 639 0a75 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 639      00000000 
 640 0a7d C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 641 0a81 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 641      C0
 642 0a86 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 643 0a8a C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 643      00000000 
 644 0a92 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 644      D8
 645 0a97 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 645      00000000 
 646 0a9f C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 646      D2
 647 0aa4 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 648 0aa8 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 648      E301
 649 0aae C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 649      C1
 650 0ab3 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 650      C6
 651 0ab8 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 651      F301
 652 0abe C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 653 0ac2 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 653      00000000 
 654 0aca C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 655 0ace C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 655      00000000 
 656 0ad6 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 656      15000000 
 656      00
GAS LISTING /tmp/cclDueTb.s 			page 21


 657 0adf C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 657      00000000 
 658 0ae7 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 658      C1
 659 0aec C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 659      C6
 660 0af1 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 660      1D000000 
 660      00
 661 0afa C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 661      C001
 662 0b00 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 662      05000000 
 662      00
 663 0b09 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 663      DE
 664 0b0e C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 664      D001
 665 0b14 C5F928C4 		vmovapd	%xmm4, %xmm0
 666 0b18 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 666      01
 667 0b1d C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 667      00000000 
 668 0b25 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 668      05000000 
 668      00
 669 0b2e C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 669      C6
 670 0b33 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 670      C301
 671 0b39 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 672 0b3d C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 672      00000000 
 673 0b45 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 673      00000000 
 674 0b4d C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 674      00000000 
 675 0b55 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 675      ED40
 676 0b5b C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 676      D940
 677 0b61 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 677      3E
 678 0b66 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 678      E580
 679 0b6c C5FD2899 		vmovapd	160(%rcx), %ymm3
 679      A0000000 
 680 0b74 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 680      3E
 681 0b79 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 681      F801
 682 0b7f C5FD2842 		vmovapd	-96(%rdx), %ymm0
 682      A0
 683 0b84 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 683      C0
 684 0b89 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 685 0b8d C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
GAS LISTING /tmp/cclDueTb.s 			page 22


 686 0b91 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 687 0b95 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 688 0b99 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 689 0b9d C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 690 0ba1 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 691 0ba5 C5FD2982 		vmovapd	%ymm0, -448(%rdx)
 691      40FEFFFF 
 692 0bad 4839D0   		cmpq	%rdx, %rax
 693 0bb0 0F857EFD 		jne	.L26
 693      FFFF
 694 0bb6 C5FD282D 		vmovapd	.LC30(%rip), %ymm5
 694      00000000 
 695 0bbe C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 695      C9
 696 0bc3 C58559A4 		vmulpd	832(%rsp), %ymm15, %ymm4
 696      24400300 
 696      00
 697 0bcc 4889F9   		movq	%rdi, %rcx
 698 0bcf C5FD283D 		vmovapd	.LC29(%rip), %ymm7
 698      00000000 
 699 0bd7 4C89C2   		movq	%r8, %rdx
 700 0bda C5D55984 		vmulpd	256(%rsp), %ymm5, %ymm0
 700      24000100 
 700      00
 701 0be3 C5C5599C 		vmulpd	1024(%rsp), %ymm7, %ymm3
 701      24000400 
 701      00
 702 0bec C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 702      ED
 703 0bf1 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 704 0bf5 C58559A4 		vmulpd	864(%rsp), %ymm15, %ymm4
 704      24600300 
 704      00
 705 0bfe C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 706 0c02 C5C5599C 		vmulpd	1056(%rsp), %ymm7, %ymm3
 706      24200400 
 706      00
 707 0c0b C5FD5984 		vmulpd	1888(%rsp), %ymm0, %ymm0
 707      24600700 
 707      00
 708 0c14 C5FD5884 		vaddpd	1600(%rsp), %ymm0, %ymm0
 708      24400600 
 708      00
 709 0c1d C5FD2984 		vmovapd	%ymm0, 1408(%rsp)
 709      24800500 
 709      00
 710 0c26 C5D55984 		vmulpd	288(%rsp), %ymm5, %ymm0
 710      24200100 
 710      00
 711 0c2f C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 712 0c33 C58559A4 		vmulpd	896(%rsp), %ymm15, %ymm4
 712      24800300 
 712      00
 713 0c3c C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 714 0c40 C5C5599C 		vmulpd	1088(%rsp), %ymm7, %ymm3
 714      24400400 
 714      00
GAS LISTING /tmp/cclDueTb.s 			page 23


 715 0c49 C5FD5984 		vmulpd	1888(%rsp), %ymm0, %ymm0
 715      24600700 
 715      00
 716 0c52 C5FD5884 		vaddpd	1632(%rsp), %ymm0, %ymm0
 716      24600600 
 716      00
 717 0c5b C5FD2984 		vmovapd	%ymm0, 1440(%rsp)
 717      24A00500 
 717      00
 718 0c64 C5D55984 		vmulpd	320(%rsp), %ymm5, %ymm0
 718      24400100 
 718      00
 719 0c6d C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 720 0c71 C58559A4 		vmulpd	928(%rsp), %ymm15, %ymm4
 720      24A00300 
 720      00
 721 0c7a C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 722 0c7e C5C5599C 		vmulpd	1120(%rsp), %ymm7, %ymm3
 722      24600400 
 722      00
 723 0c87 C5FD5984 		vmulpd	1920(%rsp), %ymm0, %ymm0
 723      24800700 
 723      00
 724 0c90 C5FD5884 		vaddpd	1664(%rsp), %ymm0, %ymm0
 724      24800600 
 724      00
 725 0c99 C5FD2984 		vmovapd	%ymm0, 1472(%rsp)
 725      24C00500 
 725      00
 726 0ca2 C5D55984 		vmulpd	352(%rsp), %ymm5, %ymm0
 726      24600100 
 726      00
 727 0cab C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 728 0caf C58559A4 		vmulpd	960(%rsp), %ymm15, %ymm4
 728      24C00300 
 728      00
 729 0cb8 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 730 0cbc C5C5599C 		vmulpd	1152(%rsp), %ymm7, %ymm3
 730      24800400 
 730      00
 731 0cc5 C5FD5984 		vmulpd	1920(%rsp), %ymm0, %ymm0
 731      24800700 
 731      00
 732 0cce C5FD5884 		vaddpd	1696(%rsp), %ymm0, %ymm0
 732      24A00600 
 732      00
 733 0cd7 C5FD2984 		vmovapd	%ymm0, 1504(%rsp)
 733      24E00500 
 733      00
 734 0ce0 C5D55984 		vmulpd	384(%rsp), %ymm5, %ymm0
 734      24800100 
 734      00
 735 0ce9 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 736 0ced C58559A4 		vmulpd	992(%rsp), %ymm15, %ymm4
 736      24E00300 
 736      00
 737 0cf6 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
GAS LISTING /tmp/cclDueTb.s 			page 24


 738 0cfa C5C5599C 		vmulpd	1184(%rsp), %ymm7, %ymm3
 738      24A00400 
 738      00
 739 0d03 C5FD5984 		vmulpd	1952(%rsp), %ymm0, %ymm0
 739      24A00700 
 739      00
 740 0d0c C5FD5884 		vaddpd	1728(%rsp), %ymm0, %ymm0
 740      24C00600 
 740      00
 741 0d15 C5FD2984 		vmovapd	%ymm0, 1536(%rsp)
 741      24000600 
 741      00
 742 0d1e C5D55984 		vmulpd	416(%rsp), %ymm5, %ymm0
 742      24A00100 
 742      00
 743 0d27 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 744 0d2b C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 745 0d2f C5FD5984 		vmulpd	1952(%rsp), %ymm0, %ymm0
 745      24A00700 
 745      00
 746 0d38 C5FD5884 		vaddpd	1760(%rsp), %ymm0, %ymm0
 746      24E00600 
 746      00
 747 0d41 C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
 747      24200600 
 747      00
 748              	.L28:
 749 0d4a C5FD2802 		vmovapd	(%rdx), %ymm0
 750 0d4e 4883C240 		addq	$64, %rdx
 751 0d52 4883C120 		addq	$32, %rcx
 752 0d56 C5FD2982 		vmovapd	%ymm0, -288(%rdx)
 752      E0FEFFFF 
 753 0d5e C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 753      E0
 754 0d63 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 754      00000000 
 755 0d6b C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 755      C008
 756 0d71 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 756      D808
 757 0d77 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 757      24E00000 
 757      00
 758 0d80 C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 758      00000000 
 759 0d88 C5FB10AC 		vmovsd	224(%rsp), %xmm5
 759      24E00000 
 759      00
 760 0d91 C5FB10B4 		vmovsd	232(%rsp), %xmm6
 760      24E80000 
 760      00
 761 0d9a C461FB2C 		vcvttsd2siq	%xmm5, %r14
 761      F5
 762 0d9f C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 762      00000000 
 763 0da7 C461FB2C 		vcvttsd2siq	%xmm6, %r9
 763      CE
GAS LISTING /tmp/cclDueTb.s 			page 25


 764 0dac C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 764      00000000 
 765 0db4 C57B1084 		vmovsd	248(%rsp), %xmm8
 765      24F80000 
 765      00
 766 0dbd C5FB10BC 		vmovsd	240(%rsp), %xmm7
 766      24F00000 
 766      00
 767 0dc6 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 768 0dca C461FB2C 		vcvttsd2siq	%xmm7, %r10
 768      D7
 769 0dcf 4C89B424 		movq	%r14, 192(%rsp)
 769      C0000000 
 770 0dd7 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 770      24C00000 
 770      00
 771 0de0 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 772 0de4 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 772      F101
 773 0dea C441FB2C 		vcvttsd2siq	%xmm8, %r9
 773      C8
 774 0def C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 775 0df3 4C899424 		movq	%r10, 192(%rsp)
 775      C0000000 
 776 0dfb C5FA7EBC 		vmovq	192(%rsp), %xmm7
 776      24C00000 
 776      00
 777 0e04 C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 778 0e08 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 778      F901
 779 0e0e C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 779      00000000 
 780 0e16 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 781 0e1a C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 781      00000000 
 782 0e22 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 782      00000000 
 783 0e2a C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 783      00000000 
 784 0e32 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 785 0e36 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 785      00000000 
 786 0e3e C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 786      00000000 
 787 0e46 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 787      D8
 788 0e4b C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 788      DC
 789 0e50 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 790 0e54 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 790      00000000 
 791 0e5c C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 791      D3
 792 0e61 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 792      00000000 
 793 0e69 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 793      00000000 
GAS LISTING /tmp/cclDueTb.s 			page 26


 794 0e71 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 794      00000000 
 795 0e79 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 795      C0
 796 0e7e C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 796      C3
 797 0e83 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 797      00000000 
 798 0e8b C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 798      00000000 
 799 0e93 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 800 0e97 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 800      C0
 801 0e9c C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 802 0ea0 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 802      00000000 
 803 0ea8 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 803      D8
 804 0ead C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 804      00000000 
 805 0eb5 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 805      D2
 806 0eba C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 807 0ebe C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 807      E301
 808 0ec4 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 808      C1
 809 0ec9 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 809      C6
 810 0ece C4C12173 		vpsllq	$1, %xmm11, %xmm11
 810      F301
 811 0ed4 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 812 0ed8 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 812      00000000 
 813 0ee0 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 814 0ee4 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 814      00000000 
 815 0eec C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 815      15000000 
 815      00
 816 0ef5 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 816      00000000 
 817 0efd C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 817      C1
 818 0f02 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 818      C6
 819 0f07 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 819      1D000000 
 819      00
 820 0f10 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 820      C001
 821 0f16 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 821      05000000 
 821      00
 822 0f1f C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 822      DE
 823 0f24 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
GAS LISTING /tmp/cclDueTb.s 			page 27


 823      D001
 824 0f2a C5F928C4 		vmovapd	%xmm4, %xmm0
 825 0f2e C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 825      01
 826 0f33 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 826      00000000 
 827 0f3b C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 827      05000000 
 827      00
 828 0f44 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 828      C6
 829 0f49 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 829      C301
 830 0f4f C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 831 0f53 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 831      00000000 
 832 0f5b C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 832      00000000 
 833 0f63 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 833      00000000 
 834 0f6b C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 834      ED40
 835 0f71 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 835      D940
 836 0f77 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 836      3E
 837 0f7c C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 837      E580
 838 0f82 C5FD2899 		vmovapd	160(%rcx), %ymm3
 838      A0000000 
 839 0f8a C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 839      3E
 840 0f8f C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 840      F801
 841 0f95 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 841      A0
 842 0f9a C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 842      C0
 843 0f9f C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 844 0fa3 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 845 0fa7 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 846 0fab C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 847 0faf C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 848 0fb3 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 849 0fb7 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 850 0fbb C5FD2982 		vmovapd	%ymm0, -256(%rdx)
 850      00FFFFFF 
 851 0fc3 4839D0   		cmpq	%rdx, %rax
 852 0fc6 0F857EFD 		jne	.L28
 852      FFFF
 853 0fcc 488D8C24 		leaq	256(%rsp), %rcx
 853      00010000 
 854 0fd4 4889CA   		movq	%rcx, %rdx
 855              	.L30:
 856 0fd7 C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 856      00000000 
 857 0fdf 4883C240 		addq	$64, %rdx
GAS LISTING /tmp/cclDueTb.s 			page 28


 858 0fe3 4883C120 		addq	$32, %rcx
 859 0fe7 C5CD599A 		vmulpd	896(%rdx), %ymm6, %ymm3
 859      80030000 
 860 0fef C5FD2835 		vmovapd	.LC32(%rip), %ymm6
 860      00000000 
 861 0ff7 C5CD59A2 		vmulpd	704(%rdx), %ymm6, %ymm4
 861      C0020000 
 862 0fff C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 862      00000000 
 863 1007 C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 863      C0
 864 100c C5FD2835 		vmovapd	.LC34(%rip), %ymm6
 864      00000000 
 865 1014 C5CD59AA 		vmulpd	512(%rdx), %ymm6, %ymm5
 865      00020000 
 866 101c C5FD2835 		vmovapd	.LC31(%rip), %ymm6
 866      00000000 
 867 1024 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 868 1028 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 869 102c C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 870 1030 C5CD599A 		vmulpd	928(%rdx), %ymm6, %ymm3
 870      A0030000 
 871 1038 C5FD2835 		vmovapd	.LC32(%rip), %ymm6
 871      00000000 
 872 1040 C5CD59A2 		vmulpd	736(%rdx), %ymm6, %ymm4
 872      E0020000 
 873 1048 C5FD2835 		vmovapd	.LC33(%rip), %ymm6
 873      00000000 
 874 1050 C5FD5981 		vmulpd	1600(%rcx), %ymm0, %ymm0
 874      40060000 
 875 1058 C5FD5882 		vaddpd	1280(%rdx), %ymm0, %ymm0
 875      00050000 
 876 1060 C5FD2982 		vmovapd	%ymm0, 1088(%rdx)
 876      40040000 
 877 1068 C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 877      E0
 878 106d C5FD2835 		vmovapd	.LC34(%rip), %ymm6
 878      00000000 
 879 1075 C5CD59AA 		vmulpd	544(%rdx), %ymm6, %ymm5
 879      20020000 
 880 107d C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 881 1081 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 882 1085 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 883 1089 C5FD5981 		vmulpd	1600(%rcx), %ymm0, %ymm0
 883      40060000 
 884 1091 C5FD5882 		vaddpd	1312(%rdx), %ymm0, %ymm0
 884      20050000 
 885 1099 C5FD2982 		vmovapd	%ymm0, 1120(%rdx)
 885      60040000 
 886 10a1 4839F2   		cmpq	%rsi, %rdx
 887 10a4 0F852DFF 		jne	.L30
 887      FFFF
 888 10aa C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 888      C9
 889 10af 4889F9   		movq	%rdi, %rcx
 890 10b2 4C89C2   		movq	%r8, %rdx
 891 10b5 C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
GAS LISTING /tmp/cclDueTb.s 			page 29


 891      ED
 892              	.L32:
 893 10ba C5FD2802 		vmovapd	(%rdx), %ymm0
 894 10be 4883C240 		addq	$64, %rdx
 895 10c2 4883C120 		addq	$32, %rcx
 896 10c6 C5FD2982 		vmovapd	%ymm0, -864(%rdx)
 896      A0FCFFFF 
 897 10ce C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 897      E0
 898 10d3 C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 898      00000000 
 899 10db C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 899      C008
 900 10e1 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 900      D808
 901 10e7 C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 901      24E00000 
 901      00
 902 10f0 C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 902      00000000 
 903 10f8 C57B1094 		vmovsd	224(%rsp), %xmm10
 903      24E00000 
 903      00
 904 1101 C57B109C 		vmovsd	232(%rsp), %xmm11
 904      24E80000 
 904      00
 905 110a C441FB2C 		vcvttsd2siq	%xmm10, %r11
 905      DA
 906 110f C441FB2C 		vcvttsd2siq	%xmm11, %r9
 906      CB
 907 1114 C5FB109C 		vmovsd	248(%rsp), %xmm3
 907      24F80000 
 907      00
 908 111d C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 909 1121 C57B10A4 		vmovsd	240(%rsp), %xmm12
 909      24F00000 
 909      00
 910 112a C441FB2C 		vcvttsd2siq	%xmm12, %r14
 910      F4
 911 112f 4C899C24 		movq	%r11, 192(%rsp)
 911      C0000000 
 912 1137 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 912      24C00000 
 912      00
 913 1140 C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 913      F101
 914 1146 C461FB2C 		vcvttsd2siq	%xmm3, %r9
 914      CB
 915 114b C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 915      00000000 
 916 1153 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 916      00000000 
 917 115b 4C89B424 		movq	%r14, 192(%rsp)
 917      C0000000 
 918 1163 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 918      24C00000 
 918      00
GAS LISTING /tmp/cclDueTb.s 			page 30


 919 116c C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 920 1170 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 920      F901
 921 1176 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 922 117a C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 923 117e C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 923      00000000 
 924 1186 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 925 118a C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 925      00000000 
 926 1192 C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 926      00000000 
 927 119a C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 927      00000000 
 928 11a2 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 929 11a6 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 929      00000000 
 930 11ae C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 930      00000000 
 931 11b6 C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 931      D8
 932 11bb C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 932      DC
 933 11c0 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 934 11c4 C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 934      00000000 
 935 11cc C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 935      D3
 936 11d1 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 936      00000000 
 937 11d9 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 937      00000000 
 938 11e1 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 938      00000000 
 939 11e9 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 939      C0
 940 11ee C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 940      C3
 941 11f3 C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 941      00000000 
 942 11fb C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 942      00000000 
 943 1203 C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 944 1207 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 944      C0
 945 120c C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 946 1210 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 946      00000000 
 947 1218 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 947      D8
 948 121d C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 948      00000000 
 949 1225 C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 949      D2
 950 122a C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 951 122e C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 951      E301
GAS LISTING /tmp/cclDueTb.s 			page 31


 952 1234 C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 952      C1
 953 1239 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 953      C6
 954 123e C4C12173 		vpsllq	$1, %xmm11, %xmm11
 954      F301
 955 1244 C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 956 1248 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 956      00000000 
 957 1250 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 958 1254 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 958      00000000 
 959 125c C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 959      15000000 
 959      00
 960 1265 C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 960      00000000 
 961 126d C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 961      C1
 962 1272 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 962      C6
 963 1277 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 963      1D000000 
 963      00
 964 1280 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 964      C001
 965 1286 C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 965      05000000 
 965      00
 966 128f C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 966      DE
 967 1294 C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 967      D001
 968 129a C5F928C4 		vmovapd	%xmm4, %xmm0
 969 129e C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 969      01
 970 12a3 C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 970      00000000 
 971 12ab C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 971      05000000 
 971      00
 972 12b4 C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 972      C6
 973 12b9 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 973      C301
 974 12bf C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 975 12c3 C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 975      00000000 
 976 12cb C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 976      00000000 
 977 12d3 C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 977      00000000 
 978 12db C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 978      ED40
 979 12e1 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 979      D940
 980 12e7 C5C173F7 		vpsllq	$62, %xmm7, %xmm7
GAS LISTING /tmp/cclDueTb.s 			page 32


 980      3E
 981 12ec C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 981      E580
 982 12f2 C5FD2899 		vmovapd	160(%rcx), %ymm3
 982      A0000000 
 983 12fa C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 983      3E
 984 12ff C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 984      F801
 985 1305 C5FD2842 		vmovapd	-96(%rdx), %ymm0
 985      A0
 986 130a C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 986      C0
 987 130f C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 988 1313 C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
 989 1317 C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 990 131b C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 991 131f C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 992 1323 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 993 1327 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 994 132b C5FD2982 		vmovapd	%ymm0, -832(%rdx)
 994      C0FCFFFF 
 995 1333 4839D0   		cmpq	%rdx, %rax
 996 1336 0F857EFD 		jne	.L32
 996      FFFF
 997 133c 488D8C24 		leaq	256(%rsp), %rcx
 997      00010000 
 998 1344 4889CA   		movq	%rcx, %rdx
 999              	.L34:
 1000 1347 C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 1000      00000000 
 1001 134f 4883C240 		addq	$64, %rdx
 1002 1353 4883C120 		addq	$32, %rcx
 1003 1357 C5CD599A 		vmulpd	320(%rdx), %ymm6, %ymm3
 1003      40010000 
 1004 135f C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 1004      00000000 
 1005 1367 C5CD59A2 		vmulpd	896(%rdx), %ymm6, %ymm4
 1005      80030000 
 1006 136f C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 1006      00000000 
 1007 1377 C5CD59AA 		vmulpd	704(%rdx), %ymm6, %ymm5
 1007      C0020000 
 1008 137f C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 1008      00000000 
 1009 1387 C5CD5942 		vmulpd	-64(%rdx), %ymm6, %ymm0
 1009      C0
 1010 138c C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 1010      00000000 
 1011 1394 C5CD59B2 		vmulpd	512(%rdx), %ymm6, %ymm6
 1011      00020000 
 1012 139c C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1013 13a0 C5FD2835 		vmovapd	.LC35(%rip), %ymm6
 1013      00000000 
 1014 13a8 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1015 13ac C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1016 13b0 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
GAS LISTING /tmp/cclDueTb.s 			page 33


 1017 13b4 C5CD599A 		vmulpd	352(%rdx), %ymm6, %ymm3
 1017      60010000 
 1018 13bc C5FD2835 		vmovapd	.LC36(%rip), %ymm6
 1018      00000000 
 1019 13c4 C5CD59A2 		vmulpd	928(%rdx), %ymm6, %ymm4
 1019      A0030000 
 1020 13cc C5FD2835 		vmovapd	.LC37(%rip), %ymm6
 1020      00000000 
 1021 13d4 C5FD5981 		vmulpd	1600(%rcx), %ymm0, %ymm0
 1021      40060000 
 1022 13dc C5CD59AA 		vmulpd	736(%rdx), %ymm6, %ymm5
 1022      E0020000 
 1023 13e4 C5FD2835 		vmovapd	.LC38(%rip), %ymm6
 1023      00000000 
 1024 13ec C5FD5882 		vaddpd	1280(%rdx), %ymm0, %ymm0
 1024      00050000 
 1025 13f4 C5FD2982 		vmovapd	%ymm0, 1088(%rdx)
 1025      40040000 
 1026 13fc C5CD5942 		vmulpd	-32(%rdx), %ymm6, %ymm0
 1026      E0
 1027 1401 C5FD2835 		vmovapd	.LC39(%rip), %ymm6
 1027      00000000 
 1028 1409 C5CD59B2 		vmulpd	544(%rdx), %ymm6, %ymm6
 1028      20020000 
 1029 1411 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1030 1415 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1031 1419 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1032 141d C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1033 1421 C5FD5981 		vmulpd	1600(%rcx), %ymm0, %ymm0
 1033      40060000 
 1034 1429 C5FD5882 		vaddpd	1312(%rdx), %ymm0, %ymm0
 1034      20050000 
 1035 1431 C5FD2982 		vmovapd	%ymm0, 1120(%rdx)
 1035      60040000 
 1036 1439 4839D6   		cmpq	%rdx, %rsi
 1037 143c 0F8505FF 		jne	.L34
 1037      FFFF
 1038 1442 C44131EF 		vpxor	%xmm9, %xmm9, %xmm9
 1038      C9
 1039 1447 4889F9   		movq	%rdi, %rcx
 1040 144a 4C89C2   		movq	%r8, %rdx
 1041 144d C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 1041      ED
 1042              	.L36:
 1043 1452 C5FD2802 		vmovapd	(%rdx), %ymm0
 1044 1456 4883C240 		addq	$64, %rdx
 1045 145a 4883C120 		addq	$32, %rcx
 1046 145e C5FD2982 		vmovapd	%ymm0, -1056(%rdx)
 1046      E0FBFFFF 
 1047 1466 C5ED5461 		vandpd	-32(%rcx), %ymm2, %ymm4
 1047      E0
 1048 146b C5DD5905 		vmulpd	.LC3(%rip), %ymm4, %ymm0
 1048      00000000 
 1049 1473 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 1049      C008
 1050 1479 C4E37D09 		vroundpd	$8, %ymm0, %ymm3
 1050      D808
GAS LISTING /tmp/cclDueTb.s 			page 34


 1051 147f C5FD119C 		vmovupd	%ymm3, 224(%rsp)
 1051      24E00000 
 1051      00
 1052 1488 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1052      24E80000 
 1052      00
 1053 1491 C5FB109C 		vmovsd	224(%rsp), %xmm3
 1053      24E00000 
 1053      00
 1054 149a C461FB2C 		vcvttsd2siq	%xmm5, %r9
 1054      CD
 1055 149f C5FD592D 		vmulpd	.LC4(%rip), %ymm0, %ymm5
 1055      00000000 
 1056 14a7 C461FB2C 		vcvttsd2siq	%xmm3, %r15
 1056      FB
 1057 14ac C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 1057      00000000 
 1058 14b4 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 1058      00000000 
 1059 14bc C57B1084 		vmovsd	248(%rsp), %xmm8
 1059      24F80000 
 1059      00
 1060 14c5 C5DD5CED 		vsubpd	%ymm5, %ymm4, %ymm5
 1061 14c9 C5FB10BC 		vmovsd	240(%rsp), %xmm7
 1061      24F00000 
 1061      00
 1062 14d2 C461FB2C 		vcvttsd2siq	%xmm7, %r10
 1062      D7
 1063 14d7 C5D55CEB 		vsubpd	%ymm3, %ymm5, %ymm5
 1064 14db 4C89BC24 		movq	%r15, 192(%rsp)
 1064      C0000000 
 1065 14e3 C5FA7EB4 		vmovq	192(%rsp), %xmm6
 1065      24C00000 
 1065      00
 1066 14ec C4C3C922 		vpinsrq	$1, %r9, %xmm6, %xmm6
 1066      F101
 1067 14f2 C441FB2C 		vcvttsd2siq	%xmm8, %r9
 1067      C8
 1068 14f7 C5D55CE8 		vsubpd	%ymm0, %ymm5, %ymm5
 1069 14fb 4C899424 		movq	%r10, 192(%rsp)
 1069      C0000000 
 1070 1503 C5FA7EBC 		vmovq	192(%rsp), %xmm7
 1070      24C00000 
 1070      00
 1071 150c C5D559C5 		vmulpd	%ymm5, %ymm5, %ymm0
 1072 1510 C4C3C122 		vpinsrq	$1, %r9, %xmm7, %xmm7
 1072      F901
 1073 1516 C57D591D 		vmulpd	.LC9(%rip), %ymm0, %ymm11
 1073      00000000 
 1074 151e C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1075 1522 C57D5925 		vmulpd	.LC7(%rip), %ymm0, %ymm12
 1075      00000000 
 1076 152a C57D5915 		vmulpd	.LC11(%rip), %ymm0, %ymm10
 1076      00000000 
 1077 1532 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 1077      00000000 
 1078 153a C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
GAS LISTING /tmp/cclDueTb.s 			page 35


 1079 153e C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 1079      00000000 
 1080 1546 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 1080      00000000 
 1081 154e C4412559 		vmulpd	%ymm8, %ymm11, %ymm11
 1081      D8
 1082 1553 C4412558 		vaddpd	%ymm12, %ymm11, %ymm11
 1082      DC
 1083 1558 C52D59D3 		vmulpd	%ymm3, %ymm10, %ymm10
 1084 155c C57D5925 		vmulpd	.LC15(%rip), %ymm0, %ymm12
 1084      00000000 
 1085 1564 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1085      D3
 1086 1569 C57D591D 		vmulpd	.LC13(%rip), %ymm0, %ymm11
 1086      00000000 
 1087 1571 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 1087      00000000 
 1088 1579 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 1088      00000000 
 1089 1581 C4411D59 		vmulpd	%ymm8, %ymm12, %ymm8
 1089      C0
 1090 1586 C4413D58 		vaddpd	%ymm11, %ymm8, %ymm8
 1090      C3
 1091 158b C57D591D 		vmulpd	.LC17(%rip), %ymm0, %ymm11
 1091      00000000 
 1092 1593 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 1092      00000000 
 1093 159b C52559DB 		vmulpd	%ymm3, %ymm11, %ymm11
 1094 159f C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 1094      C0
 1095 15a4 C55559D8 		vmulpd	%ymm0, %ymm5, %ymm11
 1096 15a8 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 1096      00000000 
 1097 15b0 C4C16559 		vmulpd	%ymm8, %ymm3, %ymm3
 1097      D8
 1098 15b5 C549DB05 		vpand	.LC21(%rip), %xmm6, %xmm8
 1098      00000000 
 1099 15bd C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 1099      D2
 1100 15c2 C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 1101 15c6 C4C37D19 		vextractf128	$0x1, %ymm4, %xmm11
 1101      E301
 1102 15cc C4423929 		vpcmpeqq	%xmm9, %xmm8, %xmm8
 1102      C1
 1103 15d1 C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 1103      C6
 1104 15d6 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 1104      F301
 1105 15dc C5E558D8 		vaddpd	%ymm0, %ymm3, %ymm3
 1106 15e0 C5C1DB05 		vpand	.LC21(%rip), %xmm7, %xmm0
 1106      00000000 
 1107 15e8 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 1108 15ec C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 1108      00000000 
 1109 15f4 C4624937 		vpcmpgtq	.LC22(%rip), %xmm6, %xmm10
 1109      15000000 
 1109      00
GAS LISTING /tmp/cclDueTb.s 			page 36


 1110 15fd C5C9D435 		vpaddq	.LC21(%rip), %xmm6, %xmm6
 1110      00000000 
 1111 1605 C4C27929 		vpcmpeqq	%xmm9, %xmm0, %xmm0
 1111      C1
 1112 160a C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1112      C6
 1113 160f C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 1113      1D000000 
 1113      00
 1114 1618 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 1114      C001
 1115 161e C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm0
 1115      05000000 
 1115      00
 1116 1627 C44121EF 		vpxor	%xmm14, %xmm11, %xmm11
 1116      DE
 1117 162c C4632D18 		vinsertf128	$0x1, %xmm0, %ymm10, %ymm10
 1117      D001
 1118 1632 C5F928C4 		vmovapd	%xmm4, %xmm0
 1119 1636 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 1119      01
 1120 163b C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1120      00000000 
 1121 1643 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1121      05000000 
 1121      00
 1122 164c C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1122      C6
 1123 1651 C4C37D18 		vinsertf128	$0x1, %xmm11, %ymm0, %ymm0
 1123      C301
 1124 1657 C5AD54E0 		vandpd	%ymm0, %ymm10, %ymm4
 1125 165b C5C1D405 		vpaddq	.LC21(%rip), %xmm7, %xmm0
 1125      00000000 
 1126 1663 C5C9DB3D 		vpand	.LC24(%rip), %xmm6, %xmm7
 1126      00000000 
 1127 166b C5F9DB05 		vpand	.LC24(%rip), %xmm0, %xmm0
 1127      00000000 
 1128 1673 C4C3554B 		vblendvpd	%ymm4, %ymm13, %ymm5, %ymm5
 1128      ED40
 1129 1679 C4E3654B 		vblendvpd	%ymm4, %ymm1, %ymm3, %ymm3
 1129      D940
 1130 167f C5C173F7 		vpsllq	$62, %xmm7, %xmm7
 1130      3E
 1131 1684 C4E3654B 		vblendvpd	%ymm8, %ymm5, %ymm3, %ymm4
 1131      E580
 1132 168a C5FD2899 		vmovapd	160(%rcx), %ymm3
 1132      A0000000 
 1133 1692 C5F973F0 		vpsllq	$62, %xmm0, %xmm0
 1133      3E
 1134 1697 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 1134      F801
 1135 169d C5FD2842 		vmovapd	-96(%rdx), %ymm0
 1135      A0
 1136 16a2 C5E5595A 		vmulpd	-64(%rdx), %ymm3, %ymm3
 1136      C0
 1137 16a7 C5FD59E8 		vmulpd	%ymm0, %ymm0, %ymm5
 1138 16ab C5DD57E7 		vxorpd	%ymm7, %ymm4, %ymm4
GAS LISTING /tmp/cclDueTb.s 			page 37


 1139 16af C5F55CED 		vsubpd	%ymm5, %ymm1, %ymm5
 1140 16b3 C58559E4 		vmulpd	%ymm4, %ymm15, %ymm4
 1141 16b7 C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 1142 16bb C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1143 16bf C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1144 16c3 C5FD2982 		vmovapd	%ymm0, -1024(%rdx)
 1144      00FCFFFF 
 1145 16cb 4839C2   		cmpq	%rax, %rdx
 1146 16ce 0F857EFD 		jne	.L36
 1146      FFFF
 1147 16d4 488D9424 		leaq	256(%rsp), %rdx
 1147      00010000 
 1148 16dc 4531C9   		xorl	%r9d, %r9d
 1149 16df 4C8D9260 		leaq	1632(%rdx), %r10
 1149      060000
 1150              	.L38:
 1151 16e6 C5FD2835 		vmovapd	.LC40(%rip), %ymm6
 1151      00000000 
 1152 16ee 4B8D0C11 		leaq	(%r9,%r10), %rcx
 1153 16f2 4983C120 		addq	$32, %r9
 1154 16f6 C5FD283D 		vmovapd	.LC41(%rip), %ymm7
 1154      00000000 
 1155 16fe 4883C240 		addq	$64, %rdx
 1156 1702 C5CD599A 		vmulpd	128(%rdx), %ymm6, %ymm3
 1156      80000000 
 1157 170a C5FD2835 		vmovapd	.LC42(%rip), %ymm6
 1157      00000000 
 1158 1712 C5C559A2 		vmulpd	896(%rdx), %ymm7, %ymm4
 1158      80030000 
 1159 171a C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 1159      00000000 
 1160 1722 C5CD5982 		vmulpd	704(%rdx), %ymm6, %ymm0
 1160      C0020000 
 1161 172a C5FD2835 		vmovapd	.LC44(%rip), %ymm6
 1161      00000000 
 1162 1732 C5C559AA 		vmulpd	512(%rdx), %ymm7, %ymm5
 1162      00020000 
 1163 173a C5FD283D 		vmovapd	.LC45(%rip), %ymm7
 1163      00000000 
 1164 1742 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1165 1746 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1166 174a C5C559A2 		vmulpd	320(%rdx), %ymm7, %ymm4
 1166      40010000 
 1167 1752 C5FD283D 		vmovapd	.LC47(%rip), %ymm7
 1167      00000000 
 1168 175a C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1169 175e C5CD599A 		vmulpd	128(%rdx), %ymm6, %ymm3
 1169      80000000 
 1170 1766 C5FD2835 		vmovapd	.LC46(%rip), %ymm6
 1170      00000000 
 1171 176e C5CD59AA 		vmulpd	896(%rdx), %ymm6, %ymm5
 1171      80030000 
 1172 1776 C5FD2835 		vmovapd	.LC48(%rip), %ymm6
 1172      00000000 
 1173 177e C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1174 1782 C5CD59B2 		vmulpd	512(%rdx), %ymm6, %ymm6
 1174      00020000 
GAS LISTING /tmp/cclDueTb.s 			page 38


 1175 178a C5FD5882 		vaddpd	1280(%rdx), %ymm0, %ymm0
 1175      00050000 
 1176 1792 C5FD2982 		vmovapd	%ymm0, 1088(%rdx)
 1176      40040000 
 1177 179a C5C55982 		vmulpd	704(%rdx), %ymm7, %ymm0
 1177      C0020000 
 1178 17a2 C5FD283D 		vmovapd	.LC40(%rip), %ymm7
 1178      00000000 
 1179 17aa C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1180 17ae C5FD2835 		vmovapd	.LC42(%rip), %ymm6
 1180      00000000 
 1181 17b6 C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1182 17ba C5FD282D 		vmovapd	.LC41(%rip), %ymm5
 1182      00000000 
 1183 17c2 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1184 17c6 C5D559A2 		vmulpd	928(%rdx), %ymm5, %ymm4
 1184      A0030000 
 1185 17ce C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1186 17d2 C5ED549A 		vandpd	1088(%rdx), %ymm2, %ymm3
 1186      40040000 
 1187 17da C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1188 17de C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1188      00000000 
 1189 17e6 C5FD2942 		vmovapd	%ymm0, -64(%rdx)
 1189      C0
 1190 17eb C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1190      00000000 
 1191 17f3 C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1192 17f7 C5FD299A 		vmovapd	%ymm3, 128(%rdx)
 1192      80000000 
 1193 17ff C5C5599A 		vmulpd	160(%rdx), %ymm7, %ymm3
 1193      A0000000 
 1194 1807 C5FD283D 		vmovapd	.LC43(%rip), %ymm7
 1194      00000000 
 1195 180f C5C559AA 		vmulpd	544(%rdx), %ymm7, %ymm5
 1195      20020000 
 1196 1817 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1197 181b C5FD2982 		vmovapd	%ymm0, 320(%rdx)
 1197      40010000 
 1198 1823 C5CD5982 		vmulpd	736(%rdx), %ymm6, %ymm0
 1198      E0020000 
 1199 182b C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 1200 182f C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1201 1833 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1202 1837 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1203 183b C5FD5882 		vaddpd	1312(%rdx), %ymm0, %ymm0
 1203      20050000 
 1204 1843 C5FD2982 		vmovapd	%ymm0, 1120(%rdx)
 1204      60040000 
 1205 184b C5FD282D 		vmovapd	.LC44(%rip), %ymm5
 1205      00000000 
 1206 1853 C5FD2835 		vmovapd	.LC45(%rip), %ymm6
 1206      00000000 
 1207 185b C5FD283D 		vmovapd	.LC46(%rip), %ymm7
 1207      00000000 
 1208 1863 C5D5599A 		vmulpd	160(%rdx), %ymm5, %ymm3
 1208      A0000000 
GAS LISTING /tmp/cclDueTb.s 			page 39


 1209 186b C5CD59A2 		vmulpd	352(%rdx), %ymm6, %ymm4
 1209      60010000 
 1210 1873 C5FD2835 		vmovapd	.LC47(%rip), %ymm6
 1210      00000000 
 1211 187b C5C559AA 		vmulpd	928(%rdx), %ymm7, %ymm5
 1211      A0030000 
 1212 1883 C5FD283D 		vmovapd	.LC48(%rip), %ymm7
 1212      00000000 
 1213 188b C5CD5982 		vmulpd	736(%rdx), %ymm6, %ymm0
 1213      E0020000 
 1214 1893 C5C559B2 		vmulpd	544(%rdx), %ymm7, %ymm6
 1214      20020000 
 1215 189b C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 1216 189f C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 1217 18a3 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 1218 18a7 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 1219 18ab C5ED549A 		vandpd	1120(%rdx), %ymm2, %ymm3
 1219      60040000 
 1220 18b3 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 1221 18b7 C5E5591D 		vmulpd	.LC49(%rip), %ymm3, %ymm3
 1221      00000000 
 1222 18bf C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 1222      E0
 1223 18c4 C5E5581D 		vaddpd	.LC49(%rip), %ymm3, %ymm3
 1223      00000000 
 1224 18cc C5E55EC0 		vdivpd	%ymm0, %ymm3, %ymm0
 1225 18d0 C5FD299A 		vmovapd	%ymm3, 160(%rdx)
 1225      A0000000 
 1226 18d8 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 1227 18dc C5FD2982 		vmovapd	%ymm0, 352(%rdx)
 1227      60010000 
 1228 18e4 4983F960 		cmpq	$96, %r9
 1229 18e8 0F85F8FD 		jne	.L38
 1229      FFFF
 1230 18ee C5FD2884 		vmovapd	640(%rsp), %ymm0
 1230      24800200 
 1230      00
 1231 18f7 488D8C24 		leaq	256(%rsp), %rcx
 1231      00010000 
 1232 18ff C57D28AC 		vmovapd	128(%rsp), %ymm13
 1232      24800000 
 1232      00
 1233 1908 C5FD5D84 		vminpd	672(%rsp), %ymm0, %ymm0
 1233      24A00200 
 1233      00
 1234 1911 4C8D5160 		leaq	96(%rcx), %r10
 1235 1915 4889CA   		movq	%rcx, %rdx
 1236 1918 C5FD2984 		vmovapd	%ymm0, 448(%rsp)
 1236      24C00100 
 1236      00
 1237 1921 C5FD2884 		vmovapd	704(%rsp), %ymm0
 1237      24C00200 
 1237      00
 1238 192a C5FD5D84 		vminpd	736(%rsp), %ymm0, %ymm0
 1238      24E00200 
 1238      00
 1239 1933 C5FD2984 		vmovapd	%ymm0, 480(%rsp)
GAS LISTING /tmp/cclDueTb.s 			page 40


 1239      24E00100 
 1239      00
 1240 193c C5FD2884 		vmovapd	768(%rsp), %ymm0
 1240      24000300 
 1240      00
 1241 1945 C5FD5D84 		vminpd	800(%rsp), %ymm0, %ymm0
 1241      24200300 
 1241      00
 1242 194e C5FD2984 		vmovapd	%ymm0, 512(%rsp)
 1242      24000200 
 1242      00
 1243              	.L44:
 1244 1957 C5FD28B2 		vmovapd	192(%rdx), %ymm6
 1244      C0000000 
 1245 195f C44119EF 		vpxor	%xmm12, %xmm12, %xmm12
 1245      E4
 1246 1964 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 1246      F501
 1247 196a C5F928E6 		vmovapd	%xmm6, %xmm4
 1248 196e C5D1DB1D 		vpand	.LC50(%rip), %xmm5, %xmm3
 1248      00000000 
 1249 1976 C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 1249      34
 1250 197b C5C173D4 		vpsrlq	$52, %xmm4, %xmm7
 1250      34
 1251 1980 C559DB05 		vpand	.LC50(%rip), %xmm4, %xmm8
 1251      00000000 
 1252 1988 C5F9EB05 		vpor	.LC52(%rip), %xmm0, %xmm0
 1252      00000000 
 1253 1990 C5E1EB1D 		vpor	.LC51(%rip), %xmm3, %xmm3
 1253      00000000 
 1254 1998 C539EB05 		vpor	.LC51(%rip), %xmm8, %xmm8
 1254      00000000 
 1255 19a0 C5C1EB3D 		vpor	.LC52(%rip), %xmm7, %xmm7
 1255      00000000 
 1256 19a8 C4633D18 		vinsertf128	$0x1, %xmm3, %ymm8, %ymm8
 1256      C301
 1257 19ae C5FD281D 		vmovapd	.LC54(%rip), %ymm3
 1257      00000000 
 1258 19b6 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
 1258      F801
 1259 19bc C4C165C2 		vcmppd	$1, %ymm8, %ymm3, %ymm3
 1259      D801
 1260 19c2 C5C55C3D 		vsubpd	.LC53(%rip), %ymm7, %ymm7
 1260      00000000 
 1261 19ca C4C37D19 		vextractf128	$0x1, %ymm3, %xmm9
 1261      D901
 1262 19d0 C5F928C3 		vmovapd	%xmm3, %xmm0
 1263 19d4 C5E554D9 		vandpd	%ymm1, %ymm3, %ymm3
 1264 19d8 C531570D 		vxorpd	.LC55(%rip), %xmm9, %xmm9
 1264      00000000 
 1265 19e0 C5F95705 		vxorpd	.LC55(%rip), %xmm0, %xmm0
 1265      00000000 
 1266 19e8 C5C558FB 		vaddpd	%ymm3, %ymm7, %ymm7
 1267 19ec C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 1267      C101
 1268 19f2 C4C17D54 		vandpd	%ymm8, %ymm0, %ymm0
GAS LISTING /tmp/cclDueTb.s 			page 41


 1268      C0
 1269 19f7 C4C17D58 		vaddpd	%ymm8, %ymm0, %ymm0
 1269      C0
 1270 19fc C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 1271 1a00 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 1271      00000000 
 1272 1a08 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1273 1a0c C57D591D 		vmulpd	.LC56(%rip), %ymm0, %ymm11
 1273      00000000 
 1274 1a14 C57D590D 		vmulpd	.LC60(%rip), %ymm0, %ymm9
 1274      00000000 
 1275 1a1c C52D5815 		vaddpd	.LC59(%rip), %ymm10, %ymm10
 1275      00000000 
 1276 1a24 C56559C3 		vmulpd	%ymm3, %ymm3, %ymm8
 1277 1a28 C525581D 		vaddpd	.LC57(%rip), %ymm11, %ymm11
 1277      00000000 
 1278 1a30 C535580D 		vaddpd	.LC61(%rip), %ymm9, %ymm9
 1278      00000000 
 1279 1a38 C4412D59 		vmulpd	%ymm8, %ymm10, %ymm10
 1279      D0
 1280 1a3d C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 1280      D3
 1281 1a42 C53559CB 		vmulpd	%ymm3, %ymm9, %ymm9
 1282 1a46 C57D581D 		vaddpd	.LC64(%rip), %ymm0, %ymm11
 1282      00000000 
 1283 1a4e C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 1283      CA
 1284 1a53 C57D59D3 		vmulpd	%ymm3, %ymm0, %ymm10
 1285 1a57 C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 1285      C0
 1286 1a5c C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 1286      CA
 1287 1a61 C57D5915 		vmulpd	.LC62(%rip), %ymm0, %ymm10
 1287      00000000 
 1288 1a69 C52D5815 		vaddpd	.LC63(%rip), %ymm10, %ymm10
 1288      00000000 
 1289 1a71 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 1289      D2
 1290 1a76 C57D5905 		vmulpd	.LC65(%rip), %ymm0, %ymm8
 1290      00000000 
 1291 1a7e C53D5805 		vaddpd	.LC66(%rip), %ymm8, %ymm8
 1291      00000000 
 1292 1a86 C53D59C3 		vmulpd	%ymm3, %ymm8, %ymm8
 1293 1a8a C5E5591D 		vmulpd	.LC19(%rip), %ymm3, %ymm3
 1293      00000000 
 1294 1a92 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 1294      D2
 1295 1a97 C5455905 		vmulpd	.LC67(%rip), %ymm7, %ymm8
 1295      00000000 
 1296 1a9f C5C5593D 		vmulpd	.LC68(%rip), %ymm7, %ymm7
 1296      00000000 
 1297 1aa7 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1298 1aab C441355E 		vdivpd	%ymm10, %ymm9, %ymm9
 1298      CA
 1299 1ab0 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm9
 1299      C9
 1300 1ab5 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
GAS LISTING /tmp/cclDueTb.s 			page 42


 1300      01
 1301 1aba C5B558C0 		vaddpd	%ymm0, %ymm9, %ymm0
 1302 1abe C539DB0D 		vpand	.LC23(%rip), %xmm8, %xmm9
 1302      00000000 
 1303 1ac6 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1303      05000000 
 1303      00
 1304 1acf C5C558C0 		vaddpd	%ymm0, %ymm7, %ymm0
 1305 1ad3 C5C173F4 		vpsllq	$1, %xmm4, %xmm7
 1305      01
 1306 1ad8 C5C1DB1D 		vpand	.LC23(%rip), %xmm7, %xmm3
 1306      00000000 
 1307 1ae0 C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 1307      0D000000 
 1307      00
 1308 1ae9 C44131EF 		vpxor	%xmm14, %xmm9, %xmm9
 1308      CE
 1309 1aee C4E26129 		vpcmpeqq	.LC23(%rip), %xmm3, %xmm3
 1309      1D000000 
 1309      00
 1310 1af7 C4C161EF 		vpxor	%xmm14, %xmm3, %xmm3
 1310      DE
 1311 1afc C4C36518 		vinsertf128	$0x1, %xmm9, %ymm3, %ymm3
 1311      D901
 1312 1b02 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm10
 1312      DA01
 1313 1b08 C561570D 		vxorpd	.LC55(%rip), %xmm3, %xmm9
 1313      00000000 
 1314 1b10 C5295715 		vxorpd	.LC55(%rip), %xmm10, %xmm10
 1314      00000000 
 1315 1b18 C4433518 		vinsertf128	$0x1, %xmm10, %ymm9, %ymm9
 1315      CA01
 1316 1b1e C54DC215 		vcmppd	$1, .LC69(%rip), %ymm6, %ymm10
 1316      00000000 
 1316      01
 1317 1b27 C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 1317      D9
 1318 1b2c C4637D4B 		vblendvpd	%ymm10, .LC70(%rip), %ymm0, %ymm10
 1318      15000000 
 1318      00A0
 1319 1b36 C4637D19 		vextractf128	$0x1, %ymm11, %xmm3
 1319      DB01
 1320 1b3c C52156DB 		vorpd	%xmm3, %xmm11, %xmm11
 1321 1b40 C5D1DB1D 		vpand	.LC72(%rip), %xmm5, %xmm3
 1321      00000000 
 1322 1b48 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 1322      1F
 1323 1b4d C4417950 		vmovmskpd	%xmm11, %r9d
 1323      CB
 1324 1b52 C44121EF 		vpxor	%xmm11, %xmm11, %xmm11
 1324      DB
 1325 1b57 4585C9   		testl	%r9d, %r9d
 1326 1b5a C4C26129 		vpcmpeqq	%xmm11, %xmm3, %xmm3
 1326      DB
 1327 1b5f C559DB1D 		vpand	.LC72(%rip), %xmm4, %xmm11
 1327      00000000 
 1328 1b67 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
GAS LISTING /tmp/cclDueTb.s 			page 43


 1328      1F
 1329 1b6c C4422129 		vpcmpeqq	%xmm12, %xmm11, %xmm11
 1329      DC
 1330 1b71 C4E32518 		vinsertf128	$0x1, %xmm3, %ymm11, %ymm3
 1330      DB01
 1331 1b77 C4632D4B 		vblendvpd	%ymm3, 160(%rsp), %ymm10, %ymm10
 1331      9424A000 
 1331      000030
 1332 1b82 C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 1332      CE90
 1333 1b88 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 1333      20
 1334 1b8d C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 1334      EDCC
 1335 1b93 C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 1335      20
 1336 1b98 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 1336      E4CC
 1337 1b9e C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm6
 1337      35000000 
 1337      00
 1338 1ba7 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 1338      ED01
 1339 1bad C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 1339      F001
 1340 1bb3 C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 1341 1bb7 C4E3354B 		vblendvpd	%ymm6, .LC70(%rip), %ymm9, %ymm6
 1341      35000000 
 1341      0060
 1342 1bc1 7504     		jne	.L40
 1343 1bc3 C5FD28F0 		vmovapd	%ymm0, %ymm6
 1344              	.L40:
 1345 1bc7 C5CD5935 		vmulpd	.LC26(%rip), %ymm6, %ymm6
 1345      00000000 
 1346 1bcf C5CD592D 		vmulpd	.LC73(%rip), %ymm6, %ymm5
 1346      00000000 
 1347 1bd7 C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 1347      ED08
 1348 1bdd C5D55905 		vmulpd	.LC74(%rip), %ymm5, %ymm0
 1348      00000000 
 1349 1be5 C5D5591D 		vmulpd	.LC75(%rip), %ymm5, %ymm3
 1349      00000000 
 1350 1bed C5D5582D 		vaddpd	.LC53(%rip), %ymm5, %ymm5
 1350      00000000 
 1351 1bf5 C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 1352 1bf9 C5FD5CC3 		vsubpd	%ymm3, %ymm0, %ymm0
 1353 1bfd C5FD593D 		vmulpd	.LC79(%rip), %ymm0, %ymm7
 1353      00000000 
 1354 1c05 C57D590D 		vmulpd	.LC76(%rip), %ymm0, %ymm9
 1354      00000000 
 1355 1c0d C57D5915 		vmulpd	.LC77(%rip), %ymm0, %ymm10
 1355      00000000 
 1356 1c15 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 1357 1c19 C5C5583D 		vaddpd	.LC80(%rip), %ymm7, %ymm7
 1357      00000000 
 1358 1c21 C535580D 		vaddpd	.LC19(%rip), %ymm9, %ymm9
 1358      00000000 
GAS LISTING /tmp/cclDueTb.s 			page 44


 1359 1c29 C52D5815 		vaddpd	.LC78(%rip), %ymm10, %ymm10
 1359      00000000 
 1360 1c31 C5E559E3 		vmulpd	%ymm3, %ymm3, %ymm4
 1361 1c35 C5C559FB 		vmulpd	%ymm3, %ymm7, %ymm7
 1362 1c39 C53559CB 		vmulpd	%ymm3, %ymm9, %ymm9
 1363 1c3d C55D59C4 		vmulpd	%ymm4, %ymm4, %ymm8
 1364 1c41 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1364      FA
 1365 1c46 C57D5915 		vmulpd	.LC83(%rip), %ymm0, %ymm10
 1365      00000000 
 1366 1c4e C53558C8 		vaddpd	%ymm0, %ymm9, %ymm9
 1367 1c52 C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 1368 1c56 C52D5815 		vaddpd	.LC84(%rip), %ymm10, %ymm10
 1368      00000000 
 1369 1c5e C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1369      F9
 1370 1c63 C57D590D 		vmulpd	.LC81(%rip), %ymm0, %ymm9
 1370      00000000 
 1371 1c6b C5FD5905 		vmulpd	.LC85(%rip), %ymm0, %ymm0
 1371      00000000 
 1372 1c73 C5AD59DB 		vmulpd	%ymm3, %ymm10, %ymm3
 1373 1c77 C535580D 		vaddpd	.LC82(%rip), %ymm9, %ymm9
 1373      00000000 
 1374 1c7f C5FD5805 		vaddpd	.LC86(%rip), %ymm0, %ymm0
 1374      00000000 
 1375 1c87 C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
 1375      D9
 1376 1c8c C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 1377 1c90 C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 1377      34
 1378 1c95 C5DD58E3 		vaddpd	%ymm3, %ymm4, %ymm4
 1379 1c99 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm3
 1379      EB01
 1380 1c9f C5E173F3 		vpsllq	$52, %xmm3, %xmm3
 1380      34
 1381 1ca4 C4E37D18 		vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
 1381      C301
 1382 1caa C4C15D59 		vmulpd	%ymm8, %ymm4, %ymm4
 1382      E0
 1383 1caf C5F928DE 		vmovapd	%xmm6, %xmm3
 1384 1cb3 C5DD58E7 		vaddpd	%ymm7, %ymm4, %ymm4
 1385 1cb7 C5CD54FA 		vandpd	%ymm2, %ymm6, %ymm7
 1386 1cbb C5C5C23D 		vcmppd	$1, .LC87(%rip), %ymm7, %ymm7
 1386      00000000 
 1386      01
 1387 1cc4 C5DD58E9 		vaddpd	%ymm1, %ymm4, %ymm5
 1388 1cc8 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 1388      F401
 1389 1cce C5B973F4 		vpsllq	$1, %xmm4, %xmm8
 1389      01
 1390 1cd3 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 1390      00000000 
 1391 1cdb C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 1391      1F
 1392 1ce0 C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 1393 1ce4 C5F973F3 		vpsllq	$1, %xmm3, %xmm0
 1393      01
GAS LISTING /tmp/cclDueTb.s 			page 45


 1394 1ce9 C5E172E3 		vpsrad	$31, %xmm3, %xmm3
 1394      1F
 1395 1cee C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 1395      00000000 
 1396 1cf6 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1396      05000000 
 1396      00
 1397 1cff C44139EF 		vpxor	%xmm14, %xmm8, %xmm8
 1397      C6
 1398 1d04 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 1398      05000000 
 1398      00
 1399 1d0d C4C179EF 		vpxor	%xmm14, %xmm0, %xmm0
 1399      C6
 1400 1d12 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 1400      C001
 1401 1d18 C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 1402 1d1c C4E37D19 		vextractf128	$0x1, %ymm0, %xmm7
 1402      C701
 1403 1d22 C57928C0 		vmovapd	%xmm0, %xmm8
 1404 1d26 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1405 1d2a C57950CF 		vmovmskpd	%xmm7, %r9d
 1406 1d2e C5C173D4 		vpsrlq	$32, %xmm4, %xmm7
 1406      20
 1407 1d33 C4E3410E 		vpblendw	$204, %xmm4, %xmm7, %xmm4
 1407      E4CC
 1408 1d39 C5C173D3 		vpsrlq	$32, %xmm3, %xmm7
 1408      20
 1409 1d3e C4E3410E 		vpblendw	$204, %xmm3, %xmm7, %xmm3
 1409      DBCC
 1410 1d44 C5C157FF 		vxorpd	%xmm7, %xmm7, %xmm7
 1411 1d48 4183F903 		cmpl	$3, %r9d
 1412 1d4c C4E36518 		vinsertf128	$0x1, %xmm4, %ymm3, %ymm4
 1412      E401
 1413 1d52 C5CDC2DE 		vcmppd	$4, %ymm6, %ymm6, %ymm3
 1413      04
 1414 1d57 C4E3154B 		vblendvpd	%ymm4, %ymm7, %ymm13, %ymm4
 1414      E740
 1415 1d5d C4E35D4B 		vblendvpd	%ymm0, %ymm5, %ymm4, %ymm0
 1415      C500
 1416 1d63 C4E37D4B 		vblendvpd	%ymm3, %ymm6, %ymm0, %ymm6
 1416      F630
 1417 1d69 0F844101 		je	.L61
 1417      0000
 1418              	.L42:
 1419 1d6f C5FD2882 		vmovapd	1632(%rdx), %ymm0
 1419      60060000 
 1420 1d77 C5F5C29A 		vcmppd	$2, 192(%rdx), %ymm1, %ymm3
 1420      C0000000 
 1420      02
 1421 1d80 C5FD282D 		vmovapd	.LC89(%rip), %ymm5
 1421      00000000 
 1422 1d88 4883C220 		addq	$32, %rdx
 1423 1d8c 4883C140 		addq	$64, %rcx
 1424 1d90 C5FDC205 		vcmppd	$2, .LC88(%rip), %ymm0, %ymm0
 1424      00000000 
 1424      02
GAS LISTING /tmp/cclDueTb.s 			page 46


 1425 1d99 C5E556C0 		vorpd	%ymm0, %ymm3, %ymm0
 1426 1d9d C5D5C2DE 		vcmppd	$1, %ymm6, %ymm5, %ymm3
 1426      01
 1427 1da2 C4E34D4B 		vblendvpd	%ymm3, %ymm5, %ymm6, %ymm6
 1427      F530
 1428 1da8 C5FD282D 		vmovapd	.LC91(%rip), %ymm5
 1428      00000000 
 1429 1db0 C5CDC21D 		vcmppd	$1, .LC26(%rip), %ymm6, %ymm3
 1429      00000000 
 1429      01
 1430 1db9 C4E34D4B 		vblendvpd	%ymm3, .LC26(%rip), %ymm6, %ymm6
 1430      35000000 
 1430      0030
 1431 1dc3 C5FD29B2 		vmovapd	%ymm6, 352(%rdx)
 1431      60010000 
 1432 1dcb C5FD2899 		vmovapd	1280(%rcx), %ymm3
 1432      00050000 
 1433 1dd3 C4E3654B 		vblendvpd	%ymm0, 1088(%rcx), %ymm3, %ymm3
 1433      99400400 
 1433      0000
 1434 1ddd C5FD2999 		vmovapd	%ymm3, 1280(%rcx)
 1434      00050000 
 1435 1de5 C5FD2899 		vmovapd	1312(%rcx), %ymm3
 1435      20050000 
 1436 1ded C4E3654B 		vblendvpd	%ymm0, 1120(%rcx), %ymm3, %ymm3
 1436      99600400 
 1436      0000
 1437 1df7 C5FD2999 		vmovapd	%ymm3, 1312(%rcx)
 1437      20050000 
 1438 1dff C5FD289A 		vmovapd	1504(%rdx), %ymm3
 1438      E0050000 
 1439 1e07 C5E558A2 		vaddpd	1600(%rdx), %ymm3, %ymm4
 1439      40060000 
 1440 1e0f C4E3654B 		vblendvpd	%ymm0, %ymm4, %ymm3, %ymm0
 1440      C400
 1441 1e15 C5FD2982 		vmovapd	%ymm0, 1504(%rdx)
 1441      E0050000 
 1442 1e1d C5FD2882 		vmovapd	352(%rdx), %ymm0
 1442      60010000 
 1443 1e25 C5FD5982 		vmulpd	1600(%rdx), %ymm0, %ymm0
 1443      40060000 
 1444 1e2d C5FD5905 		vmulpd	.LC90(%rip), %ymm0, %ymm0
 1444      00000000 
 1445 1e35 C5D5C2D8 		vcmppd	$1, %ymm0, %ymm5, %ymm3
 1445      01
 1446 1e3a C4E37D4B 		vblendvpd	%ymm3, %ymm5, %ymm0, %ymm0
 1446      C530
 1447 1e40 C5FDC21D 		vcmppd	$1, .LC88(%rip), %ymm0, %ymm3
 1447      00000000 
 1447      01
 1448 1e49 C4E37D4B 		vblendvpd	%ymm3, .LC88(%rip), %ymm0, %ymm0
 1448      05000000 
 1448      0030
 1449 1e53 C5FD2982 		vmovapd	%ymm0, 1600(%rdx)
 1449      40060000 
 1450 1e5b 4C39D2   		cmpq	%r10, %rdx
 1451 1e5e 0F85F3FA 		jne	.L44
GAS LISTING /tmp/cclDueTb.s 			page 47


 1451      FFFF
 1452 1e64 C5FD2884 		vmovapd	1792(%rsp), %ymm0
 1452      24000700 
 1452      00
 1453 1e6d C5FD2815 		vmovapd	.LC92(%rip), %ymm2
 1453      00000000 
 1454 1e75 C5FD5D84 		vminpd	1824(%rsp), %ymm0, %ymm0
 1454      24200700 
 1454      00
 1455 1e7e C5FD5D84 		vminpd	1856(%rsp), %ymm0, %ymm0
 1455      24400700 
 1455      00
 1456 1e87 C5EDC2C0 		vcmppd	$2, %ymm0, %ymm2, %ymm0
 1456      02
 1457 1e8c C4E37D19 		vextractf128	$0x1, %ymm0, %xmm2
 1457      C201
 1458 1e92 C5F954C2 		vandpd	%xmm2, %xmm0, %xmm0
 1459 1e96 C5F950D0 		vmovmskpd	%xmm0, %edx
 1460 1e9a 83FA03   		cmpl	$3, %edx
 1461 1e9d 7421     		je	.L62
 1462 1e9f 4531C9   		xorl	%r9d, %r9d
 1463 1ea2 4531D2   		xorl	%r10d, %r10d
 1464 1ea5 E9F6E2FF 		jmp	.L22
 1464      FF
 1465 1eaa 660F1F44 		.p2align 4,,10
 1465      0000
 1466              		.p2align 3
 1467              	.L61:
 1468 1eb0 C5FD28F5 		vmovapd	%ymm5, %ymm6
 1469 1eb4 E9B6FEFF 		jmp	.L42
 1469      FF
 1470 1eb9 0F1F8000 		.p2align 4,,10
 1470      000000
 1471              		.p2align 3
 1472              	.L62:
 1473 1ec0 4489E0   		movl	%r12d, %eax
 1474 1ec3 BAD34D62 		movl	$274877907, %edx
 1474      10
 1475 1ec8 F7EA     		imull	%edx
 1476 1eca 4489E0   		movl	%r12d, %eax
 1477 1ecd C1F81F   		sarl	$31, %eax
 1478 1ed0 C1FA06   		sarl	$6, %edx
 1479 1ed3 29C2     		subl	%eax, %edx
 1480 1ed5 4489E0   		movl	%r12d, %eax
 1481 1ed8 69D2E803 		imull	$1000, %edx, %edx
 1481      0000
 1482 1ede 29D0     		subl	%edx, %eax
 1483 1ee0 83F801   		cmpl	$1, %eax
 1484 1ee3 0F848800 		je	.L63
 1484      0000
 1485              	.L46:
 1486 1ee9 4183C40C 		addl	$12, %r12d
 1487 1eed 4983C560 		addq	$96, %r13
 1488 1ef1 4181FCA0 		cmpl	$1440, %r12d
 1488      050000
 1489 1ef8 0F8582E1 		jne	.L21
 1489      FFFF
GAS LISTING /tmp/cclDueTb.s 			page 48


 1490 1efe C5F877   		vzeroupper
 1491 1f01 E8000000 		call	clock
 1491      00
 1492 1f06 BA0C0000 		movl	$12, %edx
 1492      00
 1493 1f0b 4989C4   		movq	%rax, %r12
 1494 1f0e BE000000 		movl	$.LC101, %esi
 1494      00
 1495 1f13 BF000000 		movl	$_ZSt4cout, %edi
 1495      00
 1496 1f18 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1496      00
 1497 1f1d 4C89E1   		movq	%r12, %rcx
 1498 1f20 48BECFF7 		movabsq	$2361183241434822607, %rsi
 1498      53E3A59B 
 1498      C420
 1499 1f2a BF000000 		movl	$_ZSt4cout, %edi
 1499      00
 1500 1f2f 4829D9   		subq	%rbx, %rcx
 1501 1f32 4889C8   		movq	%rcx, %rax
 1502 1f35 48C1F93F 		sarq	$63, %rcx
 1503 1f39 48F7EE   		imulq	%rsi
 1504 1f3c 4889D6   		movq	%rdx, %rsi
 1505 1f3f 48C1FE07 		sarq	$7, %rsi
 1506 1f43 4829CE   		subq	%rcx, %rsi
 1507 1f46 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1507      00
 1508 1f4b BE000000 		movl	$.LC102, %esi
 1508      00
 1509 1f50 4889C7   		movq	%rax, %rdi
 1510 1f53 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1510      00
 1511 1f58 4889C7   		movq	%rax, %rdi
 1512 1f5b E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1512      00
 1513 1f60 488D65D8 		leaq	-40(%rbp), %rsp
 1514 1f64 31C0     		xorl	%eax, %eax
 1515 1f66 5B       		popq	%rbx
 1516 1f67 415C     		popq	%r12
 1517 1f69 415D     		popq	%r13
 1518 1f6b 415E     		popq	%r14
 1519 1f6d 415F     		popq	%r15
 1520 1f6f 5D       		popq	%rbp
 1521              		.cfi_remember_state
 1522              		.cfi_def_cfa 7, 8
 1523 1f70 C3       		ret
 1524              	.L63:
 1525              		.cfi_restore_state
 1526 1f71 BA390000 		movl	$57, %edx
 1526      00
 1527 1f76 BE000000 		movl	$.LC93, %esi
 1527      00
 1528 1f7b BF000000 		movl	$_ZSt4cout, %edi
 1528      00
 1529 1f80 C57D293C 		vmovapd	%ymm15, (%rsp)
 1529      24
 1530 1f85 C5FD294C 		vmovapd	%ymm1, 32(%rsp)
GAS LISTING /tmp/cclDueTb.s 			page 49


 1530      2420
 1531 1f8b C5F877   		vzeroupper
 1532 1f8e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1532      00
 1533 1f93 C5FD2884 		vmovapd	1984(%rsp), %ymm0
 1533      24C00700 
 1533      00
 1534 1f9c 4489E6   		movl	%r12d, %esi
 1535 1f9f BF000000 		movl	$_ZSt4cout, %edi
 1535      00
 1536 1fa4 C5FD1184 		vmovupd	%ymm0, 224(%rsp)
 1536      24E00000 
 1536      00
 1537 1fad C5FB1084 		vmovsd	224(%rsp), %xmm0
 1537      24E00000 
 1537      00
 1538 1fb6 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1538      24C00000 
 1538      00
 1539 1fbf C5F877   		vzeroupper
 1540 1fc2 E8000000 		call	_ZNSolsEi
 1540      00
 1541 1fc7 BA060000 		movl	$6, %edx
 1541      00
 1542 1fcc BE000000 		movl	$.LC94, %esi
 1542      00
 1543 1fd1 4889C7   		movq	%rax, %rdi
 1544 1fd4 4989C6   		movq	%rax, %r14
 1545 1fd7 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1545      00
 1546 1fdc C5FB1084 		vmovsd	192(%rsp), %xmm0
 1546      24C00000 
 1546      00
 1547 1fe5 4C89F7   		movq	%r14, %rdi
 1548 1fe8 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1548      00
 1549 1fed BA010000 		movl	$1, %edx
 1549      00
 1550 1ff2 BE000000 		movl	$.LC95, %esi
 1550      00
 1551 1ff7 4889C7   		movq	%rax, %rdi
 1552 1ffa E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1552      00
 1553 1fff C5FD2894 		vmovapd	1600(%rsp), %ymm2
 1553      24400600 
 1553      00
 1554 2008 BA050000 		movl	$5, %edx
 1554      00
 1555 200d BE000000 		movl	$.LC96, %esi
 1555      00
 1556 2012 BF000000 		movl	$_ZSt4cout, %edi
 1556      00
 1557 2017 C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 1557      24E00000 
 1557      00
 1558 2020 C5FB109C 		vmovsd	248(%rsp), %xmm3
 1558      24F80000 
GAS LISTING /tmp/cclDueTb.s 			page 50


 1558      00
 1559 2029 C5FB10A4 		vmovsd	240(%rsp), %xmm4
 1559      24F00000 
 1559      00
 1560 2032 C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1560      24E80000 
 1560      00
 1561 203b C5FB1084 		vmovsd	224(%rsp), %xmm0
 1561      24E00000 
 1561      00
 1562 2044 C5FB115C 		vmovsd	%xmm3, 80(%rsp)
 1562      2450
 1563 204a C5FB1164 		vmovsd	%xmm4, 88(%rsp)
 1563      2458
 1564 2050 C5FB116C 		vmovsd	%xmm5, 96(%rsp)
 1564      2460
 1565 2056 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1565      24C00000 
 1565      00
 1566 205f C5F877   		vzeroupper
 1567 2062 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1567      00
 1568 2067 BA010000 		movl	$1, %edx
 1568      00
 1569 206c BE000000 		movl	$.LC0, %esi
 1569      00
 1570 2071 BF000000 		movl	$_ZSt4cout, %edi
 1570      00
 1571 2076 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1571      00
 1572 207b C5FB1084 		vmovsd	192(%rsp), %xmm0
 1572      24C00000 
 1572      00
 1573 2084 BF000000 		movl	$_ZSt4cout, %edi
 1573      00
 1574 2089 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1574      00
 1575 208e BA010000 		movl	$1, %edx
 1575      00
 1576 2093 BE000000 		movl	$.LC0, %esi
 1576      00
 1577 2098 4889C7   		movq	%rax, %rdi
 1578 209b 4989C6   		movq	%rax, %r14
 1579 209e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1579      00
 1580 20a3 C5FB106C 		vmovsd	96(%rsp), %xmm5
 1580      2460
 1581 20a9 4C89F7   		movq	%r14, %rdi
 1582 20ac C5F928C5 		vmovapd	%xmm5, %xmm0
 1583 20b0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1583      00
 1584 20b5 BA010000 		movl	$1, %edx
 1584      00
 1585 20ba BE000000 		movl	$.LC0, %esi
 1585      00
 1586 20bf 4889C7   		movq	%rax, %rdi
 1587 20c2 4989C6   		movq	%rax, %r14
GAS LISTING /tmp/cclDueTb.s 			page 51


 1588 20c5 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1588      00
 1589 20ca C5FB1064 		vmovsd	88(%rsp), %xmm4
 1589      2458
 1590 20d0 4C89F7   		movq	%r14, %rdi
 1591 20d3 C5F928C4 		vmovapd	%xmm4, %xmm0
 1592 20d7 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1592      00
 1593 20dc BA010000 		movl	$1, %edx
 1593      00
 1594 20e1 BE000000 		movl	$.LC0, %esi
 1594      00
 1595 20e6 4889C7   		movq	%rax, %rdi
 1596 20e9 4989C6   		movq	%rax, %r14
 1597 20ec E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1597      00
 1598 20f1 C5FB105C 		vmovsd	80(%rsp), %xmm3
 1598      2450
 1599 20f7 4C89F7   		movq	%r14, %rdi
 1600 20fa C5F928C3 		vmovapd	%xmm3, %xmm0
 1601 20fe E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1601      00
 1602 2103 4989C7   		movq	%rax, %r15
 1603 2106 488B00   		movq	(%rax), %rax
 1604 2109 C5FD284C 		vmovapd	32(%rsp), %ymm1
 1604      2420
 1605 210f C57D283C 		vmovapd	(%rsp), %ymm15
 1605      24
 1606 2114 488B40E8 		movq	-24(%rax), %rax
 1607 2118 4D8BB407 		movq	240(%r15,%rax), %r14
 1607      F0000000 
 1608 2120 4D85F6   		testq	%r14, %r14
 1609 2123 0F841802 		je	.L64
 1609      0000
 1610 2129 41807E38 		cmpb	$0, 56(%r14)
 1610      00
 1611 212e 0F849501 		je	.L48
 1611      0000
 1612 2134 410FB646 		movzbl	67(%r14), %eax
 1612      43
 1613              	.L49:
 1614 2139 0FBEF0   		movsbl	%al, %esi
 1615 213c 4C89FF   		movq	%r15, %rdi
 1616 213f C57D293C 		vmovapd	%ymm15, (%rsp)
 1616      24
 1617 2144 C5FD294C 		vmovapd	%ymm1, 32(%rsp)
 1617      2420
 1618 214a C5F877   		vzeroupper
 1619 214d E8000000 		call	_ZNSo3putEc
 1619      00
 1620 2152 4889C7   		movq	%rax, %rdi
 1621 2155 E8000000 		call	_ZNSo5flushEv
 1621      00
 1622 215a C5FD2894 		vmovapd	1696(%rsp), %ymm2
 1622      24A00600 
 1622      00
 1623 2163 BA050000 		movl	$5, %edx
GAS LISTING /tmp/cclDueTb.s 			page 52


 1623      00
 1624 2168 BE000000 		movl	$.LC97, %esi
 1624      00
 1625 216d BF000000 		movl	$_ZSt4cout, %edi
 1625      00
 1626 2172 C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 1626      24E00000 
 1626      00
 1627 217b C5FB109C 		vmovsd	248(%rsp), %xmm3
 1627      24F80000 
 1627      00
 1628 2184 C5FB10A4 		vmovsd	240(%rsp), %xmm4
 1628      24F00000 
 1628      00
 1629 218d C5FB10AC 		vmovsd	232(%rsp), %xmm5
 1629      24E80000 
 1629      00
 1630 2196 C5FB1084 		vmovsd	224(%rsp), %xmm0
 1630      24E00000 
 1630      00
 1631 219f C5FB115C 		vmovsd	%xmm3, 80(%rsp)
 1631      2450
 1632 21a5 C5FB1164 		vmovsd	%xmm4, 88(%rsp)
 1632      2458
 1633 21ab C5FB116C 		vmovsd	%xmm5, 96(%rsp)
 1633      2460
 1634 21b1 C5FB1184 		vmovsd	%xmm0, 192(%rsp)
 1634      24C00000 
 1634      00
 1635 21ba C5F877   		vzeroupper
 1636 21bd E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1636      00
 1637 21c2 BA010000 		movl	$1, %edx
 1637      00
 1638 21c7 BE000000 		movl	$.LC0, %esi
 1638      00
 1639 21cc BF000000 		movl	$_ZSt4cout, %edi
 1639      00
 1640 21d1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1640      00
 1641 21d6 C5FB1084 		vmovsd	192(%rsp), %xmm0
 1641      24C00000 
 1641      00
 1642 21df BF000000 		movl	$_ZSt4cout, %edi
 1642      00
 1643 21e4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1643      00
 1644 21e9 BA010000 		movl	$1, %edx
 1644      00
 1645 21ee BE000000 		movl	$.LC0, %esi
 1645      00
 1646 21f3 4889C7   		movq	%rax, %rdi
 1647 21f6 4989C6   		movq	%rax, %r14
 1648 21f9 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1648      00
 1649 21fe C5FB106C 		vmovsd	96(%rsp), %xmm5
 1649      2460
GAS LISTING /tmp/cclDueTb.s 			page 53


 1650 2204 4C89F7   		movq	%r14, %rdi
 1651 2207 C5F928C5 		vmovapd	%xmm5, %xmm0
 1652 220b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1652      00
 1653 2210 BA010000 		movl	$1, %edx
 1653      00
 1654 2215 BE000000 		movl	$.LC0, %esi
 1654      00
 1655 221a 4889C7   		movq	%rax, %rdi
 1656 221d 4989C6   		movq	%rax, %r14
 1657 2220 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1657      00
 1658 2225 C5FB1064 		vmovsd	88(%rsp), %xmm4
 1658      2458
 1659 222b 4C89F7   		movq	%r14, %rdi
 1660 222e C5F928C4 		vmovapd	%xmm4, %xmm0
 1661 2232 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1661      00
 1662 2237 BA010000 		movl	$1, %edx
 1662      00
 1663 223c BE000000 		movl	$.LC0, %esi
 1663      00
 1664 2241 4889C7   		movq	%rax, %rdi
 1665 2244 4989C6   		movq	%rax, %r14
 1666 2247 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1666      00
 1667 224c C5FB105C 		vmovsd	80(%rsp), %xmm3
 1667      2450
 1668 2252 4C89F7   		movq	%r14, %rdi
 1669 2255 C5F928C3 		vmovapd	%xmm3, %xmm0
 1670 2259 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1670      00
 1671 225e 4989C7   		movq	%rax, %r15
 1672 2261 488B00   		movq	(%rax), %rax
 1673 2264 488B40E8 		movq	-24(%rax), %rax
 1674 2268 4D8BB407 		movq	240(%r15,%rax), %r14
 1674      F0000000 
 1675 2270 4D85F6   		testq	%r14, %r14
 1676 2273 0F84CB00 		je	.L50
 1676      0000
 1677 2279 41807E38 		cmpb	$0, 56(%r14)
 1677      00
 1678 227e C5FD284C 		vmovapd	32(%rsp), %ymm1
 1678      2420
 1679 2284 C57D283C 		vmovapd	(%rsp), %ymm15
 1679      24
 1680 2289 747A     		je	.L51
 1681 228b 410FB646 		movzbl	67(%r14), %eax
 1681      43
 1682              	.L52:
 1683 2290 0FBEF0   		movsbl	%al, %esi
 1684 2293 4C89FF   		movq	%r15, %rdi
 1685 2296 C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1685      2460
 1686 229c C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1686      24C00000 
 1686      00
GAS LISTING /tmp/cclDueTb.s 			page 54


 1687 22a5 C5F877   		vzeroupper
 1688 22a8 E8000000 		call	_ZNSo3putEc
 1688      00
 1689 22ad 4889C7   		movq	%rax, %rdi
 1690 22b0 E8000000 		call	_ZNSo5flushEv
 1690      00
 1691 22b5 C57D287C 		vmovapd	96(%rsp), %ymm15
 1691      2460
 1692 22bb C5FD288C 		vmovapd	192(%rsp), %ymm1
 1692      24C00000 
 1692      00
 1693 22c4 E920FCFF 		jmp	.L46
 1693      FF
 1694              	.L48:
 1695 22c9 4C89F7   		movq	%r14, %rdi
 1696 22cc C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1696      2460
 1697 22d2 C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1697      24C00000 
 1697      00
 1698 22db C5F877   		vzeroupper
 1699 22de E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1699      00
 1700 22e3 498B06   		movq	(%r14), %rax
 1701 22e6 BE0A0000 		movl	$10, %esi
 1701      00
 1702 22eb 4C89F7   		movq	%r14, %rdi
 1703 22ee FF5030   		call	*48(%rax)
 1704 22f1 C57D287C 		vmovapd	96(%rsp), %ymm15
 1704      2460
 1705 22f7 C5FD288C 		vmovapd	192(%rsp), %ymm1
 1705      24C00000 
 1705      00
 1706 2300 E934FEFF 		jmp	.L49
 1706      FF
 1707              	.L51:
 1708 2305 4C89F7   		movq	%r14, %rdi
 1709 2308 C57D297C 		vmovapd	%ymm15, 96(%rsp)
 1709      2460
 1710 230e C5FD298C 		vmovapd	%ymm1, 192(%rsp)
 1710      24C00000 
 1710      00
 1711 2317 C5F877   		vzeroupper
 1712 231a E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1712      00
 1713 231f 498B06   		movq	(%r14), %rax
 1714 2322 BE0A0000 		movl	$10, %esi
 1714      00
 1715 2327 4C89F7   		movq	%r14, %rdi
 1716 232a FF5030   		call	*48(%rax)
 1717 232d C57D287C 		vmovapd	96(%rsp), %ymm15
 1717      2460
 1718 2333 C5FD288C 		vmovapd	192(%rsp), %ymm1
 1718      24C00000 
 1718      00
 1719 233c E94FFFFF 		jmp	.L52
 1719      FF
GAS LISTING /tmp/cclDueTb.s 			page 55


 1720              	.L64:
 1721 2341 C5F877   		vzeroupper
 1722              	.L50:
 1723 2344 E8000000 		call	_ZSt16__throw_bad_castv
 1723      00
 1724              		.cfi_endproc
 1725              	.LFE4733:
 1726              		.size	main, .-main
 1727 2349 0F1F8000 		.p2align 4,,15
 1727      000000
 1728              		.type	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, @function
 1729              	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d:
 1730              	.LFB5042:
 1731              		.cfi_startproc
 1732 2350 4883EC08 		subq	$8, %rsp
 1733              		.cfi_def_cfa_offset 16
 1734 2354 BF000000 		movl	$_ZStL8__ioinit, %edi
 1734      00
 1735 2359 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1735      00
 1736 235e BA000000 		movl	$__dso_handle, %edx
 1736      00
 1737 2363 BE000000 		movl	$_ZStL8__ioinit, %esi
 1737      00
 1738 2368 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1738      00
 1739 236d 4883C408 		addq	$8, %rsp
 1740              		.cfi_def_cfa_offset 8
 1741 2371 E9000000 		jmp	__cxa_atexit
 1741      00
 1742              		.cfi_endproc
 1743              	.LFE5042:
 1744              		.size	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d, .-_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1745              		.section	.init_array,"aw"
 1746              		.align 8
 1747 0000 00000000 		.quad	_GLOBAL__sub_I__Z11printVectorPKc5Vec4d
 1747      00000000 
 1748              		.section	.rodata
 1749              		.align 32
 1750              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1751              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1752              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1753 0000 00000000 		.long	0
 1754 0004 00000080 		.long	-2147483648
 1755 0008 00000000 		.long	0
 1756 000c 00000080 		.long	-2147483648
 1757 0010 00000000 		.long	0
 1758 0014 00000080 		.long	-2147483648
 1759 0018 00000000 		.long	0
 1760 001c 00000080 		.long	-2147483648
 1761              		.align 32
 1762              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1763              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1764              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1765 0020 FFFFFFFF 		.long	-1
 1766 0024 FFFFFF7F 		.long	2147483647
 1767 0028 FFFFFFFF 		.long	-1
GAS LISTING /tmp/cclDueTb.s 			page 56


 1768 002c FFFFFF7F 		.long	2147483647
 1769 0030 FFFFFFFF 		.long	-1
 1770 0034 FFFFFF7F 		.long	2147483647
 1771 0038 FFFFFFFF 		.long	-1
 1772 003c FFFFFF7F 		.long	2147483647
 1773              		.local	_ZStL8__ioinit
 1774              		.comm	_ZStL8__ioinit,1,1
 1775              		.section	.rodata.cst8,"aM",@progbits,8
 1776              		.align 8
 1777              	.LC1:
 1778 0000 33333333 		.long	858993459
 1779 0004 3333D33F 		.long	1070805811
 1780              		.align 8
 1781              	.LC2:
 1782 0008 9A999999 		.long	2576980378
 1783 000c 9999C93F 		.long	1070176665
 1784              		.section	.rodata.cst32,"aM",@progbits,32
 1785              		.align 32
 1786              	.LC3:
 1787 0000 83C8C96D 		.long	1841940611
 1788 0004 305FE43F 		.long	1071931184
 1789 0008 83C8C96D 		.long	1841940611
 1790 000c 305FE43F 		.long	1071931184
 1791 0010 83C8C96D 		.long	1841940611
 1792 0014 305FE43F 		.long	1071931184
 1793 0018 83C8C96D 		.long	1841940611
 1794 001c 305FE43F 		.long	1071931184
 1795              		.align 32
 1796              	.LC4:
 1797 0020 00000050 		.long	1342177280
 1798 0024 FB21F93F 		.long	1073291771
 1799 0028 00000050 		.long	1342177280
 1800 002c FB21F93F 		.long	1073291771
 1801 0030 00000050 		.long	1342177280
 1802 0034 FB21F93F 		.long	1073291771
 1803 0038 00000050 		.long	1342177280
 1804 003c FB21F93F 		.long	1073291771
 1805              		.align 32
 1806              	.LC5:
 1807 0040 00000060 		.long	1610612736
 1808 0044 B410513E 		.long	1045500084
 1809 0048 00000060 		.long	1610612736
 1810 004c B410513E 		.long	1045500084
 1811 0050 00000060 		.long	1610612736
 1812 0054 B410513E 		.long	1045500084
 1813 0058 00000060 		.long	1610612736
 1814 005c B410513E 		.long	1045500084
 1815              		.align 32
 1816              	.LC6:
 1817 0060 075C1433 		.long	856972295
 1818 0064 26A6913C 		.long	1016178214
 1819 0068 075C1433 		.long	856972295
 1820 006c 26A6913C 		.long	1016178214
 1821 0070 075C1433 		.long	856972295
 1822 0074 26A6913C 		.long	1016178214
 1823 0078 075C1433 		.long	856972295
 1824 007c 26A6913C 		.long	1016178214
GAS LISTING /tmp/cclDueTb.s 			page 57


 1825              		.align 32
 1826              	.LC7:
 1827 0080 D0F71011 		.long	286324688
 1828 0084 1111813F 		.long	1065423121
 1829 0088 D0F71011 		.long	286324688
 1830 008c 1111813F 		.long	1065423121
 1831 0090 D0F71011 		.long	286324688
 1832 0094 1111813F 		.long	1065423121
 1833 0098 D0F71011 		.long	286324688
 1834 009c 1111813F 		.long	1065423121
 1835              		.align 32
 1836              	.LC8:
 1837 00a0 48555555 		.long	1431655752
 1838 00a4 5555C5BF 		.long	-1077586603
 1839 00a8 48555555 		.long	1431655752
 1840 00ac 5555C5BF 		.long	-1077586603
 1841 00b0 48555555 		.long	1431655752
 1842 00b4 5555C5BF 		.long	-1077586603
 1843 00b8 48555555 		.long	1431655752
 1844 00bc 5555C5BF 		.long	-1077586603
 1845              		.align 32
 1846              	.LC9:
 1847 00c0 CD9CD11F 		.long	533830861
 1848 00c4 FDD8E53D 		.long	1038473469
 1849 00c8 CD9CD11F 		.long	533830861
 1850 00cc FDD8E53D 		.long	1038473469
 1851 00d0 CD9CD11F 		.long	533830861
 1852 00d4 FDD8E53D 		.long	1038473469
 1853 00d8 CD9CD11F 		.long	533830861
 1854 00dc FDD8E53D 		.long	1038473469
 1855              		.align 32
 1856              	.LC10:
 1857 00e0 5D1F29A9 		.long	2838044509
 1858 00e4 E5E55ABE 		.long	-1101339163
 1859 00e8 5D1F29A9 		.long	2838044509
 1860 00ec E5E55ABE 		.long	-1101339163
 1861 00f0 5D1F29A9 		.long	2838044509
 1862 00f4 E5E55ABE 		.long	-1101339163
 1863 00f8 5D1F29A9 		.long	2838044509
 1864 00fc E5E55ABE 		.long	-1101339163
 1865              		.align 32
 1866              	.LC11:
 1867 0100 A1487D56 		.long	1451051169
 1868 0104 E31DC73E 		.long	1053236707
 1869 0108 A1487D56 		.long	1451051169
 1870 010c E31DC73E 		.long	1053236707
 1871 0110 A1487D56 		.long	1451051169
 1872 0114 E31DC73E 		.long	1053236707
 1873 0118 A1487D56 		.long	1451051169
 1874 011c E31DC73E 		.long	1053236707
 1875              		.align 32
 1876              	.LC12:
 1877 0120 03DFBF19 		.long	432004867
 1878 0124 A0012ABF 		.long	-1087766112
 1879 0128 03DFBF19 		.long	432004867
 1880 012c A0012ABF 		.long	-1087766112
 1881 0130 03DFBF19 		.long	432004867
GAS LISTING /tmp/cclDueTb.s 			page 58


 1882 0134 A0012ABF 		.long	-1087766112
 1883 0138 03DFBF19 		.long	432004867
 1884 013c A0012ABF 		.long	-1087766112
 1885              		.align 32
 1886              	.LC13:
 1887 0140 914FC116 		.long	381767569
 1888 0144 6CC156BF 		.long	-1084833428
 1889 0148 914FC116 		.long	381767569
 1890 014c 6CC156BF 		.long	-1084833428
 1891 0150 914FC116 		.long	381767569
 1892 0154 6CC156BF 		.long	-1084833428
 1893 0158 914FC116 		.long	381767569
 1894 015c 6CC156BF 		.long	-1084833428
 1895              		.align 32
 1896              	.LC14:
 1897 0160 4B555555 		.long	1431655755
 1898 0164 5555A53F 		.long	1067799893
 1899 0168 4B555555 		.long	1431655755
 1900 016c 5555A53F 		.long	1067799893
 1901 0170 4B555555 		.long	1431655755
 1902 0174 5555A53F 		.long	1067799893
 1903 0178 4B555555 		.long	1431655755
 1904 017c 5555A53F 		.long	1067799893
 1905              		.align 32
 1906              	.LC15:
 1907 0180 9B1A86A0 		.long	2693143195
 1908 0184 49FAA8BD 		.long	-1112999351
 1909 0188 9B1A86A0 		.long	2693143195
 1910 018c 49FAA8BD 		.long	-1112999351
 1911 0190 9B1A86A0 		.long	2693143195
 1912 0194 49FAA8BD 		.long	-1112999351
 1913 0198 9B1A86A0 		.long	2693143195
 1914 019c 49FAA8BD 		.long	-1112999351
 1915              		.align 32
 1916              	.LC16:
 1917 01a0 053F4E7B 		.long	2068725509
 1918 01a4 9DEE213E 		.long	1042411165
 1919 01a8 053F4E7B 		.long	2068725509
 1920 01ac 9DEE213E 		.long	1042411165
 1921 01b0 053F4E7B 		.long	2068725509
 1922 01b4 9DEE213E 		.long	1042411165
 1923 01b8 053F4E7B 		.long	2068725509
 1924 01bc 9DEE213E 		.long	1042411165
 1925              		.align 32
 1926              	.LC17:
 1927 01c0 C64BAC7E 		.long	2125220806
 1928 01c4 4F7E92BE 		.long	-1097695665
 1929 01c8 C64BAC7E 		.long	2125220806
 1930 01cc 4F7E92BE 		.long	-1097695665
 1931 01d0 C64BAC7E 		.long	2125220806
 1932 01d4 4F7E92BE 		.long	-1097695665
 1933 01d8 C64BAC7E 		.long	2125220806
 1934 01dc 4F7E92BE 		.long	-1097695665
 1935              		.align 32
 1936              	.LC18:
 1937 01e0 F544C819 		.long	432555253
 1938 01e4 A001FA3E 		.long	1056571808
GAS LISTING /tmp/cclDueTb.s 			page 59


 1939 01e8 F544C819 		.long	432555253
 1940 01ec A001FA3E 		.long	1056571808
 1941 01f0 F544C819 		.long	432555253
 1942 01f4 A001FA3E 		.long	1056571808
 1943 01f8 F544C819 		.long	432555253
 1944 01fc A001FA3E 		.long	1056571808
 1945              		.align 32
 1946              	.LC19:
 1947 0200 00000000 		.long	0
 1948 0204 0000E03F 		.long	1071644672
 1949 0208 00000000 		.long	0
 1950 020c 0000E03F 		.long	1071644672
 1951 0210 00000000 		.long	0
 1952 0214 0000E03F 		.long	1071644672
 1953 0218 00000000 		.long	0
 1954 021c 0000E03F 		.long	1071644672
 1955              		.align 32
 1956              	.LC20:
 1957 0220 00000000 		.long	0
 1958 0224 0000F03F 		.long	1072693248
 1959 0228 00000000 		.long	0
 1960 022c 0000F03F 		.long	1072693248
 1961 0230 00000000 		.long	0
 1962 0234 0000F03F 		.long	1072693248
 1963 0238 00000000 		.long	0
 1964 023c 0000F03F 		.long	1072693248
 1965              		.section	.rodata.cst16,"aM",@progbits,16
 1966              		.align 16
 1967              	.LC21:
 1968 0000 01000000 		.quad	1
 1968      00000000 
 1969 0008 01000000 		.quad	1
 1969      00000000 
 1970              		.align 16
 1971              	.LC22:
 1972 0010 00000000 		.quad	36028797018963968
 1972      00008000 
 1973 0018 00000000 		.quad	36028797018963968
 1973      00008000 
 1974              		.align 16
 1975              	.LC23:
 1976 0020 00000000 		.quad	-9007199254740992
 1976      0000E0FF 
 1977 0028 00000000 		.quad	-9007199254740992
 1977      0000E0FF 
 1978              		.align 16
 1979              	.LC24:
 1980 0030 02000000 		.quad	2
 1980      00000000 
 1981 0038 02000000 		.quad	2
 1981      00000000 
 1982              		.section	.rodata.cst32
 1983              		.align 32
 1984              	.LC25:
 1985 0240 33333333 		.long	858993459
 1986 0244 3333D33F 		.long	1070805811
 1987 0248 33333333 		.long	858993459
GAS LISTING /tmp/cclDueTb.s 			page 60


 1988 024c 3333D33F 		.long	1070805811
 1989 0250 33333333 		.long	858993459
 1990 0254 3333D33F 		.long	1070805811
 1991 0258 33333333 		.long	858993459
 1992 025c 3333D33F 		.long	1070805811
 1993              		.align 32
 1994              	.LC26:
 1995 0260 9A999999 		.long	2576980378
 1996 0264 9999C93F 		.long	1070176665
 1997 0268 9A999999 		.long	2576980378
 1998 026c 9999C93F 		.long	1070176665
 1999 0270 9A999999 		.long	2576980378
 2000 0274 9999C93F 		.long	1070176665
 2001 0278 9A999999 		.long	2576980378
 2002 027c 9999C93F 		.long	1070176665
 2003              		.align 32
 2004              	.LC27:
 2005 0280 CDCCCCCC 		.long	3435973837
 2006 0284 CCCCCC3F 		.long	1070386380
 2007 0288 CDCCCCCC 		.long	3435973837
 2008 028c CCCCCC3F 		.long	1070386380
 2009 0290 CDCCCCCC 		.long	3435973837
 2010 0294 CCCCCC3F 		.long	1070386380
 2011 0298 CDCCCCCC 		.long	3435973837
 2012 029c CCCCCC3F 		.long	1070386380
 2013              		.align 32
 2014              	.LC28:
 2015 02a0 33333333 		.long	858993459
 2016 02a4 3333B33F 		.long	1068708659
 2017 02a8 33333333 		.long	858993459
 2018 02ac 3333B33F 		.long	1068708659
 2019 02b0 33333333 		.long	858993459
 2020 02b4 3333B33F 		.long	1068708659
 2021 02b8 33333333 		.long	858993459
 2022 02bc 3333B33F 		.long	1068708659
 2023              		.align 32
 2024              	.LC29:
 2025 02c0 33333333 		.long	858993459
 2026 02c4 3333F33F 		.long	1072902963
 2027 02c8 33333333 		.long	858993459
 2028 02cc 3333F33F 		.long	1072902963
 2029 02d0 33333333 		.long	858993459
 2030 02d4 3333F33F 		.long	1072902963
 2031 02d8 33333333 		.long	858993459
 2032 02dc 3333F33F 		.long	1072902963
 2033              		.align 32
 2034              	.LC30:
 2035 02e0 CDCCCCCC 		.long	3435973837
 2036 02e4 CCCCECBF 		.long	-1075000116
 2037 02e8 CDCCCCCC 		.long	3435973837
 2038 02ec CCCCECBF 		.long	-1075000116
 2039 02f0 CDCCCCCC 		.long	3435973837
 2040 02f4 CCCCECBF 		.long	-1075000116
 2041 02f8 CDCCCCCC 		.long	3435973837
 2042 02fc CCCCECBF 		.long	-1075000116
 2043              		.align 32
 2044              	.LC31:
GAS LISTING /tmp/cclDueTb.s 			page 61


 2045 0300 D94B682F 		.long	795364313
 2046 0304 A1BDF43F 		.long	1073003937
 2047 0308 D94B682F 		.long	795364313
 2048 030c A1BDF43F 		.long	1073003937
 2049 0310 D94B682F 		.long	795364313
 2050 0314 A1BDF43F 		.long	1073003937
 2051 0318 D94B682F 		.long	795364313
 2052 031c A1BDF43F 		.long	1073003937
 2053              		.align 32
 2054              	.LC32:
 2055 0320 D44B682F 		.long	795364308
 2056 0324 A1BD04C0 		.long	-1073431135
 2057 0328 D44B682F 		.long	795364308
 2058 032c A1BD04C0 		.long	-1073431135
 2059 0330 D44B682F 		.long	795364308
 2060 0334 A1BD04C0 		.long	-1073431135
 2061 0338 D44B682F 		.long	795364308
 2062 033c A1BD04C0 		.long	-1073431135
 2063              		.align 32
 2064              	.LC33:
 2065 0340 00000000 		.long	0
 2066 0344 00000440 		.long	1074003968
 2067 0348 00000000 		.long	0
 2068 034c 00000440 		.long	1074003968
 2069 0350 00000000 		.long	0
 2070 0354 00000440 		.long	1074003968
 2071 0358 00000000 		.long	0
 2072 035c 00000440 		.long	1074003968
 2073              		.align 32
 2074              	.LC34:
 2075 0360 2FA1BD84 		.long	2227020079
 2076 0364 F612CABF 		.long	-1077275914
 2077 0368 2FA1BD84 		.long	2227020079
 2078 036c F612CABF 		.long	-1077275914
 2079 0370 2FA1BD84 		.long	2227020079
 2080 0374 F612CABF 		.long	-1077275914
 2081 0378 2FA1BD84 		.long	2227020079
 2082 037c F612CABF 		.long	-1077275914
 2083              		.align 32
 2084              	.LC35:
 2085 0380 00000000 		.long	0
 2086 0384 00A0AF3F 		.long	1068474368
 2087 0388 00000000 		.long	0
 2088 038c 00A0AF3F 		.long	1068474368
 2089 0390 00000000 		.long	0
 2090 0394 00A0AF3F 		.long	1068474368
 2091 0398 00000000 		.long	0
 2092 039c 00A0AF3F 		.long	1068474368
 2093              		.align 32
 2094              	.LC36:
 2095 03a0 B497D05E 		.long	1590728628
 2096 03a4 429FD93F 		.long	1071226690
 2097 03a8 B497D05E 		.long	1590728628
 2098 03ac 429FD93F 		.long	1071226690
 2099 03b0 B497D05E 		.long	1590728628
 2100 03b4 429FD93F 		.long	1071226690
 2101 03b8 B497D05E 		.long	1590728628
GAS LISTING /tmp/cclDueTb.s 			page 62


 2102 03bc 429FD93F 		.long	1071226690
 2103              		.align 32
 2104              	.LC37:
 2105 03c0 BE84F612 		.long	318145726
 2106 03c4 DA4BA53F 		.long	1067797466
 2107 03c8 BE84F612 		.long	318145726
 2108 03cc DA4BA53F 		.long	1067797466
 2109 03d0 BE84F612 		.long	318145726
 2110 03d4 DA4BA53F 		.long	1067797466
 2111 03d8 BE84F612 		.long	318145726
 2112 03dc DA4BA53F 		.long	1067797466
 2113              		.align 32
 2114              	.LC38:
 2115 03e0 00000000 		.long	0
 2116 03e4 00E0D53F 		.long	1070981120
 2117 03e8 00000000 		.long	0
 2118 03ec 00E0D53F 		.long	1070981120
 2119 03f0 00000000 		.long	0
 2120 03f4 00E0D53F 		.long	1070981120
 2121 03f8 00000000 		.long	0
 2122 03fc 00E0D53F 		.long	1070981120
 2123              		.align 32
 2124              	.LC39:
 2125 0400 427B09ED 		.long	3976821570
 2126 0404 25349E3F 		.long	1067332645
 2127 0408 427B09ED 		.long	3976821570
 2128 040c 25349E3F 		.long	1067332645
 2129 0410 427B09ED 		.long	3976821570
 2130 0414 25349E3F 		.long	1067332645
 2131 0418 427B09ED 		.long	3976821570
 2132 041c 25349E3F 		.long	1067332645
 2133              		.align 32
 2134              	.LC40:
 2135 0420 B0B4DA85 		.long	2245702832
 2136 0424 A680D23F 		.long	1070760102
 2137 0428 B0B4DA85 		.long	2245702832
 2138 042c A680D23F 		.long	1070760102
 2139 0430 B0B4DA85 		.long	2245702832
 2140 0434 A680D23F 		.long	1070760102
 2141 0438 B0B4DA85 		.long	2245702832
 2142 043c A680D23F 		.long	1070760102
 2143              		.align 32
 2144              	.LC41:
 2145 0440 29691676 		.long	1981180201
 2146 0444 9FEFCA3F 		.long	1070264223
 2147 0448 29691676 		.long	1981180201
 2148 044c 9FEFCA3F 		.long	1070264223
 2149 0450 29691676 		.long	1981180201
 2150 0454 9FEFCA3F 		.long	1070264223
 2151 0458 29691676 		.long	1981180201
 2152 045c 9FEFCA3F 		.long	1070264223
 2153              		.align 32
 2154              	.LC42:
 2155 0460 80B22B2E 		.long	774615680
 2156 0464 D0C3D93F 		.long	1071236048
 2157 0468 80B22B2E 		.long	774615680
 2158 046c D0C3D93F 		.long	1071236048
GAS LISTING /tmp/cclDueTb.s 			page 63


 2159 0470 80B22B2E 		.long	774615680
 2160 0474 D0C3D93F 		.long	1071236048
 2161 0478 80B22B2E 		.long	774615680
 2162 047c D0C3D93F 		.long	1071236048
 2163              		.align 32
 2164              	.LC43:
 2165 0480 EE90B943 		.long	1136234734
 2166 0484 E60EB93F 		.long	1069092582
 2167 0488 EE90B943 		.long	1136234734
 2168 048c E60EB93F 		.long	1069092582
 2169 0490 EE90B943 		.long	1136234734
 2170 0494 E60EB93F 		.long	1069092582
 2171 0498 EE90B943 		.long	1136234734
 2172 049c E60EB93F 		.long	1069092582
 2173              		.align 32
 2174              	.LC44:
 2175 04a0 83A5D52E 		.long	785753475
 2176 04a4 3405A4BF 		.long	-1079769804
 2177 04a8 83A5D52E 		.long	785753475
 2178 04ac 3405A4BF 		.long	-1079769804
 2179 04b0 83A5D52E 		.long	785753475
 2180 04b4 3405A4BF 		.long	-1079769804
 2181 04b8 83A5D52E 		.long	785753475
 2182 04bc 3405A4BF 		.long	-1079769804
 2183              		.align 32
 2184              	.LC45:
 2185 04c0 92244992 		.long	2454267026
 2186 04c4 24C9933F 		.long	1066649892
 2187 04c8 92244992 		.long	2454267026
 2188 04cc 24C9933F 		.long	1066649892
 2189 04d0 92244992 		.long	2454267026
 2190 04d4 24C9933F 		.long	1066649892
 2191 04d8 92244992 		.long	2454267026
 2192 04dc 24C9933F 		.long	1066649892
 2193              		.align 32
 2194              	.LC46:
 2195 04e0 12F37686 		.long	2255942418
 2196 04e4 C47CA13F 		.long	1067547844
 2197 04e8 12F37686 		.long	2255942418
 2198 04ec C47CA13F 		.long	1067547844
 2199 04f0 12F37686 		.long	2255942418
 2200 04f4 C47CA13F 		.long	1067547844
 2201 04f8 12F37686 		.long	2255942418
 2202 04fc C47CA13F 		.long	1067547844
 2203              		.align 32
 2204              	.LC47:
 2205 0500 0A56F19A 		.long	2599507466
 2206 0504 DB1D93BF 		.long	-1080877605
 2207 0508 0A56F19A 		.long	2599507466
 2208 050c DB1D93BF 		.long	-1080877605
 2209 0510 0A56F19A 		.long	2599507466
 2210 0514 DB1D93BF 		.long	-1080877605
 2211 0518 0A56F19A 		.long	2599507466
 2212 051c DB1D93BF 		.long	-1080877605
 2213              		.align 32
 2214              	.LC48:
 2215 0520 66599665 		.long	1704352102
GAS LISTING /tmp/cclDueTb.s 			page 64


 2216 0524 5996713F 		.long	1064408665
 2217 0528 66599665 		.long	1704352102
 2218 052c 5996713F 		.long	1064408665
 2219 0530 66599665 		.long	1704352102
 2220 0534 5996713F 		.long	1064408665
 2221 0538 66599665 		.long	1704352102
 2222 053c 5996713F 		.long	1064408665
 2223              		.align 32
 2224              	.LC49:
 2225 0540 95D626E8 		.long	3894859413
 2226 0544 0B2E113E 		.long	1041313291
 2227 0548 95D626E8 		.long	3894859413
 2228 054c 0B2E113E 		.long	1041313291
 2229 0550 95D626E8 		.long	3894859413
 2230 0554 0B2E113E 		.long	1041313291
 2231 0558 95D626E8 		.long	3894859413
 2232 055c 0B2E113E 		.long	1041313291
 2233              		.section	.rodata.cst16
 2234              		.align 16
 2235              	.LC50:
 2236 0040 FFFFFFFF 		.quad	4503599627370495
 2236      FFFF0F00 
 2237 0048 FFFFFFFF 		.quad	4503599627370495
 2237      FFFF0F00 
 2238              		.align 16
 2239              	.LC51:
 2240 0050 00000000 		.quad	4602678819172646912
 2240      0000E03F 
 2241 0058 00000000 		.quad	4602678819172646912
 2241      0000E03F 
 2242              		.align 16
 2243              	.LC52:
 2244 0060 00000000 		.quad	4841369599423283200
 2244      00003043 
 2245 0068 00000000 		.quad	4841369599423283200
 2245      00003043 
 2246              		.section	.rodata.cst32
 2247              		.align 32
 2248              	.LC53:
 2249 0560 FF030000 		.long	1023
 2250 0564 00003043 		.long	1127219200
 2251 0568 FF030000 		.long	1023
 2252 056c 00003043 		.long	1127219200
 2253 0570 FF030000 		.long	1023
 2254 0574 00003043 		.long	1127219200
 2255 0578 FF030000 		.long	1023
 2256 057c 00003043 		.long	1127219200
 2257              		.align 32
 2258              	.LC54:
 2259 0580 CD3B7F66 		.long	1719614413
 2260 0584 9EA0E63F 		.long	1072079006
 2261 0588 CD3B7F66 		.long	1719614413
 2262 058c 9EA0E63F 		.long	1072079006
 2263 0590 CD3B7F66 		.long	1719614413
 2264 0594 9EA0E63F 		.long	1072079006
 2265 0598 CD3B7F66 		.long	1719614413
 2266 059c 9EA0E63F 		.long	1072079006
GAS LISTING /tmp/cclDueTb.s 			page 65


 2267              		.section	.rodata.cst16
 2268              		.align 16
 2269              	.LC55:
 2270 0070 FFFFFFFF 		.long	4294967295
 2271 0074 FFFFFFFF 		.long	-1
 2272 0078 FFFFFFFF 		.long	4294967295
 2273 007c FFFFFFFF 		.long	-1
 2274              		.section	.rodata.cst32
 2275              		.align 32
 2276              	.LC56:
 2277 05a0 4DC84B92 		.long	2454440013
 2278 05a4 D6EF3140 		.long	1077014486
 2279 05a8 4DC84B92 		.long	2454440013
 2280 05ac D6EF3140 		.long	1077014486
 2281 05b0 4DC84B92 		.long	2454440013
 2282 05b4 D6EF3140 		.long	1077014486
 2283 05b8 4DC84B92 		.long	2454440013
 2284 05bc D6EF3140 		.long	1077014486
 2285              		.align 32
 2286              	.LC57:
 2287 05c0 F8DC7E7D 		.long	2105466104
 2288 05c4 63D51E40 		.long	1075762531
 2289 05c8 F8DC7E7D 		.long	2105466104
 2290 05cc 63D51E40 		.long	1075762531
 2291 05d0 F8DC7E7D 		.long	2105466104
 2292 05d4 63D51E40 		.long	1075762531
 2293 05d8 F8DC7E7D 		.long	2105466104
 2294 05dc 63D51E40 		.long	1075762531
 2295              		.align 32
 2296              	.LC58:
 2297 05e0 B01BC393 		.long	2479037360
 2298 05e4 C2B41A3F 		.long	1058714818
 2299 05e8 B01BC393 		.long	2479037360
 2300 05ec C2B41A3F 		.long	1058714818
 2301 05f0 B01BC393 		.long	2479037360
 2302 05f4 C2B41A3F 		.long	1058714818
 2303 05f8 B01BC393 		.long	2479037360
 2304 05fc C2B41A3F 		.long	1058714818
 2305              		.align 32
 2306              	.LC59:
 2307 0600 F252563F 		.long	1062621938
 2308 0604 F5D6DF3F 		.long	1071634165
 2309 0608 F252563F 		.long	1062621938
 2310 060c F5D6DF3F 		.long	1071634165
 2311 0610 F252563F 		.long	1062621938
 2312 0614 F5D6DF3F 		.long	1071634165
 2313 0618 F252563F 		.long	1062621938
 2314 061c F5D6DF3F 		.long	1071634165
 2315              		.align 32
 2316              	.LC60:
 2317 0620 116992ED 		.long	3985795345
 2318 0624 BAD21240 		.long	1074975418
 2319 0628 116992ED 		.long	3985795345
 2320 062c BAD21240 		.long	1074975418
 2321 0630 116992ED 		.long	3985795345
 2322 0634 BAD21240 		.long	1074975418
 2323 0638 116992ED 		.long	3985795345
GAS LISTING /tmp/cclDueTb.s 			page 66


 2324 063c BAD21240 		.long	1074975418
 2325              		.align 32
 2326              	.LC61:
 2327 0640 2EEB3EC6 		.long	3326012206
 2328 0644 72FF2C40 		.long	1076690802
 2329 0648 2EEB3EC6 		.long	3326012206
 2330 064c 72FF2C40 		.long	1076690802
 2331 0650 2EEB3EC6 		.long	3326012206
 2332 0654 72FF2C40 		.long	1076690802
 2333 0658 2EEB3EC6 		.long	3326012206
 2334 065c 72FF2C40 		.long	1076690802
 2335              		.align 32
 2336              	.LC62:
 2337 0660 21AE5EEB 		.long	3948850721
 2338 0664 E2C95140 		.long	1079101922
 2339 0668 21AE5EEB 		.long	3948850721
 2340 066c E2C95140 		.long	1079101922
 2341 0670 21AE5EEB 		.long	3948850721
 2342 0674 E2C95140 		.long	1079101922
 2343 0678 21AE5EEB 		.long	3948850721
 2344 067c E2C95140 		.long	1079101922
 2345              		.align 32
 2346              	.LC63:
 2347 0680 B2251F9E 		.long	2652841394
 2348 0684 0A203740 		.long	1077354506
 2349 0688 B2251F9E 		.long	2652841394
 2350 068c 0A203740 		.long	1077354506
 2351 0690 B2251F9E 		.long	2652841394
 2352 0694 0A203740 		.long	1077354506
 2353 0698 B2251F9E 		.long	2652841394
 2354 069c 0A203740 		.long	1077354506
 2355              		.align 32
 2356              	.LC64:
 2357 06a0 8EEF97AE 		.long	2929192846
 2358 06a4 20932640 		.long	1076269856
 2359 06a8 8EEF97AE 		.long	2929192846
 2360 06ac 20932640 		.long	1076269856
 2361 06b0 8EEF97AE 		.long	2929192846
 2362 06b4 20932640 		.long	1076269856
 2363 06b8 8EEF97AE 		.long	2929192846
 2364 06bc 20932640 		.long	1076269856
 2365              		.align 32
 2366              	.LC65:
 2367 06c0 33C0194E 		.long	1310310451
 2368 06c4 2C9D4640 		.long	1078369580
 2369 06c8 33C0194E 		.long	1310310451
 2370 06cc 2C9D4640 		.long	1078369580
 2371 06d0 33C0194E 		.long	1310310451
 2372 06d4 2C9D4640 		.long	1078369580
 2373 06d8 33C0194E 		.long	1310310451
 2374 06dc 2C9D4640 		.long	1078369580
 2375              		.align 32
 2376              	.LC66:
 2377 06e0 BDBD26A3 		.long	2737225149
 2378 06e4 33BF5440 		.long	1079295795
 2379 06e8 BDBD26A3 		.long	2737225149
 2380 06ec 33BF5440 		.long	1079295795
GAS LISTING /tmp/cclDueTb.s 			page 67


 2381 06f0 BDBD26A3 		.long	2737225149
 2382 06f4 33BF5440 		.long	1079295795
 2383 06f8 BDBD26A3 		.long	2737225149
 2384 06fc 33BF5440 		.long	1079295795
 2385              		.align 32
 2386              	.LC67:
 2387 0700 A80C615C 		.long	1549864104
 2388 0704 10D02BBF 		.long	-1087647728
 2389 0708 A80C615C 		.long	1549864104
 2390 070c 10D02BBF 		.long	-1087647728
 2391 0710 A80C615C 		.long	1549864104
 2392 0714 10D02BBF 		.long	-1087647728
 2393 0718 A80C615C 		.long	1549864104
 2394 071c 10D02BBF 		.long	-1087647728
 2395              		.align 32
 2396              	.LC68:
 2397 0720 00000000 		.long	0
 2398 0724 0030E63F 		.long	1072050176
 2399 0728 00000000 		.long	0
 2400 072c 0030E63F 		.long	1072050176
 2401 0730 00000000 		.long	0
 2402 0734 0030E63F 		.long	1072050176
 2403 0738 00000000 		.long	0
 2404 073c 0030E63F 		.long	1072050176
 2405              		.align 32
 2406              	.LC69:
 2407 0740 00000000 		.long	0
 2408 0744 00001000 		.long	1048576
 2409 0748 00000000 		.long	0
 2410 074c 00001000 		.long	1048576
 2411 0750 00000000 		.long	0
 2412 0754 00001000 		.long	1048576
 2413 0758 00000000 		.long	0
 2414 075c 00001000 		.long	1048576
 2415              		.align 32
 2416              	.LC70:
 2417 0760 00000020 		.long	536870912
 2418 0764 2000F87F 		.long	2146959392
 2419 0768 00000020 		.long	536870912
 2420 076c 2000F87F 		.long	2146959392
 2421 0770 00000020 		.long	536870912
 2422 0774 2000F87F 		.long	2146959392
 2423 0778 00000020 		.long	536870912
 2424 077c 2000F87F 		.long	2146959392
 2425              		.section	.rodata.cst16
 2426              		.align 16
 2427              	.LC71:
 2428 0080 00000000 		.long	0
 2429 0084 0000F07F 		.long	2146435072
 2430 0088 00000000 		.long	0
 2431 008c 0000F07F 		.long	2146435072
 2432              		.align 16
 2433              	.LC72:
 2434 0090 00000000 		.quad	9218868437227405312
 2434      0000F07F 
 2435 0098 00000000 		.quad	9218868437227405312
 2435      0000F07F 
GAS LISTING /tmp/cclDueTb.s 			page 68


 2436              		.section	.rodata.cst32
 2437              		.align 32
 2438              	.LC73:
 2439 0780 FE822B65 		.long	1697350398
 2440 0784 4715F73F 		.long	1073157447
 2441 0788 FE822B65 		.long	1697350398
 2442 078c 4715F73F 		.long	1073157447
 2443 0790 FE822B65 		.long	1697350398
 2444 0794 4715F73F 		.long	1073157447
 2445 0798 FE822B65 		.long	1697350398
 2446 079c 4715F73F 		.long	1073157447
 2447              		.align 32
 2448              	.LC74:
 2449 07a0 00000000 		.long	0
 2450 07a4 402EE63F 		.long	1072049728
 2451 07a8 00000000 		.long	0
 2452 07ac 402EE63F 		.long	1072049728
 2453 07b0 00000000 		.long	0
 2454 07b4 402EE63F 		.long	1072049728
 2455 07b8 00000000 		.long	0
 2456 07bc 402EE63F 		.long	1072049728
 2457              		.align 32
 2458              	.LC75:
 2459 07c0 CAAB79CF 		.long	3480857546
 2460 07c4 D1F7B73E 		.long	1052243921
 2461 07c8 CAAB79CF 		.long	3480857546
 2462 07cc D1F7B73E 		.long	1052243921
 2463 07d0 CAAB79CF 		.long	3480857546
 2464 07d4 D1F7B73E 		.long	1052243921
 2465 07d8 CAAB79CF 		.long	3480857546
 2466 07dc D1F7B73E 		.long	1052243921
 2467              		.align 32
 2468              	.LC76:
 2469 07e0 55555555 		.long	1431655765
 2470 07e4 5555C53F 		.long	1069897045
 2471 07e8 55555555 		.long	1431655765
 2472 07ec 5555C53F 		.long	1069897045
 2473 07f0 55555555 		.long	1431655765
 2474 07f4 5555C53F 		.long	1069897045
 2475 07f8 55555555 		.long	1431655765
 2476 07fc 5555C53F 		.long	1069897045
 2477              		.align 32
 2478              	.LC77:
 2479 0800 11111111 		.long	286331153
 2480 0804 1111813F 		.long	1065423121
 2481 0808 11111111 		.long	286331153
 2482 080c 1111813F 		.long	1065423121
 2483 0810 11111111 		.long	286331153
 2484 0814 1111813F 		.long	1065423121
 2485 0818 11111111 		.long	286331153
 2486 081c 1111813F 		.long	1065423121
 2487              		.align 32
 2488              	.LC78:
 2489 0820 55555555 		.long	1431655765
 2490 0824 5555A53F 		.long	1067799893
 2491 0828 55555555 		.long	1431655765
 2492 082c 5555A53F 		.long	1067799893
GAS LISTING /tmp/cclDueTb.s 			page 69


 2493 0830 55555555 		.long	1431655765
 2494 0834 5555A53F 		.long	1067799893
 2495 0838 55555555 		.long	1431655765
 2496 083c 5555A53F 		.long	1067799893
 2497              		.align 32
 2498              	.LC79:
 2499 0840 1AA0011A 		.long	436314138
 2500 0844 A0012A3F 		.long	1059717536
 2501 0848 1AA0011A 		.long	436314138
 2502 084c A0012A3F 		.long	1059717536
 2503 0850 1AA0011A 		.long	436314138
 2504 0854 A0012A3F 		.long	1059717536
 2505 0858 1AA0011A 		.long	436314138
 2506 085c A0012A3F 		.long	1059717536
 2507              		.align 32
 2508              	.LC80:
 2509 0860 176CC116 		.long	381774871
 2510 0864 6CC1563F 		.long	1062650220
 2511 0868 176CC116 		.long	381774871
 2512 086c 6CC1563F 		.long	1062650220
 2513 0870 176CC116 		.long	381774871
 2514 0874 6CC1563F 		.long	1062650220
 2515 0878 176CC116 		.long	381774871
 2516 087c 6CC1563F 		.long	1062650220
 2517              		.align 32
 2518              	.LC81:
 2519 0880 34C756A5 		.long	2773927732
 2520 0884 E31DC73E 		.long	1053236707
 2521 0888 34C756A5 		.long	2773927732
 2522 088c E31DC73E 		.long	1053236707
 2523 0890 34C756A5 		.long	2773927732
 2524 0894 E31DC73E 		.long	1053236707
 2525 0898 34C756A5 		.long	2773927732
 2526 089c E31DC73E 		.long	1053236707
 2527              		.align 32
 2528              	.LC82:
 2529 08a0 1AA0011A 		.long	436314138
 2530 08a4 A001FA3E 		.long	1056571808
 2531 08a8 1AA0011A 		.long	436314138
 2532 08ac A001FA3E 		.long	1056571808
 2533 08b0 1AA0011A 		.long	436314138
 2534 08b4 A001FA3E 		.long	1056571808
 2535 08b8 1AA0011A 		.long	436314138
 2536 08bc A001FA3E 		.long	1056571808
 2537              		.align 32
 2538              	.LC83:
 2539 08c0 E444F567 		.long	1744127204
 2540 08c4 45E65A3E 		.long	1046144581
 2541 08c8 E444F567 		.long	1744127204
 2542 08cc 45E65A3E 		.long	1046144581
 2543 08d0 E444F567 		.long	1744127204
 2544 08d4 45E65A3E 		.long	1046144581
 2545 08d8 E444F567 		.long	1744127204
 2546 08dc 45E65A3E 		.long	1046144581
 2547              		.align 32
 2548              	.LC84:
 2549 08e0 5C9F78B7 		.long	3078135644
GAS LISTING /tmp/cclDueTb.s 			page 70


 2550 08e4 4F7E923E 		.long	1049787983
 2551 08e8 5C9F78B7 		.long	3078135644
 2552 08ec 4F7E923E 		.long	1049787983
 2553 08f0 5C9F78B7 		.long	3078135644
 2554 08f4 4F7E923E 		.long	1049787983
 2555 08f8 5C9F78B7 		.long	3078135644
 2556 08fc 4F7E923E 		.long	1049787983
 2557              		.align 32
 2558              	.LC85:
 2559 0900 096DA813 		.long	329805065
 2560 0904 4612E63D 		.long	1038488134
 2561 0908 096DA813 		.long	329805065
 2562 090c 4612E63D 		.long	1038488134
 2563 0910 096DA813 		.long	329805065
 2564 0914 4612E63D 		.long	1038488134
 2565 0918 096DA813 		.long	329805065
 2566 091c 4612E63D 		.long	1038488134
 2567              		.align 32
 2568              	.LC86:
 2569 0920 98D8F8EF 		.long	4026063000
 2570 0924 D8EE213E 		.long	1042411224
 2571 0928 98D8F8EF 		.long	4026063000
 2572 092c D8EE213E 		.long	1042411224
 2573 0930 98D8F8EF 		.long	4026063000
 2574 0934 D8EE213E 		.long	1042411224
 2575 0938 98D8F8EF 		.long	4026063000
 2576 093c D8EE213E 		.long	1042411224
 2577              		.align 32
 2578              	.LC87:
 2579 0940 85EB51B8 		.long	3092376453
 2580 0944 1E238640 		.long	1082532638
 2581 0948 85EB51B8 		.long	3092376453
 2582 094c 1E238640 		.long	1082532638
 2583 0950 85EB51B8 		.long	3092376453
 2584 0954 1E238640 		.long	1082532638
 2585 0958 85EB51B8 		.long	3092376453
 2586 095c 1E238640 		.long	1082532638
 2587              		.align 32
 2588              	.LC88:
 2589 0960 2D431CEB 		.long	3944497965
 2590 0964 E2361A3F 		.long	1058682594
 2591 0968 2D431CEB 		.long	3944497965
 2592 096c E2361A3F 		.long	1058682594
 2593 0970 2D431CEB 		.long	3944497965
 2594 0974 E2361A3F 		.long	1058682594
 2595 0978 2D431CEB 		.long	3944497965
 2596 097c E2361A3F 		.long	1058682594
 2597              		.align 32
 2598              	.LC89:
 2599 0980 00000000 		.long	0
 2600 0984 00001440 		.long	1075052544
 2601 0988 00000000 		.long	0
 2602 098c 00001440 		.long	1075052544
 2603 0990 00000000 		.long	0
 2604 0994 00001440 		.long	1075052544
 2605 0998 00000000 		.long	0
 2606 099c 00001440 		.long	1075052544
GAS LISTING /tmp/cclDueTb.s 			page 71


 2607              		.align 32
 2608              	.LC90:
 2609 09a0 9A999999 		.long	2576980378
 2610 09a4 9999E93F 		.long	1072273817
 2611 09a8 9A999999 		.long	2576980378
 2612 09ac 9999E93F 		.long	1072273817
 2613 09b0 9A999999 		.long	2576980378
 2614 09b4 9999E93F 		.long	1072273817
 2615 09b8 9A999999 		.long	2576980378
 2616 09bc 9999E93F 		.long	1072273817
 2617              		.align 32
 2618              	.LC91:
 2619 09c0 00000000 		.long	0
 2620 09c4 00408F40 		.long	1083129856
 2621 09c8 00000000 		.long	0
 2622 09cc 00408F40 		.long	1083129856
 2623 09d0 00000000 		.long	0
 2624 09d4 00408F40 		.long	1083129856
 2625 09d8 00000000 		.long	0
 2626 09dc 00408F40 		.long	1083129856
 2627              		.align 32
 2628              	.LC92:
 2629 09e0 814EE62E 		.long	786845313
 2630 09e4 0BEBB940 		.long	1085926155
 2631 09e8 814EE62E 		.long	786845313
 2632 09ec 0BEBB940 		.long	1085926155
 2633 09f0 814EE62E 		.long	786845313
 2634 09f4 0BEBB940 		.long	1085926155
 2635 09f8 814EE62E 		.long	786845313
 2636 09fc 0BEBB940 		.long	1085926155
 2637              		.align 32
 2638              	.LC98:
 2639 0a00 7B14AE47 		.long	1202590843
 2640 0a04 E17A843F 		.long	1065646817
 2641 0a08 7B14AE47 		.long	1202590843
 2642 0a0c E17A843F 		.long	1065646817
 2643 0a10 7B14AE47 		.long	1202590843
 2644 0a14 E17A843F 		.long	1065646817
 2645 0a18 7B14AE47 		.long	1202590843
 2646 0a1c E17A843F 		.long	1065646817
 2647              		.align 32
 2648              	.LC99:
 2649 0a20 00000000 		.long	0
 2650 0a24 0000E0BF 		.long	-1075838976
 2651 0a28 00000000 		.long	0
 2652 0a2c 0000E0BF 		.long	-1075838976
 2653 0a30 00000000 		.long	0
 2654 0a34 0000E0BF 		.long	-1075838976
 2655 0a38 00000000 		.long	0
 2656 0a3c 0000E0BF 		.long	-1075838976
 2657              		.align 32
 2658              	.LC100:
 2659 0a40 9A999999 		.long	2576980378
 2660 0a44 9999B9BF 		.long	-1078355559
 2661 0a48 9A999999 		.long	2576980378
 2662 0a4c 9999B9BF 		.long	-1078355559
 2663 0a50 9A999999 		.long	2576980378
GAS LISTING /tmp/cclDueTb.s 			page 72


 2664 0a54 9999B9BF 		.long	-1078355559
 2665 0a58 9A999999 		.long	2576980378
 2666 0a5c 9999B9BF 		.long	-1078355559
 2667              		.hidden	__dso_handle
 2668              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2669              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/cclDueTb.s 			page 73


DEFINED SYMBOLS
                            *ABS*:0000000000000000 Duffing_RKCK45.cpp
     /tmp/cclDueTb.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/cclDueTb.s:27     .text:0000000000000000 _Z11printVectorPKc5Vec4d
     /tmp/cclDueTb.s:143    .text:0000000000000180 _Z8linspaceddi
     /tmp/cclDueTb.s:208    .text.startup:0000000000000000 main
     /tmp/cclDueTb.s:1752   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/cclDueTb.s:1764   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/cclDueTb.s:1729   .text.startup:0000000000002350 _GLOBAL__sub_I__Z11printVectorPKc5Vec4d
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/cclDueTb.s:1777   .rodata.cst8:0000000000000000 .LC1
     /tmp/cclDueTb.s:1781   .rodata.cst8:0000000000000008 .LC2
     /tmp/cclDueTb.s:2427   .rodata.cst16:0000000000000080 .LC71
     /tmp/cclDueTb.s:1956   .rodata.cst32:0000000000000220 .LC20
     /tmp/cclDueTb.s:1984   .rodata.cst32:0000000000000240 .LC25
     /tmp/cclDueTb.s:2638   .rodata.cst32:0000000000000a00 .LC98
     /tmp/cclDueTb.s:2648   .rodata.cst32:0000000000000a20 .LC99
     /tmp/cclDueTb.s:2658   .rodata.cst32:0000000000000a40 .LC100
     /tmp/cclDueTb.s:1786   .rodata.cst32:0000000000000000 .LC3
     /tmp/cclDueTb.s:1796   .rodata.cst32:0000000000000020 .LC4
     /tmp/cclDueTb.s:1806   .rodata.cst32:0000000000000040 .LC5
     /tmp/cclDueTb.s:1816   .rodata.cst32:0000000000000060 .LC6
     /tmp/cclDueTb.s:1846   .rodata.cst32:00000000000000c0 .LC9
     /tmp/cclDueTb.s:1826   .rodata.cst32:0000000000000080 .LC7
     /tmp/cclDueTb.s:1866   .rodata.cst32:0000000000000100 .LC11
     /tmp/cclDueTb.s:1856   .rodata.cst32:00000000000000e0 .LC10
     /tmp/cclDueTb.s:1836   .rodata.cst32:00000000000000a0 .LC8
     /tmp/cclDueTb.s:1876   .rodata.cst32:0000000000000120 .LC12
     /tmp/cclDueTb.s:1906   .rodata.cst32:0000000000000180 .LC15
     /tmp/cclDueTb.s:1886   .rodata.cst32:0000000000000140 .LC13
     /tmp/cclDueTb.s:1916   .rodata.cst32:00000000000001a0 .LC16
     /tmp/cclDueTb.s:1896   .rodata.cst32:0000000000000160 .LC14
     /tmp/cclDueTb.s:1926   .rodata.cst32:00000000000001c0 .LC17
     /tmp/cclDueTb.s:1936   .rodata.cst32:00000000000001e0 .LC18
     /tmp/cclDueTb.s:1946   .rodata.cst32:0000000000000200 .LC19
     /tmp/cclDueTb.s:1967   .rodata.cst16:0000000000000000 .LC21
     /tmp/cclDueTb.s:1975   .rodata.cst16:0000000000000020 .LC23
     /tmp/cclDueTb.s:1971   .rodata.cst16:0000000000000010 .LC22
     /tmp/cclDueTb.s:1979   .rodata.cst16:0000000000000030 .LC24
     /tmp/cclDueTb.s:1994   .rodata.cst32:0000000000000260 .LC26
     /tmp/cclDueTb.s:2004   .rodata.cst32:0000000000000280 .LC27
     /tmp/cclDueTb.s:2014   .rodata.cst32:00000000000002a0 .LC28
     /tmp/cclDueTb.s:2034   .rodata.cst32:00000000000002e0 .LC30
     /tmp/cclDueTb.s:2024   .rodata.cst32:00000000000002c0 .LC29
     /tmp/cclDueTb.s:2044   .rodata.cst32:0000000000000300 .LC31
     /tmp/cclDueTb.s:2054   .rodata.cst32:0000000000000320 .LC32
     /tmp/cclDueTb.s:2064   .rodata.cst32:0000000000000340 .LC33
     /tmp/cclDueTb.s:2074   .rodata.cst32:0000000000000360 .LC34
     /tmp/cclDueTb.s:2084   .rodata.cst32:0000000000000380 .LC35
     /tmp/cclDueTb.s:2094   .rodata.cst32:00000000000003a0 .LC36
     /tmp/cclDueTb.s:2104   .rodata.cst32:00000000000003c0 .LC37
     /tmp/cclDueTb.s:2114   .rodata.cst32:00000000000003e0 .LC38
     /tmp/cclDueTb.s:2124   .rodata.cst32:0000000000000400 .LC39
     /tmp/cclDueTb.s:2134   .rodata.cst32:0000000000000420 .LC40
     /tmp/cclDueTb.s:2144   .rodata.cst32:0000000000000440 .LC41
     /tmp/cclDueTb.s:2154   .rodata.cst32:0000000000000460 .LC42
     /tmp/cclDueTb.s:2164   .rodata.cst32:0000000000000480 .LC43
GAS LISTING /tmp/cclDueTb.s 			page 74


     /tmp/cclDueTb.s:2174   .rodata.cst32:00000000000004a0 .LC44
     /tmp/cclDueTb.s:2184   .rodata.cst32:00000000000004c0 .LC45
     /tmp/cclDueTb.s:2204   .rodata.cst32:0000000000000500 .LC47
     /tmp/cclDueTb.s:2194   .rodata.cst32:00000000000004e0 .LC46
     /tmp/cclDueTb.s:2214   .rodata.cst32:0000000000000520 .LC48
     /tmp/cclDueTb.s:2224   .rodata.cst32:0000000000000540 .LC49
     /tmp/cclDueTb.s:2235   .rodata.cst16:0000000000000040 .LC50
     /tmp/cclDueTb.s:2243   .rodata.cst16:0000000000000060 .LC52
     /tmp/cclDueTb.s:2239   .rodata.cst16:0000000000000050 .LC51
     /tmp/cclDueTb.s:2258   .rodata.cst32:0000000000000580 .LC54
     /tmp/cclDueTb.s:2248   .rodata.cst32:0000000000000560 .LC53
     /tmp/cclDueTb.s:2269   .rodata.cst16:0000000000000070 .LC55
     /tmp/cclDueTb.s:2296   .rodata.cst32:00000000000005e0 .LC58
     /tmp/cclDueTb.s:2276   .rodata.cst32:00000000000005a0 .LC56
     /tmp/cclDueTb.s:2316   .rodata.cst32:0000000000000620 .LC60
     /tmp/cclDueTb.s:2306   .rodata.cst32:0000000000000600 .LC59
     /tmp/cclDueTb.s:2286   .rodata.cst32:00000000000005c0 .LC57
     /tmp/cclDueTb.s:2326   .rodata.cst32:0000000000000640 .LC61
     /tmp/cclDueTb.s:2356   .rodata.cst32:00000000000006a0 .LC64
     /tmp/cclDueTb.s:2336   .rodata.cst32:0000000000000660 .LC62
     /tmp/cclDueTb.s:2346   .rodata.cst32:0000000000000680 .LC63
     /tmp/cclDueTb.s:2366   .rodata.cst32:00000000000006c0 .LC65
     /tmp/cclDueTb.s:2376   .rodata.cst32:00000000000006e0 .LC66
     /tmp/cclDueTb.s:2386   .rodata.cst32:0000000000000700 .LC67
     /tmp/cclDueTb.s:2396   .rodata.cst32:0000000000000720 .LC68
     /tmp/cclDueTb.s:2406   .rodata.cst32:0000000000000740 .LC69
     /tmp/cclDueTb.s:2416   .rodata.cst32:0000000000000760 .LC70
     /tmp/cclDueTb.s:2433   .rodata.cst16:0000000000000090 .LC72
     /tmp/cclDueTb.s:2438   .rodata.cst32:0000000000000780 .LC73
     /tmp/cclDueTb.s:2448   .rodata.cst32:00000000000007a0 .LC74
     /tmp/cclDueTb.s:2458   .rodata.cst32:00000000000007c0 .LC75
     /tmp/cclDueTb.s:2498   .rodata.cst32:0000000000000840 .LC79
     /tmp/cclDueTb.s:2468   .rodata.cst32:00000000000007e0 .LC76
     /tmp/cclDueTb.s:2478   .rodata.cst32:0000000000000800 .LC77
     /tmp/cclDueTb.s:2508   .rodata.cst32:0000000000000860 .LC80
     /tmp/cclDueTb.s:2488   .rodata.cst32:0000000000000820 .LC78
     /tmp/cclDueTb.s:2538   .rodata.cst32:00000000000008c0 .LC83
     /tmp/cclDueTb.s:2548   .rodata.cst32:00000000000008e0 .LC84
     /tmp/cclDueTb.s:2518   .rodata.cst32:0000000000000880 .LC81
     /tmp/cclDueTb.s:2558   .rodata.cst32:0000000000000900 .LC85
     /tmp/cclDueTb.s:2528   .rodata.cst32:00000000000008a0 .LC82
     /tmp/cclDueTb.s:2568   .rodata.cst32:0000000000000920 .LC86
     /tmp/cclDueTb.s:2578   .rodata.cst32:0000000000000940 .LC87
     /tmp/cclDueTb.s:2598   .rodata.cst32:0000000000000980 .LC89
     /tmp/cclDueTb.s:2588   .rodata.cst32:0000000000000960 .LC88
     /tmp/cclDueTb.s:2618   .rodata.cst32:00000000000009c0 .LC91
     /tmp/cclDueTb.s:2608   .rodata.cst32:00000000000009a0 .LC90
     /tmp/cclDueTb.s:2628   .rodata.cst32:00000000000009e0 .LC92

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
strlen
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIdEERSoT_
_ZNSo3putEc
_ZNSo5flushEv
GAS LISTING /tmp/cclDueTb.s 			page 75


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
