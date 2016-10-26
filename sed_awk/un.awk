BEGIN {
	OFS = "\n"
	ORS = "\n\n"
}

{
	print $NF	
	print $0	
}