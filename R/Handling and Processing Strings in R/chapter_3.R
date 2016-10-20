PI = paste("The life of", pi, sep="||")
IloveR = paste("I", "love", "R", sep="-")

paste("X", 1:5, sep=".")

paste(1:3, c("!", "?", "+"), sep="", collapse="")

paste(1:3, c("!", "?", "+"), sep="")

evalue = paste("the value of 'e' is", exp(1), NA)

paste0("let's", "collpase", "all", "these", "words")

# print()
# noquote()
# cat() ~ concatenation
# format() 
# toString()
# sprintf()

my_string = "programming with data is fun"

print(my_string)
print(my_string, quote=FALSE)
noquote(my_string)

no_quotes = noquote(c("some","quoted","text","!%^(&="))
class(no_quotes)
is.character(no_quotes)
no_quotes[2:3]

cat("one","two","three", file="", sep="", fill=FALSE, labels=NULL, append=FALSE)

cat(my_string, "with R")

cat(1:10, sep="-")

cat(month.name[1:4], sep=" ")

cat("Loooooooooong strings", "can be displayed", "in a nice format",
    "by using the 
    fill
    argument", fill = 30)

cat(my_string, "with R", file="output.txt")

format(13.7)
format(13.12345789)

thenum = 13.123456789
format(thenum,width=77,trim=TRUE,justify="centre",scientific=TRUE)
format(13.7, nsmall=3)
format(c(6,13.1), digits=2)
format(c(6,13.1), digits=2, nsmall=1)

format(c("A", "BB", "CCC"), width=5, justify="centre")

format(1/1:5, digits=2)

format(123456789, big.mark = ",")

sprintf("%g17", pi)

toString(c("one", "two", "3333"), width=13)

print(1:5)

as.character(1:5)

cat(1:5, sep="-")

paste(1:5, collapse = "")

toString(1:5)

noquote(as.character(1:5))
