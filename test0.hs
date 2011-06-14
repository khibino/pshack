
import Graphics.PS (Image, Font, Path(..), ps, a4, (+++))
import Tool (moveTo, lineTo, stroke,
             timesRoman,
             helveticaBold, helveticaOblique, helvetica)

ex0 :: Image
ex0 =  stroke $ moveTo 144 72 +++ lineTo 144 432

ex1 :: Image
ex1 =  stroke $ moveTo 72 200 +++ Text (timesRoman 15) "typography"

hb15 = helveticaBold 15
ho7  = helveticaOblique 7
h10  = helvetica 10

hb15, ho7, h10 :: Font



main :: IO ()
main =  ps "test0.ps" a4 [ex1, ex0]
