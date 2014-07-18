module InventorySpec where

import Test.Hspec
import Inventory

main = hspec $ do
    describe "Making a new Inventory" $ do
        it "should make an empty Inventory" $ do
            initialInventory `shouldBe` Inventory []
    describe "Placing items in the inventory" $ do
        context "when placing in an empty Inventory" $ do
            it "should be the only item in the Inventory" $ do
                (UselessItem `placeIn` initialInventory) `shouldBe` Inventory [UselessItem]
        context "when placing in an inventory that already has an item" $ do
            it "should construct an Inventory with two items" $ do
                (UselessItem `placeIn` Inventory [UselessItem]) `shouldBe` Inventory [UselessItem, UselessItem]

