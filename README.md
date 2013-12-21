case-conversion
==============

convert between different formats for compounding words. 


example.

Prelude> :m + Text.CaseConversion

```haskell
Text.CaseConversion.fromCamelCase "helloWorld"

["hello","World"]

Prelude Text.CaseConversion> toSnakeCase ["hello","world"]

"hello_world"
```
