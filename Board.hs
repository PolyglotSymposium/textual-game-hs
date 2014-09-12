module Board where

data Cell = PlainMiddle deriving (Eq, Show)

display _ = " "
plainEmptyCell = PlainMiddle
