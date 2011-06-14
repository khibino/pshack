module Tool where

import Graphics.PS (GS, Glyph,
                    Color(..), Font(..),
                    Path(..), Image(..), Pt(..),
                    defaultGS)

black :: Color
black =  RGB 0 0 0

defaultGS' :: GS
defaultGS' =  defaultGS black

stroke :: Path -> Image
stroke =  Stroke defaultGS'

moveTo :: Double -> Double -> Path
moveTo x y = MoveTo (Pt x y)

lineTo :: Double -> Double -> Path
lineTo x y = LineTo (Pt x y)


-- Fonts
timesRoman :: Double -> Font
timesRoman =  Font "Times-Roman" 

helveticaBold :: Double -> Font
helveticaBold =  Font "Helvetica-Bold"

helveticaOblique :: Double -> Font
helveticaOblique =  Font "Helvetica-Oblique"

helvetica :: Double -> Font
helvetica =  Font "Helvetica"


rText :: Double -> [Glyph] -> Path
rText sz = Text $ timesRoman sz
