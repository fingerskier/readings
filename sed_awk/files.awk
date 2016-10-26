{
	size += $5
	print $8 "(" $5 ")"
}

END {
	print "Number of files: " NR
	print "Total size: " size
}