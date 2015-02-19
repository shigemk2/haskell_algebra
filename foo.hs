data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
    print $ Foo { bar = 1, baz = "a" }  -- 名前を指定して束縛
    print $ Foo 2 "b"                   -- 無名のときと同じ方法
