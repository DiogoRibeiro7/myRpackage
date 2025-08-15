test_that("goodbye() prints correctly with default arguments", {
  # Test the default output
  expect_output(goodbye(), "Goodbye, world!")

  # Test that the invisible return value is correct
  expect_equal(capture.output(goodbye()), "Goodbye, world!")
})

test_that("goodbye() accepts custom name parameter", {
  # Test with a custom name
  expect_output(goodbye("R Users"), "Goodbye, R Users!")
})

test_that("goodbye() supports different languages", {
  # Test English (default)
  expect_output(goodbye(language = "english"), "Goodbye, world!")

  # Test Spanish
  expect_output(goodbye(language = "spanish"), "Adiós, world!")

  # Test French
  expect_output(goodbye(language = "french"), "Au revoir, world!")

  # Test Portuguese
  expect_output(goodbye(language = "portuguese"), "Adeus, world!")

  # Test unknown language (should default to English)
  expect_output(goodbye(language = "german"), "Goodbye, world!")
})

test_that("goodbye() correctly handles exclamation parameter", {
  # Test with exclamation = TRUE (default)
  expect_output(goodbye(exclamation = TRUE), "Goodbye, world!")

  # Test with exclamation = FALSE
  expect_output(goodbye(exclamation = FALSE), "Goodbye, world.")
})

test_that("goodbye() validates input parameters", {
  # Test invalid name parameter
  expect_error(goodbye(name = c("world", "everyone")), "'name' must be a single character string")
  expect_error(goodbye(name = 123), "'name' must be a single character string")

  # Test invalid language parameter
  expect_error(goodbye(language = c("english", "spanish")), "'language' must be a single character string")
  expect_error(goodbye(language = 123), "'language' must be a single character string")

  # Test invalid exclamation parameter
  expect_error(goodbye(exclamation = c(TRUE, FALSE)), "'exclamation' must be a single logical value")
  expect_error(goodbye(exclamation = "yes"), "'exclamation' must be a single logical value")
})

test_that("goodbye() works with all combinations of parameters", {
  # Test with all parameters customized
  expect_output(
    goodbye(name = "friends", language = "spanish", exclamation = FALSE),
    "Adiós, friends."
  )
})
