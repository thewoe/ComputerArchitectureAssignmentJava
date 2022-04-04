# Unoptimised Code:
# int x;
# int y;
# int z;
# x = 10;
# y = 3;
# z = subtract(x,y);
# int subtract(int x, int y) {
#	return x - y;
# }
# Optimised Code:
# int x;
# int y;
# int z;
# x = 10;
# y = 3;
# z = x - y;
# Optimised code directly translated from above:
	add 	$s0, $s0, $0	# int x; $s0 = x
	add 	$s1, $s1, $0	# int y; $s1 = y
	add 	$s2, $s2, $0	# int z; $s2 = z
	addi 	$s0, $s0, 10	# x = 10;
	addi 	$s1, $s1, 3	# y = 3;
	sub	$s2, $s0, $s1	# z = x - y;


	


