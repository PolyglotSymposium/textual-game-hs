module InventorySpec where

import Test.Hspec
import Inventory

main = hspec $ do
    describe "A newly created inventory" $ do
        it "should be empty" $ do
            initialInventory `shouldBe` Inventory []
    describe "Placing an item into the inventory" $ do
        context "when the inventory was empty" $ do
            it "should result in an inventory with one item" $ do
                (Money `placeIn` initialInventory) `shouldBe` Inventory [Money]
        context "when there was already an item in the inventory" $ do
            it "should result in an Inventory with two items" $ do
                (Money `placeIn` Inventory [Money]) `shouldBe` Inventory [Money, Money]

