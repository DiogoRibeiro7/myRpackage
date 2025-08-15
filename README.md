# myrpackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/DiogoRibeiro7/myrpackage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DiogoRibeiro7/myrpackage/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/DiogoRibeiro7/myrpackage/branch/main/graph/badge.svg)](https://codecov.io/gh/DiogoRibeiro7/myrpackage?branch=main)
[![CRAN status](https://www.r-pkg.org/badges/version/myrpackage)](https://CRAN.R-project.org/package=myrpackage)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

A minimal R package scaffold, structured for publication on [CRAN](https://cran.r-project.org/), with boilerplate files and metadata to begin development immediately.

## Installation

You can install the development version of myrpackage from [GitHub](https://github.com/) with:

```r
# install.packages("devtools")
devtools::install_github("DiogoRibeiro7/myrpackage")
```

## Usage

### Basic Examples

```r
library(myrpackage)

# Say hello with default parameters
hello()
#> Hello, world!

# Say hello to someone specific
hello("R Users")
#> Hello, R Users!

# Say hello in different languages
hello("amigos", language = "spanish")
#> Hola, amigos!

hello("mes amis", language = "french")
#> Bonjour, mes amis!

# Say goodbye
goodbye()
#> Goodbye, world!

goodbye("friends", language = "portuguese")
#> Adeus, friends!
```

## Features

- 🌐 Multilingual greeting and farewell functions
- 📦 Proper R package structure
- 📄 Comprehensive documentation
- 🧪 Complete test coverage
- 🔄 Continuous Integration workflow

## Package Structure

```
myrpackage/
├── DESCRIPTION          # Package metadata
├── NAMESPACE           # Exported functions
├── R/                  # R source code
│   ├── hello.R         # Hello function
│   ├── goodbye.R       # Goodbye function
│   ├── lifecycle.R     # Lifecycle definitions
│   └── myrpackage-package.R  # Package documentation
├── man/                # Documentation
├── tests/              # Tests
│   └── testthat/       # Unit tests
├── vignettes/          # Long-form documentation
│   └── intro.Rmd       # Introduction vignette
├── .Rbuildignore       # Build exclusions
├── .github/            # GitHub configuration
│   └── workflows/      # CI/CD workflows
├── inst/               # Installed files
│   └── CITATION        # Citation information
└── LICENSE             # MIT license
```

## Development

### Getting Started

1. Clone the repository
2. Open the project in RStudio or your preferred R environment
3. Install development dependencies with `devtools::install_dev_deps()`

### Running Tests

```r
# Run tests
devtools::test()

# Check test coverage
covr::package_coverage()
```

### Building Documentation

```r
# Generate documentation
devtools::document()

# Build vignettes
devtools::build_vignettes()

# Preview package website
pkgdown::build_site()
```

### Quality Checks

```r
# Run R CMD check
devtools::check()

# Check package with more stringent CRAN checks
rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"))

# Lint code
lintr::lint_package()

# Style code
styler::style_pkg()
```

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Citation

To cite this package, please use:

```r
citation("myrpackage")
```
