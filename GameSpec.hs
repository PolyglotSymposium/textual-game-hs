import Test.Hspec

main :: IO ()
main = hspec $ do
    describe "This as-of-yet-unnamed text-based game" $do
        it "should have a working suite of tests" $do
            True `shouldBe` True
