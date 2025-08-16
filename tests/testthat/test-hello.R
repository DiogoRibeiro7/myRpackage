test_that("hello() prints correctly with default arguments", {
  # Test the default output
  expect_output(hello(), "Hello, world!")

  # Test that the invisible return value is correct
  expect_equal(suppressMessages(hello()), "Hello, world!")
})

test_that("hello() accepts custom name parameter", {
  # Test with a custom name
  expect_output(hello("R Users"), "Hello, R Users!")
})

test_that("hello() supports different languages", {
  # Test English (default)
  expect_output(hello(language = "english"), "Hello, world!")

  # Test Spanish
  expect_output(hello(language = "spanish"), "Hola, world!")

  # Test French
  expect_output(hello(language = "french"), "Bonjour, world!")

  # Test Portuguese
  expect_output(hello(language = "portuguese"), "Olá, world!")

  # Test German
  expect_output(hello(language = "german"), "Hallo, world!")

  # Test Italian
  expect_output(hello(language = "italian"), "Ciao, world!")

  # Test unknown language (should default to English with warning)
  expect_warning(hello(language = "german2"), "Language 'german2' not supported")
  expect_output(suppressWarnings(hello(language = "german2")), "Hello, world!")
})

test_that("hello() correctly handles exclamation parameter", {
  # Test with exclamation = TRUE (default)
  expect_output(hello(exclamation = TRUE), "Hello, world!")

  # Test with exclamation = FALSE
  expect_output(hello(exclamation = FALSE), "Hello, world.")
})

test_that("hello() correctly handles capitalize parameter", {
  # Test with capitalize = FALSE (default)
  expect_output(hello("world", capitalize = FALSE), "Hello, world!")

  # Test with capitalize = TRUE
  expect_output(hello("world", capitalize = TRUE), "Hello, World!")
})

test_that("hello() validates input parameters", {
  # Test invalid name parameter
  expect_error(hello(name = c("world", "everyone")), "'name' must be a single character string")
  expect_error(hello(name = 123), "'name' must be a single character string")

  # Test invalid language parameter
  expect_error(hello(language = c("english", "spanish")), "'language' must be a single character string")
  expect_error(hello(language = 123), "'language' must be a single character string")

  # Test invalid exclamation parameter
  expect_error(hello(exclamation = c(TRUE, FALSE)), "'exclamation' must be a single logical value")
  expect_error(hello(exclamation = "yes"), "'exclamation' must be a single logical value")

  # Test invalid capitalize parameter
  expect_error(hello(capitalize = c(TRUE, FALSE)), "'capitalize' must be a single logical value")
  expect_error(hello(capitalize = "yes"), "'capitalize' must be a single logical value")
})

test_that("hello() works with all combinations of parameters", {
  # Test with all parameters customized
  expect_output(
    hello(name = "friends", language = "spanish", exclamation = FALSE, capitalize = TRUE),
    "Hola, Friends."
  )
})
