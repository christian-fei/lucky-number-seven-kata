module LuckyNumberSeven (
  between
, luckySum
, isLucky
)
where

import Data.List.Split

between :: Int -> Int -> [Int]
between =
  betweenRec []

betweenRec :: [Int] -> Int -> Int -> [Int]
betweenRec acc curr max =
  case curr > max of
    True  -> acc
    False ->
      let
        appendAcc = if isLucky curr then [curr] else []
        newAcc = acc ++ appendAcc
        newCurr = curr + 1
      in
        betweenRec newAcc newCurr max

luckySum :: Int -> Int
luckySum number =
  case number >= 10 of
    True  -> luckySum (sum $ toDigitList number)
    False -> number

isLucky :: Int -> Bool
isLucky number =
  7 == luckySum number

toDigitList :: Int -> [Int]
toDigitList =
  map toInt . byDigit

toInt :: String -> Int
toInt x =
  read x::Int

byDigit :: Int -> [String]
byDigit =
  chunksOf 1 . show
