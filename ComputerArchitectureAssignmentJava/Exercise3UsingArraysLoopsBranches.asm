# int P = 0;							// declare grades counters
# int F = 0;							// declare grades counters
# int i;							// declare the loop counter
# const int N = 10;						// assumed length of array
# int grades[N] = {40,45,50,55,60,65,70,30,35,100};		// declare array values
# for (i = 0; i < N; i++) {					// for loop for each item in array
# 	if (grades[i] >= 40) {					// if value in array is greater than or equal to 40
#		P = P + 1;					// set P to itself + 1
# 	}
#	else {							// else (if value in array is not greater than or equal to 40) clause
#		F = F + 1;					// set F to itself + 1
#	}
# }
# $s0 = P; P will be 8
# $s1 = F; F will be 2
# $s2 = i
# $s3 = N

add	$s0, $0, $0						# P = 0; initiliase P to 0
add	$s1, $0, $0						# F = 0; initialise F to 0
add	$s2, $0, $0						# i; initialise i to 0
addi	$s3, $s3, 10						# N = 10; initialise N to 10

.data								# setting type to data, for storing below instructions in data memory
	grades:	.word	40,45,50,55,60,65,70,30,35,100		# initialise array with values 40,45,50,55,60,65,70,30,35,100
	
.text								# setting type to instructions, for storing below instructions in instruction memory
	addi	$s2, $s2, 0					# i = 0; initialise i to 0
	la	$s4, grades					# get base memory address of the first index
	
	loop:							# for loop start label
		beq	$s2, $s3, exit				# if (i == count); (like i < count) jump to exit label (end loop and program)
		add	$t0, $s2, $s2				# i + i; (double memory address value)
		add	$t0, $t0, $t0				# $t0 + $t0; (double memory address value again, i.e., incrememnt by 4)
		add	$t1, $s4, $t0				# add (calculated) i*4 to base memory address (to get the memory address of the next data value)
		lw	$t2, 0($t1)				# get the value contained in the data stored in memory address $t1
		add	$t3, $0, $0				# sets $t3 to 0 for comparison
		beq	$t2, 40, true				# if value is equal to 40, jump to true label
		slti	$t3, $t2, 40				# if $t2 is less than 40, $t3 = 1, else $t3 = 0
		beq	$t3, $0, true				# if $t3 is equal to 0, the number was greater than 40, jump to true label
		addi	$s1, $s1, 1				# else F = F + 1
		j	endloop					# jump to end of loop to increment again (bypass the if clause instructions)

	true:							# true if condition clause label
		addi	$s0, $s0, 1				# P = P + 1

	endloop:						# end loop label for incrementing and running loop again
		addi	$s2, $s2, 1				# i++; incremement the for loop i value
		j	loop					# jump to start of loop (loop label)

	exit:							# end of for loop and application label