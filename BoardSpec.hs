module BoardSpec where

import Test.Hspec
import Board
import Inventory

main :: IO ()
main = hspec $ do
    describe "Displaying a cell" $do
        context "which is plain and empty" $do
            it "then it appears empty" $do
                displayCell plainEmptyCell `shouldBe` " "
        context "which has the user in it" $do
            it "then it appears as the at sign" $do
                displayCell (NewCell User NoItem) `shouldBe` "@"
        context "with money it it" $do
            it "then it appears as the dollar sign" $do
                displayCell (NewCell NoCreature Money) `shouldBe` "$"
