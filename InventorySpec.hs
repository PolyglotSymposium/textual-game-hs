module InventorySpec where

import Test.Hspec
import Inventory

main = hspec $ do
    describe "Making a new Inventory" $ do
       it "should make an empty Inventory" $ do
           initialInventory `shouldBe` Inventory []
