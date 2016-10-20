library(stringr)


states = rownames(USArrests)

states_abbr = abbreviate(states, minlength = 2)

names(states_abbr) = NULL

state_chars = nchar(states)

longest_name = states[which(state_chars == max(state_chars))]

names_with_k = grep(pattern="k", x=states, value=TRUE)
names_with_w = grep(pattern="w", x=states, value=TRUE, ignore.case = TRUE)

hist(state_chars, main = "Histogram", xlab="number of chars in US state names")

positions_a = gregexpr(pattern="a", text=states, ignore.case = TRUE)

num_a = str_count(tolower(states), "a")

vowels = c('a', 'e', 'i', 'o', 'u')

num_vowels = vector(mode = "integer", length = 5) # to store following results

for (j in seq_along(vowels)) {
  num_aux = str_count(tolower(states), vowels[j])
  num_vowels[j] = sum(num_aux)
}

names(num_vowels) = vowels

sort(num_vowels, decreasing=TRUE)

barplot(num_vowels, main="Number of vowels in US state names", border = NA, ylim=c(0,80))

