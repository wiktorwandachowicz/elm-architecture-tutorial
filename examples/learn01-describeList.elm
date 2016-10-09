import Html exposing (text)

describeList: List a -> String
describeList xs =
  "The list is " ++ case xs of [] -> "empty."
                               [x] -> ("a singleton list with element: " ++ (toString x))
                               xs -> "a longer list."

main =
  text ( describeList ["Hello", "world"] )


{-

describeList function - is an Elm variant of Haskell example:

http://learnyouahaskell.com/syntax-in-functions#case-expressions


-- Haskell:
describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."
-- Elm:
describeList: List a -> String
describeList xs =
                  "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

The main difference between the two is that instead of Haskell's function type,
also note different operators "::" and ":" after function name:

describeList :: [a] -> String

one has to use analogous Elm's type annotation:

describeList: List a -> String

-}