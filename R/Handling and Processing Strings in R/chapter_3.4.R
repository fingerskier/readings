# union()
# intersect()
# setdiff()
# setequal()
# identical()
# is.element()
# %in%()
# sort()
# paste(rep())

set1 = c("some", "random", "words", "some")
set2 = c("some", "many", "none", "few")

set7 = c("some", "random", "strings")
set8 = c("some", "many", "none", "few")
set9 = c("strings", "random", "some")
set10= c("strings", "random", "some")

union(set1, set2)

intersect(set1, set2)

setdiff(set1, set2)

setequal(set7, set8)
setequal(set7, set9)

identical(set7, set7)
identical(set7, set9)
identical(set9, set10)

elem1 = "some"
elem2 = "random"
is.element(elem1, set1)
elem2 %in% set10

stuff = c("today", "produced", "example", "beautiful", "a", "nicely")

sort(stuff)

paste(rep("x", 4), collapse = "")
