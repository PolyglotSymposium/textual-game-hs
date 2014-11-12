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

data Board = BoardOf { lengthOf :: Int, heightOf :: Int, cells :: [[Cell]] }

boardWithSize nColumns nRows = BoardOf {
    lengthOf = nColumns,
    heightOf = nRows,
    cells = [[PlainCell NoCreature NoItem | i <- [1..nColumns]] | j <- [1..nRows]]
}

displayBoard board = unlines [foldl1 (++) [displayCell cell | cell <- row] | row <- cells board]
