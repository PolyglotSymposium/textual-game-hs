module BoardSpec where

import Test.Hspec
import Board

main :: IO ()
main = hspec $ do
    describe "Displaying a cell" $do
        context "which is plain and empty with no walls" $do
            it "then it appears empty" $do
                displayCell plainEmptyCell `shouldBe` " "
        context "which has no walls but the user is in it" $do
            it "then it appears as the @ sign" $do
                displayCell (NewCell User) `shouldBe` "@"
