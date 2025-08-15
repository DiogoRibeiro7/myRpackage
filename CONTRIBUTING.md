# Contributing to myrpackage

Thank you for considering contributing to myrpackage! This document provides guidelines for contributing to the project.

## Code of Conduct

Please note that the myrpackage project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue on GitHub with the following information:

1. A clear title and description
2. Steps to reproduce the behavior
3. Expected behavior
4. Actual behavior
5. Environment details (R version, package version, OS)
6. If possible, a minimal reproducible example

### Suggesting Enhancements

For feature requests, please create an issue on GitHub with:

1. A clear title and description
2. Why this feature would be useful
3. Example code showing how the feature would be used
4. Any relevant references or context

### Pull Requests

1. Fork the repository
2. Create a new branch for your feature or bugfix
3. Make your changes
4. Add tests for your changes
5. Ensure all tests pass with `devtools::test()`
6. Update documentation with `devtools::document()`
7. Run R CMD check with `devtools::check()`
8. Submit a pull request

## Development Workflow

### Setting Up Development Environment

1. Clone the repository
2. Open the project in RStudio (or your preferred R IDE)
3. Install development dependencies:

```r
# Install development dependencies
devtools::install_dev_deps()

# Install the package in development mode
devtools::load_all()
```

### Running Tests

```r
# Run all tests
devtools::test()

# Run specific tests
testthat::test_file("tests/testthat/test-hello.R")

# Check test coverage
covr::package_coverage()
```

### Documentation

```r
# Generate documentation
devtools::document()

# Preview documentation
devtools::dev_help("hello")

# Build vignettes
devtools::build_vignettes()

# Build README
devtools::build_readme()
```

### Code Style

We follow the [tidyverse style guide](https://style.tidyverse.org/). Please ensure your code adheres to this style.

You can use the following tools to check and fix style issues:

```r
# Check code style
lintr::lint_package()

# Auto-format code
styler::style_pkg()
```

### Commit Messages

Please use clear and descriptive commit messages. We recommend following the [conventional commits](https://www.conventionalcommits.org/) specification:

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Changes that do not affect code behavior (formatting, etc.)
- `refactor`: Code changes that neither fix a bug nor add a feature
- `test`: Adding or fixing tests
- `chore`: Changes to the build process or auxiliary tools

### Pre-commit Checks

Before committing, please run:

```r
# Document the package
devtools::document()

# Run tests
devtools::test()

# Run R CMD check
devtools::check()
```

## Release Process

1. Update version number in DESCRIPTION
2. Update NEWS.md with changes
3. Run full checks:

```r
devtools::check()
rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"))
```

4. Build the package:

```r
devtools::build()
```

5. Tag the release in Git:

```r
usethis::use_git_tag("v0.1.0")
```

## Getting Help

If you need help or have questions, you can:

- Open an issue on GitHub
- Reach out to the package maintainer: Diogo Ribeiro (dfr@esmad.ipp.pt)

Thank you for contributing!
