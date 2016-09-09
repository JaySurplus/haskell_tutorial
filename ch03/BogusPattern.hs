data Fruit = Apple | Orange
            deriving (Show)

betterFruit f = case f of
                "apple" -> Apple
                "orange" -> Orange
