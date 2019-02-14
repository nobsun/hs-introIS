{-# LANGUAGE EmptyDataDeriving #-}
{- |
  This module is for exercise code which is incomplete module.
  In order to pass typechecking with incomplete module, use @Undefined data type.
-}
module UndefinedType (Undefined) where

{- |
  A dummy type
-}
data Undefined deriving (Eq, Ord, Show, Read)

{-
  A dummy value of UndefinedType, which causes an exception if you touch
-}
undef :: Undefined
undef = error "undefined value of Undefined type"

instance Num Undefined where
  _ + _ = undef
  _ * _ = undef
  abs _ = undef
  signum _ = undef
  fromInteger _ = undef
  negate _ = undef

instance Real Undefined where
  toRational _ = error "toRational for Undefined type"

instance Enum Undefined where
  toEnum _ = undef
  fromEnum _ = error "fromEnum for Undefined type"

instance Integral Undefined where
  quotRem _ _ = (undef, undef)
  toInteger _ = error "toInteger for Undefined type"

instance Fractional Undefined where
  fromRational _ = undef
  recip _ = undef

instance Floating Undefined where
  pi = undef
  exp _ = undef
  log _ = undef
  sin _ = undef
  cos _ = undef
  asin _ = undef
  acos _ = undef
  atan _ = undef
  sinh _ = undef
  cosh _ = undef
  asinh _ = undef
  acosh _ = undef
  atanh _ = undef
