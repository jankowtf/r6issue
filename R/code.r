#' @export
Test_1 <- setRefClass("Test", fields = list(.x = "numeric"))

#' @import R6
#' @export
Test_2 <- R6Class("Test", public = list(.x = "numeric"))

#' @export
setGeneric("foo", signature = c("x", "y"),
  def = function(x, y) standardGeneric("foo")       
)
setMethod("foo", c(x = "character", y = "R6"), 
  definition = function(x, y) TRUE
)

#' @export
setGeneric("bar", signature = c("x", "y"),
  def = function(x, y) standardGeneric("bar")       
)
setMethod("bar", c(x = "character", y = "envRefClass"), 
  definition = function(x, y) "RefClass"
)
setMethod("bar", c(x = "character", y = "R6"), 
  definition = function(x, y) "R6"
)

