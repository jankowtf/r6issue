r6issue
======

## Installation

```
require("devtools")
devtools::install_github("Rappster/r6issue")
require("r6issue")
```

## Example

Class instances:

```
## Ref Class //
y_1 <- Test_1$new()
class(y_1)
attributes(Test_1)$generator
inherits(y_1, "envRefClass")
## --> inherits from `envRefClass`

## R6 Class //
y_2 <- Test_2$new()
class(y_2)
inherits(y_2, "envRefClass")
## --> no explicit inheritance
```

For `foo()`, only a method for `y := "R6"` exists:

```
try(foo(x = "a", y = y_2))
## Error in (function (classes, fdef, mtable)  : 
##  unable to find an inherited method for function ‘foo’ for signature ‘"character", "Test"’  
```

For `bar()`, a method for `y := "envRefClass"` exists which class `R6` seems to *implicitly* inherit from:

```
bar(x = "a", y = y_2)
bar(x = "a", y = y_1)
## --> both times the method for `y := `envRefClass` is selected
```