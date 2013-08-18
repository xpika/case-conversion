module Main where
import Text.CaseConverter

main = do
       interact (unlines . map  (toCase Snake . fromCase Camel)  . lines ) 

