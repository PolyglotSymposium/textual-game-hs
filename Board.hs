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

data Board = BoardOf { lengthOf :: Int, heightOf :: Int, cells :: [Cell] }

boardWithSize nColumns nRows = BoardOf {
    lengthOf = nColumns,
    heightOf = nRows,
    cells = [PlainCell NoCreature NoItem | i <- [0..nRows*nColumns]]
}

displayBoard board = "  \n  \n  \n"
