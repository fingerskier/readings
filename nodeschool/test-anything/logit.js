var module = process.argv[2]
var S = process.argv[3]

var emotify = require(module)

console.log(emotify(S))
