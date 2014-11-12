module Board where

import Inventory

data Creature = NoCreature | User deriving (Eq, Show)
data Cell = PlainCell { creatureIn :: Creature, itemIn :: Item }
    | ExitCell { creatureIn :: Creature }
    deriving (Eq, Show)

displayCreature User = "@"
displayCreature _ = " "

displayItem Money = "$"
displayItem _ = " "

displayCell ExitCell {creatureIn=c} = "⌘"

displayCell PlainCell {creatureIn=creature, itemIn=item}
    | creature == NoCreature = displayItem item
    | otherwise = displayCreature creature

type Board = [[Cell]]

lengthOf board = length $ head board
heightOf board = length board

boardWithSize nColumns nRows = [[PlainCell NoCreature NoItem | i <- [1..nColumns]] | j <- [1..nRows]]

displayBoard board = unlines [foldl1 (++) [displayCell cell | cell <- row] | row <- board]
