module MoveSpec where

import Test.Hspec
import Move

main :: IO ()
main = hspec $ do
    describe "Move left" $do
        it "should return decrement the x-coordinate" $do
            moveLeft (1, 3) `shouldBe` (0, 3)
            moveLeft (2, 2) `shouldBe` (1, 2)
    describe "Move right" $do
        it "should return increment the x-coordinate" $do
            moveRight (1, 3) `shouldBe` (2, 3)
            moveRight (2, 2) `shouldBe` (3, 2)
