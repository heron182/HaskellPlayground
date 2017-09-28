data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "right leaf" Empty Empty)
                           (Node "left leaf" Empty Empty)
