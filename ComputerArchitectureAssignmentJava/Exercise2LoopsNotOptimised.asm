# int x;
# int z;
# for (x = 0; x < 100; x++) {
#	z = z + 1;
# }
# Unoptimised version of the code
# Directly translated from above code into MIPS

	add $s0, $s0, $0		# int x; initialise x variable
	add $s1, $s1, $0		# int z; initialise z variable

loop:					# for loop start label
	beq	$s0, 100, exit		# if (x == 100); (like x < 100) jump to exit label (end loop and program)
	addi	$s1, $s1, 1		# z = z + 1; increment z value by one
	addi	$s0, $s0, 1		# x++; incremement the for loop x value
	j	loop			# jump to start of loop (loop label)

exit:					# end of for loop and application label