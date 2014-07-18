module Inventory where

data Item = UselessItem deriving (Show, Eq)

data Inventory = Inventory [Item] deriving (Show, Eq)

initialInventory = Inventory []
placeIn item (Inventory items) = Inventory $ item:items
