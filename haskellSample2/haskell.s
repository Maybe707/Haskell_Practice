.section .data
.align 8
.align 1
s2cX_closure:
	.quad	ghczmprim_GHCziTypes_Izh_con_info
	.quad	29
.section .data
.align 8
.align 1
s2cW_closure:
	.quad	ghczmprim_GHCziTypes_Izh_con_info
	.quad	6
.section .data
.align 8
.align 1
s2cV_closure:
	.quad	ghczmprim_GHCziTypes_Izh_con_info
	.quad	11
.section .data
.align 8
.align 1
s2cU_closure:
	.quad	ghczmprim_GHCziTypes_Izh_con_info
	.quad	6
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2df_str:
	.asciz "haskell.hs"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2cT_info)+0
s2cT_info:
.Lc2dg:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2dh
.Lc2di:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2de
.Lc2dd:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2df_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2de:
	jmp *(%rbx)
.Lc2dh:
	jmp *-16(%r13)
	.size s2cT_info, .-s2cT_info
.section .data
.align 8
.align 1
s2cT_closure:
	.quad	s2cT_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2dv_str:
	.asciz "Haskell"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2cS_info)+0
s2cS_info:
.Lc2dw:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2dx
.Lc2dy:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2du
.Lc2dt:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2dv_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2du:
	jmp *(%rbx)
.Lc2dx:
	jmp *-16(%r13)
	.size s2cS_info, .-s2cS_info
.section .data
.align 8
.align 1
s2cS_closure:
	.quad	s2cS_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2dL_str:
	.asciz "main"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2cR_info)+0
s2cR_info:
.Lc2dM:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2dN
.Lc2dO:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2dK
.Lc2dJ:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2dL_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2dK:
	jmp *(%rbx)
.Lc2dN:
	jmp *-16(%r13)
	.size s2cR_info, .-s2cR_info
.section .data
.align 8
.align 1
s2cR_closure:
	.quad	s2cR_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
s2cY_closure:
	.quad	base_GHCziStackziTypes_SrcLoc_con_info
	.quad	s2cR_closure
	.quad	s2cS_closure
	.quad	s2cT_closure
	.quad	s2cU_closure+1
	.quad	s2cV_closure+1
	.quad	s2cW_closure+1
	.quad	s2cX_closure+1
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2e2_str:
	.asciz "error"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2cQ_info)+0
s2cQ_info:
.Lc2e3:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2e4
.Lc2e5:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2e1
.Lc2e0:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2e2_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2e1:
	jmp *(%rbx)
.Lc2e4:
	jmp *-16(%r13)
	.size s2cQ_info, .-s2cQ_info
.section .data
.align 8
.align 1
s2cQ_closure:
	.quad	s2cQ_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
s2cZ_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	s2cQ_closure
	.quad	s2cY_closure+1
	.quad	0
.section .data
.align 8
.align 1
u2em_srt:
	.quad	stg_SRT_3_info
	.quad	base_GHCziStackziTypes_emptyCallStack_closure
	.quad	base_GHCziStackziTypes_pushCallStack_closure
	.quad	s2cZ_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u2em_srt-(r2ag_info)+0
r2ag_info:
.Lc2ej:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2ek
.Lc2el:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2ei
.Lc2eh:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $base_GHCziStackziTypes_emptyCallStack_closure,%esi
	movl $s2cZ_closure+1,%r14d
	movl $base_GHCziStackziTypes_pushCallStack_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_pp_fast
.Lc2ei:
	jmp *(%rbx)
.Lc2ek:
	jmp *-16(%r13)
	.size r2ag_info, .-r2ag_info
.section .data
.align 8
.align 1
r2ag_closure:
	.quad	r2ag_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
u2eX_srt:
	.quad	stg_SRT_3_info
	.quad	ghczmprim_GHCziCString_unpackCStringzh_closure
	.quad	base_GHCziErr_error_closure
	.quad	r2ag_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2eG_str:
	.asciz "Empty list"
.section .text
.align 8
.align 8
	.quad	0
	.long	15
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2d2_info)+0
s2d2_info:
.Lc2eH:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2eI
.Lc2eJ:
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movl $c2eG_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2eI:
	jmp *-16(%r13)
	.size s2d2_info, .-s2d2_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	0
	.long	14
	.long	u2eX_srt-(Haskell_head_info)+0
.globl Haskell_head_info
.type Haskell_head_info, @object
Haskell_head_info:
.Lc2eO:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2eP
.Lc2eQ:
	movq $c2ex_info,-8(%rbp)
	movq %r14,%rbx
	addq $-8,%rbp
	testb $7,%bl
	jne .Lc2ex
.Lc2ey:
	jmp *(%rbx)
.align 8
	.quad	0
	.long	30
	.long	u2eX_srt-(c2ex_info)+0
c2ex_info:
.Lc2ex:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne .Lc2eM
.Lc2eL:
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja .Lc2eT
.Lc2eS:
	movq $s2d2_info,-8(%r12)
	leaq -8(%r12),%rax
	movq %rax,%rsi
	movl $r2ag_closure,%r14d
	movl $base_GHCziErr_error_closure,%ebx
	addq $8,%rbp
	jmp stg_ap_pp_fast
.Lc2eM:
	movq 6(%rbx),%rax
	movq %rax,%rbx
	addq $8,%rbp
	jmp stg_ap_0_fast
.Lc2eP:
	movl $Haskell_head_closure,%ebx
	jmp *-8(%r13)
.Lc2eT:
	movq $16,904(%r13)
	jmp stg_gc_unpt_r1
	.size Haskell_head_info, .-Haskell_head_info
.section .data
.align 8
.align 1
.globl Haskell_head_closure
.type Haskell_head_closure, @object
Haskell_head_closure:
	.quad	Haskell_head_info
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r2aB_bytes:
	.asciz "main"
.section .data
.align 8
.align 1
r2aC_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r2aB_bytes
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r2aD_bytes:
	.asciz "Haskell"
.section .data
.align 8
.align 1
r2aE_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r2aD_bytes
.section .data
.align 8
.align 1
.globl Haskell_zdtrModule_closure
.type Haskell_zdtrModule_closure, @object
Haskell_zdtrModule_closure:
	.quad	ghczmprim_GHCziTypes_Module_con_info
	.quad	r2aC_closure+1
	.quad	r2aE_closure+1
	.quad	3
.section .note.GNU-stack,"",@progbits
.ident "GHC 8.6.5"


