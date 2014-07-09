module Game where

data GameState = EndGame deriving (Eq, Show)

runGame _ = EndGame
