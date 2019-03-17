module A0102 where

import UndefinedType

type Point2D = (Double, Double)
type Distance = Double
type HeightFt = (Double, Double)
type HeightCm = Double
type WeightPd = (Double, Double)
type WeightKg = Double

-- | (a) 平面上の2点間の距離
-- >>> ex0102a = distance ((1, 1), (4, 5))
-- >>> ex0102a
-- 5.0
distance :: (Point2D, Point2D) -> Distance
distance ((x, y), (u, v)) = sqrt ((x - u) ^ 2 + (y - v) ^ 2)

-- | (b) フィートからセンチメートルへの換算
-- >>> ex0102b = feet2cm (6, 9) -- 6フィート9インチの大男
-- >>> ex0102b
-- 205.74
feet2cm :: HeightFt -> HeightCm
feet2cm (f,i) = (f + i/12) * cmpft

-- | cm/ft 換算係数
-- >>> cmpft
-- 30.48
cmpft :: Double
cmpft = 30.48

-- | (c) ポンド・オンスからキログラムへの換算
-- >>> ex0102c = pound2kg (225, 12) -- 225ポンド3/4の巨漢
-- >>> ex0102c
-- 102.4002
pound2kg :: WeightPd -> WeightKg
pound2kg (p, o) = (p + o/16) * kgppd

kgppd :: Double
kgppd = 0.4536
