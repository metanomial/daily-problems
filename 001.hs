import Data.List

-- | Determines if any two elements of `list` add up to `sum`
hasSumPair :: [Int] -> Int -> Bool
hasSumPair list sum = length pairs > 1 where
  pairs = intersect list diffedList
  diffedList = map differ list
  differ x = sum - x
