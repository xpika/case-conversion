module Text.CaseConverter (
 toCase
,fromCase
,IdentifierCase (..)
) where

import Data.Char
import Data.List

data IdentifierCase = Camel | Snake | Spinal

toCase Camel = toCamelCase
toCase Snake = toSnakeCase
toCase Spinal = toSpinalCase

fromCase Camel = fromCamelCase
fromCase Snake = fromSnakeCase
fromCase Spinal = fromSpinalCase

toCamelCase (c:cs) = concat (c:map (\(c:cs)->toUpper c: map toLower cs) cs)
toSnakeCase = toCharacterCase '_'
toSpinalCase = toCharacterCase '-'

fromCamelCase = splitBy isUpper
fromSnakeCase = fromCharacterCase '_'
fromSpinalCase = fromCharacterCase '-'

toCharacterCase c cs = concat (intersperse [c] (map (map toLower) cs)) 
fromCharacterCase c cs = head' ++ map tail tail'
  where
  (head',tail') = splitAt 1 cs'
  cs' = splitBy (==c) cs

splitBy p = groupBy (const (not . p))
