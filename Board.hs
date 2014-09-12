module Board where

import Inventory

data Creature = NoCreature | User deriving (Eq, Show)
data Cell = NewCell { creatureIn :: Creature, itemIn :: Item } deriving (Eq, Show)

plainEmptyCell = NewCell NoCreature NoItem

displayCreature User = "@"
displayCreature _ = " "

displayItem Money = "$"
displayItem _ = " "

displayCell cell
    | creatureIn cell == NoCreature = displayItem (itemIn cell)
    | otherwise = displayCreature (creatureIn cell)
