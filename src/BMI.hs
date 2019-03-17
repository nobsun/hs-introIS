module BMI where

import A0102 (feet2cm, pound2kg)

bmi :: (Double, Double) -> Double
bmi (h, w) = w / (h / 100) ^2

bmiYp :: (Double, Double) -> Double
bmiYp (h, w) = undefined
