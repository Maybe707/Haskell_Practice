.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2xz_str:
	.asciz "Bill"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2uN_info)+0
r2uN_info:
.Lc2xA:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2xB
.Lc2xC:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2xy
.Lc2xx:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2xz_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2xy:
	jmp *(%rbx)
.Lc2xB:
	jmp *-16(%r13)
	.size r2uN_info, .-r2uN_info
.section .data
.align 8
.align 1
r2uN_closure:
	.quad	r2uN_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2xP_str:
	.asciz "John"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2w5_info)+0
r2w5_info:
.Lc2xQ:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2xR
.Lc2xS:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2xO
.Lc2xN:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2xP_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2xO:
	jmp *(%rbx)
.Lc2xR:
	jmp *-16(%r13)
	.size r2w5_info, .-r2w5_info
.section .data
.align 8
.align 1
r2w5_closure:
	.quad	r2w5_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2w6_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2uN_closure
	.quad	r2w5_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2y6_str:
	.asciz "Ann"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2w7_info)+0
r2w7_info:
.Lc2y7:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2y8
.Lc2y9:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2y5
.Lc2y4:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2y6_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2y5:
	jmp *(%rbx)
.Lc2y8:
	jmp *-16(%r13)
	.size r2w7_info, .-r2w7_info
.section .data
.align 8
.align 1
r2w7_closure:
	.quad	r2w7_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2ym_str:
	.asciz "John"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2w8_info)+0
r2w8_info:
.Lc2yn:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2yo
.Lc2yp:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2yl
.Lc2yk:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2ym_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2yl:
	jmp *(%rbx)
.Lc2yo:
	jmp *-16(%r13)
	.size r2w8_info, .-r2w8_info
.section .data
.align 8
.align 1
r2w8_closure:
	.quad	r2w8_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2w9_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2w7_closure
	.quad	r2w8_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2yD_str:
	.asciz "John"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wa_info)+0
r2wa_info:
.Lc2yE:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2yF
.Lc2yG:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2yC
.Lc2yB:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2yD_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2yC:
	jmp *(%rbx)
.Lc2yF:
	jmp *-16(%r13)
	.size r2wa_info, .-r2wa_info
.section .data
.align 8
.align 1
r2wa_closure:
	.quad	r2wa_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2yT_str:
	.asciz "Piter"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wb_info)+0
r2wb_info:
.Lc2yU:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2yV
.Lc2yW:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2yS
.Lc2yR:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2yT_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2yS:
	jmp *(%rbx)
.Lc2yV:
	jmp *-16(%r13)
	.size r2wb_info, .-r2wb_info
.section .data
.align 8
.align 1
r2wb_closure:
	.quad	r2wb_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wc_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wa_closure
	.quad	r2wb_closure
	.quad	0
.section .data
.align 8
.align 1
r2wd_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wc_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
.align 8
.align 1
r2we_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2w9_closure+1
	.quad	r2wd_closure+2
	.quad	0
.section .data
.align 8
.align 1
.globl Demo_fathers_closure
.type Demo_fathers_closure, @object
Demo_fathers_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2w6_closure+1
	.quad	r2we_closure+2
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2zd_str:
	.asciz "Bill"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wf_info)+0
r2wf_info:
.Lc2ze:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2zf
.Lc2zg:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2zc
.Lc2zb:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2zd_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2zc:
	jmp *(%rbx)
.Lc2zf:
	jmp *-16(%r13)
	.size r2wf_info, .-r2wf_info
.section .data
.align 8
.align 1
r2wf_closure:
	.quad	r2wf_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2zt_str:
	.asciz "Jane"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wg_info)+0
r2wg_info:
.Lc2zu:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2zv
.Lc2zw:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2zs
.Lc2zr:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2zt_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2zs:
	jmp *(%rbx)
.Lc2zv:
	jmp *-16(%r13)
	.size r2wg_info, .-r2wg_info
.section .data
.align 8
.align 1
r2wg_closure:
	.quad	r2wg_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wh_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wf_closure
	.quad	r2wg_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2zK_str:
	.asciz "Ann"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wi_info)+0
r2wi_info:
.Lc2zL:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2zM
.Lc2zN:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2zJ
.Lc2zI:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2zK_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2zJ:
	jmp *(%rbx)
.Lc2zM:
	jmp *-16(%r13)
	.size r2wi_info, .-r2wi_info
.section .data
.align 8
.align 1
r2wi_closure:
	.quad	r2wi_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2A0_str:
	.asciz "Jane"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wj_info)+0
r2wj_info:
.Lc2A1:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2A2
.Lc2A3:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2zZ
.Lc2zY:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2A0_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2zZ:
	jmp *(%rbx)
.Lc2A2:
	jmp *-16(%r13)
	.size r2wj_info, .-r2wj_info
.section .data
.align 8
.align 1
r2wj_closure:
	.quad	r2wj_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wk_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wi_closure
	.quad	r2wj_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2Ah_str:
	.asciz "John"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wl_info)+0
r2wl_info:
.Lc2Ai:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Aj
.Lc2Ak:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2Ag
.Lc2Af:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2Ah_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2Ag:
	jmp *(%rbx)
.Lc2Aj:
	jmp *-16(%r13)
	.size r2wl_info, .-r2wl_info
.section .data
.align 8
.align 1
r2wl_closure:
	.quad	r2wl_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2Ax_str:
	.asciz "Alice"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wm_info)+0
r2wm_info:
.Lc2Ay:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Az
.Lc2AA:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2Aw
.Lc2Av:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2Ax_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2Aw:
	jmp *(%rbx)
.Lc2Az:
	jmp *-16(%r13)
	.size r2wm_info, .-r2wm_info
.section .data
.align 8
.align 1
r2wm_closure:
	.quad	r2wm_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wn_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wl_closure
	.quad	r2wm_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2AO_str:
	.asciz "Jane"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wo_info)+0
r2wo_info:
.Lc2AP:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2AQ
.Lc2AR:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2AN
.Lc2AM:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2AO_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2AN:
	jmp *(%rbx)
.Lc2AQ:
	jmp *-16(%r13)
	.size r2wo_info, .-r2wo_info
.section .data
.align 8
.align 1
r2wo_closure:
	.quad	r2wo_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2B4_str:
	.asciz "Dorothy"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wp_info)+0
r2wp_info:
.Lc2B5:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2B6
.Lc2B7:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2B3
.Lc2B2:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2B4_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2B3:
	jmp *(%rbx)
.Lc2B6:
	jmp *-16(%r13)
	.size r2wp_info, .-r2wp_info
.section .data
.align 8
.align 1
r2wp_closure:
	.quad	r2wp_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wq_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wo_closure
	.quad	r2wp_closure
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2Bl_str:
	.asciz "Alice"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2wr_info)+0
r2wr_info:
.Lc2Bm:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Bn
.Lc2Bo:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2Bk
.Lc2Bj:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2Bl_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2Bk:
	jmp *(%rbx)
.Lc2Bn:
	jmp *-16(%r13)
	.size r2wr_info, .-r2wr_info
.section .data
.align 8
.align 1
r2wr_closure:
	.quad	r2wr_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2BB_str:
	.asciz "Mary"
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(r2ws_info)+0
r2ws_info:
.Lc2BC:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2BD
.Lc2BE:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2BA
.Lc2Bz:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $c2BB_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2BA:
	jmp *(%rbx)
.Lc2BD:
	jmp *-16(%r13)
	.size r2ws_info, .-r2ws_info
.section .data
.align 8
.align 1
r2ws_closure:
	.quad	r2ws_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
r2wt_closure:
	.quad	ghczmprim_GHCziTuple_Z2T_con_info
	.quad	r2wr_closure
	.quad	r2ws_closure
	.quad	0
.section .data
.align 8
.align 1
r2wu_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wt_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
.align 8
.align 1
r2wv_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wq_closure+1
	.quad	r2wu_closure+2
	.quad	0
.section .data
.align 8
.align 1
r2ww_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wn_closure+1
	.quad	r2wv_closure+2
	.quad	0
.section .data
.align 8
.align 1
r2wx_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wk_closure+1
	.quad	r2ww_closure+2
	.quad	0
.section .data
.align 8
.align 1
.globl Demo_mothers_closure
.type Demo_mothers_closure, @object
Demo_mothers_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	r2wh_closure+1
	.quad	r2wx_closure+2
	.quad	0
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	2
	.long	11
	.long	r2wy_closure-(s2wI_info)+0
s2wI_info:
.Lc2Cd:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Ce
.Lc2Cf:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rcx
	movq $c2C6_info,-32(%rbp)
	movq %rbx,%rdx
	movq %r14,%rbx
	movq %rax,-24(%rbp)
	movq %rcx,-16(%rbp)
	movq %rdx,-8(%rbp)
	addq $-32,%rbp
	testb $7,%bl
	jne .Lc2C6
.Lc2C7:
	jmp *(%rbx)
.align 8
	.quad	3
	.long	30
	.long	r2wy_closure-(c2C6_info)+0
c2C6_info:
.Lc2C6:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	movq %rbx,%rdx
	andl $7,%edx
	cmpq $1,%rdx
	jne .Lc2Cb
.Lc2Ca:
	movq %rcx,%r14
	addq $32,%rbp
	jmp r2wy_info
.Lc2Cb:
	movq 6(%rbx),%rcx
	movq 14(%rbx),%rbx
	movq $c2Cl_info,-8(%rbp)
	movl $integerzmgmp_GHCziIntegerziType_zdfEqInteger_closure,%r14d
	movq $stg_ap_pp_info,-32(%rbp)
	movq %rax,-24(%rbp)
	movq %rcx,-16(%rbp)
	movq %rbx,(%rbp)
	movq %rcx,16(%rbp)
	addq $-32,%rbp
	jmp ghczmprim_GHCziClasses_zsze_info
.Lc2Ce:
	jmp *-8(%r13)
.align 8
	.quad	4
	.long	30
	.long	r2wy_closure-(c2Cl_info)+0
c2Cl_info:
.Lc2Cl:
	movq 16(%rbp),%rax
	movq 32(%rbp),%rcx
	movq 24(%rbp),%rdx
	movq 8(%rbp),%rsi
	movq %rbx,%rdi
	andl $7,%edi
	cmpq $1,%rdi
	jne .Lc2Cy
.Lc2Cs:
	movq %rsi,%r14
	movq %rcx,%rbx
	addq $40,%rbp
	jmp s2wI_info
.Lc2Cy:
	addq $80,%r12
	cmpq 856(%r13),%r12
	ja .Lc2CB
.Lc2CA:
	movq $stg_ap_2_upd_info,-72(%r12)
	movq %rcx,-56(%r12)
	movq %rsi,-48(%r12)
	leaq -72(%r12),%rbx
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-40(%r12)
	movq %rax,-32(%r12)
	movq %rdx,-24(%r12)
	leaq -39(%r12),%rax
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rax,-8(%r12)
	movq %rbx,(%r12)
	leaq -14(%r12),%rax
	movq %rax,%rbx
	addq $40,%rbp
	jmp *(%rbp)
.Lc2CB:
	movq $80,904(%r13)
	jmp stg_gc_unpt_r1
	.size s2wI_info, .-s2wI_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	0
	.long	14
	.long	integerzmgmp_GHCziIntegerziType_zdfEqInteger_closure-(r2wy_info)+0
r2wy_info:
.Lc2CH:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2CI
.Lc2CJ:
	movq $c2BV_info,-8(%rbp)
	movq %r14,%rbx
	addq $-8,%rbp
	testb $7,%bl
	jne .Lc2BV
.Lc2BW:
	jmp *(%rbx)
.align 8
	.quad	0
	.long	30
	.long	r2wy_closure-(c2BV_info)+0
c2BV_info:
.Lc2BV:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne .Lc2CF
.Lc2CE:
	movl $ghczmprim_GHCziTypes_ZMZN_closure+1,%ebx
	addq $8,%rbp
	jmp *(%rbp)
.Lc2CF:
	addq $104,%r12
	cmpq 856(%r13),%r12
	ja .Lc2CS
.Lc2CR:
	movq 6(%rbx),%rax
	movq 14(%rbx),%rbx
	leaq -95(%r12),%rcx
	movq $s2wI_info,-96(%r12)
	movq %rax,-88(%r12)
	movq %rbx,-80(%r12)
	movq $integerzmgmp_GHCziIntegerziType_Szh_con_info,-72(%r12)
	movq $2,-64(%r12)
	leaq -71(%r12),%rax
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq %rax,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-40(%r12)
	leaq -54(%r12),%rax
	movq $integerzmgmp_GHCziIntegerziType_Szh_con_info,-32(%r12)
	movq $1,-24(%r12)
	leaq -31(%r12),%rbx
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -14(%r12),%rax
	movq %rax,%r14
	movq %rcx,%rbx
	addq $8,%rbp
	jmp s2wI_info
.Lc2CI:
	movl $r2wy_closure,%ebx
	jmp *-8(%r13)
.Lc2CS:
	movq $104,904(%r13)
	jmp stg_gc_unpt_r1
	.size r2wy_info, .-r2wy_info
.section .data
.align 8
.align 1
r2wy_closure:
	.quad	r2wy_info
	.quad	0
.section .data
.align 8
.align 1
s2x4_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	3
.section .data
.align 8
.align 1
s2x5_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2x4_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
.align 8
.align 1
s2x3_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	2
.section .data
.align 8
.align 1
s2x6_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2x3_closure+1
	.quad	s2x5_closure+2
	.quad	0
.section .data
.align 8
.align 1
s2x2_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	1
.section .data
.align 8
.align 1
s2x7_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2x2_closure+1
	.quad	s2x6_closure+2
	.quad	0
.section .data
.align 8
.align 1
u2Di_srt:
	.quad	stg_SRT_2_info
	.quad	r2wy_closure
	.quad	s2x7_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u2Di_srt-(Demo_lst_info)+0
.globl Demo_lst_info
.type Demo_lst_info, @object
Demo_lst_info:
.Lc2Df:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Dg
.Lc2Dh:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2De
.Lc2Dd:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $s2x7_closure+2,%r14d
	addq $-16,%rbp
	jmp r2wy_info
.Lc2De:
	jmp *(%rbx)
.Lc2Dg:
	jmp *-16(%r13)
	.size Demo_lst_info, .-Demo_lst_info
.section .data
.align 8
.align 1
.globl Demo_lst_closure
.type Demo_lst_closure, @object
Demo_lst_closure:
	.quad	Demo_lst_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
u2EA_srt:
	.quad	stg_SRT_2_info
	.quad	base_GHCziBase_zdfMonadZMZN_closure
	.quad	integerzmgmp_GHCziIntegerziType_zdfEqInteger_closure
	.quad	0
.section .data
.align 8
.align 1
u2EB_srt:
	.quad	stg_SRT_2_info
	.quad	ghczmprim_GHCziCString_unpackCStringzh_closure
	.quad	base_GHCziBase_zdfMonadZMZN_closure
	.quad	0
.section .data
.align 8
.align 1
u2EC_srt:
	.quad	stg_SRT_2_info
	.quad	u2EA_srt
	.quad	u2EB_srt
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c2DM_str:
	.asciz "..."
.section .text
.align 8
.align 8
	.quad	0
	.long	15
	.long	ghczmprim_GHCziCString_unpackCStringzh_closure-(s2xo_info)+0
s2xo_info:
.Lc2DN:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2DO
.Lc2DP:
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movl $c2DM_str,%r14d
	movl $ghczmprim_GHCziCString_unpackCStringzh_closure,%ebx
	addq $-16,%rbp
	jmp stg_ap_n_fast
.Lc2DO:
	jmp *-16(%r13)
	.size s2xo_info, .-s2xo_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	2
	.long	11
	.long	u2EB_srt-(s2xq_info)+0
s2xq_info:
.Lc2DU:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2DV
.Lc2DW:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rbx
	movq $c2DD_info,-24(%rbp)
	movq %rbx,%rcx
	movq %r14,%rbx
	movq %rax,-16(%rbp)
	movq %rcx,-8(%rbp)
	addq $-24,%rbp
	testb $7,%bl
	jne .Lc2DD
.Lc2DE:
	jmp *(%rbx)
.align 8
	.quad	2
	.long	30
	.long	u2EB_srt-(c2DD_info)+0
c2DD_info:
.Lc2DD:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	movq %rbx,%rdx
	andl $7,%edx
	cmpq $1,%rdx
	jne .Lc2DS
.Lc2DR:
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja .Lc2DZ
.Lc2DY:
	movq $s2xo_info,-8(%r12)
	leaq -8(%r12),%rax
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_p_info,8(%rbp)
	movq %rax,16(%rbp)
	addq $8,%rbp
	jmp base_GHCziBase_fail_info
.Lc2DS:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja .Lc2E4
.Lc2E3:
	movq $ghczmprim_GHCziTuple_Z2T_con_info,-16(%r12)
	movq %rax,-8(%r12)
	movq %rcx,(%r12)
	leaq -15(%r12),%rax
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_p_info,8(%rbp)
	movq %rax,16(%rbp)
	addq $8,%rbp
	jmp base_GHCziBase_return_info
.Lc2DV:
	jmp *-8(%r13)
.Lc2DZ:
	movq $16,904(%r13)
	jmp stg_gc_unpt_r1
.Lc2E4:
	movq $24,904(%r13)
	jmp stg_gc_unpt_r1
	.size s2xq_info, .-s2xq_info
.section .text
.align 8
.align 8
	.quad	2
	.long	18
	.long	integerzmgmp_GHCziIntegerziType_zdfEqInteger_closure-(s2xk_info)+0
s2xk_info:
.Lc2Ee:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Ef
.Lc2Eg:
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	movl $integerzmgmp_GHCziIntegerziType_zdfEqInteger_closure,%r14d
	movq $stg_ap_pp_info,-40(%rbp)
	movq %rax,-32(%rbp)
	movq %rbx,-24(%rbp)
	addq $-40,%rbp
	jmp ghczmprim_GHCziClasses_zsze_info
.Lc2Ef:
	jmp *-16(%r13)
	.size s2xk_info, .-s2xk_info
.section .text
.align 8
.align 8
	.quad	2
	.long	18
	.long	u2EA_srt-(s2xl_info)+0
s2xl_info:
.Lc2Eh:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Ei
.Lc2Ej:
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja .Lc2El
.Lc2Ek:
	movq $stg_upd_frame_info,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	movq $s2xk_info,-24(%r12)
	movq %rax,-8(%r12)
	movq %rbx,(%r12)
	leaq -24(%r12),%rax
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_p_info,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-32,%rbp
	jmp base_GHCziBase_return_info
.Lc2El:
	movq $32,904(%r13)
.Lc2Ei:
	jmp *-16(%r13)
	.size s2xl_info, .-s2xl_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	1
	.long	9
	.long	u2EC_srt-(s2xr_info)+0
s2xr_info:
.Lc2Em:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2En
.Lc2Eo:
	addq $56,%r12
	cmpq 856(%r13),%r12
	ja .Lc2Eq
.Lc2Ep:
	movq 7(%rbx),%rax
	movq $s2xq_info,-48(%r12)
	movq %rax,-40(%r12)
	movq %r14,-32(%r12)
	leaq -47(%r12),%rbx
	movq $s2xl_info,-24(%r12)
	movq %rax,-8(%r12)
	movq %r14,(%r12)
	leaq -24(%r12),%rax
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_pp_info,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	addq $-24,%rbp
	jmp base_GHCziBase_zgzgze_info
.Lc2Eq:
	movq $56,904(%r13)
.Lc2En:
	jmp *-8(%r13)
	.size s2xr_info, .-s2xr_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	0
	.long	14
	.long	u2EC_srt-(s2xs_info)+0
s2xs_info:
.Lc2Ev:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Ew
.Lc2Ex:
	addq $96,%r12
	cmpq 856(%r13),%r12
	ja .Lc2Ez
.Lc2Ey:
	movq $s2xr_info,-88(%r12)
	movq %r14,-80(%r12)
	leaq -87(%r12),%rax
	movq $integerzmgmp_GHCziIntegerziType_Szh_con_info,-72(%r12)
	movq $2,-64(%r12)
	leaq -71(%r12),%rbx
	movq $ghczmprim_GHCziTypes_ZC_con_info,-56(%r12)
	movq %rbx,-48(%r12)
	movq $ghczmprim_GHCziTypes_ZMZN_closure+1,-40(%r12)
	leaq -54(%r12),%rbx
	movq $integerzmgmp_GHCziIntegerziType_Szh_con_info,-32(%r12)
	movq $1,-24(%r12)
	leaq -31(%r12),%rcx
	movq $ghczmprim_GHCziTypes_ZC_con_info,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,(%r12)
	leaq -14(%r12),%rbx
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_pp_info,-24(%rbp)
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	addq $-24,%rbp
	jmp base_GHCziBase_zgzgze_info
.Lc2Ez:
	movq $96,904(%r13)
.Lc2Ew:
	movl $s2xs_closure,%ebx
	jmp *-8(%r13)
	.size s2xs_info, .-s2xs_info
.section .data
.align 8
.align 1
s2xs_closure:
	.quad	s2xs_info
	.quad	0
.section .data
.align 8
.align 1
s2xa_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	3
.section .data
.align 8
.align 1
s2xb_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2xa_closure+1
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
.align 8
.align 1
s2x9_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	2
.section .data
.align 8
.align 1
s2xc_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2x9_closure+1
	.quad	s2xb_closure+2
	.quad	0
.section .data
.align 8
.align 1
s2x8_closure:
	.quad	integerzmgmp_GHCziIntegerziType_Szh_con_info
	.quad	1
.section .data
.align 8
.align 1
s2xd_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s2x8_closure+1
	.quad	s2xc_closure+2
	.quad	0
.section .data
.align 8
.align 1
u2Fg_srt:
	.quad	stg_SRT_3_info
	.quad	base_GHCziBase_zdfMonadZMZN_closure
	.quad	s2xd_closure
	.quad	s2xs_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u2Fg_srt-(Demo_lstzqzq_info)+0
.globl Demo_lstzqzq_info
.type Demo_lstzqzq_info, @object
Demo_lstzqzq_info:
.Lc2Fd:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc2Fe
.Lc2Ff:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .Lc2Fc
.Lc2Fb:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	movq %rax,-8(%rbp)
	movl $base_GHCziBase_zdfMonadZMZN_closure,%r14d
	movq $stg_ap_pp_info,-40(%rbp)
	movq $s2xd_closure+2,-32(%rbp)
	movq $s2xs_closure+1,-24(%rbp)
	addq $-40,%rbp
	jmp base_GHCziBase_zgzgze_info
.Lc2Fc:
	jmp *(%rbx)
.Lc2Fe:
	jmp *-16(%r13)
	.size Demo_lstzqzq_info, .-Demo_lstzqzq_info
.section .data
.align 8
.align 1
.globl Demo_lstzqzq_closure
.type Demo_lstzqzq_closure, @object
Demo_lstzqzq_closure:
	.quad	Demo_lstzqzq_info
	.quad	0
	.quad	0
	.quad	0
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r2wz_bytes:
	.asciz "main"
.section .data
.align 8
.align 1
r2wA_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r2wz_bytes
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r2wB_bytes:
	.asciz "Demo"
.section .data
.align 8
.align 1
r2wC_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r2wB_bytes
.section .data
.align 8
.align 1
.globl Demo_zdtrModule_closure
.type Demo_zdtrModule_closure, @object
Demo_zdtrModule_closure:
	.quad	ghczmprim_GHCziTypes_Module_con_info
	.quad	r2wA_closure+1
	.quad	r2wC_closure+1
	.quad	3
.section .note.GNU-stack,"",@progbits
.ident "GHC 8.6.5"


