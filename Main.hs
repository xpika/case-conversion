module Main where
import Text.CaseConversion

main = do
       interact (unlines . map  (toCase Snake . fromCase Camel)  . lines ) 

