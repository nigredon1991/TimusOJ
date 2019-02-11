   1              		.file	"1106.c"
   2              		.text
   3              	.Ltext0:
   4              		.globl	create_queue
   6              	create_queue:
   7              	.LFB6:
   8              		.file 1 "1106.c"
   1:1106.c        **** #include <stdio.h>
   2:1106.c        **** #include <stdlib.h>
   3:1106.c        **** 
   4:1106.c        **** typedef struct queue *Queue;
   5:1106.c        **** struct queue {
   6:1106.c        **** 	int front;
   7:1106.c        **** 	int rear;
   8:1106.c        **** 	int itemCount;
   9:1106.c        **** 	int max_count;
  10:1106.c        **** 	int elements[];
  11:1106.c        **** };
  12:1106.c        **** 
  13:1106.c        **** Queue create_queue(int count_buffer) {
   9              		.loc 1 13 38
  10              		.cfi_startproc
  11 0000 55       		pushq	%rbp
  12              		.cfi_def_cfa_offset 16
  13              		.cfi_offset 6, -16
  14 0001 4889E5   		movq	%rsp, %rbp
  15              		.cfi_def_cfa_register 6
  16 0004 4883EC20 		subq	$32, %rsp
  17 0008 897DEC   		movl	%edi, -20(%rbp)
  14:1106.c        **** 	Queue queue;
  15:1106.c        **** 	queue = malloc(sizeof(struct queue) + sizeof(int[count_buffer]));
  18              		.loc 1 15 10
  19 000b 8B45EC   		movl	-20(%rbp), %eax
  20              		.loc 1 15 38
  21 000e 4898     		cltq
  22              		.loc 1 15 10
  23 0010 4883C004 		addq	$4, %rax
  24 0014 48C1E002 		salq	$2, %rax
  25 0018 4889C7   		movq	%rax, %rdi
  26 001b E8000000 		call	malloc@PLT
  26      00
  27 0020 488945F8 		movq	%rax, -8(%rbp)
  16:1106.c        **** 	queue->front = 0;
  28              		.loc 1 16 15
  29 0024 488B45F8 		movq	-8(%rbp), %rax
  30 0028 C7000000 		movl	$0, (%rax)
  30      0000
  17:1106.c        **** 	queue->rear = -1;
  31              		.loc 1 17 14
  32 002e 488B45F8 		movq	-8(%rbp), %rax
  33 0032 C74004FF 		movl	$-1, 4(%rax)
  33      FFFFFF
  18:1106.c        **** 	queue->itemCount = 0;
  34              		.loc 1 18 19
  35 0039 488B45F8 		movq	-8(%rbp), %rax
  36 003d C7400800 		movl	$0, 8(%rax)
  36      000000
  19:1106.c        **** 	queue->max_count = count_buffer;
  37              		.loc 1 19 19
  38 0044 488B45F8 		movq	-8(%rbp), %rax
  39 0048 8B55EC   		movl	-20(%rbp), %edx
  40 004b 89500C   		movl	%edx, 12(%rax)
  20:1106.c        **** 	return queue;
  41              		.loc 1 20 9
  42 004e 488B45F8 		movq	-8(%rbp), %rax
  21:1106.c        **** }
  43              		.loc 1 21 1
  44 0052 C9       		leave
  45              		.cfi_def_cfa 7, 8
  46 0053 C3       		ret
  47              		.cfi_endproc
  48              	.LFE6:
  50              		.globl	remove_queue
  52              	remove_queue:
  53              	.LFB7:
  22:1106.c        **** 
  23:1106.c        **** void remove_queue(Queue queue) { free(queue); }
  54              		.loc 1 23 32
  55              		.cfi_startproc
  56 0054 55       		pushq	%rbp
  57              		.cfi_def_cfa_offset 16
  58              		.cfi_offset 6, -16
  59 0055 4889E5   		movq	%rsp, %rbp
  60              		.cfi_def_cfa_register 6
  61 0058 4883EC10 		subq	$16, %rsp
  62 005c 48897DF8 		movq	%rdi, -8(%rbp)
  63              		.loc 1 23 34
  64 0060 488B45F8 		movq	-8(%rbp), %rax
  65 0064 4889C7   		movq	%rax, %rdi
  66 0067 E8000000 		call	free@PLT
  66      00
  67              		.loc 1 23 1
  68 006c 90       		nop
  69 006d C9       		leave
  70              		.cfi_def_cfa 7, 8
  71 006e C3       		ret
  72              		.cfi_endproc
  73              	.LFE7:
  75              		.globl	is_Empty
  77              	is_Empty:
  78              	.LFB8:
  24:1106.c        **** 
  25:1106.c        **** int is_Empty(Queue queue) {
  79              		.loc 1 25 27
  80              		.cfi_startproc
  81 006f 55       		pushq	%rbp
  82              		.cfi_def_cfa_offset 16
  83              		.cfi_offset 6, -16
  84 0070 4889E5   		movq	%rsp, %rbp
  85              		.cfi_def_cfa_register 6
  86 0073 48897DF8 		movq	%rdi, -8(%rbp)
  26:1106.c        **** 	if (queue->itemCount == 0)
  87              		.loc 1 26 11
  88 0077 488B45F8 		movq	-8(%rbp), %rax
  89 007b 8B4008   		movl	8(%rax), %eax
  90              		.loc 1 26 5
  91 007e 85C0     		testl	%eax, %eax
  92 0080 7507     		jne	.L5
  27:1106.c        **** 		return 1;
  93              		.loc 1 27 10
  94 0082 B8010000 		movl	$1, %eax
  94      00
  95 0087 EB05     		jmp	.L6
  96              	.L5:
  28:1106.c        **** 	return 0;
  97              		.loc 1 28 9
  98 0089 B8000000 		movl	$0, %eax
  98      00
  99              	.L6:
  29:1106.c        **** }
 100              		.loc 1 29 1
 101 008e 5D       		popq	%rbp
 102              		.cfi_def_cfa 7, 8
 103 008f C3       		ret
 104              		.cfi_endproc
 105              	.LFE8:
 107              		.globl	is_Full
 109              	is_Full:
 110              	.LFB9:
  30:1106.c        **** int is_Full(Queue queue) {
 111              		.loc 1 30 26
 112              		.cfi_startproc
 113 0090 55       		pushq	%rbp
 114              		.cfi_def_cfa_offset 16
 115              		.cfi_offset 6, -16
 116 0091 4889E5   		movq	%rsp, %rbp
 117              		.cfi_def_cfa_register 6
 118 0094 48897DF8 		movq	%rdi, -8(%rbp)
  31:1106.c        **** 	if (queue->max_count == queue->itemCount)
 119              		.loc 1 31 11
 120 0098 488B45F8 		movq	-8(%rbp), %rax
 121 009c 8B500C   		movl	12(%rax), %edx
 122              		.loc 1 31 31
 123 009f 488B45F8 		movq	-8(%rbp), %rax
 124 00a3 8B4008   		movl	8(%rax), %eax
 125              		.loc 1 31 5
 126 00a6 39C2     		cmpl	%eax, %edx
 127 00a8 7507     		jne	.L8
  32:1106.c        **** 		return 1;
 128              		.loc 1 32 10
 129 00aa B8010000 		movl	$1, %eax
 129      00
 130 00af EB05     		jmp	.L9
 131              	.L8:
  33:1106.c        **** 	return 0;
 132              		.loc 1 33 9
 133 00b1 B8000000 		movl	$0, %eax
 133      00
 134              	.L9:
  34:1106.c        **** }
 135              		.loc 1 34 1
 136 00b6 5D       		popq	%rbp
 137              		.cfi_def_cfa 7, 8
 138 00b7 C3       		ret
 139              		.cfi_endproc
 140              	.LFE9:
 142              		.globl	push
 144              	push:
 145              	.LFB10:
  35:1106.c        **** 
  36:1106.c        **** void push(Queue q, int elem) {
 146              		.loc 1 36 30
 147              		.cfi_startproc
 148 00b8 55       		pushq	%rbp
 149              		.cfi_def_cfa_offset 16
 150              		.cfi_offset 6, -16
 151 00b9 4889E5   		movq	%rsp, %rbp
 152              		.cfi_def_cfa_register 6
 153 00bc 48897DF8 		movq	%rdi, -8(%rbp)
 154 00c0 8975F4   		movl	%esi, -12(%rbp)
  37:1106.c        **** 	if (q->rear == q->max_count - 1)
 155              		.loc 1 37 7
 156 00c3 488B45F8 		movq	-8(%rbp), %rax
 157 00c7 8B5004   		movl	4(%rax), %edx
 158              		.loc 1 37 18
 159 00ca 488B45F8 		movq	-8(%rbp), %rax
 160 00ce 8B400C   		movl	12(%rax), %eax
 161              		.loc 1 37 30
 162 00d1 83E801   		subl	$1, %eax
 163              		.loc 1 37 5
 164 00d4 39C2     		cmpl	%eax, %edx
 165 00d6 750B     		jne	.L11
  38:1106.c        **** 		q->rear = -1;
 166              		.loc 1 38 11
 167 00d8 488B45F8 		movq	-8(%rbp), %rax
 168 00dc C74004FF 		movl	$-1, 4(%rax)
 168      FFFFFF
 169              	.L11:
  39:1106.c        **** 	q->elements[++q->rear] = elem;
 170              		.loc 1 39 17
 171 00e3 488B45F8 		movq	-8(%rbp), %rax
 172 00e7 8B4004   		movl	4(%rax), %eax
 173              		.loc 1 39 14
 174 00ea 8D5001   		leal	1(%rax), %edx
 175              		.loc 1 39 25
 176 00ed 488B45F8 		movq	-8(%rbp), %rax
 177 00f1 895004   		movl	%edx, 4(%rax)
 178              		.loc 1 39 17
 179 00f4 488B45F8 		movq	-8(%rbp), %rax
 180 00f8 8B5004   		movl	4(%rax), %edx
 181              		.loc 1 39 25
 182 00fb 488B45F8 		movq	-8(%rbp), %rax
 183 00ff 4863D2   		movslq	%edx, %rdx
 184 0102 488D4A04 		leaq	4(%rdx), %rcx
 185 0106 8B55F4   		movl	-12(%rbp), %edx
 186 0109 891488   		movl	%edx, (%rax,%rcx,4)
  40:1106.c        **** 	(q->itemCount)++;
 187              		.loc 1 40 4
 188 010c 488B45F8 		movq	-8(%rbp), %rax
 189 0110 8B4008   		movl	8(%rax), %eax
 190              		.loc 1 40 16
 191 0113 8D5001   		leal	1(%rax), %edx
 192 0116 488B45F8 		movq	-8(%rbp), %rax
 193 011a 895008   		movl	%edx, 8(%rax)
  41:1106.c        **** }
 194              		.loc 1 41 1
 195 011d 90       		nop
 196 011e 5D       		popq	%rbp
 197              		.cfi_def_cfa 7, 8
 198 011f C3       		ret
 199              		.cfi_endproc
 200              	.LFE10:
 202              		.globl	front
 204              	front:
 205              	.LFB11:
  42:1106.c        **** 
  43:1106.c        **** int front(Queue q) { return q->elements[q->rear]; }
 206              		.loc 1 43 20
 207              		.cfi_startproc
 208 0120 55       		pushq	%rbp
 209              		.cfi_def_cfa_offset 16
 210              		.cfi_offset 6, -16
 211 0121 4889E5   		movq	%rsp, %rbp
 212              		.cfi_def_cfa_register 6
 213 0124 48897DF8 		movq	%rdi, -8(%rbp)
 214              		.loc 1 43 42
 215 0128 488B45F8 		movq	-8(%rbp), %rax
 216 012c 8B5004   		movl	4(%rax), %edx
 217              		.loc 1 43 40
 218 012f 488B45F8 		movq	-8(%rbp), %rax
 219 0133 4863D2   		movslq	%edx, %rdx
 220 0136 4883C204 		addq	$4, %rdx
 221 013a 8B0490   		movl	(%rax,%rdx,4), %eax
 222              		.loc 1 43 1
 223 013d 5D       		popq	%rbp
 224              		.cfi_def_cfa 7, 8
 225 013e C3       		ret
 226              		.cfi_endproc
 227              	.LFE11:
 229              		.globl	pop
 231              	pop:
 232              	.LFB12:
  44:1106.c        **** 
  45:1106.c        **** int pop(Queue q) {
 233              		.loc 1 45 18
 234              		.cfi_startproc
 235 013f 55       		pushq	%rbp
 236              		.cfi_def_cfa_offset 16
 237              		.cfi_offset 6, -16
 238 0140 4889E5   		movq	%rsp, %rbp
 239              		.cfi_def_cfa_register 6
 240 0143 48897DE8 		movq	%rdi, -24(%rbp)
  46:1106.c        **** 	q->itemCount--;
 241              		.loc 1 46 3
 242 0147 488B45E8 		movq	-24(%rbp), %rax
 243 014b 8B4008   		movl	8(%rax), %eax
 244              		.loc 1 46 14
 245 014e 8D50FF   		leal	-1(%rax), %edx
 246 0151 488B45E8 		movq	-24(%rbp), %rax
 247 0155 895008   		movl	%edx, 8(%rax)
  47:1106.c        **** 	int elem = q->elements[q->front];
 248              		.loc 1 47 26
 249 0158 488B45E8 		movq	-24(%rbp), %rax
 250 015c 8B10     		movl	(%rax), %edx
 251              		.loc 1 47 6
 252 015e 488B45E8 		movq	-24(%rbp), %rax
 253 0162 4863D2   		movslq	%edx, %rdx
 254 0165 4883C204 		addq	$4, %rdx
 255 0169 8B0490   		movl	(%rax,%rdx,4), %eax
 256 016c 8945FC   		movl	%eax, -4(%rbp)
  48:1106.c        **** 	if (q->front == q->max_count - 1)
 257              		.loc 1 48 7
 258 016f 488B45E8 		movq	-24(%rbp), %rax
 259 0173 8B10     		movl	(%rax), %edx
 260              		.loc 1 48 19
 261 0175 488B45E8 		movq	-24(%rbp), %rax
 262 0179 8B400C   		movl	12(%rax), %eax
 263              		.loc 1 48 31
 264 017c 83E801   		subl	$1, %eax
 265              		.loc 1 48 5
 266 017f 39C2     		cmpl	%eax, %edx
 267 0181 750A     		jne	.L15
  49:1106.c        **** 		q->front = 0;
 268              		.loc 1 49 12
 269 0183 488B45E8 		movq	-24(%rbp), %rax
 270 0187 C7000000 		movl	$0, (%rax)
 270      0000
 271              	.L15:
  50:1106.c        **** 	q->front++;
 272              		.loc 1 50 3
 273 018d 488B45E8 		movq	-24(%rbp), %rax
 274 0191 8B00     		movl	(%rax), %eax
 275              		.loc 1 50 10
 276 0193 8D5001   		leal	1(%rax), %edx
 277 0196 488B45E8 		movq	-24(%rbp), %rax
 278 019a 8910     		movl	%edx, (%rax)
  51:1106.c        **** 	return elem;
 279              		.loc 1 51 9
 280 019c 8B45FC   		movl	-4(%rbp), %eax
  52:1106.c        **** }
 281              		.loc 1 52 1
 282 019f 5D       		popq	%rbp
 283              		.cfi_def_cfa 7, 8
 284 01a0 C3       		ret
 285              		.cfi_endproc
 286              	.LFE12:
 288              		.globl	bfs
 290              	bfs:
 291              	.LFB13:
  53:1106.c        **** 
  54:1106.c        **** void bfs(int start, int *g[], int used[], int d[], int N) {
 292              		.loc 1 54 59
 293              		.cfi_startproc
 294 01a1 55       		pushq	%rbp
 295              		.cfi_def_cfa_offset 16
 296              		.cfi_offset 6, -16
 297 01a2 4889E5   		movq	%rsp, %rbp
 298              		.cfi_def_cfa_register 6
 299 01a5 4883EC40 		subq	$64, %rsp
 300 01a9 897DDC   		movl	%edi, -36(%rbp)
 301 01ac 488975D0 		movq	%rsi, -48(%rbp)
 302 01b0 488955C8 		movq	%rdx, -56(%rbp)
 303 01b4 48894DC0 		movq	%rcx, -64(%rbp)
 304 01b8 448945D8 		movl	%r8d, -40(%rbp)
  55:1106.c        **** 	Queue queue = create_queue(N);
 305              		.loc 1 55 16
 306 01bc 8B45D8   		movl	-40(%rbp), %eax
 307 01bf 89C7     		movl	%eax, %edi
 308 01c1 E8000000 		call	create_queue
 308      00
 309 01c6 488945F8 		movq	%rax, -8(%rbp)
  56:1106.c        **** 	int s = start;
 310              		.loc 1 56 6
 311 01ca 8B45DC   		movl	-36(%rbp), %eax
 312 01cd 8945EC   		movl	%eax, -20(%rbp)
  57:1106.c        **** 	push(queue, s);
 313              		.loc 1 57 2
 314 01d0 8B55EC   		movl	-20(%rbp), %edx
 315 01d3 488B45F8 		movq	-8(%rbp), %rax
 316 01d7 89D6     		movl	%edx, %esi
 317 01d9 4889C7   		movq	%rax, %rdi
 318 01dc E8000000 		call	push
 318      00
  58:1106.c        **** 	used[s] = 1;
 319              		.loc 1 58 6
 320 01e1 8B45EC   		movl	-20(%rbp), %eax
 321 01e4 4898     		cltq
 322 01e6 488D1485 		leaq	0(,%rax,4), %rdx
 322      00000000 
 323 01ee 488B45C8 		movq	-56(%rbp), %rax
 324 01f2 4801D0   		addq	%rdx, %rax
 325              		.loc 1 58 10
 326 01f5 C7000100 		movl	$1, (%rax)
 326      0000
  59:1106.c        **** 	while (!is_Empty(queue)) {
 327              		.loc 1 59 8
 328 01fb E9EB0000 		jmp	.L18
 328      00
 329              	.L22:
 330              	.LBB2:
  60:1106.c        **** 		int v = pop(queue);
 331              		.loc 1 60 11
 332 0200 488B45F8 		movq	-8(%rbp), %rax
 333 0204 4889C7   		movq	%rax, %rdi
 334 0207 E8000000 		call	pop
 334      00
 335 020c 8945F0   		movl	%eax, -16(%rbp)
 336              	.LBB3:
  61:1106.c        **** 		for (int i = 0; g[v][i] != -1; i++) {
 337              		.loc 1 61 12
 338 020f C745E800 		movl	$0, -24(%rbp)
 338      000000
 339              		.loc 1 61 3
 340 0216 E9A10000 		jmp	.L19
 340      00
 341              	.L21:
 342              	.LBB4:
  62:1106.c        **** 			int to = g[v][i];
 343              		.loc 1 62 14
 344 021b 8B45F0   		movl	-16(%rbp), %eax
 345 021e 4898     		cltq
 346 0220 488D14C5 		leaq	0(,%rax,8), %rdx
 346      00000000 
 347 0228 488B45D0 		movq	-48(%rbp), %rax
 348 022c 4801D0   		addq	%rdx, %rax
 349 022f 488B00   		movq	(%rax), %rax
 350              		.loc 1 62 17
 351 0232 8B55E8   		movl	-24(%rbp), %edx
 352 0235 4863D2   		movslq	%edx, %rdx
 353 0238 48C1E202 		salq	$2, %rdx
 354 023c 4801D0   		addq	%rdx, %rax
 355              		.loc 1 62 8
 356 023f 8B00     		movl	(%rax), %eax
 357 0241 8945F4   		movl	%eax, -12(%rbp)
  63:1106.c        **** 			if (!used[to]) {
 358              		.loc 1 63 13
 359 0244 8B45F4   		movl	-12(%rbp), %eax
 360 0247 4898     		cltq
 361 0249 488D1485 		leaq	0(,%rax,4), %rdx
 361      00000000 
 362 0251 488B45C8 		movq	-56(%rbp), %rax
 363 0255 4801D0   		addq	%rdx, %rax
 364 0258 8B00     		movl	(%rax), %eax
 365              		.loc 1 63 7
 366 025a 85C0     		testl	%eax, %eax
 367 025c 755A     		jne	.L20
  64:1106.c        **** 				used[to] = 1;
 368              		.loc 1 64 9
 369 025e 8B45F4   		movl	-12(%rbp), %eax
 370 0261 4898     		cltq
 371 0263 488D1485 		leaq	0(,%rax,4), %rdx
 371      00000000 
 372 026b 488B45C8 		movq	-56(%rbp), %rax
 373 026f 4801D0   		addq	%rdx, %rax
 374              		.loc 1 64 14
 375 0272 C7000100 		movl	$1, (%rax)
 375      0000
  65:1106.c        **** 				push(queue, to);
 376              		.loc 1 65 5
 377 0278 8B55F4   		movl	-12(%rbp), %edx
 378 027b 488B45F8 		movq	-8(%rbp), %rax
 379 027f 89D6     		movl	%edx, %esi
 380 0281 4889C7   		movq	%rax, %rdi
 381 0284 E8000000 		call	push
 381      00
  66:1106.c        **** 				d[to] = d[v] + 1;
 382              		.loc 1 66 14
 383 0289 8B45F0   		movl	-16(%rbp), %eax
 384 028c 4898     		cltq
 385 028e 488D1485 		leaq	0(,%rax,4), %rdx
 385      00000000 
 386 0296 488B45C0 		movq	-64(%rbp), %rax
 387 029a 4801D0   		addq	%rdx, %rax
 388 029d 8B10     		movl	(%rax), %edx
 389              		.loc 1 66 6
 390 029f 8B45F4   		movl	-12(%rbp), %eax
 391 02a2 4898     		cltq
 392 02a4 488D0C85 		leaq	0(,%rax,4), %rcx
 392      00000000 
 393 02ac 488B45C0 		movq	-64(%rbp), %rax
 394 02b0 4801C8   		addq	%rcx, %rax
 395              		.loc 1 66 18
 396 02b3 83C201   		addl	$1, %edx
 397              		.loc 1 66 11
 398 02b6 8910     		movl	%edx, (%rax)
 399              	.L20:
 400              	.LBE4:
  61:1106.c        **** 			int to = g[v][i];
 401              		.loc 1 61 35 discriminator 2
 402 02b8 8345E801 		addl	$1, -24(%rbp)
 403              	.L19:
  61:1106.c        **** 			int to = g[v][i];
 404              		.loc 1 61 20 discriminator 1
 405 02bc 8B45F0   		movl	-16(%rbp), %eax
 406 02bf 4898     		cltq
 407 02c1 488D14C5 		leaq	0(,%rax,8), %rdx
 407      00000000 
 408 02c9 488B45D0 		movq	-48(%rbp), %rax
 409 02cd 4801D0   		addq	%rdx, %rax
 410 02d0 488B00   		movq	(%rax), %rax
  61:1106.c        **** 			int to = g[v][i];
 411              		.loc 1 61 23 discriminator 1
 412 02d3 8B55E8   		movl	-24(%rbp), %edx
 413 02d6 4863D2   		movslq	%edx, %rdx
 414 02d9 48C1E202 		salq	$2, %rdx
 415 02dd 4801D0   		addq	%rdx, %rax
 416 02e0 8B00     		movl	(%rax), %eax
  61:1106.c        **** 			int to = g[v][i];
 417              		.loc 1 61 3 discriminator 1
 418 02e2 83F8FF   		cmpl	$-1, %eax
 419 02e5 0F8530FF 		jne	.L21
 419      FFFF
 420              	.L18:
 421              	.LBE3:
 422              	.LBE2:
  59:1106.c        **** 		int v = pop(queue);
 423              		.loc 1 59 10
 424 02eb 488B45F8 		movq	-8(%rbp), %rax
 425 02ef 4889C7   		movq	%rax, %rdi
 426 02f2 E8000000 		call	is_Empty
 426      00
  59:1106.c        **** 		int v = pop(queue);
 427              		.loc 1 59 8
 428 02f7 85C0     		testl	%eax, %eax
 429 02f9 0F8401FF 		je	.L22
 429      FFFF
  67:1106.c        **** 			}
  68:1106.c        **** 		}
  69:1106.c        **** 	}
  70:1106.c        **** 	remove_queue(queue);
 430              		.loc 1 70 2
 431 02ff 488B45F8 		movq	-8(%rbp), %rax
 432 0303 4889C7   		movq	%rax, %rdi
 433 0306 E8000000 		call	remove_queue
 433      00
  71:1106.c        **** }
 434              		.loc 1 71 1
 435 030b 90       		nop
 436 030c C9       		leave
 437              		.cfi_def_cfa 7, 8
 438 030d C3       		ret
 439              		.cfi_endproc
 440              	.LFE13:
 442              		.section	.rodata
 443              	.LC0:
 444 0000 727400   		.string	"rt"
 445              	.LC1:
 446 0003 696E7075 		.string	"input"
 446      7400
 447              	.LC2:
 448 0009 256400   		.string	"%d"
 449              	.LC3:
 450 000c 25640A00 		.string	"%d\n"
 451              	.LC4:
 452 0010 25642000 		.string	"%d "
 453              		.text
 454              		.globl	main
 456              	main:
 457              	.LFB14:
  72:1106.c        **** 
  73:1106.c        **** int main() {
 458              		.loc 1 73 12
 459              		.cfi_startproc
 460 030e 55       		pushq	%rbp
 461              		.cfi_def_cfa_offset 16
 462              		.cfi_offset 6, -16
 463 030f 4889E5   		movq	%rsp, %rbp
 464              		.cfi_def_cfa_register 6
 465 0312 4157     		pushq	%r15
 466 0314 4156     		pushq	%r14
 467 0316 4155     		pushq	%r13
 468 0318 4154     		pushq	%r12
 469 031a 53       		pushq	%rbx
 470 031b 4881ECF8 		subq	$248, %rsp
 470      000000
 471              		.cfi_offset 15, -24
 472              		.cfi_offset 14, -32
 473              		.cfi_offset 13, -40
 474              		.cfi_offset 12, -48
 475              		.cfi_offset 3, -56
 476              		.loc 1 73 12
 477 0322 64488B04 		movq	%fs:40, %rax
 477      25280000 
 477      00
 478 032b 488945C8 		movq	%rax, -56(%rbp)
 479 032f 31C0     		xorl	%eax, %eax
 480 0331 4889E0   		movq	%rsp, %rax
 481 0334 488985E8 		movq	%rax, -280(%rbp)
 481      FEFFFF
  74:1106.c        **** 
  75:1106.c        **** #ifndef ONLINE_JUDGE
  76:1106.c        **** 	freopen("input", "rt", stdin);
 482              		.loc 1 76 2
 483 033b 488B0500 		movq	stdin(%rip), %rax
 483      000000
 484 0342 4889C2   		movq	%rax, %rdx
 485 0345 488D3500 		leaq	.LC0(%rip), %rsi
 485      000000
 486 034c 488D3D00 		leaq	.LC1(%rip), %rdi
 486      000000
 487 0353 E8000000 		call	freopen@PLT
 487      00
  77:1106.c        **** #endif
  78:1106.c        **** 	/* Queue q = create_queue(10); */
  79:1106.c        **** 	/* push(q, 1); */
  80:1106.c        **** 	/* printf("%d\n", pop(q)); */
  81:1106.c        **** 	/* push(q, 2); */
  82:1106.c        **** 	/* printf("%d\n", pop(q)); */
  83:1106.c        **** 	/* push(q, 3); */
  84:1106.c        **** 	/* printf("%d\n", pop(q)); */
  85:1106.c        **** 	/* push(q, 3); */
  86:1106.c        **** 	/* push(q, 2); */
  87:1106.c        **** 	/* push(q, 1); */
  88:1106.c        **** 	/* printf("%d\n", pop(q)); */
  89:1106.c        **** 	/* printf("%d\n", pop(q)); */
  90:1106.c        **** 	/* printf("%d\n", pop(q)); */
  91:1106.c        **** 	/* return 0; */
  92:1106.c        **** 
  93:1106.c        **** 	int N, buf;
  94:1106.c        **** 	scanf("%d", &N);
 488              		.loc 1 94 2
 489 0358 488D8558 		leaq	-168(%rbp), %rax
 489      FFFFFF
 490 035f 4889C6   		movq	%rax, %rsi
 491 0362 488D3D00 		leaq	.LC2(%rip), %rdi
 491      000000
 492 0369 B8000000 		movl	$0, %eax
 492      00
 493 036e E8000000 		call	__isoc99_scanf@PLT
 493      00
  95:1106.c        **** 	int *Graph[N];
 494              		.loc 1 95 2
 495 0373 8B9558FF 		movl	-168(%rbp), %edx
 495      FFFF
 496              		.loc 1 95 7
 497 0379 4863C2   		movslq	%edx, %rax
 498 037c 4883E801 		subq	$1, %rax
 499 0380 48894588 		movq	%rax, -120(%rbp)
 500 0384 4863C2   		movslq	%edx, %rax
 501 0387 4989C4   		movq	%rax, %r12
 502 038a 41BD0000 		movl	$0, %r13d
 502      0000
 503 0390 4863C2   		movslq	%edx, %rax
 504 0393 4989C6   		movq	%rax, %r14
 505 0396 41BF0000 		movl	$0, %r15d
 505      0000
 506 039c 4863C2   		movslq	%edx, %rax
 507 039f 488D14C5 		leaq	0(,%rax,8), %rdx
 507      00000000 
 508 03a7 B8100000 		movl	$16, %eax
 508      00
 509 03ac 4883E801 		subq	$1, %rax
 510 03b0 4801D0   		addq	%rdx, %rax
 511 03b3 BB100000 		movl	$16, %ebx
 511      00
 512 03b8 BA000000 		movl	$0, %edx
 512      00
 513 03bd 48F7F3   		divq	%rbx
 514 03c0 486BC010 		imulq	$16, %rax, %rax
 515 03c4 4829C4   		subq	%rax, %rsp
 516 03c7 4889E0   		movq	%rsp, %rax
 517 03ca 4883C007 		addq	$7, %rax
 518 03ce 48C1E803 		shrq	$3, %rax
 519 03d2 48C1E003 		salq	$3, %rax
 520 03d6 48894590 		movq	%rax, -112(%rbp)
 521              	.LBB5:
  96:1106.c        **** 	for (int i = 0; i < N; i++) {
 522              		.loc 1 96 11
 523 03da C7458000 		movl	$0, -128(%rbp)
 523      000000
 524              		.loc 1 96 2
 525 03e1 EB28     		jmp	.L24
 526              	.L25:
  97:1106.c        **** 		Graph[i] = malloc(sizeof(int) * N);
 527              		.loc 1 97 14 discriminator 3
 528 03e3 8B8558FF 		movl	-168(%rbp), %eax
 528      FFFF
 529 03e9 4898     		cltq
 530 03eb 48C1E002 		salq	$2, %rax
 531 03ef 4889C7   		movq	%rax, %rdi
 532 03f2 E8000000 		call	malloc@PLT
 532      00
 533 03f7 4889C1   		movq	%rax, %rcx
 534              		.loc 1 97 12 discriminator 3
 535 03fa 488B5590 		movq	-112(%rbp), %rdx
 536 03fe 8B4580   		movl	-128(%rbp), %eax
 537 0401 4898     		cltq
 538 0403 48890CC2 		movq	%rcx, (%rdx,%rax,8)
  96:1106.c        **** 	for (int i = 0; i < N; i++) {
 539              		.loc 1 96 26 discriminator 3
 540 0407 83458001 		addl	$1, -128(%rbp)
 541              	.L24:
  96:1106.c        **** 	for (int i = 0; i < N; i++) {
 542              		.loc 1 96 20 discriminator 1
 543 040b 8B8558FF 		movl	-168(%rbp), %eax
 543      FFFF
  96:1106.c        **** 	for (int i = 0; i < N; i++) {
 544              		.loc 1 96 2 discriminator 1
 545 0411 394580   		cmpl	%eax, -128(%rbp)
 546 0414 7CCD     		jl	.L25
 547              	.LBE5:
  98:1106.c        **** 	}
  99:1106.c        **** 	int n = 0;
 548              		.loc 1 99 6
 549 0416 C7458400 		movl	$0, -124(%rbp)
 549      000000
 550              	.LBB6:
 100:1106.c        **** 	for (int i = 0; i < N; i++) {
 551              		.loc 1 100 11
 552 041d C7857CFF 		movl	$0, -132(%rbp)
 552      FFFF0000 
 552      0000
 553              		.loc 1 100 2
 554 0427 EB6A     		jmp	.L26
 555              	.L30:
 556              	.LBB7:
 101:1106.c        **** 		for (int j = 0;; j++) {
 557              		.loc 1 101 12
 558 0429 C78578FF 		movl	$0, -136(%rbp)
 558      FFFF0000 
 558      0000
 559              	.L29:
 102:1106.c        **** 			scanf("%d", &buf);
 560              		.loc 1 102 4
 561 0433 488D855C 		leaq	-164(%rbp), %rax
 561      FFFFFF
 562 043a 4889C6   		movq	%rax, %rsi
 563 043d 488D3D00 		leaq	.LC2(%rip), %rdi
 563      000000
 564 0444 B8000000 		movl	$0, %eax
 564      00
 565 0449 E8000000 		call	__isoc99_scanf@PLT
 565      00
 103:1106.c        **** 			Graph[i][j] = buf - 1;
 566              		.loc 1 103 22
 567 044e 8B8D5CFF 		movl	-164(%rbp), %ecx
 567      FFFF
 568              		.loc 1 103 9
 569 0454 488B5590 		movq	-112(%rbp), %rdx
 570 0458 8B857CFF 		movl	-132(%rbp), %eax
 570      FFFF
 571 045e 4898     		cltq
 572 0460 488B14C2 		movq	(%rdx,%rax,8), %rdx
 573              		.loc 1 103 12
 574 0464 8B8578FF 		movl	-136(%rbp), %eax
 574      FFFF
 575 046a 4898     		cltq
 576 046c 48C1E002 		salq	$2, %rax
 577 0470 4801C2   		addq	%rax, %rdx
 578              		.loc 1 103 22
 579 0473 8D41FF   		leal	-1(%rcx), %eax
 580              		.loc 1 103 16
 581 0476 8902     		movl	%eax, (%rdx)
 104:1106.c        **** 			if (buf == 0) {
 582              		.loc 1 104 12
 583 0478 8B855CFF 		movl	-164(%rbp), %eax
 583      FFFF
 584              		.loc 1 104 7
 585 047e 85C0     		testl	%eax, %eax
 586 0480 7409     		je	.L46
 101:1106.c        **** 			scanf("%d", &buf);
 587              		.loc 1 101 21
 588 0482 838578FF 		addl	$1, -136(%rbp)
 588      FFFF01
 102:1106.c        **** 			Graph[i][j] = buf - 1;
 589              		.loc 1 102 4
 590 0489 EBA8     		jmp	.L29
 591              	.L46:
 105:1106.c        **** 				break;
 592              		.loc 1 105 5
 593 048b 90       		nop
 594              	.LBE7:
 100:1106.c        **** 		for (int j = 0;; j++) {
 595              		.loc 1 100 26
 596 048c 83857CFF 		addl	$1, -132(%rbp)
 596      FFFF01
 597              	.L26:
 100:1106.c        **** 		for (int j = 0;; j++) {
 598              		.loc 1 100 20 discriminator 1
 599 0493 8B8558FF 		movl	-168(%rbp), %eax
 599      FFFF
 100:1106.c        **** 		for (int j = 0;; j++) {
 600              		.loc 1 100 2 discriminator 1
 601 0499 39857CFF 		cmpl	%eax, -132(%rbp)
 601      FFFF
 602 049f 7C88     		jl	.L30
 603              	.LBE6:
 106:1106.c        **** 				n += j;
 107:1106.c        **** 			}
 108:1106.c        **** 		}
 109:1106.c        **** 	}
 110:1106.c        **** 	// inicialization
 111:1106.c        **** 	int used[N * N];
 604              		.loc 1 111 13
 605 04a1 8B9558FF 		movl	-168(%rbp), %edx
 605      FFFF
 606 04a7 8B8558FF 		movl	-168(%rbp), %eax
 606      FFFF
 607 04ad 0FAFD0   		imull	%eax, %edx
 608              		.loc 1 111 2
 609 04b0 4889E0   		movq	%rsp, %rax
 610 04b3 4989C4   		movq	%rax, %r12
 611              		.loc 1 111 13
 612 04b6 4863C2   		movslq	%edx, %rax
 613              		.loc 1 111 6
 614 04b9 4883E801 		subq	$1, %rax
 615 04bd 48894598 		movq	%rax, -104(%rbp)
 616 04c1 4863C2   		movslq	%edx, %rax
 617 04c4 48898540 		movq	%rax, -192(%rbp)
 617      FFFFFF
 618 04cb 48C78548 		movq	$0, -184(%rbp)
 618      FFFFFF00 
 618      000000
 619 04d6 4863C2   		movslq	%edx, %rax
 620 04d9 48898530 		movq	%rax, -208(%rbp)
 620      FFFFFF
 621 04e0 48C78538 		movq	$0, -200(%rbp)
 621      FFFFFF00 
 621      000000
 622 04eb 4863C2   		movslq	%edx, %rax
 623 04ee 488D1485 		leaq	0(,%rax,4), %rdx
 623      00000000 
 624 04f6 B8100000 		movl	$16, %eax
 624      00
 625 04fb 4883E801 		subq	$1, %rax
 626 04ff 4801D0   		addq	%rdx, %rax
 627 0502 BB100000 		movl	$16, %ebx
 627      00
 628 0507 BA000000 		movl	$0, %edx
 628      00
 629 050c 48F7F3   		divq	%rbx
 630 050f 486BC010 		imulq	$16, %rax, %rax
 631 0513 4829C4   		subq	%rax, %rsp
 632 0516 4889E0   		movq	%rsp, %rax
 633 0519 4883C003 		addq	$3, %rax
 634 051d 48C1E802 		shrq	$2, %rax
 635 0521 48C1E002 		salq	$2, %rax
 636 0525 488945A0 		movq	%rax, -96(%rbp)
 112:1106.c        **** 	int d[N * N];
 637              		.loc 1 112 10
 638 0529 8B9558FF 		movl	-168(%rbp), %edx
 638      FFFF
 639 052f 8B8558FF 		movl	-168(%rbp), %eax
 639      FFFF
 640 0535 0FAFC2   		imull	%edx, %eax
 641 0538 4863D0   		movslq	%eax, %rdx
 642              		.loc 1 112 6
 643 053b 4883EA01 		subq	$1, %rdx
 644 053f 488955A8 		movq	%rdx, -88(%rbp)
 645 0543 4863D0   		movslq	%eax, %rdx
 646 0546 48899520 		movq	%rdx, -224(%rbp)
 646      FFFFFF
 647 054d 48C78528 		movq	$0, -216(%rbp)
 647      FFFFFF00 
 647      000000
 648 0558 4863D0   		movslq	%eax, %rdx
 649 055b 48899510 		movq	%rdx, -240(%rbp)
 649      FFFFFF
 650 0562 48C78518 		movq	$0, -232(%rbp)
 650      FFFFFF00 
 650      000000
 651 056d 4898     		cltq
 652 056f 488D1485 		leaq	0(,%rax,4), %rdx
 652      00000000 
 653 0577 B8100000 		movl	$16, %eax
 653      00
 654 057c 4883E801 		subq	$1, %rax
 655 0580 4801D0   		addq	%rdx, %rax
 656 0583 BB100000 		movl	$16, %ebx
 656      00
 657 0588 BA000000 		movl	$0, %edx
 657      00
 658 058d 48F7F3   		divq	%rbx
 659 0590 486BC010 		imulq	$16, %rax, %rax
 660 0594 4829C4   		subq	%rax, %rsp
 661 0597 4889E0   		movq	%rsp, %rax
 662 059a 4883C003 		addq	$3, %rax
 663 059e 48C1E802 		shrq	$2, %rax
 664 05a2 48C1E002 		salq	$2, %rax
 665 05a6 488945B0 		movq	%rax, -80(%rbp)
 666              	.LBB8:
 113:1106.c        **** 	for (int i = 0; i < N * N; i++) {
 667              		.loc 1 113 11
 668 05aa C78574FF 		movl	$0, -140(%rbp)
 668      FFFF0000 
 668      0000
 669              		.loc 1 113 2
 670 05b4 EB2F     		jmp	.L31
 671              	.L32:
 114:1106.c        **** 		used[i] = 0;
 672              		.loc 1 114 11 discriminator 3
 673 05b6 488B45A0 		movq	-96(%rbp), %rax
 674 05ba 8B9574FF 		movl	-140(%rbp), %edx
 674      FFFF
 675 05c0 4863D2   		movslq	%edx, %rdx
 676 05c3 C7049000 		movl	$0, (%rax,%rdx,4)
 676      000000
 115:1106.c        **** 		d[i] = 0;
 677              		.loc 1 115 8 discriminator 3
 678 05ca 488B45B0 		movq	-80(%rbp), %rax
 679 05ce 8B9574FF 		movl	-140(%rbp), %edx
 679      FFFF
 680 05d4 4863D2   		movslq	%edx, %rdx
 681 05d7 C7049000 		movl	$0, (%rax,%rdx,4)
 681      000000
 113:1106.c        **** 	for (int i = 0; i < N * N; i++) {
 682              		.loc 1 113 30 discriminator 3
 683 05de 838574FF 		addl	$1, -140(%rbp)
 683      FFFF01
 684              	.L31:
 113:1106.c        **** 	for (int i = 0; i < N * N; i++) {
 685              		.loc 1 113 24 discriminator 1
 686 05e5 8B9558FF 		movl	-168(%rbp), %edx
 686      FFFF
 687 05eb 8B8558FF 		movl	-168(%rbp), %eax
 687      FFFF
 688 05f1 0FAFC2   		imull	%edx, %eax
 113:1106.c        **** 	for (int i = 0; i < N * N; i++) {
 689              		.loc 1 113 2 discriminator 1
 690 05f4 398574FF 		cmpl	%eax, -140(%rbp)
 690      FFFF
 691 05fa 7CBA     		jl	.L32
 692              	.LBE8:
 693              	.LBB9:
 116:1106.c        **** 	}
 117:1106.c        **** 	for (int start = 0; start < N; start++)
 694              		.loc 1 117 11
 695 05fc C78570FF 		movl	$0, -144(%rbp)
 695      FFFF0000 
 695      0000
 696              		.loc 1 117 2
 697 0606 EB3D     		jmp	.L33
 698              	.L35:
 118:1106.c        **** 		if (!used[start])
 699              		.loc 1 118 12
 700 0608 488B45A0 		movq	-96(%rbp), %rax
 701 060c 8B9570FF 		movl	-144(%rbp), %edx
 701      FFFF
 702 0612 4863D2   		movslq	%edx, %rdx
 703 0615 8B0490   		movl	(%rax,%rdx,4), %eax
 704              		.loc 1 118 6
 705 0618 85C0     		testl	%eax, %eax
 706 061a 7522     		jne	.L34
 119:1106.c        **** 			bfs(start, Graph, used, d, N);
 707              		.loc 1 119 4
 708 061c 8BBD58FF 		movl	-168(%rbp), %edi
 708      FFFF
 709 0622 488B4DB0 		movq	-80(%rbp), %rcx
 710 0626 488B55A0 		movq	-96(%rbp), %rdx
 711 062a 488B7590 		movq	-112(%rbp), %rsi
 712 062e 8B8570FF 		movl	-144(%rbp), %eax
 712      FFFF
 713 0634 4189F8   		movl	%edi, %r8d
 714 0637 89C7     		movl	%eax, %edi
 715 0639 E8000000 		call	bfs
 715      00
 716              	.L34:
 117:1106.c        **** 		if (!used[start])
 717              		.loc 1 117 38 discriminator 2
 718 063e 838570FF 		addl	$1, -144(%rbp)
 718      FFFF01
 719              	.L33:
 117:1106.c        **** 		if (!used[start])
 720              		.loc 1 117 28 discriminator 1
 721 0645 8B8558FF 		movl	-168(%rbp), %eax
 721      FFFF
 117:1106.c        **** 		if (!used[start])
 722              		.loc 1 117 2 discriminator 1
 723 064b 398570FF 		cmpl	%eax, -144(%rbp)
 723      FFFF
 724 0651 7CB5     		jl	.L35
 725              	.LBE9:
 120:1106.c        **** 
 121:1106.c        **** 	int ans[N];
 726              		.loc 1 121 2
 727 0653 8B8558FF 		movl	-168(%rbp), %eax
 727      FFFF
 728 0659 4889E2   		movq	%rsp, %rdx
 729 065c 4889D3   		movq	%rdx, %rbx
 730              		.loc 1 121 6
 731 065f 4863D0   		movslq	%eax, %rdx
 732 0662 4883EA01 		subq	$1, %rdx
 733 0666 488955B8 		movq	%rdx, -72(%rbp)
 734 066a 4863D0   		movslq	%eax, %rdx
 735 066d 48899500 		movq	%rdx, -256(%rbp)
 735      FFFFFF
 736 0674 48C78508 		movq	$0, -248(%rbp)
 736      FFFFFF00 
 736      000000
 737 067f 4863D0   		movslq	%eax, %rdx
 738 0682 488995F0 		movq	%rdx, -272(%rbp)
 738      FEFFFF
 739 0689 48C785F8 		movq	$0, -264(%rbp)
 739      FEFFFF00 
 739      000000
 740 0694 4898     		cltq
 741 0696 488D1485 		leaq	0(,%rax,4), %rdx
 741      00000000 
 742 069e B8100000 		movl	$16, %eax
 742      00
 743 06a3 4883E801 		subq	$1, %rax
 744 06a7 4801D0   		addq	%rdx, %rax
 745 06aa BE100000 		movl	$16, %esi
 745      00
 746 06af BA000000 		movl	$0, %edx
 746      00
 747 06b4 48F7F6   		divq	%rsi
 748 06b7 486BC010 		imulq	$16, %rax, %rax
 749 06bb 4829C4   		subq	%rax, %rsp
 750 06be 4889E0   		movq	%rsp, %rax
 751 06c1 4883C003 		addq	$3, %rax
 752 06c5 48C1E802 		shrq	$2, %rax
 753 06c9 48C1E002 		salq	$2, %rax
 754 06cd 488945C0 		movq	%rax, -64(%rbp)
 122:1106.c        **** 	int num_ans = 0;
 755              		.loc 1 122 6
 756 06d1 C7856CFF 		movl	$0, -148(%rbp)
 756      FFFF0000 
 756      0000
 757              	.LBB10:
 123:1106.c        **** 	for (int i = 0; i < N; i++) {
 758              		.loc 1 123 11
 759 06db C78568FF 		movl	$0, -152(%rbp)
 759      FFFF0000 
 759      0000
 760              		.loc 1 123 2
 761 06e5 EB3E     		jmp	.L36
 762              	.L38:
 124:1106.c        **** 		if (d[i] % 2 == 0) {
 763              		.loc 1 124 8
 764 06e7 488B45B0 		movq	-80(%rbp), %rax
 765 06eb 8B9568FF 		movl	-152(%rbp), %edx
 765      FFFF
 766 06f1 4863D2   		movslq	%edx, %rdx
 767 06f4 8B0490   		movl	(%rax,%rdx,4), %eax
 768              		.loc 1 124 16
 769 06f7 83E001   		andl	$1, %eax
 770              		.loc 1 124 6
 771 06fa 85C0     		testl	%eax, %eax
 772 06fc 7520     		jne	.L37
 125:1106.c        **** 			ans[num_ans] = i + 1;
 773              		.loc 1 125 21
 774 06fe 8B8568FF 		movl	-152(%rbp), %eax
 774      FFFF
 775 0704 8D4801   		leal	1(%rax), %ecx
 776              		.loc 1 125 17
 777 0707 488B45C0 		movq	-64(%rbp), %rax
 778 070b 8B956CFF 		movl	-148(%rbp), %edx
 778      FFFF
 779 0711 4863D2   		movslq	%edx, %rdx
 780 0714 890C90   		movl	%ecx, (%rax,%rdx,4)
 126:1106.c        **** 			num_ans++;
 781              		.loc 1 126 11
 782 0717 83856CFF 		addl	$1, -148(%rbp)
 782      FFFF01
 783              	.L37:
 123:1106.c        **** 		if (d[i] % 2 == 0) {
 784              		.loc 1 123 26 discriminator 2
 785 071e 838568FF 		addl	$1, -152(%rbp)
 785      FFFF01
 786              	.L36:
 123:1106.c        **** 		if (d[i] % 2 == 0) {
 787              		.loc 1 123 20 discriminator 1
 788 0725 8B8558FF 		movl	-168(%rbp), %eax
 788      FFFF
 123:1106.c        **** 		if (d[i] % 2 == 0) {
 789              		.loc 1 123 2 discriminator 1
 790 072b 398568FF 		cmpl	%eax, -152(%rbp)
 790      FFFF
 791 0731 7CB4     		jl	.L38
 792              	.LBE10:
 127:1106.c        **** 		}
 128:1106.c        **** 	}
 129:1106.c        **** 	/* printf("%d ", 1); */
 130:1106.c        **** 
 131:1106.c        **** 	printf("%d\n", num_ans);
 793              		.loc 1 131 2
 794 0733 8B856CFF 		movl	-148(%rbp), %eax
 794      FFFF
 795 0739 89C6     		movl	%eax, %esi
 796 073b 488D3D00 		leaq	.LC3(%rip), %rdi
 796      000000
 797 0742 B8000000 		movl	$0, %eax
 797      00
 798 0747 E8000000 		call	printf@PLT
 798      00
 799              	.LBB11:
 132:1106.c        **** 
 133:1106.c        **** 	for (int i = 0; i < num_ans; i++) {
 800              		.loc 1 133 11
 801 074c C78564FF 		movl	$0, -156(%rbp)
 801      FFFF0000 
 801      0000
 802              		.loc 1 133 2
 803 0756 EB2A     		jmp	.L39
 804              	.L40:
 134:1106.c        **** 
 135:1106.c        **** 		printf("%d ", ans[i]);
 805              		.loc 1 135 3 discriminator 3
 806 0758 488B45C0 		movq	-64(%rbp), %rax
 807 075c 8B9564FF 		movl	-156(%rbp), %edx
 807      FFFF
 808 0762 4863D2   		movslq	%edx, %rdx
 809 0765 8B0490   		movl	(%rax,%rdx,4), %eax
 810 0768 89C6     		movl	%eax, %esi
 811 076a 488D3D00 		leaq	.LC4(%rip), %rdi
 811      000000
 812 0771 B8000000 		movl	$0, %eax
 812      00
 813 0776 E8000000 		call	printf@PLT
 813      00
 133:1106.c        **** 
 814              		.loc 1 133 32 discriminator 3
 815 077b 838564FF 		addl	$1, -156(%rbp)
 815      FFFF01
 816              	.L39:
 133:1106.c        **** 
 817              		.loc 1 133 2 discriminator 1
 818 0782 8B8564FF 		movl	-156(%rbp), %eax
 818      FFFF
 819 0788 3B856CFF 		cmpl	-148(%rbp), %eax
 819      FFFF
 820 078e 7CC8     		jl	.L40
 821              	.LBE11:
 822              	.LBB12:
 136:1106.c        **** 	}
 137:1106.c        **** 	for (int i = 0; i < N; i++) {
 823              		.loc 1 137 11
 824 0790 C78560FF 		movl	$0, -160(%rbp)
 824      FFFF0000 
 824      0000
 825              		.loc 1 137 2
 826 079a EB20     		jmp	.L41
 827              	.L42:
 138:1106.c        **** 		free(Graph[i]);
 828              		.loc 1 138 13 discriminator 3
 829 079c 488B4590 		movq	-112(%rbp), %rax
 830 07a0 8B9560FF 		movl	-160(%rbp), %edx
 830      FFFF
 831 07a6 4863D2   		movslq	%edx, %rdx
 832 07a9 488B04D0 		movq	(%rax,%rdx,8), %rax
 833              		.loc 1 138 3 discriminator 3
 834 07ad 4889C7   		movq	%rax, %rdi
 835 07b0 E8000000 		call	free@PLT
 835      00
 137:1106.c        **** 		free(Graph[i]);
 836              		.loc 1 137 26 discriminator 3
 837 07b5 838560FF 		addl	$1, -160(%rbp)
 837      FFFF01
 838              	.L41:
 137:1106.c        **** 		free(Graph[i]);
 839              		.loc 1 137 20 discriminator 1
 840 07bc 8B8558FF 		movl	-168(%rbp), %eax
 840      FFFF
 137:1106.c        **** 		free(Graph[i]);
 841              		.loc 1 137 2 discriminator 1
 842 07c2 398560FF 		cmpl	%eax, -160(%rbp)
 842      FFFF
 843 07c8 7CD2     		jl	.L42
 844              	.LBE12:
 139:1106.c        **** 	}
 140:1106.c        **** 
 141:1106.c        **** 	return 0;
 845              		.loc 1 141 9
 846 07ca B8000000 		movl	$0, %eax
 846      00
 847 07cf 4889DC   		movq	%rbx, %rsp
 848 07d2 4C89E4   		movq	%r12, %rsp
 849 07d5 488BA5E8 		movq	-280(%rbp), %rsp
 849      FEFFFF
 142:1106.c        **** }
 850              		.loc 1 142 1
 851 07dc 488B5DC8 		movq	-56(%rbp), %rbx
 852 07e0 6448331C 		xorq	%fs:40, %rbx
 852      25280000 
 852      00
 853 07e9 7405     		je	.L44
 854 07eb E8000000 		call	__stack_chk_fail@PLT
 854      00
 855              	.L44:
 856 07f0 488D65D8 		leaq	-40(%rbp), %rsp
 857 07f4 5B       		popq	%rbx
 858 07f5 415C     		popq	%r12
 859 07f7 415D     		popq	%r13
 860 07f9 415E     		popq	%r14
 861 07fb 415F     		popq	%r15
 862 07fd 5D       		popq	%rbp
 863              		.cfi_def_cfa 7, 8
 864 07fe C3       		ret
 865              		.cfi_endproc
 866              	.LFE14:
 868              	.Letext0:
 869              		.file 2 "/usr/lib/gcc/x86_64-pc-linux-gnu/8.2.1/include/stddef.h"
 870              		.file 3 "/usr/include/bits/types.h"
 871              		.file 4 "/usr/include/bits/types/struct_FILE.h"
 872              		.file 5 "/usr/include/bits/types/FILE.h"
 873              		.file 6 "/usr/include/stdio.h"
 874              		.file 7 "/usr/include/bits/sys_errlist.h"
