module Game where

data GameState = EndGame | SomeResultantAction_ChangeMe deriving (Eq, Show)
data GameAction = SomeGameAction_ChangeMe

runGame [] = EndGame
runGame _ = SomeResultantAction_ChangeMe
