module Board where

import Inventory

data Creature = NoCreature | User deriving Eq
data Cell = PlainCell { creatureIn :: Creature, itemIn :: Item }
    | ExitCell { creatureIn :: Creature }
    deriving Eq

instance Show Creature where
    show User = "@"
    show _ = " "

instance Show Cell where
    show ExitCell {creatureIn=c} = "⌘"
    show PlainCell {creatureIn=creature, itemIn=item}
        | creature == NoCreature = show item
        | otherwise = show creature

type Board = [[Cell]]

lengthOf board = length $ head board
heightOf board = length board

boardWithSize nColumns nRows = [[PlainCell NoCreature NoItem | i <- [1..nColumns]] | j <- [1..nRows]]

instance Show Board where
    show board = unlines [foldl1 (++) [show cell | cell <- row] | row <- board]
