module Text.CaseConverter (
 toCase
,IdentifierCase
,fromSnakeCase
,toCamelCase
) where

import Data.Char
import Data.List

data IdentifierCase = Camel | Snake | UpperSnake

toCase Camel = toCamelCase
toCase Snake = toSnakeCase

toCamelCase (c:cs) = concat (c:map (\(c:cs)->toUpper c: map toLower cs) cs)
toSnakeCase cs = concat (intersperse "_" (map (map toLower) cs))

splitBy p = groupBy (const (not . p))

fromCamelCase = splitBy isUpper

fromSnakeCase cs = head' ++ map tail tail'
  where
  (head',tail') = splitAt 1 cs'
  cs' = splitBy (=='_') cs



