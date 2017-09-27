firstOrEmpty:: [[Char]] -> [Char]
firstOrEmpty lst = if (null lst) then "empty" else head lst

(+++):: [a] -> [a] -> [a]
lst1 +++ lst2 = if (null lst1)
            then lst2 {- check for null case -}
            else head lst1 : (tail lst1 +++ lst2)

reverse2:: [a] -> [a]
reverse2 lst = if (null lst)
            then []
            else reverse2 (tail lst) +++ [head lst]

maxmin:: [Int] -> (Int, Int)
maxmin list = let h = head list
              in if null (tail list)
                 then (h, h)
                 else (if h > t_max then h else t_max,
                       if h < t_min then h else t_min)
                       where t = maxmin (tail list)
                             t_max = fst t
                             t_min = snd t

fibonacci:: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)
