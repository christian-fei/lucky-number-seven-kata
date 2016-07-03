const between = (min, max) => {
  return betweenRec([], min, max)
}

const betweenRec = (acc, min, max) =>
  acc.concat((min <= max) ? (
    isLucky(min) ?
    betweenRec([min], min+1, max) :
    betweenRec([], min+1, max)) : [])

const luckySum = (number) => {
  if(number < 10) {return number}
  return luckySum(("" + number).split('').reduce((acc,curr) => {
    return acc  + parseInt(curr)
  }, 0))
}

const isLucky = (number) =>
  7 == luckySum(number)


module.exports = {
  between
, isLucky
, luckySum
}
