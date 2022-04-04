# while (i != k) {
# 	i = i + 1;
# }
# i = $s0
# k = $s1

addi	$s0, $s0, 0		# $s0 = 0; initialise $s0 to 0
addi	$s1, $s1, 5		# $s1 = 5; initialise $s1 to 5

loop:	beq	$s0, $s1, exit	# go to Exit label if i is equal to k
	addi	$s0, $s0, 1	# i = i + 1
	j	loop		# go to start of loop (loop label)

exit:				# while loop exit (exit label)