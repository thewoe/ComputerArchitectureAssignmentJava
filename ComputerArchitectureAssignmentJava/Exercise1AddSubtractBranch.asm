add	$s0, $0, $0		# int s0; initialise $s0
addi	$s1, $s1, 1		# int s1 = 1; initialise $s1 to 1
addi	$s2, $s2, 2		# int s2 = 2; initialise $s2 to 2
addi	$s3, $s3, 9		# int s3 = 9; initialise $s3 to 9
addi	$s4, $s4, 9		# int s4 = 9; initialise $s4 to 9

if:
	beq $s3, $s4, equal	# if (s3 == s4) if $s3 is equal to $s4
	sub $s0, $s2, $s1	# else { s0 = s2 - s1; } else $s0 = $s2 - $s1
	j end			# jump to end
	
equal:
	add $s0, $s1, $s2	# s0 = s1 + s2; if clause commands $s0 = $s1 + $s2
	j end

end: