{-# LANGUAGE OverloadedStrings #-}
module E0102Spec
  ( spec
  ) where

import Data.String
import qualified Codec.Binary.UTF8.String as U
import qualified Data.ByteString as B
import Test.Main
import Test.Hspec
import Text.Show.Unicode
import E0102

newtype UString a = UString a deriving Eq

ustring :: B.ByteString -> UString String
ustring = UString . U.decode . B.unpack

instance IsString a => IsString (UString a) where
  fromString = UString . fromString
  
instance Show a => Show (UString a) where
  show (UString s) = ushow s

spec :: Spec
spec = do
  { describe "練習問題1.2" $ do
      { it "(a) 平面上の2点間の距離"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ distance ((1, 1), (4, 5)) `shouldBe` 5.0
      ; it "(b) 6フィート9インチの大男"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ feet2cm (6, 9) `shouldBe` 205.74
      ; it "(c) 225ポンド12オンスの巨漢"
        $ asTypeOf (pendingWith "Not yet implemented.")
        $ pound2kg (225, 12) `shouldBe` 102.4002
      }
  }
