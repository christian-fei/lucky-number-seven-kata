module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit
import LuckyNumberSeven

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  betweenTests

  ++ luckySumTests

  ++ isLuckyTests


betweenTests =
  [ noLuckyNumberInRange ]
  ++ simpleNumberInRange
  ++ recursiveNumbersInRange

noLuckyNumberInRange =
  LuckyNumberSeven.between 1 6 ~?= []

simpleNumberInRange =
  [ LuckyNumberSeven.between 1 7 ~?= [7]
  , LuckyNumberSeven.between 1 16 ~?= [7, 16]
  , LuckyNumberSeven.between 1 25 ~?= [7, 16, 25]
  , LuckyNumberSeven.between 20 40 ~?= [25, 34]
  ]

recursiveNumbersInRange =
  [ LuckyNumberSeven.between 35 100 ~?= [43, 52, 61, 70, 79, 88, 97]
  ]

isLuckyTests =
  [ LuckyNumberSeven.isLucky 7 ~?= True
  , LuckyNumberSeven.isLucky 10 ~?= False
  , LuckyNumberSeven.isLucky 16 ~?= True
  , LuckyNumberSeven.isLucky 79 ~?= True
  ]

luckySumTests =
  [ LuckyNumberSeven.luckySum 1 ~?= 1
  , LuckyNumberSeven.luckySum 10 ~?= 1
  , LuckyNumberSeven.luckySum 16 ~?= 7
  , LuckyNumberSeven.luckySum 67 ~?= 4
  ]
