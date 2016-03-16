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
        let subject = boardWithSize 2 3
        context "results in a board" $do
            it "with a length of two" $do
                lengthOf subject `shouldBe` 2
            it "with a height of two" $do
                heightOf subject `shouldBe` 3
            it "with all empty plain cells" $do
                displayBoard subject `shouldBe` "  \n  \n  \n"
        context "and then replacing the lower righthand corner cell with an exit cell" $do
            let subject2 = replaceCell subject 1 2 (ExitCell NoCreature)
            it "should create a board with an exit cell in the lower righthand corner" $do
                displayBoard subject2 `shouldBe` "  \n  \n ⌘\n"
    describe "Creating a three-by-two default board" $do
        let subject = boardWithSize 3 2
        context "results in a board" $do
            it "with a length of two" $do
                lengthOf subject `shouldBe` 3
            it "with a height of two" $do
                heightOf subject `shouldBe` 2
            it "with all empty plain cells" $do
                displayBoard subject `shouldBe` "   \n   \n"
