GAS LISTING /tmp/ccsfN7rV.s 			page 1


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
GAS LISTING /tmp/ccsfN7rV.s 			page 2


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
  70              	.LC75:
  71 0000 2D2D2D2D 		.string	"--------------------------------------------------------\n"
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  71      2D2D2D2D 
  72              		.section	.rodata.str1.1,"aMS",@progbits,1
  73              	.LC76:
  74 0000 09207020 		.string	"\t p = "
  74      3D2000
  75              	.LC77:
  76 0007 09207800 		.string	"\t x"
  77              	.LC78:
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
GAS LISTING /tmp/ccsfN7rV.s 			page 3


  96              		.cfi_def_cfa_register 6
  97 000d 4157     		pushq	%r15
  98 000f 4156     		pushq	%r14
  99 0011 4155     		pushq	%r13
 100 0013 4154     		pushq	%r12
 101 0015 53       		pushq	%rbx
 102 0016 4883E4E0 		andq	$-32, %rsp
 103 001a 4881EC60 		subq	$4192, %rsp
 103      100000
 104              		.cfi_offset 15, -24
 105              		.cfi_offset 14, -32
 106              		.cfi_offset 13, -40
 107              		.cfi_offset 12, -48
 108              		.cfi_offset 3, -56
 109 0021 C57D282D 		vmovapd	.LC0(%rip), %ymm13
 109      00000000 
 110 0029 C5FB100D 		vmovsd	.LC1(%rip), %xmm1
 110      00000000 
 111 0031 C57D29AC 		vmovapd	%ymm13, 352(%rsp)
 111      24600100 
 111      00
 112 003a C57D29AC 		vmovapd	%ymm13, 384(%rsp)
 112      24800100 
 112      00
 113 0043 C57D29AC 		vmovapd	%ymm13, 416(%rsp)
 113      24A00100 
 113      00
 114 004c C57D29AC 		vmovapd	%ymm13, 448(%rsp)
 114      24C00100 
 114      00
 115 0055 C57D29AC 		vmovapd	%ymm13, 480(%rsp)
 115      24E00100 
 115      00
 116 005e C57D29AC 		vmovapd	%ymm13, 512(%rsp)
 116      24000200 
 116      00
 117 0067 C57D29AC 		vmovapd	%ymm13, 544(%rsp)
 117      24200200 
 117      00
 118 0070 C57D29AC 		vmovapd	%ymm13, 576(%rsp)
 118      24400200 
 118      00
 119 0079 C57D29AC 		vmovapd	%ymm13, 608(%rsp)
 119      24600200 
 119      00
 120 0082 C57D29AC 		vmovapd	%ymm13, 640(%rsp)
 120      24800200 
 120      00
 121 008b C57D29AC 		vmovapd	%ymm13, 672(%rsp)
 121      24A00200 
 121      00
 122 0094 C57D29AC 		vmovapd	%ymm13, 704(%rsp)
 122      24C00200 
 122      00
 123 009d C57D29AC 		vmovapd	%ymm13, 288(%rsp)
 123      24200100 
 123      00
GAS LISTING /tmp/ccsfN7rV.s 			page 4


 124 00a6 C5F877   		vzeroupper
 125 00a9 31DB     		xorl	%ebx, %ebx
 126 00ab E8000000 		call	_Z8linspaceddi
 126      00
 127 00b0 4989C4   		movq	%rax, %r12
 128 00b3 E8000000 		call	clock
 128      00
 129 00b8 C5F8280D 		vmovaps	.LC53(%rip), %xmm1
 129      00000000 
 130 00c0 48898424 		movq	%rax, 152(%rsp)
 130      98000000 
 131 00c8 C5F828C1 		vmovaps	%xmm1, %xmm0
 132 00cc C57D2835 		vmovapd	.LC3(%rip), %ymm14
 132      00000000 
 133 00d4 C5FD283D 		vmovapd	.LC4(%rip), %ymm7
 133      00000000 
 134 00dc C4E37D18 		vinsertf128	$0x1, %xmm1, %ymm0, %ymm4
 134      E101
 135 00e2 C5FD281D 		vmovapd	.LC28(%rip), %ymm3
 135      00000000 
 136 00ea C57D2825 		vmovapd	.LC35(%rip), %ymm12
 136      00000000 
 137 00f2 C57D28AC 		vmovapd	288(%rsp), %ymm13
 137      24200100 
 137      00
 138 00fb C5FC29A4 		vmovaps	%ymm4, 160(%rsp)
 138      24A00000 
 138      00
 139 0104 C5DD5725 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 139      00000000 
 140 010c C5FD29A4 		vmovapd	%ymm4, 224(%rsp)
 140      24E00000 
 140      00
 141              	.L12:
 142 0115 C4C17D28 		vmovapd	(%r12), %ymm0
 142      0424
 143 011b 31D2     		xorl	%edx, %edx
 144 011d 4531C9   		xorl	%r9d, %r9d
 145 0120 C5FD2825 		vmovapd	.LC79(%rip), %ymm4
 145      00000000 
 146 0128 83FA03   		cmpl	$3, %edx
 147 012b 4C8DBC24 		leaq	1120(%rsp), %r15
 147      60040000 
 148 0133 C5FD2984 		vmovapd	%ymm0, 4064(%rsp)
 148      24E00F00 
 148      00
 149 013c C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
 150 0140 C5FD29A4 		vmovapd	%ymm4, 3936(%rsp)
 150      24600F00 
 150      00
 151 0149 4C8D9C24 		leaq	3936(%rsp), %r11
 151      600F0000 
 152 0151 4C8DB424 		leaq	864(%rsp), %r14
 152      60030000 
 153 0159 4C8D9424 		leaq	3424(%rsp), %r10
 153      600D0000 
 154 0161 C5FD2984 		vmovapd	%ymm0, 3808(%rsp)
GAS LISTING /tmp/ccsfN7rV.s 			page 5


 154      24E00E00 
 154      00
 155 016a C4C17D28 		vmovapd	32(%r12), %ymm1
 155      4C2420
 156 0171 C5FD2984 		vmovapd	%ymm0, 3840(%rsp)
 156      24000F00 
 156      00
 157 017a C5FD298C 		vmovapd	%ymm1, 4096(%rsp)
 157      24001000 
 157      00
 158 0183 C5FD29A4 		vmovapd	%ymm4, 3968(%rsp)
 158      24800F00 
 158      00
 159 018c C4C17D28 		vmovapd	64(%r12), %ymm1
 159      4C2440
 160 0193 C5FD2984 		vmovapd	%ymm0, 3872(%rsp)
 160      24200F00 
 160      00
 161 019c C5FD298C 		vmovapd	%ymm1, 4128(%rsp)
 161      24201000 
 161      00
 162 01a5 C5FD29A4 		vmovapd	%ymm4, 4000(%rsp)
 162      24A00F00 
 162      00
 163 01ae C4C17D28 		vmovapd	96(%r12), %ymm1
 163      4C2460
 164 01b5 C5FD2984 		vmovapd	%ymm0, 3904(%rsp)
 164      24400F00 
 164      00
 165 01be C5FD2884 		vmovapd	352(%rsp), %ymm0
 165      24600100 
 165      00
 166 01c7 C5FD298C 		vmovapd	%ymm1, 4160(%rsp)
 166      24401000 
 166      00
 167 01d0 C5FD2984 		vmovapd	%ymm0, 3424(%rsp)
 167      24600D00 
 167      00
 168 01d9 C5FD2884 		vmovapd	384(%rsp), %ymm0
 168      24800100 
 168      00
 169 01e2 C5FD29A4 		vmovapd	%ymm4, 4032(%rsp)
 169      24C00F00 
 169      00
 170 01eb C5FD2984 		vmovapd	%ymm0, 3456(%rsp)
 170      24800D00 
 170      00
 171 01f4 C5FD2884 		vmovapd	416(%rsp), %ymm0
 171      24A00100 
 171      00
 172 01fd C5FD2984 		vmovapd	%ymm0, 3488(%rsp)
 172      24A00D00 
 172      00
 173 0206 C5FD2884 		vmovapd	448(%rsp), %ymm0
 173      24C00100 
 173      00
 174 020f C5FD2984 		vmovapd	%ymm0, 3520(%rsp)
GAS LISTING /tmp/ccsfN7rV.s 			page 6


 174      24C00D00 
 174      00
 175 0218 C5FD2884 		vmovapd	480(%rsp), %ymm0
 175      24E00100 
 175      00
 176 0221 C5FD2984 		vmovapd	%ymm0, 3552(%rsp)
 176      24E00D00 
 176      00
 177 022a C5FD2884 		vmovapd	512(%rsp), %ymm0
 177      24000200 
 177      00
 178 0233 C5FD2984 		vmovapd	%ymm0, 3584(%rsp)
 178      24000E00 
 178      00
 179 023c C5FD2884 		vmovapd	544(%rsp), %ymm0
 179      24200200 
 179      00
 180 0245 C5FD2984 		vmovapd	%ymm0, 3616(%rsp)
 180      24200E00 
 180      00
 181 024e C5FD2884 		vmovapd	576(%rsp), %ymm0
 181      24400200 
 181      00
 182 0257 C5FD2984 		vmovapd	%ymm0, 3648(%rsp)
 182      24400E00 
 182      00
 183 0260 C5FD2884 		vmovapd	608(%rsp), %ymm0
 183      24600200 
 183      00
 184 0269 C5FD2984 		vmovapd	%ymm0, 3680(%rsp)
 184      24600E00 
 184      00
 185 0272 C5FD2884 		vmovapd	640(%rsp), %ymm0
 185      24800200 
 185      00
 186 027b C5FD2984 		vmovapd	%ymm0, 3712(%rsp)
 186      24800E00 
 186      00
 187 0284 C5FD2884 		vmovapd	672(%rsp), %ymm0
 187      24A00200 
 187      00
 188 028d C5FD2984 		vmovapd	%ymm0, 3744(%rsp)
 188      24A00E00 
 188      00
 189 0296 C5FD2884 		vmovapd	704(%rsp), %ymm0
 189      24C00200 
 189      00
 190 029f C5FD2984 		vmovapd	%ymm0, 3776(%rsp)
 190      24C00E00 
 190      00
 191 02a8 0F8F8200 		jg	.L38
 191      0000
 192 02ae 6690     		.p2align 4,,10
 193              		.p2align 3
 194              	.L13:
 195 02b0 4963F1   		movslq	%r9d, %rsi
 196 02b3 4C63C2   		movslq	%edx, %r8
GAS LISTING /tmp/ccsfN7rV.s 			page 7


 197 02b6 83C201   		addl	$1, %edx
 198 02b9 48C1E605 		salq	$5, %rsi
 199 02bd 49C1E005 		salq	$5, %r8
 200 02c1 4183C103 		addl	$3, %r9d
 201 02c5 4C8D6E20 		leaq	32(%rsi), %r13
 202 02c9 498D3C32 		leaq	(%r10,%rsi), %rdi
 203 02cd 4B8D0C2A 		leaq	(%r10,%r13), %rcx
 204 02d1 C5FD2801 		vmovapd	(%rcx), %ymm0
 205 02d5 C5FD5C07 		vsubpd	(%rdi), %ymm0, %ymm0
 206 02d9 C59559C0 		vmulpd	%ymm0, %ymm13, %ymm0
 207 02dd C5FD2984 		vmovapd	%ymm0, 1888(%rsp,%rsi)
 207      34600700 
 207      00
 208 02e6 4883C640 		addq	$64, %rsi
 209 02ea 83FA03   		cmpl	$3, %edx
 210 02ed 498D0432 		leaq	(%r10,%rsi), %rax
 211 02f1 C5FD2807 		vmovapd	(%rdi), %ymm0
 212 02f5 C5FD5908 		vmulpd	(%rax), %ymm0, %ymm1
 213 02f9 C4A17D59 		vmulpd	4064(%rsp,%r8), %ymm0, %ymm0
 213      8404E00F 
 213      0000
 214 0303 C5FD5C01 		vsubpd	(%rcx), %ymm0, %ymm0
 215 0307 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 216 030b C4A17D29 		vmovapd	%ymm0, 1888(%rsp,%r13)
 216      842C6007 
 216      0000
 217 0315 C5FD2807 		vmovapd	(%rdi), %ymm0
 218 0319 C58D5908 		vmulpd	(%rax), %ymm14, %ymm1
 219 031d C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 220 0321 C5FD5CC1 		vsubpd	%ymm1, %ymm0, %ymm0
 221 0325 C5FD2984 		vmovapd	%ymm0, 1888(%rsp,%rsi)
 221      34600700 
 221      00
 222 032e 7E80     		jle	.L13
 223              	.L38:
 224 0330 C5C55984 		vmulpd	2048(%rsp), %ymm7, %ymm0
 224      24000800 
 224      00
 225 0339 488D9424 		leaq	736(%rsp), %rdx
 225      E0020000 
 226 0341 C5C559A4 		vmulpd	1888(%rsp), %ymm7, %ymm4
 226      24600700 
 226      00
 227 034a 4889D0   		movq	%rdx, %rax
 228 034d C545598C 		vmulpd	1920(%rsp), %ymm7, %ymm9
 228      24800700 
 228      00
 229 0356 C5455994 		vmulpd	1952(%rsp), %ymm7, %ymm10
 229      24A00700 
 229      00
 230 035f C5FD5984 		vmulpd	3968(%rsp), %ymm0, %ymm0
 230      24800F00 
 230      00
 231 0368 C5C55994 		vmulpd	1984(%rsp), %ymm7, %ymm2
 231      24C00700 
 231      00
 232 0371 C5455984 		vmulpd	2016(%rsp), %ymm7, %ymm8
GAS LISTING /tmp/ccsfN7rV.s 			page 8


 232      24E00700 
 232      00
 233 037a C5C559B4 		vmulpd	2112(%rsp), %ymm7, %ymm6
 233      24400800 
 233      00
 234 0383 C5FD588C 		vaddpd	3584(%rsp), %ymm0, %ymm1
 234      24000E00 
 234      00
 235 038c C5C55984 		vmulpd	2144(%rsp), %ymm7, %ymm0
 235      24600800 
 235      00
 236 0395 C5DD59A4 		vmulpd	3936(%rsp), %ymm4, %ymm4
 236      24600F00 
 236      00
 237 039e C535598C 		vmulpd	3936(%rsp), %ymm9, %ymm9
 237      24600F00 
 237      00
 238 03a7 C5FD298C 		vmovapd	%ymm1, 288(%rsp)
 238      24200100 
 238      00
 239 03b0 C52D5994 		vmulpd	3936(%rsp), %ymm10, %ymm10
 239      24600F00 
 239      00
 240 03b9 C5FD298C 		vmovapd	%ymm1, 3200(%rsp)
 240      24800C00 
 240      00
 241 03c2 C5C5598C 		vmulpd	2080(%rsp), %ymm7, %ymm1
 241      24200800 
 241      00
 242 03cb C5DD58A4 		vaddpd	3424(%rsp), %ymm4, %ymm4
 242      24600D00 
 242      00
 243 03d4 C5FD5984 		vmulpd	4000(%rsp), %ymm0, %ymm0
 243      24A00F00 
 243      00
 244 03dd C535588C 		vaddpd	3456(%rsp), %ymm9, %ymm9
 244      24800D00 
 244      00
 245 03e6 C5ED5994 		vmulpd	3968(%rsp), %ymm2, %ymm2
 245      24800F00 
 245      00
 246 03ef C52D5894 		vaddpd	3488(%rsp), %ymm10, %ymm10
 246      24A00D00 
 246      00
 247 03f8 C53D5984 		vmulpd	3968(%rsp), %ymm8, %ymm8
 247      24800F00 
 247      00
 248 0401 C5F5598C 		vmulpd	4000(%rsp), %ymm1, %ymm1
 248      24A00F00 
 248      00
 249 040a C5FD29A4 		vmovapd	%ymm4, 3040(%rsp)
 249      24E00B00 
 249      00
 250 0413 C5FD58AC 		vaddpd	3680(%rsp), %ymm0, %ymm5
 250      24600E00 
 250      00
 251 041c C57D298C 		vmovapd	%ymm9, 3072(%rsp)
GAS LISTING /tmp/ccsfN7rV.s 			page 9


 251      24000C00 
 251      00
 252 0425 C5CD59B4 		vmulpd	4000(%rsp), %ymm6, %ymm6
 252      24A00F00 
 252      00
 253 042e C57D2994 		vmovapd	%ymm10, 3104(%rsp)
 253      24200C00 
 253      00
 254 0437 C5ED5894 		vaddpd	3520(%rsp), %ymm2, %ymm2
 254      24C00D00 
 254      00
 255 0440 C5F5588C 		vaddpd	3616(%rsp), %ymm1, %ymm1
 255      24200E00 
 255      00
 256 0449 C53D5884 		vaddpd	3552(%rsp), %ymm8, %ymm8
 256      24E00D00 
 256      00
 257 0452 C5CD58B4 		vaddpd	3648(%rsp), %ymm6, %ymm6
 257      24400E00 
 257      00
 258 045b C5FD2994 		vmovapd	%ymm2, 3136(%rsp)
 258      24400C00 
 258      00
 259 0464 C5FD298C 		vmovapd	%ymm1, 3232(%rsp)
 259      24A00C00 
 259      00
 260 046d C57D2984 		vmovapd	%ymm8, 3168(%rsp)
 260      24600C00 
 260      00
 261 0476 C5FD29B4 		vmovapd	%ymm6, 3264(%rsp)
 261      24C00C00 
 261      00
 262 047f C5FD29AC 		vmovapd	%ymm5, 256(%rsp)
 262      24000100 
 262      00
 263 0488 C545599C 		vmulpd	2240(%rsp), %ymm7, %ymm11
 263      24C00800 
 263      00
 264 0491 C5FD29AC 		vmovapd	%ymm5, 3296(%rsp)
 264      24E00C00 
 264      00
 265 049a C55D59BC 		vmulpd	4064(%rsp), %ymm4, %ymm15
 265      24E00F00 
 265      00
 266 04a3 C5C55984 		vmulpd	2176(%rsp), %ymm7, %ymm0
 266      24800800 
 266      00
 267 04ac C525599C 		vmulpd	4032(%rsp), %ymm11, %ymm11
 267      24C00F00 
 267      00
 268 04b5 C5C559AC 		vmulpd	2208(%rsp), %ymm7, %ymm5
 268      24A00800 
 268      00
 269 04be C441055C 		vsubpd	%ymm9, %ymm15, %ymm15
 269      F9
 270 04c3 C5FD5984 		vmulpd	4032(%rsp), %ymm0, %ymm0
 270      24C00F00 
GAS LISTING /tmp/ccsfN7rV.s 			page 10


 270      00
 271 04cc C525589C 		vaddpd	3776(%rsp), %ymm11, %ymm11
 271      24C00E00 
 271      00
 272 04d5 C5D559AC 		vmulpd	4032(%rsp), %ymm5, %ymm5
 272      24C00F00 
 272      00
 273 04de C5FD5884 		vaddpd	3712(%rsp), %ymm0, %ymm0
 273      24800E00 
 273      00
 274 04e7 C57D299C 		vmovapd	%ymm11, 192(%rsp)
 274      24C00000 
 274      00
 275 04f0 C57D299C 		vmovapd	%ymm11, 3392(%rsp)
 275      24400D00 
 275      00
 276 04f9 C5355CDC 		vsubpd	%ymm4, %ymm9, %ymm11
 277 04fd C5D558AC 		vaddpd	3744(%rsp), %ymm5, %ymm5
 277      24A00E00 
 277      00
 278 0506 C5FD2984 		vmovapd	%ymm0, 3328(%rsp)
 278      24000D00 
 278      00
 279 050f C4411559 		vmulpd	%ymm11, %ymm13, %ymm11
 279      DB
 280 0514 C57D299C 		vmovapd	%ymm11, 736(%rsp)
 280      24E00200 
 280      00
 281 051d C4415D59 		vmulpd	%ymm10, %ymm4, %ymm11
 281      DA
 282 0522 C5FD29AC 		vmovapd	%ymm5, 3360(%rsp)
 282      24200D00 
 282      00
 283 052b C4C15D59 		vmulpd	%ymm9, %ymm4, %ymm4
 283      E1
 284 0530 C4410D59 		vmulpd	%ymm10, %ymm14, %ymm10
 284      D2
 285 0535 C441055C 		vsubpd	%ymm11, %ymm15, %ymm11
 285      DB
 286 053a C57D28BC 		vmovapd	288(%rsp), %ymm15
 286      24200100 
 286      00
 287 0543 C56D598C 		vmulpd	4096(%rsp), %ymm2, %ymm9
 287      24001000 
 287      00
 288 054c C4C15D5C 		vsubpd	%ymm10, %ymm4, %ymm4
 288      E2
 289 0551 C57D299C 		vmovapd	%ymm11, 768(%rsp)
 289      24000300 
 289      00
 290 055a C57D289C 		vmovapd	192(%rsp), %ymm11
 290      24C00000 
 290      00
 291 0563 C441355C 		vsubpd	%ymm8, %ymm9, %ymm9
 291      C8
 292 0568 C5FD29A4 		vmovapd	%ymm4, 800(%rsp)
 292      24200300 
GAS LISTING /tmp/ccsfN7rV.s 			page 11


 292      00
 293 0571 C5BD5CE2 		vsubpd	%ymm2, %ymm8, %ymm4
 294 0575 C59559E4 		vmulpd	%ymm4, %ymm13, %ymm4
 295 0579 C5FD29A4 		vmovapd	%ymm4, 832(%rsp)
 295      24400300 
 295      00
 296 0582 C4C16D59 		vmulpd	%ymm15, %ymm2, %ymm4
 296      E7
 297 0587 C4C16D59 		vmulpd	%ymm8, %ymm2, %ymm2
 297      D0
 298 058c C5B55CE4 		vsubpd	%ymm4, %ymm9, %ymm4
 299 0590 C5FD29A4 		vmovapd	%ymm4, 864(%rsp)
 299      24600300 
 299      00
 300 0599 C4C10D59 		vmulpd	%ymm15, %ymm14, %ymm4
 300      E7
 301 059e C57D28BC 		vmovapd	256(%rsp), %ymm15
 301      24000100 
 301      00
 302 05a7 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 303 05ab C4C17559 		vmulpd	%ymm15, %ymm1, %ymm4
 303      E7
 304 05b0 C5FD2994 		vmovapd	%ymm2, 896(%rsp)
 304      24800300 
 304      00
 305 05b9 C5CD5CD1 		vsubpd	%ymm1, %ymm6, %ymm2
 306 05bd C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 307 05c1 C5FD2994 		vmovapd	%ymm2, 928(%rsp)
 307      24A00300 
 307      00
 308 05ca C5F55994 		vmulpd	4128(%rsp), %ymm1, %ymm2
 308      24201000 
 308      00
 309 05d3 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 310 05d7 C5ED5CD6 		vsubpd	%ymm6, %ymm2, %ymm2
 311 05db C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 312 05df C5FD2994 		vmovapd	%ymm2, 960(%rsp)
 312      24C00300 
 312      00
 313 05e8 C4C10D59 		vmulpd	%ymm15, %ymm14, %ymm2
 313      D7
 314 05ed C5F55CCA 		vsubpd	%ymm2, %ymm1, %ymm1
 315 05f1 C4C17D59 		vmulpd	%ymm11, %ymm0, %ymm2
 315      D3
 316 05f6 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm11
 316      DB
 317 05fb C5FD298C 		vmovapd	%ymm1, 992(%rsp)
 317      24E00300 
 317      00
 318 0604 C5D55CC8 		vsubpd	%ymm0, %ymm5, %ymm1
 319 0608 C59559C9 		vmulpd	%ymm1, %ymm13, %ymm1
 320 060c C5FD298C 		vmovapd	%ymm1, 1024(%rsp)
 320      24000400 
 320      00
 321 0615 C5FD598C 		vmulpd	4160(%rsp), %ymm0, %ymm1
 321      24401000 
 321      00
GAS LISTING /tmp/ccsfN7rV.s 			page 12


 322 061e C5FD59C5 		vmulpd	%ymm5, %ymm0, %ymm0
 323 0622 C5F55CCD 		vsubpd	%ymm5, %ymm1, %ymm1
 324 0626 C5FD282D 		vmovapd	.LC6(%rip), %ymm5
 324      00000000 
 325 062e C4C17D5C 		vsubpd	%ymm11, %ymm0, %ymm0
 325      C3
 326 0633 C5F55CCA 		vsubpd	%ymm2, %ymm1, %ymm1
 327 0637 C5FD2984 		vmovapd	%ymm0, 1088(%rsp)
 327      24400400 
 327      00
 328 0640 C5FD298C 		vmovapd	%ymm1, 1056(%rsp)
 328      24200400 
 328      00
 329              	.L15:
 330 0649 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 330      00000000 
 331 0651 4883C060 		addq	$96, %rax
 332 0655 4883C220 		addq	$32, %rdx
 333 0659 C5F55940 		vmulpd	-96(%rax), %ymm1, %ymm0
 333      A0
 334 065e C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 334      00000000 
 335 0666 C5F55988 		vmulpd	1056(%rax), %ymm1, %ymm1
 335      20040000 
 336 066e C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 337 0672 C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 337      00000000 
 338 067a C5FD5982 		vmulpd	3168(%rdx), %ymm0, %ymm0
 338      600C0000 
 339 0682 C5FD5880 		vaddpd	2592(%rax), %ymm0, %ymm0
 339      200A0000 
 340 068a C5FD2980 		vmovapd	%ymm0, 2208(%rax)
 340      A0080000 
 341 0692 C5F55940 		vmulpd	-64(%rax), %ymm1, %ymm0
 341      C0
 342 0697 C5FD280D 		vmovapd	.LC6(%rip), %ymm1
 342      00000000 
 343 069f C5F55988 		vmulpd	1088(%rax), %ymm1, %ymm1
 343      40040000 
 344 06a7 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 345 06ab C5FD280D 		vmovapd	.LC5(%rip), %ymm1
 345      00000000 
 346 06b3 C5FD5982 		vmulpd	3168(%rdx), %ymm0, %ymm0
 346      600C0000 
 347 06bb C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 347      400A0000 
 348 06c3 C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 348      C0080000 
 349 06cb C5F55940 		vmulpd	-32(%rax), %ymm1, %ymm0
 349      E0
 350 06d0 C5D55988 		vmulpd	1120(%rax), %ymm5, %ymm1
 350      60040000 
 351 06d8 C5F558C0 		vaddpd	%ymm0, %ymm1, %ymm0
 352 06dc C5FD5982 		vmulpd	3168(%rdx), %ymm0, %ymm0
 352      600C0000 
 353 06e4 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 353      600A0000 
GAS LISTING /tmp/ccsfN7rV.s 			page 13


 354 06ec C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 354      E0080000 
 355 06f4 4C39F8   		cmpq	%r15, %rax
 356 06f7 0F854CFF 		jne	.L15
 356      FFFF
 357 06fd C5FD2884 		vmovapd	3040(%rsp), %ymm0
 357      24E00B00 
 357      00
 358 0706 488D8424 		leaq	736(%rsp), %rax
 358      E0020000 
 359 070e 31D2     		xorl	%edx, %edx
 360 0710 C5FD288C 		vmovapd	3072(%rsp), %ymm1
 360      24000C00 
 360      00
 361 0719 C5FD59A4 		vmulpd	3104(%rsp), %ymm0, %ymm4
 361      24200C00 
 361      00
 362 0722 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 363 0726 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 364 072a C5FD2994 		vmovapd	%ymm2, 2272(%rsp)
 364      24E00800 
 364      00
 365 0733 C5FD5994 		vmulpd	4064(%rsp), %ymm0, %ymm2
 365      24E00F00 
 365      00
 366 073c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 367 0740 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 368 0744 C5FD288C 		vmovapd	3168(%rsp), %ymm1
 368      24600C00 
 368      00
 369 074d C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 370 0751 C5FD2994 		vmovapd	%ymm2, 2304(%rsp)
 370      24000900 
 370      00
 371 075a C58D5994 		vmulpd	3104(%rsp), %ymm14, %ymm2
 371      24200C00 
 371      00
 372 0763 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 373 0767 C5FD2984 		vmovapd	%ymm0, 2336(%rsp)
 373      24200900 
 373      00
 374 0770 C5FD2884 		vmovapd	3136(%rsp), %ymm0
 374      24400C00 
 374      00
 375 0779 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 376 077d C5FD59A4 		vmulpd	3200(%rsp), %ymm0, %ymm4
 376      24800C00 
 376      00
 377 0786 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 378 078a C5FD2994 		vmovapd	%ymm2, 2368(%rsp)
 378      24400900 
 378      00
 379 0793 C5FD5994 		vmulpd	4096(%rsp), %ymm0, %ymm2
 379      24001000 
 379      00
 380 079c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 381 07a0 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
GAS LISTING /tmp/ccsfN7rV.s 			page 14


 382 07a4 C5FD288C 		vmovapd	3264(%rsp), %ymm1
 382      24C00C00 
 382      00
 383 07ad C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 384 07b1 C5FD2994 		vmovapd	%ymm2, 2400(%rsp)
 384      24600900 
 384      00
 385 07ba C58D5994 		vmulpd	3200(%rsp), %ymm14, %ymm2
 385      24800C00 
 385      00
 386 07c3 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 387 07c7 C5FD2984 		vmovapd	%ymm0, 2432(%rsp)
 387      24800900 
 387      00
 388 07d0 C5FD2884 		vmovapd	3232(%rsp), %ymm0
 388      24A00C00 
 388      00
 389 07d9 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 390 07dd C5FD59A4 		vmulpd	3296(%rsp), %ymm0, %ymm4
 390      24E00C00 
 390      00
 391 07e6 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 392 07ea C5FD2994 		vmovapd	%ymm2, 2464(%rsp)
 392      24A00900 
 392      00
 393 07f3 C5FD5994 		vmulpd	4128(%rsp), %ymm0, %ymm2
 393      24201000 
 393      00
 394 07fc C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 395 0800 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 396 0804 C5FD288C 		vmovapd	3360(%rsp), %ymm1
 396      24200D00 
 396      00
 397 080d C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 398 0811 C5FD2994 		vmovapd	%ymm2, 2496(%rsp)
 398      24C00900 
 398      00
 399 081a C58D5994 		vmulpd	3296(%rsp), %ymm14, %ymm2
 399      24E00C00 
 399      00
 400 0823 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 401 0827 C5FD2984 		vmovapd	%ymm0, 2528(%rsp)
 401      24E00900 
 401      00
 402 0830 C5FD2884 		vmovapd	3328(%rsp), %ymm0
 402      24000D00 
 402      00
 403 0839 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 404 083d C5FD59A4 		vmulpd	3392(%rsp), %ymm0, %ymm4
 404      24400D00 
 404      00
 405 0846 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 406 084a C5FD2994 		vmovapd	%ymm2, 2560(%rsp)
 406      24000A00 
 406      00
 407 0853 C5FD5994 		vmulpd	4160(%rsp), %ymm0, %ymm2
 407      24401000 
GAS LISTING /tmp/ccsfN7rV.s 			page 15


 407      00
 408 085c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 409 0860 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 410 0864 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 411 0868 C5FD2825 		vmovapd	.LC8(%rip), %ymm4
 411      00000000 
 412 0870 C5FD2994 		vmovapd	%ymm2, 2592(%rsp)
 412      24200A00 
 412      00
 413 0879 C58D5994 		vmulpd	3392(%rsp), %ymm14, %ymm2
 413      24400D00 
 413      00
 414 0882 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 415 0886 C5FD2984 		vmovapd	%ymm0, 2624(%rsp)
 415      24400A00 
 415      00
 416              	.L17:
 417 088f C5FD282D 		vmovapd	.LC8(%rip), %ymm5
 417      00000000 
 418 0897 4A8D0C1A 		leaq	(%rdx,%r11), %rcx
 419 089b 4883C220 		addq	$32, %rdx
 420 089f C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 420      00000000 
 421 08a7 4883C060 		addq	$96, %rax
 422 08ab C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 422      A0
 423 08b0 C5FD282D 		vmovapd	.LC9(%rip), %ymm5
 423      00000000 
 424 08b8 C5F55988 		vmulpd	1440(%rax), %ymm1, %ymm1
 424      A0050000 
 425 08c0 C5D55990 		vmulpd	1056(%rax), %ymm5, %ymm2
 425      20040000 
 426 08c8 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 427 08cc C5D55990 		vmulpd	1088(%rax), %ymm5, %ymm2
 427      40040000 
 428 08d4 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 429 08d8 C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 429      00000000 
 430 08e0 C5F55988 		vmulpd	1472(%rax), %ymm1, %ymm1
 430      C0050000 
 431 08e8 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 432 08ec C5FD5880 		vaddpd	2592(%rax), %ymm0, %ymm0
 432      200A0000 
 433 08f4 C5FD2980 		vmovapd	%ymm0, 2208(%rax)
 433      A0080000 
 434 08fc C5DD5940 		vmulpd	-64(%rax), %ymm4, %ymm0
 434      C0
 435 0901 C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 436 0905 C5D55990 		vmulpd	1120(%rax), %ymm5, %ymm2
 436      60040000 
 437 090d C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 438 0911 C5FD280D 		vmovapd	.LC7(%rip), %ymm1
 438      00000000 
 439 0919 C5F55988 		vmulpd	1504(%rax), %ymm1, %ymm1
 439      E0050000 
 440 0921 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 441 0925 C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
GAS LISTING /tmp/ccsfN7rV.s 			page 16


 441      400A0000 
 442 092d C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 442      C0080000 
 443 0935 C5DD5940 		vmulpd	-32(%rax), %ymm4, %ymm0
 443      E0
 444 093a C5ED58C0 		vaddpd	%ymm0, %ymm2, %ymm0
 445 093e C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 446 0942 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 447 0946 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 447      600A0000 
 448 094e C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 448      E0080000 
 449 0956 4881FA80 		cmpq	$128, %rdx
 449      000000
 450 095d 0F852CFF 		jne	.L17
 450      FFFF
 451 0963 C5FD2884 		vmovapd	3040(%rsp), %ymm0
 451      24E00B00 
 451      00
 452 096c 488D8424 		leaq	736(%rsp), %rax
 452      E0020000 
 453 0974 30D2     		xorb	%dl, %dl
 454 0976 C5FD288C 		vmovapd	3072(%rsp), %ymm1
 454      24000C00 
 454      00
 455 097f C5FD59A4 		vmulpd	3104(%rsp), %ymm0, %ymm4
 455      24200C00 
 455      00
 456 0988 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 457 098c C5FD282D 		vmovapd	.LC12(%rip), %ymm5
 457      00000000 
 458 0994 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 459 0998 C5FD2994 		vmovapd	%ymm2, 2656(%rsp)
 459      24600A00 
 459      00
 460 09a1 C5FD5994 		vmulpd	4064(%rsp), %ymm0, %ymm2
 460      24E00F00 
 460      00
 461 09aa C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 462 09ae C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 463 09b2 C5FD288C 		vmovapd	3168(%rsp), %ymm1
 463      24600C00 
 463      00
 464 09bb C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 465 09bf C5FD2994 		vmovapd	%ymm2, 2688(%rsp)
 465      24800A00 
 465      00
 466 09c8 C58D5994 		vmulpd	3104(%rsp), %ymm14, %ymm2
 466      24200C00 
 466      00
 467 09d1 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 468 09d5 C5FD2984 		vmovapd	%ymm0, 2720(%rsp)
 468      24A00A00 
 468      00
 469 09de C5FD2884 		vmovapd	3136(%rsp), %ymm0
 469      24400C00 
 469      00
GAS LISTING /tmp/ccsfN7rV.s 			page 17


 470 09e7 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 471 09eb C5FD59A4 		vmulpd	3200(%rsp), %ymm0, %ymm4
 471      24800C00 
 471      00
 472 09f4 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 473 09f8 C5FD2994 		vmovapd	%ymm2, 2752(%rsp)
 473      24C00A00 
 473      00
 474 0a01 C5FD5994 		vmulpd	4096(%rsp), %ymm0, %ymm2
 474      24001000 
 474      00
 475 0a0a C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 476 0a0e C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 477 0a12 C5FD288C 		vmovapd	3264(%rsp), %ymm1
 477      24C00C00 
 477      00
 478 0a1b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 479 0a1f C5FD2994 		vmovapd	%ymm2, 2784(%rsp)
 479      24E00A00 
 479      00
 480 0a28 C58D5994 		vmulpd	3200(%rsp), %ymm14, %ymm2
 480      24800C00 
 480      00
 481 0a31 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 482 0a35 C5FD2984 		vmovapd	%ymm0, 2816(%rsp)
 482      24000B00 
 482      00
 483 0a3e C5FD2884 		vmovapd	3232(%rsp), %ymm0
 483      24A00C00 
 483      00
 484 0a47 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 485 0a4b C5FD59A4 		vmulpd	3296(%rsp), %ymm0, %ymm4
 485      24E00C00 
 485      00
 486 0a54 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 487 0a58 C5FD2994 		vmovapd	%ymm2, 2848(%rsp)
 487      24200B00 
 487      00
 488 0a61 C5FD5994 		vmulpd	4128(%rsp), %ymm0, %ymm2
 488      24201000 
 488      00
 489 0a6a C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 490 0a6e C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 491 0a72 C5FD288C 		vmovapd	3360(%rsp), %ymm1
 491      24200D00 
 491      00
 492 0a7b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 493 0a7f C5FD2994 		vmovapd	%ymm2, 2880(%rsp)
 493      24400B00 
 493      00
 494 0a88 C58D5994 		vmulpd	3296(%rsp), %ymm14, %ymm2
 494      24E00C00 
 494      00
 495 0a91 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 496 0a95 C5FD2984 		vmovapd	%ymm0, 2912(%rsp)
 496      24600B00 
 496      00
GAS LISTING /tmp/ccsfN7rV.s 			page 18


 497 0a9e C5FD2884 		vmovapd	3328(%rsp), %ymm0
 497      24000D00 
 497      00
 498 0aa7 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 499 0aab C5FD59A4 		vmulpd	3392(%rsp), %ymm0, %ymm4
 499      24400D00 
 499      00
 500 0ab4 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 501 0ab8 C5FD2994 		vmovapd	%ymm2, 2944(%rsp)
 501      24800B00 
 501      00
 502 0ac1 C5FD5994 		vmulpd	4160(%rsp), %ymm0, %ymm2
 502      24401000 
 502      00
 503 0aca C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 504 0ace C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 505 0ad2 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 506 0ad6 C5FD2994 		vmovapd	%ymm2, 2976(%rsp)
 506      24A00B00 
 506      00
 507 0adf C58D5994 		vmulpd	3392(%rsp), %ymm14, %ymm2
 507      24400D00 
 507      00
 508 0ae8 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 509 0aec C5FD2984 		vmovapd	%ymm0, 3008(%rsp)
 509      24C00B00 
 509      00
 510              	.L19:
 511 0af5 C5FD2825 		vmovapd	.LC11(%rip), %ymm4
 511      00000000 
 512 0afd 4A8D0C1A 		leaq	(%rdx,%r11), %rcx
 513 0b01 4883C220 		addq	$32, %rdx
 514 0b05 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 514      00000000 
 515 0b0d 4883C060 		addq	$96, %rax
 516 0b11 C5DD5990 		vmulpd	1440(%rax), %ymm4, %ymm2
 516      A0050000 
 517 0b19 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 517      00000000 
 518 0b21 C5D55940 		vmulpd	-96(%rax), %ymm5, %ymm0
 518      A0
 519 0b26 C5FD282D 		vmovapd	.LC11(%rip), %ymm5
 519      00000000 
 520 0b2e C5DD59A0 		vmulpd	1056(%rax), %ymm4, %ymm4
 520      20040000 
 521 0b36 C5F55988 		vmulpd	1824(%rax), %ymm1, %ymm1
 521      20070000 
 522 0b3e C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 523 0b42 C5FD2825 		vmovapd	.LC12(%rip), %ymm4
 523      00000000 
 524 0b4a C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 525 0b4e C5D55990 		vmulpd	1472(%rax), %ymm5, %ymm2
 525      C0050000 
 526 0b56 C5FD282D 		vmovapd	.LC13(%rip), %ymm5
 526      00000000 
 527 0b5e C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 528 0b62 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
GAS LISTING /tmp/ccsfN7rV.s 			page 19


 528      00000000 
 529 0b6a C5F55988 		vmulpd	1856(%rax), %ymm1, %ymm1
 529      40070000 
 530 0b72 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 531 0b76 C5FD5880 		vaddpd	2592(%rax), %ymm0, %ymm0
 531      200A0000 
 532 0b7e C5FD2980 		vmovapd	%ymm0, 2208(%rax)
 532      A0080000 
 533 0b86 C5DD5940 		vmulpd	-64(%rax), %ymm4, %ymm0
 533      C0
 534 0b8b C5D559A0 		vmulpd	1088(%rax), %ymm5, %ymm4
 534      40040000 
 535 0b93 C5FD282D 		vmovapd	.LC12(%rip), %ymm5
 535      00000000 
 536 0b9b C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 537 0b9f C5FD2825 		vmovapd	.LC11(%rip), %ymm4
 537      00000000 
 538 0ba7 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 539 0bab C5DD5990 		vmulpd	1504(%rax), %ymm4, %ymm2
 539      E0050000 
 540 0bb3 C5FD2825 		vmovapd	.LC13(%rip), %ymm4
 540      00000000 
 541 0bbb C5DD59A0 		vmulpd	1120(%rax), %ymm4, %ymm4
 541      60040000 
 542 0bc3 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 543 0bc7 C5FD280D 		vmovapd	.LC10(%rip), %ymm1
 543      00000000 
 544 0bcf C5F55988 		vmulpd	1888(%rax), %ymm1, %ymm1
 544      60070000 
 545 0bd7 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 546 0bdb C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 546      400A0000 
 547 0be3 C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 547      C0080000 
 548 0beb C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 548      E0
 549 0bf0 C5DD58C0 		vaddpd	%ymm0, %ymm4, %ymm0
 550 0bf4 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 551 0bf8 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 552 0bfc C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 553 0c00 C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 553      600A0000 
 554 0c08 C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 554      E0080000 
 555 0c10 4881FA80 		cmpq	$128, %rdx
 555      000000
 556 0c17 0F85D8FE 		jne	.L19
 556      FFFF
 557 0c1d C5FD2884 		vmovapd	3040(%rsp), %ymm0
 557      24E00B00 
 557      00
 558 0c26 488D8424 		leaq	736(%rsp), %rax
 558      E0020000 
 559 0c2e 30D2     		xorb	%dl, %dl
 560 0c30 C5FD288C 		vmovapd	3072(%rsp), %ymm1
 560      24000C00 
 560      00
GAS LISTING /tmp/ccsfN7rV.s 			page 20


 561 0c39 C5FD59A4 		vmulpd	3104(%rsp), %ymm0, %ymm4
 561      24200C00 
 561      00
 562 0c42 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 563 0c46 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 564 0c4a C5FD2994 		vmovapd	%ymm2, 1504(%rsp)
 564      24E00500 
 564      00
 565 0c53 C5FD5994 		vmulpd	4064(%rsp), %ymm0, %ymm2
 565      24E00F00 
 565      00
 566 0c5c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 567 0c60 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 568 0c64 C5FD288C 		vmovapd	3168(%rsp), %ymm1
 568      24600C00 
 568      00
 569 0c6d C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 570 0c71 C5FD2994 		vmovapd	%ymm2, 1536(%rsp)
 570      24000600 
 570      00
 571 0c7a C58D5994 		vmulpd	3104(%rsp), %ymm14, %ymm2
 571      24200C00 
 571      00
 572 0c83 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 573 0c87 C5FD2984 		vmovapd	%ymm0, 1568(%rsp)
 573      24200600 
 573      00
 574 0c90 C5FD2884 		vmovapd	3136(%rsp), %ymm0
 574      24400C00 
 574      00
 575 0c99 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 576 0c9d C5FD59A4 		vmulpd	3200(%rsp), %ymm0, %ymm4
 576      24800C00 
 576      00
 577 0ca6 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 578 0caa C5FD2994 		vmovapd	%ymm2, 1600(%rsp)
 578      24400600 
 578      00
 579 0cb3 C5FD5994 		vmulpd	4096(%rsp), %ymm0, %ymm2
 579      24001000 
 579      00
 580 0cbc C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 581 0cc0 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 582 0cc4 C5FD288C 		vmovapd	3264(%rsp), %ymm1
 582      24C00C00 
 582      00
 583 0ccd C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 584 0cd1 C5FD2994 		vmovapd	%ymm2, 1632(%rsp)
 584      24600600 
 584      00
 585 0cda C58D5994 		vmulpd	3200(%rsp), %ymm14, %ymm2
 585      24800C00 
 585      00
 586 0ce3 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 587 0ce7 C5FD2984 		vmovapd	%ymm0, 1664(%rsp)
 587      24800600 
 587      00
GAS LISTING /tmp/ccsfN7rV.s 			page 21


 588 0cf0 C5FD2884 		vmovapd	3232(%rsp), %ymm0
 588      24A00C00 
 588      00
 589 0cf9 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 590 0cfd C5FD59A4 		vmulpd	3296(%rsp), %ymm0, %ymm4
 590      24E00C00 
 590      00
 591 0d06 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 592 0d0a C5FD2994 		vmovapd	%ymm2, 1696(%rsp)
 592      24A00600 
 592      00
 593 0d13 C5FD5994 		vmulpd	4128(%rsp), %ymm0, %ymm2
 593      24201000 
 593      00
 594 0d1c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 595 0d20 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 596 0d24 C5FD288C 		vmovapd	3360(%rsp), %ymm1
 596      24200D00 
 596      00
 597 0d2d C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 598 0d31 C5FD2994 		vmovapd	%ymm2, 1728(%rsp)
 598      24C00600 
 598      00
 599 0d3a C58D5994 		vmulpd	3296(%rsp), %ymm14, %ymm2
 599      24E00C00 
 599      00
 600 0d43 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 601 0d47 C5FD2984 		vmovapd	%ymm0, 1760(%rsp)
 601      24E00600 
 601      00
 602 0d50 C5FD2884 		vmovapd	3328(%rsp), %ymm0
 602      24000D00 
 602      00
 603 0d59 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 604 0d5d C5FD59A4 		vmulpd	3392(%rsp), %ymm0, %ymm4
 604      24400D00 
 604      00
 605 0d66 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 606 0d6a C5FD2994 		vmovapd	%ymm2, 1792(%rsp)
 606      24000700 
 606      00
 607 0d73 C5FD5994 		vmulpd	4160(%rsp), %ymm0, %ymm2
 607      24401000 
 607      00
 608 0d7c C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 609 0d80 C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 610 0d84 C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 611 0d88 C5FD2994 		vmovapd	%ymm2, 1824(%rsp)
 611      24200700 
 611      00
 612 0d91 C58D5994 		vmulpd	3392(%rsp), %ymm14, %ymm2
 612      24400D00 
 612      00
 613 0d9a C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 614 0d9e C5FD2984 		vmovapd	%ymm0, 1856(%rsp)
 614      24400700 
 614      00
GAS LISTING /tmp/ccsfN7rV.s 			page 22


 615              	.L21:
 616 0da7 C5FD2835 		vmovapd	.LC15(%rip), %ymm6
 616      00000000 
 617 0daf 4A8D0C1A 		leaq	(%rdx,%r11), %rcx
 618 0db3 4883C220 		addq	$32, %rdx
 619 0db7 C5FD282D 		vmovapd	.LC16(%rip), %ymm5
 619      00000000 
 620 0dbf 4883C060 		addq	$96, %rax
 621 0dc3 C5CD5990 		vmulpd	1824(%rax), %ymm6, %ymm2
 621      20070000 
 622 0dcb C5FD2835 		vmovapd	.LC17(%rip), %ymm6
 622      00000000 
 623 0dd3 C5D559A0 		vmulpd	1440(%rax), %ymm5, %ymm4
 623      A0050000 
 624 0ddb C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 624      00000000 
 625 0de3 C5CD5940 		vmulpd	-96(%rax), %ymm6, %ymm0
 625      A0
 626 0de8 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 626      00000000 
 627 0df0 C5D559A8 		vmulpd	1056(%rax), %ymm5, %ymm5
 627      20040000 
 628 0df8 C5F55988 		vmulpd	672(%rax), %ymm1, %ymm1
 628      A0020000 
 629 0e00 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 630 0e04 C5FD282D 		vmovapd	.LC18(%rip), %ymm5
 630      00000000 
 631 0e0c C5D559A8 		vmulpd	1088(%rax), %ymm5, %ymm5
 631      40040000 
 632 0e14 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 633 0e18 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 633      00000000 
 634 0e20 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 635 0e24 C5DD5990 		vmulpd	1856(%rax), %ymm4, %ymm2
 635      40070000 
 636 0e2c C5FD2825 		vmovapd	.LC16(%rip), %ymm4
 636      00000000 
 637 0e34 C5DD59A0 		vmulpd	1472(%rax), %ymm4, %ymm4
 637      C0050000 
 638 0e3c C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 639 0e40 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 639      00000000 
 640 0e48 C5F55988 		vmulpd	704(%rax), %ymm1, %ymm1
 640      C0020000 
 641 0e50 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 642 0e54 C5FD5880 		vaddpd	2592(%rax), %ymm0, %ymm0
 642      200A0000 
 643 0e5c C5FD2980 		vmovapd	%ymm0, 2208(%rax)
 643      A0080000 
 644 0e64 C5CD5940 		vmulpd	-64(%rax), %ymm6, %ymm0
 644      C0
 645 0e69 C5FD2835 		vmovapd	.LC16(%rip), %ymm6
 645      00000000 
 646 0e71 C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 647 0e75 C5FD282D 		vmovapd	.LC17(%rip), %ymm5
 647      00000000 
 648 0e7d C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
GAS LISTING /tmp/ccsfN7rV.s 			page 23


 649 0e81 C5FD2825 		vmovapd	.LC15(%rip), %ymm4
 649      00000000 
 650 0e89 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 651 0e8d C5DD5990 		vmulpd	1888(%rax), %ymm4, %ymm2
 651      60070000 
 652 0e95 C5CD59A0 		vmulpd	1504(%rax), %ymm6, %ymm4
 652      E0050000 
 653 0e9d C5FD2835 		vmovapd	.LC18(%rip), %ymm6
 653      00000000 
 654 0ea5 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 655 0ea9 C5FD280D 		vmovapd	.LC14(%rip), %ymm1
 655      00000000 
 656 0eb1 C5F55988 		vmulpd	736(%rax), %ymm1, %ymm1
 656      E0020000 
 657 0eb9 C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 658 0ebd C5FD5880 		vaddpd	2624(%rax), %ymm0, %ymm0
 658      400A0000 
 659 0ec5 C5FD2980 		vmovapd	%ymm0, 2240(%rax)
 659      C0080000 
 660 0ecd C5D55940 		vmulpd	-32(%rax), %ymm5, %ymm0
 660      E0
 661 0ed2 C5CD59A8 		vmulpd	1120(%rax), %ymm6, %ymm5
 661      60040000 
 662 0eda C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 663 0ede C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 664 0ee2 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 665 0ee6 C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 666 0eea C5FD5901 		vmulpd	(%rcx), %ymm0, %ymm0
 667 0eee C5FD5880 		vaddpd	2656(%rax), %ymm0, %ymm0
 667      600A0000 
 668 0ef6 C5FD2980 		vmovapd	%ymm0, 2272(%rax)
 668      E0080000 
 669 0efe 4881FA80 		cmpq	$128, %rdx
 669      000000
 670 0f05 0F859CFE 		jne	.L21
 670      FFFF
 671 0f0b C5FD2884 		vmovapd	3040(%rsp), %ymm0
 671      24E00B00 
 671      00
 672 0f14 488D8C24 		leaq	736(%rsp), %rcx
 672      E0020000 
 673 0f1c 4C89FE   		movq	%r15, %rsi
 674 0f1f C5FD288C 		vmovapd	3072(%rsp), %ymm1
 674      24000C00 
 674      00
 675 0f28 C5FD59A4 		vmulpd	3104(%rsp), %ymm0, %ymm4
 675      24200C00 
 675      00
 676 0f31 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 677 0f35 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 678 0f39 C5FD2994 		vmovapd	%ymm2, 1120(%rsp)
 678      24600400 
 678      00
 679 0f42 C5FD5994 		vmulpd	4064(%rsp), %ymm0, %ymm2
 679      24E00F00 
 679      00
 680 0f4b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
GAS LISTING /tmp/ccsfN7rV.s 			page 24


 681 0f4f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 682 0f53 C5FD288C 		vmovapd	3168(%rsp), %ymm1
 682      24600C00 
 682      00
 683 0f5c C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 684 0f60 C5FD2994 		vmovapd	%ymm2, 1152(%rsp)
 684      24800400 
 684      00
 685 0f69 C58D5994 		vmulpd	3104(%rsp), %ymm14, %ymm2
 685      24200C00 
 685      00
 686 0f72 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 687 0f76 C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 687      24A00400 
 687      00
 688 0f7f C5FD2884 		vmovapd	3136(%rsp), %ymm0
 688      24400C00 
 688      00
 689 0f88 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 690 0f8c C5FD59A4 		vmulpd	3200(%rsp), %ymm0, %ymm4
 690      24800C00 
 690      00
 691 0f95 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 692 0f99 C5FD2994 		vmovapd	%ymm2, 1216(%rsp)
 692      24C00400 
 692      00
 693 0fa2 C5FD5994 		vmulpd	4096(%rsp), %ymm0, %ymm2
 693      24001000 
 693      00
 694 0fab C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 695 0faf C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 696 0fb3 C5FD288C 		vmovapd	3264(%rsp), %ymm1
 696      24C00C00 
 696      00
 697 0fbc C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 698 0fc0 C5FD2994 		vmovapd	%ymm2, 1248(%rsp)
 698      24E00400 
 698      00
 699 0fc9 C58D5994 		vmulpd	3200(%rsp), %ymm14, %ymm2
 699      24800C00 
 699      00
 700 0fd2 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 701 0fd6 C5FD2984 		vmovapd	%ymm0, 1280(%rsp)
 701      24000500 
 701      00
 702 0fdf C5FD2884 		vmovapd	3232(%rsp), %ymm0
 702      24A00C00 
 702      00
 703 0fe8 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 704 0fec C5FD59A4 		vmulpd	3296(%rsp), %ymm0, %ymm4
 704      24E00C00 
 704      00
 705 0ff5 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 706 0ff9 C5FD2994 		vmovapd	%ymm2, 1312(%rsp)
 706      24200500 
 706      00
 707 1002 C5FD5994 		vmulpd	4128(%rsp), %ymm0, %ymm2
GAS LISTING /tmp/ccsfN7rV.s 			page 25


 707      24201000 
 707      00
 708 100b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 709 100f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 710 1013 C5FD288C 		vmovapd	3360(%rsp), %ymm1
 710      24200D00 
 710      00
 711 101c C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 712 1020 C5FD2994 		vmovapd	%ymm2, 1344(%rsp)
 712      24400500 
 712      00
 713 1029 C58D5994 		vmulpd	3296(%rsp), %ymm14, %ymm2
 713      24E00C00 
 713      00
 714 1032 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 715 1036 C5FD2984 		vmovapd	%ymm0, 1376(%rsp)
 715      24600500 
 715      00
 716 103f C5FD2884 		vmovapd	3328(%rsp), %ymm0
 716      24000D00 
 716      00
 717 1048 C5F55CD0 		vsubpd	%ymm0, %ymm1, %ymm2
 718 104c C5FD59A4 		vmulpd	3392(%rsp), %ymm0, %ymm4
 718      24400D00 
 718      00
 719 1055 C59559D2 		vmulpd	%ymm2, %ymm13, %ymm2
 720 1059 C5FD2994 		vmovapd	%ymm2, 1408(%rsp)
 720      24800500 
 720      00
 721 1062 C5FD5994 		vmulpd	4160(%rsp), %ymm0, %ymm2
 721      24401000 
 721      00
 722 106b C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 723 106f C5ED5CD1 		vsubpd	%ymm1, %ymm2, %ymm2
 724 1073 C5FD280D 		vmovapd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EED
 724      00000000 
 725 107b C5ED5CD4 		vsubpd	%ymm4, %ymm2, %ymm2
 726 107f C5FD2994 		vmovapd	%ymm2, 1440(%rsp)
 726      24A00500 
 726      00
 727 1088 C58D5994 		vmulpd	3392(%rsp), %ymm14, %ymm2
 727      24400D00 
 727      00
 728 1091 C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 729 1095 C5FD2984 		vmovapd	%ymm0, 1472(%rsp)
 729      24C00500 
 729      00
 730              	.L25:
 731 109e 4889F0   		movq	%rsi, %rax
 732 10a1 BA030000 		movl	$3, %edx
 732      00
 733              	.L23:
 734 10a6 C5FD2835 		vmovapd	.LC19(%rip), %ymm6
 734      00000000 
 735 10ae 4883C020 		addq	$32, %rax
 736 10b2 C5FD282D 		vmovapd	.LC22(%rip), %ymm5
 736      00000000 
GAS LISTING /tmp/ccsfN7rV.s 			page 26


 737 10ba C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 737      E0
 738 10bf C5FD2835 		vmovapd	.LC20(%rip), %ymm6
 738      00000000 
 739 10c7 C5D559A8 		vmulpd	736(%rax), %ymm5, %ymm5
 739      E0020000 
 740 10cf C5CD59A0 		vmulpd	1504(%rax), %ymm6, %ymm4
 740      E0050000 
 741 10d7 C5FD2835 		vmovapd	.LC21(%rip), %ymm6
 741      00000000 
 742 10df C5CD5980 		vmulpd	1120(%rax), %ymm6, %ymm0
 742      60040000 
 743 10e7 C5FD2835 		vmovapd	.LC23(%rip), %ymm6
 743      00000000 
 744 10ef C5D558C0 		vaddpd	%ymm0, %ymm5, %ymm0
 745 10f3 C5FD282D 		vmovapd	.LC24(%rip), %ymm5
 745      00000000 
 746 10fb C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 747 10ff C5D559A0 		vmulpd	352(%rax), %ymm5, %ymm4
 747      60010000 
 748 1107 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 749 110b C5CD5950 		vmulpd	-32(%rax), %ymm6, %ymm2
 749      E0
 750 1110 C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 750      00000000 
 751 1118 C5CD59A8 		vmulpd	1504(%rax), %ymm6, %ymm5
 751      E0050000 
 752 1120 C5FD2835 		vmovapd	.LC26(%rip), %ymm6
 752      00000000 
 753 1128 C5FD5981 		vmulpd	3200(%rcx), %ymm0, %ymm0
 753      800C0000 
 754 1130 C5FD5880 		vaddpd	2272(%rax), %ymm0, %ymm0
 754      E0080000 
 755 1138 C5FD2980 		vmovapd	%ymm0, 1888(%rax)
 755      60070000 
 756 1140 C5CD5980 		vmulpd	1120(%rax), %ymm6, %ymm0
 756      60040000 
 757 1148 C5FD2835 		vmovapd	.LC27(%rip), %ymm6
 757      00000000 
 758 1150 C5CD59B0 		vmulpd	736(%rax), %ymm6, %ymm6
 758      E0020000 
 759 1158 C5CD58C0 		vaddpd	%ymm0, %ymm6, %ymm0
 760 115c C5FD58C5 		vaddpd	%ymm5, %ymm0, %ymm0
 761 1160 C5FD58C4 		vaddpd	%ymm4, %ymm0, %ymm0
 762 1164 C5FD58C2 		vaddpd	%ymm2, %ymm0, %ymm0
 763 1168 C5F55490 		vandpd	1888(%rax), %ymm1, %ymm2
 763      60070000 
 764 1170 C5FD5981 		vmulpd	3200(%rcx), %ymm0, %ymm0
 764      800C0000 
 765 1178 C5ED59D3 		vmulpd	%ymm3, %ymm2, %ymm2
 766 117c C5E558D2 		vaddpd	%ymm2, %ymm3, %ymm2
 767 1180 C5FD2980 		vmovapd	%ymm0, -416(%rax)
 767      60FEFFFF 
 768 1188 C5ED5EC0 		vdivpd	%ymm0, %ymm2, %ymm0
 769 118c C5FD2950 		vmovapd	%ymm2, -32(%rax)
 769      E0
 770 1191 C5FD54C1 		vandpd	%ymm1, %ymm0, %ymm0
GAS LISTING /tmp/ccsfN7rV.s 			page 27


 771 1195 C5FD2980 		vmovapd	%ymm0, 352(%rax)
 771      60010000 
 772 119d 83EA01   		subl	$1, %edx
 773 11a0 0F8500FF 		jne	.L23
 773      FFFF
 774 11a6 4883C120 		addq	$32, %rcx
 775 11aa 4883C660 		addq	$96, %rsi
 776 11ae 4C39F1   		cmpq	%r14, %rcx
 777 11b1 0F85E7FE 		jne	.L25
 777      FFFF
 778 11b7 C5FD2884 		vmovapd	1504(%rsp), %ymm0
 778      24E00500 
 778      00
 779 11c0 488D9424 		leaq	736(%rsp), %rdx
 779      E0020000 
 780 11c8 C5FD28A4 		vmovapd	160(%rsp), %ymm4
 780      24A00000 
 780      00
 781 11d1 C5FD5D84 		vminpd	1536(%rsp), %ymm0, %ymm0
 781      24000600 
 781      00
 782 11da C5FD298C 		vmovapd	%ymm1, 256(%rsp)
 782      24000100 
 782      00
 783 11e3 4889D0   		movq	%rdx, %rax
 784 11e6 C5FD29A4 		vmovapd	%ymm4, 288(%rsp)
 784      24200100 
 784      00
 785 11ef C5FD5D84 		vminpd	1568(%rsp), %ymm0, %ymm0
 785      24200600 
 785      00
 786 11f8 C5FD2984 		vmovapd	%ymm0, 1120(%rsp)
 786      24600400 
 786      00
 787 1201 C5FD2884 		vmovapd	1600(%rsp), %ymm0
 787      24400600 
 787      00
 788 120a C5FD5D84 		vminpd	1632(%rsp), %ymm0, %ymm0
 788      24600600 
 788      00
 789 1213 C5FD5D84 		vminpd	1664(%rsp), %ymm0, %ymm0
 789      24800600 
 789      00
 790 121c C5FD2984 		vmovapd	%ymm0, 1152(%rsp)
 790      24800400 
 790      00
 791 1225 C5FD2884 		vmovapd	1696(%rsp), %ymm0
 791      24A00600 
 791      00
 792 122e C5FD5D84 		vminpd	1728(%rsp), %ymm0, %ymm0
 792      24C00600 
 792      00
 793 1237 C5FD5D84 		vminpd	1760(%rsp), %ymm0, %ymm0
 793      24E00600 
 793      00
 794 1240 C5FD2984 		vmovapd	%ymm0, 1184(%rsp)
 794      24A00400 
GAS LISTING /tmp/ccsfN7rV.s 			page 28


 794      00
 795 1249 C5FD2884 		vmovapd	1792(%rsp), %ymm0
 795      24000700 
 795      00
 796 1252 C5FD5D84 		vminpd	1824(%rsp), %ymm0, %ymm0
 796      24200700 
 796      00
 797 125b C5FD5D84 		vminpd	1856(%rsp), %ymm0, %ymm0
 797      24400700 
 797      00
 798 1264 C5FD2984 		vmovapd	%ymm0, 1216(%rsp)
 798      24C00400 
 798      00
 799              	.L31:
 800 126d C5FD28B0 		vmovapd	384(%rax), %ymm6
 800      80010000 
 801 1275 C5F1EFC9 		vpxor	%xmm1, %xmm1, %xmm1
 802 1279 C5FD2815 		vmovapd	.LC33(%rip), %ymm2
 802      00000000 
 803 1281 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 803      F501
 804 1287 C5F928E6 		vmovapd	%xmm6, %xmm4
 805 128b C559DB0D 		vpand	.LC29(%rip), %xmm4, %xmm9
 805      00000000 
 806 1293 C5B973D4 		vpsrlq	$52, %xmm4, %xmm8
 806      34
 807 1298 C5D1DB05 		vpand	.LC29(%rip), %xmm5, %xmm0
 807      00000000 
 808 12a0 C539EB05 		vpor	.LC31(%rip), %xmm8, %xmm8
 808      00000000 
 809 12a8 C531EB0D 		vpor	.LC30(%rip), %xmm9, %xmm9
 809      00000000 
 810 12b0 C5F9EB05 		vpor	.LC30(%rip), %xmm0, %xmm0
 810      00000000 
 811 12b8 C4633518 		vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
 811      C801
 812 12be C5F973D5 		vpsrlq	$52, %xmm5, %xmm0
 812      34
 813 12c3 C5F9EB05 		vpor	.LC31(%rip), %xmm0, %xmm0
 813      00000000 
 814 12cb C4C16DC2 		vcmppd	$1, %ymm9, %ymm2, %ymm2
 814      D101
 815 12d1 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm10
 815      D201
 816 12d7 C4633D18 		vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
 816      C001
 817 12dd C5F928C2 		vmovapd	%xmm2, %xmm0
 818 12e1 C4C16D54 		vandpd	%ymm12, %ymm2, %ymm2
 818      D4
 819 12e6 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 819      00000000 
 820 12ee C53D5C05 		vsubpd	.LC32(%rip), %ymm8, %ymm8
 820      00000000 
 821 12f6 C5F95705 		vxorpd	.LC34(%rip), %xmm0, %xmm0
 821      00000000 
 822 12fe C4C37D18 		vinsertf128	$0x1, %xmm10, %ymm0, %ymm0
 822      C201
GAS LISTING /tmp/ccsfN7rV.s 			page 29


 823 1304 C53D58C2 		vaddpd	%ymm2, %ymm8, %ymm8
 824 1308 C4C17D54 		vandpd	%ymm9, %ymm0, %ymm0
 824      C1
 825 130d C4C17D58 		vaddpd	%ymm9, %ymm0, %ymm0
 825      C1
 826 1312 C4C17D5C 		vsubpd	%ymm12, %ymm0, %ymm0
 826      C4
 827 1317 C57D591D 		vmulpd	.LC38(%rip), %ymm0, %ymm11
 827      00000000 
 828 131f C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 829 1323 C57D593D 		vmulpd	.LC36(%rip), %ymm0, %ymm15
 829      00000000 
 830 132b C57D5915 		vmulpd	.LC40(%rip), %ymm0, %ymm10
 830      00000000 
 831 1333 C525581D 		vaddpd	.LC39(%rip), %ymm11, %ymm11
 831      00000000 
 832 133b C56D59CA 		vmulpd	%ymm2, %ymm2, %ymm9
 833 133f C505583D 		vaddpd	.LC37(%rip), %ymm15, %ymm15
 833      00000000 
 834 1347 C52D5815 		vaddpd	.LC41(%rip), %ymm10, %ymm10
 834      00000000 
 835 134f C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 835      D9
 836 1354 C4412558 		vaddpd	%ymm15, %ymm11, %ymm11
 836      DF
 837 1359 C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 838 135d C57D583D 		vaddpd	.LC44(%rip), %ymm0, %ymm15
 838      00000000 
 839 1365 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 839      D3
 840 136a C57D59DA 		vmulpd	%ymm2, %ymm0, %ymm11
 841 136e C4410559 		vmulpd	%ymm9, %ymm15, %ymm9
 841      C9
 842 1373 C4412D59 		vmulpd	%ymm11, %ymm10, %ymm10
 842      D3
 843 1378 C57D591D 		vmulpd	.LC42(%rip), %ymm0, %ymm11
 843      00000000 
 844 1380 C525581D 		vaddpd	.LC43(%rip), %ymm11, %ymm11
 844      00000000 
 845 1388 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 845      DB
 846 138d C57D590D 		vmulpd	.LC45(%rip), %ymm0, %ymm9
 846      00000000 
 847 1395 C535580D 		vaddpd	.LC46(%rip), %ymm9, %ymm9
 847      00000000 
 848 139d C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 849 13a1 C5ED5915 		vmulpd	.LC48(%rip), %ymm2, %ymm2
 849      00000000 
 850 13a9 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 850      DB
 851 13ae C53D590D 		vmulpd	.LC47(%rip), %ymm8, %ymm9
 851      00000000 
 852 13b6 C53D5905 		vmulpd	.LC49(%rip), %ymm8, %ymm8
 852      00000000 
 853 13be C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 854 13c2 C5E973F4 		vpsllq	$1, %xmm4, %xmm2
 854      01
GAS LISTING /tmp/ccsfN7rV.s 			page 30


 855 13c7 C4412D5E 		vdivpd	%ymm11, %ymm10, %ymm10
 855      D3
 856 13cc C4413558 		vaddpd	%ymm10, %ymm9, %ymm10
 856      D2
 857 13d1 C5AD58C0 		vaddpd	%ymm0, %ymm10, %ymm0
 858 13d5 C569DB15 		vpand	.LC50(%rip), %xmm2, %xmm10
 858      00000000 
 859 13dd C5BD58C0 		vaddpd	%ymm0, %ymm8, %ymm0
 860 13e1 C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 860      01
 861 13e6 C539DB0D 		vpand	.LC50(%rip), %xmm8, %xmm9
 861      00000000 
 862 13ee C4622929 		vpcmpeqq	.LC50(%rip), %xmm10, %xmm10
 862      15000000 
 862      00
 863 13f7 C4623929 		vpcmpeqq	.LC50(%rip), %xmm8, %xmm8
 863      05000000 
 863      00
 864 1400 C529EF15 		vpxor	.LC82(%rip), %xmm10, %xmm10
 864      00000000 
 865 1408 C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 865      0D000000 
 865      00
 866 1411 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 866      00000000 
 867 1419 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm10
 867      D101
 868 141f C4437D19 		vextractf128	$0x1, %ymm10, %xmm9
 868      D101
 869 1425 C5295715 		vxorpd	.LC34(%rip), %xmm10, %xmm10
 869      00000000 
 870 142d C531570D 		vxorpd	.LC34(%rip), %xmm9, %xmm9
 870      00000000 
 871 1435 C4432D18 		vinsertf128	$0x1, %xmm9, %ymm10, %ymm9
 871      C901
 872 143b C54DC215 		vcmppd	$1, .LC51(%rip), %ymm6, %ymm10
 872      00000000 
 872      01
 873 1444 C4412D56 		vorpd	%ymm9, %ymm10, %ymm11
 873      D9
 874 1449 C4637D4B 		vblendvpd	%ymm10, .LC52(%rip), %ymm0, %ymm10
 874      15000000 
 874      00A0
 875 1453 C4437D19 		vextractf128	$0x1, %ymm11, %xmm15
 875      DF01
 876 1459 C4412156 		vorpd	%xmm15, %xmm11, %xmm11
 876      DF
 877 145e C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 877      FF
 878 1463 C4C17950 		vmovmskpd	%xmm11, %ecx
 878      CB
 879 1468 C551DB1D 		vpand	.LC54(%rip), %xmm5, %xmm11
 879      00000000 
 880 1470 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 880      1F
 881 1475 85C9     		testl	%ecx, %ecx
 882 1477 C4422129 		vpcmpeqq	%xmm15, %xmm11, %xmm11
GAS LISTING /tmp/ccsfN7rV.s 			page 31


 882      DF
 883 147c C559DB3D 		vpand	.LC54(%rip), %xmm4, %xmm15
 883      00000000 
 884 1484 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 884      1F
 885 1489 C4620129 		vpcmpeqq	%xmm1, %xmm15, %xmm15
 885      F9
 886 148e C4430518 		vinsertf128	$0x1, %xmm11, %ymm15, %ymm11
 886      DB01
 887 1494 C4632D4B 		vblendvpd	%ymm11, 224(%rsp), %ymm10, %ymm10
 887      9424E000 
 887      0000B0
 888 149f C4632D4B 		vblendvpd	%ymm9, %ymm6, %ymm10, %ymm9
 888      CE90
 889 14a5 C5C973D5 		vpsrlq	$32, %xmm5, %xmm6
 889      20
 890 14aa C4E3490E 		vpblendw	$204, %xmm5, %xmm6, %xmm5
 890      EDCC
 891 14b0 C5C973D4 		vpsrlq	$32, %xmm4, %xmm6
 891      20
 892 14b5 C4E3490E 		vpblendw	$204, %xmm4, %xmm6, %xmm4
 892      E4CC
 893 14bb C4E26929 		vpcmpeqq	.LC50(%rip), %xmm2, %xmm6
 893      35000000 
 893      00
 894 14c4 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 894      ED01
 895 14ca C4C34D18 		vinsertf128	$0x1, %xmm8, %ymm6, %ymm6
 895      F001
 896 14d0 C5CD54F5 		vandpd	%ymm5, %ymm6, %ymm6
 897 14d4 C4E3354B 		vblendvpd	%ymm6, .LC52(%rip), %ymm9, %ymm6
 897      35000000 
 897      0060
 898 14de 7504     		jne	.L27
 899 14e0 C5FD28F0 		vmovapd	%ymm0, %ymm6
 900              	.L27:
 901 14e4 C5CD59F7 		vmulpd	%ymm7, %ymm6, %ymm6
 902 14e8 C5FD288C 		vmovapd	288(%rsp), %ymm1
 902      24200100 
 902      00
 903 14f1 C5CD592D 		vmulpd	.LC55(%rip), %ymm6, %ymm5
 903      00000000 
 904 14f9 C4E37D09 		vroundpd	$8, %ymm5, %ymm5
 904      ED08
 905 14ff C5D55905 		vmulpd	.LC56(%rip), %ymm5, %ymm0
 905      00000000 
 906 1507 C5D55915 		vmulpd	.LC57(%rip), %ymm5, %ymm2
 906      00000000 
 907 150f C5D5582D 		vaddpd	.LC32(%rip), %ymm5, %ymm5
 907      00000000 
 908 1517 C5CD5CC0 		vsubpd	%ymm0, %ymm6, %ymm0
 909 151b C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 910 151f C57D591D 		vmulpd	.LC61(%rip), %ymm0, %ymm11
 910      00000000 
 911 1527 C57D5915 		vmulpd	.LC58(%rip), %ymm0, %ymm10
 911      00000000 
 912 152f C57D5905 		vmulpd	.LC59(%rip), %ymm0, %ymm8
GAS LISTING /tmp/ccsfN7rV.s 			page 32


 912      00000000 
 913 1537 C5FD59D0 		vmulpd	%ymm0, %ymm0, %ymm2
 914 153b C525581D 		vaddpd	.LC62(%rip), %ymm11, %ymm11
 914      00000000 
 915 1543 C52D5815 		vaddpd	.LC48(%rip), %ymm10, %ymm10
 915      00000000 
 916 154b C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 916      00000000 
 917 1553 C5ED59E2 		vmulpd	%ymm2, %ymm2, %ymm4
 918 1557 C52559DA 		vmulpd	%ymm2, %ymm11, %ymm11
 919 155b C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 920 155f C55D59CC 		vmulpd	%ymm4, %ymm4, %ymm9
 921 1563 C4412558 		vaddpd	%ymm8, %ymm11, %ymm8
 921      C0
 922 1568 C57D591D 		vmulpd	.LC65(%rip), %ymm0, %ymm11
 922      00000000 
 923 1570 C52D58D0 		vaddpd	%ymm0, %ymm10, %ymm10
 924 1574 C53D59C4 		vmulpd	%ymm4, %ymm8, %ymm8
 925 1578 C525581D 		vaddpd	.LC66(%rip), %ymm11, %ymm11
 925      00000000 
 926 1580 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm8
 926      C2
 927 1585 C57D5915 		vmulpd	.LC63(%rip), %ymm0, %ymm10
 927      00000000 
 928 158d C5FD5905 		vmulpd	.LC67(%rip), %ymm0, %ymm0
 928      00000000 
 929 1595 C5A559D2 		vmulpd	%ymm2, %ymm11, %ymm2
 930 1599 C52D5815 		vaddpd	.LC64(%rip), %ymm10, %ymm10
 930      00000000 
 931 15a1 C5FD5805 		vaddpd	.LC68(%rip), %ymm0, %ymm0
 931      00000000 
 932 15a9 C4416D58 		vaddpd	%ymm10, %ymm2, %ymm10
 932      D2
 933 15ae C4E37D19 		vextractf128	$0x1, %ymm5, %xmm2
 933      EA01
 934 15b4 C5FD59E4 		vmulpd	%ymm4, %ymm0, %ymm4
 935 15b8 C5F973F5 		vpsllq	$52, %xmm5, %xmm0
 935      34
 936 15bd C5E973F2 		vpsllq	$52, %xmm2, %xmm2
 936      34
 937 15c2 C4E37D18 		vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
 937      C201
 938 15c8 C5F928D6 		vmovapd	%xmm6, %xmm2
 939 15cc C5CD54AC 		vandpd	256(%rsp), %ymm6, %ymm5
 939      24000100 
 939      00
 940 15d5 C4C15D58 		vaddpd	%ymm10, %ymm4, %ymm4
 940      E2
 941 15da C5D5C22D 		vcmppd	$1, .LC69(%rip), %ymm5, %ymm5
 941      00000000 
 941      01
 942 15e3 C4415D59 		vmulpd	%ymm9, %ymm4, %ymm9
 942      C9
 943 15e8 C4E37D19 		vextractf128	$0x1, %ymm6, %xmm4
 943      F401
 944 15ee C4413558 		vaddpd	%ymm8, %ymm9, %ymm8
 944      C0
GAS LISTING /tmp/ccsfN7rV.s 			page 33


 945 15f3 C5B173F4 		vpsllq	$1, %xmm4, %xmm9
 945      01
 946 15f8 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 946      1F
 947 15fd C531DB0D 		vpand	.LC50(%rip), %xmm9, %xmm9
 947      00000000 
 948 1605 C4413D58 		vaddpd	%ymm12, %ymm8, %ymm8
 948      C4
 949 160a C4623129 		vpcmpeqq	.LC50(%rip), %xmm9, %xmm9
 949      0D000000 
 949      00
 950 1613 C531EF0D 		vpxor	.LC82(%rip), %xmm9, %xmm9
 950      00000000 
 951 161b C53D59C0 		vmulpd	%ymm0, %ymm8, %ymm8
 952 161f C5F973F2 		vpsllq	$1, %xmm2, %xmm0
 952      01
 953 1624 C5E972E2 		vpsrad	$31, %xmm2, %xmm2
 953      1F
 954 1629 C5F9DB05 		vpand	.LC50(%rip), %xmm0, %xmm0
 954      00000000 
 955 1631 C4E27929 		vpcmpeqq	.LC50(%rip), %xmm0, %xmm0
 955      05000000 
 955      00
 956 163a C5F9EF05 		vpxor	.LC82(%rip), %xmm0, %xmm0
 956      00000000 
 957 1642 C4C37D18 		vinsertf128	$0x1, %xmm9, %ymm0, %ymm0
 957      C101
 958 1648 C5D554C0 		vandpd	%ymm0, %ymm5, %ymm0
 959 164c C4E37D19 		vextractf128	$0x1, %ymm0, %xmm5
 959      C501
 960 1652 C57928C8 		vmovapd	%xmm0, %xmm9
 961 1656 C5B154ED 		vandpd	%xmm5, %xmm9, %xmm5
 962 165a C5F950CD 		vmovmskpd	%xmm5, %ecx
 963 165e C5D173D4 		vpsrlq	$32, %xmm4, %xmm5
 963      20
 964 1663 C4E3510E 		vpblendw	$204, %xmm4, %xmm5, %xmm4
 964      E4CC
 965 1669 C5D173D2 		vpsrlq	$32, %xmm2, %xmm5
 965      20
 966 166e C4E3510E 		vpblendw	$204, %xmm2, %xmm5, %xmm2
 966      D2CC
 967 1674 C5D157ED 		vxorpd	%xmm5, %xmm5, %xmm5
 968 1678 83F903   		cmpl	$3, %ecx
 969 167b C4E36D18 		vinsertf128	$0x1, %xmm4, %ymm2, %ymm4
 969      E401
 970 1681 C5CDC2D6 		vcmppd	$4, %ymm6, %ymm6, %ymm2
 970      04
 971 1686 C4E3754B 		vblendvpd	%ymm4, %ymm5, %ymm1, %ymm4
 971      E540
 972 168c C4C35D4B 		vblendvpd	%ymm0, %ymm8, %ymm4, %ymm0
 972      C000
 973 1692 C4E37D4B 		vblendvpd	%ymm2, %ymm6, %ymm0, %ymm6
 973      F620
 974 1698 0F845A01 		je	.L39
 974      0000
 975              	.L29:
 976 169e C5FD2880 		vmovapd	3200(%rax), %ymm0
GAS LISTING /tmp/ccsfN7rV.s 			page 34


 976      800C0000 
 977 16a6 C59DC290 		vcmppd	$2, 384(%rax), %ymm12, %ymm2
 977      80010000 
 977      02
 978 16af C5FD280D 		vmovapd	.LC71(%rip), %ymm1
 978      00000000 
 979 16b7 4883C020 		addq	$32, %rax
 980 16bb 4883C260 		addq	$96, %rdx
 981 16bf C5FDC205 		vcmppd	$2, .LC70(%rip), %ymm0, %ymm0
 981      00000000 
 981      02
 982 16c8 C5ED56C0 		vorpd	%ymm0, %ymm2, %ymm0
 983 16cc C5F5C2D6 		vcmppd	$1, %ymm6, %ymm1, %ymm2
 983      01
 984 16d1 C4E34D4B 		vblendvpd	%ymm2, %ymm1, %ymm6, %ymm6
 984      F120
 985 16d7 C5FD280D 		vmovapd	.LC73(%rip), %ymm1
 985      00000000 
 986 16df C5CDC2D7 		vcmppd	$1, %ymm7, %ymm6, %ymm2
 986      01
 987 16e4 C4E34D4B 		vblendvpd	%ymm2, %ymm7, %ymm6, %ymm6
 987      F720
 988 16ea C5FD29B0 		vmovapd	%ymm6, 736(%rax)
 988      E0020000 
 989 16f2 C5FD2892 		vmovapd	2592(%rdx), %ymm2
 989      200A0000 
 990 16fa C4E36D4B 		vblendvpd	%ymm0, 2208(%rdx), %ymm2, %ymm2
 990      92A00800 
 990      0000
 991 1704 C5FD2992 		vmovapd	%ymm2, 2592(%rdx)
 991      200A0000 
 992 170c C5FD2892 		vmovapd	2624(%rdx), %ymm2
 992      400A0000 
 993 1714 C4E36D4B 		vblendvpd	%ymm0, 2240(%rdx), %ymm2, %ymm2
 993      92C00800 
 993      0000
 994 171e C5FD2992 		vmovapd	%ymm2, 2624(%rdx)
 994      400A0000 
 995 1726 C5FD2892 		vmovapd	2656(%rdx), %ymm2
 995      600A0000 
 996 172e C4E36D4B 		vblendvpd	%ymm0, 2272(%rdx), %ymm2, %ymm2
 996      92E00800 
 996      0000
 997 1738 C5FD2992 		vmovapd	%ymm2, 2656(%rdx)
 997      600A0000 
 998 1740 C5FD2890 		vmovapd	3040(%rax), %ymm2
 998      E00B0000 
 999 1748 C5ED58A0 		vaddpd	3168(%rax), %ymm2, %ymm4
 999      600C0000 
 1000 1750 C4E36D4B 		vblendvpd	%ymm0, %ymm4, %ymm2, %ymm0
 1000      C400
 1001 1756 C5FD2980 		vmovapd	%ymm0, 3040(%rax)
 1001      E00B0000 
 1002 175e C5FD2880 		vmovapd	736(%rax), %ymm0
 1002      E0020000 
 1003 1766 C5FD5980 		vmulpd	3168(%rax), %ymm0, %ymm0
 1003      600C0000 
GAS LISTING /tmp/ccsfN7rV.s 			page 35


 1004 176e C5FD5905 		vmulpd	.LC72(%rip), %ymm0, %ymm0
 1004      00000000 
 1005 1776 C5F5C2D0 		vcmppd	$1, %ymm0, %ymm1, %ymm2
 1005      01
 1006 177b C4E37D4B 		vblendvpd	%ymm2, %ymm1, %ymm0, %ymm0
 1006      C120
 1007 1781 C5FDC215 		vcmppd	$1, .LC70(%rip), %ymm0, %ymm2
 1007      00000000 
 1007      01
 1008 178a C4E37D4B 		vblendvpd	%ymm2, .LC70(%rip), %ymm0, %ymm0
 1008      05000000 
 1008      0020
 1009 1794 C5FD2980 		vmovapd	%ymm0, 3168(%rax)
 1009      600C0000 
 1010 179c 4939C6   		cmpq	%rax, %r14
 1011 179f 0F85C8FA 		jne	.L31
 1011      FFFF
 1012 17a5 C5FD2884 		vmovapd	3808(%rsp), %ymm0
 1012      24E00E00 
 1012      00
 1013 17ae C5FD2825 		vmovapd	.LC74(%rip), %ymm4
 1013      00000000 
 1014 17b6 C5FD5D84 		vminpd	3840(%rsp), %ymm0, %ymm0
 1014      24000F00 
 1014      00
 1015 17bf C5FD5D84 		vminpd	3872(%rsp), %ymm0, %ymm0
 1015      24200F00 
 1015      00
 1016 17c8 C5FD5D84 		vminpd	3904(%rsp), %ymm0, %ymm0
 1016      24400F00 
 1016      00
 1017 17d1 C5DDC2C0 		vcmppd	$2, %ymm0, %ymm4, %ymm0
 1017      02
 1018 17d6 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1018      C101
 1019 17dc C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1020 17e0 C5F950C0 		vmovmskpd	%xmm0, %eax
 1021 17e4 83F803   		cmpl	$3, %eax
 1022 17e7 7418     		je	.L40
 1023 17e9 31D2     		xorl	%edx, %edx
 1024 17eb 4531C9   		xorl	%r9d, %r9d
 1025 17ee E9BDEAFF 		jmp	.L13
 1025      FF
 1026              		.p2align 4,,10
 1027 17f3 0F1F4400 		.p2align 3
 1027      00
 1028              	.L39:
 1029 17f8 C57D29C6 		vmovapd	%ymm8, %ymm6
 1030 17fc E99DFEFF 		jmp	.L29
 1030      FF
 1031              	.L40:
 1032 1801 89D8     		movl	%ebx, %eax
 1033 1803 BAAD8BDB 		movl	$1759218605, %edx
 1033      68
 1034 1808 F7EA     		imull	%edx
 1035 180a 89D8     		movl	%ebx, %eax
 1036 180c C1F81F   		sarl	$31, %eax
GAS LISTING /tmp/ccsfN7rV.s 			page 36


 1037 180f C1FA0C   		sarl	$12, %edx
 1038 1812 29C2     		subl	%eax, %edx
 1039 1814 89D8     		movl	%ebx, %eax
 1040 1816 69D21027 		imull	$10000, %edx, %edx
 1040      0000
 1041 181c 29D0     		subl	%edx, %eax
 1042 181e 83F801   		cmpl	$1, %eax
 1043 1821 0F848B00 		je	.L41
 1043      0000
 1044              	.L33:
 1045 1827 83C310   		addl	$16, %ebx
 1046 182a 4983EC80 		subq	$-128, %r12
 1047 182e 81FB809D 		cmpl	$40320, %ebx
 1047      0000
 1048 1834 0F85DBE8 		jne	.L12
 1048      FFFF
 1049 183a C5F877   		vzeroupper
 1050 183d E8000000 		call	clock
 1050      00
 1051 1842 BA0E0000 		movl	$14, %edx
 1051      00
 1052 1847 BE000000 		movl	$.LC80, %esi
 1052      00
 1053 184c BF000000 		movl	$_ZSt4cout, %edi
 1053      00
 1054 1851 4889C3   		movq	%rax, %rbx
 1055 1854 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1055      00
 1056 1859 482B9C24 		subq	152(%rsp), %rbx
 1056      98000000 
 1057 1861 48BECFF7 		movabsq	$2361183241434822607, %rsi
 1057      53E3A59B 
 1057      C420
 1058 186b BF000000 		movl	$_ZSt4cout, %edi
 1058      00
 1059 1870 4889D8   		movq	%rbx, %rax
 1060 1873 4889D9   		movq	%rbx, %rcx
 1061 1876 48F7EE   		imulq	%rsi
 1062 1879 48C1F93F 		sarq	$63, %rcx
 1063 187d 4889D6   		movq	%rdx, %rsi
 1064 1880 48C1FE07 		sarq	$7, %rsi
 1065 1884 4829CE   		subq	%rcx, %rsi
 1066 1887 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1066      00
 1067 188c BE000000 		movl	$.LC81, %esi
 1067      00
 1068 1891 4889C7   		movq	%rax, %rdi
 1069 1894 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1069      00
 1070 1899 4889C7   		movq	%rax, %rdi
 1071 189c E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1071      00
 1072 18a1 488D65D8 		leaq	-40(%rbp), %rsp
 1073 18a5 31C0     		xorl	%eax, %eax
 1074 18a7 5B       		popq	%rbx
 1075 18a8 415C     		popq	%r12
 1076 18aa 415D     		popq	%r13
GAS LISTING /tmp/ccsfN7rV.s 			page 37


 1077 18ac 415E     		popq	%r14
 1078 18ae 415F     		popq	%r15
 1079 18b0 5D       		popq	%rbp
 1080              		.cfi_remember_state
 1081              		.cfi_def_cfa 7, 8
 1082 18b1 C3       		ret
 1083              	.L41:
 1084              		.cfi_restore_state
 1085 18b2 BA390000 		movl	$57, %edx
 1085      00
 1086 18b7 BE000000 		movl	$.LC75, %esi
 1086      00
 1087 18bc BF000000 		movl	$_ZSt4cout, %edi
 1087      00
 1088 18c1 C57D2924 		vmovapd	%ymm12, (%rsp)
 1088      24
 1089 18c6 C5FD297C 		vmovapd	%ymm7, 32(%rsp)
 1089      2420
 1090 18cc C57D2974 		vmovapd	%ymm14, 64(%rsp)
 1090      2440
 1091 18d2 C57D296C 		vmovapd	%ymm13, 96(%rsp)
 1091      2460
 1092 18d8 C5FD299C 		vmovapd	%ymm3, 192(%rsp)
 1092      24C00000 
 1092      00
 1093 18e1 C5F877   		vzeroupper
 1094 18e4 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1094      00
 1095 18e9 C5FD2884 		vmovapd	3424(%rsp), %ymm0
 1095      24600D00 
 1095      00
 1096 18f2 89DE     		movl	%ebx, %esi
 1097 18f4 BF000000 		movl	$_ZSt4cout, %edi
 1097      00
 1098 18f9 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1098      24400100 
 1098      00
 1099 1902 C5FD2884 		vmovapd	4064(%rsp), %ymm0
 1099      24E00F00 
 1099      00
 1100 190b C5FB108C 		vmovsd	320(%rsp), %xmm1
 1100      24400100 
 1100      00
 1101 1914 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1101      24400100 
 1101      00
 1102 191d C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1102      24000100 
 1102      00
 1103 1926 C5FB1084 		vmovsd	320(%rsp), %xmm0
 1103      24400100 
 1103      00
 1104 192f C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1104      24200100 
 1104      00
 1105 1938 C5F877   		vzeroupper
 1106 193b E8000000 		call	_ZNSolsEi
GAS LISTING /tmp/ccsfN7rV.s 			page 38


 1106      00
 1107 1940 BA060000 		movl	$6, %edx
 1107      00
 1108 1945 BE000000 		movl	$.LC76, %esi
 1108      00
 1109 194a 4889C7   		movq	%rax, %rdi
 1110 194d 4989C5   		movq	%rax, %r13
 1111 1950 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1111      00
 1112 1955 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1112      24200100 
 1112      00
 1113 195e 4C89EF   		movq	%r13, %rdi
 1114 1961 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1114      00
 1115 1966 BA030000 		movl	$3, %edx
 1115      00
 1116 196b BE000000 		movl	$.LC77, %esi
 1116      00
 1117 1970 4889C7   		movq	%rax, %rdi
 1118 1973 4989C5   		movq	%rax, %r13
 1119 1976 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1119      00
 1120 197b C5FB108C 		vmovsd	256(%rsp), %xmm1
 1120      24000100 
 1120      00
 1121 1984 4C89EF   		movq	%r13, %rdi
 1122 1987 C5F928C1 		vmovapd	%xmm1, %xmm0
 1123 198b E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1123      00
 1124 1990 BA010000 		movl	$1, %edx
 1124      00
 1125 1995 BE000000 		movl	$.LC78, %esi
 1125      00
 1126 199a 4889C7   		movq	%rax, %rdi
 1127 199d E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1127      00
 1128 19a2 C5FD2884 		vmovapd	3456(%rsp), %ymm0
 1128      24800D00 
 1128      00
 1129 19ab 89DE     		movl	%ebx, %esi
 1130 19ad BF000000 		movl	$_ZSt4cout, %edi
 1130      00
 1131 19b2 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1131      24400100 
 1131      00
 1132 19bb C5FD2884 		vmovapd	4096(%rsp), %ymm0
 1132      24001000 
 1132      00
 1133 19c4 C5FB108C 		vmovsd	320(%rsp), %xmm1
 1133      24400100 
 1133      00
 1134 19cd C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1134      24400100 
 1134      00
 1135 19d6 C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1135      24000100 
GAS LISTING /tmp/ccsfN7rV.s 			page 39


 1135      00
 1136 19df C5FB1084 		vmovsd	320(%rsp), %xmm0
 1136      24400100 
 1136      00
 1137 19e8 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1137      24200100 
 1137      00
 1138 19f1 C5F877   		vzeroupper
 1139 19f4 E8000000 		call	_ZNSolsEi
 1139      00
 1140 19f9 BA060000 		movl	$6, %edx
 1140      00
 1141 19fe BE000000 		movl	$.LC76, %esi
 1141      00
 1142 1a03 4889C7   		movq	%rax, %rdi
 1143 1a06 4989C5   		movq	%rax, %r13
 1144 1a09 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1144      00
 1145 1a0e C5FB1084 		vmovsd	288(%rsp), %xmm0
 1145      24200100 
 1145      00
 1146 1a17 4C89EF   		movq	%r13, %rdi
 1147 1a1a E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1147      00
 1148 1a1f BA030000 		movl	$3, %edx
 1148      00
 1149 1a24 BE000000 		movl	$.LC77, %esi
 1149      00
 1150 1a29 4889C7   		movq	%rax, %rdi
 1151 1a2c 4989C5   		movq	%rax, %r13
 1152 1a2f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1152      00
 1153 1a34 C5FB108C 		vmovsd	256(%rsp), %xmm1
 1153      24000100 
 1153      00
 1154 1a3d 4C89EF   		movq	%r13, %rdi
 1155 1a40 C5F928C1 		vmovapd	%xmm1, %xmm0
 1156 1a44 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1156      00
 1157 1a49 BA010000 		movl	$1, %edx
 1157      00
 1158 1a4e BE000000 		movl	$.LC78, %esi
 1158      00
 1159 1a53 4889C7   		movq	%rax, %rdi
 1160 1a56 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1160      00
 1161 1a5b C5FD2884 		vmovapd	3488(%rsp), %ymm0
 1161      24A00D00 
 1161      00
 1162 1a64 89DE     		movl	%ebx, %esi
 1163 1a66 BF000000 		movl	$_ZSt4cout, %edi
 1163      00
 1164 1a6b C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1164      24400100 
 1164      00
 1165 1a74 C5FD2884 		vmovapd	4128(%rsp), %ymm0
 1165      24201000 
GAS LISTING /tmp/ccsfN7rV.s 			page 40


 1165      00
 1166 1a7d C5FB108C 		vmovsd	320(%rsp), %xmm1
 1166      24400100 
 1166      00
 1167 1a86 C5FD1184 		vmovupd	%ymm0, 320(%rsp)
 1167      24400100 
 1167      00
 1168 1a8f C5FB118C 		vmovsd	%xmm1, 256(%rsp)
 1168      24000100 
 1168      00
 1169 1a98 C5FB1084 		vmovsd	320(%rsp), %xmm0
 1169      24400100 
 1169      00
 1170 1aa1 C5FB1184 		vmovsd	%xmm0, 288(%rsp)
 1170      24200100 
 1170      00
 1171 1aaa C5F877   		vzeroupper
 1172 1aad E8000000 		call	_ZNSolsEi
 1172      00
 1173 1ab2 BA060000 		movl	$6, %edx
 1173      00
 1174 1ab7 BE000000 		movl	$.LC76, %esi
 1174      00
 1175 1abc 4889C7   		movq	%rax, %rdi
 1176 1abf 4989C5   		movq	%rax, %r13
 1177 1ac2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1177      00
 1178 1ac7 C5FB1084 		vmovsd	288(%rsp), %xmm0
 1178      24200100 
 1178      00
 1179 1ad0 4C89EF   		movq	%r13, %rdi
 1180 1ad3 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1180      00
 1181 1ad8 BA030000 		movl	$3, %edx
 1181      00
 1182 1add BE000000 		movl	$.LC77, %esi
 1182      00
 1183 1ae2 4889C7   		movq	%rax, %rdi
 1184 1ae5 4989C5   		movq	%rax, %r13
 1185 1ae8 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1185      00
 1186 1aed C5FB108C 		vmovsd	256(%rsp), %xmm1
 1186      24000100 
 1186      00
 1187 1af6 4C89EF   		movq	%r13, %rdi
 1188 1af9 C5F928C1 		vmovapd	%xmm1, %xmm0
 1189 1afd E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1189      00
 1190 1b02 BA010000 		movl	$1, %edx
 1190      00
 1191 1b07 BE000000 		movl	$.LC78, %esi
 1191      00
 1192 1b0c 4889C7   		movq	%rax, %rdi
 1193 1b0f E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1193      00
 1194 1b14 C57D2824 		vmovapd	(%rsp), %ymm12
 1194      24
GAS LISTING /tmp/ccsfN7rV.s 			page 41


 1195 1b19 C5FD287C 		vmovapd	32(%rsp), %ymm7
 1195      2420
 1196 1b1f C57D2874 		vmovapd	64(%rsp), %ymm14
 1196      2440
 1197 1b25 C57D286C 		vmovapd	96(%rsp), %ymm13
 1197      2460
 1198 1b2b C5FD289C 		vmovapd	192(%rsp), %ymm3
 1198      24C00000 
 1198      00
 1199 1b34 E9EEFCFF 		jmp	.L33
 1199      FF
 1200              		.cfi_endproc
 1201              	.LFE4635:
 1202              		.size	main, .-main
 1203 1b39 0F1F8000 		.p2align 4,,15
 1203      000000
 1204              		.type	_GLOBAL__sub_I_main, @function
 1205              	_GLOBAL__sub_I_main:
 1206              	.LFB4900:
 1207              		.cfi_startproc
 1208 1b40 4883EC08 		subq	$8, %rsp
 1209              		.cfi_def_cfa_offset 16
 1210 1b44 BF000000 		movl	$_ZStL8__ioinit, %edi
 1210      00
 1211 1b49 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1211      00
 1212 1b4e BA000000 		movl	$__dso_handle, %edx
 1212      00
 1213 1b53 BE000000 		movl	$_ZStL8__ioinit, %esi
 1213      00
 1214 1b58 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1214      00
 1215 1b5d 4883C408 		addq	$8, %rsp
 1216              		.cfi_def_cfa_offset 8
 1217 1b61 E9000000 		jmp	__cxa_atexit
 1217      00
 1218              		.cfi_endproc
 1219              	.LFE4900:
 1220              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1221              		.section	.init_array,"aw"
 1222              		.align 8
 1223 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1223      00000000 
 1224              		.section	.rodata
 1225              		.align 32
 1226              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1227              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1228              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1229 0000 00000000 		.long	0
 1230 0004 00000080 		.long	-2147483648
 1231 0008 00000000 		.long	0
 1232 000c 00000080 		.long	-2147483648
 1233 0010 00000000 		.long	0
 1234 0014 00000080 		.long	-2147483648
 1235 0018 00000000 		.long	0
 1236 001c 00000080 		.long	-2147483648
 1237              		.align 32
GAS LISTING /tmp/ccsfN7rV.s 			page 42


 1238              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1239              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1240              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1241 0020 FFFFFFFF 		.long	-1
 1242 0024 FFFFFF7F 		.long	2147483647
 1243 0028 FFFFFFFF 		.long	-1
 1244 002c FFFFFF7F 		.long	2147483647
 1245 0030 FFFFFFFF 		.long	-1
 1246 0034 FFFFFF7F 		.long	2147483647
 1247 0038 FFFFFFFF 		.long	-1
 1248 003c FFFFFF7F 		.long	2147483647
 1249              		.local	_ZStL8__ioinit
 1250              		.comm	_ZStL8__ioinit,1,1
 1251              		.section	.rodata.cst32,"aM",@progbits,32
 1252              		.align 32
 1253              	.LC0:
 1254 0000 00000000 		.long	0
 1255 0004 00002440 		.long	1076101120
 1256 0008 00000000 		.long	0
 1257 000c 00002440 		.long	1076101120
 1258 0010 00000000 		.long	0
 1259 0014 00002440 		.long	1076101120
 1260 0018 00000000 		.long	0
 1261 001c 00002440 		.long	1076101120
 1262              		.section	.rodata.cst8,"aM",@progbits,8
 1263              		.align 8
 1264              	.LC1:
 1265 0000 00000000 		.long	0
 1266 0004 00003540 		.long	1077215232
 1267              		.section	.rodata.cst32
 1268              		.align 32
 1269              	.LC3:
 1270 0020 55555555 		.long	1431655765
 1271 0024 55550540 		.long	1074091349
 1272 0028 55555555 		.long	1431655765
 1273 002c 55550540 		.long	1074091349
 1274 0030 55555555 		.long	1431655765
 1275 0034 55550540 		.long	1074091349
 1276 0038 55555555 		.long	1431655765
 1277 003c 55550540 		.long	1074091349
 1278              		.align 32
 1279              	.LC4:
 1280 0040 9A999999 		.long	2576980378
 1281 0044 9999C93F 		.long	1070176665
 1282 0048 9A999999 		.long	2576980378
 1283 004c 9999C93F 		.long	1070176665
 1284 0050 9A999999 		.long	2576980378
 1285 0054 9999C93F 		.long	1070176665
 1286 0058 9A999999 		.long	2576980378
 1287 005c 9999C93F 		.long	1070176665
 1288              		.align 32
 1289              	.LC5:
 1290 0060 CDCCCCCC 		.long	3435973837
 1291 0064 CCCCCC3F 		.long	1070386380
 1292 0068 CDCCCCCC 		.long	3435973837
 1293 006c CCCCCC3F 		.long	1070386380
 1294 0070 CDCCCCCC 		.long	3435973837
GAS LISTING /tmp/ccsfN7rV.s 			page 43


 1295 0074 CCCCCC3F 		.long	1070386380
 1296 0078 CDCCCCCC 		.long	3435973837
 1297 007c CCCCCC3F 		.long	1070386380
 1298              		.align 32
 1299              	.LC6:
 1300 0080 33333333 		.long	858993459
 1301 0084 3333B33F 		.long	1068708659
 1302 0088 33333333 		.long	858993459
 1303 008c 3333B33F 		.long	1068708659
 1304 0090 33333333 		.long	858993459
 1305 0094 3333B33F 		.long	1068708659
 1306 0098 33333333 		.long	858993459
 1307 009c 3333B33F 		.long	1068708659
 1308              		.align 32
 1309              	.LC7:
 1310 00a0 33333333 		.long	858993459
 1311 00a4 3333F33F 		.long	1072902963
 1312 00a8 33333333 		.long	858993459
 1313 00ac 3333F33F 		.long	1072902963
 1314 00b0 33333333 		.long	858993459
 1315 00b4 3333F33F 		.long	1072902963
 1316 00b8 33333333 		.long	858993459
 1317 00bc 3333F33F 		.long	1072902963
 1318              		.align 32
 1319              	.LC8:
 1320 00c0 CDCCCCCC 		.long	3435973837
 1321 00c4 CCCCECBF 		.long	-1075000116
 1322 00c8 CDCCCCCC 		.long	3435973837
 1323 00cc CCCCECBF 		.long	-1075000116
 1324 00d0 CDCCCCCC 		.long	3435973837
 1325 00d4 CCCCECBF 		.long	-1075000116
 1326 00d8 CDCCCCCC 		.long	3435973837
 1327 00dc CCCCECBF 		.long	-1075000116
 1328              		.align 32
 1329              	.LC9:
 1330 00e0 33333333 		.long	858993459
 1331 00e4 3333D33F 		.long	1070805811
 1332 00e8 33333333 		.long	858993459
 1333 00ec 3333D33F 		.long	1070805811
 1334 00f0 33333333 		.long	858993459
 1335 00f4 3333D33F 		.long	1070805811
 1336 00f8 33333333 		.long	858993459
 1337 00fc 3333D33F 		.long	1070805811
 1338              		.align 32
 1339              	.LC10:
 1340 0100 DA4B682F 		.long	795364314
 1341 0104 A1BDF43F 		.long	1073003937
 1342 0108 DA4B682F 		.long	795364314
 1343 010c A1BDF43F 		.long	1073003937
 1344 0110 DA4B682F 		.long	795364314
 1345 0114 A1BDF43F 		.long	1073003937
 1346 0118 DA4B682F 		.long	795364314
 1347 011c A1BDF43F 		.long	1073003937
 1348              		.align 32
 1349              	.LC11:
 1350 0120 D94B682F 		.long	795364313
 1351 0124 A1BD04C0 		.long	-1073431135
GAS LISTING /tmp/ccsfN7rV.s 			page 44


 1352 0128 D94B682F 		.long	795364313
 1353 012c A1BD04C0 		.long	-1073431135
 1354 0130 D94B682F 		.long	795364313
 1355 0134 A1BD04C0 		.long	-1073431135
 1356 0138 D94B682F 		.long	795364313
 1357 013c A1BD04C0 		.long	-1073431135
 1358              		.align 32
 1359              	.LC12:
 1360 0140 00000000 		.long	0
 1361 0144 00000440 		.long	1074003968
 1362 0148 00000000 		.long	0
 1363 014c 00000440 		.long	1074003968
 1364 0150 00000000 		.long	0
 1365 0154 00000440 		.long	1074003968
 1366 0158 00000000 		.long	0
 1367 015c 00000440 		.long	1074003968
 1368              		.align 32
 1369              	.LC13:
 1370 0160 16A1BD84 		.long	2227020054
 1371 0164 F612CABF 		.long	-1077275914
 1372 0168 16A1BD84 		.long	2227020054
 1373 016c F612CABF 		.long	-1077275914
 1374 0170 16A1BD84 		.long	2227020054
 1375 0174 F612CABF 		.long	-1077275914
 1376 0178 16A1BD84 		.long	2227020054
 1377 017c F612CABF 		.long	-1077275914
 1378              		.align 32
 1379              	.LC14:
 1380 0180 00000000 		.long	0
 1381 0184 00A0AF3F 		.long	1068474368
 1382 0188 00000000 		.long	0
 1383 018c 00A0AF3F 		.long	1068474368
 1384 0190 00000000 		.long	0
 1385 0194 00A0AF3F 		.long	1068474368
 1386 0198 00000000 		.long	0
 1387 019c 00A0AF3F 		.long	1068474368
 1388              		.align 32
 1389              	.LC15:
 1390 01a0 B397D05E 		.long	1590728627
 1391 01a4 429FD93F 		.long	1071226690
 1392 01a8 B397D05E 		.long	1590728627
 1393 01ac 429FD93F 		.long	1071226690
 1394 01b0 B397D05E 		.long	1590728627
 1395 01b4 429FD93F 		.long	1071226690
 1396 01b8 B397D05E 		.long	1590728627
 1397 01bc 429FD93F 		.long	1071226690
 1398              		.align 32
 1399              	.LC16:
 1400 01c0 BD84F612 		.long	318145725
 1401 01c4 DA4BA53F 		.long	1067797466
 1402 01c8 BD84F612 		.long	318145725
 1403 01cc DA4BA53F 		.long	1067797466
 1404 01d0 BD84F612 		.long	318145725
 1405 01d4 DA4BA53F 		.long	1067797466
 1406 01d8 BD84F612 		.long	318145725
 1407 01dc DA4BA53F 		.long	1067797466
 1408              		.align 32
GAS LISTING /tmp/ccsfN7rV.s 			page 45


 1409              	.LC17:
 1410 01e0 00000000 		.long	0
 1411 01e4 00E0D53F 		.long	1070981120
 1412 01e8 00000000 		.long	0
 1413 01ec 00E0D53F 		.long	1070981120
 1414 01f0 00000000 		.long	0
 1415 01f4 00E0D53F 		.long	1070981120
 1416 01f8 00000000 		.long	0
 1417 01fc 00E0D53F 		.long	1070981120
 1418              		.align 32
 1419              	.LC18:
 1420 0200 347B09ED 		.long	3976821556
 1421 0204 25349E3F 		.long	1067332645
 1422 0208 347B09ED 		.long	3976821556
 1423 020c 25349E3F 		.long	1067332645
 1424 0210 347B09ED 		.long	3976821556
 1425 0214 25349E3F 		.long	1067332645
 1426 0218 347B09ED 		.long	3976821556
 1427 021c 25349E3F 		.long	1067332645
 1428              		.align 32
 1429              	.LC19:
 1430 0220 B0B4DA85 		.long	2245702832
 1431 0224 A680D23F 		.long	1070760102
 1432 0228 B0B4DA85 		.long	2245702832
 1433 022c A680D23F 		.long	1070760102
 1434 0230 B0B4DA85 		.long	2245702832
 1435 0234 A680D23F 		.long	1070760102
 1436 0238 B0B4DA85 		.long	2245702832
 1437 023c A680D23F 		.long	1070760102
 1438              		.align 32
 1439              	.LC20:
 1440 0240 27691676 		.long	1981180199
 1441 0244 9FEFCA3F 		.long	1070264223
 1442 0248 27691676 		.long	1981180199
 1443 024c 9FEFCA3F 		.long	1070264223
 1444 0250 27691676 		.long	1981180199
 1445 0254 9FEFCA3F 		.long	1070264223
 1446 0258 27691676 		.long	1981180199
 1447 025c 9FEFCA3F 		.long	1070264223
 1448              		.align 32
 1449              	.LC21:
 1450 0260 7EB22B2E 		.long	774615678
 1451 0264 D0C3D93F 		.long	1071236048
 1452 0268 7EB22B2E 		.long	774615678
 1453 026c D0C3D93F 		.long	1071236048
 1454 0270 7EB22B2E 		.long	774615678
 1455 0274 D0C3D93F 		.long	1071236048
 1456 0278 7EB22B2E 		.long	774615678
 1457 027c D0C3D93F 		.long	1071236048
 1458              		.align 32
 1459              	.LC22:
 1460 0280 E890B943 		.long	1136234728
 1461 0284 E60EB93F 		.long	1069092582
 1462 0288 E890B943 		.long	1136234728
 1463 028c E60EB93F 		.long	1069092582
 1464 0290 E890B943 		.long	1136234728
 1465 0294 E60EB93F 		.long	1069092582
GAS LISTING /tmp/ccsfN7rV.s 			page 46


 1466 0298 E890B943 		.long	1136234728
 1467 029c E60EB93F 		.long	1069092582
 1468              		.align 32
 1469              	.LC23:
 1470 02a0 48A5D52E 		.long	785753416
 1471 02a4 3405A4BF 		.long	-1079769804
 1472 02a8 48A5D52E 		.long	785753416
 1473 02ac 3405A4BF 		.long	-1079769804
 1474 02b0 48A5D52E 		.long	785753416
 1475 02b4 3405A4BF 		.long	-1079769804
 1476 02b8 48A5D52E 		.long	785753416
 1477 02bc 3405A4BF 		.long	-1079769804
 1478              		.align 32
 1479              	.LC24:
 1480 02c0 82244992 		.long	2454267010
 1481 02c4 24C9933F 		.long	1066649892
 1482 02c8 82244992 		.long	2454267010
 1483 02cc 24C9933F 		.long	1066649892
 1484 02d0 82244992 		.long	2454267010
 1485 02d4 24C9933F 		.long	1066649892
 1486 02d8 82244992 		.long	2454267010
 1487 02dc 24C9933F 		.long	1066649892
 1488              		.align 32
 1489              	.LC25:
 1490 02e0 06F37686 		.long	2255942406
 1491 02e4 C47CA13F 		.long	1067547844
 1492 02e8 06F37686 		.long	2255942406
 1493 02ec C47CA13F 		.long	1067547844
 1494 02f0 06F37686 		.long	2255942406
 1495 02f4 C47CA13F 		.long	1067547844
 1496 02f8 06F37686 		.long	2255942406
 1497 02fc C47CA13F 		.long	1067547844
 1498              		.align 32
 1499              	.LC26:
 1500 0300 1A55F19A 		.long	2599507226
 1501 0304 DB1D93BF 		.long	-1080877605
 1502 0308 1A55F19A 		.long	2599507226
 1503 030c DB1D93BF 		.long	-1080877605
 1504 0310 1A55F19A 		.long	2599507226
 1505 0314 DB1D93BF 		.long	-1080877605
 1506 0318 1A55F19A 		.long	2599507226
 1507 031c DB1D93BF 		.long	-1080877605
 1508              		.align 32
 1509              	.LC27:
 1510 0320 64599665 		.long	1704352100
 1511 0324 5996713F 		.long	1064408665
 1512 0328 64599665 		.long	1704352100
 1513 032c 5996713F 		.long	1064408665
 1514 0330 64599665 		.long	1704352100
 1515 0334 5996713F 		.long	1064408665
 1516 0338 64599665 		.long	1704352100
 1517 033c 5996713F 		.long	1064408665
 1518              		.align 32
 1519              	.LC28:
 1520 0340 95D626E8 		.long	3894859413
 1521 0344 0B2E113E 		.long	1041313291
 1522 0348 95D626E8 		.long	3894859413
GAS LISTING /tmp/ccsfN7rV.s 			page 47


 1523 034c 0B2E113E 		.long	1041313291
 1524 0350 95D626E8 		.long	3894859413
 1525 0354 0B2E113E 		.long	1041313291
 1526 0358 95D626E8 		.long	3894859413
 1527 035c 0B2E113E 		.long	1041313291
 1528              		.section	.rodata.cst16,"aM",@progbits,16
 1529              		.align 16
 1530              	.LC29:
 1531 0000 FFFFFFFF 		.quad	4503599627370495
 1531      FFFF0F00 
 1532 0008 FFFFFFFF 		.quad	4503599627370495
 1532      FFFF0F00 
 1533              		.align 16
 1534              	.LC30:
 1535 0010 00000000 		.quad	4602678819172646912
 1535      0000E03F 
 1536 0018 00000000 		.quad	4602678819172646912
 1536      0000E03F 
 1537              		.align 16
 1538              	.LC31:
 1539 0020 00000000 		.quad	4841369599423283200
 1539      00003043 
 1540 0028 00000000 		.quad	4841369599423283200
 1540      00003043 
 1541              		.section	.rodata.cst32
 1542              		.align 32
 1543              	.LC32:
 1544 0360 FF030000 		.long	1023
 1545 0364 00003043 		.long	1127219200
 1546 0368 FF030000 		.long	1023
 1547 036c 00003043 		.long	1127219200
 1548 0370 FF030000 		.long	1023
 1549 0374 00003043 		.long	1127219200
 1550 0378 FF030000 		.long	1023
 1551 037c 00003043 		.long	1127219200
 1552              		.align 32
 1553              	.LC33:
 1554 0380 CD3B7F66 		.long	1719614413
 1555 0384 9EA0E63F 		.long	1072079006
 1556 0388 CD3B7F66 		.long	1719614413
 1557 038c 9EA0E63F 		.long	1072079006
 1558 0390 CD3B7F66 		.long	1719614413
 1559 0394 9EA0E63F 		.long	1072079006
 1560 0398 CD3B7F66 		.long	1719614413
 1561 039c 9EA0E63F 		.long	1072079006
 1562              		.section	.rodata.cst16
 1563              		.align 16
 1564              	.LC34:
 1565 0030 FFFFFFFF 		.long	4294967295
 1566 0034 FFFFFFFF 		.long	-1
 1567 0038 FFFFFFFF 		.long	4294967295
 1568 003c FFFFFFFF 		.long	-1
 1569              		.section	.rodata.cst32
 1570              		.align 32
 1571              	.LC35:
 1572 03a0 00000000 		.long	0
 1573 03a4 0000F03F 		.long	1072693248
GAS LISTING /tmp/ccsfN7rV.s 			page 48


 1574 03a8 00000000 		.long	0
 1575 03ac 0000F03F 		.long	1072693248
 1576 03b0 00000000 		.long	0
 1577 03b4 0000F03F 		.long	1072693248
 1578 03b8 00000000 		.long	0
 1579 03bc 0000F03F 		.long	1072693248
 1580              		.align 32
 1581              	.LC36:
 1582 03c0 4DC84B92 		.long	2454440013
 1583 03c4 D6EF3140 		.long	1077014486
 1584 03c8 4DC84B92 		.long	2454440013
 1585 03cc D6EF3140 		.long	1077014486
 1586 03d0 4DC84B92 		.long	2454440013
 1587 03d4 D6EF3140 		.long	1077014486
 1588 03d8 4DC84B92 		.long	2454440013
 1589 03dc D6EF3140 		.long	1077014486
 1590              		.align 32
 1591              	.LC37:
 1592 03e0 F8DC7E7D 		.long	2105466104
 1593 03e4 63D51E40 		.long	1075762531
 1594 03e8 F8DC7E7D 		.long	2105466104
 1595 03ec 63D51E40 		.long	1075762531
 1596 03f0 F8DC7E7D 		.long	2105466104
 1597 03f4 63D51E40 		.long	1075762531
 1598 03f8 F8DC7E7D 		.long	2105466104
 1599 03fc 63D51E40 		.long	1075762531
 1600              		.align 32
 1601              	.LC38:
 1602 0400 B01BC393 		.long	2479037360
 1603 0404 C2B41A3F 		.long	1058714818
 1604 0408 B01BC393 		.long	2479037360
 1605 040c C2B41A3F 		.long	1058714818
 1606 0410 B01BC393 		.long	2479037360
 1607 0414 C2B41A3F 		.long	1058714818
 1608 0418 B01BC393 		.long	2479037360
 1609 041c C2B41A3F 		.long	1058714818
 1610              		.align 32
 1611              	.LC39:
 1612 0420 F252563F 		.long	1062621938
 1613 0424 F5D6DF3F 		.long	1071634165
 1614 0428 F252563F 		.long	1062621938
 1615 042c F5D6DF3F 		.long	1071634165
 1616 0430 F252563F 		.long	1062621938
 1617 0434 F5D6DF3F 		.long	1071634165
 1618 0438 F252563F 		.long	1062621938
 1619 043c F5D6DF3F 		.long	1071634165
 1620              		.align 32
 1621              	.LC40:
 1622 0440 116992ED 		.long	3985795345
 1623 0444 BAD21240 		.long	1074975418
 1624 0448 116992ED 		.long	3985795345
 1625 044c BAD21240 		.long	1074975418
 1626 0450 116992ED 		.long	3985795345
 1627 0454 BAD21240 		.long	1074975418
 1628 0458 116992ED 		.long	3985795345
 1629 045c BAD21240 		.long	1074975418
 1630              		.align 32
GAS LISTING /tmp/ccsfN7rV.s 			page 49


 1631              	.LC41:
 1632 0460 2EEB3EC6 		.long	3326012206
 1633 0464 72FF2C40 		.long	1076690802
 1634 0468 2EEB3EC6 		.long	3326012206
 1635 046c 72FF2C40 		.long	1076690802
 1636 0470 2EEB3EC6 		.long	3326012206
 1637 0474 72FF2C40 		.long	1076690802
 1638 0478 2EEB3EC6 		.long	3326012206
 1639 047c 72FF2C40 		.long	1076690802
 1640              		.align 32
 1641              	.LC42:
 1642 0480 21AE5EEB 		.long	3948850721
 1643 0484 E2C95140 		.long	1079101922
 1644 0488 21AE5EEB 		.long	3948850721
 1645 048c E2C95140 		.long	1079101922
 1646 0490 21AE5EEB 		.long	3948850721
 1647 0494 E2C95140 		.long	1079101922
 1648 0498 21AE5EEB 		.long	3948850721
 1649 049c E2C95140 		.long	1079101922
 1650              		.align 32
 1651              	.LC43:
 1652 04a0 B2251F9E 		.long	2652841394
 1653 04a4 0A203740 		.long	1077354506
 1654 04a8 B2251F9E 		.long	2652841394
 1655 04ac 0A203740 		.long	1077354506
 1656 04b0 B2251F9E 		.long	2652841394
 1657 04b4 0A203740 		.long	1077354506
 1658 04b8 B2251F9E 		.long	2652841394
 1659 04bc 0A203740 		.long	1077354506
 1660              		.align 32
 1661              	.LC44:
 1662 04c0 8EEF97AE 		.long	2929192846
 1663 04c4 20932640 		.long	1076269856
 1664 04c8 8EEF97AE 		.long	2929192846
 1665 04cc 20932640 		.long	1076269856
 1666 04d0 8EEF97AE 		.long	2929192846
 1667 04d4 20932640 		.long	1076269856
 1668 04d8 8EEF97AE 		.long	2929192846
 1669 04dc 20932640 		.long	1076269856
 1670              		.align 32
 1671              	.LC45:
 1672 04e0 33C0194E 		.long	1310310451
 1673 04e4 2C9D4640 		.long	1078369580
 1674 04e8 33C0194E 		.long	1310310451
 1675 04ec 2C9D4640 		.long	1078369580
 1676 04f0 33C0194E 		.long	1310310451
 1677 04f4 2C9D4640 		.long	1078369580
 1678 04f8 33C0194E 		.long	1310310451
 1679 04fc 2C9D4640 		.long	1078369580
 1680              		.align 32
 1681              	.LC46:
 1682 0500 BDBD26A3 		.long	2737225149
 1683 0504 33BF5440 		.long	1079295795
 1684 0508 BDBD26A3 		.long	2737225149
 1685 050c 33BF5440 		.long	1079295795
 1686 0510 BDBD26A3 		.long	2737225149
 1687 0514 33BF5440 		.long	1079295795
GAS LISTING /tmp/ccsfN7rV.s 			page 50


 1688 0518 BDBD26A3 		.long	2737225149
 1689 051c 33BF5440 		.long	1079295795
 1690              		.align 32
 1691              	.LC47:
 1692 0520 A80C615C 		.long	1549864104
 1693 0524 10D02BBF 		.long	-1087647728
 1694 0528 A80C615C 		.long	1549864104
 1695 052c 10D02BBF 		.long	-1087647728
 1696 0530 A80C615C 		.long	1549864104
 1697 0534 10D02BBF 		.long	-1087647728
 1698 0538 A80C615C 		.long	1549864104
 1699 053c 10D02BBF 		.long	-1087647728
 1700              		.align 32
 1701              	.LC48:
 1702 0540 00000000 		.long	0
 1703 0544 0000E03F 		.long	1071644672
 1704 0548 00000000 		.long	0
 1705 054c 0000E03F 		.long	1071644672
 1706 0550 00000000 		.long	0
 1707 0554 0000E03F 		.long	1071644672
 1708 0558 00000000 		.long	0
 1709 055c 0000E03F 		.long	1071644672
 1710              		.align 32
 1711              	.LC49:
 1712 0560 00000000 		.long	0
 1713 0564 0030E63F 		.long	1072050176
 1714 0568 00000000 		.long	0
 1715 056c 0030E63F 		.long	1072050176
 1716 0570 00000000 		.long	0
 1717 0574 0030E63F 		.long	1072050176
 1718 0578 00000000 		.long	0
 1719 057c 0030E63F 		.long	1072050176
 1720              		.section	.rodata.cst16
 1721              		.align 16
 1722              	.LC50:
 1723 0040 00000000 		.quad	-9007199254740992
 1723      0000E0FF 
 1724 0048 00000000 		.quad	-9007199254740992
 1724      0000E0FF 
 1725              		.section	.rodata.cst32
 1726              		.align 32
 1727              	.LC51:
 1728 0580 00000000 		.long	0
 1729 0584 00001000 		.long	1048576
 1730 0588 00000000 		.long	0
 1731 058c 00001000 		.long	1048576
 1732 0590 00000000 		.long	0
 1733 0594 00001000 		.long	1048576
 1734 0598 00000000 		.long	0
 1735 059c 00001000 		.long	1048576
 1736              		.align 32
 1737              	.LC52:
 1738 05a0 00000020 		.long	536870912
 1739 05a4 2000F87F 		.long	2146959392
 1740 05a8 00000020 		.long	536870912
 1741 05ac 2000F87F 		.long	2146959392
 1742 05b0 00000020 		.long	536870912
GAS LISTING /tmp/ccsfN7rV.s 			page 51


 1743 05b4 2000F87F 		.long	2146959392
 1744 05b8 00000020 		.long	536870912
 1745 05bc 2000F87F 		.long	2146959392
 1746              		.section	.rodata.cst16
 1747              		.align 16
 1748              	.LC53:
 1749 0050 00000000 		.long	0
 1750 0054 0000F07F 		.long	2146435072
 1751 0058 00000000 		.long	0
 1752 005c 0000F07F 		.long	2146435072
 1753              		.align 16
 1754              	.LC54:
 1755 0060 00000000 		.quad	9218868437227405312
 1755      0000F07F 
 1756 0068 00000000 		.quad	9218868437227405312
 1756      0000F07F 
 1757              		.section	.rodata.cst32
 1758              		.align 32
 1759              	.LC55:
 1760 05c0 FE822B65 		.long	1697350398
 1761 05c4 4715F73F 		.long	1073157447
 1762 05c8 FE822B65 		.long	1697350398
 1763 05cc 4715F73F 		.long	1073157447
 1764 05d0 FE822B65 		.long	1697350398
 1765 05d4 4715F73F 		.long	1073157447
 1766 05d8 FE822B65 		.long	1697350398
 1767 05dc 4715F73F 		.long	1073157447
 1768              		.align 32
 1769              	.LC56:
 1770 05e0 00000000 		.long	0
 1771 05e4 402EE63F 		.long	1072049728
 1772 05e8 00000000 		.long	0
 1773 05ec 402EE63F 		.long	1072049728
 1774 05f0 00000000 		.long	0
 1775 05f4 402EE63F 		.long	1072049728
 1776 05f8 00000000 		.long	0
 1777 05fc 402EE63F 		.long	1072049728
 1778              		.align 32
 1779              	.LC57:
 1780 0600 CAAB79CF 		.long	3480857546
 1781 0604 D1F7B73E 		.long	1052243921
 1782 0608 CAAB79CF 		.long	3480857546
 1783 060c D1F7B73E 		.long	1052243921
 1784 0610 CAAB79CF 		.long	3480857546
 1785 0614 D1F7B73E 		.long	1052243921
 1786 0618 CAAB79CF 		.long	3480857546
 1787 061c D1F7B73E 		.long	1052243921
 1788              		.align 32
 1789              	.LC58:
 1790 0620 55555555 		.long	1431655765
 1791 0624 5555C53F 		.long	1069897045
 1792 0628 55555555 		.long	1431655765
 1793 062c 5555C53F 		.long	1069897045
 1794 0630 55555555 		.long	1431655765
 1795 0634 5555C53F 		.long	1069897045
 1796 0638 55555555 		.long	1431655765
 1797 063c 5555C53F 		.long	1069897045
GAS LISTING /tmp/ccsfN7rV.s 			page 52


 1798              		.align 32
 1799              	.LC59:
 1800 0640 11111111 		.long	286331153
 1801 0644 1111813F 		.long	1065423121
 1802 0648 11111111 		.long	286331153
 1803 064c 1111813F 		.long	1065423121
 1804 0650 11111111 		.long	286331153
 1805 0654 1111813F 		.long	1065423121
 1806 0658 11111111 		.long	286331153
 1807 065c 1111813F 		.long	1065423121
 1808              		.align 32
 1809              	.LC60:
 1810 0660 55555555 		.long	1431655765
 1811 0664 5555A53F 		.long	1067799893
 1812 0668 55555555 		.long	1431655765
 1813 066c 5555A53F 		.long	1067799893
 1814 0670 55555555 		.long	1431655765
 1815 0674 5555A53F 		.long	1067799893
 1816 0678 55555555 		.long	1431655765
 1817 067c 5555A53F 		.long	1067799893
 1818              		.align 32
 1819              	.LC61:
 1820 0680 1AA0011A 		.long	436314138
 1821 0684 A0012A3F 		.long	1059717536
 1822 0688 1AA0011A 		.long	436314138
 1823 068c A0012A3F 		.long	1059717536
 1824 0690 1AA0011A 		.long	436314138
 1825 0694 A0012A3F 		.long	1059717536
 1826 0698 1AA0011A 		.long	436314138
 1827 069c A0012A3F 		.long	1059717536
 1828              		.align 32
 1829              	.LC62:
 1830 06a0 176CC116 		.long	381774871
 1831 06a4 6CC1563F 		.long	1062650220
 1832 06a8 176CC116 		.long	381774871
 1833 06ac 6CC1563F 		.long	1062650220
 1834 06b0 176CC116 		.long	381774871
 1835 06b4 6CC1563F 		.long	1062650220
 1836 06b8 176CC116 		.long	381774871
 1837 06bc 6CC1563F 		.long	1062650220
 1838              		.align 32
 1839              	.LC63:
 1840 06c0 34C756A5 		.long	2773927732
 1841 06c4 E31DC73E 		.long	1053236707
 1842 06c8 34C756A5 		.long	2773927732
 1843 06cc E31DC73E 		.long	1053236707
 1844 06d0 34C756A5 		.long	2773927732
 1845 06d4 E31DC73E 		.long	1053236707
 1846 06d8 34C756A5 		.long	2773927732
 1847 06dc E31DC73E 		.long	1053236707
 1848              		.align 32
 1849              	.LC64:
 1850 06e0 1AA0011A 		.long	436314138
 1851 06e4 A001FA3E 		.long	1056571808
 1852 06e8 1AA0011A 		.long	436314138
 1853 06ec A001FA3E 		.long	1056571808
 1854 06f0 1AA0011A 		.long	436314138
GAS LISTING /tmp/ccsfN7rV.s 			page 53


 1855 06f4 A001FA3E 		.long	1056571808
 1856 06f8 1AA0011A 		.long	436314138
 1857 06fc A001FA3E 		.long	1056571808
 1858              		.align 32
 1859              	.LC65:
 1860 0700 E444F567 		.long	1744127204
 1861 0704 45E65A3E 		.long	1046144581
 1862 0708 E444F567 		.long	1744127204
 1863 070c 45E65A3E 		.long	1046144581
 1864 0710 E444F567 		.long	1744127204
 1865 0714 45E65A3E 		.long	1046144581
 1866 0718 E444F567 		.long	1744127204
 1867 071c 45E65A3E 		.long	1046144581
 1868              		.align 32
 1869              	.LC66:
 1870 0720 5C9F78B7 		.long	3078135644
 1871 0724 4F7E923E 		.long	1049787983
 1872 0728 5C9F78B7 		.long	3078135644
 1873 072c 4F7E923E 		.long	1049787983
 1874 0730 5C9F78B7 		.long	3078135644
 1875 0734 4F7E923E 		.long	1049787983
 1876 0738 5C9F78B7 		.long	3078135644
 1877 073c 4F7E923E 		.long	1049787983
 1878              		.align 32
 1879              	.LC67:
 1880 0740 096DA813 		.long	329805065
 1881 0744 4612E63D 		.long	1038488134
 1882 0748 096DA813 		.long	329805065
 1883 074c 4612E63D 		.long	1038488134
 1884 0750 096DA813 		.long	329805065
 1885 0754 4612E63D 		.long	1038488134
 1886 0758 096DA813 		.long	329805065
 1887 075c 4612E63D 		.long	1038488134
 1888              		.align 32
 1889              	.LC68:
 1890 0760 98D8F8EF 		.long	4026063000
 1891 0764 D8EE213E 		.long	1042411224
 1892 0768 98D8F8EF 		.long	4026063000
 1893 076c D8EE213E 		.long	1042411224
 1894 0770 98D8F8EF 		.long	4026063000
 1895 0774 D8EE213E 		.long	1042411224
 1896 0778 98D8F8EF 		.long	4026063000
 1897 077c D8EE213E 		.long	1042411224
 1898              		.align 32
 1899              	.LC69:
 1900 0780 85EB51B8 		.long	3092376453
 1901 0784 1E238640 		.long	1082532638
 1902 0788 85EB51B8 		.long	3092376453
 1903 078c 1E238640 		.long	1082532638
 1904 0790 85EB51B8 		.long	3092376453
 1905 0794 1E238640 		.long	1082532638
 1906 0798 85EB51B8 		.long	3092376453
 1907 079c 1E238640 		.long	1082532638
 1908              		.align 32
 1909              	.LC70:
 1910 07a0 2D431CEB 		.long	3944497965
 1911 07a4 E2361A3F 		.long	1058682594
GAS LISTING /tmp/ccsfN7rV.s 			page 54


 1912 07a8 2D431CEB 		.long	3944497965
 1913 07ac E2361A3F 		.long	1058682594
 1914 07b0 2D431CEB 		.long	3944497965
 1915 07b4 E2361A3F 		.long	1058682594
 1916 07b8 2D431CEB 		.long	3944497965
 1917 07bc E2361A3F 		.long	1058682594
 1918              		.align 32
 1919              	.LC71:
 1920 07c0 00000000 		.long	0
 1921 07c4 00001440 		.long	1075052544
 1922 07c8 00000000 		.long	0
 1923 07cc 00001440 		.long	1075052544
 1924 07d0 00000000 		.long	0
 1925 07d4 00001440 		.long	1075052544
 1926 07d8 00000000 		.long	0
 1927 07dc 00001440 		.long	1075052544
 1928              		.align 32
 1929              	.LC72:
 1930 07e0 9A999999 		.long	2576980378
 1931 07e4 9999E93F 		.long	1072273817
 1932 07e8 9A999999 		.long	2576980378
 1933 07ec 9999E93F 		.long	1072273817
 1934 07f0 9A999999 		.long	2576980378
 1935 07f4 9999E93F 		.long	1072273817
 1936 07f8 9A999999 		.long	2576980378
 1937 07fc 9999E93F 		.long	1072273817
 1938              		.align 32
 1939              	.LC73:
 1940 0800 00000000 		.long	0
 1941 0804 00408F40 		.long	1083129856
 1942 0808 00000000 		.long	0
 1943 080c 00408F40 		.long	1083129856
 1944 0810 00000000 		.long	0
 1945 0814 00408F40 		.long	1083129856
 1946 0818 00000000 		.long	0
 1947 081c 00408F40 		.long	1083129856
 1948              		.align 32
 1949              	.LC74:
 1950 0820 00000000 		.long	0
 1951 0824 00005940 		.long	1079574528
 1952 0828 00000000 		.long	0
 1953 082c 00005940 		.long	1079574528
 1954 0830 00000000 		.long	0
 1955 0834 00005940 		.long	1079574528
 1956 0838 00000000 		.long	0
 1957 083c 00005940 		.long	1079574528
 1958              		.align 32
 1959              	.LC79:
 1960 0840 7B14AE47 		.long	1202590843
 1961 0844 E17A843F 		.long	1065646817
 1962 0848 7B14AE47 		.long	1202590843
 1963 084c E17A843F 		.long	1065646817
 1964 0850 7B14AE47 		.long	1202590843
 1965 0854 E17A843F 		.long	1065646817
 1966 0858 7B14AE47 		.long	1202590843
 1967 085c E17A843F 		.long	1065646817
 1968              		.section	.rodata.cst16
GAS LISTING /tmp/ccsfN7rV.s 			page 55


 1969              		.align 16
 1970              	.LC82:
 1971 0070 FFFFFFFF 		.quad	-1
 1971      FFFFFFFF 
 1972 0078 FFFFFFFF 		.quad	-1
 1972      FFFFFFFF 
 1973              		.hidden	__dso_handle
 1974              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 1975              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccsfN7rV.s 			page 56


DEFINED SYMBOLS
                            *ABS*:0000000000000000 RKCK45_unions.cpp
     /tmp/ccsfN7rV.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccsfN7rV.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccsfN7rV.s:87     .text.startup:0000000000000000 main
     /tmp/ccsfN7rV.s:1228   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccsfN7rV.s:1240   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccsfN7rV.s:1205   .text.startup:0000000000001b40 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccsfN7rV.s:1253   .rodata.cst32:0000000000000000 .LC0
     /tmp/ccsfN7rV.s:1264   .rodata.cst8:0000000000000000 .LC1
     /tmp/ccsfN7rV.s:1748   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccsfN7rV.s:1269   .rodata.cst32:0000000000000020 .LC3
     /tmp/ccsfN7rV.s:1279   .rodata.cst32:0000000000000040 .LC4
     /tmp/ccsfN7rV.s:1519   .rodata.cst32:0000000000000340 .LC28
     /tmp/ccsfN7rV.s:1571   .rodata.cst32:00000000000003a0 .LC35
     /tmp/ccsfN7rV.s:1959   .rodata.cst32:0000000000000840 .LC79
     /tmp/ccsfN7rV.s:1299   .rodata.cst32:0000000000000080 .LC6
     /tmp/ccsfN7rV.s:1289   .rodata.cst32:0000000000000060 .LC5
     /tmp/ccsfN7rV.s:1319   .rodata.cst32:00000000000000c0 .LC8
     /tmp/ccsfN7rV.s:1309   .rodata.cst32:00000000000000a0 .LC7
     /tmp/ccsfN7rV.s:1329   .rodata.cst32:00000000000000e0 .LC9
     /tmp/ccsfN7rV.s:1359   .rodata.cst32:0000000000000140 .LC12
     /tmp/ccsfN7rV.s:1349   .rodata.cst32:0000000000000120 .LC11
     /tmp/ccsfN7rV.s:1339   .rodata.cst32:0000000000000100 .LC10
     /tmp/ccsfN7rV.s:1369   .rodata.cst32:0000000000000160 .LC13
     /tmp/ccsfN7rV.s:1389   .rodata.cst32:00000000000001a0 .LC15
     /tmp/ccsfN7rV.s:1399   .rodata.cst32:00000000000001c0 .LC16
     /tmp/ccsfN7rV.s:1409   .rodata.cst32:00000000000001e0 .LC17
     /tmp/ccsfN7rV.s:1419   .rodata.cst32:0000000000000200 .LC18
     /tmp/ccsfN7rV.s:1379   .rodata.cst32:0000000000000180 .LC14
     /tmp/ccsfN7rV.s:1429   .rodata.cst32:0000000000000220 .LC19
     /tmp/ccsfN7rV.s:1459   .rodata.cst32:0000000000000280 .LC22
     /tmp/ccsfN7rV.s:1439   .rodata.cst32:0000000000000240 .LC20
     /tmp/ccsfN7rV.s:1449   .rodata.cst32:0000000000000260 .LC21
     /tmp/ccsfN7rV.s:1469   .rodata.cst32:00000000000002a0 .LC23
     /tmp/ccsfN7rV.s:1479   .rodata.cst32:00000000000002c0 .LC24
     /tmp/ccsfN7rV.s:1489   .rodata.cst32:00000000000002e0 .LC25
     /tmp/ccsfN7rV.s:1499   .rodata.cst32:0000000000000300 .LC26
     /tmp/ccsfN7rV.s:1509   .rodata.cst32:0000000000000320 .LC27
     /tmp/ccsfN7rV.s:1553   .rodata.cst32:0000000000000380 .LC33
     /tmp/ccsfN7rV.s:1530   .rodata.cst16:0000000000000000 .LC29
     /tmp/ccsfN7rV.s:1538   .rodata.cst16:0000000000000020 .LC31
     /tmp/ccsfN7rV.s:1534   .rodata.cst16:0000000000000010 .LC30
     /tmp/ccsfN7rV.s:1564   .rodata.cst16:0000000000000030 .LC34
     /tmp/ccsfN7rV.s:1543   .rodata.cst32:0000000000000360 .LC32
     /tmp/ccsfN7rV.s:1601   .rodata.cst32:0000000000000400 .LC38
     /tmp/ccsfN7rV.s:1581   .rodata.cst32:00000000000003c0 .LC36
     /tmp/ccsfN7rV.s:1621   .rodata.cst32:0000000000000440 .LC40
     /tmp/ccsfN7rV.s:1611   .rodata.cst32:0000000000000420 .LC39
     /tmp/ccsfN7rV.s:1591   .rodata.cst32:00000000000003e0 .LC37
     /tmp/ccsfN7rV.s:1631   .rodata.cst32:0000000000000460 .LC41
     /tmp/ccsfN7rV.s:1661   .rodata.cst32:00000000000004c0 .LC44
     /tmp/ccsfN7rV.s:1641   .rodata.cst32:0000000000000480 .LC42
     /tmp/ccsfN7rV.s:1651   .rodata.cst32:00000000000004a0 .LC43
     /tmp/ccsfN7rV.s:1671   .rodata.cst32:00000000000004e0 .LC45
     /tmp/ccsfN7rV.s:1681   .rodata.cst32:0000000000000500 .LC46
GAS LISTING /tmp/ccsfN7rV.s 			page 57


     /tmp/ccsfN7rV.s:1701   .rodata.cst32:0000000000000540 .LC48
     /tmp/ccsfN7rV.s:1691   .rodata.cst32:0000000000000520 .LC47
     /tmp/ccsfN7rV.s:1711   .rodata.cst32:0000000000000560 .LC49
     /tmp/ccsfN7rV.s:1722   .rodata.cst16:0000000000000040 .LC50
     /tmp/ccsfN7rV.s:1970   .rodata.cst16:0000000000000070 .LC82
     /tmp/ccsfN7rV.s:1727   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccsfN7rV.s:1737   .rodata.cst32:00000000000005a0 .LC52
     /tmp/ccsfN7rV.s:1754   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccsfN7rV.s:1759   .rodata.cst32:00000000000005c0 .LC55
     /tmp/ccsfN7rV.s:1769   .rodata.cst32:00000000000005e0 .LC56
     /tmp/ccsfN7rV.s:1779   .rodata.cst32:0000000000000600 .LC57
     /tmp/ccsfN7rV.s:1819   .rodata.cst32:0000000000000680 .LC61
     /tmp/ccsfN7rV.s:1789   .rodata.cst32:0000000000000620 .LC58
     /tmp/ccsfN7rV.s:1799   .rodata.cst32:0000000000000640 .LC59
     /tmp/ccsfN7rV.s:1829   .rodata.cst32:00000000000006a0 .LC62
     /tmp/ccsfN7rV.s:1809   .rodata.cst32:0000000000000660 .LC60
     /tmp/ccsfN7rV.s:1859   .rodata.cst32:0000000000000700 .LC65
     /tmp/ccsfN7rV.s:1869   .rodata.cst32:0000000000000720 .LC66
     /tmp/ccsfN7rV.s:1839   .rodata.cst32:00000000000006c0 .LC63
     /tmp/ccsfN7rV.s:1879   .rodata.cst32:0000000000000740 .LC67
     /tmp/ccsfN7rV.s:1849   .rodata.cst32:00000000000006e0 .LC64
     /tmp/ccsfN7rV.s:1889   .rodata.cst32:0000000000000760 .LC68
     /tmp/ccsfN7rV.s:1899   .rodata.cst32:0000000000000780 .LC69
     /tmp/ccsfN7rV.s:1919   .rodata.cst32:00000000000007c0 .LC71
     /tmp/ccsfN7rV.s:1909   .rodata.cst32:00000000000007a0 .LC70
     /tmp/ccsfN7rV.s:1939   .rodata.cst32:0000000000000800 .LC73
     /tmp/ccsfN7rV.s:1929   .rodata.cst32:00000000000007e0 .LC72
     /tmp/ccsfN7rV.s:1949   .rodata.cst32:0000000000000820 .LC74

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
