GAS LISTING /tmp/ccsgyXat.s 			page 1


   1              		.file	"duffing_RKCK45.cpp"
   2              		.section	.text.unlikely,"ax",@progbits
   3              		.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, @function
   4              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3:
   5              	.LFB4958:
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
  18              	.LFE4958:
  19              		.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3, .-_ZStlsISt11char_traitsIcEE
  20              		.text
  21              		.p2align 4,,15
  22              		.globl	_Z8linspaceddi
  23              		.type	_Z8linspaceddi, @function
  24              	_Z8linspaceddi:
  25              	.LFB4615:
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
GAS LISTING /tmp/ccsgyXat.s 			page 2


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
  66              	.LFE4615:
  67              		.size	_Z8linspaceddi, .-_Z8linspaceddi
  68              		.section	.rodata.str1.1,"aMS",@progbits,1
  69              	.LC2:
  70 0000 64617461 		.string	"data.csv"
  70      2E637376 
  70      00
  71              	.LC95:
  72 0009 0900     		.string	"\t"
  73              	.LC103:
  74 000b 456C6170 		.string	"Elapsed tome: "
  74      73656420 
  74      746F6D65 
  74      3A2000
  75              	.LC104:
  76 001a 206D7300 		.string	" ms"
  77              		.section	.text.startup,"ax",@progbits
  78              		.p2align 4,,15
  79              		.globl	main
  80              		.type	main, @function
  81              	main:
  82              	.LFB4614:
  83              		.cfi_startproc
  84              		.cfi_personality 0x3,__gxx_personality_v0
  85              		.cfi_lsda 0x3,.LLSDA4614
  86 0000 55       		pushq	%rbp
  87              		.cfi_def_cfa_offset 16
  88              		.cfi_offset 6, -16
  89 0001 BFA00500 		movl	$1440, %edi
  89      00
  90 0006 4889E5   		movq	%rsp, %rbp
  91              		.cfi_def_cfa_register 6
  92 0009 4157     		pushq	%r15
  93 000b 4156     		pushq	%r14
  94              		.cfi_offset 15, -24
  95              		.cfi_offset 14, -32
  96 000d 4531F6   		xorl	%r14d, %r14d
  97 0010 4155     		pushq	%r13
  98 0012 4154     		pushq	%r12
GAS LISTING /tmp/ccsgyXat.s 			page 3


  99 0014 53       		pushq	%rbx
 100 0015 4883E4E0 		andq	$-32, %rsp
 101 0019 4881EC20 		subq	$2080, %rsp
 101      080000
 102              		.cfi_offset 13, -40
 103              		.cfi_offset 12, -48
 104              		.cfi_offset 3, -56
 105 0020 C5FB100D 		vmovsd	.LC0(%rip), %xmm1
 105      00000000 
 106 0028 C5FB1005 		vmovsd	.LC1(%rip), %xmm0
 106      00000000 
 107 0030 64488B04 		movq	%fs:40, %rax
 107      25280000 
 107      00
 108 0039 48898424 		movq	%rax, 2072(%rsp)
 108      18080000 
 109 0041 31C0     		xorl	%eax, %eax
 110 0043 E8000000 		call	_Z8linspaceddi
 110      00
 111 0048 488DBC24 		leaq	1552(%rsp), %rdi
 111      10060000 
 112 0050 BA300000 		movl	$48, %edx
 112      00
 113 0055 BE000000 		movl	$.LC2, %esi
 113      00
 114 005a 4989C7   		movq	%rax, %r15
 115              	.LEHB0:
 116 005d E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
 116      00
 117              	.LEHE0:
 118 0062 E8000000 		call	clock
 118      00
 119 0067 C5F82805 		vmovaps	.LC72(%rip), %xmm0
 119      00000000 
 120 006f 48894424 		movq	%rax, 48(%rsp)
 120      30
 121 0074 C5F828C8 		vmovaps	%xmm0, %xmm1
 122 0078 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
 122      C001
 123 007e C5FC2944 		vmovaps	%ymm0, 64(%rsp)
 123      2440
 124 0084 C5FD5705 		vxorpd	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv
 124      00000000 
 125 008c C5FD2904 		vmovapd	%ymm0, (%rsp)
 125      24
 126              	.L12:
 127 0091 C4817D28 		vmovapd	(%r15,%r14), %ymm0
 127      0437
 128 0097 C5FD2984 		vmovapd	%ymm0, 1440(%rsp)
 128      24A00500 
 128      00
 129 00a0 C5FD2805 		vmovapd	.LC99(%rip), %ymm0
 129      00000000 
 130 00a8 C5FD2984 		vmovapd	%ymm0, 1408(%rsp)
 130      24800500 
 130      00
 131 00b1 C5F957C0 		vxorpd	%xmm0, %xmm0, %xmm0
GAS LISTING /tmp/ccsgyXat.s 			page 4


 132 00b5 C5FD2984 		vmovapd	%ymm0, 1344(%rsp)
 132      24400500 
 132      00
 133 00be C5FD2805 		vmovapd	.LC100(%rip), %ymm0
 133      00000000 
 134 00c6 C5FD2984 		vmovapd	%ymm0, 1472(%rsp)
 134      24C00500 
 134      00
 135 00cf C5F9EFC0 		vpxor	%xmm0, %xmm0, %xmm0
 136 00d3 C5F97F84 		vmovdqa	%xmm0, 1504(%rsp)
 136      24E00500 
 136      00
 137 00dc C5FD2805 		vmovapd	.LC101(%rip), %ymm0
 137      00000000 
 138 00e4 C5FD2984 		vmovapd	%ymm0, 1280(%rsp)
 138      24000500 
 138      00
 139 00ed C5FD2805 		vmovapd	.LC102(%rip), %ymm0
 139      00000000 
 140 00f5 C5FD2984 		vmovapd	%ymm0, 1312(%rsp)
 140      24200500 
 140      00
 141 00fe 6690     		.p2align 4,,10
 142              		.p2align 3
 143              	.L47:
 144 0100 31C0     		xorl	%eax, %eax
 145 0102 48C1E005 		salq	$5, %rax
 146 0106 488D5020 		leaq	32(%rax), %rdx
 147 010a 488D8C14 		leaq	1280(%rsp,%rdx), %rcx
 147      00050000 
 148 0112 C5FD2801 		vmovapd	(%rcx), %ymm0
 149 0116 C5FD2984 		vmovapd	%ymm0, 1024(%rsp,%rax)
 149      04000400 
 149      00
 150 011f C5FD28AC 		vmovapd	1344(%rsp), %ymm5
 150      24400500 
 150      00
 151 0128 C5D55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 151      00000000 
 152 0130 C5ED5905 		vmulpd	.LC3(%rip), %ymm2, %ymm0
 152      00000000 
 153 0138 C4E37D09 		vroundpd	$8, %ymm0, %ymm0
 153      C008
 154 013e C4E37D09 		vroundpd	$8, %ymm0, %ymm1
 154      C808
 155 0144 C5FD118C 		vmovupd	%ymm1, 192(%rsp)
 155      24C00000 
 155      00
 156 014d C5FB109C 		vmovsd	200(%rsp), %xmm3
 156      24C80000 
 156      00
 157 0156 C5FB108C 		vmovsd	192(%rsp), %xmm1
 157      24C00000 
 157      00
 158 015f C4E1FB2C 		vcvttsd2siq	%xmm3, %rsi
 158      F3
 159 0164 C5FD591D 		vmulpd	.LC4(%rip), %ymm0, %ymm3
GAS LISTING /tmp/ccsgyXat.s 			page 5


 159      00000000 
 160 016c C4E1FB2C 		vcvttsd2siq	%xmm1, %rdi
 160      F9
 161 0171 C5FD590D 		vmulpd	.LC5(%rip), %ymm0, %ymm1
 161      00000000 
 162 0179 C5FD5905 		vmulpd	.LC6(%rip), %ymm0, %ymm0
 162      00000000 
 163 0181 C5FB10B4 		vmovsd	216(%rsp), %xmm6
 163      24D80000 
 163      00
 164 018a C5ED5CDB 		vsubpd	%ymm3, %ymm2, %ymm3
 165 018e C5E55CD9 		vsubpd	%ymm1, %ymm3, %ymm3
 166 0192 4889BC24 		movq	%rdi, 128(%rsp)
 166      80000000 
 167 019a C5FA7EAC 		vmovq	128(%rsp), %xmm5
 167      24800000 
 167      00
 168 01a3 C4E3D122 		vpinsrq	$1, %rsi, %xmm5, %xmm4
 168      E601
 169 01a9 C4E1FB2C 		vcvttsd2siq	%xmm6, %rsi
 169      F6
 170 01ae C5FB10AC 		vmovsd	208(%rsp), %xmm5
 170      24D00000 
 170      00
 171 01b7 C5E55CD8 		vsubpd	%ymm0, %ymm3, %ymm3
 172 01bb C4E1FB2C 		vcvttsd2siq	%xmm5, %rdi
 172      FD
 173 01c0 C5E559C3 		vmulpd	%ymm3, %ymm3, %ymm0
 174 01c4 C57D5905 		vmulpd	.LC9(%rip), %ymm0, %ymm8
 174      00000000 
 175 01cc C5FD59C8 		vmulpd	%ymm0, %ymm0, %ymm1
 176 01d0 4889BC24 		movq	%rdi, 128(%rsp)
 176      80000000 
 177 01d8 C5FA7EAC 		vmovq	128(%rsp), %xmm5
 177      24800000 
 177      00
 178 01e1 C5FD593D 		vmulpd	.LC7(%rip), %ymm0, %ymm7
 178      00000000 
 179 01e9 C57D590D 		vmulpd	.LC15(%rip), %ymm0, %ymm9
 179      00000000 
 180 01f1 C53D5805 		vaddpd	.LC10(%rip), %ymm8, %ymm8
 180      00000000 
 181 01f9 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 182 01fd C4E3D122 		vpinsrq	$1, %rsi, %xmm5, %xmm5
 182      EE01
 183 0203 C5C5583D 		vaddpd	.LC8(%rip), %ymm7, %ymm7
 183      00000000 
 184 020b C535580D 		vaddpd	.LC16(%rip), %ymm9, %ymm9
 184      00000000 
 185 0213 C53D59C6 		vmulpd	%ymm6, %ymm8, %ymm8
 186 0217 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 187 021b C5FD593D 		vmulpd	.LC11(%rip), %ymm0, %ymm7
 187      00000000 
 188 0223 C5B559F6 		vmulpd	%ymm6, %ymm9, %ymm6
 189 0227 C5C5583D 		vaddpd	.LC12(%rip), %ymm7, %ymm7
 189      00000000 
 190 022f C5C559F9 		vmulpd	%ymm1, %ymm7, %ymm7
GAS LISTING /tmp/ccsgyXat.s 			page 6


 191 0233 C4C14558 		vaddpd	%ymm8, %ymm7, %ymm7
 191      F8
 192 0238 C57D5905 		vmulpd	.LC13(%rip), %ymm0, %ymm8
 192      00000000 
 193 0240 C53D5805 		vaddpd	.LC14(%rip), %ymm8, %ymm8
 193      00000000 
 194 0248 C4C14D58 		vaddpd	%ymm8, %ymm6, %ymm6
 194      F0
 195 024d C57D5905 		vmulpd	.LC17(%rip), %ymm0, %ymm8
 195      00000000 
 196 0255 C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 196      00000000 
 197 025d C53D59C1 		vmulpd	%ymm1, %ymm8, %ymm8
 198 0261 C5BD58F6 		vaddpd	%ymm6, %ymm8, %ymm6
 199 0265 C56559C0 		vmulpd	%ymm0, %ymm3, %ymm8
 200 0269 C5FD5905 		vmulpd	.LC19(%rip), %ymm0, %ymm0
 200      00000000 
 201 0271 C5F559CE 		vmulpd	%ymm6, %ymm1, %ymm1
 202 0275 C5BD59FF 		vmulpd	%ymm7, %ymm8, %ymm7
 203 0279 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 203      D001
 204 027f C5C558DB 		vaddpd	%ymm3, %ymm7, %ymm3
 205 0283 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 205      00000000 
 206 028b C4C13973 		vpsllq	$1, %xmm8, %xmm8
 206      F001
 207 0291 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 207      00000000 
 208 0299 C5C55CC0 		vsubpd	%ymm0, %ymm7, %ymm0
 209 029d C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 210 02a1 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 210      05000000 
 210      00
 211 02aa C5F558F0 		vaddpd	%ymm0, %ymm1, %ymm6
 212 02ae C5D1DB05 		vpand	.LC21(%rip), %xmm5, %xmm0
 212      00000000 
 213 02b6 C5D9DB0D 		vpand	.LC21(%rip), %xmm4, %xmm1
 213      00000000 
 214 02be C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 214      00000000 
 215 02c6 C4E27929 		vpcmpeqq	%xmm7, %xmm0, %xmm0
 215      C7
 216 02cb C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 216      CF
 217 02d0 C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 217      00000000 
 218 02d8 C4E25937 		vpcmpgtq	.LC22(%rip), %xmm4, %xmm7
 218      3D000000 
 218      00
 219 02e1 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 219      00000000 
 220 02e9 C4E37518 		vinsertf128	$0x1, %xmm0, %ymm1, %ymm1
 220      C801
 221 02ef C4E25137 		vpcmpgtq	.LC22(%rip), %xmm5, %xmm0
 221      05000000 
 221      00
 222 02f8 C4E34518 		vinsertf128	$0x1, %xmm0, %ymm7, %ymm7
GAS LISTING /tmp/ccsgyXat.s 			page 7


 222      F801
 223 02fe C5F928C2 		vmovapd	%xmm2, %xmm0
 224 0302 C5E957D2 		vxorpd	%xmm2, %xmm2, %xmm2
 225 0306 C5F973F0 		vpsllq	$1, %xmm0, %xmm0
 225      01
 226 030b C5F9DB05 		vpand	.LC23(%rip), %xmm0, %xmm0
 226      00000000 
 227 0313 C4E27929 		vpcmpeqq	.LC23(%rip), %xmm0, %xmm0
 227      05000000 
 227      00
 228 031c C5F9EF05 		vpxor	.LC105(%rip), %xmm0, %xmm0
 228      00000000 
 229 0324 C4C37D18 		vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
 229      C001
 230 032a C5C554C0 		vandpd	%ymm0, %ymm7, %ymm0
 231 032e C4E3654B 		vblendvpd	%ymm0, %ymm2, %ymm3, %ymm3
 231      DA00
 232 0334 C4E34D4B 		vblendvpd	%ymm0, .LC20(%rip), %ymm6, %ymm0
 232      05000000 
 232      0000
 233 033e C5D1D415 		vpaddq	.LC21(%rip), %xmm5, %xmm2
 233      00000000 
 234 0346 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 234      00000000 
 235 034e C4E37D4B 		vblendvpd	%ymm1, %ymm3, %ymm0, %ymm0
 235      C310
 236 0354 C5D9D40D 		vpaddq	.LC21(%rip), %xmm4, %xmm1
 236      00000000 
 237 035c C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 237      00000000 
 238 0364 C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 238      00000000 
 239 036c C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 239      3E
 240 0371 C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 240      3E
 241 0376 C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 241      CA01
 242 037c C5FD2894 		vmovapd	1440(%rsp), %ymm2
 242      24A00500 
 242      00
 243 0385 C5ED5911 		vmulpd	(%rcx), %ymm2, %ymm2
 244 0389 C5FD57C9 		vxorpd	%ymm1, %ymm0, %ymm1
 245 038d C5FD2884 		vmovapd	1280(%rsp,%rax), %ymm0
 245      04000500 
 245      00
 246 0396 C5FD59D8 		vmulpd	%ymm0, %ymm0, %ymm3
 247 039a C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 247      00000000 
 248 03a2 C5D55CDB 		vsubpd	%ymm3, %ymm5, %ymm3
 249 03a6 C5FD59C3 		vmulpd	%ymm3, %ymm0, %ymm0
 250 03aa C5FD5CC2 		vsubpd	%ymm2, %ymm0, %ymm0
 251 03ae C5FD58C1 		vaddpd	%ymm1, %ymm0, %ymm0
 252 03b2 C5FD2984 		vmovapd	%ymm0, 1056(%rsp,%rax)
 252      04200400 
 252      00
 253 03bb C5FD2805 		vmovapd	.LC26(%rip), %ymm0
GAS LISTING /tmp/ccsgyXat.s 			page 8


 253      00000000 
 254 03c3 C5FD281D 		vmovapd	.LC26(%rip), %ymm3
 254      00000000 
 255 03cb C5FD59B4 		vmulpd	1024(%rsp), %ymm0, %ymm6
 255      24000400 
 255      00
 256 03d4 C5FD2884 		vmovapd	1408(%rsp), %ymm0
 256      24800500 
 256      00
 257 03dd C5E559AC 		vmulpd	1056(%rsp), %ymm3, %ymm5
 257      24200400 
 257      00
 258 03e6 C57D283D 		vmovapd	.LC20(%rip), %ymm15
 258      00000000 
 259 03ee C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 260 03f2 C5FD59F6 		vmulpd	%ymm6, %ymm0, %ymm6
 261 03f6 C5E5589C 		vaddpd	1344(%rsp), %ymm3, %ymm3
 261      24400500 
 261      00
 262 03ff C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 263 0403 C5CD58B4 		vaddpd	1280(%rsp), %ymm6, %ymm6
 263      24000500 
 263      00
 264 040c C5D558AC 		vaddpd	1312(%rsp), %ymm5, %ymm5
 264      24200500 
 264      00
 265 0415 C5E5541D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 265      00000000 
 266 041d C5E5590D 		vmulpd	.LC3(%rip), %ymm3, %ymm1
 266      00000000 
 267 0425 C4E37D09 		vroundpd	$8, %ymm1, %ymm1
 267      C908
 268 042b C4E37D09 		vroundpd	$8, %ymm1, %ymm2
 268      D108
 269 0431 C5FD1194 		vmovupd	%ymm2, 224(%rsp)
 269      24E00000 
 269      00
 270 043a C5F55915 		vmulpd	.LC5(%rip), %ymm1, %ymm2
 270      00000000 
 271 0442 C5FB10BC 		vmovsd	224(%rsp), %xmm7
 271      24E00000 
 271      00
 272 044b C57B1084 		vmovsd	232(%rsp), %xmm8
 272      24E80000 
 272      00
 273 0454 C4E1FB2C 		vcvttsd2siq	%xmm7, %rax
 273      C7
 274 0459 C57B108C 		vmovsd	240(%rsp), %xmm9
 274      24F00000 
 274      00
 275 0462 C57B1094 		vmovsd	248(%rsp), %xmm10
 275      24F80000 
 275      00
 276 046b 48898424 		movq	%rax, 128(%rsp)
 276      80000000 
 277 0473 C4C1FB2C 		vcvttsd2siq	%xmm8, %rax
 277      C0
GAS LISTING /tmp/ccsgyXat.s 			page 9


 278 0478 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 278      24800000 
 278      00
 279 0481 C4E3D922 		vpinsrq	$1, %rax, %xmm4, %xmm7
 279      F801
 280 0487 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 280      C1
 281 048c 48898424 		movq	%rax, 128(%rsp)
 281      80000000 
 282 0494 C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 282      C2
 283 0499 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 283      24800000 
 283      00
 284 04a2 C463D922 		vpinsrq	$1, %rax, %xmm4, %xmm8
 284      C001
 285 04a8 C5F55925 		vmulpd	.LC4(%rip), %ymm1, %ymm4
 285      00000000 
 286 04b0 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 286      00000000 
 287 04b8 C5E55CE4 		vsubpd	%ymm4, %ymm3, %ymm4
 288 04bc C5DD5CE2 		vsubpd	%ymm2, %ymm4, %ymm4
 289 04c0 C5DD5CE1 		vsubpd	%ymm1, %ymm4, %ymm4
 290 04c4 C5DD59CC 		vmulpd	%ymm4, %ymm4, %ymm1
 291 04c8 C575591D 		vmulpd	.LC9(%rip), %ymm1, %ymm11
 291      00000000 
 292 04d0 C5F559D1 		vmulpd	%ymm1, %ymm1, %ymm2
 293 04d4 C5755915 		vmulpd	.LC7(%rip), %ymm1, %ymm10
 293      00000000 
 294 04dc C5755925 		vmulpd	.LC15(%rip), %ymm1, %ymm12
 294      00000000 
 295 04e4 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 295      00000000 
 296 04ec C56D59CA 		vmulpd	%ymm2, %ymm2, %ymm9
 297 04f0 C52D5815 		vaddpd	.LC8(%rip), %ymm10, %ymm10
 297      00000000 
 298 04f8 C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 298      00000000 
 299 0500 C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 299      D9
 300 0505 C4412558 		vaddpd	%ymm10, %ymm11, %ymm11
 300      DA
 301 050a C5755915 		vmulpd	.LC11(%rip), %ymm1, %ymm10
 301      00000000 
 302 0512 C4411D59 		vmulpd	%ymm9, %ymm12, %ymm9
 302      C9
 303 0517 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 303      00000000 
 304 051f C52D59D2 		vmulpd	%ymm2, %ymm10, %ymm10
 305 0523 C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 305      D3
 306 0528 C575591D 		vmulpd	.LC13(%rip), %ymm1, %ymm11
 306      00000000 
 307 0530 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 307      00000000 
 308 0538 C4413558 		vaddpd	%ymm11, %ymm9, %ymm9
 308      CB
GAS LISTING /tmp/ccsgyXat.s 			page 10


 309 053d C575591D 		vmulpd	.LC17(%rip), %ymm1, %ymm11
 309      00000000 
 310 0545 C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 310      00000000 
 311 054d C52559DA 		vmulpd	%ymm2, %ymm11, %ymm11
 312 0551 C4412558 		vaddpd	%ymm9, %ymm11, %ymm9
 312      C9
 313 0556 C55D59D9 		vmulpd	%ymm1, %ymm4, %ymm11
 314 055a C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 314      00000000 
 315 0562 C4C16D59 		vmulpd	%ymm9, %ymm2, %ymm2
 315      D1
 316 0567 C541DB0D 		vpand	.LC21(%rip), %xmm7, %xmm9
 316      00000000 
 317 056f C4412559 		vmulpd	%ymm10, %ymm11, %ymm10
 317      D2
 318 0574 C5855CC9 		vsubpd	%ymm1, %ymm15, %ymm1
 319 0578 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 319      FF
 320 057d C4C37D19 		vextractf128	$0x1, %ymm3, %xmm11
 320      DB01
 321 0583 C4423129 		vpcmpeqq	%xmm15, %xmm9, %xmm9
 321      CF
 322 0588 C5ED58D1 		vaddpd	%ymm1, %ymm2, %ymm2
 323 058c C5B9DB0D 		vpand	.LC21(%rip), %xmm8, %xmm1
 323      00000000 
 324 0594 C4C12173 		vpsllq	$1, %xmm11, %xmm11
 324      F301
 325 059a C531EF0D 		vpxor	.LC105(%rip), %xmm9, %xmm9
 325      00000000 
 326 05a2 C5AD58E4 		vaddpd	%ymm4, %ymm10, %ymm4
 327 05a6 C521DB1D 		vpand	.LC23(%rip), %xmm11, %xmm11
 327      00000000 
 328 05ae C4C27129 		vpcmpeqq	%xmm15, %xmm1, %xmm1
 328      CF
 329 05b3 C4624137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm10
 329      15000000 
 329      00
 330 05bc C54D59FE 		vmulpd	%ymm6, %ymm6, %ymm15
 331 05c0 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 331      00000000 
 332 05c8 C4622129 		vpcmpeqq	.LC23(%rip), %xmm11, %xmm11
 332      1D000000 
 332      00
 333 05d1 C521EF1D 		vpxor	.LC105(%rip), %xmm11, %xmm11
 333      00000000 
 334 05d9 C4633518 		vinsertf128	$0x1, %xmm1, %ymm9, %ymm9
 334      C901
 335 05df C4E23937 		vpcmpgtq	.LC22(%rip), %xmm8, %xmm1
 335      0D000000 
 335      00
 336 05e8 C4632D18 		vinsertf128	$0x1, %xmm1, %ymm10, %ymm10
 336      D101
 337 05ee C5F928CB 		vmovapd	%xmm3, %xmm1
 338 05f2 C5E157DB 		vxorpd	%xmm3, %xmm3, %xmm3
 339 05f6 C5F173F1 		vpsllq	$1, %xmm1, %xmm1
 339      01
GAS LISTING /tmp/ccsgyXat.s 			page 11


 340 05fb C5F1DB0D 		vpand	.LC23(%rip), %xmm1, %xmm1
 340      00000000 
 341 0603 C4E27129 		vpcmpeqq	.LC23(%rip), %xmm1, %xmm1
 341      0D000000 
 341      00
 342 060c C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 342      00000000 
 343 0614 C4C37518 		vinsertf128	$0x1, %xmm11, %ymm1, %ymm1
 343      CB01
 344 061a C5AD54C9 		vandpd	%ymm1, %ymm10, %ymm1
 345 061e C4E35D4B 		vblendvpd	%ymm1, %ymm3, %ymm4, %ymm4
 345      E310
 346 0624 C4E36D4B 		vblendvpd	%ymm1, .LC20(%rip), %ymm2, %ymm2
 346      15000000 
 346      0010
 347 062e C5B9D41D 		vpaddq	.LC21(%rip), %xmm8, %xmm3
 347      00000000 
 348 0636 C5E1DB1D 		vpand	.LC24(%rip), %xmm3, %xmm3
 348      00000000 
 349 063e C4E36D4B 		vblendvpd	%ymm9, %ymm4, %ymm2, %ymm1
 349      CC90
 350 0644 C5C1D415 		vpaddq	.LC21(%rip), %xmm7, %xmm2
 350      00000000 
 351 064c C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 351      00000000 
 352 0654 C5E173F3 		vpsllq	$62, %xmm3, %xmm3
 352      3E
 353 0659 C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 353      3E
 354 065e C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm2
 354      D301
 355 0664 C5FD281D 		vmovapd	.LC20(%rip), %ymm3
 355      00000000 
 356 066c C441655C 		vsubpd	%ymm15, %ymm3, %ymm15
 356      FF
 357 0671 C5FD281D 		vmovapd	.LC28(%rip), %ymm3
 357      00000000 
 358 0679 C5F557CA 		vxorpd	%ymm2, %ymm1, %ymm1
 359 067d C5D55994 		vmulpd	1440(%rsp), %ymm5, %ymm2
 359      24A00500 
 359      00
 360 0686 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 360      00000000 
 361 068e C4414D59 		vmulpd	%ymm15, %ymm6, %ymm15
 361      FF
 362 0693 C5E559B4 		vmulpd	1024(%rsp), %ymm3, %ymm6
 362      24000400 
 362      00
 363 069c C5055CFA 		vsubpd	%ymm2, %ymm15, %ymm15
 364 06a0 C5E55994 		vmulpd	1056(%rsp), %ymm3, %ymm2
 364      24200400 
 364      00
 365 06a9 C50558F9 		vaddpd	%ymm1, %ymm15, %ymm15
 366 06ad C5D5590D 		vmulpd	.LC27(%rip), %ymm5, %ymm1
 366      00000000 
 367 06b5 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 368 06b9 C585590D 		vmulpd	.LC27(%rip), %ymm15, %ymm1
GAS LISTING /tmp/ccsgyXat.s 			page 12


 368      00000000 
 369 06c1 C5FD59F6 		vmulpd	%ymm6, %ymm0, %ymm6
 370 06c5 C5ED58C9 		vaddpd	%ymm1, %ymm2, %ymm1
 371 06c9 C5CD58B4 		vaddpd	1280(%rsp), %ymm6, %ymm6
 371      24000500 
 371      00
 372 06d2 C5FD59C9 		vmulpd	%ymm1, %ymm0, %ymm1
 373 06d6 C5F5589C 		vaddpd	1312(%rsp), %ymm1, %ymm3
 373      24200500 
 373      00
 374 06df C57D28F3 		vmovapd	%ymm3, %ymm14
 375 06e3 C5FD591D 		vmulpd	.LC25(%rip), %ymm0, %ymm3
 375      00000000 
 376 06eb C5E5589C 		vaddpd	1344(%rsp), %ymm3, %ymm3
 376      24400500 
 376      00
 377 06f4 C57D29B4 		vmovapd	%ymm14, 1088(%rsp)
 377      24400400 
 377      00
 378 06fd C5E5541D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 378      00000000 
 379 0705 C5E5590D 		vmulpd	.LC3(%rip), %ymm3, %ymm1
 379      00000000 
 380 070d C4E37D09 		vroundpd	$8, %ymm1, %ymm1
 380      C908
 381 0713 C4E37D09 		vroundpd	$8, %ymm1, %ymm2
 381      D108
 382 0719 C5FD1194 		vmovupd	%ymm2, 256(%rsp)
 382      24000100 
 382      00
 383 0722 C57B109C 		vmovsd	256(%rsp), %xmm11
 383      24000100 
 383      00
 384 072b C57B10A4 		vmovsd	264(%rsp), %xmm12
 384      24080100 
 384      00
 385 0734 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 385      C3
 386 0739 C57B10AC 		vmovsd	272(%rsp), %xmm13
 386      24100100 
 386      00
 387 0742 C5FB1094 		vmovsd	280(%rsp), %xmm2
 387      24180100 
 387      00
 388 074b 48898424 		movq	%rax, 128(%rsp)
 388      80000000 
 389 0753 C4C1FB2C 		vcvttsd2siq	%xmm12, %rax
 389      C4
 390 0758 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 390      24800000 
 390      00
 391 0761 C463D922 		vpinsrq	$1, %rax, %xmm4, %xmm12
 391      E001
 392 0767 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 392      C5
 393 076c C57D282D 		vmovapd	.LC20(%rip), %ymm13
 393      00000000 
GAS LISTING /tmp/ccsgyXat.s 			page 13


 394 0774 48898424 		movq	%rax, 128(%rsp)
 394      80000000 
 395 077c C4E1FB2C 		vcvttsd2siq	%xmm2, %rax
 395      C2
 396 0781 C5FA7EA4 		vmovq	128(%rsp), %xmm4
 396      24800000 
 396      00
 397 078a C5F55915 		vmulpd	.LC5(%rip), %ymm1, %ymm2
 397      00000000 
 398 0792 C4E3D922 		vpinsrq	$1, %rax, %xmm4, %xmm7
 398      F801
 399 0798 C5F55925 		vmulpd	.LC4(%rip), %ymm1, %ymm4
 399      00000000 
 400 07a0 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 400      00000000 
 401 07a8 C5E55CE4 		vsubpd	%ymm4, %ymm3, %ymm4
 402 07ac C5DD5CE2 		vsubpd	%ymm2, %ymm4, %ymm4
 403 07b0 C5DD5CE1 		vsubpd	%ymm1, %ymm4, %ymm4
 404 07b4 C5DD59CC 		vmulpd	%ymm4, %ymm4, %ymm1
 405 07b8 C5755915 		vmulpd	.LC9(%rip), %ymm1, %ymm10
 405      00000000 
 406 07c0 C5F559D1 		vmulpd	%ymm1, %ymm1, %ymm2
 407 07c4 C575590D 		vmulpd	.LC7(%rip), %ymm1, %ymm9
 407      00000000 
 408 07cc C575591D 		vmulpd	.LC15(%rip), %ymm1, %ymm11
 408      00000000 
 409 07d4 C52D5815 		vaddpd	.LC10(%rip), %ymm10, %ymm10
 409      00000000 
 410 07dc C56D59C2 		vmulpd	%ymm2, %ymm2, %ymm8
 411 07e0 C535580D 		vaddpd	.LC8(%rip), %ymm9, %ymm9
 411      00000000 
 412 07e8 C525581D 		vaddpd	.LC16(%rip), %ymm11, %ymm11
 412      00000000 
 413 07f0 C4412D59 		vmulpd	%ymm8, %ymm10, %ymm10
 413      D0
 414 07f5 C4412D58 		vaddpd	%ymm9, %ymm10, %ymm10
 414      D1
 415 07fa C575590D 		vmulpd	.LC11(%rip), %ymm1, %ymm9
 415      00000000 
 416 0802 C4412559 		vmulpd	%ymm8, %ymm11, %ymm8
 416      C0
 417 0807 C535580D 		vaddpd	.LC12(%rip), %ymm9, %ymm9
 417      00000000 
 418 080f C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 419 0813 C4413558 		vaddpd	%ymm10, %ymm9, %ymm9
 419      CA
 420 0818 C5755915 		vmulpd	.LC13(%rip), %ymm1, %ymm10
 420      00000000 
 421 0820 C52D5815 		vaddpd	.LC14(%rip), %ymm10, %ymm10
 421      00000000 
 422 0828 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 422      D2
 423 082d C5755905 		vmulpd	.LC17(%rip), %ymm1, %ymm8
 423      00000000 
 424 0835 C53D5805 		vaddpd	.LC18(%rip), %ymm8, %ymm8
 424      00000000 
 425 083d C53D59C2 		vmulpd	%ymm2, %ymm8, %ymm8
GAS LISTING /tmp/ccsgyXat.s 			page 14


 426 0841 C4413D58 		vaddpd	%ymm10, %ymm8, %ymm10
 426      D2
 427 0846 C55D59C1 		vmulpd	%ymm1, %ymm4, %ymm8
 428 084a C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 428      00000000 
 429 0852 C4C16D59 		vmulpd	%ymm10, %ymm2, %ymm2
 429      D2
 430 0857 C4413D59 		vmulpd	%ymm9, %ymm8, %ymm8
 430      C1
 431 085c C4621937 		vpcmpgtq	.LC22(%rip), %xmm12, %xmm9
 431      0D000000 
 431      00
 432 0865 C4C37D19 		vextractf128	$0x1, %ymm3, %xmm10
 432      DA01
 433 086b C5955CC9 		vsubpd	%ymm1, %ymm13, %ymm1
 434 086f C44111EF 		vpxor	%xmm13, %xmm13, %xmm13
 434      ED
 435 0874 C5BD58E4 		vaddpd	%ymm4, %ymm8, %ymm4
 436 0878 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 436      F201
 437 087e C519DB05 		vpand	.LC21(%rip), %xmm12, %xmm8
 437      00000000 
 438 0886 C5ED58D1 		vaddpd	%ymm1, %ymm2, %ymm2
 439 088a C5C1DB0D 		vpand	.LC21(%rip), %xmm7, %xmm1
 439      00000000 
 440 0892 C4423929 		vpcmpeqq	%xmm13, %xmm8, %xmm8
 440      C5
 441 0897 C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 441      00000000 
 442 089f C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 442      00000000 
 443 08a7 C4C27129 		vpcmpeqq	%xmm13, %xmm1, %xmm1
 443      CD
 444 08ac C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 444      00000000 
 445 08b4 C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 445      15000000 
 445      00
 446 08bd C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 446      00000000 
 447 08c5 C4633D18 		vinsertf128	$0x1, %xmm1, %ymm8, %ymm8
 447      C101
 448 08cb C4E24137 		vpcmpgtq	.LC22(%rip), %xmm7, %xmm1
 448      0D000000 
 448      00
 449 08d4 C4633518 		vinsertf128	$0x1, %xmm1, %ymm9, %ymm9
 449      C901
 450 08da C5F928CB 		vmovapd	%xmm3, %xmm1
 451 08de C5E157DB 		vxorpd	%xmm3, %xmm3, %xmm3
 452 08e2 C5F173F1 		vpsllq	$1, %xmm1, %xmm1
 452      01
 453 08e7 C5F1DB0D 		vpand	.LC23(%rip), %xmm1, %xmm1
 453      00000000 
 454 08ef C4E27129 		vpcmpeqq	.LC23(%rip), %xmm1, %xmm1
 454      0D000000 
 454      00
 455 08f8 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
GAS LISTING /tmp/ccsgyXat.s 			page 15


 455      00000000 
 456 0900 C4C37518 		vinsertf128	$0x1, %xmm10, %ymm1, %ymm1
 456      CA01
 457 0906 C5B554C9 		vandpd	%ymm1, %ymm9, %ymm1
 458 090a C4E35D4B 		vblendvpd	%ymm1, %ymm3, %ymm4, %ymm4
 458      E310
 459 0910 C4E36D4B 		vblendvpd	%ymm1, .LC20(%rip), %ymm2, %ymm2
 459      15000000 
 459      0010
 460 091a C5C1D41D 		vpaddq	.LC21(%rip), %xmm7, %xmm3
 460      00000000 
 461 0922 C5E1DB1D 		vpand	.LC24(%rip), %xmm3, %xmm3
 461      00000000 
 462 092a C4E36D4B 		vblendvpd	%ymm8, %ymm4, %ymm2, %ymm1
 462      CC80
 463 0930 C599D415 		vpaddq	.LC21(%rip), %xmm12, %xmm2
 463      00000000 
 464 0938 C5FD283D 		vmovapd	.LC20(%rip), %ymm7
 464      00000000 
 465 0940 C5E9DB15 		vpand	.LC24(%rip), %xmm2, %xmm2
 465      00000000 
 466 0948 C5E173F3 		vpsllq	$62, %xmm3, %xmm3
 466      3E
 467 094d C5E973F2 		vpsllq	$62, %xmm2, %xmm2
 467      3E
 468 0952 C4E36D18 		vinsertf128	$0x1, %xmm3, %ymm2, %ymm2
 468      D301
 469 0958 C58D599C 		vmulpd	1440(%rsp), %ymm14, %ymm3
 469      24A00500 
 469      00
 470 0961 C5F557CA 		vxorpd	%ymm2, %ymm1, %ymm1
 471 0965 C5CD59D6 		vmulpd	%ymm6, %ymm6, %ymm2
 472 0969 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 472      00000000 
 473 0971 C5C55CD2 		vsubpd	%ymm2, %ymm7, %ymm2
 474 0975 C5CD59D2 		vmulpd	%ymm2, %ymm6, %ymm2
 475 0979 C5ED5CD3 		vsubpd	%ymm3, %ymm2, %ymm2
 476 097d C5ED58D1 		vaddpd	%ymm1, %ymm2, %ymm2
 477 0981 C5FD2994 		vmovapd	%ymm2, 1120(%rsp)
 477      24600400 
 477      00
 478 098a C5D5591D 		vmulpd	.LC30(%rip), %ymm5, %ymm3
 478      00000000 
 479 0992 C5FD2835 		vmovapd	.LC25(%rip), %ymm6
 479      00000000 
 480 099a C57D29B4 		vmovapd	%ymm14, 128(%rsp)
 480      24800000 
 480      00
 481 09a3 C5CD59A4 		vmulpd	1056(%rsp), %ymm6, %ymm4
 481      24200400 
 481      00
 482 09ac C54D5984 		vmulpd	1024(%rsp), %ymm6, %ymm8
 482      24000400 
 482      00
 483 09b5 C5FD5935 		vmulpd	.LC31(%rip), %ymm0, %ymm6
 483      00000000 
 484 09bd C58D590D 		vmulpd	.LC29(%rip), %ymm14, %ymm1
GAS LISTING /tmp/ccsgyXat.s 			page 16


 484      00000000 
 485 09c5 C53D58C3 		vaddpd	%ymm3, %ymm8, %ymm8
 486 09c9 C585591D 		vmulpd	.LC30(%rip), %ymm15, %ymm3
 486      00000000 
 487 09d1 C5CD58B4 		vaddpd	1344(%rsp), %ymm6, %ymm6
 487      24400500 
 487      00
 488 09da C53D58C1 		vaddpd	%ymm1, %ymm8, %ymm8
 489 09de C5ED590D 		vmulpd	.LC29(%rip), %ymm2, %ymm1
 489      00000000 
 490 09e6 C5DD58DB 		vaddpd	%ymm3, %ymm4, %ymm3
 491 09ea C5CD5435 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 491      00000000 
 492 09f2 C4417D59 		vmulpd	%ymm8, %ymm0, %ymm8
 492      C0
 493 09f7 C5E558D9 		vaddpd	%ymm1, %ymm3, %ymm3
 494 09fb C5CD590D 		vmulpd	.LC3(%rip), %ymm6, %ymm1
 494      00000000 
 495 0a03 C53D5884 		vaddpd	1280(%rsp), %ymm8, %ymm8
 495      24000500 
 495      00
 496 0a0c C5FD59DB 		vmulpd	%ymm3, %ymm0, %ymm3
 497 0a10 C4E37D09 		vroundpd	$8, %ymm1, %ymm1
 497      C908
 498 0a16 C4E37D09 		vroundpd	$8, %ymm1, %ymm4
 498      E108
 499 0a1c C5FD11A4 		vmovupd	%ymm4, 288(%rsp)
 499      24200100 
 499      00
 500 0a25 C5FB10A4 		vmovsd	288(%rsp), %xmm4
 500      24200100 
 500      00
 501 0a2e C5FB10BC 		vmovsd	296(%rsp), %xmm7
 501      24280100 
 501      00
 502 0a37 C4E1FB2C 		vcvttsd2siq	%xmm4, %rax
 502      C4
 503 0a3c C5F55925 		vmulpd	.LC5(%rip), %ymm1, %ymm4
 503      00000000 
 504 0a44 C5E5589C 		vaddpd	1312(%rsp), %ymm3, %ymm3
 504      24200500 
 504      00
 505 0a4d C57B108C 		vmovsd	304(%rsp), %xmm9
 505      24300100 
 505      00
 506 0a56 C57B1094 		vmovsd	312(%rsp), %xmm10
 506      24380100 
 506      00
 507 0a5f C5FD299C 		vmovapd	%ymm3, 1152(%rsp)
 507      24800400 
 507      00
 508 0a68 48894424 		movq	%rax, 112(%rsp)
 508      70
 509 0a6d C4E1FB2C 		vcvttsd2siq	%xmm7, %rax
 509      C7
 510 0a72 C5F5593D 		vmulpd	.LC4(%rip), %ymm1, %ymm7
 510      00000000 
GAS LISTING /tmp/ccsgyXat.s 			page 17


 511 0a7a C57A7E74 		vmovq	112(%rsp), %xmm14
 511      2470
 512 0a80 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 512      00000000 
 513 0a88 C5CD5CFF 		vsubpd	%ymm7, %ymm6, %ymm7
 514 0a8c C4638922 		vpinsrq	$1, %rax, %xmm14, %xmm14
 514      F001
 515 0a92 C4C1FB2C 		vcvttsd2siq	%xmm9, %rax
 515      C1
 516 0a97 C5C55CFC 		vsubpd	%ymm4, %ymm7, %ymm7
 517 0a9b C5C55CF9 		vsubpd	%ymm1, %ymm7, %ymm7
 518 0a9f C5C559CF 		vmulpd	%ymm7, %ymm7, %ymm1
 519 0aa3 48894424 		movq	%rax, 112(%rsp)
 519      70
 520 0aa8 C4C1FB2C 		vcvttsd2siq	%xmm10, %rax
 520      C2
 521 0aad C57A7E64 		vmovq	112(%rsp), %xmm12
 521      2470
 522 0ab3 C575591D 		vmulpd	.LC9(%rip), %ymm1, %ymm11
 522      00000000 
 523 0abb C5F559E1 		vmulpd	%ymm1, %ymm1, %ymm4
 524 0abf C5755915 		vmulpd	.LC7(%rip), %ymm1, %ymm10
 524      00000000 
 525 0ac7 C525581D 		vaddpd	.LC10(%rip), %ymm11, %ymm11
 525      00000000 
 526 0acf C55D59CC 		vmulpd	%ymm4, %ymm4, %ymm9
 527 0ad3 C4639922 		vpinsrq	$1, %rax, %xmm12, %xmm13
 527      E801
 528 0ad9 C52D5815 		vaddpd	.LC8(%rip), %ymm10, %ymm10
 528      00000000 
 529 0ae1 C5755925 		vmulpd	.LC15(%rip), %ymm1, %ymm12
 529      00000000 
 530 0ae9 C4412559 		vmulpd	%ymm9, %ymm11, %ymm11
 530      D9
 531 0aee C4412558 		vaddpd	%ymm10, %ymm11, %ymm11
 531      DA
 532 0af3 C5755915 		vmulpd	.LC11(%rip), %ymm1, %ymm10
 532      00000000 
 533 0afb C51D5825 		vaddpd	.LC16(%rip), %ymm12, %ymm12
 533      00000000 
 534 0b03 C52D5815 		vaddpd	.LC12(%rip), %ymm10, %ymm10
 534      00000000 
 535 0b0b C4411D59 		vmulpd	%ymm9, %ymm12, %ymm9
 535      C9
 536 0b10 C57D2825 		vmovapd	.LC20(%rip), %ymm12
 536      00000000 
 537 0b18 C52D59D4 		vmulpd	%ymm4, %ymm10, %ymm10
 538 0b1c C4412D58 		vaddpd	%ymm11, %ymm10, %ymm10
 538      D3
 539 0b21 C575591D 		vmulpd	.LC13(%rip), %ymm1, %ymm11
 539      00000000 
 540 0b29 C525581D 		vaddpd	.LC14(%rip), %ymm11, %ymm11
 540      00000000 
 541 0b31 C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 541      DB
 542 0b36 C575590D 		vmulpd	.LC17(%rip), %ymm1, %ymm9
 542      00000000 
GAS LISTING /tmp/ccsgyXat.s 			page 18


 543 0b3e C535580D 		vaddpd	.LC18(%rip), %ymm9, %ymm9
 543      00000000 
 544 0b46 C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 545 0b4a C4413558 		vaddpd	%ymm11, %ymm9, %ymm11
 545      DB
 546 0b4f C54559C9 		vmulpd	%ymm1, %ymm7, %ymm9
 547 0b53 C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 547      00000000 
 548 0b5b C4C15D59 		vmulpd	%ymm11, %ymm4, %ymm4
 548      E3
 549 0b60 C4413559 		vmulpd	%ymm10, %ymm9, %ymm9
 549      CA
 550 0b65 C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm10
 550      15000000 
 550      00
 551 0b6e C59D5CC9 		vsubpd	%ymm1, %ymm12, %ymm1
 552 0b72 C44119EF 		vpxor	%xmm12, %xmm12, %xmm12
 552      E4
 553 0b77 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 554 0b7b C511DB0D 		vpand	.LC21(%rip), %xmm13, %xmm9
 554      00000000 
 555 0b83 C5DD58E1 		vaddpd	%ymm1, %ymm4, %ymm4
 556 0b87 C589DB0D 		vpand	.LC21(%rip), %xmm14, %xmm1
 556      00000000 
 557 0b8f C4423129 		vpcmpeqq	%xmm12, %xmm9, %xmm9
 557      CC
 558 0b94 C531EF0D 		vpxor	.LC105(%rip), %xmm9, %xmm9
 558      00000000 
 559 0b9c C4C27129 		vpcmpeqq	%xmm12, %xmm1, %xmm1
 559      CC
 560 0ba1 C4411957 		vxorpd	%xmm12, %xmm12, %xmm12
 560      E4
 561 0ba6 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 561      00000000 
 562 0bae C4C37518 		vinsertf128	$0x1, %xmm9, %ymm1, %ymm1
 562      C901
 563 0bb4 C4620937 		vpcmpgtq	.LC22(%rip), %xmm14, %xmm9
 563      0D000000 
 563      00
 564 0bbd C4433518 		vinsertf128	$0x1, %xmm10, %ymm9, %ymm9
 564      CA01
 565 0bc3 C4C37D19 		vextractf128	$0x1, %ymm6, %xmm10
 565      F201
 566 0bc9 C5C973F6 		vpsllq	$1, %xmm6, %xmm6
 566      01
 567 0bce C5C9DB35 		vpand	.LC23(%rip), %xmm6, %xmm6
 567      00000000 
 568 0bd6 C4C12973 		vpsllq	$1, %xmm10, %xmm10
 568      F201
 569 0bdc C529DB15 		vpand	.LC23(%rip), %xmm10, %xmm10
 569      00000000 
 570 0be4 C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 570      35000000 
 570      00
 571 0bed C4622929 		vpcmpeqq	.LC23(%rip), %xmm10, %xmm10
 571      15000000 
 571      00
GAS LISTING /tmp/ccsgyXat.s 			page 19


 572 0bf6 C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 572      00000000 
 573 0bfe C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 573      00000000 
 574 0c06 C4C34D18 		vinsertf128	$0x1, %xmm10, %ymm6, %ymm6
 574      F201
 575 0c0c C5B554F6 		vandpd	%ymm6, %ymm9, %ymm6
 576 0c10 C509D40D 		vpaddq	.LC21(%rip), %xmm14, %xmm9
 576      00000000 
 577 0c18 C57D2835 		vmovapd	.LC20(%rip), %ymm14
 577      00000000 
 578 0c20 C531DB0D 		vpand	.LC24(%rip), %xmm9, %xmm9
 578      00000000 
 579 0c28 C4C3454B 		vblendvpd	%ymm6, %ymm12, %ymm7, %ymm7
 579      FC60
 580 0c2e C4E35D4B 		vblendvpd	%ymm6, .LC20(%rip), %ymm4, %ymm6
 580      35000000 
 580      0060
 581 0c38 C591D425 		vpaddq	.LC21(%rip), %xmm13, %xmm4
 581      00000000 
 582 0c40 C5D9DB25 		vpand	.LC24(%rip), %xmm4, %xmm4
 582      00000000 
 583 0c48 C4E34D4B 		vblendvpd	%ymm1, %ymm7, %ymm6, %ymm1
 583      CF10
 584 0c4e C4C13173 		vpsllq	$62, %xmm9, %xmm9
 584      F13E
 585 0c54 C5E559B4 		vmulpd	1440(%rsp), %ymm3, %ymm6
 585      24A00500 
 585      00
 586 0c5d C5D973F4 		vpsllq	$62, %xmm4, %xmm4
 586      3E
 587 0c62 C4633518 		vinsertf128	$0x1, %xmm4, %ymm9, %ymm9
 587      CC01
 588 0c68 C4C13D59 		vmulpd	%ymm8, %ymm8, %ymm4
 588      E0
 589 0c6d C4C17557 		vxorpd	%ymm9, %ymm1, %ymm1
 589      C9
 590 0c72 C58D5CE4 		vsubpd	%ymm4, %ymm14, %ymm4
 591 0c76 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 591      00000000 
 592 0c7e C5BD59E4 		vmulpd	%ymm4, %ymm8, %ymm4
 593 0c82 C5DD5CE6 		vsubpd	%ymm6, %ymm4, %ymm4
 594 0c86 C5DD58E1 		vaddpd	%ymm1, %ymm4, %ymm4
 595 0c8a C5FD29A4 		vmovapd	%ymm4, 1184(%rsp)
 595      24A00400 
 595      00
 596 0c93 C5E5590D 		vmulpd	.LC32(%rip), %ymm3, %ymm1
 596      00000000 
 597 0c9b C57D2835 		vmovapd	.LC35(%rip), %ymm14
 597      00000000 
 598 0ca3 C5FD28BC 		vmovapd	128(%rsp), %ymm7
 598      24800000 
 598      00
 599 0cac C50D5994 		vmulpd	1024(%rsp), %ymm14, %ymm10
 599      24000400 
 599      00
 600 0cb5 C5C55935 		vmulpd	.LC33(%rip), %ymm7, %ymm6
GAS LISTING /tmp/ccsgyXat.s 			page 20


 600      00000000 
 601 0cbd C5D5593D 		vmulpd	.LC34(%rip), %ymm5, %ymm7
 601      00000000 
 602 0cc5 C50D5984 		vmulpd	1056(%rsp), %ymm14, %ymm8
 602      24200400 
 602      00
 603 0cce C5D5592D 		vmulpd	.LC39(%rip), %ymm5, %ymm5
 603      00000000 
 604 0cd6 C52D58D7 		vaddpd	%ymm7, %ymm10, %ymm10
 605 0cda C585593D 		vmulpd	.LC34(%rip), %ymm15, %ymm7
 605      00000000 
 606 0ce2 C505593D 		vmulpd	.LC39(%rip), %ymm15, %ymm15
 606      00000000 
 607 0cea C52D58D6 		vaddpd	%ymm6, %ymm10, %ymm10
 608 0cee C5ED5935 		vmulpd	.LC33(%rip), %ymm2, %ymm6
 608      00000000 
 609 0cf6 C53D58C7 		vaddpd	%ymm7, %ymm8, %ymm8
 610 0cfa C5FD58BC 		vaddpd	1344(%rsp), %ymm0, %ymm7
 610      24400500 
 610      00
 611 0d03 C52D58D1 		vaddpd	%ymm1, %ymm10, %ymm10
 612 0d07 C5DD590D 		vmulpd	.LC32(%rip), %ymm4, %ymm1
 612      00000000 
 613 0d0f C53D58C6 		vaddpd	%ymm6, %ymm8, %ymm8
 614 0d13 C5C5543D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 614      00000000 
 615 0d1b C4417D59 		vmulpd	%ymm10, %ymm0, %ymm10
 615      D2
 616 0d20 C53D58C1 		vaddpd	%ymm1, %ymm8, %ymm8
 617 0d24 C5C5590D 		vmulpd	.LC3(%rip), %ymm7, %ymm1
 617      00000000 
 618 0d2c C52D5894 		vaddpd	1280(%rsp), %ymm10, %ymm10
 618      24000500 
 618      00
 619 0d35 C4417D59 		vmulpd	%ymm8, %ymm0, %ymm8
 619      C0
 620 0d3a C4E37D09 		vroundpd	$8, %ymm1, %ymm1
 620      C908
 621 0d40 C4E37D09 		vroundpd	$8, %ymm1, %ymm6
 621      F108
 622 0d46 C5FD11B4 		vmovupd	%ymm6, 320(%rsp)
 622      24400100 
 622      00
 623 0d4f C575590D 		vmulpd	.LC4(%rip), %ymm1, %ymm9
 623      00000000 
 624 0d57 C57B109C 		vmovsd	320(%rsp), %xmm11
 624      24400100 
 624      00
 625 0d60 C57B10A4 		vmovsd	328(%rsp), %xmm12
 625      24480100 
 625      00
 626 0d69 C4C1FB2C 		vcvttsd2siq	%xmm11, %rax
 626      C3
 627 0d6e C57B10AC 		vmovsd	336(%rsp), %xmm13
 627      24500100 
 627      00
 628 0d77 C57B10B4 		vmovsd	344(%rsp), %xmm14
GAS LISTING /tmp/ccsgyXat.s 			page 21


 628      24580100 
 628      00
 629 0d80 C441455C 		vsubpd	%ymm9, %ymm7, %ymm9
 629      C9
 630 0d85 C53D5884 		vaddpd	1312(%rsp), %ymm8, %ymm8
 630      24200500 
 630      00
 631 0d8e 48894424 		movq	%rax, 112(%rsp)
 631      70
 632 0d93 C4C1FB2C 		vcvttsd2siq	%xmm12, %rax
 632      C4
 633 0d98 C5FA7E74 		vmovq	112(%rsp), %xmm6
 633      2470
 634 0d9e C4E3C922 		vpinsrq	$1, %rax, %xmm6, %xmm6
 634      F001
 635 0da4 C4C1FB2C 		vcvttsd2siq	%xmm13, %rax
 635      C5
 636 0da9 C5F97F74 		vmovdqa	%xmm6, 112(%rsp)
 636      2470
 637 0daf C5F55935 		vmulpd	.LC5(%rip), %ymm1, %ymm6
 637      00000000 
 638 0db7 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 638      00000000 
 639 0dbf C5B55CF6 		vsubpd	%ymm6, %ymm9, %ymm6
 640 0dc3 48894424 		movq	%rax, 96(%rsp)
 640      60
 641 0dc8 C4C1FB2C 		vcvttsd2siq	%xmm14, %rax
 641      C6
 642 0dcd C57A7E6C 		vmovq	96(%rsp), %xmm13
 642      2460
 643 0dd3 C54D5CC9 		vsubpd	%ymm1, %ymm6, %ymm9
 644 0dd7 C4C13559 		vmulpd	%ymm9, %ymm9, %ymm1
 644      C9
 645 0ddc C4639122 		vpinsrq	$1, %rax, %xmm13, %xmm13
 645      E801
 646 0de2 C5797F6C 		vmovdqa	%xmm13, 96(%rsp)
 646      2460
 647 0de8 C575592D 		vmulpd	.LC9(%rip), %ymm1, %ymm13
 647      00000000 
 648 0df0 C5F559F1 		vmulpd	%ymm1, %ymm1, %ymm6
 649 0df4 C5755925 		vmulpd	.LC7(%rip), %ymm1, %ymm12
 649      00000000 
 650 0dfc C5755935 		vmulpd	.LC15(%rip), %ymm1, %ymm14
 650      00000000 
 651 0e04 C515582D 		vaddpd	.LC10(%rip), %ymm13, %ymm13
 651      00000000 
 652 0e0c C54D59DE 		vmulpd	%ymm6, %ymm6, %ymm11
 653 0e10 C51D5825 		vaddpd	.LC8(%rip), %ymm12, %ymm12
 653      00000000 
 654 0e18 C50D5835 		vaddpd	.LC16(%rip), %ymm14, %ymm14
 654      00000000 
 655 0e20 C4411559 		vmulpd	%ymm11, %ymm13, %ymm13
 655      EB
 656 0e25 C4411558 		vaddpd	%ymm12, %ymm13, %ymm13
 656      EC
 657 0e2a C5755925 		vmulpd	.LC11(%rip), %ymm1, %ymm12
 657      00000000 
GAS LISTING /tmp/ccsgyXat.s 			page 22


 658 0e32 C4410D59 		vmulpd	%ymm11, %ymm14, %ymm11
 658      DB
 659 0e37 C5796F74 		vmovdqa	112(%rsp), %xmm14
 659      2470
 660 0e3d C51D5825 		vaddpd	.LC12(%rip), %ymm12, %ymm12
 660      00000000 
 661 0e45 C51D59E6 		vmulpd	%ymm6, %ymm12, %ymm12
 662 0e49 C4411D58 		vaddpd	%ymm13, %ymm12, %ymm12
 662      E5
 663 0e4e C575592D 		vmulpd	.LC13(%rip), %ymm1, %ymm13
 663      00000000 
 664 0e56 C515582D 		vaddpd	.LC14(%rip), %ymm13, %ymm13
 664      00000000 
 665 0e5e C4412558 		vaddpd	%ymm13, %ymm11, %ymm13
 665      ED
 666 0e63 C575591D 		vmulpd	.LC17(%rip), %ymm1, %ymm11
 666      00000000 
 667 0e6b C525581D 		vaddpd	.LC18(%rip), %ymm11, %ymm11
 667      00000000 
 668 0e73 C52559DE 		vmulpd	%ymm6, %ymm11, %ymm11
 669 0e77 C4412558 		vaddpd	%ymm13, %ymm11, %ymm13
 669      ED
 670 0e7c C53559D9 		vmulpd	%ymm1, %ymm9, %ymm11
 671 0e80 C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 671      00000000 
 672 0e88 C4C14D59 		vmulpd	%ymm13, %ymm6, %ymm6
 672      F5
 673 0e8d C5796F6C 		vmovdqa	96(%rsp), %xmm13
 673      2460
 674 0e93 C4412559 		vmulpd	%ymm12, %ymm11, %ymm11
 674      DC
 675 0e98 C57D2825 		vmovapd	.LC20(%rip), %ymm12
 675      00000000 
 676 0ea0 C59D5CC9 		vsubpd	%ymm1, %ymm12, %ymm1
 677 0ea4 C44119EF 		vpxor	%xmm12, %xmm12, %xmm12
 677      E4
 678 0ea9 C4412558 		vaddpd	%ymm9, %ymm11, %ymm9
 678      C9
 679 0eae C511DB1D 		vpand	.LC21(%rip), %xmm13, %xmm11
 679      00000000 
 680 0eb6 C5CD58F1 		vaddpd	%ymm1, %ymm6, %ymm6
 681 0eba C5F96F0D 		vmovdqa	.LC21(%rip), %xmm1
 681      00000000 
 682 0ec2 C4422129 		vpcmpeqq	%xmm12, %xmm11, %xmm11
 682      DC
 683 0ec7 C4C171DB 		vpand	%xmm14, %xmm1, %xmm1
 683      CE
 684 0ecc C521EF1D 		vpxor	.LC105(%rip), %xmm11, %xmm11
 684      00000000 
 685 0ed4 C4C27129 		vpcmpeqq	%xmm12, %xmm1, %xmm1
 685      CC
 686 0ed9 C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm12
 686      25000000 
 686      00
 687 0ee2 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 687      00000000 
 688 0eea C4C37518 		vinsertf128	$0x1, %xmm11, %ymm1, %ymm1
GAS LISTING /tmp/ccsgyXat.s 			page 23


 688      CB01
 689 0ef0 C4620937 		vpcmpgtq	.LC22(%rip), %xmm14, %xmm11
 689      1D000000 
 689      00
 690 0ef9 C4432518 		vinsertf128	$0x1, %xmm12, %ymm11, %ymm11
 690      DC01
 691 0eff C4C37D19 		vextractf128	$0x1, %ymm7, %xmm12
 691      FC01
 692 0f05 C5C173F7 		vpsllq	$1, %xmm7, %xmm7
 692      01
 693 0f0a C5C1DB3D 		vpand	.LC23(%rip), %xmm7, %xmm7
 693      00000000 
 694 0f12 C4C11973 		vpsllq	$1, %xmm12, %xmm12
 694      F401
 695 0f18 C519DB25 		vpand	.LC23(%rip), %xmm12, %xmm12
 695      00000000 
 696 0f20 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 696      3D000000 
 696      00
 697 0f29 C4621929 		vpcmpeqq	.LC23(%rip), %xmm12, %xmm12
 697      25000000 
 697      00
 698 0f32 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 698      00000000 
 699 0f3a C519EF25 		vpxor	.LC105(%rip), %xmm12, %xmm12
 699      00000000 
 700 0f42 C4C34518 		vinsertf128	$0x1, %xmm12, %ymm7, %ymm7
 700      FC01
 701 0f48 C4411957 		vxorpd	%xmm12, %xmm12, %xmm12
 701      E4
 702 0f4d C5A554FF 		vandpd	%ymm7, %ymm11, %ymm7
 703 0f51 C509D41D 		vpaddq	.LC21(%rip), %xmm14, %xmm11
 703      00000000 
 704 0f59 C57D2835 		vmovapd	.LC20(%rip), %ymm14
 704      00000000 
 705 0f61 C521DB1D 		vpand	.LC24(%rip), %xmm11, %xmm11
 705      00000000 
 706 0f69 C443354B 		vblendvpd	%ymm7, %ymm12, %ymm9, %ymm9
 706      CC70
 707 0f6f C4E34D4B 		vblendvpd	%ymm7, .LC20(%rip), %ymm6, %ymm7
 707      3D000000 
 707      0070
 708 0f79 C591D435 		vpaddq	.LC21(%rip), %xmm13, %xmm6
 708      00000000 
 709 0f81 C5C9DB35 		vpand	.LC24(%rip), %xmm6, %xmm6
 709      00000000 
 710 0f89 C4C3454B 		vblendvpd	%ymm1, %ymm9, %ymm7, %ymm1
 710      C910
 711 0f8f C5FD28BC 		vmovapd	128(%rsp), %ymm7
 711      24800000 
 711      00
 712 0f98 C4C12173 		vpsllq	$62, %xmm11, %xmm11
 712      F33E
 713 0f9e C5C5593D 		vmulpd	.LC38(%rip), %ymm7, %ymm7
 713      00000000 
 714 0fa6 C5C973F6 		vpsllq	$62, %xmm6, %xmm6
 714      3E
GAS LISTING /tmp/ccsgyXat.s 			page 24


 715 0fab C4632518 		vinsertf128	$0x1, %xmm6, %ymm11, %ymm11
 715      DE01
 716 0fb1 C5BD59B4 		vmulpd	1440(%rsp), %ymm8, %ymm6
 716      24A00500 
 716      00
 717 0fba C4C17557 		vxorpd	%ymm11, %ymm1, %ymm1
 717      CB
 718 0fbf C4412D59 		vmulpd	%ymm10, %ymm10, %ymm11
 718      DA
 719 0fc4 C5F5590D 		vmulpd	.LC25(%rip), %ymm1, %ymm1
 719      00000000 
 720 0fcc C4410D5C 		vsubpd	%ymm11, %ymm14, %ymm11
 720      DB
 721 0fd1 C57D2835 		vmovapd	.LC40(%rip), %ymm14
 721      00000000 
 722 0fd9 C50D598C 		vmulpd	1056(%rsp), %ymm14, %ymm9
 722      24200400 
 722      00
 723 0fe2 C4412D59 		vmulpd	%ymm11, %ymm10, %ymm11
 723      DB
 724 0fe7 C50D5994 		vmulpd	1024(%rsp), %ymm14, %ymm10
 724      24000400 
 724      00
 725 0ff0 C4413558 		vaddpd	%ymm15, %ymm9, %ymm9
 725      CF
 726 0ff5 C5255CDE 		vsubpd	%ymm6, %ymm11, %ymm11
 727 0ff9 C5E55935 		vmulpd	.LC37(%rip), %ymm3, %ymm6
 727      00000000 
 728 1001 C52D58D5 		vaddpd	%ymm5, %ymm10, %ymm10
 729 1005 C5DD592D 		vmulpd	.LC37(%rip), %ymm4, %ymm5
 729      00000000 
 730 100d C52558D9 		vaddpd	%ymm1, %ymm11, %ymm11
 731 1011 C5BD590D 		vmulpd	.LC36(%rip), %ymm8, %ymm1
 731      00000000 
 732 1019 C52D58D7 		vaddpd	%ymm7, %ymm10, %ymm10
 733 101d C52D58D6 		vaddpd	%ymm6, %ymm10, %ymm10
 734 1021 C5ED5935 		vmulpd	.LC38(%rip), %ymm2, %ymm6
 734      00000000 
 735 1029 C52D58D1 		vaddpd	%ymm1, %ymm10, %ymm10
 736 102d C5A5590D 		vmulpd	.LC36(%rip), %ymm11, %ymm1
 736      00000000 
 737 1035 C53558CE 		vaddpd	%ymm6, %ymm9, %ymm9
 738 1039 C5FD5935 		vmulpd	.LC41(%rip), %ymm0, %ymm6
 738      00000000 
 739 1041 C4417D59 		vmulpd	%ymm10, %ymm0, %ymm10
 739      D2
 740 1046 C53558CD 		vaddpd	%ymm5, %ymm9, %ymm9
 741 104a C5CD58B4 		vaddpd	1344(%rsp), %ymm6, %ymm6
 741      24400500 
 741      00
 742 1053 C53558C9 		vaddpd	%ymm1, %ymm9, %ymm9
 743 1057 C52D5894 		vaddpd	1280(%rsp), %ymm10, %ymm10
 743      24000500 
 743      00
 744 1060 C4417D59 		vmulpd	%ymm9, %ymm0, %ymm9
 744      C9
 745 1065 C535588C 		vaddpd	1312(%rsp), %ymm9, %ymm9
GAS LISTING /tmp/ccsgyXat.s 			page 25


 745      24200500 
 745      00
 746 106e C5FD29B4 		vmovapd	%ymm6, 1376(%rsp)
 746      24600500 
 746      00
 747 1077 C5CD5435 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 747      00000000 
 748 107f C5CD590D 		vmulpd	.LC3(%rip), %ymm6, %ymm1
 748      00000000 
 749 1087 C4E37D09 		vroundpd	$8, %ymm1, %ymm1
 749      C908
 750 108d C4E37D09 		vroundpd	$8, %ymm1, %ymm5
 750      E908
 751 1093 C5FD11AC 		vmovupd	%ymm5, 352(%rsp)
 751      24600100 
 751      00
 752 109c C57B10BC 		vmovsd	352(%rsp), %xmm15
 752      24600100 
 752      00
 753 10a5 C5FB10AC 		vmovsd	360(%rsp), %xmm5
 753      24680100 
 753      00
 754 10ae C4C1FB2C 		vcvttsd2siq	%xmm15, %rax
 754      C7
 755 10b3 C5FB10BC 		vmovsd	368(%rsp), %xmm7
 755      24700100 
 755      00
 756 10bc C57B10A4 		vmovsd	376(%rsp), %xmm12
 756      24780100 
 756      00
 757 10c5 48894424 		movq	%rax, 112(%rsp)
 757      70
 758 10ca C4E1FB2C 		vcvttsd2siq	%xmm5, %rax
 758      C5
 759 10cf C5FA7E6C 		vmovq	112(%rsp), %xmm5
 759      2470
 760 10d5 C4E3D122 		vpinsrq	$1, %rax, %xmm5, %xmm5
 760      E801
 761 10db C4E1FB2C 		vcvttsd2siq	%xmm7, %rax
 761      C7
 762 10e0 C5F5593D 		vmulpd	.LC4(%rip), %ymm1, %ymm7
 762      00000000 
 763 10e8 C5F97F6C 		vmovdqa	%xmm5, 112(%rsp)
 763      2470
 764 10ee C5F5592D 		vmulpd	.LC5(%rip), %ymm1, %ymm5
 764      00000000 
 765 10f6 C5F5590D 		vmulpd	.LC6(%rip), %ymm1, %ymm1
 765      00000000 
 766 10fe C5CD5CFF 		vsubpd	%ymm7, %ymm6, %ymm7
 767 1102 48894424 		movq	%rax, 96(%rsp)
 767      60
 768 1107 C4C1FB2C 		vcvttsd2siq	%xmm12, %rax
 768      C4
 769 110c C57A7E6C 		vmovq	96(%rsp), %xmm13
 769      2460
 770 1112 C5C55CED 		vsubpd	%ymm5, %ymm7, %ymm5
 771 1116 C5D55CF9 		vsubpd	%ymm1, %ymm5, %ymm7
GAS LISTING /tmp/ccsgyXat.s 			page 26


 772 111a C4639122 		vpinsrq	$1, %rax, %xmm13, %xmm13
 772      E801
 773 1120 C5C559CF 		vmulpd	%ymm7, %ymm7, %ymm1
 774 1124 C5797F6C 		vmovdqa	%xmm13, 96(%rsp)
 774      2460
 775 112a C5F559E9 		vmulpd	%ymm1, %ymm1, %ymm5
 776 112e C5755935 		vmulpd	.LC9(%rip), %ymm1, %ymm14
 776      00000000 
 777 1136 C575592D 		vmulpd	.LC7(%rip), %ymm1, %ymm13
 777      00000000 
 778 113e C55559E5 		vmulpd	%ymm5, %ymm5, %ymm12
 779 1142 C575593D 		vmulpd	.LC15(%rip), %ymm1, %ymm15
 779      00000000 
 780 114a C50D5835 		vaddpd	.LC10(%rip), %ymm14, %ymm14
 780      00000000 
 781 1152 C515582D 		vaddpd	.LC8(%rip), %ymm13, %ymm13
 781      00000000 
 782 115a C505583D 		vaddpd	.LC16(%rip), %ymm15, %ymm15
 782      00000000 
 783 1162 C4410D59 		vmulpd	%ymm12, %ymm14, %ymm14
 783      F4
 784 1167 C4410D58 		vaddpd	%ymm13, %ymm14, %ymm14
 784      F5
 785 116c C575592D 		vmulpd	.LC11(%rip), %ymm1, %ymm13
 785      00000000 
 786 1174 C4410559 		vmulpd	%ymm12, %ymm15, %ymm12
 786      E4
 787 1179 C44101EF 		vpxor	%xmm15, %xmm15, %xmm15
 787      FF
 788 117e C515582D 		vaddpd	.LC12(%rip), %ymm13, %ymm13
 788      00000000 
 789 1186 C51559ED 		vmulpd	%ymm5, %ymm13, %ymm13
 790 118a C4411558 		vaddpd	%ymm14, %ymm13, %ymm13
 790      EE
 791 118f C5755935 		vmulpd	.LC13(%rip), %ymm1, %ymm14
 791      00000000 
 792 1197 C50D5835 		vaddpd	.LC14(%rip), %ymm14, %ymm14
 792      00000000 
 793 119f C4411D58 		vaddpd	%ymm14, %ymm12, %ymm14
 793      F6
 794 11a4 C5755925 		vmulpd	.LC17(%rip), %ymm1, %ymm12
 794      00000000 
 795 11ac C51D5825 		vaddpd	.LC18(%rip), %ymm12, %ymm12
 795      00000000 
 796 11b4 C51D59E5 		vmulpd	%ymm5, %ymm12, %ymm12
 797 11b8 C4411D58 		vaddpd	%ymm14, %ymm12, %ymm14
 797      F6
 798 11bd C54559E1 		vmulpd	%ymm1, %ymm7, %ymm12
 799 11c1 C5F5590D 		vmulpd	.LC19(%rip), %ymm1, %ymm1
 799      00000000 
 800 11c9 C4C15559 		vmulpd	%ymm14, %ymm5, %ymm5
 800      EE
 801 11ce C5796F74 		vmovdqa	112(%rsp), %xmm14
 801      2470
 802 11d4 C4411D59 		vmulpd	%ymm13, %ymm12, %ymm12
 802      E5
 803 11d9 C5796F6C 		vmovdqa	96(%rsp), %xmm13
GAS LISTING /tmp/ccsgyXat.s 			page 27


 803      2460
 804 11df C59D58FF 		vaddpd	%ymm7, %ymm12, %ymm7
 805 11e3 C57D2825 		vmovapd	.LC20(%rip), %ymm12
 805      00000000 
 806 11eb C59D5CC9 		vsubpd	%ymm1, %ymm12, %ymm1
 807 11ef C511DB25 		vpand	.LC21(%rip), %xmm13, %xmm12
 807      00000000 
 808 11f7 C5D558E9 		vaddpd	%ymm1, %ymm5, %ymm5
 809 11fb C5F96F0D 		vmovdqa	.LC21(%rip), %xmm1
 809      00000000 
 810 1203 C4421929 		vpcmpeqq	%xmm15, %xmm12, %xmm12
 810      E7
 811 1208 C4C171DB 		vpand	%xmm14, %xmm1, %xmm1
 811      CE
 812 120d C519EF25 		vpxor	.LC105(%rip), %xmm12, %xmm12
 812      00000000 
 813 1215 C4C27129 		vpcmpeqq	%xmm15, %xmm1, %xmm1
 813      CF
 814 121a C441796F 		vmovdqa	%xmm13, %xmm15
 814      FD
 815 121f C4621137 		vpcmpgtq	.LC22(%rip), %xmm13, %xmm13
 815      2D000000 
 815      00
 816 1228 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 816      00000000 
 817 1230 C4C37518 		vinsertf128	$0x1, %xmm12, %ymm1, %ymm1
 817      CC01
 818 1236 C4620937 		vpcmpgtq	.LC22(%rip), %xmm14, %xmm12
 818      25000000 
 818      00
 819 123f C4431D18 		vinsertf128	$0x1, %xmm13, %ymm12, %ymm12
 819      E501
 820 1245 C4C37D19 		vextractf128	$0x1, %ymm6, %xmm13
 820      F501
 821 124b C5C973F6 		vpsllq	$1, %xmm6, %xmm6
 821      01
 822 1250 C5C9DB35 		vpand	.LC23(%rip), %xmm6, %xmm6
 822      00000000 
 823 1258 C4C11173 		vpsllq	$1, %xmm13, %xmm13
 823      F501
 824 125e C511DB2D 		vpand	.LC23(%rip), %xmm13, %xmm13
 824      00000000 
 825 1266 C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 825      35000000 
 825      00
 826 126f C4621129 		vpcmpeqq	.LC23(%rip), %xmm13, %xmm13
 826      2D000000 
 826      00
 827 1278 C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 827      00000000 
 828 1280 C511EF2D 		vpxor	.LC105(%rip), %xmm13, %xmm13
 828      00000000 
 829 1288 C4C34D18 		vinsertf128	$0x1, %xmm13, %ymm6, %ymm6
 829      F501
 830 128e C4411157 		vxorpd	%xmm13, %xmm13, %xmm13
 830      ED
 831 1293 C59D54F6 		vandpd	%ymm6, %ymm12, %ymm6
GAS LISTING /tmp/ccsgyXat.s 			page 28


 832 1297 C509D425 		vpaddq	.LC21(%rip), %xmm14, %xmm12
 832      00000000 
 833 129f C57D2835 		vmovapd	.LC20(%rip), %ymm14
 833      00000000 
 834 12a7 C519DB25 		vpand	.LC24(%rip), %xmm12, %xmm12
 834      00000000 
 835 12af C4E3554B 		vblendvpd	%ymm6, .LC20(%rip), %ymm5, %ymm5
 835      2D000000 
 835      0060
 836 12b9 C4C3454B 		vblendvpd	%ymm6, %ymm13, %ymm7, %ymm7
 836      FD60
 837 12bf C5B559B4 		vmulpd	1440(%rsp), %ymm9, %ymm6
 837      24A00500 
 837      00
 838 12c8 C4E3554B 		vblendvpd	%ymm1, %ymm7, %ymm5, %ymm7
 838      FF10
 839 12ce C581D40D 		vpaddq	.LC21(%rip), %xmm15, %xmm1
 839      00000000 
 840 12d6 C57D28BC 		vmovapd	128(%rsp), %ymm15
 840      24800000 
 840      00
 841 12df C5F1DB0D 		vpand	.LC24(%rip), %xmm1, %xmm1
 841      00000000 
 842 12e7 C4C11973 		vpsllq	$62, %xmm12, %xmm12
 842      F43E
 843 12ed C5F173F1 		vpsllq	$62, %xmm1, %xmm1
 843      3E
 844 12f2 C4631D18 		vinsertf128	$0x1, %xmm1, %ymm12, %ymm12
 844      E101
 845 12f8 C4C12D59 		vmulpd	%ymm10, %ymm10, %ymm1
 845      CA
 846 12fd C4C14557 		vxorpd	%ymm12, %ymm7, %ymm5
 846      EC
 847 1302 C5E5593D 		vmulpd	.LC43(%rip), %ymm3, %ymm7
 847      00000000 
 848 130a C58D5CC9 		vsubpd	%ymm1, %ymm14, %ymm1
 849 130e C57D2835 		vmovapd	.LC45(%rip), %ymm14
 849      00000000 
 850 1316 C5D5592D 		vmulpd	.LC25(%rip), %ymm5, %ymm5
 850      00000000 
 851 131e C5AD59C9 		vmulpd	%ymm1, %ymm10, %ymm1
 852 1322 C50D5994 		vmulpd	1024(%rsp), %ymm14, %ymm10
 852      24000400 
 852      00
 853 132b C5F55CCE 		vsubpd	%ymm6, %ymm1, %ymm1
 854 132f C5B55935 		vmulpd	.LC42(%rip), %ymm9, %ymm6
 854      00000000 
 855 1337 C5F558CD 		vaddpd	%ymm5, %ymm1, %ymm1
 856 133b C5FD282D 		vmovapd	.LC44(%rip), %ymm5
 856      00000000 
 857 1343 C4C15559 		vmulpd	%ymm15, %ymm5, %ymm5
 857      EF
 858 1348 C5AD58ED 		vaddpd	%ymm5, %ymm10, %ymm5
 859 134c C5D558EF 		vaddpd	%ymm7, %ymm5, %ymm5
 860 1350 C5D558EE 		vaddpd	%ymm6, %ymm5, %ymm5
 861 1354 C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 862 1358 C5D558AC 		vaddpd	1280(%rsp), %ymm5, %ymm5
GAS LISTING /tmp/ccsgyXat.s 			page 29


 862      24000500 
 862      00
 863 1361 C5FD29AC 		vmovapd	%ymm5, 1216(%rsp)
 863      24C00400 
 863      00
 864 136a C5855935 		vmulpd	.LC49(%rip), %ymm15, %ymm6
 864      00000000 
 865 1372 C5FD283D 		vmovapd	.LC50(%rip), %ymm7
 865      00000000 
 866 137a C5C559BC 		vmulpd	1024(%rsp), %ymm7, %ymm7
 866      24000400 
 866      00
 867 1383 C5E5591D 		vmulpd	.LC48(%rip), %ymm3, %ymm3
 867      00000000 
 868 138b C53D5905 		vmulpd	.LC47(%rip), %ymm8, %ymm8
 868      00000000 
 869 1393 C5D5542D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 869      00000000 
 870 139b C5C558F6 		vaddpd	%ymm6, %ymm7, %ymm6
 871 139f C535590D 		vmulpd	.LC46(%rip), %ymm9, %ymm9
 871      00000000 
 872 13a7 C5DD593D 		vmulpd	.LC43(%rip), %ymm4, %ymm7
 872      00000000 
 873 13af C5CD58DB 		vaddpd	%ymm3, %ymm6, %ymm3
 874 13b3 C5D5592D 		vmulpd	.LC51(%rip), %ymm5, %ymm5
 874      00000000 
 875 13bb C5F55935 		vmulpd	.LC42(%rip), %ymm1, %ymm6
 875      00000000 
 876 13c3 C4C16558 		vaddpd	%ymm8, %ymm3, %ymm3
 876      D8
 877 13c8 C50D5984 		vmulpd	1056(%rsp), %ymm14, %ymm8
 877      24200400 
 877      00
 878 13d1 C5D5582D 		vaddpd	.LC51(%rip), %ymm5, %ymm5
 878      00000000 
 879 13d9 C5DD5925 		vmulpd	.LC48(%rip), %ymm4, %ymm4
 879      00000000 
 880 13e1 C4C16558 		vaddpd	%ymm9, %ymm3, %ymm3
 880      D9
 881 13e6 C525591D 		vmulpd	.LC47(%rip), %ymm11, %ymm11
 881      00000000 
 882 13ee C5F5590D 		vmulpd	.LC46(%rip), %ymm1, %ymm1
 882      00000000 
 883 13f6 C5E559D8 		vmulpd	%ymm0, %ymm3, %ymm3
 884 13fa C5FD299C 		vmovapd	%ymm3, 832(%rsp)
 884      24400300 
 884      00
 885 1403 C5D55EDB 		vdivpd	%ymm3, %ymm5, %ymm3
 886 1407 C5ED592D 		vmulpd	.LC44(%rip), %ymm2, %ymm5
 886      00000000 
 887 140f C5ED5915 		vmulpd	.LC49(%rip), %ymm2, %ymm2
 887      00000000 
 888 1417 C5BD58ED 		vaddpd	%ymm5, %ymm8, %ymm5
 889 141b C5E5541D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 889      00000000 
 890 1423 C5D558EF 		vaddpd	%ymm7, %ymm5, %ymm5
 891 1427 C5FD283D 		vmovapd	.LC50(%rip), %ymm7
GAS LISTING /tmp/ccsgyXat.s 			page 30


 891      00000000 
 892 142f C5D558EE 		vaddpd	%ymm6, %ymm5, %ymm5
 893 1433 C5C559B4 		vmulpd	1056(%rsp), %ymm7, %ymm6
 893      24200400 
 893      00
 894 143c C5D559E8 		vmulpd	%ymm0, %ymm5, %ymm5
 895 1440 C5CD58D2 		vaddpd	%ymm2, %ymm6, %ymm2
 896 1444 C5D558AC 		vaddpd	1312(%rsp), %ymm5, %ymm5
 896      24200500 
 896      00
 897 144d C5ED58E4 		vaddpd	%ymm4, %ymm2, %ymm4
 898 1451 C5D55415 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 898      00000000 
 899 1459 C5FD29AC 		vmovapd	%ymm5, 1248(%rsp)
 899      24E00400 
 899      00
 900 1462 C4415D58 		vaddpd	%ymm11, %ymm4, %ymm11
 900      DB
 901 1467 C5ED5915 		vmulpd	.LC51(%rip), %ymm2, %ymm2
 901      00000000 
 902 146f C5A558C9 		vaddpd	%ymm1, %ymm11, %ymm1
 903 1473 C5F559C8 		vmulpd	%ymm0, %ymm1, %ymm1
 904 1477 C5ED5815 		vaddpd	.LC51(%rip), %ymm2, %ymm2
 904      00000000 
 905 147f C5FD298C 		vmovapd	%ymm1, 864(%rsp)
 905      24600300 
 905      00
 906 1488 C5ED5EC9 		vdivpd	%ymm1, %ymm2, %ymm1
 907 148c C5FD2994 		vmovapd	%ymm2, 928(%rsp)
 907      24A00300 
 907      00
 908 1495 C5F5540D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 908      00000000 
 909 149d C5E55DD9 		vminpd	%ymm1, %ymm3, %ymm3
 910 14a1 C5FD298C 		vmovapd	%ymm1, 992(%rsp)
 910      24E00300 
 910      00
 911 14aa C4E37D19 		vextractf128	$0x1, %ymm3, %xmm5
 911      DD01
 912 14b0 C5FD299C 		vmovapd	%ymm3, 896(%rsp)
 912      24800300 
 912      00
 913 14b9 C5F928E3 		vmovapd	%xmm3, %xmm4
 914 14bd C5D1DB15 		vpand	.LC52(%rip), %xmm5, %xmm2
 914      00000000 
 915 14c5 C5C973D4 		vpsrlq	$52, %xmm4, %xmm6
 915      34
 916 14ca C5D9DB0D 		vpand	.LC52(%rip), %xmm4, %xmm1
 916      00000000 
 917 14d2 C5C9EB35 		vpor	.LC54(%rip), %xmm6, %xmm6
 917      00000000 
 918 14da C5E9EB15 		vpor	.LC53(%rip), %xmm2, %xmm2
 918      00000000 
 919 14e2 C5F1EB0D 		vpor	.LC53(%rip), %xmm1, %xmm1
 919      00000000 
 920 14ea C4E37518 		vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
 920      CA01
GAS LISTING /tmp/ccsgyXat.s 			page 31


 921 14f0 C5E973D5 		vpsrlq	$52, %xmm5, %xmm2
 921      34
 922 14f5 C5E9EB15 		vpor	.LC54(%rip), %xmm2, %xmm2
 922      00000000 
 923 14fd C4E34D18 		vinsertf128	$0x1, %xmm2, %ymm6, %ymm6
 923      F201
 924 1503 C5FD2815 		vmovapd	.LC56(%rip), %ymm2
 924      00000000 
 925 150b C5EDC2D1 		vcmppd	$1, %ymm1, %ymm2, %ymm2
 925      01
 926 1510 C5CD5C35 		vsubpd	.LC55(%rip), %ymm6, %ymm6
 926      00000000 
 927 1518 C4C37D19 		vextractf128	$0x1, %ymm2, %xmm8
 927      D001
 928 151e C5F928FA 		vmovapd	%xmm2, %xmm7
 929 1522 C5ED5415 		vandpd	.LC20(%rip), %ymm2, %ymm2
 929      00000000 
 930 152a C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 930      00000000 
 931 1532 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 931      00000000 
 932 153a C5CD58F2 		vaddpd	%ymm2, %ymm6, %ymm6
 933 153e C4C34518 		vinsertf128	$0x1, %xmm8, %ymm7, %ymm7
 933      F801
 934 1544 C5C554F9 		vandpd	%ymm1, %ymm7, %ymm7
 935 1548 C5C558C9 		vaddpd	%ymm1, %ymm7, %ymm1
 936 154c C5F55C0D 		vsubpd	.LC20(%rip), %ymm1, %ymm1
 936      00000000 
 937 1554 C5755905 		vmulpd	.LC59(%rip), %ymm1, %ymm8
 937      00000000 
 938 155c C5755815 		vaddpd	.LC65(%rip), %ymm1, %ymm10
 938      00000000 
 939 1564 C5F559D1 		vmulpd	%ymm1, %ymm1, %ymm2
 940 1568 C575590D 		vmulpd	.LC57(%rip), %ymm1, %ymm9
 940      00000000 
 941 1570 C53D5805 		vaddpd	.LC60(%rip), %ymm8, %ymm8
 941      00000000 
 942 1578 C5ED59FA 		vmulpd	%ymm2, %ymm2, %ymm7
 943 157c C535580D 		vaddpd	.LC58(%rip), %ymm9, %ymm9
 943      00000000 
 944 1584 C53D59C7 		vmulpd	%ymm7, %ymm8, %ymm8
 945 1588 C5AD59FF 		vmulpd	%ymm7, %ymm10, %ymm7
 946 158c C4413D58 		vaddpd	%ymm9, %ymm8, %ymm8
 946      C1
 947 1591 C575590D 		vmulpd	.LC61(%rip), %ymm1, %ymm9
 947      00000000 
 948 1599 C535580D 		vaddpd	.LC62(%rip), %ymm9, %ymm9
 948      00000000 
 949 15a1 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 950 15a5 C4413558 		vaddpd	%ymm8, %ymm9, %ymm9
 950      C8
 951 15aa C57559C2 		vmulpd	%ymm2, %ymm1, %ymm8
 952 15ae C4413559 		vmulpd	%ymm8, %ymm9, %ymm8
 952      C0
 953 15b3 C575590D 		vmulpd	.LC63(%rip), %ymm1, %ymm9
 953      00000000 
 954 15bb C535580D 		vaddpd	.LC64(%rip), %ymm9, %ymm9
GAS LISTING /tmp/ccsgyXat.s 			page 32


 954      00000000 
 955 15c3 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 955      F9
 956 15c8 C575590D 		vmulpd	.LC66(%rip), %ymm1, %ymm9
 956      00000000 
 957 15d0 C535580D 		vaddpd	.LC67(%rip), %ymm9, %ymm9
 957      00000000 
 958 15d8 C53559CA 		vmulpd	%ymm2, %ymm9, %ymm9
 959 15dc C5ED5915 		vmulpd	.LC19(%rip), %ymm2, %ymm2
 959      00000000 
 960 15e4 C5B558FF 		vaddpd	%ymm7, %ymm9, %ymm7
 961 15e8 C5B173F5 		vpsllq	$1, %xmm5, %xmm9
 961      01
 962 15ed C5F55CCA 		vsubpd	%ymm2, %ymm1, %ymm1
 963 15f1 C5BD5EFF 		vdivpd	%ymm7, %ymm8, %ymm7
 964 15f5 C54D5905 		vmulpd	.LC68(%rip), %ymm6, %ymm8
 964      00000000 
 965 15fd C5CD5915 		vmulpd	.LC69(%rip), %ymm6, %ymm2
 965      00000000 
 966 1605 C5B1DB35 		vpand	.LC23(%rip), %xmm9, %xmm6
 966      00000000 
 967 160d C5BD58FF 		vaddpd	%ymm7, %ymm8, %ymm7
 968 1611 C5B973F4 		vpsllq	$1, %xmm4, %xmm8
 968      01
 969 1616 C4E24929 		vpcmpeqq	.LC23(%rip), %xmm6, %xmm6
 969      35000000 
 969      00
 970 161f C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 970      00000000 
 971 1627 C5C558C9 		vaddpd	%ymm1, %ymm7, %ymm1
 972 162b C5B9DB3D 		vpand	.LC23(%rip), %xmm8, %xmm7
 972      00000000 
 973 1633 C5ED58D1 		vaddpd	%ymm1, %ymm2, %ymm2
 974 1637 C4E24129 		vpcmpeqq	.LC23(%rip), %xmm7, %xmm7
 974      3D000000 
 974      00
 975 1640 C5C1EF3D 		vpxor	.LC105(%rip), %xmm7, %xmm7
 975      00000000 
 976 1648 C4E34518 		vinsertf128	$0x1, %xmm6, %ymm7, %ymm7
 976      FE01
 977 164e C4C37D19 		vextractf128	$0x1, %ymm7, %xmm10
 977      FA01
 978 1654 C5F928F7 		vmovapd	%xmm7, %xmm6
 979 1658 C5E5C23D 		vcmppd	$1, .LC70(%rip), %ymm3, %ymm7
 979      00000000 
 979      01
 980 1661 C529EF15 		vpxor	.LC105(%rip), %xmm10, %xmm10
 980      00000000 
 981 1669 C5C9EF35 		vpxor	.LC105(%rip), %xmm6, %xmm6
 981      00000000 
 982 1671 C4C34D18 		vinsertf128	$0x1, %xmm10, %ymm6, %ymm6
 982      F201
 983 1677 C57D28DE 		vmovapd	%ymm6, %ymm11
 984 167b C5C556F6 		vorpd	%ymm6, %ymm7, %ymm6
 985 167f C4C37D19 		vextractf128	$0x1, %ymm6, %xmm10
 985      F201
 986 1685 C4C14956 		vorpd	%xmm10, %xmm6, %xmm6
GAS LISTING /tmp/ccsgyXat.s 			page 33


 986      F2
 987 168a C5F950C6 		vmovmskpd	%xmm6, %eax
 988 168e 85C0     		testl	%eax, %eax
 989 1690 0F848700 		je	.L14
 989      0000
 990 1696 C5D1DB0D 		vpand	.LC73(%rip), %xmm5, %xmm1
 990      00000000 
 991 169e C4E36D4B 		vblendvpd	%ymm7, .LC71(%rip), %ymm2, %ymm2
 991      15000000 
 991      0070
 992 16a8 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 992      1F
 993 16ad C4623129 		vpcmpeqq	.LC23(%rip), %xmm9, %xmm9
 993      0D000000 
 993      00
 994 16b6 C5D9DB35 		vpand	.LC73(%rip), %xmm4, %xmm6
 994      00000000 
 995 16be C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 995      1F
 996 16c3 C5C1EFFF 		vpxor	%xmm7, %xmm7, %xmm7
 997 16c7 C4E27129 		vpcmpeqq	%xmm7, %xmm1, %xmm1
 997      CF
 998 16cc C4E24929 		vpcmpeqq	%xmm7, %xmm6, %xmm6
 998      F7
 999 16d1 C4E34D18 		vinsertf128	$0x1, %xmm1, %ymm6, %ymm1
 999      C901
 1000 16d7 C4E36D4B 		vblendvpd	%ymm1, (%rsp), %ymm2, %ymm1
 1000      0C2410
 1001 16de C4E23929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm2
 1001      15000000 
 1001      00
 1002 16e7 C463754B 		vblendvpd	%ymm11, %ymm3, %ymm1, %ymm11
 1002      DBB0
 1003 16ed C5F173D5 		vpsrlq	$32, %xmm5, %xmm1
 1003      20
 1004 16f2 C4E3710E 		vpblendw	$204, %xmm5, %xmm1, %xmm5
 1004      EDCC
 1005 16f8 C5F173D4 		vpsrlq	$32, %xmm4, %xmm1
 1005      20
 1006 16fd C4E3710E 		vpblendw	$204, %xmm4, %xmm1, %xmm1
 1006      CCCC
 1007 1703 C4C36D18 		vinsertf128	$0x1, %xmm9, %ymm2, %ymm2
 1007      D101
 1008 1709 C4E37518 		vinsertf128	$0x1, %xmm5, %ymm1, %ymm1
 1008      CD01
 1009 170f C5ED54D1 		vandpd	%ymm1, %ymm2, %ymm2
 1010 1713 C4E3254B 		vblendvpd	%ymm2, .LC71(%rip), %ymm11, %ymm2
 1010      15000000 
 1010      0020
 1011              	.L14:
 1012 171d C5ED5915 		vmulpd	.LC26(%rip), %ymm2, %ymm2
 1012      00000000 
 1013 1725 C5ED5935 		vmulpd	.LC74(%rip), %ymm2, %ymm6
 1013      00000000 
 1014 172d C4E37D09 		vroundpd	$8, %ymm6, %ymm6
 1014      F608
 1015 1733 C5CD5925 		vmulpd	.LC75(%rip), %ymm6, %ymm4
GAS LISTING /tmp/ccsgyXat.s 			page 34


 1015      00000000 
 1016 173b C5CD590D 		vmulpd	.LC76(%rip), %ymm6, %ymm1
 1016      00000000 
 1017 1743 C5CD5835 		vaddpd	.LC55(%rip), %ymm6, %ymm6
 1017      00000000 
 1018 174b C5ED5CE4 		vsubpd	%ymm4, %ymm2, %ymm4
 1019 174f C5DD5CC9 		vsubpd	%ymm1, %ymm4, %ymm1
 1020 1753 C5F5593D 		vmulpd	.LC80(%rip), %ymm1, %ymm7
 1020      00000000 
 1021 175b C575590D 		vmulpd	.LC77(%rip), %ymm1, %ymm9
 1021      00000000 
 1022 1763 C5755915 		vmulpd	.LC78(%rip), %ymm1, %ymm10
 1022      00000000 
 1023 176b C5F559E1 		vmulpd	%ymm1, %ymm1, %ymm4
 1024 176f C5C5583D 		vaddpd	.LC81(%rip), %ymm7, %ymm7
 1024      00000000 
 1025 1777 C535580D 		vaddpd	.LC19(%rip), %ymm9, %ymm9
 1025      00000000 
 1026 177f C52D5815 		vaddpd	.LC79(%rip), %ymm10, %ymm10
 1026      00000000 
 1027 1787 C5DD59EC 		vmulpd	%ymm4, %ymm4, %ymm5
 1028 178b C5C559FC 		vmulpd	%ymm4, %ymm7, %ymm7
 1029 178f C53559CC 		vmulpd	%ymm4, %ymm9, %ymm9
 1030 1793 C55559C5 		vmulpd	%ymm5, %ymm5, %ymm8
 1031 1797 C4C14558 		vaddpd	%ymm10, %ymm7, %ymm7
 1031      FA
 1032 179c C5755915 		vmulpd	.LC84(%rip), %ymm1, %ymm10
 1032      00000000 
 1033 17a4 C53558C9 		vaddpd	%ymm1, %ymm9, %ymm9
 1034 17a8 C5C559FD 		vmulpd	%ymm5, %ymm7, %ymm7
 1035 17ac C52D5815 		vaddpd	.LC85(%rip), %ymm10, %ymm10
 1035      00000000 
 1036 17b4 C4C14558 		vaddpd	%ymm9, %ymm7, %ymm7
 1036      F9
 1037 17b9 C575590D 		vmulpd	.LC82(%rip), %ymm1, %ymm9
 1037      00000000 
 1038 17c1 C5F5590D 		vmulpd	.LC86(%rip), %ymm1, %ymm1
 1038      00000000 
 1039 17c9 C5AD59E4 		vmulpd	%ymm4, %ymm10, %ymm4
 1040 17cd C535580D 		vaddpd	.LC83(%rip), %ymm9, %ymm9
 1040      00000000 
 1041 17d5 C5F5580D 		vaddpd	.LC87(%rip), %ymm1, %ymm1
 1041      00000000 
 1042 17dd C4C15D58 		vaddpd	%ymm9, %ymm4, %ymm4
 1042      E1
 1043 17e2 C5F559ED 		vmulpd	%ymm5, %ymm1, %ymm5
 1044 17e6 C5F173F6 		vpsllq	$52, %xmm6, %xmm1
 1044      34
 1045 17eb C5D558E4 		vaddpd	%ymm4, %ymm5, %ymm4
 1046 17ef C4E37D19 		vextractf128	$0x1, %ymm6, %xmm5
 1046      F501
 1047 17f5 C5D173F5 		vpsllq	$52, %xmm5, %xmm5
 1047      34
 1048 17fa C4E37518 		vinsertf128	$0x1, %xmm5, %ymm1, %ymm1
 1048      CD01
 1049 1800 C4C15D59 		vmulpd	%ymm8, %ymm4, %ymm4
 1049      E0
GAS LISTING /tmp/ccsgyXat.s 			page 35


 1050 1805 C4E37D19 		vextractf128	$0x1, %ymm2, %xmm5
 1050      D501
 1051 180b C5DD58E7 		vaddpd	%ymm7, %ymm4, %ymm4
 1052 180f C5B973F5 		vpsllq	$1, %xmm5, %xmm8
 1052      01
 1053 1814 C539DB05 		vpand	.LC23(%rip), %xmm8, %xmm8
 1053      00000000 
 1054 181c C5ED543D 		vandpd	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv
 1054      00000000 
 1055 1824 C5DD5835 		vaddpd	.LC20(%rip), %ymm4, %ymm6
 1055      00000000 
 1056 182c C5F928E2 		vmovapd	%xmm2, %xmm4
 1057 1830 C4623929 		vpcmpeqq	.LC23(%rip), %xmm8, %xmm8
 1057      05000000 
 1057      00
 1058 1839 C5C5C23D 		vcmppd	$1, .LC88(%rip), %ymm7, %ymm7
 1058      00000000 
 1058      01
 1059 1842 C539EF05 		vpxor	.LC105(%rip), %xmm8, %xmm8
 1059      00000000 
 1060 184a C5CD59F1 		vmulpd	%ymm1, %ymm6, %ymm6
 1061 184e C5F173F4 		vpsllq	$1, %xmm4, %xmm1
 1061      01
 1062 1853 C5F1DB0D 		vpand	.LC23(%rip), %xmm1, %xmm1
 1062      00000000 
 1063 185b C4E27129 		vpcmpeqq	.LC23(%rip), %xmm1, %xmm1
 1063      0D000000 
 1063      00
 1064 1864 C5F1EF0D 		vpxor	.LC105(%rip), %xmm1, %xmm1
 1064      00000000 
 1065 186c C4C37518 		vinsertf128	$0x1, %xmm8, %ymm1, %ymm1
 1065      C801
 1066 1872 C5C554C9 		vandpd	%ymm1, %ymm7, %ymm1
 1067 1876 C4E37D19 		vextractf128	$0x1, %ymm1, %xmm7
 1067      CF01
 1068 187c C57928C1 		vmovapd	%xmm1, %xmm8
 1069 1880 C5B954FF 		vandpd	%xmm7, %xmm8, %xmm7
 1070 1884 C5F950C7 		vmovmskpd	%xmm7, %eax
 1071 1888 83F803   		cmpl	$3, %eax
 1072 188b 0F840705 		je	.L33
 1072      0000
 1073 1891 C5D172E5 		vpsrad	$31, %xmm5, %xmm5
 1073      1F
 1074 1896 C5D972E4 		vpsrad	$31, %xmm4, %xmm4
 1074      1F
 1075 189b C5C173D5 		vpsrlq	$32, %xmm5, %xmm7
 1075      20
 1076 18a0 C4E3410E 		vpblendw	$204, %xmm5, %xmm7, %xmm5
 1076      EDCC
 1077 18a6 C5C173D4 		vpsrlq	$32, %xmm4, %xmm7
 1077      20
 1078 18ab C4E3410E 		vpblendw	$204, %xmm4, %xmm7, %xmm4
 1078      E4CC
 1079 18b1 C5FD287C 		vmovapd	64(%rsp), %ymm7
 1079      2440
 1080 18b7 C4E35D18 		vinsertf128	$0x1, %xmm5, %ymm4, %ymm5
 1080      ED01
GAS LISTING /tmp/ccsgyXat.s 			page 36


 1081 18bd C5D957E4 		vxorpd	%xmm4, %xmm4, %xmm4
 1082 18c1 C4E3454B 		vblendvpd	%ymm5, %ymm4, %ymm7, %ymm4
 1082      E450
 1083 18c7 C4E35D4B 		vblendvpd	%ymm1, %ymm6, %ymm4, %ymm1
 1083      CE10
 1084 18cd C5EDC2E2 		vcmppd	$4, %ymm2, %ymm2, %ymm4
 1084      04
 1085 18d2 C4E3754B 		vblendvpd	%ymm4, %ymm2, %ymm1, %ymm2
 1085      D240
 1086              	.L15:
 1087 18d8 C5FD282D 		vmovapd	.LC20(%rip), %ymm5
 1087      00000000 
 1088 18e0 C5FDC20D 		vcmppd	$2, .LC89(%rip), %ymm0, %ymm1
 1088      00000000 
 1088      02
 1089 18e9 C5D5C2DB 		vcmppd	$2, %ymm3, %ymm5, %ymm3
 1089      02
 1090 18ee C5FD282D 		vmovapd	.LC90(%rip), %ymm5
 1090      00000000 
 1091 18f6 C5E556D9 		vorpd	%ymm1, %ymm3, %ymm3
 1092 18fa C5D5C2CA 		vcmppd	$1, %ymm2, %ymm5, %ymm1
 1092      01
 1093 18ff C4E36D4B 		vblendvpd	%ymm1, %ymm5, %ymm2, %ymm2
 1093      D510
 1094 1905 C5FD282D 		vmovapd	.LC92(%rip), %ymm5
 1094      00000000 
 1095 190d C5EDC20D 		vcmppd	$1, .LC26(%rip), %ymm2, %ymm1
 1095      00000000 
 1095      01
 1096 1916 C4E36D4B 		vblendvpd	%ymm1, .LC26(%rip), %ymm2, %ymm1
 1096      0D000000 
 1096      0010
 1097 1920 C5FD2894 		vmovapd	1280(%rsp), %ymm2
 1097      24000500 
 1097      00
 1098 1929 C4E36D4B 		vblendvpd	%ymm3, 1216(%rsp), %ymm2, %ymm2
 1098      9424C004 
 1098      000030
 1099 1934 C5FD298C 		vmovapd	%ymm1, 960(%rsp)
 1099      24C00300 
 1099      00
 1100 193d C5FD2994 		vmovapd	%ymm2, 1280(%rsp)
 1100      24000500 
 1100      00
 1101 1946 C5FD2894 		vmovapd	1312(%rsp), %ymm2
 1101      24200500 
 1101      00
 1102 194f C4E36D4B 		vblendvpd	%ymm3, 1248(%rsp), %ymm2, %ymm2
 1102      9424E004 
 1102      000030
 1103 195a C5FD2994 		vmovapd	%ymm2, 1312(%rsp)
 1103      24200500 
 1103      00
 1104 1963 C5FD2894 		vmovapd	1344(%rsp), %ymm2
 1104      24400500 
 1104      00
 1105 196c C5ED58E0 		vaddpd	%ymm0, %ymm2, %ymm4
GAS LISTING /tmp/ccsgyXat.s 			page 37


 1106 1970 C5FD59C1 		vmulpd	%ymm1, %ymm0, %ymm0
 1107 1974 C4E36D4B 		vblendvpd	%ymm3, %ymm4, %ymm2, %ymm3
 1107      DC30
 1108 197a C5FD2894 		vmovapd	1472(%rsp), %ymm2
 1108      24C00500 
 1108      00
 1109 1983 C5FD5905 		vmulpd	.LC91(%rip), %ymm0, %ymm0
 1109      00000000 
 1110 198b C5FD299C 		vmovapd	%ymm3, 1344(%rsp)
 1110      24400500 
 1110      00
 1111 1994 C5D5C2C8 		vcmppd	$1, %ymm0, %ymm5, %ymm1
 1111      01
 1112 1999 C4E37D4B 		vblendvpd	%ymm1, %ymm5, %ymm0, %ymm0
 1112      C510
 1113 199f C5EDC2EB 		vcmppd	$2, %ymm3, %ymm2, %ymm5
 1113      02
 1114 19a4 C5FDC20D 		vcmppd	$1, .LC89(%rip), %ymm0, %ymm1
 1114      00000000 
 1114      01
 1115 19ad C5F928E5 		vmovapd	%xmm5, %xmm4
 1116 19b1 C5FD29AC 		vmovapd	%ymm5, 128(%rsp)
 1116      24800000 
 1116      00
 1117 19ba C4E37D4B 		vblendvpd	%ymm1, .LC89(%rip), %ymm0, %ymm1
 1117      0D000000 
 1117      0010
 1118 19c4 C4E37D19 		vextractf128	$0x1, %ymm5, %xmm0
 1118      E801
 1119 19ca C5FD298C 		vmovapd	%ymm1, 1408(%rsp)
 1119      24800500 
 1119      00
 1120 19d3 C5D956C0 		vorpd	%xmm0, %xmm4, %xmm0
 1121 19d7 C5F950C0 		vmovmskpd	%xmm0, %eax
 1122 19db 85C0     		testl	%eax, %eax
 1123 19dd 0F848503 		je	.L34
 1123      0000
 1124 19e3 31DB     		xorl	%ebx, %ebx
 1125              	.L23:
 1126 19e5 C5FD289C 		vmovapd	128(%rsp), %ymm3
 1126      24800000 
 1126      00
 1127 19ee C5FD119C 		vmovupd	%ymm3, 768(%rsp)
 1127      24000300 
 1127      00
 1128 19f7 448B8C5C 		movl	772(%rsp,%rbx,2), %r9d
 1128      04030000 
 1129 19ff 4585C9   		testl	%r9d, %r9d
 1130 1a02 0F85F801 		jne	.L48
 1130      0000
 1131              	.L29:
 1132 1a08 4883C304 		addq	$4, %rbx
 1133 1a0c 4883FB10 		cmpq	$16, %rbx
 1134 1a10 75D3     		jne	.L23
 1135 1a12 C5FD289C 		vmovapd	128(%rsp), %ymm3
 1135      24800000 
 1135      00
GAS LISTING /tmp/ccsgyXat.s 			page 38


 1136 1a1b C5FD119C 		vmovupd	%ymm3, 512(%rsp)
 1136      24000200 
 1136      00
 1137 1a24 8B84241C 		movl	540(%rsp), %eax
 1137      020000
 1138 1a2b C5FD119C 		vmovupd	%ymm3, 576(%rsp)
 1138      24400200 
 1138      00
 1139 1a34 8B942454 		movl	596(%rsp), %edx
 1139      020000
 1140 1a3b C5FD119C 		vmovupd	%ymm3, 640(%rsp)
 1140      24800200 
 1140      00
 1141 1a44 8BBC248C 		movl	652(%rsp), %edi
 1141      020000
 1142 1a4b 85C0     		testl	%eax, %eax
 1143 1a4d C5FD119C 		vmovupd	%ymm3, 704(%rsp)
 1143      24C00200 
 1143      00
 1144 1a56 448B8424 		movl	708(%rsp), %r8d
 1144      C4020000 
 1145 1a5e 0F95C1   		setne	%cl
 1146 1a61 85D2     		testl	%edx, %edx
 1147 1a63 400F95C6 		setne	%sil
 1148 1a67 85FF     		testl	%edi, %edi
 1149 1a69 0FB6C9   		movzbl	%cl, %ecx
 1150 1a6c 0F95C0   		setne	%al
 1151 1a6f 400FB6F6 		movzbl	%sil, %esi
 1152 1a73 31D2     		xorl	%edx, %edx
 1153 1a75 4585C0   		testl	%r8d, %r8d
 1154 1a78 0FB6C0   		movzbl	%al, %eax
 1155 1a7b 0F95C2   		setne	%dl
 1156 1a7e F7DE     		negl	%esi
 1157 1a80 F7D8     		negl	%eax
 1158 1a82 89B42480 		movl	%esi, 128(%rsp)
 1158      000000
 1159 1a89 F7DA     		negl	%edx
 1160 1a8b F7D9     		negl	%ecx
 1161 1a8d C5F96E84 		vmovd	128(%rsp), %xmm0
 1161      24800000 
 1161      00
 1162 1a96 89942480 		movl	%edx, 128(%rsp)
 1162      000000
 1163 1a9d C5F96EAC 		vmovd	128(%rsp), %xmm5
 1163      24800000 
 1163      00
 1164 1aa6 C5E55415 		vandpd	.LC97(%rip), %ymm3, %ymm2
 1164      00000000 
 1165 1aae C4E35122 		vpinsrd	$1, %eax, %xmm5, %xmm1
 1165      C801
 1166 1ab4 C4E37922 		vpinsrd	$1, %ecx, %xmm0, %xmm0
 1166      C101
 1167 1aba C5ED5894 		vaddpd	1472(%rsp), %ymm2, %ymm2
 1167      24C00500 
 1167      00
 1168 1ac3 C5F16CC0 		vpunpcklqdq	%xmm0, %xmm1, %xmm0
 1169 1ac7 C5FD288C 		vmovapd	1408(%rsp), %ymm1
GAS LISTING /tmp/ccsgyXat.s 			page 39


 1169      24800500 
 1169      00
 1170 1ad0 C5F9DB05 		vpand	.LC96(%rip), %xmm0, %xmm0
 1170      00000000 
 1171 1ad8 C5FD2994 		vmovapd	%ymm2, 1472(%rsp)
 1171      24C00500 
 1171      00
 1172 1ae1 C5F9FE84 		vpaddd	1504(%rsp), %xmm0, %xmm0
 1172      24E00500 
 1172      00
 1173 1aea C5F97F84 		vmovdqa	%xmm0, 1504(%rsp)
 1173      24E00500 
 1173      00
 1174 1af3 C5FD2884 		vmovapd	1344(%rsp), %ymm0
 1174      24400500 
 1174      00
 1175              	.L16:
 1176 1afc C5FD58D9 		vaddpd	%ymm1, %ymm0, %ymm3
 1177 1b00 C5FD282D 		vmovapd	.LC98(%rip), %ymm5
 1177      00000000 
 1178 1b08 C5EDC2DB 		vcmppd	$2, %ymm3, %ymm2, %ymm3
 1178      02
 1179 1b0d C5ED5CD0 		vsubpd	%ymm0, %ymm2, %ymm2
 1180 1b11 C5D5C2C0 		vcmppd	$2, %ymm0, %ymm5, %ymm0
 1180      02
 1181 1b16 C4E3754B 		vblendvpd	%ymm3, %ymm2, %ymm1, %ymm1
 1181      CA30
 1182 1b1c C5FD298C 		vmovapd	%ymm1, 1408(%rsp)
 1182      24800500 
 1182      00
 1183 1b25 C4E37D19 		vextractf128	$0x1, %ymm0, %xmm1
 1183      C101
 1184 1b2b C5F954C1 		vandpd	%xmm1, %xmm0, %xmm0
 1185 1b2f C5F950C0 		vmovmskpd	%xmm0, %eax
 1186 1b33 83F803   		cmpl	$3, %eax
 1187 1b36 0F85C4E5 		jne	.L47
 1187      FFFF
 1188 1b3c 4983C620 		addq	$32, %r14
 1189 1b40 4981FE00 		cmpq	$11520, %r14
 1189      2D0000
 1190 1b47 0F8544E5 		jne	.L12
 1190      FFFF
 1191 1b4d C5F877   		vzeroupper
 1192 1b50 E8000000 		call	clock
 1192      00
 1193 1b55 4889C1   		movq	%rax, %rcx
 1194 1b58 482B4C24 		subq	48(%rsp), %rcx
 1194      30
 1195 1b5d 48BBCFF7 		movabsq	$2361183241434822607, %rbx
 1195      53E3A59B 
 1195      C420
 1196 1b67 BE000000 		movl	$.LC103, %esi
 1196      00
 1197 1b6c BF000000 		movl	$_ZSt4cout, %edi
 1197      00
 1198 1b71 4889C8   		movq	%rcx, %rax
 1199 1b74 48C1F93F 		sarq	$63, %rcx
GAS LISTING /tmp/ccsgyXat.s 			page 40


 1200 1b78 48F7EB   		imulq	%rbx
 1201 1b7b 4889D3   		movq	%rdx, %rbx
 1202 1b7e 48C1FB07 		sarq	$7, %rbx
 1203 1b82 4829CB   		subq	%rcx, %rbx
 1204              	.LEHB1:
 1205 1b85 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1205      00
 1206 1b8a 4889DE   		movq	%rbx, %rsi
 1207 1b8d 4889C7   		movq	%rax, %rdi
 1208 1b90 E8000000 		call	_ZNSo9_M_insertIlEERSoT_
 1208      00
 1209 1b95 BE000000 		movl	$.LC104, %esi
 1209      00
 1210 1b9a 4889C7   		movq	%rax, %rdi
 1211 1b9d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
 1211      00
 1212 1ba2 4889C7   		movq	%rax, %rdi
 1213 1ba5 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
 1213      00
 1214 1baa 488DBC24 		leaq	1552(%rsp), %rdi
 1214      10060000 
 1215 1bb2 E8000000 		call	_ZNSo5flushEv
 1215      00
 1216 1bb7 488DBC24 		leaq	1552(%rsp), %rdi
 1216      10060000 
 1217 1bbf E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
 1217      00
 1218 1bc4 488DBC24 		leaq	1552(%rsp), %rdi
 1218      10060000 
 1219 1bcc E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1219      00
 1220 1bd1 31C0     		xorl	%eax, %eax
 1221 1bd3 488B8C24 		movq	2072(%rsp), %rcx
 1221      18080000 
 1222 1bdb 6448330C 		xorq	%fs:40, %rcx
 1222      25280000 
 1222      00
 1223 1be4 0F85D701 		jne	.L49
 1223      0000
 1224 1bea 488D65D8 		leaq	-40(%rbp), %rsp
 1225 1bee 5B       		popq	%rbx
 1226 1bef 415C     		popq	%r12
 1227 1bf1 415D     		popq	%r13
 1228 1bf3 415E     		popq	%r14
 1229 1bf5 415F     		popq	%r15
 1230 1bf7 5D       		popq	%rbp
 1231              		.cfi_remember_state
 1232              		.cfi_def_cfa 7, 8
 1233 1bf8 C3       		ret
 1234 1bf9 0F1F8000 		.p2align 4,,10
 1234      000000
 1235              		.p2align 3
 1236              	.L48:
 1237              		.cfi_restore_state
 1238 1c00 C5F96F84 		vmovdqa	1504(%rsp), %xmm0
 1238      24E00500 
 1238      00
GAS LISTING /tmp/ccsgyXat.s 			page 41


 1239 1c09 C5FA7F84 		vmovdqu	%xmm0, 160(%rsp)
 1239      24A00000 
 1239      00
 1240 1c12 83BC1CA0 		cmpl	$31, 160(%rsp,%rbx)
 1240      0000001F 
 1241 1c1a 0F8FE8FD 		jg	.L29
 1241      FFFF
 1242 1c20 C5FD2884 		vmovapd	1344(%rsp), %ymm0
 1242      24400500 
 1242      00
 1243 1c29 488DBC24 		leaq	1552(%rsp), %rdi
 1243      10060000 
 1244 1c31 C5FD1184 		vmovupd	%ymm0, 384(%rsp)
 1244      24800100 
 1244      00
 1245 1c3a C5FB1084 		vmovsd	384(%rsp,%rbx,2), %xmm0
 1245      5C800100 
 1245      00
 1246 1c43 C5FB5E05 		vdivsd	.LC93(%rip), %xmm0, %xmm0
 1246      00000000 
 1247 1c4b C5FB5C05 		vsubsd	.LC94(%rip), %xmm0, %xmm0
 1247      00000000 
 1248 1c53 C5FB1144 		vmovsd	%xmm0, 112(%rsp)
 1248      2470
 1249 1c59 C5FD2884 		vmovapd	1312(%rsp), %ymm0
 1249      24200500 
 1249      00
 1250 1c62 C5FD1184 		vmovupd	%ymm0, 416(%rsp)
 1250      24A00100 
 1250      00
 1251 1c6b C5FB1084 		vmovsd	416(%rsp,%rbx,2), %xmm0
 1251      5CA00100 
 1251      00
 1252 1c74 C5FB1144 		vmovsd	%xmm0, 96(%rsp)
 1252      2460
 1253 1c7a C5FD2884 		vmovapd	1280(%rsp), %ymm0
 1253      24000500 
 1253      00
 1254 1c83 C5FD1184 		vmovupd	%ymm0, 448(%rsp)
 1254      24C00100 
 1254      00
 1255 1c8c C5FB1084 		vmovsd	448(%rsp,%rbx,2), %xmm0
 1255      5CC00100 
 1255      00
 1256 1c95 C5FB1144 		vmovsd	%xmm0, 56(%rsp)
 1256      2438
 1257 1c9b C5FD2884 		vmovapd	1440(%rsp), %ymm0
 1257      24A00500 
 1257      00
 1258 1ca4 C5FD1184 		vmovupd	%ymm0, 480(%rsp)
 1258      24E00100 
 1258      00
 1259 1cad C5FB1084 		vmovsd	480(%rsp,%rbx,2), %xmm0
 1259      5CE00100 
 1259      00
 1260 1cb6 C5F877   		vzeroupper
 1261 1cb9 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
GAS LISTING /tmp/ccsgyXat.s 			page 42


 1261      00
 1262 1cbe BA010000 		movl	$1, %edx
 1262      00
 1263 1cc3 BE000000 		movl	$.LC95, %esi
 1263      00
 1264 1cc8 4889C7   		movq	%rax, %rdi
 1265 1ccb 4989C4   		movq	%rax, %r12
 1266 1cce E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1266      00
 1267 1cd3 C5FB1044 		vmovsd	56(%rsp), %xmm0
 1267      2438
 1268 1cd9 4C89E7   		movq	%r12, %rdi
 1269 1cdc E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1269      00
 1270 1ce1 BA010000 		movl	$1, %edx
 1270      00
 1271 1ce6 BE000000 		movl	$.LC95, %esi
 1271      00
 1272 1ceb 4889C7   		movq	%rax, %rdi
 1273 1cee 4989C4   		movq	%rax, %r12
 1274 1cf1 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1274      00
 1275 1cf6 C5FB1044 		vmovsd	96(%rsp), %xmm0
 1275      2460
 1276 1cfc 4C89E7   		movq	%r12, %rdi
 1277 1cff E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1277      00
 1278 1d04 BA010000 		movl	$1, %edx
 1278      00
 1279 1d09 BE000000 		movl	$.LC95, %esi
 1279      00
 1280 1d0e 4889C7   		movq	%rax, %rdi
 1281 1d11 4989C4   		movq	%rax, %r12
 1282 1d14 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
 1282      00
 1283 1d19 C5FB1044 		vmovsd	112(%rsp), %xmm0
 1283      2470
 1284 1d1f 4C89E7   		movq	%r12, %rdi
 1285 1d22 E8000000 		call	_ZNSo9_M_insertIdEERSoT_
 1285      00
 1286 1d27 4989C5   		movq	%rax, %r13
 1287 1d2a 488B00   		movq	(%rax), %rax
 1288 1d2d 488B40E8 		movq	-24(%rax), %rax
 1289 1d31 4D8BA405 		movq	240(%r13,%rax), %r12
 1289      F0000000 
 1290 1d39 4D85E4   		testq	%r12, %r12
 1291 1d3c 7463     		je	.L50
 1292 1d3e 41807C24 		cmpb	$0, 56(%r12)
 1292      3800
 1293 1d44 7432     		je	.L20
 1294 1d46 410FB644 		movzbl	67(%r12), %eax
 1294      2443
 1295              	.L21:
 1296 1d4c 0FBEF0   		movsbl	%al, %esi
 1297 1d4f 4C89EF   		movq	%r13, %rdi
 1298 1d52 E8000000 		call	_ZNSo3putEc
 1298      00
GAS LISTING /tmp/ccsgyXat.s 			page 43


 1299 1d57 4889C7   		movq	%rax, %rdi
 1300 1d5a E8000000 		call	_ZNSo5flushEv
 1300      00
 1301 1d5f E9A4FCFF 		jmp	.L29
 1301      FF
 1302              		.p2align 4,,10
 1303 1d64 0F1F4000 		.p2align 3
 1304              	.L34:
 1305 1d68 C5FD28C3 		vmovapd	%ymm3, %ymm0
 1306 1d6c E98BFDFF 		jmp	.L16
 1306      FF
 1307              		.p2align 4,,10
 1308 1d71 0F1F8000 		.p2align 3
 1308      000000
 1309              	.L20:
 1310 1d78 4C89E7   		movq	%r12, %rdi
 1311 1d7b E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv
 1311      00
 1312 1d80 498B0424 		movq	(%r12), %rax
 1313 1d84 BE0A0000 		movl	$10, %esi
 1313      00
 1314 1d89 4C89E7   		movq	%r12, %rdi
 1315 1d8c FF5030   		call	*48(%rax)
 1316 1d8f EBBB     		jmp	.L21
 1317              		.p2align 4,,10
 1318 1d91 0F1F8000 		.p2align 3
 1318      000000
 1319              	.L33:
 1320 1d98 C5FD28D6 		vmovapd	%ymm6, %ymm2
 1321 1d9c E937FBFF 		jmp	.L15
 1321      FF
 1322              	.L50:
 1323              		.p2align 4,,7
 1324 1da1 E8000000 		call	_ZSt16__throw_bad_castv
 1324      00
 1325              	.LEHE1:
 1326              	.L37:
 1327              	.L36:
 1328 1da6 488DBC24 		leaq	1552(%rsp), %rdi
 1328      10060000 
 1329 1dae 4889C3   		movq	%rax, %rbx
 1330 1db1 C5F877   		vzeroupper
 1331 1db4 E8000000 		call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
 1331      00
 1332 1db9 4889DF   		movq	%rbx, %rdi
 1333              	.LEHB2:
 1334 1dbc E8000000 		call	_Unwind_Resume
 1334      00
 1335              	.LEHE2:
 1336              	.L49:
 1337 1dc1 E8000000 		call	__stack_chk_fail
 1337      00
 1338              		.cfi_endproc
 1339              	.LFE4614:
 1340              		.globl	__gxx_personality_v0
 1341              		.section	.gcc_except_table,"a",@progbits
 1342              	.LLSDA4614:
GAS LISTING /tmp/ccsgyXat.s 			page 44


 1343 0000 FF       		.byte	0xff
 1344 0001 FF       		.byte	0xff
 1345 0002 01       		.byte	0x1
 1346 0003 10       		.uleb128 .LLSDACSE4614-.LLSDACSB4614
 1347              	.LLSDACSB4614:
 1348 0004 5D       		.uleb128 .LEHB0-.LFB4614
 1349 0005 05       		.uleb128 .LEHE0-.LEHB0
 1350 0006 00       		.uleb128 0
 1351 0007 00       		.uleb128 0
 1352 0008 8537     		.uleb128 .LEHB1-.LFB4614
 1353 000a A104     		.uleb128 .LEHE1-.LEHB1
 1354 000c A63B     		.uleb128 .L36-.LFB4614
 1355 000e 00       		.uleb128 0
 1356 000f BC3B     		.uleb128 .LEHB2-.LFB4614
 1357 0011 05       		.uleb128 .LEHE2-.LEHB2
 1358 0012 00       		.uleb128 0
 1359 0013 00       		.uleb128 0
 1360              	.LLSDACSE4614:
 1361              		.section	.text.startup
 1362              		.size	main, .-main
 1363 1dc6 662E0F1F 		.p2align 4,,15
 1363      84000000 
 1363      0000
 1364              		.type	_GLOBAL__sub_I_main, @function
 1365              	_GLOBAL__sub_I_main:
 1366              	.LFB4954:
 1367              		.cfi_startproc
 1368 1dd0 4883EC08 		subq	$8, %rsp
 1369              		.cfi_def_cfa_offset 16
 1370 1dd4 BF000000 		movl	$_ZStL8__ioinit, %edi
 1370      00
 1371 1dd9 E8000000 		call	_ZNSt8ios_base4InitC1Ev
 1371      00
 1372 1dde BA000000 		movl	$__dso_handle, %edx
 1372      00
 1373 1de3 BE000000 		movl	$_ZStL8__ioinit, %esi
 1373      00
 1374 1de8 BF000000 		movl	$_ZNSt8ios_base4InitD1Ev, %edi
 1374      00
 1375 1ded 4883C408 		addq	$8, %rsp
 1376              		.cfi_def_cfa_offset 8
 1377 1df1 E9000000 		jmp	__cxa_atexit
 1377      00
 1378              		.cfi_endproc
 1379              	.LFE4954:
 1380              		.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
 1381              		.section	.init_array,"aw"
 1382              		.align 8
 1383 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1383      00000000 
 1384              		.section	.rodata
 1385              		.align 32
 1386              		.type	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1387              		.size	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8
 1388              	_ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u:
 1389 0000 00000000 		.long	0
 1390 0004 00000080 		.long	-2147483648
GAS LISTING /tmp/ccsgyXat.s 			page 45


 1391 0008 00000000 		.long	0
 1392 000c 00000080 		.long	-2147483648
 1393 0010 00000000 		.long	0
 1394 0014 00000080 		.long	-2147483648
 1395 0018 00000000 		.long	0
 1396 001c 00000080 		.long	-2147483648
 1397              		.align 32
 1398              		.type	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1399              		.size	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8
 1400              	_ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u:
 1401 0020 FFFFFFFF 		.long	-1
 1402 0024 FFFFFF7F 		.long	2147483647
 1403 0028 FFFFFFFF 		.long	-1
 1404 002c FFFFFF7F 		.long	2147483647
 1405 0030 FFFFFFFF 		.long	-1
 1406 0034 FFFFFF7F 		.long	2147483647
 1407 0038 FFFFFFFF 		.long	-1
 1408 003c FFFFFF7F 		.long	2147483647
 1409              		.local	_ZStL8__ioinit
 1410              		.comm	_ZStL8__ioinit,1,1
 1411              		.section	.rodata.cst8,"aM",@progbits,8
 1412              		.align 8
 1413              	.LC0:
 1414 0000 33333333 		.long	858993459
 1415 0004 3333D33F 		.long	1070805811
 1416              		.align 8
 1417              	.LC1:
 1418 0008 9A999999 		.long	2576980378
 1419 000c 9999C93F 		.long	1070176665
 1420              		.section	.rodata.cst32,"aM",@progbits,32
 1421              		.align 32
 1422              	.LC3:
 1423 0000 83C8C96D 		.long	1841940611
 1424 0004 305FE43F 		.long	1071931184
 1425 0008 83C8C96D 		.long	1841940611
 1426 000c 305FE43F 		.long	1071931184
 1427 0010 83C8C96D 		.long	1841940611
 1428 0014 305FE43F 		.long	1071931184
 1429 0018 83C8C96D 		.long	1841940611
 1430 001c 305FE43F 		.long	1071931184
 1431              		.align 32
 1432              	.LC4:
 1433 0020 00000050 		.long	1342177280
 1434 0024 FB21F93F 		.long	1073291771
 1435 0028 00000050 		.long	1342177280
 1436 002c FB21F93F 		.long	1073291771
 1437 0030 00000050 		.long	1342177280
 1438 0034 FB21F93F 		.long	1073291771
 1439 0038 00000050 		.long	1342177280
 1440 003c FB21F93F 		.long	1073291771
 1441              		.align 32
 1442              	.LC5:
 1443 0040 00000060 		.long	1610612736
 1444 0044 B410513E 		.long	1045500084
 1445 0048 00000060 		.long	1610612736
 1446 004c B410513E 		.long	1045500084
 1447 0050 00000060 		.long	1610612736
GAS LISTING /tmp/ccsgyXat.s 			page 46


 1448 0054 B410513E 		.long	1045500084
 1449 0058 00000060 		.long	1610612736
 1450 005c B410513E 		.long	1045500084
 1451              		.align 32
 1452              	.LC6:
 1453 0060 075C1433 		.long	856972295
 1454 0064 26A6913C 		.long	1016178214
 1455 0068 075C1433 		.long	856972295
 1456 006c 26A6913C 		.long	1016178214
 1457 0070 075C1433 		.long	856972295
 1458 0074 26A6913C 		.long	1016178214
 1459 0078 075C1433 		.long	856972295
 1460 007c 26A6913C 		.long	1016178214
 1461              		.align 32
 1462              	.LC7:
 1463 0080 D0F71011 		.long	286324688
 1464 0084 1111813F 		.long	1065423121
 1465 0088 D0F71011 		.long	286324688
 1466 008c 1111813F 		.long	1065423121
 1467 0090 D0F71011 		.long	286324688
 1468 0094 1111813F 		.long	1065423121
 1469 0098 D0F71011 		.long	286324688
 1470 009c 1111813F 		.long	1065423121
 1471              		.align 32
 1472              	.LC8:
 1473 00a0 48555555 		.long	1431655752
 1474 00a4 5555C5BF 		.long	-1077586603
 1475 00a8 48555555 		.long	1431655752
 1476 00ac 5555C5BF 		.long	-1077586603
 1477 00b0 48555555 		.long	1431655752
 1478 00b4 5555C5BF 		.long	-1077586603
 1479 00b8 48555555 		.long	1431655752
 1480 00bc 5555C5BF 		.long	-1077586603
 1481              		.align 32
 1482              	.LC9:
 1483 00c0 CD9CD11F 		.long	533830861
 1484 00c4 FDD8E53D 		.long	1038473469
 1485 00c8 CD9CD11F 		.long	533830861
 1486 00cc FDD8E53D 		.long	1038473469
 1487 00d0 CD9CD11F 		.long	533830861
 1488 00d4 FDD8E53D 		.long	1038473469
 1489 00d8 CD9CD11F 		.long	533830861
 1490 00dc FDD8E53D 		.long	1038473469
 1491              		.align 32
 1492              	.LC10:
 1493 00e0 5D1F29A9 		.long	2838044509
 1494 00e4 E5E55ABE 		.long	-1101339163
 1495 00e8 5D1F29A9 		.long	2838044509
 1496 00ec E5E55ABE 		.long	-1101339163
 1497 00f0 5D1F29A9 		.long	2838044509
 1498 00f4 E5E55ABE 		.long	-1101339163
 1499 00f8 5D1F29A9 		.long	2838044509
 1500 00fc E5E55ABE 		.long	-1101339163
 1501              		.align 32
 1502              	.LC11:
 1503 0100 A1487D56 		.long	1451051169
 1504 0104 E31DC73E 		.long	1053236707
GAS LISTING /tmp/ccsgyXat.s 			page 47


 1505 0108 A1487D56 		.long	1451051169
 1506 010c E31DC73E 		.long	1053236707
 1507 0110 A1487D56 		.long	1451051169
 1508 0114 E31DC73E 		.long	1053236707
 1509 0118 A1487D56 		.long	1451051169
 1510 011c E31DC73E 		.long	1053236707
 1511              		.align 32
 1512              	.LC12:
 1513 0120 03DFBF19 		.long	432004867
 1514 0124 A0012ABF 		.long	-1087766112
 1515 0128 03DFBF19 		.long	432004867
 1516 012c A0012ABF 		.long	-1087766112
 1517 0130 03DFBF19 		.long	432004867
 1518 0134 A0012ABF 		.long	-1087766112
 1519 0138 03DFBF19 		.long	432004867
 1520 013c A0012ABF 		.long	-1087766112
 1521              		.align 32
 1522              	.LC13:
 1523 0140 914FC116 		.long	381767569
 1524 0144 6CC156BF 		.long	-1084833428
 1525 0148 914FC116 		.long	381767569
 1526 014c 6CC156BF 		.long	-1084833428
 1527 0150 914FC116 		.long	381767569
 1528 0154 6CC156BF 		.long	-1084833428
 1529 0158 914FC116 		.long	381767569
 1530 015c 6CC156BF 		.long	-1084833428
 1531              		.align 32
 1532              	.LC14:
 1533 0160 4B555555 		.long	1431655755
 1534 0164 5555A53F 		.long	1067799893
 1535 0168 4B555555 		.long	1431655755
 1536 016c 5555A53F 		.long	1067799893
 1537 0170 4B555555 		.long	1431655755
 1538 0174 5555A53F 		.long	1067799893
 1539 0178 4B555555 		.long	1431655755
 1540 017c 5555A53F 		.long	1067799893
 1541              		.align 32
 1542              	.LC15:
 1543 0180 9B1A86A0 		.long	2693143195
 1544 0184 49FAA8BD 		.long	-1112999351
 1545 0188 9B1A86A0 		.long	2693143195
 1546 018c 49FAA8BD 		.long	-1112999351
 1547 0190 9B1A86A0 		.long	2693143195
 1548 0194 49FAA8BD 		.long	-1112999351
 1549 0198 9B1A86A0 		.long	2693143195
 1550 019c 49FAA8BD 		.long	-1112999351
 1551              		.align 32
 1552              	.LC16:
 1553 01a0 053F4E7B 		.long	2068725509
 1554 01a4 9DEE213E 		.long	1042411165
 1555 01a8 053F4E7B 		.long	2068725509
 1556 01ac 9DEE213E 		.long	1042411165
 1557 01b0 053F4E7B 		.long	2068725509
 1558 01b4 9DEE213E 		.long	1042411165
 1559 01b8 053F4E7B 		.long	2068725509
 1560 01bc 9DEE213E 		.long	1042411165
 1561              		.align 32
GAS LISTING /tmp/ccsgyXat.s 			page 48


 1562              	.LC17:
 1563 01c0 C64BAC7E 		.long	2125220806
 1564 01c4 4F7E92BE 		.long	-1097695665
 1565 01c8 C64BAC7E 		.long	2125220806
 1566 01cc 4F7E92BE 		.long	-1097695665
 1567 01d0 C64BAC7E 		.long	2125220806
 1568 01d4 4F7E92BE 		.long	-1097695665
 1569 01d8 C64BAC7E 		.long	2125220806
 1570 01dc 4F7E92BE 		.long	-1097695665
 1571              		.align 32
 1572              	.LC18:
 1573 01e0 F544C819 		.long	432555253
 1574 01e4 A001FA3E 		.long	1056571808
 1575 01e8 F544C819 		.long	432555253
 1576 01ec A001FA3E 		.long	1056571808
 1577 01f0 F544C819 		.long	432555253
 1578 01f4 A001FA3E 		.long	1056571808
 1579 01f8 F544C819 		.long	432555253
 1580 01fc A001FA3E 		.long	1056571808
 1581              		.align 32
 1582              	.LC19:
 1583 0200 00000000 		.long	0
 1584 0204 0000E03F 		.long	1071644672
 1585 0208 00000000 		.long	0
 1586 020c 0000E03F 		.long	1071644672
 1587 0210 00000000 		.long	0
 1588 0214 0000E03F 		.long	1071644672
 1589 0218 00000000 		.long	0
 1590 021c 0000E03F 		.long	1071644672
 1591              		.align 32
 1592              	.LC20:
 1593 0220 00000000 		.long	0
 1594 0224 0000F03F 		.long	1072693248
 1595 0228 00000000 		.long	0
 1596 022c 0000F03F 		.long	1072693248
 1597 0230 00000000 		.long	0
 1598 0234 0000F03F 		.long	1072693248
 1599 0238 00000000 		.long	0
 1600 023c 0000F03F 		.long	1072693248
 1601              		.section	.rodata.cst16,"aM",@progbits,16
 1602              		.align 16
 1603              	.LC21:
 1604 0000 01000000 		.quad	1
 1604      00000000 
 1605 0008 01000000 		.quad	1
 1605      00000000 
 1606              		.align 16
 1607              	.LC22:
 1608 0010 00000000 		.quad	36028797018963968
 1608      00008000 
 1609 0018 00000000 		.quad	36028797018963968
 1609      00008000 
 1610              		.align 16
 1611              	.LC23:
 1612 0020 00000000 		.quad	-9007199254740992
 1612      0000E0FF 
 1613 0028 00000000 		.quad	-9007199254740992
GAS LISTING /tmp/ccsgyXat.s 			page 49


 1613      0000E0FF 
 1614              		.align 16
 1615              	.LC24:
 1616 0030 02000000 		.quad	2
 1616      00000000 
 1617 0038 02000000 		.quad	2
 1617      00000000 
 1618              		.section	.rodata.cst32
 1619              		.align 32
 1620              	.LC25:
 1621 0240 33333333 		.long	858993459
 1622 0244 3333D33F 		.long	1070805811
 1623 0248 33333333 		.long	858993459
 1624 024c 3333D33F 		.long	1070805811
 1625 0250 33333333 		.long	858993459
 1626 0254 3333D33F 		.long	1070805811
 1627 0258 33333333 		.long	858993459
 1628 025c 3333D33F 		.long	1070805811
 1629              		.align 32
 1630              	.LC26:
 1631 0260 9A999999 		.long	2576980378
 1632 0264 9999C93F 		.long	1070176665
 1633 0268 9A999999 		.long	2576980378
 1634 026c 9999C93F 		.long	1070176665
 1635 0270 9A999999 		.long	2576980378
 1636 0274 9999C93F 		.long	1070176665
 1637 0278 9A999999 		.long	2576980378
 1638 027c 9999C93F 		.long	1070176665
 1639              		.align 32
 1640              	.LC27:
 1641 0280 CDCCCCCC 		.long	3435973837
 1642 0284 CCCCCC3F 		.long	1070386380
 1643 0288 CDCCCCCC 		.long	3435973837
 1644 028c CCCCCC3F 		.long	1070386380
 1645 0290 CDCCCCCC 		.long	3435973837
 1646 0294 CCCCCC3F 		.long	1070386380
 1647 0298 CDCCCCCC 		.long	3435973837
 1648 029c CCCCCC3F 		.long	1070386380
 1649              		.align 32
 1650              	.LC28:
 1651 02a0 33333333 		.long	858993459
 1652 02a4 3333B33F 		.long	1068708659
 1653 02a8 33333333 		.long	858993459
 1654 02ac 3333B33F 		.long	1068708659
 1655 02b0 33333333 		.long	858993459
 1656 02b4 3333B33F 		.long	1068708659
 1657 02b8 33333333 		.long	858993459
 1658 02bc 3333B33F 		.long	1068708659
 1659              		.align 32
 1660              	.LC29:
 1661 02c0 33333333 		.long	858993459
 1662 02c4 3333F33F 		.long	1072902963
 1663 02c8 33333333 		.long	858993459
 1664 02cc 3333F33F 		.long	1072902963
 1665 02d0 33333333 		.long	858993459
 1666 02d4 3333F33F 		.long	1072902963
 1667 02d8 33333333 		.long	858993459
GAS LISTING /tmp/ccsgyXat.s 			page 50


 1668 02dc 3333F33F 		.long	1072902963
 1669              		.align 32
 1670              	.LC30:
 1671 02e0 CDCCCCCC 		.long	3435973837
 1672 02e4 CCCCECBF 		.long	-1075000116
 1673 02e8 CDCCCCCC 		.long	3435973837
 1674 02ec CCCCECBF 		.long	-1075000116
 1675 02f0 CDCCCCCC 		.long	3435973837
 1676 02f4 CCCCECBF 		.long	-1075000116
 1677 02f8 CDCCCCCC 		.long	3435973837
 1678 02fc CCCCECBF 		.long	-1075000116
 1679              		.align 32
 1680              	.LC31:
 1681 0300 33333333 		.long	858993459
 1682 0304 3333E33F 		.long	1071854387
 1683 0308 33333333 		.long	858993459
 1684 030c 3333E33F 		.long	1071854387
 1685 0310 33333333 		.long	858993459
 1686 0314 3333E33F 		.long	1071854387
 1687 0318 33333333 		.long	858993459
 1688 031c 3333E33F 		.long	1071854387
 1689              		.align 32
 1690              	.LC32:
 1691 0320 DA4B682F 		.long	795364314
 1692 0324 A1BDF43F 		.long	1073003937
 1693 0328 DA4B682F 		.long	795364314
 1694 032c A1BDF43F 		.long	1073003937
 1695 0330 DA4B682F 		.long	795364314
 1696 0334 A1BDF43F 		.long	1073003937
 1697 0338 DA4B682F 		.long	795364314
 1698 033c A1BDF43F 		.long	1073003937
 1699              		.align 32
 1700              	.LC33:
 1701 0340 D94B682F 		.long	795364313
 1702 0344 A1BD04C0 		.long	-1073431135
 1703 0348 D94B682F 		.long	795364313
 1704 034c A1BD04C0 		.long	-1073431135
 1705 0350 D94B682F 		.long	795364313
 1706 0354 A1BD04C0 		.long	-1073431135
 1707 0358 D94B682F 		.long	795364313
 1708 035c A1BD04C0 		.long	-1073431135
 1709              		.align 32
 1710              	.LC34:
 1711 0360 00000000 		.long	0
 1712 0364 00000440 		.long	1074003968
 1713 0368 00000000 		.long	0
 1714 036c 00000440 		.long	1074003968
 1715 0370 00000000 		.long	0
 1716 0374 00000440 		.long	1074003968
 1717 0378 00000000 		.long	0
 1718 037c 00000440 		.long	1074003968
 1719              		.align 32
 1720              	.LC35:
 1721 0380 16A1BD84 		.long	2227020054
 1722 0384 F612CABF 		.long	-1077275914
 1723 0388 16A1BD84 		.long	2227020054
 1724 038c F612CABF 		.long	-1077275914
GAS LISTING /tmp/ccsgyXat.s 			page 51


 1725 0390 16A1BD84 		.long	2227020054
 1726 0394 F612CABF 		.long	-1077275914
 1727 0398 16A1BD84 		.long	2227020054
 1728 039c F612CABF 		.long	-1077275914
 1729              		.align 32
 1730              	.LC36:
 1731 03a0 00000000 		.long	0
 1732 03a4 00A0AF3F 		.long	1068474368
 1733 03a8 00000000 		.long	0
 1734 03ac 00A0AF3F 		.long	1068474368
 1735 03b0 00000000 		.long	0
 1736 03b4 00A0AF3F 		.long	1068474368
 1737 03b8 00000000 		.long	0
 1738 03bc 00A0AF3F 		.long	1068474368
 1739              		.align 32
 1740              	.LC37:
 1741 03c0 B397D05E 		.long	1590728627
 1742 03c4 429FD93F 		.long	1071226690
 1743 03c8 B397D05E 		.long	1590728627
 1744 03cc 429FD93F 		.long	1071226690
 1745 03d0 B397D05E 		.long	1590728627
 1746 03d4 429FD93F 		.long	1071226690
 1747 03d8 B397D05E 		.long	1590728627
 1748 03dc 429FD93F 		.long	1071226690
 1749              		.align 32
 1750              	.LC38:
 1751 03e0 BD84F612 		.long	318145725
 1752 03e4 DA4BA53F 		.long	1067797466
 1753 03e8 BD84F612 		.long	318145725
 1754 03ec DA4BA53F 		.long	1067797466
 1755 03f0 BD84F612 		.long	318145725
 1756 03f4 DA4BA53F 		.long	1067797466
 1757 03f8 BD84F612 		.long	318145725
 1758 03fc DA4BA53F 		.long	1067797466
 1759              		.align 32
 1760              	.LC39:
 1761 0400 00000000 		.long	0
 1762 0404 00E0D53F 		.long	1070981120
 1763 0408 00000000 		.long	0
 1764 040c 00E0D53F 		.long	1070981120
 1765 0410 00000000 		.long	0
 1766 0414 00E0D53F 		.long	1070981120
 1767 0418 00000000 		.long	0
 1768 041c 00E0D53F 		.long	1070981120
 1769              		.align 32
 1770              	.LC40:
 1771 0420 347B09ED 		.long	3976821556
 1772 0424 25349E3F 		.long	1067332645
 1773 0428 347B09ED 		.long	3976821556
 1774 042c 25349E3F 		.long	1067332645
 1775 0430 347B09ED 		.long	3976821556
 1776 0434 25349E3F 		.long	1067332645
 1777 0438 347B09ED 		.long	3976821556
 1778 043c 25349E3F 		.long	1067332645
 1779              		.align 32
 1780              	.LC41:
 1781 0440 00000000 		.long	0
GAS LISTING /tmp/ccsgyXat.s 			page 52


 1782 0444 0000EC3F 		.long	1072431104
 1783 0448 00000000 		.long	0
 1784 044c 0000EC3F 		.long	1072431104
 1785 0450 00000000 		.long	0
 1786 0454 0000EC3F 		.long	1072431104
 1787 0458 00000000 		.long	0
 1788 045c 0000EC3F 		.long	1072431104
 1789              		.align 32
 1790              	.LC42:
 1791 0460 B0B4DA85 		.long	2245702832
 1792 0464 A680D23F 		.long	1070760102
 1793 0468 B0B4DA85 		.long	2245702832
 1794 046c A680D23F 		.long	1070760102
 1795 0470 B0B4DA85 		.long	2245702832
 1796 0474 A680D23F 		.long	1070760102
 1797 0478 B0B4DA85 		.long	2245702832
 1798 047c A680D23F 		.long	1070760102
 1799              		.align 32
 1800              	.LC43:
 1801 0480 27691676 		.long	1981180199
 1802 0484 9FEFCA3F 		.long	1070264223
 1803 0488 27691676 		.long	1981180199
 1804 048c 9FEFCA3F 		.long	1070264223
 1805 0490 27691676 		.long	1981180199
 1806 0494 9FEFCA3F 		.long	1070264223
 1807 0498 27691676 		.long	1981180199
 1808 049c 9FEFCA3F 		.long	1070264223
 1809              		.align 32
 1810              	.LC44:
 1811 04a0 7EB22B2E 		.long	774615678
 1812 04a4 D0C3D93F 		.long	1071236048
 1813 04a8 7EB22B2E 		.long	774615678
 1814 04ac D0C3D93F 		.long	1071236048
 1815 04b0 7EB22B2E 		.long	774615678
 1816 04b4 D0C3D93F 		.long	1071236048
 1817 04b8 7EB22B2E 		.long	774615678
 1818 04bc D0C3D93F 		.long	1071236048
 1819              		.align 32
 1820              	.LC45:
 1821 04c0 E890B943 		.long	1136234728
 1822 04c4 E60EB93F 		.long	1069092582
 1823 04c8 E890B943 		.long	1136234728
 1824 04cc E60EB93F 		.long	1069092582
 1825 04d0 E890B943 		.long	1136234728
 1826 04d4 E60EB93F 		.long	1069092582
 1827 04d8 E890B943 		.long	1136234728
 1828 04dc E60EB93F 		.long	1069092582
 1829              		.align 32
 1830              	.LC46:
 1831 04e0 48A5D52E 		.long	785753416
 1832 04e4 3405A4BF 		.long	-1079769804
 1833 04e8 48A5D52E 		.long	785753416
 1834 04ec 3405A4BF 		.long	-1079769804
 1835 04f0 48A5D52E 		.long	785753416
 1836 04f4 3405A4BF 		.long	-1079769804
 1837 04f8 48A5D52E 		.long	785753416
 1838 04fc 3405A4BF 		.long	-1079769804
GAS LISTING /tmp/ccsgyXat.s 			page 53


 1839              		.align 32
 1840              	.LC47:
 1841 0500 82244992 		.long	2454267010
 1842 0504 24C9933F 		.long	1066649892
 1843 0508 82244992 		.long	2454267010
 1844 050c 24C9933F 		.long	1066649892
 1845 0510 82244992 		.long	2454267010
 1846 0514 24C9933F 		.long	1066649892
 1847 0518 82244992 		.long	2454267010
 1848 051c 24C9933F 		.long	1066649892
 1849              		.align 32
 1850              	.LC48:
 1851 0520 06F37686 		.long	2255942406
 1852 0524 C47CA13F 		.long	1067547844
 1853 0528 06F37686 		.long	2255942406
 1854 052c C47CA13F 		.long	1067547844
 1855 0530 06F37686 		.long	2255942406
 1856 0534 C47CA13F 		.long	1067547844
 1857 0538 06F37686 		.long	2255942406
 1858 053c C47CA13F 		.long	1067547844
 1859              		.align 32
 1860              	.LC49:
 1861 0540 1A55F19A 		.long	2599507226
 1862 0544 DB1D93BF 		.long	-1080877605
 1863 0548 1A55F19A 		.long	2599507226
 1864 054c DB1D93BF 		.long	-1080877605
 1865 0550 1A55F19A 		.long	2599507226
 1866 0554 DB1D93BF 		.long	-1080877605
 1867 0558 1A55F19A 		.long	2599507226
 1868 055c DB1D93BF 		.long	-1080877605
 1869              		.align 32
 1870              	.LC50:
 1871 0560 64599665 		.long	1704352100
 1872 0564 5996713F 		.long	1064408665
 1873 0568 64599665 		.long	1704352100
 1874 056c 5996713F 		.long	1064408665
 1875 0570 64599665 		.long	1704352100
 1876 0574 5996713F 		.long	1064408665
 1877 0578 64599665 		.long	1704352100
 1878 057c 5996713F 		.long	1064408665
 1879              		.align 32
 1880              	.LC51:
 1881 0580 95D626E8 		.long	3894859413
 1882 0584 0B2E113E 		.long	1041313291
 1883 0588 95D626E8 		.long	3894859413
 1884 058c 0B2E113E 		.long	1041313291
 1885 0590 95D626E8 		.long	3894859413
 1886 0594 0B2E113E 		.long	1041313291
 1887 0598 95D626E8 		.long	3894859413
 1888 059c 0B2E113E 		.long	1041313291
 1889              		.section	.rodata.cst16
 1890              		.align 16
 1891              	.LC52:
 1892 0040 FFFFFFFF 		.quad	4503599627370495
 1892      FFFF0F00 
 1893 0048 FFFFFFFF 		.quad	4503599627370495
 1893      FFFF0F00 
GAS LISTING /tmp/ccsgyXat.s 			page 54


 1894              		.align 16
 1895              	.LC53:
 1896 0050 00000000 		.quad	4602678819172646912
 1896      0000E03F 
 1897 0058 00000000 		.quad	4602678819172646912
 1897      0000E03F 
 1898              		.align 16
 1899              	.LC54:
 1900 0060 00000000 		.quad	4841369599423283200
 1900      00003043 
 1901 0068 00000000 		.quad	4841369599423283200
 1901      00003043 
 1902              		.section	.rodata.cst32
 1903              		.align 32
 1904              	.LC55:
 1905 05a0 FF030000 		.long	1023
 1906 05a4 00003043 		.long	1127219200
 1907 05a8 FF030000 		.long	1023
 1908 05ac 00003043 		.long	1127219200
 1909 05b0 FF030000 		.long	1023
 1910 05b4 00003043 		.long	1127219200
 1911 05b8 FF030000 		.long	1023
 1912 05bc 00003043 		.long	1127219200
 1913              		.align 32
 1914              	.LC56:
 1915 05c0 CD3B7F66 		.long	1719614413
 1916 05c4 9EA0E63F 		.long	1072079006
 1917 05c8 CD3B7F66 		.long	1719614413
 1918 05cc 9EA0E63F 		.long	1072079006
 1919 05d0 CD3B7F66 		.long	1719614413
 1920 05d4 9EA0E63F 		.long	1072079006
 1921 05d8 CD3B7F66 		.long	1719614413
 1922 05dc 9EA0E63F 		.long	1072079006
 1923              		.align 32
 1924              	.LC57:
 1925 05e0 4DC84B92 		.long	2454440013
 1926 05e4 D6EF3140 		.long	1077014486
 1927 05e8 4DC84B92 		.long	2454440013
 1928 05ec D6EF3140 		.long	1077014486
 1929 05f0 4DC84B92 		.long	2454440013
 1930 05f4 D6EF3140 		.long	1077014486
 1931 05f8 4DC84B92 		.long	2454440013
 1932 05fc D6EF3140 		.long	1077014486
 1933              		.align 32
 1934              	.LC58:
 1935 0600 F8DC7E7D 		.long	2105466104
 1936 0604 63D51E40 		.long	1075762531
 1937 0608 F8DC7E7D 		.long	2105466104
 1938 060c 63D51E40 		.long	1075762531
 1939 0610 F8DC7E7D 		.long	2105466104
 1940 0614 63D51E40 		.long	1075762531
 1941 0618 F8DC7E7D 		.long	2105466104
 1942 061c 63D51E40 		.long	1075762531
 1943              		.align 32
 1944              	.LC59:
 1945 0620 B01BC393 		.long	2479037360
 1946 0624 C2B41A3F 		.long	1058714818
GAS LISTING /tmp/ccsgyXat.s 			page 55


 1947 0628 B01BC393 		.long	2479037360
 1948 062c C2B41A3F 		.long	1058714818
 1949 0630 B01BC393 		.long	2479037360
 1950 0634 C2B41A3F 		.long	1058714818
 1951 0638 B01BC393 		.long	2479037360
 1952 063c C2B41A3F 		.long	1058714818
 1953              		.align 32
 1954              	.LC60:
 1955 0640 F252563F 		.long	1062621938
 1956 0644 F5D6DF3F 		.long	1071634165
 1957 0648 F252563F 		.long	1062621938
 1958 064c F5D6DF3F 		.long	1071634165
 1959 0650 F252563F 		.long	1062621938
 1960 0654 F5D6DF3F 		.long	1071634165
 1961 0658 F252563F 		.long	1062621938
 1962 065c F5D6DF3F 		.long	1071634165
 1963              		.align 32
 1964              	.LC61:
 1965 0660 116992ED 		.long	3985795345
 1966 0664 BAD21240 		.long	1074975418
 1967 0668 116992ED 		.long	3985795345
 1968 066c BAD21240 		.long	1074975418
 1969 0670 116992ED 		.long	3985795345
 1970 0674 BAD21240 		.long	1074975418
 1971 0678 116992ED 		.long	3985795345
 1972 067c BAD21240 		.long	1074975418
 1973              		.align 32
 1974              	.LC62:
 1975 0680 2EEB3EC6 		.long	3326012206
 1976 0684 72FF2C40 		.long	1076690802
 1977 0688 2EEB3EC6 		.long	3326012206
 1978 068c 72FF2C40 		.long	1076690802
 1979 0690 2EEB3EC6 		.long	3326012206
 1980 0694 72FF2C40 		.long	1076690802
 1981 0698 2EEB3EC6 		.long	3326012206
 1982 069c 72FF2C40 		.long	1076690802
 1983              		.align 32
 1984              	.LC63:
 1985 06a0 21AE5EEB 		.long	3948850721
 1986 06a4 E2C95140 		.long	1079101922
 1987 06a8 21AE5EEB 		.long	3948850721
 1988 06ac E2C95140 		.long	1079101922
 1989 06b0 21AE5EEB 		.long	3948850721
 1990 06b4 E2C95140 		.long	1079101922
 1991 06b8 21AE5EEB 		.long	3948850721
 1992 06bc E2C95140 		.long	1079101922
 1993              		.align 32
 1994              	.LC64:
 1995 06c0 B2251F9E 		.long	2652841394
 1996 06c4 0A203740 		.long	1077354506
 1997 06c8 B2251F9E 		.long	2652841394
 1998 06cc 0A203740 		.long	1077354506
 1999 06d0 B2251F9E 		.long	2652841394
 2000 06d4 0A203740 		.long	1077354506
 2001 06d8 B2251F9E 		.long	2652841394
 2002 06dc 0A203740 		.long	1077354506
 2003              		.align 32
GAS LISTING /tmp/ccsgyXat.s 			page 56


 2004              	.LC65:
 2005 06e0 8EEF97AE 		.long	2929192846
 2006 06e4 20932640 		.long	1076269856
 2007 06e8 8EEF97AE 		.long	2929192846
 2008 06ec 20932640 		.long	1076269856
 2009 06f0 8EEF97AE 		.long	2929192846
 2010 06f4 20932640 		.long	1076269856
 2011 06f8 8EEF97AE 		.long	2929192846
 2012 06fc 20932640 		.long	1076269856
 2013              		.align 32
 2014              	.LC66:
 2015 0700 33C0194E 		.long	1310310451
 2016 0704 2C9D4640 		.long	1078369580
 2017 0708 33C0194E 		.long	1310310451
 2018 070c 2C9D4640 		.long	1078369580
 2019 0710 33C0194E 		.long	1310310451
 2020 0714 2C9D4640 		.long	1078369580
 2021 0718 33C0194E 		.long	1310310451
 2022 071c 2C9D4640 		.long	1078369580
 2023              		.align 32
 2024              	.LC67:
 2025 0720 BDBD26A3 		.long	2737225149
 2026 0724 33BF5440 		.long	1079295795
 2027 0728 BDBD26A3 		.long	2737225149
 2028 072c 33BF5440 		.long	1079295795
 2029 0730 BDBD26A3 		.long	2737225149
 2030 0734 33BF5440 		.long	1079295795
 2031 0738 BDBD26A3 		.long	2737225149
 2032 073c 33BF5440 		.long	1079295795
 2033              		.align 32
 2034              	.LC68:
 2035 0740 A80C615C 		.long	1549864104
 2036 0744 10D02BBF 		.long	-1087647728
 2037 0748 A80C615C 		.long	1549864104
 2038 074c 10D02BBF 		.long	-1087647728
 2039 0750 A80C615C 		.long	1549864104
 2040 0754 10D02BBF 		.long	-1087647728
 2041 0758 A80C615C 		.long	1549864104
 2042 075c 10D02BBF 		.long	-1087647728
 2043              		.align 32
 2044              	.LC69:
 2045 0760 00000000 		.long	0
 2046 0764 0030E63F 		.long	1072050176
 2047 0768 00000000 		.long	0
 2048 076c 0030E63F 		.long	1072050176
 2049 0770 00000000 		.long	0
 2050 0774 0030E63F 		.long	1072050176
 2051 0778 00000000 		.long	0
 2052 077c 0030E63F 		.long	1072050176
 2053              		.align 32
 2054              	.LC70:
 2055 0780 00000000 		.long	0
 2056 0784 00001000 		.long	1048576
 2057 0788 00000000 		.long	0
 2058 078c 00001000 		.long	1048576
 2059 0790 00000000 		.long	0
 2060 0794 00001000 		.long	1048576
GAS LISTING /tmp/ccsgyXat.s 			page 57


 2061 0798 00000000 		.long	0
 2062 079c 00001000 		.long	1048576
 2063              		.align 32
 2064              	.LC71:
 2065 07a0 00000020 		.long	536870912
 2066 07a4 2000F87F 		.long	2146959392
 2067 07a8 00000020 		.long	536870912
 2068 07ac 2000F87F 		.long	2146959392
 2069 07b0 00000020 		.long	536870912
 2070 07b4 2000F87F 		.long	2146959392
 2071 07b8 00000020 		.long	536870912
 2072 07bc 2000F87F 		.long	2146959392
 2073              		.section	.rodata.cst16
 2074              		.align 16
 2075              	.LC72:
 2076 0070 00000000 		.long	0
 2077 0074 0000F07F 		.long	2146435072
 2078 0078 00000000 		.long	0
 2079 007c 0000F07F 		.long	2146435072
 2080              		.align 16
 2081              	.LC73:
 2082 0080 00000000 		.quad	9218868437227405312
 2082      0000F07F 
 2083 0088 00000000 		.quad	9218868437227405312
 2083      0000F07F 
 2084              		.section	.rodata.cst32
 2085              		.align 32
 2086              	.LC74:
 2087 07c0 FE822B65 		.long	1697350398
 2088 07c4 4715F73F 		.long	1073157447
 2089 07c8 FE822B65 		.long	1697350398
 2090 07cc 4715F73F 		.long	1073157447
 2091 07d0 FE822B65 		.long	1697350398
 2092 07d4 4715F73F 		.long	1073157447
 2093 07d8 FE822B65 		.long	1697350398
 2094 07dc 4715F73F 		.long	1073157447
 2095              		.align 32
 2096              	.LC75:
 2097 07e0 00000000 		.long	0
 2098 07e4 402EE63F 		.long	1072049728
 2099 07e8 00000000 		.long	0
 2100 07ec 402EE63F 		.long	1072049728
 2101 07f0 00000000 		.long	0
 2102 07f4 402EE63F 		.long	1072049728
 2103 07f8 00000000 		.long	0
 2104 07fc 402EE63F 		.long	1072049728
 2105              		.align 32
 2106              	.LC76:
 2107 0800 CAAB79CF 		.long	3480857546
 2108 0804 D1F7B73E 		.long	1052243921
 2109 0808 CAAB79CF 		.long	3480857546
 2110 080c D1F7B73E 		.long	1052243921
 2111 0810 CAAB79CF 		.long	3480857546
 2112 0814 D1F7B73E 		.long	1052243921
 2113 0818 CAAB79CF 		.long	3480857546
 2114 081c D1F7B73E 		.long	1052243921
 2115              		.align 32
GAS LISTING /tmp/ccsgyXat.s 			page 58


 2116              	.LC77:
 2117 0820 55555555 		.long	1431655765
 2118 0824 5555C53F 		.long	1069897045
 2119 0828 55555555 		.long	1431655765
 2120 082c 5555C53F 		.long	1069897045
 2121 0830 55555555 		.long	1431655765
 2122 0834 5555C53F 		.long	1069897045
 2123 0838 55555555 		.long	1431655765
 2124 083c 5555C53F 		.long	1069897045
 2125              		.align 32
 2126              	.LC78:
 2127 0840 11111111 		.long	286331153
 2128 0844 1111813F 		.long	1065423121
 2129 0848 11111111 		.long	286331153
 2130 084c 1111813F 		.long	1065423121
 2131 0850 11111111 		.long	286331153
 2132 0854 1111813F 		.long	1065423121
 2133 0858 11111111 		.long	286331153
 2134 085c 1111813F 		.long	1065423121
 2135              		.align 32
 2136              	.LC79:
 2137 0860 55555555 		.long	1431655765
 2138 0864 5555A53F 		.long	1067799893
 2139 0868 55555555 		.long	1431655765
 2140 086c 5555A53F 		.long	1067799893
 2141 0870 55555555 		.long	1431655765
 2142 0874 5555A53F 		.long	1067799893
 2143 0878 55555555 		.long	1431655765
 2144 087c 5555A53F 		.long	1067799893
 2145              		.align 32
 2146              	.LC80:
 2147 0880 1AA0011A 		.long	436314138
 2148 0884 A0012A3F 		.long	1059717536
 2149 0888 1AA0011A 		.long	436314138
 2150 088c A0012A3F 		.long	1059717536
 2151 0890 1AA0011A 		.long	436314138
 2152 0894 A0012A3F 		.long	1059717536
 2153 0898 1AA0011A 		.long	436314138
 2154 089c A0012A3F 		.long	1059717536
 2155              		.align 32
 2156              	.LC81:
 2157 08a0 176CC116 		.long	381774871
 2158 08a4 6CC1563F 		.long	1062650220
 2159 08a8 176CC116 		.long	381774871
 2160 08ac 6CC1563F 		.long	1062650220
 2161 08b0 176CC116 		.long	381774871
 2162 08b4 6CC1563F 		.long	1062650220
 2163 08b8 176CC116 		.long	381774871
 2164 08bc 6CC1563F 		.long	1062650220
 2165              		.align 32
 2166              	.LC82:
 2167 08c0 34C756A5 		.long	2773927732
 2168 08c4 E31DC73E 		.long	1053236707
 2169 08c8 34C756A5 		.long	2773927732
 2170 08cc E31DC73E 		.long	1053236707
 2171 08d0 34C756A5 		.long	2773927732
 2172 08d4 E31DC73E 		.long	1053236707
GAS LISTING /tmp/ccsgyXat.s 			page 59


 2173 08d8 34C756A5 		.long	2773927732
 2174 08dc E31DC73E 		.long	1053236707
 2175              		.align 32
 2176              	.LC83:
 2177 08e0 1AA0011A 		.long	436314138
 2178 08e4 A001FA3E 		.long	1056571808
 2179 08e8 1AA0011A 		.long	436314138
 2180 08ec A001FA3E 		.long	1056571808
 2181 08f0 1AA0011A 		.long	436314138
 2182 08f4 A001FA3E 		.long	1056571808
 2183 08f8 1AA0011A 		.long	436314138
 2184 08fc A001FA3E 		.long	1056571808
 2185              		.align 32
 2186              	.LC84:
 2187 0900 E444F567 		.long	1744127204
 2188 0904 45E65A3E 		.long	1046144581
 2189 0908 E444F567 		.long	1744127204
 2190 090c 45E65A3E 		.long	1046144581
 2191 0910 E444F567 		.long	1744127204
 2192 0914 45E65A3E 		.long	1046144581
 2193 0918 E444F567 		.long	1744127204
 2194 091c 45E65A3E 		.long	1046144581
 2195              		.align 32
 2196              	.LC85:
 2197 0920 5C9F78B7 		.long	3078135644
 2198 0924 4F7E923E 		.long	1049787983
 2199 0928 5C9F78B7 		.long	3078135644
 2200 092c 4F7E923E 		.long	1049787983
 2201 0930 5C9F78B7 		.long	3078135644
 2202 0934 4F7E923E 		.long	1049787983
 2203 0938 5C9F78B7 		.long	3078135644
 2204 093c 4F7E923E 		.long	1049787983
 2205              		.align 32
 2206              	.LC86:
 2207 0940 096DA813 		.long	329805065
 2208 0944 4612E63D 		.long	1038488134
 2209 0948 096DA813 		.long	329805065
 2210 094c 4612E63D 		.long	1038488134
 2211 0950 096DA813 		.long	329805065
 2212 0954 4612E63D 		.long	1038488134
 2213 0958 096DA813 		.long	329805065
 2214 095c 4612E63D 		.long	1038488134
 2215              		.align 32
 2216              	.LC87:
 2217 0960 98D8F8EF 		.long	4026063000
 2218 0964 D8EE213E 		.long	1042411224
 2219 0968 98D8F8EF 		.long	4026063000
 2220 096c D8EE213E 		.long	1042411224
 2221 0970 98D8F8EF 		.long	4026063000
 2222 0974 D8EE213E 		.long	1042411224
 2223 0978 98D8F8EF 		.long	4026063000
 2224 097c D8EE213E 		.long	1042411224
 2225              		.align 32
 2226              	.LC88:
 2227 0980 85EB51B8 		.long	3092376453
 2228 0984 1E238640 		.long	1082532638
 2229 0988 85EB51B8 		.long	3092376453
GAS LISTING /tmp/ccsgyXat.s 			page 60


 2230 098c 1E238640 		.long	1082532638
 2231 0990 85EB51B8 		.long	3092376453
 2232 0994 1E238640 		.long	1082532638
 2233 0998 85EB51B8 		.long	3092376453
 2234 099c 1E238640 		.long	1082532638
 2235              		.align 32
 2236              	.LC89:
 2237 09a0 2D431CEB 		.long	3944497965
 2238 09a4 E2361A3F 		.long	1058682594
 2239 09a8 2D431CEB 		.long	3944497965
 2240 09ac E2361A3F 		.long	1058682594
 2241 09b0 2D431CEB 		.long	3944497965
 2242 09b4 E2361A3F 		.long	1058682594
 2243 09b8 2D431CEB 		.long	3944497965
 2244 09bc E2361A3F 		.long	1058682594
 2245              		.align 32
 2246              	.LC90:
 2247 09c0 00000000 		.long	0
 2248 09c4 00001440 		.long	1075052544
 2249 09c8 00000000 		.long	0
 2250 09cc 00001440 		.long	1075052544
 2251 09d0 00000000 		.long	0
 2252 09d4 00001440 		.long	1075052544
 2253 09d8 00000000 		.long	0
 2254 09dc 00001440 		.long	1075052544
 2255              		.align 32
 2256              	.LC91:
 2257 09e0 9A999999 		.long	2576980378
 2258 09e4 9999E93F 		.long	1072273817
 2259 09e8 9A999999 		.long	2576980378
 2260 09ec 9999E93F 		.long	1072273817
 2261 09f0 9A999999 		.long	2576980378
 2262 09f4 9999E93F 		.long	1072273817
 2263 09f8 9A999999 		.long	2576980378
 2264 09fc 9999E93F 		.long	1072273817
 2265              		.align 32
 2266              	.LC92:
 2267 0a00 00000000 		.long	0
 2268 0a04 00408F40 		.long	1083129856
 2269 0a08 00000000 		.long	0
 2270 0a0c 00408F40 		.long	1083129856
 2271 0a10 00000000 		.long	0
 2272 0a14 00408F40 		.long	1083129856
 2273 0a18 00000000 		.long	0
 2274 0a1c 00408F40 		.long	1083129856
 2275              		.section	.rodata.cst8
 2276              		.align 8
 2277              	.LC93:
 2278 0010 182D4454 		.long	1413754136
 2279 0014 FB211940 		.long	1075388923
 2280              		.align 8
 2281              	.LC94:
 2282 0018 00000000 		.long	0
 2283 001c 00009040 		.long	1083179008
 2284              		.section	.rodata.cst16
 2285              		.align 16
 2286              	.LC96:
GAS LISTING /tmp/ccsgyXat.s 			page 61


 2287 0090 01000000 		.quad	4294967297
 2287      01000000 
 2288 0098 01000000 		.quad	4294967297
 2288      01000000 
 2289              		.section	.rodata.cst32
 2290              		.align 32
 2291              	.LC97:
 2292 0a20 182D4454 		.long	1413754136
 2293 0a24 FB211940 		.long	1075388923
 2294 0a28 182D4454 		.long	1413754136
 2295 0a2c FB211940 		.long	1075388923
 2296 0a30 182D4454 		.long	1413754136
 2297 0a34 FB211940 		.long	1075388923
 2298 0a38 182D4454 		.long	1413754136
 2299 0a3c FB211940 		.long	1075388923
 2300              		.align 32
 2301              	.LC98:
 2302 0a40 814EE62E 		.long	786845313
 2303 0a44 0BEBB940 		.long	1085926155
 2304 0a48 814EE62E 		.long	786845313
 2305 0a4c 0BEBB940 		.long	1085926155
 2306 0a50 814EE62E 		.long	786845313
 2307 0a54 0BEBB940 		.long	1085926155
 2308 0a58 814EE62E 		.long	786845313
 2309 0a5c 0BEBB940 		.long	1085926155
 2310              		.align 32
 2311              	.LC99:
 2312 0a60 7B14AE47 		.long	1202590843
 2313 0a64 E17A843F 		.long	1065646817
 2314 0a68 7B14AE47 		.long	1202590843
 2315 0a6c E17A843F 		.long	1065646817
 2316 0a70 7B14AE47 		.long	1202590843
 2317 0a74 E17A843F 		.long	1065646817
 2318 0a78 7B14AE47 		.long	1202590843
 2319 0a7c E17A843F 		.long	1065646817
 2320              		.align 32
 2321              	.LC100:
 2322 0a80 182D4454 		.long	1413754136
 2323 0a84 FB21B940 		.long	1085874683
 2324 0a88 182D4454 		.long	1413754136
 2325 0a8c FB21B940 		.long	1085874683
 2326 0a90 182D4454 		.long	1413754136
 2327 0a94 FB21B940 		.long	1085874683
 2328 0a98 182D4454 		.long	1413754136
 2329 0a9c FB21B940 		.long	1085874683
 2330              		.align 32
 2331              	.LC101:
 2332 0aa0 00000000 		.long	0
 2333 0aa4 0000E0BF 		.long	-1075838976
 2334 0aa8 00000000 		.long	0
 2335 0aac 0000E0BF 		.long	-1075838976
 2336 0ab0 00000000 		.long	0
 2337 0ab4 0000E0BF 		.long	-1075838976
 2338 0ab8 00000000 		.long	0
 2339 0abc 0000E0BF 		.long	-1075838976
 2340              		.align 32
 2341              	.LC102:
GAS LISTING /tmp/ccsgyXat.s 			page 62


 2342 0ac0 9A999999 		.long	2576980378
 2343 0ac4 9999B9BF 		.long	-1078355559
 2344 0ac8 9A999999 		.long	2576980378
 2345 0acc 9999B9BF 		.long	-1078355559
 2346 0ad0 9A999999 		.long	2576980378
 2347 0ad4 9999B9BF 		.long	-1078355559
 2348 0ad8 9A999999 		.long	2576980378
 2349 0adc 9999B9BF 		.long	-1078355559
 2350              		.section	.rodata.cst16
 2351              		.align 16
 2352              	.LC105:
 2353 00a0 FFFFFFFF 		.quad	-1
 2353      FFFFFFFF 
 2354 00a8 FFFFFFFF 		.quad	-1
 2354      FFFFFFFF 
 2355              		.hidden	__dso_handle
 2356              		.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
 2357              		.section	.note.GNU-stack,"",@progbits
GAS LISTING /tmp/ccsgyXat.s 			page 63


DEFINED SYMBOLS
                            *ABS*:0000000000000000 duffing_RKCK45.cpp
     /tmp/ccsgyXat.s:4      .text.unlikely:0000000000000000 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3
     /tmp/ccsgyXat.s:24     .text:0000000000000000 _Z8linspaceddi
     /tmp/ccsgyXat.s:81     .text.startup:0000000000000000 main
     /tmp/ccsgyXat.s:1388   .rodata:0000000000000000 _ZZ10constant8fILi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648ELi0ELin2147483648EEDv8_fvE1u
     /tmp/ccsgyXat.s:1400   .rodata:0000000000000020 _ZZ10constant8fILin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647ELin1ELi2147483647EEDv8_fvE1u
     /tmp/ccsgyXat.s:1365   .text.startup:0000000000001dd0 _GLOBAL__sub_I_main
                             .bss:0000000000000000 _ZStL8__ioinit
     /tmp/ccsgyXat.s:1413   .rodata.cst8:0000000000000000 .LC0
     /tmp/ccsgyXat.s:1417   .rodata.cst8:0000000000000008 .LC1
     /tmp/ccsgyXat.s:2075   .rodata.cst16:0000000000000070 .LC72
     /tmp/ccsgyXat.s:2311   .rodata.cst32:0000000000000a60 .LC99
     /tmp/ccsgyXat.s:2321   .rodata.cst32:0000000000000a80 .LC100
     /tmp/ccsgyXat.s:2331   .rodata.cst32:0000000000000aa0 .LC101
     /tmp/ccsgyXat.s:2341   .rodata.cst32:0000000000000ac0 .LC102
     /tmp/ccsgyXat.s:1422   .rodata.cst32:0000000000000000 .LC3
     /tmp/ccsgyXat.s:1432   .rodata.cst32:0000000000000020 .LC4
     /tmp/ccsgyXat.s:1442   .rodata.cst32:0000000000000040 .LC5
     /tmp/ccsgyXat.s:1452   .rodata.cst32:0000000000000060 .LC6
     /tmp/ccsgyXat.s:1482   .rodata.cst32:00000000000000c0 .LC9
     /tmp/ccsgyXat.s:1462   .rodata.cst32:0000000000000080 .LC7
     /tmp/ccsgyXat.s:1542   .rodata.cst32:0000000000000180 .LC15
     /tmp/ccsgyXat.s:1492   .rodata.cst32:00000000000000e0 .LC10
     /tmp/ccsgyXat.s:1472   .rodata.cst32:00000000000000a0 .LC8
     /tmp/ccsgyXat.s:1552   .rodata.cst32:00000000000001a0 .LC16
     /tmp/ccsgyXat.s:1502   .rodata.cst32:0000000000000100 .LC11
     /tmp/ccsgyXat.s:1512   .rodata.cst32:0000000000000120 .LC12
     /tmp/ccsgyXat.s:1522   .rodata.cst32:0000000000000140 .LC13
     /tmp/ccsgyXat.s:1532   .rodata.cst32:0000000000000160 .LC14
     /tmp/ccsgyXat.s:1562   .rodata.cst32:00000000000001c0 .LC17
     /tmp/ccsgyXat.s:1572   .rodata.cst32:00000000000001e0 .LC18
     /tmp/ccsgyXat.s:1582   .rodata.cst32:0000000000000200 .LC19
     /tmp/ccsgyXat.s:1592   .rodata.cst32:0000000000000220 .LC20
     /tmp/ccsgyXat.s:1611   .rodata.cst16:0000000000000020 .LC23
     /tmp/ccsgyXat.s:1603   .rodata.cst16:0000000000000000 .LC21
     /tmp/ccsgyXat.s:2352   .rodata.cst16:00000000000000a0 .LC105
     /tmp/ccsgyXat.s:1607   .rodata.cst16:0000000000000010 .LC22
     /tmp/ccsgyXat.s:1615   .rodata.cst16:0000000000000030 .LC24
     /tmp/ccsgyXat.s:1620   .rodata.cst32:0000000000000240 .LC25
     /tmp/ccsgyXat.s:1630   .rodata.cst32:0000000000000260 .LC26
     /tmp/ccsgyXat.s:1650   .rodata.cst32:00000000000002a0 .LC28
     /tmp/ccsgyXat.s:1640   .rodata.cst32:0000000000000280 .LC27
     /tmp/ccsgyXat.s:1670   .rodata.cst32:00000000000002e0 .LC30
     /tmp/ccsgyXat.s:1680   .rodata.cst32:0000000000000300 .LC31
     /tmp/ccsgyXat.s:1660   .rodata.cst32:00000000000002c0 .LC29
     /tmp/ccsgyXat.s:1690   .rodata.cst32:0000000000000320 .LC32
     /tmp/ccsgyXat.s:1720   .rodata.cst32:0000000000000380 .LC35
     /tmp/ccsgyXat.s:1700   .rodata.cst32:0000000000000340 .LC33
     /tmp/ccsgyXat.s:1710   .rodata.cst32:0000000000000360 .LC34
     /tmp/ccsgyXat.s:1760   .rodata.cst32:0000000000000400 .LC39
     /tmp/ccsgyXat.s:1750   .rodata.cst32:00000000000003e0 .LC38
     /tmp/ccsgyXat.s:1770   .rodata.cst32:0000000000000420 .LC40
     /tmp/ccsgyXat.s:1740   .rodata.cst32:00000000000003c0 .LC37
     /tmp/ccsgyXat.s:1730   .rodata.cst32:00000000000003a0 .LC36
     /tmp/ccsgyXat.s:1780   .rodata.cst32:0000000000000440 .LC41
     /tmp/ccsgyXat.s:1800   .rodata.cst32:0000000000000480 .LC43
GAS LISTING /tmp/ccsgyXat.s 			page 64


     /tmp/ccsgyXat.s:1820   .rodata.cst32:00000000000004c0 .LC45
     /tmp/ccsgyXat.s:1790   .rodata.cst32:0000000000000460 .LC42
     /tmp/ccsgyXat.s:1810   .rodata.cst32:00000000000004a0 .LC44
     /tmp/ccsgyXat.s:1860   .rodata.cst32:0000000000000540 .LC49
     /tmp/ccsgyXat.s:1870   .rodata.cst32:0000000000000560 .LC50
     /tmp/ccsgyXat.s:1850   .rodata.cst32:0000000000000520 .LC48
     /tmp/ccsgyXat.s:1840   .rodata.cst32:0000000000000500 .LC47
     /tmp/ccsgyXat.s:1830   .rodata.cst32:00000000000004e0 .LC46
     /tmp/ccsgyXat.s:1880   .rodata.cst32:0000000000000580 .LC51
     /tmp/ccsgyXat.s:1891   .rodata.cst16:0000000000000040 .LC52
     /tmp/ccsgyXat.s:1899   .rodata.cst16:0000000000000060 .LC54
     /tmp/ccsgyXat.s:1895   .rodata.cst16:0000000000000050 .LC53
     /tmp/ccsgyXat.s:1914   .rodata.cst32:00000000000005c0 .LC56
     /tmp/ccsgyXat.s:1904   .rodata.cst32:00000000000005a0 .LC55
     /tmp/ccsgyXat.s:1944   .rodata.cst32:0000000000000620 .LC59
     /tmp/ccsgyXat.s:2004   .rodata.cst32:00000000000006e0 .LC65
     /tmp/ccsgyXat.s:1924   .rodata.cst32:00000000000005e0 .LC57
     /tmp/ccsgyXat.s:1954   .rodata.cst32:0000000000000640 .LC60
     /tmp/ccsgyXat.s:1934   .rodata.cst32:0000000000000600 .LC58
     /tmp/ccsgyXat.s:1964   .rodata.cst32:0000000000000660 .LC61
     /tmp/ccsgyXat.s:1974   .rodata.cst32:0000000000000680 .LC62
     /tmp/ccsgyXat.s:1984   .rodata.cst32:00000000000006a0 .LC63
     /tmp/ccsgyXat.s:1994   .rodata.cst32:00000000000006c0 .LC64
     /tmp/ccsgyXat.s:2014   .rodata.cst32:0000000000000700 .LC66
     /tmp/ccsgyXat.s:2024   .rodata.cst32:0000000000000720 .LC67
     /tmp/ccsgyXat.s:2034   .rodata.cst32:0000000000000740 .LC68
     /tmp/ccsgyXat.s:2044   .rodata.cst32:0000000000000760 .LC69
     /tmp/ccsgyXat.s:2054   .rodata.cst32:0000000000000780 .LC70
     /tmp/ccsgyXat.s:2081   .rodata.cst16:0000000000000080 .LC73
     /tmp/ccsgyXat.s:2064   .rodata.cst32:00000000000007a0 .LC71
     /tmp/ccsgyXat.s:2086   .rodata.cst32:00000000000007c0 .LC74
     /tmp/ccsgyXat.s:2096   .rodata.cst32:00000000000007e0 .LC75
     /tmp/ccsgyXat.s:2106   .rodata.cst32:0000000000000800 .LC76
     /tmp/ccsgyXat.s:2146   .rodata.cst32:0000000000000880 .LC80
     /tmp/ccsgyXat.s:2116   .rodata.cst32:0000000000000820 .LC77
     /tmp/ccsgyXat.s:2126   .rodata.cst32:0000000000000840 .LC78
     /tmp/ccsgyXat.s:2156   .rodata.cst32:00000000000008a0 .LC81
     /tmp/ccsgyXat.s:2136   .rodata.cst32:0000000000000860 .LC79
     /tmp/ccsgyXat.s:2186   .rodata.cst32:0000000000000900 .LC84
     /tmp/ccsgyXat.s:2196   .rodata.cst32:0000000000000920 .LC85
     /tmp/ccsgyXat.s:2166   .rodata.cst32:00000000000008c0 .LC82
     /tmp/ccsgyXat.s:2206   .rodata.cst32:0000000000000940 .LC86
     /tmp/ccsgyXat.s:2176   .rodata.cst32:00000000000008e0 .LC83
     /tmp/ccsgyXat.s:2216   .rodata.cst32:0000000000000960 .LC87
     /tmp/ccsgyXat.s:2226   .rodata.cst32:0000000000000980 .LC88
     /tmp/ccsgyXat.s:2236   .rodata.cst32:00000000000009a0 .LC89
     /tmp/ccsgyXat.s:2246   .rodata.cst32:00000000000009c0 .LC90
     /tmp/ccsgyXat.s:2266   .rodata.cst32:0000000000000a00 .LC92
     /tmp/ccsgyXat.s:2256   .rodata.cst32:00000000000009e0 .LC91
     /tmp/ccsgyXat.s:2291   .rodata.cst32:0000000000000a20 .LC97
     /tmp/ccsgyXat.s:2286   .rodata.cst16:0000000000000090 .LC96
     /tmp/ccsgyXat.s:2301   .rodata.cst32:0000000000000a40 .LC98
     /tmp/ccsgyXat.s:2277   .rodata.cst8:0000000000000010 .LC93
     /tmp/ccsgyXat.s:2281   .rodata.cst8:0000000000000018 .LC94

UNDEFINED SYMBOLS
_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
GAS LISTING /tmp/ccsgyXat.s 			page 65


aligned_alloc
__gxx_personality_v0
_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
clock
_ZSt4cout
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
_ZNSo9_M_insertIlEERSoT_
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
_ZNSo5flushEv
_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
_ZNSo9_M_insertIdEERSoT_
_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
_ZNSo3putEc
_ZNKSt5ctypeIcE13_M_widen_initEv
_ZSt16__throw_bad_castv
_Unwind_Resume
__stack_chk_fail
_ZNSt8ios_base4InitC1Ev
__dso_handle
_ZNSt8ios_base4InitD1Ev
__cxa_atexit
