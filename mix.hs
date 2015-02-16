data Color = Magenta | Cyan | Yellow | Blue | Red | Green | White deriving Show

mix Blue Red = Magenta
mix Blue Green = Cyan
mix Red Green = Yellow

main = do
    print Blue
    print $ mix Blue Red
    print $ mix Blue Green
    print $ mix Red Green
