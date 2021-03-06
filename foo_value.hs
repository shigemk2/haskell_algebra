data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
    let f = Foo { bar = 1, baz = "a" }
    print f
    print (bar f, baz f)       -- フィールド名を関数として使用
    let (Foo a b) = f          -- パターンマッチで取り出し
    print (a, b)
    let (Foo { bar = c }) = f  -- レコード構文でパターンマッチ
    print c
