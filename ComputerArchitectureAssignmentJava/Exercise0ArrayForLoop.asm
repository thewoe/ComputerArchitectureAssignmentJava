.data					# specifying below commands contain data to be stored in the data memory of the computer
	flint:	.word	5,3,7,4,9,10	# flintstones[] = {5,3,7,4,9,10} array declaration
.text					# specifying below commands contain text program instructions to be executed and stored in the instruction memory of the computer
	addi	$s0, $s0, 6		# count = 6;
	add	$s1, $0, $0		# total = 0;
	add	$s2, $0, $0		# i = 0;
	la	$s3, flint		# get base memory address of the first index
	
loop:					# for loop start label
	beq	$s2, $s0, exit		# if (i == count); (like i < count) jump to exit label (end loop and program)
	add	$t0, $s2, $s2		# i + i; (double memory address value)
	add	$t0, $t0, $t0		# $t0 + $t0; (double memory address value again, i.e., incrememnt by 4)
	add	$t1, $s3, $t0		# add (calculated) i*4 to base memory address (to get the memory address of the next data value)
	lw	$t2, 0($t1)		# get the value contained in the data stored in memory address $t1
	add	$s1, $s1, $t2		# total += flintstones[i]; accumulate value to total
	addi	$s2, $s2, 1		# i++; incremement the for loop i value
	j	loop			# jump to start of loop (loop label)

exit:					# end of for loop and application label