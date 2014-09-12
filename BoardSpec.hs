module BoardSpec where

import Test.Hspec
import Board
import Inventory

main :: IO ()
main = hspec $ do
    describe "The display of a plain cell" $do
        context "when it is empty" $do
            it "appears empty" $do
                displayCell (PlainCell NoCreature NoItem) `shouldBe` " "
        context "when it has a creature in it" $do
            it "appears as the creature's symbol" $do
                displayCell (PlainCell User NoItem) `shouldBe` "@"
        context "when it has an item in it" $do
            it "appears as the item's symbol" $do
                displayCell (PlainCell NoCreature Money) `shouldBe` "$"
        context "when it has a creature and an item in it" $do
            it "appears as the creature's symbol" $do
                displayCell (PlainCell User Money) `shouldBe` "@"
    describe "The display of the exit cell" $do
        context "when it is empty" $do
            it "appears as the Apple command symbol" $do
                displayCell (ExitCell NoCreature) `shouldBe` "⌘"
