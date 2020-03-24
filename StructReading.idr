module StructReading
import System.FFI


structReading : String -> String
structReading fn = "C:" ++ fn ++ ",structReading"

ExtraStruct : Type
ExtraStruct = Struct "ExtraStruct" [("a", Int), ("b", Int), ("c", Int)]

TestStruct : Type
TestStruct = Struct "TestStruct" [("base", ExtraStruct),
                                  ("x", Int),
                                  ("y", Int)]


%foreign (structReading "getTestStruct")
getTestStruct : TestStruct

Show TestStruct where
  show ts =
      let x : Int = getField ts "x"
          y : Int = getField ts "y"
      in
      "x: " ++ (show x) ++ ", y: " ++ (show y)

main : IO ()
main = do
    putStrLn $ (show getTestStruct)
