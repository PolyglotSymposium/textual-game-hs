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
    describe "Move up" $do
        it "should return decrement the y-coordinate" $do
            moveUp (1, 3) `shouldBe` (1, 2)
            moveUp (2, 2) `shouldBe` (2, 1)
    describe "Move down" $do
        it "should return increment the y-coordinate" $do
            moveDown (1, 3) `shouldBe` (1, 4)
            moveDown (2, 2) `shouldBe` (2, 3)
