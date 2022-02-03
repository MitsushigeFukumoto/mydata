	.data
a:	.long	1		# initialized data (a and b)
b:	.long	1
	.comm	n,4,4		# uninitialized data (n and tmp)
	.comm	tmp,4,4

fmt1:	.string	" %10d\n"
fmt2:	.string	"\nThe number of values greater than 1000 is %d\n"
fmt3:	.string	"Final values are: a=0x%08X b=0x%08X tmp=0x%08X\n"

	.text
	.globl	main
main:
	movl	$0, n		# n = 0

	movl	b, %esi		# set up args to print b
	movl	$fmt1, %edi
	movl	$0, %eax
	call	printf		# gcc calling conventions to call printf
	
	movl	a, %esi		# set up args to print a
	movl	$fmt1, %edi
	movl	$0, %eax
	call	printf		# gcc calling conventions to call printf

while:
	movl	a,%eax		# eax <- a
	addl	b,%eax		# eax <- eax + b
	movl	%eax,tmp	# tmp <- eax
	testl	%eax, %eax	# test eax
	jle	endwhile	# if <= 0 jump to endwhile

	movl	a, %eax		# eax <- a
	movl	%eax, b		# b <- eax
	movl	tmp, %eax	# eax <- tmp
	movl	%eax, a		# a <- eax

	cmpl	$1000, %eax	# compare 1000 to eax
	jle	endif		# if <= jump to endif
	movl	n, %ebx		# ebx <- n
	addl	$1, %ebx	# ebx <- ebx + 1
	movl	%ebx, n		# n <- ebx

endif:
	movl	a, %esi		# setu up args to print a
	movl	$fmt1, %edi
	movl	$0, %eax
	call	printf
	jmp	while

endwhile:
	movl	n, %esi
	movl	$fmt2, %edi
	movl	$0, %eax
	call	printf

	movl	tmp, %ecx	# set up arges to print a, b, and tmp
	movl	b, %edx
	movl	a, %esi
	movl	$fmt3, %edi
	movl	$0, %eax
	call	printf

	movl	$0, %edi	# exit with argument 0
	call	exit
