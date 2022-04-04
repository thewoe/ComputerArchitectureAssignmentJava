addi 	$s0, $s0, 0	# fred = 0;
add	$s1, $0, $0	# barney = 0;
addi	$s2, $s2, 31	# wilma = 31;
add	$s3, $s0, $s2	# betty = fred + wilma;
subi	$s1, $s3, 10	# barney = betty - 10;
addi	$s0, $s2, 4	# fred = wilma + 4;
add	$s2, $s2, $s3	# wilma += betty;
add	$t0, $s0, $s1	# $t0 = (fred + barney);
sub	$s3, $t0, $s1	# betty = $t0 - barney;

if:					# if clause label
	beq	$s3, $s1, truth		# if (betty == barney); go to truth label
	subi	$s0, $s0, 1		# fred -= 1;
	j	endif			# jump to endif label (end application)

truth:					# else clause label
	addi	$s0, $s0, 1		# fred += 1;
	j	endif			# jump to endif label (end application)
	
endif:					# end application label