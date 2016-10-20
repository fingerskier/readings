# nchar() ~ number of characters
# tolower() ~ 
# toupper() ~
# casefold() ~ ?case folding?
# chartr() ~ ?character translation?
# abbreviate() ~ 
# substring() ~ substring(s) of a character vector
# substr() ~    substring(s) of a character vector

nchar(c("How", "many", "characters?"))

nchar("How many characters?")

tolower(c("aLL ChaRacterS in LoweR caSe", "ABCDE"))
toupper(c("aLL ChaRacterS in LoweR caSe", "ABCDE"))

casefold(c("aLL ChaRacterS in LoweR caSe", "ABCDE"), upper=TRUE)

old = "ai"
new = "AI"
x = "This is a boring string"
chartr(old, new, x)

# abbreviate(names.org, minlength=4, dot=FALSE, strict=FALSE, method=c("left.keep", "both.sides"))
some_colors = colors()[1:4]
colors1 = abbreviate(some_colors)
colors2 = abbreviate(some_colors, minlength = 5)
colors3 = abbreviate(some_colors, minlength = 4, method="both.sides")
colors4 = abbreviate(some_colors, minlength = 4, method="left.kept")


x = "abcdefghijklmnopqrstuvwxyz"
substr(x, 7, 10) <- "_"

y = c("may", "the", "force", "be", "with", "you")
substr(y, 3, 4) <- ":)"

z = c("may", "the", "force", "be", "with", "you")
substr(z, 2, 3) <- c("#", "@")


u = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
substring(u, 2, 4)
substring(u, 1:6, 1:6)

v = c("more", "emotions", "are", "better", "than", "less")
substring(v, 1:3) <- c(" ", "_!_")
