##------------------------------------------------------------------------------
context("RCs")
##------------------------------------------------------------------------------

test_that("RCs", {
  
  expect_error(foo(x = "a", y = Test_2$new()))
  
  expect_false(bar(x = "a", y = Test_2$new()) == "R6")
  expect_true(bar(x = "a", y = Test_2$new()) == "RefClass")
  
})
