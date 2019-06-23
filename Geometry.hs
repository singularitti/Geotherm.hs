module Geometry where

data Point2D = Point2D Float Float deriving (Show)

data Point3D = Point3D Float Float Float deriving (Show)

data Rectangle = Rectangle { lx :: Float, rx :: Float, ly :: Float, uy :: Float } deriving (Show)

isin :: Point2D -> Rectangle -> Bool
isin (Point2D x y) (Rectangle lx rx ly uy) = lx <= x && x <= rx && ly <= y && y <= uy
