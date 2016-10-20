# read.
#   table() = some table format
#   csv() = comma delimited
#   csv2() = semicolon delimited
#   delim() = tab delimited
#   delim2() = ???
#   fwf() = fixed width format

url = "http://www.abc.net.au/local/data/public/stations/abc-local-radio.csv"

data = read.table(url,  header = TRUE, sep = ",", stringsAsFactors = FALSE)

top105 = readLines("http://www.textfiles.com/music/ktop100.txt")

length(top105)

head(top105)
