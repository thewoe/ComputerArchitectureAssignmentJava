# f = (g + h) - (i + j)
# f = $s0
# g = $s1
# h = $s2
# i = $s3
# j = $s4
add $t0, $s1, $s2	# register $t0 contains g + h
add $t1, $s3, $s4	# register $t1 contains i + j
sub $s0, $t0, $t1	# register $s0 contains (g + h) - (i + j)