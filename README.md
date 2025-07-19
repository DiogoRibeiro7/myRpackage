# myrpackage

A starter R package scaffold, structured for publication on [CRAN](https://cran.r-project.org/), with boilerplate files and metadata to begin development immediately.

---

## 📁 File Tree

```text
myrpackage/
├── DESCRIPTION               # Package metadata
├── NAMESPACE                # Generated from roxygen2 docs
├── R/
│   ├── hello.R              # Example R function with documentation
│   └── goodbye.R            # Another example function
├── man/
│   ├── hello.Rd             # Generated manual file
│   └── goodbye.Rd           # Manual for goodbye
├── tests/
│   └── testthat/
│       ├── test-hello.R     # Unit test
│       └── test-goodbye.R   # Unit test
│   └── testthat.R           # Testthat runner setup
├── vignettes/
│   └── intro.Rmd            # Long-form documentation (optional)
├── .Rbuildignore            # Files ignored during build
├── .gitignore               # Git ignore rules
├── inst/
│   └── CITATION            # Citation information
├── LICENSE                  # Open-source license (MIT recommended)
└── README.md                # Project overview and usage
```

---

## 📦 DESCRIPTION (Example)

```r
Package: myrpackage
Type: Package
Title: What the Package Does (One Line, Title Case)
Version: 0.0.0.9000
Authors@R:
    person(given = "First", family = "Last", email = "your@email.com", role = c("aut", "cre"))
Description: A short description of what the package does.
License: MIT + file LICENSE
Encoding: UTF-8
LazyData: true
RoxygenNote: 7.3.0
```

---

## 📄 R/hello.R

```r
#' Say Hello
#'
#' This function prints a friendly greeting.
#'
#' @return No return value, called for side effects.
#' @export
hello <- function() {
  print("Hello, world!")
}
```
---

## 📄 R/goodbye.R

```r
#' Say Goodbye
#'
#' This function prints a friendly farewell.
#'
#' @return No return value, called for side effects.
#' @export
goodbye <- function() {
  print("Goodbye, world!")
}
```
---
## 🧪 tests/testthat/test-hello.R

```r
test_that("hello() prints correctly", {
  expect_output(hello(), "Hello, world!")
})
```

---

## 📄 tests/testthat.R

```r
library(testthat)
library(myrpackage)

test_check("myrpackage")
```

---

## 📄 .Rbuildignore

```text
^README\.md$
^\.gitignore$
^\.Rproj\.user$
^\.Rhistory$
^\.RData$
^\.DS_Store$
^vignettes/
```

---

## 📄 LICENSE (MIT Example)

```
MIT License

Copyright (c) 2025 Diogo Ribeiro

Permission is hereby granted, free of charge, to any person obtaining a copy...
```
---

## 📑 Citation

To cite this package, run `citation("myrpackage")` in R. This will display the bibliographic information from `inst/CITATION`.


---

## 📄 vignettes/intro.Rmd (Optional)

````rmd
---
title: "Getting Started with myrpackage"
output: rmarkdown::html_vignette
