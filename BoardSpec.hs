module BoardSpec where

import Test.Hspec
import Board

main :: IO ()
main = hspec $ do
    describe "Given a plain, empty cell in the middle of the gameboard" $do
        context "when the cell is displayed" $do
            it "then it appears empty" $do
                display plainEmptyCell `shouldBe` " "
