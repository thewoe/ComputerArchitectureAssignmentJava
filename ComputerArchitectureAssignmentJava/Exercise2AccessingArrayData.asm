.data						# specifying below commands contain data to be stored in the data memory of the computer
	list:	.word	3,0,1,2,6,-2,4,7,3,7	# numbers[] = {3,0,1,2,6,-2,4,7,3,7} array declaration

.text						# specifying below commands contain text program instructions to be executed and stored in the instruction memory of the computer
	la	$t3, list			# put base address of list into $t3
	li	$t2, 6				# put the index into $t2
	add	$t2, $t2, $t2			# double the index
	add	$t2, $t2, $t2			# double the index again (4x)
	add	$t1, $t2, $t3			# combine the two components of the address
	lw	$t4, 0($t1)			# get the value from the array cell
	sw	$t4, 0($t1)			# store the value into the array cell