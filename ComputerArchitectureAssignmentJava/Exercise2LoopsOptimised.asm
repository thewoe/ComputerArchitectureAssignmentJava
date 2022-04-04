# Original Code:
# int x;
# int z;
# for (x = 0; x < 100; x++) {
#	z = z + 1;
# }
# Optimised Code:
# int x;
# int z;
# for (x = 0; x < 100; x += 10) {
#	z = z + 1;
#	z = z + 2;
#	z = z + 3;
#	z = z + 4;
# }
# Optimised version of the code (loops 10 times instead of 100 times)
# Directly translated from above code into MIPS

	add $s0, $s0, $0		# int x; initialise x variable
	add $s1, $s1, $0		# int z; initialise z variable

loop:					# for loop start label
	beq	$s0, 100, exit		# if (x == 100); (like x < 100) jump to exit label (end loop and program)
	addi	$s1, $s1, 1		# z = z + 1; increment z value by one
	addi	$s1, $s1, 2		# z = z + 2; increment z value by two
	addi	$s1, $s1, 3		# z = z + 3; increment z value by three
	addi	$s1, $s1, 4		# z = z + 4; increment z value by four
	addi	$s0, $s0, 10		# x += 5; incremement the for loop x value
	j	loop			# jump to start of loop (loop label)

exit:					# end of for loop and application label
