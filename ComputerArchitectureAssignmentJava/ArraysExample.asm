.data					# specifying below commands contain data to be stored in the data memory of the computer
	list:	.word	2,3,5,10,25	# A[] = {2,3,5,10,25} array declaration

.text					# specifying below commands contain text program instructions to be executed and stored in the instruction memory of the computer
	la	$s0, list		# load base address of the list array
	addi	$s1, $s0, 8		# add 8 to 20, the base of the array
	lw	$s2, 0($s1)		# $s2 stores A[2]
	addi	$s3, $s2, 1		# $s3 stores 1 + A[2}
	addi	$s1, $s0, 16		# add 16 to 20, the base of the array
	sw	$s3, 0($s1)		# store 1 + A[2] back into A[4]