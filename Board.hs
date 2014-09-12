module Board where

data Creature = NoCreature | User deriving (Eq, Show)
data Cell = NewCell { creature :: Creature } deriving (Eq, Show)

plainEmptyCell = NewCell NoCreature

displayCreature User = "@"
displayCreature _ = " "

displayCell cell = displayCreature (creature cell)
