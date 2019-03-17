module A0101 where

import UndefinedType

-- | (a)
-- >>> ex0101a == 186
-- True
ex0101a :: Int
ex0101a = 56 + 97 + 33

-- | (b)
-- >>> ex0101b == 9
-- True
ex0101b :: Int
ex0101b = 47 - 38

-- | (c)
-- >>> ex0101c == 770
-- True
ex0101c :: Int
ex0101c = 35 * 22

-- | (d)
-- >>> ex0101d == 2
-- True
ex0101d :: Int
ex0101d = 34 `div` 15 === 34 `quot` 15

-- | (e)
-- >>> ex0101e == 4
-- True
ex0101e :: Int
ex0101e = 34 `mod` 15 === 34 `rem` 15

-- | (f)
-- >>> ex0101f == 2.2666666666666666
-- True
ex0101f :: Double
ex0101f = 34 / 15

-- | (g)
-- >>> ex0101g == 9354238358105289311446368256
-- True
ex0101g :: Integer
ex0101g = 56 ^ 16

-- | (h)
-- >>> ex0101h == 9354238358105289311446368256
-- True
ex0101h :: Undefined
ex0101h = 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56 * 56

-- | (i)
-- >>> ex0101i == 29.425079221367138
-- True
ex0101i :: Double
ex0101i = 104 / (188 / 100) ^ 2
