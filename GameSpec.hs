module GameSpec where

import Test.Hspec
import Game

main :: IO ()
main = hspec $ do
    describe "This as-of-yet-unnamed text-based game" $do
        it "should have a working suite of tests" $do
            True `shouldBe` True
    describe "Is game over?" $do
        context "before running" $do
            it "should be false" $do
                isGameOver `shouldBe` False
        context "after running" $do
            it "should be true" $do
                runGame
                isGameOver `shouldBe` True
