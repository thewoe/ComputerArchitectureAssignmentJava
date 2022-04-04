# int x;
# int y;
# int z;
# x = 10;
# y = 3;
# z = subtract(x,y);
# int subtract(int x, int y) {
#	return x - y;
# }
# Unoptimised code directly translated from above:
	add 	$s0, $s0, $0	# int x; $s0 = x
	add 	$s1, $s1, $0	# int y; $s1 = y
	add 	$s2, $s2, $0	# int z; $s2 = z
	addi 	$a0, $s0, 10	# x = 10;
	addi 	$a1, $s1, 3	# y = 3;
	jal 	subtract	# z = subtract(x,y);
	add 	$s2, $s2, $v0	# place return value into z ($s2) variable (register)
	j 	end		# jump to end label when method finished running
subtract:			# subtract method label
	add 	$v0, $v0, $0	# initialise return variable for method output
	sub 	$v0, $a0, $a1	# x - y; subtract y ($a1) from x ($a0)
	jr 	$ra		# jump back to the line of code calling the method, contained in $ra
end:				# end method label


	


