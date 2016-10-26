BEGIN { FS = "\t" }

NR ==1 {
	balance = $1
	next
}

{
	print $1, $2, $3
	print balance -= $3
}