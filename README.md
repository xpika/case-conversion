case-conversion
==============

convert between different formats for compounding words. 


example:

```haskell
Prelude> :m + Text.CaseConversion

Text.CaseConversion.fromCamelCase "helloWorld"

["hello","World"]

Prelude Text.CaseConversion> toSnakeCase ["hello","world"]

"hello_world"
```
