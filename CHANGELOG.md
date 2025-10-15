# splittable 0.0.9 (Oct 15, 2025)

* **Bug Fixes**
  * Fixed incorrect examples in README.md with mathematically accurate values
  * Corrected division examples to show proper cent adjustment behavior
  * Fixed normalize examples to demonstrate actual gem behavior

* **Error Handling Improvements**
  * Added proper validation for empty installments array in normalize method
  * Added validation for nil installments parameter
  * Improved error messages with clear ArgumentError exceptions
  * Enhanced error handling documentation with accurate examples

* **Test Coverage**
  * Added comprehensive tests for error handling scenarios
  * Added tests for empty and nil installments arrays
  * Maintained 100% test coverage (38 examples, 0 failures)
  * Improved test readability with better formatting

* **Code Quality**
  * Enhanced input validation in Splittable::Normalize class
  * Improved error messages for better developer experience
  * All existing functionality preserved and thoroughly tested

  *Marcelo Toledo*

## splittable 0.0.8 (Oct 14, 2025)

* **Documentation Improvements**
  * Complete README.md rewrite with better examples and real-world use cases
  * Added comprehensive problem explanation with before/after examples
  * Included e-commerce, invoice distribution, and subscription billing examples
  * Added error handling documentation and development setup instructions
  * Improved project structure documentation

* **Gemspec Enhancements**
  * Updated summary and description for better clarity and professionalism
  * Added explicit BigDecimal dependency declaration
  * Enhanced metadata with bug tracker URI
  * Fixed RubyGems metadata warnings

* **CI/CD Improvements**
  * Fixed publish workflow to use correct Ruby version (3.4.6)
  * Added proper dependency installation steps in release workflow
  * Resolved Ruby version compatibility issues

* **Code Quality**
  * Maintained 100% test coverage
  * All existing functionality preserved and tested

  *Marcelo Toledo*

## splittable 0.0.7 (Oct 14, 2025)

* Update repository
* Update Ruby and Gems versions

  *Marcelo Toledo*

## splittable 0.0.5 (Feb 02, 2021)

* Add precision parameter to division and normilize methods

  *Ítalo Matos*

## splittable 0.0.4 (Jan 29, 2021)

* Fix publish_release job

  *Marcelo Toledo*

## splittable 0.0.3 (Jan 29, 2021)

* Separate Division code
* Separate Normalize code
* Update actions to use ruby versions 2.5, 2.6 and 3.0
* Add a badge to README.md
* Updated some gems versions

  *Eduardo Fiorezi, Marcelo Toledo*

## splittable 0.0.2 (Jan 25, 2021)

* Update description for rubygems.org
* Add rubgems badge to README.md

  *Marcelo Toledo*

## splittable 0.0.1 (Jan 14, 2021)

* The first version of the gem was created, where it is possible to divide values
  ​​with many decimal places into equal plots or different plots and the difference
  is attributed to the first plot.

  *Arthur Brandão, Marcelo Toledo*
