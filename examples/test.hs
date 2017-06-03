{-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text.Lazy.IO as TLIO
import Data.Text.Format.Heavy

main :: IO ()
main = do
  let template = "x: 0x{:x}, y: {}, z: {}, x(d): {0}, t: {}, y: {}, r: {}."
      -- xs = [Variable (18 :: Int), Variable ("hello" :: String), Variable (3 :: Int)]
      rt = (Right 7) :: Either String Int
      xs = (18 :: Int, "hello" :: String, 3 :: Int, Shown (Just (7 :: Int)), Just (8 :: Int), rt)
  TLIO.putStrLn $ formatText template xs
  TLIO.putStrLn $ formatText "Hello, {}!" $ Single ("Ilya" :: String)
  

