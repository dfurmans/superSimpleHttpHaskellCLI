module Main where
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Lazy.Char8 as LC
import Network.HTTP.Simple
import Lib

main :: IO ()
main = do
  putStrLn "Please provide an URL to ask for :: "  
  url <- getLine
  request <- parseRequest url
  response <- httpLBS request
  let status = getResponseStatusCode response
  putStrLn ("Hey " ++ show status ++ ", you rock!")
