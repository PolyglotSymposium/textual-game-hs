module MoveSpec where

import Test.Hspec
import Move

main :: IO ()
main = hspec $ do
    describe "Move left" $do
        it "should return the coordinates with the column decremented" $do
            moveLeft (ColumnAndRow 1 3) `shouldBe` (ColumnAndRow 0 3)
            moveLeft (ColumnAndRow 2 2) `shouldBe` (ColumnAndRow 1 2)
    describe "Move right" $do
        it "should return the coordinates with the column incremented" $do
            moveRight (ColumnAndRow 1 3) `shouldBe` (ColumnAndRow 2 3)
            moveRight (ColumnAndRow 2 2) `shouldBe` (ColumnAndRow 3 2)
    describe "Move up" $do
        it "should return the coordinates with the row decremented" $do
            moveUp (ColumnAndRow 1 3) `shouldBe` (ColumnAndRow 1 2)
            moveUp (ColumnAndRow 2 2) `shouldBe` (ColumnAndRow 2 1)
    describe "Move down" $do
        it "should return the coordinates with the row incremented" $do
            moveDown (ColumnAndRow 1 3) `shouldBe` (ColumnAndRow 1 4)
            moveDown (ColumnAndRow 2 2) `shouldBe` (ColumnAndRow 2 3)
