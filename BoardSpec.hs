module BoardSpec where

import Test.Hspec
import Board
import Inventory

main :: IO ()
main = hspec $do
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
    describe "Creating a two-by-three default board" $do
        context "results in a board" $do
            let subject = (boardWithSize 2 3)
            it "with a length of two" $do
                lengthOf subject `shouldBe` 2
            it "with a height of two" $do
                heightOf subject `shouldBe` 3
            it "with all empty plain cells" $do
                displayBoard subject `shouldBe` "  \n  \n  \n"
    describe "Creating a three-by-two default board" $do
        context "results in a board" $do
            let subject = (boardWithSize 3 2)
            it "with a length of two" $do
                lengthOf subject `shouldBe` 3
            it "with a height of two" $do
                heightOf subject `shouldBe` 2
            it "with all empty plain cells" $do
                pending
                displayBoard subject `shouldBe` "   \n   \n"
