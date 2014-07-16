module MoveSpec where

import Test.Hspec
import Move

main :: IO ()
main = hspec $ do
    describe "Move left" $do
        context "when both coordinates are positive" $do
            it "should return coordinates moved to the left" $do
                moveLeft (1, 3) `shouldBe` (0, 3)
                moveLeft (2, 2) `shouldBe` (1, 2)
