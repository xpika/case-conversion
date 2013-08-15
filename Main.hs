module Main where
import Text.CaseConverter

main = interact (unlines . map  ( toCamelCase . fromSnakeCase)  . lines ) 

