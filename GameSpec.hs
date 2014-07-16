module GameSpec where

import Test.Hspec
import Game

main :: IO ()
main = hspec $ do
    describe "Is game over?" $do
        context "when no game states are given" $do
            it "should be EndGame" $do
                runGame [] `shouldBe` EndGame
        context "when a single game state is given" $do
            it "should be ContinueGame" $do
                runGame [SomeGameAction_ChangeMe] `shouldBe` SomeResultantAction_ChangeMe
