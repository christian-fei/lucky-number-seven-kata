const LuckyNumberSeven = require('./LuckyNumberSeven')

const min = parseInt(process.argv[2])
const max = parseInt(process.argv[3])

console.log(
  JSON.stringify(LuckyNumberSeven.between(min, max))
)
