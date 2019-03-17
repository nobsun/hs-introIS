{-# LANGUAGE OverloadedStrings #-}
module E0101Spec
  ( spec
  ) where

import Data.String
import qualified Codec.Binary.UTF8.String as U
import qualified Data.ByteString as B
import Test.Main
import Test.Hspec
import Text.Show.Unicode
import E0101

newtype UString a = UString a deriving Eq

ustring :: B.ByteString -> UString String
ustring = UString . U.decode . B.unpack

instance IsString a => IsString (UString a) where
  fromString = UString . fromString
  
instance Show a => Show (UString a) where
  show (UString s) = ushow s

spec :: Spec
spec = do
  { describe "練習問題1.1" $ do
      { it "(a) 56と97と33の和"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101a `shouldBe` (56 + 97 + 33)
      ; it "(b) 47引く38"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101b `shouldBe` (47 - 38)
      ; it "(c) 35掛ける22"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101c `shouldBe` (35 * 22)
      ; it "(d) 34を15で割った商"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101d `shouldBe` (34 `div` 15)
      ; it "(e) 34を15で割った余り"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101e `shouldBe` (34 `mod` 15)
      ; it "(f) 34割る15（実数で）"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101f `shouldBe` (34 / 15)
      ; it "(g) 56の16乗（^^を使って）"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101g `shouldBe` (56 ^^ 16)
      ; it "(h) 56の16乗（^^を使わずに）"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101h `shouldBe` (56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56)
      ; it "(i) 身長188cm，体重104kgの人のBMI"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ ex0101i `shouldBe` (104 / (188 / 100) ^ 2)
      }
  }
