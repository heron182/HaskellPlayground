data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
              deriving (Show)

simpleTree = Node "parent" (Just (Node "right leaf" Nothing Nothing))
                           (Just (Node "left leaf" Nothing Nothing))


getLeaf (Node p r l) = l
