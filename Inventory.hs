module Inventory where

data Item = NoItem | Money deriving Eq

instance Show Item where
    show Money = "$"
    show _ = " "

data Inventory = Inventory [Item] deriving (Show, Eq)

initialInventory = Inventory []
placeIn item (Inventory items) = Inventory $ item:items
