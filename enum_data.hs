data Color = Blue | Red | Green | White deriving (Show, Enum)

main = do
    print $ fromEnum Blue
    print $ fromEnum Red
    print $ fromEnum Green
    print $ fromEnum White
    print (toEnum 0 :: Color)   -- 演算子の優先順位の関係上、::は括弧で囲む必要があります（$ではなく）
    print (toEnum 1 :: Color)
    print (toEnum 2 :: Color)
    print (toEnum 3 :: Color)
