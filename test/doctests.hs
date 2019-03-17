module Main where

import Test.DocTest

main :: IO ()
main = doctest $ exercises ++ answers
  
exercises :: [FilePath]
exercises =  []
{- -
          ++ ["src/E0101.hs"
             ,"src/E0102.hs"
             ]
-- -}
answers :: [FilePath]
answers =  []
{- -}
        ++ ["ans/A0101.hs"
           ,"ans/A0102.hs"
           ]
-- -}
