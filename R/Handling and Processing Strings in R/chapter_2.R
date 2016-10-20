'valid character string'
"valid character string"

'valid "embedded" string'
"valid 'embedded' string"

empty_str = ""

empty_char = character(0)

char_vector = character(5)

eg = character(0)

length(eg)

eg[1] = "first"

length(eg)

eg[4] = "fourth"

eg

a = "test me"
b = 8 + 9

is.character(a)

class(a)

is.character(b)

class(b)

b = as.character(b)

class(b)

is.character(b)

is.numeric(b)

# vector, factor, matrix/array, data.frame, list

c("text", 1:5, pi, "text")
# vectors must have all their values of the same mode
# ...logical, numberic, complex, character, or raw

# in matrices 'character' is the default mode
rbind(1:5, letters[1:5])

# in data-frames the default mode is 'factor'
df1 = data.frame(numbers=1:5, letters=letters[1:5])

str(df1)

df2 = data.frame(numbers=1:5, letters=letters[1:5], stringsAsFactors = FALSE)

str(df2)

# list elements maintain their mode
list(1:5, letters[1:5], rnorm(5))
