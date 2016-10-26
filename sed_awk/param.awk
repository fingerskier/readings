BEGIN { print n }

{
	if (n == 1) print "Reading first file"
	if (n == 2) print "Reading second file"
}