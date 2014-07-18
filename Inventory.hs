module Inventory where

data Hole = Hole deriving (Show, Eq)

data Inventory = Inventory [Hole] deriving (Show, Eq)

initialInventory = Inventory []
