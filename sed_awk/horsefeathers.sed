# replace blank lines with .LP
s/^$/.LP/

# remove printer underscore line "+"
/^+  */d

# remove leading spaces
s/^  *//

# collapse multiple blank spaces between words
s/  */ /g

# fix spacing after sentences
s/\.  */.  /g