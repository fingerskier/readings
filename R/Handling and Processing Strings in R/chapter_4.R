library(stringr)

# str_c()   concatenation
# str_length()
# str_sub() extract substring
# str_dup() duplicates characters
# str_trim()  remove leading and trailing whitespace
# str_pad()   pads a string
# str_wrap()  wraps a string paragraph

S = c("may", "the", 'force', NULL, 'be', 'witcha')

str_c("may", "the", 'force', NULL, 'be', 'witcha', sep="_")

str_length(S)


some_factor = factor(c(1,1,1,2,2,2), labels = c('good','bad'))

lorem = "Lorem Ipsum"

str_sub(lorem, start=1, end=5)
substring(lorem, first=1, last=5)

str_sub("adios", 1:3)

resto = c("brasserie", "bistrot", "creperie", "bouchon")

str_sub(resto, start=-4, end=-1)
substring(resto, first=-4, last=-1)
          