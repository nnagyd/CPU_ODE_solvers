GAS LISTING /tmp/ccxpF50j.s 			page 1


   1              		.file	"RKCK45_unions.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4904:
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
  18              	.LFE4904:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4636:
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
GAS LISTING /tmp/ccxpF50j.s 			page 2


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
  66              	.LFE4636:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.8,"aMS",@progbits,1
  69              		.align 8
  70              	.LC76:
  71 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  72              		.section	.rodata.str1.1,"aMS",@progbits,1
  73              	.LC77:
  74 0000 09207020 		.string	"\t p = "
  74      3D2000
  75              	.LC78:
  76 0007 09207800 		.string	"\t x"
  77              	.LC79:
  78 000b 0A00     		.string	"\n"
  79              	.LC80:
  80 000d 456C6170 		.string	"Elapsed time: "
  80      73656420 
  80      74696D65 
  80      3A2000
  81              	.LC81:
  82 001c 206D7300 		.string	" ms"
  83              		.section	.text.startup,"ax",@progbits
  84              		.p2align 4,,15
  85              		.globl	main
  86              		.type	main, @function
  87              	main:
  88              	.LFB4635:
  89              		.cfi_startproc
  90 0000 55       		pushq	%rbp
  91              		.cfi_def_cfa_offset 16
  92              		.cfi_offset 6, -16
  93 0001 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
  94 0005 BF809D00 		movl	$40320, %edi
  94      00
  95 000a 4889E5   		movq	%rsp, %rbp
GAS LISTING /tmp/ccxpF50j.s 			page 3


  96              		.cfi_def_cfa_register 6
  97 000d 4156     		pushq	%r14
  98 000f 4155     		pushq	%r13
  99 0011 4154     		pushq	%r12
 100              		.cfi_offset 14, -24
 101              		.cfi_offset 13, -32
 102              		.cfi_offset 12, -40
 103 0013 4531E4   		xorl	%r12d, %r12d
 104 0016 53       		pushq	%rbx
 105 0017 4883E4E0 		andq	$-32, %rsp
 106 001b 4881ECC0 		subq	$1216, %rsp
 106      040000
 107              		.cfi_offset 3, -48
 108 0022 C5FB100D 		vmovsd	.LC2(%rip), %xmm1
 108      00000000 
 109 002a E8000000 		call	_Z8linspaceddi
 109      00
 110 002f 4989C5   		movq	%rax, %r13
 111 0032 E8000000 		call	clock
 111      00
 112 0037 C5F8280D 		vmovaps	.LC54(%rip), %xmm1
 112      00000000 
 113 003f 4889C3   		movq	%rax, %rbx
 114 0042 C5F828C1 		vmovaps	%xmm1, %xmm0
 115 0046 C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
 115      C101
 116 004c C5FD572D 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 116      00000000 
 117 0054 C5FC2904 		vmovaps	%ymm0, (%rsp)
 117      24
 118 0059 C5FD296C 		vmovapd	%ymm5, 32(%rsp)
 118      2420
 119 005f 90       		.p2align 4,,10
 120              		.p2align 3
 121              	.L12:
 122 0060 C5FD282D 		vmovapd	.LC0(%rip), %ymm5
 122      00000000 
 123 0068 C5F157C9 		vxorpd	%xmm1, %xmm1, %xmm1
 124 006c C5FD2825 		vmovapd	.LC1(%rip), %ymm4
 124      00000000 
 125 0074 C4C17D28 		vmovapd	0(%r13), %ymm0
 125      4500
 126 007a C57D28FD 		vmovapd	%ymm5, %ymm15
 127 007e C5FD29A4 		vmovapd	%ymm4, 1152(%rsp)
 127      24800400 
 127      00
 128 0087 C5FD29AC 		vmovapd	%ymm5, 256(%rsp)
 128      24000100 
 128      00
 129 0090 C57D28D8 		vmovapd	%ymm0, %ymm11
 130 0094 C5FD29AC 		vmovapd	%ymm5, 224(%rsp)
 130      24E00000 
 130      00
 131 009d C5FD2824 		vmovapd	(%rsp), %ymm4
 131      24
 132 00a2 C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 132      24A00400 
GAS LISTING /tmp/ccxpF50j.s 			page 4


 132      00
 133 00ab C5FD298C 		vmovapd	%ymm1, 1120(%rsp)
 133      24600400 
 133      00
 134 00b4 C5FD29AC 		vmovapd	%ymm5, 1024(%rsp)
 134      24000400 
 134      00
 135 00bd C5FD29AC 		vmovapd	%ymm5, 1056(%rsp)
 135      24200400 
 135      00
 136 00c6 C5FD29AC 		vmovapd	%ymm5, 1088(%rsp)
 136      24400400 
 136      00
 137 00cf C5FD2984 		vmovapd	%ymm0, 288(%rsp)
 137      24200100 
 137      00
 138 00d8 C57D2805 		vmovapd	.LC1(%rip), %ymm8
 138      00000000 
 139 00e0 C5FD2964 		vmovapd	%ymm4, 64(%rsp)
 139      2440
 140 00e6 C57D28B4 		vmovapd	224(%rsp), %ymm14
 140      24E00000 
 140      00
 141 00ef C57D28A4 		vmovapd	256(%rsp), %ymm12
 141      24000100 
 141      00
 142              	.L20:
 143 00f8 C5FD288C 		vmovapd	1024(%rsp), %ymm1
 143      24000400 
 143      00
 144 0101 C4C1055C 		vsubpd	%ymm14, %ymm15, %ymm0
 144      C6
 145 0106 488D9424 		leaq	352(%rsp), %rdx
 145      60010000 
 146 010e 31C9     		xorl	%ecx, %ecx
 147 0110 C4C17559 		vmulpd	%ymm12, %ymm1, %ymm2
 147      D4
 148 0115 C4C17559 		vmulpd	%ymm11, %ymm1, %ymm1
 148      CB
 149 011a C5FD5905 		vmulpd	.LC0(%rip), %ymm0, %ymm0
 149      00000000 
 150 0122 C5F55C8C 		vsubpd	1056(%rsp), %ymm1, %ymm1
 150      24200400 
 150      00
 151 012b C5FD591D 		vmulpd	.LC5(%rip), %ymm0, %ymm3
 151      00000000 
 152 0133 C5FD2984 		vmovapd	%ymm0, 640(%rsp)
 152      24800200 
 152      00
 153 013c C5F55CEA 		vsubpd	%ymm2, %ymm1, %ymm5
 154 0140 C59D590D 		vmulpd	.LC4(%rip), %ymm12, %ymm1
 154      00000000 
 155 0148 C4C10559 		vmulpd	%ymm14, %ymm15, %ymm2
 155      D6
 156 014d C57D28D5 		vmovapd	%ymm5, %ymm10
 157 0151 C5FD29AC 		vmovapd	%ymm5, 672(%rsp)
 157      24A00200 
GAS LISTING /tmp/ccxpF50j.s 			page 5


 157      00
 158 015a C5FD282D 		vmovapd	.LC5(%rip), %ymm5
 158      00000000 
 159 0162 C5BD59DB 		vmulpd	%ymm3, %ymm8, %ymm3
 160 0166 C57D2994 		vmovapd	%ymm10, 160(%rsp)
 160      24A00000 
 160      00
 161 016f C5ED5CE1 		vsubpd	%ymm1, %ymm2, %ymm4
 162 0173 C5AD593D 		vmulpd	.LC7(%rip), %ymm10, %ymm7
 162      00000000 
 163 017b C4C16558 		vaddpd	%ymm14, %ymm3, %ymm3
 163      DE
 164 0180 C57D28EC 		vmovapd	%ymm4, %ymm13
 165 0184 C5FD29A4 		vmovapd	%ymm4, 704(%rsp)
 165      24C00200 
 165      00
 166 018d C5AD5925 		vmulpd	.LC5(%rip), %ymm10, %ymm4
 166      00000000 
 167 0195 C4C15559 		vmulpd	%ymm13, %ymm5, %ymm5
 167      ED
 168 019a C4C16559 		vmulpd	%ymm11, %ymm3, %ymm1
 168      CB
 169 019f C52D5915 		vmulpd	.LC10(%rip), %ymm10, %ymm10
 169      00000000 
 170 01a7 C5BD59E4 		vmulpd	%ymm4, %ymm8, %ymm4
 171 01ab C5BD59ED 		vmulpd	%ymm5, %ymm8, %ymm5
 172 01af C58558E4 		vaddpd	%ymm4, %ymm15, %ymm4
 173 01b3 C4C15558 		vaddpd	%ymm12, %ymm5, %ymm5
 173      EC
 174 01b8 C5DD5CD3 		vsubpd	%ymm3, %ymm4, %ymm2
 175 01bc C5E559F5 		vmulpd	%ymm5, %ymm3, %ymm6
 176 01c0 C5F55CCC 		vsubpd	%ymm4, %ymm1, %ymm1
 177 01c4 C5D5592D 		vmulpd	.LC4(%rip), %ymm5, %ymm5
 177      00000000 
 178 01cc C5ED5915 		vmulpd	.LC0(%rip), %ymm2, %ymm2
 178      00000000 
 179 01d4 C5E559DC 		vmulpd	%ymm4, %ymm3, %ymm3
 180 01d8 C5F55CCE 		vsubpd	%ymm6, %ymm1, %ymm1
 181 01dc C5FD5935 		vmulpd	.LC7(%rip), %ymm0, %ymm6
 181      00000000 
 182 01e4 C5E55CE5 		vsubpd	%ymm5, %ymm3, %ymm4
 183 01e8 C5FD2994 		vmovapd	%ymm2, 352(%rsp)
 183      24600100 
 183      00
 184 01f1 C5ED591D 		vmulpd	.LC6(%rip), %ymm2, %ymm3
 184      00000000 
 185 01f9 C5FD298C 		vmovapd	%ymm1, 384(%rsp)
 185      24800100 
 185      00
 186 0202 C5FD29A4 		vmovapd	%ymm4, 416(%rsp)
 186      24A00100 
 186      00
 187 020b C5FD29A4 		vmovapd	%ymm4, 192(%rsp)
 187      24C00000 
 187      00
 188 0214 C5CD58F3 		vaddpd	%ymm3, %ymm6, %ymm6
 189 0218 C5F5591D 		vmulpd	.LC6(%rip), %ymm1, %ymm3
GAS LISTING /tmp/ccxpF50j.s 			page 6


 189      00000000 
 190 0220 C5BD59F6 		vmulpd	%ymm6, %ymm8, %ymm6
 191 0224 C5C558FB 		vaddpd	%ymm3, %ymm7, %ymm7
 192 0228 C5DD591D 		vmulpd	.LC6(%rip), %ymm4, %ymm3
 192      00000000 
 193 0230 C4C14D58 		vaddpd	%ymm14, %ymm6, %ymm6
 193      F6
 194 0235 C5955925 		vmulpd	.LC7(%rip), %ymm13, %ymm4
 194      00000000 
 195 023d C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 196 0241 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 197 0245 C4C14D59 		vmulpd	%ymm11, %ymm6, %ymm4
 197      E3
 198 024a C58558FF 		vaddpd	%ymm7, %ymm15, %ymm7
 199 024e C5BD59DB 		vmulpd	%ymm3, %ymm8, %ymm3
 200 0252 C5C55CEE 		vsubpd	%ymm6, %ymm7, %ymm5
 201 0256 C5DD5CE7 		vsubpd	%ymm7, %ymm4, %ymm4
 202 025a C4C16558 		vaddpd	%ymm12, %ymm3, %ymm3
 202      DC
 203 025f C5D5592D 		vmulpd	.LC0(%rip), %ymm5, %ymm5
 203      00000000 
 204 0267 C54D59CB 		vmulpd	%ymm3, %ymm6, %ymm9
 205 026b C5E5591D 		vmulpd	.LC4(%rip), %ymm3, %ymm3
 205      00000000 
 206 0273 C5FD29AC 		vmovapd	%ymm5, 736(%rsp)
 206      24E00200 
 206      00
 207 027c C5CD59F7 		vmulpd	%ymm7, %ymm6, %ymm6
 208 0280 C4C15D5C 		vsubpd	%ymm9, %ymm4, %ymm4
 208      E1
 209 0285 C57D590D 		vmulpd	.LC10(%rip), %ymm0, %ymm9
 209      00000000 
 210 028d C5CD5CFB 		vsubpd	%ymm3, %ymm6, %ymm7
 211 0291 C5D55935 		vmulpd	.LC8(%rip), %ymm5, %ymm6
 211      00000000 
 212 0299 C5FD29A4 		vmovapd	%ymm4, 768(%rsp)
 212      24000300 
 212      00
 213 02a2 C5FD28DF 		vmovapd	%ymm7, %ymm3
 214 02a6 C5FD29BC 		vmovapd	%ymm7, 800(%rsp)
 214      24200300 
 214      00
 215 02af C5ED593D 		vmulpd	.LC9(%rip), %ymm2, %ymm7
 215      00000000 
 216 02b7 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 217 02bb C575590D 		vmulpd	.LC9(%rip), %ymm1, %ymm9
 217      00000000 
 218 02c3 C5C558F6 		vaddpd	%ymm6, %ymm7, %ymm6
 219 02c7 C5DD593D 		vmulpd	.LC8(%rip), %ymm4, %ymm7
 219      00000000 
 220 02cf C5FD299C 		vmovapd	%ymm3, 128(%rsp)
 220      24800000 
 220      00
 221 02d8 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm9
 221      C9
 222 02dd C5155915 		vmulpd	.LC10(%rip), %ymm13, %ymm10
 222      00000000 
GAS LISTING /tmp/ccxpF50j.s 			page 7


 223 02e5 C5BD59F6 		vmulpd	%ymm6, %ymm8, %ymm6
 224 02e9 C53558CF 		vaddpd	%ymm7, %ymm9, %ymm9
 225 02ed C5FD283D 		vmovapd	.LC8(%rip), %ymm7
 225      00000000 
 226 02f5 C5C559FB 		vmulpd	%ymm3, %ymm7, %ymm7
 227 02f9 C5FD289C 		vmovapd	192(%rsp), %ymm3
 227      24C00000 
 227      00
 228 0302 C4C14D58 		vaddpd	%ymm14, %ymm6, %ymm6
 228      F6
 229 0307 C4413D59 		vmulpd	%ymm9, %ymm8, %ymm11
 229      D9
 230 030c C565590D 		vmulpd	.LC9(%rip), %ymm3, %ymm9
 230      00000000 
 231 0314 C57D29EB 		vmovapd	%ymm13, %ymm3
 232 0318 C57D592D 		vmulpd	.LC14(%rip), %ymm0, %ymm13
 232      00000000 
 233 0320 C5FD295C 		vmovapd	%ymm3, 96(%rsp)
 233      2460
 234 0326 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 234      DB
 235 032b C5E5591D 		vmulpd	.LC14(%rip), %ymm3, %ymm3
 235      00000000 
 236 0333 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm9
 236      C9
 237 0338 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 237      00000000 
 238 0340 C5255CD6 		vsubpd	%ymm6, %ymm11, %ymm10
 239 0344 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 240 0348 C54D598C 		vmulpd	288(%rsp), %ymm6, %ymm9
 240      24200100 
 240      00
 241 0351 C52D5915 		vmulpd	.LC0(%rip), %ymm10, %ymm10
 241      00000000 
 242 0359 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 243 035d C441355C 		vsubpd	%ymm11, %ymm9, %ymm9
 243      CB
 244 0362 C4C14558 		vaddpd	%ymm12, %ymm7, %ymm7
 244      FC
 245 0367 C57D2994 		vmovapd	%ymm10, 832(%rsp)
 245      24400300 
 245      00
 246 0370 C54D59E7 		vmulpd	%ymm7, %ymm6, %ymm12
 247 0374 C5C5593D 		vmulpd	.LC4(%rip), %ymm7, %ymm7
 247      00000000 
 248 037c C4C14D59 		vmulpd	%ymm11, %ymm6, %ymm6
 248      F3
 249 0381 C441355C 		vsubpd	%ymm12, %ymm9, %ymm9
 249      CC
 250 0386 C56D5925 		vmulpd	.LC13(%rip), %ymm2, %ymm12
 250      00000000 
 251 038e C555591D 		vmulpd	.LC12(%rip), %ymm5, %ymm11
 251      00000000 
 252 0396 C5CD5CFF 		vsubpd	%ymm7, %ymm6, %ymm7
 253 039a C5AD5935 		vmulpd	.LC11(%rip), %ymm10, %ymm6
 253      00000000 
 254 03a2 C57D298C 		vmovapd	%ymm9, 864(%rsp)
GAS LISTING /tmp/ccxpF50j.s 			page 8


 254      24600300 
 254      00
 255 03ab C4411558 		vaddpd	%ymm12, %ymm13, %ymm12
 255      E4
 256 03b0 C575592D 		vmulpd	.LC13(%rip), %ymm1, %ymm13
 256      00000000 
 257 03b8 C5FD29BC 		vmovapd	%ymm7, 896(%rsp)
 257      24800300 
 257      00
 258 03c1 C5ED5915 		vmulpd	.LC18(%rip), %ymm2, %ymm2
 258      00000000 
 259 03c9 C4411D58 		vaddpd	%ymm11, %ymm12, %ymm12
 259      E3
 260 03ce C535591D 		vmulpd	.LC11(%rip), %ymm9, %ymm11
 260      00000000 
 261 03d6 C5D5592D 		vmulpd	.LC17(%rip), %ymm5, %ymm5
 261      00000000 
 262 03de C59D58F6 		vaddpd	%ymm6, %ymm12, %ymm6
 263 03e2 C55D5925 		vmulpd	.LC12(%rip), %ymm4, %ymm12
 263      00000000 
 264 03ea C5FD58D2 		vaddpd	%ymm2, %ymm0, %ymm2
 265 03ee C52D5915 		vmulpd	.LC16(%rip), %ymm10, %ymm10
 265      00000000 
 266 03f6 C5BD59F6 		vmulpd	%ymm6, %ymm8, %ymm6
 267 03fa C5ED58D5 		vaddpd	%ymm5, %ymm2, %ymm2
 268 03fe C4C14D58 		vaddpd	%ymm14, %ymm6, %ymm6
 268      F6
 269 0403 C57D28B4 		vmovapd	160(%rsp), %ymm14
 269      24A00000 
 269      00
 270 040c C50D5935 		vmulpd	.LC14(%rip), %ymm14, %ymm14
 270      00000000 
 271 0414 C4C16D58 		vaddpd	%ymm10, %ymm2, %ymm2
 271      D2
 272 0419 C4410D58 		vaddpd	%ymm13, %ymm14, %ymm13
 272      ED
 273 041e C57D28B4 		vmovapd	192(%rsp), %ymm14
 273      24C00000 
 273      00
 274 0427 C50D5935 		vmulpd	.LC13(%rip), %ymm14, %ymm14
 274      00000000 
 275 042f C4411558 		vaddpd	%ymm12, %ymm13, %ymm13
 275      EC
 276 0434 C5455925 		vmulpd	.LC11(%rip), %ymm7, %ymm12
 276      00000000 
 277 043c C50D58F3 		vaddpd	%ymm3, %ymm14, %ymm14
 278 0440 C4411558 		vaddpd	%ymm11, %ymm13, %ymm11
 278      DB
 279 0445 C57D28AC 		vmovapd	128(%rsp), %ymm13
 279      24800000 
 279      00
 280 044e C515592D 		vmulpd	.LC12(%rip), %ymm13, %ymm13
 280      00000000 
 281 0456 C4413D59 		vmulpd	%ymm11, %ymm8, %ymm11
 281      DB
 282 045b C4410D58 		vaddpd	%ymm13, %ymm14, %ymm14
 282      F5
GAS LISTING /tmp/ccxpF50j.s 			page 9


 283 0460 C4410558 		vaddpd	%ymm11, %ymm15, %ymm11
 283      DB
 284 0465 C4410D58 		vaddpd	%ymm12, %ymm14, %ymm13
 284      EC
 285 046a C54D59B4 		vmulpd	288(%rsp), %ymm6, %ymm14
 285      24200100 
 285      00
 286 0473 C5255CE6 		vsubpd	%ymm6, %ymm11, %ymm12
 287 0477 C4413D59 		vmulpd	%ymm13, %ymm8, %ymm13
 287      ED
 288 047c C51D5925 		vmulpd	.LC0(%rip), %ymm12, %ymm12
 288      00000000 
 289 0484 C4410D5C 		vsubpd	%ymm11, %ymm14, %ymm14
 289      F3
 290 0489 C51558AC 		vaddpd	256(%rsp), %ymm13, %ymm13
 290      24000100 
 290      00
 291 0492 C57D29A4 		vmovapd	%ymm12, 544(%rsp)
 291      24200200 
 291      00
 292 049b C51D5925 		vmulpd	.LC15(%rip), %ymm12, %ymm12
 292      00000000 
 293 04a3 C4C14D59 		vmulpd	%ymm13, %ymm6, %ymm3
 293      DD
 294 04a8 C515592D 		vmulpd	.LC4(%rip), %ymm13, %ymm13
 294      00000000 
 295 04b0 C4C16D58 		vaddpd	%ymm12, %ymm2, %ymm2
 295      D4
 296 04b5 C4C14D59 		vmulpd	%ymm11, %ymm6, %ymm6
 296      F3
 297 04ba C50D5CF3 		vsubpd	%ymm3, %ymm14, %ymm14
 298 04be C5BD59D2 		vmulpd	%ymm2, %ymm8, %ymm2
 299 04c2 C4414D5C 		vsubpd	%ymm13, %ymm6, %ymm13
 299      ED
 300 04c7 C57D29B4 		vmovapd	%ymm14, 576(%rsp)
 300      24400200 
 300      00
 301 04d0 C5ED5894 		vaddpd	224(%rsp), %ymm2, %ymm2
 301      24E00000 
 301      00
 302 04d9 C57D29AC 		vmovapd	%ymm13, 608(%rsp)
 302      24600200 
 302      00
 303 04e2 C5FD2994 		vmovapd	%ymm2, 928(%rsp)
 303      24A00300 
 303      00
 304 04eb C5F5590D 		vmulpd	.LC18(%rip), %ymm1, %ymm1
 304      00000000 
 305 04f3 C57D2894 		vmovapd	160(%rsp), %ymm10
 305      24A00000 
 305      00
 306 04fc C5FD28B4 		vmovapd	192(%rsp), %ymm6
 306      24C00000 
 306      00
 307 0505 C5AD5905 		vmulpd	.LC19(%rip), %ymm10, %ymm0
 307      00000000 
 308 050d C5FD28AC 		vmovapd	128(%rsp), %ymm5
GAS LISTING /tmp/ccxpF50j.s 			page 10


 308      24800000 
 308      00
 309 0516 C5DD5925 		vmulpd	.LC17(%rip), %ymm4, %ymm4
 309      00000000 
 310 051e C535590D 		vmulpd	.LC16(%rip), %ymm9, %ymm9
 310      00000000 
 311 0526 C50D5935 		vmulpd	.LC15(%rip), %ymm14, %ymm14
 311      00000000 
 312 052e C5FD58C9 		vaddpd	%ymm1, %ymm0, %ymm1
 313 0532 C5CD5905 		vmulpd	.LC18(%rip), %ymm6, %ymm0
 313      00000000 
 314 053a C5D5591D 		vmulpd	.LC17(%rip), %ymm5, %ymm3
 314      00000000 
 315 0542 C5F558E4 		vaddpd	%ymm4, %ymm1, %ymm4
 316 0546 C5C5593D 		vmulpd	.LC16(%rip), %ymm7, %ymm7
 316      00000000 
 317 054e C515592D 		vmulpd	.LC15(%rip), %ymm13, %ymm13
 317      00000000 
 318 0556 C4415D58 		vaddpd	%ymm9, %ymm4, %ymm9
 318      C9
 319 055b C5FD2864 		vmovapd	96(%rsp), %ymm4
 319      2460
 320 0561 C5DD590D 		vmulpd	.LC19(%rip), %ymm4, %ymm1
 320      00000000 
 321 0569 C4413558 		vaddpd	%ymm14, %ymm9, %ymm14
 321      F6
 322 056e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 323 0572 C4413D59 		vmulpd	%ymm14, %ymm8, %ymm14
 323      F6
 324 0577 C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 325 057b C4410558 		vaddpd	%ymm14, %ymm15, %ymm14
 325      F6
 326 0580 C5FD58C7 		vaddpd	%ymm7, %ymm0, %ymm0
 327 0584 C58D5CCA 		vsubpd	%ymm2, %ymm14, %ymm1
 328 0588 C57D29B4 		vmovapd	%ymm14, 960(%rsp)
 328      24C00300 
 328      00
 329 0591 C4C17D58 		vaddpd	%ymm13, %ymm0, %ymm0
 329      C5
 330 0596 C5F5590D 		vmulpd	.LC0(%rip), %ymm1, %ymm1
 330      00000000 
 331 059e C5BD59C0 		vmulpd	%ymm0, %ymm8, %ymm0
 332 05a2 C5FD298C 		vmovapd	%ymm1, 448(%rsp)
 332      24C00100 
 332      00
 333 05ab C5ED598C 		vmulpd	288(%rsp), %ymm2, %ymm1
 333      24200100 
 333      00
 334 05b4 C5FD5884 		vaddpd	256(%rsp), %ymm0, %ymm0
 334      24000100 
 334      00
 335 05bd C4C1755C 		vsubpd	%ymm14, %ymm1, %ymm1
 335      CE
 336 05c2 C5ED59D8 		vmulpd	%ymm0, %ymm2, %ymm3
 337 05c6 C5FD2984 		vmovapd	%ymm0, 992(%rsp)
 337      24E00300 
 337      00
GAS LISTING /tmp/ccxpF50j.s 			page 11


 338 05cf C4C16D59 		vmulpd	%ymm14, %ymm2, %ymm2
 338      D6
 339 05d4 C5FD5905 		vmulpd	.LC4(%rip), %ymm0, %ymm0
 339      00000000 
 340 05dc C5F55CCB 		vsubpd	%ymm3, %ymm1, %ymm1
 341 05e0 C5FD298C 		vmovapd	%ymm1, 480(%rsp)
 341      24E00100 
 341      00
 342 05e9 C5ED5CD0 		vsubpd	%ymm0, %ymm2, %ymm2
 343 05ed C5FD2994 		vmovapd	%ymm2, 512(%rsp)
 343      24000200 
 343      00
 344              	.L14:
 345 05f6 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 345      00000000 
 346 05fe 83C101   		addl	$1, %ecx
 347 0601 4883C220 		addq	$32, %rdx
 348 0605 C5FD281D 		vmovapd	.LC23(%rip), %ymm3
 348      00000000 
 349 060d C5C5594A 		vmulpd	64(%rdx), %ymm7, %ymm1
 349      40
 350 0612 C5FD283D 		vmovapd	.LC22(%rip), %ymm7
 350      00000000 
 351 061a C5E5599A 		vmulpd	256(%rdx), %ymm3, %ymm3
 351      00010000 
 352 0622 C5FD282D 		vmovapd	.LC21(%rip), %ymm5
 352      00000000 
 353 062a C5C55982 		vmulpd	352(%rdx), %ymm7, %ymm0
 353      60010000 
 354 0632 C5FD283D 		vmovapd	.LC25(%rip), %ymm7
 354      00000000 
 355 063a C5D55992 		vmulpd	448(%rdx), %ymm5, %ymm2
 355      C0010000 
 356 0642 C5FD282D 		vmovapd	.LC24(%rip), %ymm5
 356      00000000 
 357 064a C5FD2825 		vmovapd	.LC26(%rip), %ymm4
 357      00000000 
 358 0652 C5E558C0 		vaddpd	%ymm0, %ymm3, %ymm0
 359 0656 C5DD599A 		vmulpd	448(%rdx), %ymm4, %ymm3
 359      C0010000 
 360 065e C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 361 0662 C5C55992 		vmulpd	160(%rdx), %ymm7, %ymm2
 361      A0000000 
 362 066a C5FD283D 		vmovapd	.LC28(%rip), %ymm7
 362      00000000 
 363 0672 C5C559A2 		vmulpd	256(%rdx), %ymm7, %ymm4
 363      00010000 
 364 067a C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 365 067e C5D5594A 		vmulpd	64(%rdx), %ymm5, %ymm1
 365      40
 366 0683 C5FD282D 		vmovapd	.LC27(%rip), %ymm5
 366      00000000 
 367 068b C53D59C0 		vmulpd	%ymm0, %ymm8, %ymm8
 368 068f C5D55982 		vmulpd	352(%rdx), %ymm5, %ymm0
 368      60010000 
 369 0697 C53D5882 		vaddpd	640(%rdx), %ymm8, %ymm8
 369      80020000 
GAS LISTING /tmp/ccxpF50j.s 			page 12


 370 069f C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 371 06a3 C57D2982 		vmovapd	%ymm8, 544(%rdx)
 371      20020000 
 372 06ab C5FD58C3 		vaddpd	%ymm3, %ymm0, %ymm0
 373 06af C5FD281D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 373      00000000 
 374 06b7 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 375 06bb C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 376 06bf C4C16554 		vandpd	%ymm8, %ymm3, %ymm1
 376      C8
 377 06c4 C5F5590D 		vmulpd	.LC29(%rip), %ymm1, %ymm1
 377      00000000 
 378 06cc C5FD5984 		vmulpd	1152(%rsp), %ymm0, %ymm0
 378      24800400 
 378      00
 379 06d5 C5F5580D 		vaddpd	.LC29(%rip), %ymm1, %ymm1
 379      00000000 
 380 06dd C5FD2942 		vmovapd	%ymm0, -32(%rdx)
 380      E0
 381 06e2 C5F55EC0 		vdivpd	%ymm0, %ymm1, %ymm0
 382 06e6 C5FD294A 		vmovapd	%ymm1, 64(%rdx)
 382      40
 383 06eb C5FD54C3 		vandpd	%ymm3, %ymm0, %ymm0
 384 06ef C5FD2982 		vmovapd	%ymm0, 160(%rdx)
 384      A0000000 
 385 06f7 83F903   		cmpl	$3, %ecx
 386 06fa 7414     		je	.L13
 387 06fc C57D2884 		vmovapd	1152(%rsp), %ymm8
 387      24800400 
 387      00
 388 0705 E9ECFEFF 		jmp	.L14
 388      FF
 389 070a 660F1F44 		.p2align 4,,10
 389      0000
 390              		.p2align 3
 391              	.L13:
 392 0710 C5FD289C 		vmovapd	544(%rsp), %ymm3
 392      24200200 
 392      00
 393 0719 C5FD283D 		vmovapd	.LC34(%rip), %ymm7
 393      00000000 
 394 0721 C5E55D9C 		vminpd	576(%rsp), %ymm3, %ymm3
 394      24400200 
 394      00
 395 072a C5E55D9C 		vminpd	608(%rsp), %ymm3, %ymm3
 395      24600200 
 395      00
 396 0733 C4E37D19 		vextractf128	$0x1, %ymm3, %xmm5
 396      DD01
 397 0739 C5FD299C 		vmovapd	%ymm3, 448(%rsp)
 397      24C00100 
 397      00
 398 0742 C5F928E3 		vmovapd	%xmm3, %xmm4
 399 0746 C5D1DB05 		vpand	.LC30(%rip), %xmm5, %xmm0
 399      00000000 
 400 074e C5C973D4 		vpsrlq	$52, %xmm4, %xmm6
 400      34
GAS LISTING /tmp/ccxpF50j.s 			page 13


 401 0753 C5D9DB15 		vpand	.LC30(%rip), %xmm4, %xmm2
 401      00000000 
 402 075b C5C9EB35 		vpor	.LC32(%rip), %xmm6, %xmm6
 402      00000000 
 403 0763 C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 403      00000000 
 404 076b C5E9EB15 		vpor	.LC31(%rip), %xmm2, %xmm2
 404      00000000 
 405 0773 C4E36D18 		vinsertf128	$0x1, %xmm0, %ymm2, %ymm2
 405      D001
 406 0779 C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 406      34
 407 077e C5F9EB05 		vpor	.LC32(%rip), %xmm0, %xmm0
 407      00000000 
 408 0786 C5C5C2CA 		vcmppd	$1, %ymm2, %ymm7, %ymm1
 408      01
 409 078b C4E37D19 		vextractf128	$0x1, %ymm1, %xmm7
 409      CF01
 410 0791 C4E34D18 		vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
 410      F001
 411 0797 C5F928C1 		vmovapd	%xmm1, %xmm0
 412 079b C5F5540D 		vandpd	.LC36(%rip), %ymm1, %ymm1
 412      00000000 
 413 07a3 C5C1573D 		vxorpd	.LC35(%rip), %xmm7, %xmm7
 413      00000000 
 414 07ab C5CD5C35 		vsubpd	.LC33(%rip), %ymm6, %ymm6
 414      00000000 
 415 07b3 C5F95705 		vxorpd	.LC35(%rip), %xmm0, %xmm0
 415      00000000 
 416 07bb C4E37D18 		vinsertf128	$0x1, %xmm7, %ymm0, %ymm0
 416      C701
 417 07c1 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 418 07c5 C5FD54C2 		vandpd	%ymm2, %ymm0, %ymm0
 419 07c9 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 420 07cd C5FD5C05 		vsubpd	.LC36(%rip), %ymm0, %ymm0
 420      00000000 
 421 07d5 C57D5905 		vmulpd	.LC39(%rip), %ymm0, %ymm8
 421      00000000 
 422 07dd C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 423 07e1 C57D590D 		vmulpd	.LC37(%rip), %ymm0, %ymm9
 423      00000000 
 424 07e9 C5FD593D 		vmulpd	.LC41(%rip), %ymm0, %ymm7
 424      00000000 
 425 07f1 C53D5805 		vaddpd	.LC40(%rip), %ymm8, %ymm8
 425      00000000 
 426 07f9 C5ED59CA 		vmulpd	%ymm2, %ymm2, %ymm1
 427 07fd C535580D 		vaddpd	.LC38(%rip), %ymm9, %ymm9
 427      00000000 
 428 0805 C5C5583D 		vaddpd	.LC42(%rip), %ymm7, %ymm7
 428      00000000 
 429 080d C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 430 0811 C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 430      C1
 431 0816 C5C559FA 		vmulpd	%ymm2, %ymm7, %ymm7
 432 081a C57D590D 		vmulpd	.LC43(%rip), %ymm0, %ymm9
 432      00000000 
 433 0822 C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
GAS LISTING /tmp/ccxpF50j.s 			page 14


 433      F8
 434 0827 C57D59C2 		vmulpd	%ymm2, %ymm0, %ymm8
 435 082b C535580D 		vaddpd	.LC44(%rip), %ymm9, %ymm9
 435      00000000 
 436 0833 C4C14559 		vmulpd	%ymm8, %ymm7, %ymm7
 436      F8
 437 0838 C57D5805 		vaddpd	.LC45(%rip), %ymm0, %ymm8
 437      00000000 
 438 0840 C5BD59C9 		vmulpd	%ymm1, %ymm8, %ymm1
 439 0844 C4417558 		vaddpd	%ymm9, %ymm1, %ymm8
 439      C1
 440 0849 C5FD590D 		vmulpd	.LC46(%rip), %ymm0, %ymm1
 440      00000000 
 441 0851 C5F5580D 		vaddpd	.LC47(%rip), %ymm1, %ymm1
 441      00000000 
 442 0859 C5F559CA 		vmulpd	%ymm2, %ymm1, %ymm1
 443 085d C5ED5915 		vmulpd	.LC49(%rip), %ymm2, %ymm2
 443      00000000 
 444 0865 C4C17558 		vaddpd	%ymm8, %ymm1, %ymm1
 444      C8
 445 086a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 446 086e C5C55EC9 		vdivpd	%ymm1, %ymm7, %ymm1
 447 0872 C5CD593D 		vmulpd	.LC48(%rip), %ymm6, %ymm7
 447      00000000 
 448 087a C5C558C9 		vaddpd	%ymm1, %ymm7, %ymm1
 449 087e C5C173F5 		vpsllq	$1, %xmm5, %xmm7
 449      01
 450 0883 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 451 0887 C5CD590D 		vmulpd	.LC50(%rip), %ymm6, %ymm1
 451      00000000 
 452 088f C5C973F4 		vpsllq	$1, %xmm4, %xmm6
 452      01
 453 0894 C5C9DB15 		vpand	.LC51(%rip), %xmm6, %xmm2
 453      00000000 
 454 089c C5F558C8 		vaddpd	%ymm0, %ymm1, %ymm1
 455 08a0 C5C1DB05 		vpand	.LC51(%rip), %xmm7, %xmm0
 455      00000000 
 456 08a8 C4E26929 		vpcmpeqq	.LC51(%rip), %xmm2, %xmm2
 456      15000000 
 456      00
 457 08b1 C5E9EF15 		vpxor	.LC82(%rip), %xmm2, %xmm2
 457      00000000 
 458 08b9 C4E27929 		vpcmpeqq	.LC51(%rip), %xmm0, %xmm0
 458      05000000 
 458      00
 459 08c2 C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 459      00000000 
 460 08ca C4E36D18 		vinsertf128	$0x1, %xmm0, %ymm2, %ymm2
 460      D001
 461 08d0 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 461      D001
 462 08d6 C5E95705 		vxorpd	.LC35(%rip), %xmm2, %xmm0
 462      00000000 
 463 08de C5E5C215 		vcmppd	$1, .LC52(%rip), %ymm3, %ymm2
 463      00000000 
 463      01
 464 08e7 C5395705 		vxorpd	.LC35(%rip), %xmm8, %xmm8
GAS LISTING /tmp/ccxpF50j.s 			page 15


 464      00000000 
 465 08ef C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 465      C001
 466 08f5 C57D28C8 		vmovapd	%ymm0, %ymm9
 467 08f9 C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 468 08fd C4C37D19 		vextractf128	$0x1, %ymm0, %xmm8
 468      C001
 469 0903 C4C17956 		vorpd	%xmm8, %xmm0, %xmm0
 469      C0
 470 0908 C5F950D0 		vmovmskpd	%xmm0, %edx
 471 090c 85D2     		testl	%edx, %edx
 472 090e 0F848C00 		je	.L15
 472      0000
 473 0914 C4E3754B 		vblendvpd	%ymm2, .LC53(%rip), %ymm1, %ymm2
 473      15000000 
 473      0020
 474 091e C551DB05 		vpand	.LC55(%rip), %xmm5, %xmm8
 474      00000000 
 475 0926 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 475      1F
 476 092b C4E24129 		vpcmpeqq	.LC51(%rip), %xmm7, %xmm7
 476      3D000000 
 476      00
 477 0934 C5D9DB0D 		vpand	.LC55(%rip), %xmm4, %xmm1
 477      00000000 
 478 093c C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 478      1F
 479 0941 C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 480 0945 C4623929 		vpcmpeqq	%xmm0, %xmm8, %xmm8
 480      C0
 481 094a C4E27129 		vpcmpeqq	%xmm0, %xmm1, %xmm1
 481      C8
 482 094f C4C37518 		vinsertf128	$0x1, %xmm8, %ymm1, %ymm1
 482      C801
 483 0955 C4E36D4B 		vblendvpd	%ymm1, 32(%rsp), %ymm2, %ymm1
 483      4C242010 
 484 095d C463754B 		vblendvpd	%ymm9, %ymm3, %ymm1, %ymm9
 484      CB90
 485 0963 C5F173D5 		vpsrlq	$32, %xmm5, %xmm1
 485      20
 486 0968 C4E3710E 		vpblendw	$204, %xmm5, %xmm1, %xmm5
 486      EDCC
 487 096e C5F173D4 		vpsrlq	$32, %xmm4, %xmm1
 487      20
 488 0973 C4E3710E 		vpblendw	$204, %xmm4, %xmm1, %xmm4
 488      E4CC
 489 0979 C5F828CC 		vmovaps	%xmm4, %xmm1
 490 097d C4E37518 		vinsertf128	$0x1, %xmm5, %ymm1, %ymm5
 490      ED01
 491 0983 C4E24929 		vpcmpeqq	.LC51(%rip), %xmm6, %xmm1
 491      0D000000 
 491      00
 492 098c C4E37518 		vinsertf128	$0x1, %xmm7, %ymm1, %ymm1
 492      CF01
 493 0992 C5F554CD 		vandpd	%ymm5, %ymm1, %ymm1
 494 0996 C4E3354B 		vblendvpd	%ymm1, .LC53(%rip), %ymm9, %ymm1
 494      0D000000 
GAS LISTING /tmp/ccxpF50j.s 			page 16


 494      0010
 495              	.L15:
 496 09a0 C5F5590D 		vmulpd	.LC5(%rip), %ymm1, %ymm1
 496      00000000 
 497 09a8 C5F5592D 		vmulpd	.LC56(%rip), %ymm1, %ymm5
 497      00000000 
 498 09b0 C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 498      ED08
 499 09b6 C5D55905 		vmulpd	.LC57(%rip), %ymm5, %ymm0
 499      00000000 
 500 09be C5D55915 		vmulpd	.LC58(%rip), %ymm5, %ymm2
 500      00000000 
 501 09c6 C5D5582D 		vaddpd	.LC33(%rip), %ymm5, %ymm5
 501      00000000 
 502 09ce C5F55CC0 		vsubpd	%ymm0, %ymm1, %ymm0
 503 09d2 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 504 09d6 C5FD5935 		vmulpd	.LC62(%rip), %ymm0, %ymm6
 504      00000000 
 505 09de C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
 505      00000000 
 506 09e6 C57D590D 		vmulpd	.LC60(%rip), %ymm0, %ymm9
 506      00000000 
 507 09ee C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 508 09f2 C5CD5835 		vaddpd	.LC63(%rip), %ymm6, %ymm6
 508      00000000 
 509 09fa C53D5805 		vaddpd	.LC49(%rip), %ymm8, %ymm8
 509      00000000 
 510 0a02 C535580D 		vaddpd	.LC61(%rip), %ymm9, %ymm9
 510      00000000 
 511 0a0a C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
 512 0a0e C5CD59F2 		vmulpd	%ymm2, %ymm6, %ymm6
 513 0a12 C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
 514 0a16 C5DD59FC 		vmulpd	%ymm4, %ymm4, %ymm7
 515 0a1a C4C14D58 		vaddpd	%ymm9, %ymm6, %ymm6
 515      F1
 516 0a1f C57D590D 		vmulpd	.LC66(%rip), %ymm0, %ymm9
 516      00000000 
 517 0a27 C53D58C0 		vaddpd	%ymm0, %ymm8, %ymm8
 518 0a2b C5CD59F4 		vmulpd	%ymm4, %ymm6, %ymm6
 519 0a2f C535580D 		vaddpd	.LC67(%rip), %ymm9, %ymm9
 519      00000000 
 520 0a37 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 520      F0
 521 0a3c C57D5905 		vmulpd	.LC64(%rip), %ymm0, %ymm8
 521      00000000 
 522 0a44 C5FD5905 		vmulpd	.LC68(%rip), %ymm0, %ymm0
 522      00000000 
 523 0a4c C5B559D2 		vmulpd	%ymm2, %ymm9, %ymm2
 524 0a50 C53D5805 		vaddpd	.LC65(%rip), %ymm8, %ymm8
 524      00000000 
 525 0a58 C5FD5805 		vaddpd	.LC69(%rip), %ymm0, %ymm0
 525      00000000 
 526 0a60 C4C16D58 		vaddpd	%ymm8, %ymm2, %ymm2
 526      D0
 527 0a65 C5FD59C4 		vmulpd	%ymm4, %ymm0, %ymm0
 528 0a69 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm4
 528      EC01
GAS LISTING /tmp/ccxpF50j.s 			page 17


 529 0a6f C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 530 0a73 C5D973F4 		vpsllq	$52, %xmm4, %xmm4
 530      34
 531 0a78 C5E973F5 		vpsllq	$52, %xmm5, %xmm2
 531      34
 532 0a7d C4E37D19 		vextractf128	$0x1, %ymm1, %xmm5
 532      CD01
 533 0a83 C4E36D18 		vinsertf128	$0x1, %xmm4, %ymm2, %ymm2
 533      D401
 534 0a89 C5F928E1 		vmovapd	%xmm1, %xmm4
 535 0a8d C5FD59C7 		vmulpd	%ymm7, %ymm0, %ymm0
 536 0a91 C5C173F5 		vpsllq	$1, %xmm5, %xmm7
 536      01
 537 0a96 C5C1DB3D 		vpand	.LC51(%rip), %xmm7, %xmm7
 537      00000000 
 538 0a9e C5FD58C6 		vaddpd	%ymm6, %ymm0, %ymm0
 539 0aa2 C5F55435 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 539      00000000 
 540 0aaa C4E24129 		vpcmpeqq	.LC51(%rip), %xmm7, %xmm7
 540      3D000000 
 540      00
 541 0ab3 C5C1EF3D 		vpxor	.LC82(%rip), %xmm7, %xmm7
 541      00000000 
 542 0abb C5FD5805 		vaddpd	.LC36(%rip), %ymm0, %ymm0
 542      00000000 
 543 0ac3 C5CDC235 		vcmppd	$1, .LC70(%rip), %ymm6, %ymm6
 543      00000000 
 543      01
 544 0acc C5FD59C2 		vmulpd	%ymm2, %ymm0, %ymm0
 545 0ad0 C5E973F4 		vpsllq	$1, %xmm4, %xmm2
 545      01
 546 0ad5 C5E9DB15 		vpand	.LC51(%rip), %xmm2, %xmm2
 546      00000000 
 547 0add C4E26929 		vpcmpeqq	.LC51(%rip), %xmm2, %xmm2
 547      15000000 
 547      00
 548 0ae6 C5E9EF15 		vpxor	.LC82(%rip), %xmm2, %xmm2
 548      00000000 
 549 0aee C4E36D18 		vinsertf128	$0x1, %xmm7, %ymm2, %ymm2
 549      D701
 550 0af4 C5CD54D2 		vandpd	%ymm2, %ymm6, %ymm2
 551 0af8 C4E37D19 		vextractf128	$0x1, %ymm2, %xmm6
 551      D601
 552 0afe C5F928FA 		vmovapd	%xmm2, %xmm7
 553 0b02 C5C154F6 		vandpd	%xmm6, %xmm7, %xmm6
 554 0b06 C5F950D6 		vmovmskpd	%xmm6, %edx
 555 0b0a 83FA03   		cmpl	$3, %edx
 556 0b0d 7447     		je	.L16
 557 0b0f C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 557      1F
 558 0b14 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 558      1F
 559 0b19 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 559      20
 560 0b1e C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 560      EDCC
 561 0b24 C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
GAS LISTING /tmp/ccxpF50j.s 			page 18


 561      20
 562 0b29 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 562      E4CC
 563 0b2f C5C957F6 		vxorpd	%xmm6, %xmm6, %xmm6
 564 0b33 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 564      ED01
 565 0b39 C5FD2864 		vmovapd	64(%rsp), %ymm4
 565      2440
 566 0b3f C4E35D4B 		vblendvpd	%ymm5, %ymm6, %ymm4, %ymm5
 566      EE50
 567 0b45 C4E3554B 		vblendvpd	%ymm2, %ymm0, %ymm5, %ymm0
 567      C020
 568 0b4b C5F5C2D1 		vcmppd	$4, %ymm1, %ymm1, %ymm2
 568      04
 569 0b50 C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 569      C120
 570              	.L16:
 571 0b56 C5FD288C 		vmovapd	1152(%rsp), %ymm1
 571      24800400 
 571      00
 572 0b5f C5FD2825 		vmovapd	.LC36(%rip), %ymm4
 572      00000000 
 573 0b67 C5F5C215 		vcmppd	$2, .LC71(%rip), %ymm1, %ymm2
 573      00000000 
 573      02
 574 0b70 C5FD282D 		vmovapd	.LC72(%rip), %ymm5
 574      00000000 
 575 0b78 C5FD28B4 		vmovapd	1056(%rsp), %ymm6
 575      24200400 
 575      00
 576 0b81 C5DDC2DB 		vcmppd	$2, %ymm3, %ymm4, %ymm3
 576      02
 577 0b86 C5FD28A4 		vmovapd	1088(%rsp), %ymm4
 577      24400400 
 577      00
 578 0b8f C5E556DA 		vorpd	%ymm2, %ymm3, %ymm3
 579 0b93 C5D5C2D0 		vcmppd	$1, %ymm0, %ymm5, %ymm2
 579      01
 580 0b98 C4E34D4B 		vblendvpd	%ymm3, 960(%rsp), %ymm6, %ymm6
 580      B424C003 
 580      000030
 581 0ba3 C4E35D4B 		vblendvpd	%ymm3, 992(%rsp), %ymm4, %ymm4
 581      A424E003 
 581      000030
 582 0bae C4E37D4B 		vblendvpd	%ymm2, %ymm5, %ymm0, %ymm0
 582      C520
 583 0bb4 C5FD28AC 		vmovapd	1024(%rsp), %ymm5
 583      24000400 
 583      00
 584 0bbd C5FD29B4 		vmovapd	%ymm6, 1056(%rsp)
 584      24200400 
 584      00
 585 0bc6 C5FDC215 		vcmppd	$1, .LC5(%rip), %ymm0, %ymm2
 585      00000000 
 585      01
 586 0bcf C4E3554B 		vblendvpd	%ymm3, 928(%rsp), %ymm5, %ymm5
 586      AC24A003 
GAS LISTING /tmp/ccxpF50j.s 			page 19


 586      000030
 587 0bda C5FD29A4 		vmovapd	%ymm4, 1088(%rsp)
 587      24400400 
 587      00
 588 0be3 C5FD29AC 		vmovapd	%ymm5, 1024(%rsp)
 588      24000400 
 588      00
 589 0bec C4E37D4B 		vblendvpd	%ymm2, .LC5(%rip), %ymm0, %ymm0
 589      05000000 
 589      0020
 590 0bf6 C5FD2894 		vmovapd	1120(%rsp), %ymm2
 590      24600400 
 590      00
 591 0bff C5ED58F9 		vaddpd	%ymm1, %ymm2, %ymm7
 592 0c03 C5FD2984 		vmovapd	%ymm0, 544(%rsp)
 592      24200200 
 592      00
 593 0c0c C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 594 0c10 C4E36D4B 		vblendvpd	%ymm3, %ymm7, %ymm2, %ymm3
 594      DF30
 595 0c16 C5FD283D 		vmovapd	.LC74(%rip), %ymm7
 595      00000000 
 596 0c1e C5F5590D 		vmulpd	.LC73(%rip), %ymm1, %ymm1
 596      00000000 
 597 0c26 C5FD299C 		vmovapd	%ymm3, 1120(%rsp)
 597      24600400 
 597      00
 598 0c2f C545C2C1 		vcmppd	$1, %ymm1, %ymm7, %ymm8
 598      01
 599 0c34 C4E3754B 		vblendvpd	%ymm8, %ymm7, %ymm1, %ymm1
 599      CF80
 600 0c3a C5FD283D 		vmovapd	.LC75(%rip), %ymm7
 600      00000000 
 601 0c42 C5C5C2DB 		vcmppd	$2, %ymm3, %ymm7, %ymm3
 601      02
 602 0c47 C575C205 		vcmppd	$1, .LC71(%rip), %ymm1, %ymm8
 602      00000000 
 602      01
 603 0c50 C4E37D19 		vextractf128	$0x1, %ymm3, %xmm0
 603      D801
 604 0c56 C463754B 		vblendvpd	%ymm8, .LC71(%rip), %ymm1, %ymm8
 604      05000000 
 604      0080
 605 0c60 C5E154D8 		vandpd	%xmm0, %xmm3, %xmm3
 606 0c64 C57D2984 		vmovapd	%ymm8, 1152(%rsp)
 606      24800400 
 606      00
 607 0c6d C5F950D3 		vmovmskpd	%xmm3, %edx
 608 0c71 83FA03   		cmpl	$3, %edx
 609 0c74 743A     		je	.L28
 610 0c76 C5FD289C 		vmovapd	1184(%rsp), %ymm3
 610      24A00400 
 610      00
 611 0c7f C57D28FE 		vmovapd	%ymm6, %ymm15
 612 0c83 C57D28F5 		vmovapd	%ymm5, %ymm14
 613 0c87 C5FD29A4 		vmovapd	%ymm4, 256(%rsp)
 613      24000100 
GAS LISTING /tmp/ccxpF50j.s 			page 20


 613      00
 614 0c90 C57D28E4 		vmovapd	%ymm4, %ymm12
 615 0c94 C5FD299C 		vmovapd	%ymm3, 288(%rsp)
 615      24200100 
 615      00
 616 0c9d C57D28DB 		vmovapd	%ymm3, %ymm11
 617 0ca1 C5FD29AC 		vmovapd	%ymm5, 224(%rsp)
 617      24E00000 
 617      00
 618 0caa E949F4FF 		jmp	.L20
 618      FF
 619 0caf 90       		.p2align 4,,10
 620              		.p2align 3
 621              	.L28:
 622 0cb0 4489E0   		movl	%r12d, %eax
 623 0cb3 BAAD8BDB 		movl	$1759218605, %edx
 623      68
 624 0cb8 F7EA     		imull	%edx
 625 0cba 4489E0   		movl	%r12d, %eax
 626 0cbd C1F81F   		sarl	$31, %eax
 627 0cc0 C1FA0C   		sarl	$12, %edx
 628 0cc3 29C2     		subl	%eax, %edx
 629 0cc5 4489E0   		movl	%r12d, %eax
 630 0cc8 69D21027 		imull	$10000, %edx, %edx
 630      0000
 631 0cce 29D0     		subl	%edx, %eax
 632 0cd0 83F801   		cmpl	$1, %eax
 633 0cd3 0F848700 		je	.L29
 633      0000
 634              	.L18:
 635 0cd9 4183C404 		addl	$4, %r12d
 636 0cdd 4983C520 		addq	$32, %r13
 637 0ce1 4181FC80 		cmpl	$40320, %r12d
 637      9D0000
 638 0ce8 0F8572F3 		jne	.L12
 638      FFFF
 639 0cee C5F877   		vzeroupper
 640 0cf1 E8000000 		call	clock
 640      00
 641 0cf6 BA0E0000 		movl	$14, %edx
 641      00
 642 0cfb 4989C4   		movq	%rax, %r12
 643 0cfe BE000000 		movl	$.LC80, %esi
 643      00
 644 0d03 BF000000 		movl	$_ZSt4cout, %edi
 644      00
 645 0d08 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 645      00
 646 0d0d 4C89E1   		movq	%r12, %rcx
 647 0d10 48BECFF7 		movabsq	$2361183241434822607, %rsi
 647      53E3A59B 
 647      C420
 648 0d1a BF000000 		movl	$_ZSt4cout, %edi
 648      00
 649 0d1f 4829D9   		subq	%rbx, %rcx
 650 0d22 4889C8   		movq	%rcx, %rax
 651 0d25 48C1F93F 		sarq	$63, %rcx
GAS LISTING /tmp/ccxpF50j.s 			page 21


 652 0d29 48F7EE   		imulq	%rsi
 653 0d2c 4889D6   		movq	%rdx, %rsi
 654 0d2f 48C1FE07 		sarq	$7, %rsi
 655 0d33 4829CE   		subq	%rcx, %rsi
 656 0d36 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 656      00
 657 0d3b BE000000 		movl	$.LC81, %esi
 657      00
 658 0d40 4889C7   		movq	%rax, %rdi
 659 0d43 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 659      00
 660 0d48 4889C7   		movq	%rax, %rdi
 661 0d4b E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 661      00
 662 0d50 488D65E0 		leaq	-32(%rbp), %rsp
 663 0d54 31C0     		xorl	%eax, %eax
 664 0d56 5B       		popq	%rbx
 665 0d57 415C     		popq	%r12
 666 0d59 415D     		popq	%r13
 667 0d5b 415E     		popq	%r14
 668 0d5d 5D       		popq	%rbp
 669              		.cfi_remember_state
 670              		.cfi_def_cfa 7, 8
 671 0d5e C3       		ret
 672 0d5f 90       		.p2align 4,,10
 673              		.p2align 3
 674              	.L29:
 675              		.cfi_restore_state
 676 0d60 BA390000 		movl	$57, %edx
 676      00
 677 0d65 BE000000 		movl	$.LC76, %esi
 677      00
 678 0d6a BF000000 		movl	$_ZSt4cout, %edi
 678      00
 679 0d6f C5F877   		vzeroupper
 680 0d72 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 680      00
 681 0d77 C5FD2884 		vmovapd	1024(%rsp), %ymm0
 681      24000400 
 681      00
 682 0d80 4489E6   		movl	%r12d, %esi
 683 0d83 BF000000 		movl	$_ZSt4cout, %edi
 683      00
 684 0d88 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 684      24400100 
 684      00
 685 0d91 C5FD2884 		vmovapd	1184(%rsp), %ymm0
 685      24A00400 
 685      00
 686 0d9a C5FB108C 		vmovsd	320(%rsp), %xmm1
 686      24400100 
 686      00
 687 0da3 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 687      24400100 
 687      00
 688 0dac C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 688      24000100 
GAS LISTING /tmp/ccxpF50j.s 			page 22


 688      00
 689 0db5 C5FB1084 		vmovsd	320(%rsp), %xmm0
 689      24400100 
 689      00
 690 0dbe C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 690      24200100 
 690      00
 691 0dc7 C5F877   		vzeroupper
 692 0dca E8000000 		call	_ZNSolsEi
 692      00
 693 0dcf BA060000 		movl	$6, %edx
 693      00
 694 0dd4 BE000000 		movl	$.LC77, %esi
 694      00
 695 0dd9 4889C7   		movq	%rax, %rdi
 696 0ddc 4989C6   		movq	%rax, %r14
 697 0ddf E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 697      00
 698 0de4 C5FB1084 		vmovsd	288(%rsp), %xmm0
 698      24200100 
 698      00
 699 0ded 4C89F7   		movq	%r14, %rdi
 700 0df0 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 700      00
 701 0df5 BA030000 		movl	$3, %edx
 701      00
 702 0dfa BE000000 		movl	$.LC78, %esi
 702      00
 703 0dff 4889C7   		movq	%rax, %rdi
 704 0e02 4989C6   		movq	%rax, %r14
 705 0e05 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 705      00
 706 0e0a C5FB108C 		vmovsd	256(%rsp), %xmm1
 706      24000100 
 706      00
 707 0e13 4C89F7   		movq	%r14, %rdi
 708 0e16 C5F928C1 		vmovapd	%xmm1, %xmm0
 709 0e1a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 709      00
 710 0e1f BA010000 		movl	$1, %edx
 710      00
 711 0e24 BE000000 		movl	$.LC79, %esi
 711      00
 712 0e29 4889C7   		movq	%rax, %rdi
 713 0e2c E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 713      00
 714 0e31 C5FD2884 		vmovapd	1056(%rsp), %ymm0
 714      24200400 
 714      00
 715 0e3a 4489E6   		movl	%r12d, %esi
 716 0e3d BF000000 		movl	$_ZSt4cout, %edi
 716      00
 717 0e42 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 717      24400100 
 717      00
 718 0e4b C5FD2884 		vmovapd	1216(%rsp), %ymm0
 718      24C00400 
GAS LISTING /tmp/ccxpF50j.s 			page 23


 718      00
 719 0e54 C5FB108C 		vmovsd	320(%rsp), %xmm1
 719      24400100 
 719      00
 720 0e5d C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 720      24400100 
 720      00
 721 0e66 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 721      24000100 
 721      00
 722 0e6f C5FB1084 		vmovsd	320(%rsp), %xmm0
 722      24400100 
 722      00
 723 0e78 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 723      24200100 
 723      00
 724 0e81 C5F877   		vzeroupper
 725 0e84 E8000000 		call	_ZNSolsEi
 725      00
 726 0e89 BA060000 		movl	$6, %edx
 726      00
 727 0e8e BE000000 		movl	$.LC77, %esi
 727      00
 728 0e93 4889C7   		movq	%rax, %rdi
 729 0e96 4989C6   		movq	%rax, %r14
 730 0e99 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 730      00
 731 0e9e C5FB1084 		vmovsd	288(%rsp), %xmm0
 731      24200100 
 731      00
 732 0ea7 4C89F7   		movq	%r14, %rdi
 733 0eaa E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 733      00
 734 0eaf BA030000 		movl	$3, %edx
 734      00
 735 0eb4 BE000000 		movl	$.LC78, %esi
 735      00
 736 0eb9 4889C7   		movq	%rax, %rdi
 737 0ebc 4989C6   		movq	%rax, %r14
 738 0ebf E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 738      00
 739 0ec4 C5FB108C 		vmovsd	256(%rsp), %xmm1
 739      24000100 
 739      00
 740 0ecd 4C89F7   		movq	%r14, %rdi
 741 0ed0 C5F928C1 		vmovapd	%xmm1, %xmm0
 742 0ed4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 742      00
 743 0ed9 BA010000 		movl	$1, %edx
 743      00
 744 0ede BE000000 		movl	$.LC79, %esi
 744      00
 745 0ee3 4889C7   		movq	%rax, %rdi
 746 0ee6 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 746      00
 747 0eeb C5FD2884 		vmovapd	1088(%rsp), %ymm0
 747      24400400 
GAS LISTING /tmp/ccxpF50j.s 			page 24


 747      00
 748 0ef4 4489E6   		movl	%r12d, %esi
 749 0ef7 BF000000 		movl	$_ZSt4cout, %edi
 749      00
 750 0efc C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 750      24400100 
 750      00
 751 0f05 C5FD2884 		vmovapd	1248(%rsp), %ymm0
 751      24E00400 
 751      00
 752 0f0e C5FB108C 		vmovsd	320(%rsp), %xmm1
 752      24400100 
 752      00
 753 0f17 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 753      24400100 
 753      00
 754 0f20 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 754      24000100 
 754      00
 755 0f29 C5FB1084 		vmovsd	320(%rsp), %xmm0
 755      24400100 
 755      00
 756 0f32 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 756      24200100 
 756      00
 757 0f3b C5F877   		vzeroupper
 758 0f3e E8000000 		call	_ZNSolsEi
 758      00
 759 0f43 BA060000 		movl	$6, %edx
 759      00
 760 0f48 BE000000 		movl	$.LC77, %esi
 760      00
 761 0f4d 4889C7   		movq	%rax, %rdi
 762 0f50 4989C6   		movq	%rax, %r14
 763 0f53 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 763      00
 764 0f58 C5FB1084 		vmovsd	288(%rsp), %xmm0
 764      24200100 
 764      00
 765 0f61 4C89F7   		movq	%r14, %rdi
 766 0f64 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 766      00
 767 0f69 BA030000 		movl	$3, %edx
 767      00
 768 0f6e BE000000 		movl	$.LC78, %esi
 768      00
 769 0f73 4889C7   		movq	%rax, %rdi
 770 0f76 4989C6   		movq	%rax, %r14
 771 0f79 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 771      00
 772 0f7e C5FB108C 		vmovsd	256(%rsp), %xmm1
 772      24000100 
 772      00
 773 0f87 4C89F7   		movq	%r14, %rdi
 774 0f8a C5F928C1 		vmovapd	%xmm1, %xmm0
 775 0f8e E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 775      00
GAS LISTING /tmp/ccxpF50j.s 			page 25


 776 0f93 BA010000 		movl	$1, %edx
 776      00
 777 0f98 BE000000 		movl	$.LC79, %esi
 777      00
 778 0f9d 4889C7   		movq	%rax, %rdi
 779 0fa0 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 779      00
 780 0fa5 E92FFDFF 		jmp	.L18
 780      FF
 781              		.cfi_endproc
 782              	.LFE4635:
 783              		.size	main, .-main
 784 0faa 660F1F44 		.p2align 4,,15
 784      0000
 785              		.type	_GLOBAL__sub_I_main, @function
 786              	_GLOBAL__sub_I_main:
 787              	.LFB4900:
 788              		.cfi_startproc
 789 0fb0 4883EC08 		subq	$8, %rsp
 790              		.cfi_def_cfa_offset 16
 791 0fb4 BF000000 		movl	$_ZStL8__ioinit, %edi
 791      00
 792 0fb9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 792      00
 793 0fbe BA000000 		movl	$__dso_handle, %edx
 793      00
 794 0fc3 BE000000 		movl	$_ZStL8__ioinit, %esi
 794      00
 795 0fc8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 795      00
 796 0fcd 4883C408 		addq	$8, %rsp
 797              		.cfi_def_cfa_offset 8
 798 0fd1 E9000000 		jmp	__cxa_atexit
 798      00
 799              		.cfi_endproc
 800              	.LFE4900:
 801              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 802              		.section	.init_array,"aw"
 803              		.align 8
 804 0000 00000000 		.quad	_GLOBAL__sub_I_main
 804      00000000 
 805              		.section	.rodata
 806              		.align 32
 807              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 808              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 809              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 810 0000 00000000 		.long	0
 811 0004 00000080 		.long	-2147483648
 812 0008 00000000 		.long	0
 813 000c 00000080 		.long	-2147483648
 814 0010 00000000 		.long	0
 815 0014 00000080 		.long	-2147483648
 816 0018 00000000 		.long	0
 817 001c 00000080 		.long	-2147483648
 818              		.align 32
 819              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 820              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
GAS LISTING /tmp/ccxpF50j.s 			page 26


 821              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 822 0020 FFFFFFFF 		.long	-1
 823 0024 FFFFFF7F 		.long	2147483647
 824 0028 FFFFFFFF 		.long	-1
 825 002c FFFFFF7F 		.long	2147483647
 826 0030 FFFFFFFF 		.long	-1
 827 0034 FFFFFF7F 		.long	2147483647
 828 0038 FFFFFFFF 		.long	-1
 829 003c FFFFFF7F 		.long	2147483647
 830              		.local	_ZStL8__ioinit
 831              		.comm	_ZStL8__ioinit,1,1
 832              		.section	.rodata.cst32,"aM",@progbits,32
 833              		.align 32
 834              	.LC0:
 835 0000 00000000 		.long	0
 836 0004 00002440 		.long	1076101120
 837 0008 00000000 		.long	0
 838 000c 00002440 		.long	1076101120
 839 0010 00000000 		.long	0
 840 0014 00002440 		.long	1076101120
 841 0018 00000000 		.long	0
 842 001c 00002440 		.long	1076101120
 843              		.align 32
 844              	.LC1:
 845 0020 7B14AE47 		.long	1202590843
 846 0024 E17A843F 		.long	1065646817
 847 0028 7B14AE47 		.long	1202590843
 848 002c E17A843F 		.long	1065646817
 849 0030 7B14AE47 		.long	1202590843
 850 0034 E17A843F 		.long	1065646817
 851 0038 7B14AE47 		.long	1202590843
 852 003c E17A843F 		.long	1065646817
 853              		.section	.rodata.cst8,"aM",@progbits,8
 854              		.align 8
 855              	.LC2:
 856 0000 00000000 		.long	0
 857 0004 00003540 		.long	1077215232
 858              		.section	.rodata.cst32
 859              		.align 32
 860              	.LC4:
 861 0040 55555555 		.long	1431655765
 862 0044 55550540 		.long	1074091349
 863 0048 55555555 		.long	1431655765
 864 004c 55550540 		.long	1074091349
 865 0050 55555555 		.long	1431655765
 866 0054 55550540 		.long	1074091349
 867 0058 55555555 		.long	1431655765
 868 005c 55550540 		.long	1074091349
 869              		.align 32
 870              	.LC5:
 871 0060 9A999999 		.long	2576980378
 872 0064 9999C93F 		.long	1070176665
 873 0068 9A999999 		.long	2576980378
 874 006c 9999C93F 		.long	1070176665
 875 0070 9A999999 		.long	2576980378
 876 0074 9999C93F 		.long	1070176665
 877 0078 9A999999 		.long	2576980378
GAS LISTING /tmp/ccxpF50j.s 			page 27


 878 007c 9999C93F 		.long	1070176665
 879              		.align 32
 880              	.LC6:
 881 0080 CDCCCCCC 		.long	3435973837
 882 0084 CCCCCC3F 		.long	1070386380
 883 0088 CDCCCCCC 		.long	3435973837
 884 008c CCCCCC3F 		.long	1070386380
 885 0090 CDCCCCCC 		.long	3435973837
 886 0094 CCCCCC3F 		.long	1070386380
 887 0098 CDCCCCCC 		.long	3435973837
 888 009c CCCCCC3F 		.long	1070386380
 889              		.align 32
 890              	.LC7:
 891 00a0 33333333 		.long	858993459
 892 00a4 3333B33F 		.long	1068708659
 893 00a8 33333333 		.long	858993459
 894 00ac 3333B33F 		.long	1068708659
 895 00b0 33333333 		.long	858993459
 896 00b4 3333B33F 		.long	1068708659
 897 00b8 33333333 		.long	858993459
 898 00bc 3333B33F 		.long	1068708659
 899              		.align 32
 900              	.LC8:
 901 00c0 33333333 		.long	858993459
 902 00c4 3333F33F 		.long	1072902963
 903 00c8 33333333 		.long	858993459
 904 00cc 3333F33F 		.long	1072902963
 905 00d0 33333333 		.long	858993459
 906 00d4 3333F33F 		.long	1072902963
 907 00d8 33333333 		.long	858993459
 908 00dc 3333F33F 		.long	1072902963
 909              		.align 32
 910              	.LC9:
 911 00e0 CDCCCCCC 		.long	3435973837
 912 00e4 CCCCECBF 		.long	-1075000116
 913 00e8 CDCCCCCC 		.long	3435973837
 914 00ec CCCCECBF 		.long	-1075000116
 915 00f0 CDCCCCCC 		.long	3435973837
 916 00f4 CCCCECBF 		.long	-1075000116
 917 00f8 CDCCCCCC 		.long	3435973837
 918 00fc CCCCECBF 		.long	-1075000116
 919              		.align 32
 920              	.LC10:
 921 0100 33333333 		.long	858993459
 922 0104 3333D33F 		.long	1070805811
 923 0108 33333333 		.long	858993459
 924 010c 3333D33F 		.long	1070805811
 925 0110 33333333 		.long	858993459
 926 0114 3333D33F 		.long	1070805811
 927 0118 33333333 		.long	858993459
 928 011c 3333D33F 		.long	1070805811
 929              		.align 32
 930              	.LC11:
 931 0120 DA4B682F 		.long	795364314
 932 0124 A1BDF43F 		.long	1073003937
 933 0128 DA4B682F 		.long	795364314
 934 012c A1BDF43F 		.long	1073003937
GAS LISTING /tmp/ccxpF50j.s 			page 28


 935 0130 DA4B682F 		.long	795364314
 936 0134 A1BDF43F 		.long	1073003937
 937 0138 DA4B682F 		.long	795364314
 938 013c A1BDF43F 		.long	1073003937
 939              		.align 32
 940              	.LC12:
 941 0140 D94B682F 		.long	795364313
 942 0144 A1BD04C0 		.long	-1073431135
 943 0148 D94B682F 		.long	795364313
 944 014c A1BD04C0 		.long	-1073431135
 945 0150 D94B682F 		.long	795364313
 946 0154 A1BD04C0 		.long	-1073431135
 947 0158 D94B682F 		.long	795364313
 948 015c A1BD04C0 		.long	-1073431135
 949              		.align 32
 950              	.LC13:
 951 0160 00000000 		.long	0
 952 0164 00000440 		.long	1074003968
 953 0168 00000000 		.long	0
 954 016c 00000440 		.long	1074003968
 955 0170 00000000 		.long	0
 956 0174 00000440 		.long	1074003968
 957 0178 00000000 		.long	0
 958 017c 00000440 		.long	1074003968
 959              		.align 32
 960              	.LC14:
 961 0180 16A1BD84 		.long	2227020054
 962 0184 F612CABF 		.long	-1077275914
 963 0188 16A1BD84 		.long	2227020054
 964 018c F612CABF 		.long	-1077275914
 965 0190 16A1BD84 		.long	2227020054
 966 0194 F612CABF 		.long	-1077275914
 967 0198 16A1BD84 		.long	2227020054
 968 019c F612CABF 		.long	-1077275914
 969              		.align 32
 970              	.LC15:
 971 01a0 00000000 		.long	0
 972 01a4 00A0AF3F 		.long	1068474368
 973 01a8 00000000 		.long	0
 974 01ac 00A0AF3F 		.long	1068474368
 975 01b0 00000000 		.long	0
 976 01b4 00A0AF3F 		.long	1068474368
 977 01b8 00000000 		.long	0
 978 01bc 00A0AF3F 		.long	1068474368
 979              		.align 32
 980              	.LC16:
 981 01c0 B397D05E 		.long	1590728627
 982 01c4 429FD93F 		.long	1071226690
 983 01c8 B397D05E 		.long	1590728627
 984 01cc 429FD93F 		.long	1071226690
 985 01d0 B397D05E 		.long	1590728627
 986 01d4 429FD93F 		.long	1071226690
 987 01d8 B397D05E 		.long	1590728627
 988 01dc 429FD93F 		.long	1071226690
 989              		.align 32
 990              	.LC17:
 991 01e0 BD84F612 		.long	318145725
GAS LISTING /tmp/ccxpF50j.s 			page 29


 992 01e4 DA4BA53F 		.long	1067797466
 993 01e8 BD84F612 		.long	318145725
 994 01ec DA4BA53F 		.long	1067797466
 995 01f0 BD84F612 		.long	318145725
 996 01f4 DA4BA53F 		.long	1067797466
 997 01f8 BD84F612 		.long	318145725
 998 01fc DA4BA53F 		.long	1067797466
 999              		.align 32
 1000              	.LC18:
 1001 0200 00000000 		.long	0
 1002 0204 00E0D53F 		.long	1070981120
 1003 0208 00000000 		.long	0
 1004 020c 00E0D53F 		.long	1070981120
 1005 0210 00000000 		.long	0
 1006 0214 00E0D53F 		.long	1070981120
 1007 0218 00000000 		.long	0
 1008 021c 00E0D53F 		.long	1070981120
 1009              		.align 32
 1010              	.LC19:
 1011 0220 347B09ED 		.long	3976821556
 1012 0224 25349E3F 		.long	1067332645
 1013 0228 347B09ED 		.long	3976821556
 1014 022c 25349E3F 		.long	1067332645
 1015 0230 347B09ED 		.long	3976821556
 1016 0234 25349E3F 		.long	1067332645
 1017 0238 347B09ED 		.long	3976821556
 1018 023c 25349E3F 		.long	1067332645
 1019              		.align 32
 1020              	.LC20:
 1021 0240 B0B4DA85 		.long	2245702832
 1022 0244 A680D23F 		.long	1070760102
 1023 0248 B0B4DA85 		.long	2245702832
 1024 024c A680D23F 		.long	1070760102
 1025 0250 B0B4DA85 		.long	2245702832
 1026 0254 A680D23F 		.long	1070760102
 1027 0258 B0B4DA85 		.long	2245702832
 1028 025c A680D23F 		.long	1070760102
 1029              		.align 32
 1030              	.LC21:
 1031 0260 27691676 		.long	1981180199
 1032 0264 9FEFCA3F 		.long	1070264223
 1033 0268 27691676 		.long	1981180199
 1034 026c 9FEFCA3F 		.long	1070264223
 1035 0270 27691676 		.long	1981180199
 1036 0274 9FEFCA3F 		.long	1070264223
 1037 0278 27691676 		.long	1981180199
 1038 027c 9FEFCA3F 		.long	1070264223
 1039              		.align 32
 1040              	.LC22:
 1041 0280 7EB22B2E 		.long	774615678
 1042 0284 D0C3D93F 		.long	1071236048
 1043 0288 7EB22B2E 		.long	774615678
 1044 028c D0C3D93F 		.long	1071236048
 1045 0290 7EB22B2E 		.long	774615678
 1046 0294 D0C3D93F 		.long	1071236048
 1047 0298 7EB22B2E 		.long	774615678
 1048 029c D0C3D93F 		.long	1071236048
GAS LISTING /tmp/ccxpF50j.s 			page 30


 1049              		.align 32
 1050              	.LC23:
 1051 02a0 E890B943 		.long	1136234728
 1052 02a4 E60EB93F 		.long	1069092582
 1053 02a8 E890B943 		.long	1136234728
 1054 02ac E60EB93F 		.long	1069092582
 1055 02b0 E890B943 		.long	1136234728
 1056 02b4 E60EB93F 		.long	1069092582
 1057 02b8 E890B943 		.long	1136234728
 1058 02bc E60EB93F 		.long	1069092582
 1059              		.align 32
 1060              	.LC24:
 1061 02c0 48A5D52E 		.long	785753416
 1062 02c4 3405A4BF 		.long	-1079769804
 1063 02c8 48A5D52E 		.long	785753416
 1064 02cc 3405A4BF 		.long	-1079769804
 1065 02d0 48A5D52E 		.long	785753416
 1066 02d4 3405A4BF 		.long	-1079769804
 1067 02d8 48A5D52E 		.long	785753416
 1068 02dc 3405A4BF 		.long	-1079769804
 1069              		.align 32
 1070              	.LC25:
 1071 02e0 82244992 		.long	2454267010
 1072 02e4 24C9933F 		.long	1066649892
 1073 02e8 82244992 		.long	2454267010
 1074 02ec 24C9933F 		.long	1066649892
 1075 02f0 82244992 		.long	2454267010
 1076 02f4 24C9933F 		.long	1066649892
 1077 02f8 82244992 		.long	2454267010
 1078 02fc 24C9933F 		.long	1066649892
 1079              		.align 32
 1080              	.LC26:
 1081 0300 06F37686 		.long	2255942406
 1082 0304 C47CA13F 		.long	1067547844
 1083 0308 06F37686 		.long	2255942406
 1084 030c C47CA13F 		.long	1067547844
 1085 0310 06F37686 		.long	2255942406
 1086 0314 C47CA13F 		.long	1067547844
 1087 0318 06F37686 		.long	2255942406
 1088 031c C47CA13F 		.long	1067547844
 1089              		.align 32
 1090              	.LC27:
 1091 0320 1A55F19A 		.long	2599507226
 1092 0324 DB1D93BF 		.long	-1080877605
 1093 0328 1A55F19A 		.long	2599507226
 1094 032c DB1D93BF 		.long	-1080877605
 1095 0330 1A55F19A 		.long	2599507226
 1096 0334 DB1D93BF 		.long	-1080877605
 1097 0338 1A55F19A 		.long	2599507226
 1098 033c DB1D93BF 		.long	-1080877605
 1099              		.align 32
 1100              	.LC28:
 1101 0340 64599665 		.long	1704352100
 1102 0344 5996713F 		.long	1064408665
 1103 0348 64599665 		.long	1704352100
 1104 034c 5996713F 		.long	1064408665
 1105 0350 64599665 		.long	1704352100
GAS LISTING /tmp/ccxpF50j.s 			page 31


 1106 0354 5996713F 		.long	1064408665
 1107 0358 64599665 		.long	1704352100
 1108 035c 5996713F 		.long	1064408665
 1109              		.align 32
 1110              	.LC29:
 1111 0360 95D626E8 		.long	3894859413
 1112 0364 0B2E113E 		.long	1041313291
 1113 0368 95D626E8 		.long	3894859413
 1114 036c 0B2E113E 		.long	1041313291
 1115 0370 95D626E8 		.long	3894859413
 1116 0374 0B2E113E 		.long	1041313291
 1117 0378 95D626E8 		.long	3894859413
 1118 037c 0B2E113E 		.long	1041313291
 1119              		.section	.rodata.cst16,"aM",@progbits,16
 1120              		.align 16
 1121              	.LC30:
 1122 0000 FFFFFFFF 		.quad	4503599627370495
 1122      FFFF0F00 
 1123 0008 FFFFFFFF 		.quad	4503599627370495
 1123      FFFF0F00 
 1124              		.align 16
 1125              	.LC31:
 1126 0010 00000000 		.quad	4602678819172646912
 1126      0000E03F 
 1127 0018 00000000 		.quad	4602678819172646912
 1127      0000E03F 
 1128              		.align 16
 1129              	.LC32:
 1130 0020 00000000 		.quad	4841369599423283200
 1130      00003043 
 1131 0028 00000000 		.quad	4841369599423283200
 1131      00003043 
 1132              		.section	.rodata.cst32
 1133              		.align 32
 1134              	.LC33:
 1135 0380 FF030000 		.long	1023
 1136 0384 00003043 		.long	1127219200
 1137 0388 FF030000 		.long	1023
 1138 038c 00003043 		.long	1127219200
 1139 0390 FF030000 		.long	1023
 1140 0394 00003043 		.long	1127219200
 1141 0398 FF030000 		.long	1023
 1142 039c 00003043 		.long	1127219200
 1143              		.align 32
 1144              	.LC34:
 1145 03a0 CD3B7F66 		.long	1719614413
 1146 03a4 9EA0E63F 		.long	1072079006
 1147 03a8 CD3B7F66 		.long	1719614413
 1148 03ac 9EA0E63F 		.long	1072079006
 1149 03b0 CD3B7F66 		.long	1719614413
 1150 03b4 9EA0E63F 		.long	1072079006
 1151 03b8 CD3B7F66 		.long	1719614413
 1152 03bc 9EA0E63F 		.long	1072079006
 1153              		.section	.rodata.cst16
 1154              		.align 16
 1155              	.LC35:
 1156 0030 FFFFFFFF 		.long	4294967295
GAS LISTING /tmp/ccxpF50j.s 			page 32


 1157 0034 FFFFFFFF 		.long	-1
 1158 0038 FFFFFFFF 		.long	4294967295
 1159 003c FFFFFFFF 		.long	-1
 1160              		.section	.rodata.cst32
 1161              		.align 32
 1162              	.LC36:
 1163 03c0 00000000 		.long	0
 1164 03c4 0000F03F 		.long	1072693248
 1165 03c8 00000000 		.long	0
 1166 03cc 0000F03F 		.long	1072693248
 1167 03d0 00000000 		.long	0
 1168 03d4 0000F03F 		.long	1072693248
 1169 03d8 00000000 		.long	0
 1170 03dc 0000F03F 		.long	1072693248
 1171              		.align 32
 1172              	.LC37:
 1173 03e0 4DC84B92 		.long	2454440013
 1174 03e4 D6EF3140 		.long	1077014486
 1175 03e8 4DC84B92 		.long	2454440013
 1176 03ec D6EF3140 		.long	1077014486
 1177 03f0 4DC84B92 		.long	2454440013
 1178 03f4 D6EF3140 		.long	1077014486
 1179 03f8 4DC84B92 		.long	2454440013
 1180 03fc D6EF3140 		.long	1077014486
 1181              		.align 32
 1182              	.LC38:
 1183 0400 F8DC7E7D 		.long	2105466104
 1184 0404 63D51E40 		.long	1075762531
 1185 0408 F8DC7E7D 		.long	2105466104
 1186 040c 63D51E40 		.long	1075762531
 1187 0410 F8DC7E7D 		.long	2105466104
 1188 0414 63D51E40 		.long	1075762531
 1189 0418 F8DC7E7D 		.long	2105466104
 1190 041c 63D51E40 		.long	1075762531
 1191              		.align 32
 1192              	.LC39:
 1193 0420 B01BC393 		.long	2479037360
 1194 0424 C2B41A3F 		.long	1058714818
 1195 0428 B01BC393 		.long	2479037360
 1196 042c C2B41A3F 		.long	1058714818
 1197 0430 B01BC393 		.long	2479037360
 1198 0434 C2B41A3F 		.long	1058714818
 1199 0438 B01BC393 		.long	2479037360
 1200 043c C2B41A3F 		.long	1058714818
 1201              		.align 32
 1202              	.LC40:
 1203 0440 F252563F 		.long	1062621938
 1204 0444 F5D6DF3F 		.long	1071634165
 1205 0448 F252563F 		.long	1062621938
 1206 044c F5D6DF3F 		.long	1071634165
 1207 0450 F252563F 		.long	1062621938
 1208 0454 F5D6DF3F 		.long	1071634165
 1209 0458 F252563F 		.long	1062621938
 1210 045c F5D6DF3F 		.long	1071634165
 1211              		.align 32
 1212              	.LC41:
 1213 0460 116992ED 		.long	3985795345
GAS LISTING /tmp/ccxpF50j.s 			page 33


 1214 0464 BAD21240 		.long	1074975418
 1215 0468 116992ED 		.long	3985795345
 1216 046c BAD21240 		.long	1074975418
 1217 0470 116992ED 		.long	3985795345
 1218 0474 BAD21240 		.long	1074975418
 1219 0478 116992ED 		.long	3985795345
 1220 047c BAD21240 		.long	1074975418
 1221              		.align 32
 1222              	.LC42:
 1223 0480 2EEB3EC6 		.long	3326012206
 1224 0484 72FF2C40 		.long	1076690802
 1225 0488 2EEB3EC6 		.long	3326012206
 1226 048c 72FF2C40 		.long	1076690802
 1227 0490 2EEB3EC6 		.long	3326012206
 1228 0494 72FF2C40 		.long	1076690802
 1229 0498 2EEB3EC6 		.long	3326012206
 1230 049c 72FF2C40 		.long	1076690802
 1231              		.align 32
 1232              	.LC43:
 1233 04a0 21AE5EEB 		.long	3948850721
 1234 04a4 E2C95140 		.long	1079101922
 1235 04a8 21AE5EEB 		.long	3948850721
 1236 04ac E2C95140 		.long	1079101922
 1237 04b0 21AE5EEB 		.long	3948850721
 1238 04b4 E2C95140 		.long	1079101922
 1239 04b8 21AE5EEB 		.long	3948850721
 1240 04bc E2C95140 		.long	1079101922
 1241              		.align 32
 1242              	.LC44:
 1243 04c0 B2251F9E 		.long	2652841394
 1244 04c4 0A203740 		.long	1077354506
 1245 04c8 B2251F9E 		.long	2652841394
 1246 04cc 0A203740 		.long	1077354506
 1247 04d0 B2251F9E 		.long	2652841394
 1248 04d4 0A203740 		.long	1077354506
 1249 04d8 B2251F9E 		.long	2652841394
 1250 04dc 0A203740 		.long	1077354506
 1251              		.align 32
 1252              	.LC45:
 1253 04e0 8EEF97AE 		.long	2929192846
 1254 04e4 20932640 		.long	1076269856
 1255 04e8 8EEF97AE 		.long	2929192846
 1256 04ec 20932640 		.long	1076269856
 1257 04f0 8EEF97AE 		.long	2929192846
 1258 04f4 20932640 		.long	1076269856
 1259 04f8 8EEF97AE 		.long	2929192846
 1260 04fc 20932640 		.long	1076269856
 1261              		.align 32
 1262              	.LC46:
 1263 0500 33C0194E 		.long	1310310451
 1264 0504 2C9D4640 		.long	1078369580
 1265 0508 33C0194E 		.long	1310310451
 1266 050c 2C9D4640 		.long	1078369580
 1267 0510 33C0194E 		.long	1310310451
 1268 0514 2C9D4640 		.long	1078369580
 1269 0518 33C0194E 		.long	1310310451
 1270 051c 2C9D4640 		.long	1078369580
GAS LISTING /tmp/ccxpF50j.s 			page 34


 1271              		.align 32
 1272              	.LC47:
 1273 0520 BDBD26A3 		.long	2737225149
 1274 0524 33BF5440 		.long	1079295795
 1275 0528 BDBD26A3 		.long	2737225149
 1276 052c 33BF5440 		.long	1079295795
 1277 0530 BDBD26A3 		.long	2737225149
 1278 0534 33BF5440 		.long	1079295795
 1279 0538 BDBD26A3 		.long	2737225149
 1280 053c 33BF5440 		.long	1079295795
 1281              		.align 32
 1282              	.LC48:
 1283 0540 A80C615C 		.long	1549864104
 1284 0544 10D02BBF 		.long	-1087647728
 1285 0548 A80C615C 		.long	1549864104
 1286 054c 10D02BBF 		.long	-1087647728
 1287 0550 A80C615C 		.long	1549864104
 1288 0554 10D02BBF 		.long	-1087647728
 1289 0558 A80C615C 		.long	1549864104
 1290 055c 10D02BBF 		.long	-1087647728
 1291              		.align 32
 1292              	.LC49:
 1293 0560 00000000 		.long	0
 1294 0564 0000E03F 		.long	1071644672
 1295 0568 00000000 		.long	0
 1296 056c 0000E03F 		.long	1071644672
 1297 0570 00000000 		.long	0
 1298 0574 0000E03F 		.long	1071644672
 1299 0578 00000000 		.long	0
 1300 057c 0000E03F 		.long	1071644672
 1301              		.align 32
 1302              	.LC50:
 1303 0580 00000000 		.long	0
 1304 0584 0030E63F 		.long	1072050176
 1305 0588 00000000 		.long	0
 1306 058c 0030E63F 		.long	1072050176
 1307 0590 00000000 		.long	0
 1308 0594 0030E63F 		.long	1072050176
 1309 0598 00000000 		.long	0
 1310 059c 0030E63F 		.long	1072050176
 1311              		.section	.rodata.cst16
 1312              		.align 16
 1313              	.LC51:
 1314 0040 00000000 		.quad	-9007199254740992
 1314      0000E0FF 
 1315 0048 00000000 		.quad	-9007199254740992
 1315      0000E0FF 
 1316              		.section	.rodata.cst32
 1317              		.align 32
 1318              	.LC52:
 1319 05a0 00000000 		.long	0
 1320 05a4 00001000 		.long	1048576
 1321 05a8 00000000 		.long	0
 1322 05ac 00001000 		.long	1048576
 1323 05b0 00000000 		.long	0
 1324 05b4 00001000 		.long	1048576
 1325 05b8 00000000 		.long	0
GAS LISTING /tmp/ccxpF50j.s 			page 35


 1326 05bc 00001000 		.long	1048576
 1327              		.align 32
 1328              	.LC53:
 1329 05c0 00000020 		.long	536870912
 1330 05c4 2000F87F 		.long	2146959392
 1331 05c8 00000020 		.long	536870912
 1332 05cc 2000F87F 		.long	2146959392
 1333 05d0 00000020 		.long	536870912
 1334 05d4 2000F87F 		.long	2146959392
 1335 05d8 00000020 		.long	536870912
 1336 05dc 2000F87F 		.long	2146959392
 1337              		.section	.rodata.cst16
 1338              		.align 16
 1339              	.LC54:
 1340 0050 00000000 		.long	0
 1341 0054 0000F07F 		.long	2146435072
 1342 0058 00000000 		.long	0
 1343 005c 0000F07F 		.long	2146435072
 1344              		.align 16
 1345              	.LC55:
 1346 0060 00000000 		.quad	9218868437227405312
 1346      0000F07F 
 1347 0068 00000000 		.quad	9218868437227405312
 1347      0000F07F 
 1348              		.section	.rodata.cst32
 1349              		.align 32
 1350              	.LC56:
 1351 05e0 FE822B65 		.long	1697350398
 1352 05e4 4715F73F 		.long	1073157447
 1353 05e8 FE822B65 		.long	1697350398
 1354 05ec 4715F73F 		.long	1073157447
 1355 05f0 FE822B65 		.long	1697350398
 1356 05f4 4715F73F 		.long	1073157447
 1357 05f8 FE822B65 		.long	1697350398
 1358 05fc 4715F73F 		.long	1073157447
 1359              		.align 32
 1360              	.LC57:
 1361 0600 00000000 		.long	0
 1362 0604 402EE63F 		.long	1072049728
 1363 0608 00000000 		.long	0
 1364 060c 402EE63F 		.long	1072049728
 1365 0610 00000000 		.long	0
 1366 0614 402EE63F 		.long	1072049728
 1367 0618 00000000 		.long	0
 1368 061c 402EE63F 		.long	1072049728
 1369              		.align 32
 1370              	.LC58:
 1371 0620 CAAB79CF 		.long	3480857546
 1372 0624 D1F7B73E 		.long	1052243921
 1373 0628 CAAB79CF 		.long	3480857546
 1374 062c D1F7B73E 		.long	1052243921
 1375 0630 CAAB79CF 		.long	3480857546
 1376 0634 D1F7B73E 		.long	1052243921
 1377 0638 CAAB79CF 		.long	3480857546
 1378 063c D1F7B73E 		.long	1052243921
 1379              		.align 32
 1380              	.LC59:
GAS LISTING /tmp/ccxpF50j.s 			page 36


 1381 0640 55555555 		.long	1431655765
 1382 0644 5555C53F 		.long	1069897045
 1383 0648 55555555 		.long	1431655765
 1384 064c 5555C53F 		.long	1069897045
 1385 0650 55555555 		.long	1431655765
 1386 0654 5555C53F 		.long	1069897045
 1387 0658 55555555 		.long	1431655765
 1388 065c 5555C53F 		.long	1069897045
 1389              		.align 32
 1390              	.LC60:
 1391 0660 11111111 		.long	286331153
 1392 0664 1111813F 		.long	1065423121
 1393 0668 11111111 		.long	286331153
 1394 066c 1111813F 		.long	1065423121
 1395 0670 11111111 		.long	286331153
 1396 0674 1111813F 		.long	1065423121
 1397 0678 11111111 		.long	286331153
 1398 067c 1111813F 		.long	1065423121
 1399              		.align 32
 1400              	.LC61:
 1401 0680 55555555 		.long	1431655765
 1402 0684 5555A53F 		.long	1067799893
 1403 0688 55555555 		.long	1431655765
 1404 068c 5555A53F 		.long	1067799893
 1405 0690 55555555 		.long	1431655765
 1406 0694 5555A53F 		.long	1067799893
 1407 0698 55555555 		.long	1431655765
 1408 069c 5555A53F 		.long	1067799893
 1409              		.align 32
 1410              	.LC62:
 1411 06a0 1AA0011A 		.long	436314138
 1412 06a4 A0012A3F 		.long	1059717536
 1413 06a8 1AA0011A 		.long	436314138
 1414 06ac A0012A3F 		.long	1059717536
 1415 06b0 1AA0011A 		.long	436314138
 1416 06b4 A0012A3F 		.long	1059717536
 1417 06b8 1AA0011A 		.long	436314138
 1418 06bc A0012A3F 		.long	1059717536
 1419              		.align 32
 1420              	.LC63:
 1421 06c0 176CC116 		.long	381774871
 1422 06c4 6CC1563F 		.long	1062650220
 1423 06c8 176CC116 		.long	381774871
 1424 06cc 6CC1563F 		.long	1062650220
 1425 06d0 176CC116 		.long	381774871
 1426 06d4 6CC1563F 		.long	1062650220
 1427 06d8 176CC116 		.long	381774871
 1428 06dc 6CC1563F 		.long	1062650220
 1429              		.align 32
 1430              	.LC64:
 1431 06e0 34C756A5 		.long	2773927732
 1432 06e4 E31DC73E 		.long	1053236707
 1433 06e8 34C756A5 		.long	2773927732
 1434 06ec E31DC73E 		.long	1053236707
 1435 06f0 34C756A5 		.long	2773927732
 1436 06f4 E31DC73E 		.long	1053236707
 1437 06f8 34C756A5 		.long	2773927732
GAS LISTING /tmp/ccxpF50j.s 			page 37


 1438 06fc E31DC73E 		.long	1053236707
 1439              		.align 32
 1440              	.LC65:
 1441 0700 1AA0011A 		.long	436314138
 1442 0704 A001FA3E 		.long	1056571808
 1443 0708 1AA0011A 		.long	436314138
 1444 070c A001FA3E 		.long	1056571808
 1445 0710 1AA0011A 		.long	436314138
 1446 0714 A001FA3E 		.long	1056571808
 1447 0718 1AA0011A 		.long	436314138
 1448 071c A001FA3E 		.long	1056571808
 1449              		.align 32
 1450              	.LC66:
 1451 0720 E444F567 		.long	1744127204
 1452 0724 45E65A3E 		.long	1046144581
 1453 0728 E444F567 		.long	1744127204
 1454 072c 45E65A3E 		.long	1046144581
 1455 0730 E444F567 		.long	1744127204
 1456 0734 45E65A3E 		.long	1046144581
 1457 0738 E444F567 		.long	1744127204
 1458 073c 45E65A3E 		.long	1046144581
 1459              		.align 32
 1460              	.LC67:
 1461 0740 5C9F78B7 		.long	3078135644
 1462 0744 4F7E923E 		.long	1049787983
 1463 0748 5C9F78B7 		.long	3078135644
 1464 074c 4F7E923E 		.long	1049787983
 1465 0750 5C9F78B7 		.long	3078135644
 1466 0754 4F7E923E 		.long	1049787983
 1467 0758 5C9F78B7 		.long	3078135644
 1468 075c 4F7E923E 		.long	1049787983
 1469              		.align 32
 1470              	.LC68:
 1471 0760 096DA813 		.long	329805065
 1472 0764 4612E63D 		.long	1038488134
 1473 0768 096DA813 		.long	329805065
 1474 076c 4612E63D 		.long	1038488134
 1475 0770 096DA813 		.long	329805065
 1476 0774 4612E63D 		.long	1038488134
 1477 0778 096DA813 		.long	329805065
 1478 077c 4612E63D 		.long	1038488134
 1479              		.align 32
 1480              	.LC69:
 1481 0780 98D8F8EF 		.long	4026063000
 1482 0784 D8EE213E 		.long	1042411224
 1483 0788 98D8F8EF 		.long	4026063000
 1484 078c D8EE213E 		.long	1042411224
 1485 0790 98D8F8EF 		.long	4026063000
 1486 0794 D8EE213E 		.long	1042411224
 1487 0798 98D8F8EF 		.long	4026063000
 1488 079c D8EE213E 		.long	1042411224
 1489              		.align 32
 1490              	.LC70:
 1491 07a0 85EB51B8 		.long	3092376453
 1492 07a4 1E238640 		.long	1082532638
 1493 07a8 85EB51B8 		.long	3092376453
 1494 07ac 1E238640 		.long	1082532638
GAS LISTING /tmp/ccxpF50j.s 			page 38


 1495 07b0 85EB51B8 		.long	3092376453
 1496 07b4 1E238640 		.long	1082532638
 1497 07b8 85EB51B8 		.long	3092376453
 1498 07bc 1E238640 		.long	1082532638
 1499              		.align 32
 1500              	.LC71:
 1501 07c0 2D431CEB 		.long	3944497965
 1502 07c4 E2361A3F 		.long	1058682594
 1503 07c8 2D431CEB 		.long	3944497965
 1504 07cc E2361A3F 		.long	1058682594
 1505 07d0 2D431CEB 		.long	3944497965
 1506 07d4 E2361A3F 		.long	1058682594
 1507 07d8 2D431CEB 		.long	3944497965
 1508 07dc E2361A3F 		.long	1058682594
 1509              		.align 32
 1510              	.LC72:
 1511 07e0 00000000 		.long	0
 1512 07e4 00001440 		.long	1075052544
 1513 07e8 00000000 		.long	0
 1514 07ec 00001440 		.long	1075052544
 1515 07f0 00000000 		.long	0
 1516 07f4 00001440 		.long	1075052544
 1517 07f8 00000000 		.long	0
 1518 07fc 00001440 		.long	1075052544
 1519              		.align 32
 1520              	.LC73:
 1521 0800 9A999999 		.long	2576980378
 1522 0804 9999E93F 		.long	1072273817
 1523 0808 9A999999 		.long	2576980378
 1524 080c 9999E93F 		.long	1072273817
 1525 0810 9A999999 		.long	2576980378
 1526 0814 9999E93F 		.long	1072273817
 1527 0818 9A999999 		.long	2576980378
 1528 081c 9999E93F 		.long	1072273817
 1529              		.align 32
 1530              	.LC74:
 1531 0820 00000000 		.long	0
 1532 0824 00408F40 		.long	1083129856
 1533 0828 00000000 		.long	0
 1534 082c 00408F40 		.long	1083129856
 1535 0830 00000000 		.long	0
 1536 0834 00408F40 		.long	1083129856
 1537 0838 00000000 		.long	0
 1538 083c 00408F40 		.long	1083129856
 1539              		.align 32
 1540              	.LC75:
 1541 0840 00000000 		.long	0
 1542 0844 00005940 		.long	1079574528
 1543 0848 00000000 		.long	0
 1544 084c 00005940 		.long	1079574528
 1545 0850 00000000 		.long	0
 1546 0854 00005940 		.long	1079574528
 1547 0858 00000000 		.long	0
 1548 085c 00005940 		.long	1079574528
 1549              		.section	.rodata.cst16
 1550              		.align 16
 1551              	.LC82:
GAS LISTING /tmp/ccxpF50j.s 			page 39


 1552 0070 FFFFFFFF 		.quad	-1
 1552      FFFFFFFF 
 1553 0078 FFFFFFFF 		.quad	-1
 1553      FFFFFFFF 
 1554              		.hidden	__dso_handle
 1555              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1556              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccxpF50j.s 			page 40


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccxpF50j.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccxpF50j.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccxpF50j.s:87     .text.startup:0000000000000000 main
     /tmp/ccxpF50j.s:809    .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccxpF50j.s:821    .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccxpF50j.s:786    .text.startup:0000000000000fb0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccxpF50j.s:855    .rodata.cst8:0000000000000000 .LC2
     /tmp/ccxpF50j.s:1339   .rodata.cst16:0000000000000050 .LC54
     /tmp/ccxpF50j.s:834    .rodata.cst32:0000000000000000 .LC0
     /tmp/ccxpF50j.s:844    .rodata.cst32:0000000000000020 .LC1
     /tmp/ccxpF50j.s:870    .rodata.cst32:0000000000000060 .LC5
     /tmp/ccxpF50j.s:860    .rodata.cst32:0000000000000040 .LC4
     /tmp/ccxpF50j.s:890    .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccxpF50j.s:920    .rodata.cst32:0000000000000100 .LC10
     /tmp/ccxpF50j.s:880    .rodata.cst32:0000000000000080 .LC6
     /tmp/ccxpF50j.s:900    .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccxpF50j.s:910    .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccxpF50j.s:960    .rodata.cst32:0000000000000180 .LC14
     /tmp/ccxpF50j.s:1010   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccxpF50j.s:950    .rodata.cst32:0000000000000160 .LC13
     /tmp/ccxpF50j.s:940    .rodata.cst32:0000000000000140 .LC12
     /tmp/ccxpF50j.s:930    .rodata.cst32:0000000000000120 .LC11
     /tmp/ccxpF50j.s:1000   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccxpF50j.s:990    .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccxpF50j.s:980    .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccxpF50j.s:970    .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccxpF50j.s:1020   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccxpF50j.s:1050   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccxpF50j.s:1040   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccxpF50j.s:1030   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccxpF50j.s:1070   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccxpF50j.s:1060   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccxpF50j.s:1080   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccxpF50j.s:1100   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccxpF50j.s:1090   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccxpF50j.s:1110   .rodata.cst32:0000000000000360 .LC29
     /tmp/ccxpF50j.s:1144   .rodata.cst32:00000000000003a0 .LC34
     /tmp/ccxpF50j.s:1121   .rodata.cst16:0000000000000000 .LC30
     /tmp/ccxpF50j.s:1129   .rodata.cst16:0000000000000020 .LC32
     /tmp/ccxpF50j.s:1125   .rodata.cst16:0000000000000010 .LC31
     /tmp/ccxpF50j.s:1162   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccxpF50j.s:1155   .rodata.cst16:0000000000000030 .LC35
     /tmp/ccxpF50j.s:1134   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccxpF50j.s:1192   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccxpF50j.s:1172   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccxpF50j.s:1212   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccxpF50j.s:1202   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccxpF50j.s:1182   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccxpF50j.s:1222   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccxpF50j.s:1232   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccxpF50j.s:1242   .rodata.cst32:00000000000004c0 .LC44
     /tmp/ccxpF50j.s:1252   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccxpF50j.s:1262   .rodata.cst32:0000000000000500 .LC46
     /tmp/ccxpF50j.s:1272   .rodata.cst32:0000000000000520 .LC47
GAS LISTING /tmp/ccxpF50j.s 			page 41


     /tmp/ccxpF50j.s:1292   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccxpF50j.s:1282   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccxpF50j.s:1302   .rodata.cst32:0000000000000580 .LC50
     /tmp/ccxpF50j.s:1313   .rodata.cst16:0000000000000040 .LC51
     /tmp/ccxpF50j.s:1551   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccxpF50j.s:1318   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccxpF50j.s:1328   .rodata.cst32:00000000000005c0 .LC53
     /tmp/ccxpF50j.s:1345   .rodata.cst16:0000000000000060 .LC55
     /tmp/ccxpF50j.s:1350   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccxpF50j.s:1360   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccxpF50j.s:1370   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccxpF50j.s:1410   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccxpF50j.s:1380   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccxpF50j.s:1390   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccxpF50j.s:1420   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccxpF50j.s:1400   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccxpF50j.s:1450   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccxpF50j.s:1460   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccxpF50j.s:1430   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccxpF50j.s:1470   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccxpF50j.s:1440   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccxpF50j.s:1480   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccxpF50j.s:1490   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccxpF50j.s:1500   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccxpF50j.s:1510   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccxpF50j.s:1530   .rodata.cst32:0000000000000820 .LC74
     /tmp/ccxpF50j.s:1520   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccxpF50j.s:1540   .rodata.cst32:0000000000000840 .LC75

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
aligned_alloc
clock
_ZSt4cout
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo9_M_insertIlEERSoT_
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSolsEi
_ZNSo9_M_insertIdEERSoT_
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
