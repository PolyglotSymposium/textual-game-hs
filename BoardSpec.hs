module BoardSpec where

import Test.Hspec
import Board
import Inventory

main :: IO ()
main = hspec $ do
    describe "The display of a cell" $do
        context "which is plain and empty" $do
            it "appears empty" $do
                displayCell plainEmptyCell `shouldBe` " "
        context "which has a creature in it" $do
            it "appears as the creature's symbol" $do
                displayCell (NewCell User NoItem) `shouldBe` "@"
        context "which has an item in it" $do
            it "appears as the item's symbol" $do
                displayCell (NewCell NoCreature Money) `shouldBe` "$"
        context "which has a creature and an item in it" $do
            it "appears as the creature's symbol" $do
                displayCell (NewCell User Money) `shouldBe` "@"
