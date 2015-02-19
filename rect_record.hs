data Point = Point { px :: Int, py :: Int } deriving Show
data Rect = Rect { x :: Int, y :: Int, w :: Int, h :: Int } deriving Show

contains (Rect x y w h) (Point px py) =
    x <= px && px < x + w && y <= py && py < y + h

main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
