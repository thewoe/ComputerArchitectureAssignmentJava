# if (i == j) { 
#	f = g + h;
# }
# else {
#	f = g - h;
# }
# f = $s0
# g = $s1
# h = $s2
# i = $s3
# j = $s4

addi	$s0, $s0, 0			# $s0 = 0; initialise $s0 to 0
addi	$s1, $s1, 5			# $s1 = 5; initialise $s1 to 5
addi	$s2, $s2, 3			# $s2 = 3; initialise $s2 to 3
addi	$s3, $s3, 6			# $s3 = 6; initialise $s3 to 6
addi	$s4, $s4, 6			# $s4 = 6; initialise $s4 to 6

# in this case, i ($s3) and j ($s4) are equal, therefore f ($s0) = g ($s1) + h ($s2) = 8

main:					# main label for commands to execute when i is equal to j (if commands)
	bne	$s3, $s4, step1		# go to else clause if i not equal to j
	add	$s0, $s1, $s2		# f = g + h (skipped if i not equal to j)
	j	exit			# go to exit

step1:					# step1 label for commands to execute when i is not equal to j (else commands)
	sub	$s0, $s1, $s2		# f = g - h (skipped if i is equal to j)
	
exit:					# exit label for when application ends