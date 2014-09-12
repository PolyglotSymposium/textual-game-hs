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
        context "which has the user in it" $do
            it "appears as the at sign" $do
                displayCell (NewCell User NoItem) `shouldBe` "@"
        context "with money it it" $do
            it "appears as the dollar sign" $do
                displayCell (NewCell NoCreature Money) `shouldBe` "$"
        context "with the user and money in it" $do
            it "appears as the dollar sign" $do
                displayCell (NewCell User Money) `shouldBe` "@"
