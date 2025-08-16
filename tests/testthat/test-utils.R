test_that("get_supported_languages returns correct languages", {
  languages <- get_supported_languages()
  expect_is(languages, "character")
  expect_true(all(c("english", "spanish", "french", "portuguese", "german", "italian") %in% languages))
  expect_length(languages, 6)
})

test_that("capitalize_first works correctly", {
  expect_equal(capitalize_first("hello"), "Hello")
  expect_equal(capitalize_first("HELLO"), "HELLO")
  expect_equal(capitalize_first("h"), "H")
  expect_equal(capitalize_first(""), "")
  expect_equal(capitalize_first("hello world"), "Hello world")
})
