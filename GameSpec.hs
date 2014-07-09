module GameSpec where

import Test.Hspec
import Game

main :: IO ()
main = hspec $ do
    describe "This as-of-yet-unnamed text-based game" $do
        it "should have a working suite of tests" $do
            True `shouldBe` True
    describe "Is game over?" $do
        it "should be true" $do
            isGameOver `shouldBe` True
