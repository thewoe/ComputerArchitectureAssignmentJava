# int first = 0;	// declare degree counters
# int second = 0;	// declare degree counters
# int third = 0;	// declare degree counters
# int i;		// declare loop counter
# const int D = 10;	// number of degree marks for analysis
# // degrees is an array to store the overall grade for each student in a course
# int degrees[D] = {80,35,90,60,75,65,50,55,40,45};
# // analysis is an array to store the final first and second counter
# int analysis[3] = {};
# for (i = 0; i < D; i++) {
#	if (degrees[i] >= 70) {
#		first = first + 1;
#	}
#	else if (degrees[i] >= 50) {
#		second = second + 1;
#	}
#	else if (degrees[i] >= 40) {
#		third = third + 1;
#	}
# }
# analysis[0] = first;
# analysis[1] = second;
# analysis[2] = third;

.text
add	$s0, $s0, $0	# int first = 0; initialise $s0
add	$s1, $s1, $0	# int second = 0; initialise $s1
add	$s2, $s2, $0	# int third = 0; initialise $s2
add	$s3, $s3, $0	# int i; initialise $s3
addi	$s4, $s4, 10	# const int D = 10; initialise $s4 = 10

.data					# specifying below commands contain data to be stored in the data memory of the computer
	degrees:	.word	80,35,90,60,75,65,50,55,40,45	# int degrees[D] = {80,35,90,60,75,65,50,55,40,45}; array declaration
	analysis:	.word	0,0,0				# int analysis[] = {};

.text
addi	$s5, $s5, 3	# int analysis[3];
	


