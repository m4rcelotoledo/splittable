# Splittable

[![Gem Version](https://badge.fury.io/rb/splittable.svg)](https://badge.fury.io/rb/splittable)
[![Ruby](https://github.com/m4rcelotoledo/splittable/workflows/Ruby/badge.svg?branch=master)](https://github.com/m4rcelotoledo/splittable/actions?query=workflow%3ARuby)
[![Ruby Version](https://img.shields.io/badge/ruby-%3E%3D%203.4.6-red.svg)](https://www.ruby-lang.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

## 🎯 Problem Solved

When dividing monetary values, you often get results with many decimal places that need to be rounded to cents (2 decimal places). This creates a common problem: **the sum of rounded installments doesn't equal the original total**.

**Example of the problem:**
```ruby
# Dividing $100.00 into 3 equal parts
100.00 / 3 = 33.333333...

# If we round each installment to 2 decimal places:
[33.33, 33.33, 33.33].sum = 99.99  # ❌ Missing $0.01!
```

**Splittable solves this by:**
- Truncating values to the specified precision
- Adding the difference to the first installment
- Ensuring the sum always equals the original value

## 🚀 Installation

Add this line to your application's Gemfile:

```ruby
gem 'splittable'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install splittable
```

## 📖 Usage

### Division Method

Split a total value into equal installments:

```ruby
# Basic usage - split $0.12 into 3 equal parts
Splittable.division(value: 0.12, quantity: 3)
# => [0.04, 0.04, 0.04]  # Sum: 0.12

# Custom precision - 3 decimal places
Splittable.division(value: 10, quantity: 3, precision: 3)
# => [3.334, 3.333, 3.333]  # Sum: 10.000
```

### Normalize Method

Normalize existing installments to match a total value:

```ruby
# Normalize installments to sum exactly $100.00
Splittable.normalize(value: 100.00, installments: [33.33, 33.33, 33.33])
# => [33.34, 33.33, 33.33]  # Sum: 100.00

# With custom precision
Splittable.normalize(value: 100, installments: [33.333, 33.333, 33.333], precision: 3)
# => [33.334, 33.333, 33.333]  # Sum: 100.000
```

## 💡 Real-World Examples

### E-commerce Payment Splitting
```ruby
# Split a $99.99 order into 3 monthly payments
payments = Splittable.division(value: 99.99, quantity: 3)
# => [33.33, 33.33, 33.33]
# Total: $99.99 ✅
```

### Invoice Distribution
```ruby
# Distribute a $1,000.00 invoice across departments
departments = ['Sales', 'Marketing', 'Support']
amounts = [400.00, 350.00, 250.00]

normalized = Splittable.normalize(value: 1000.01, installments: amounts)
# => [400.01, 350.00, 250.00]
# Total: $1,000.00 ✅
```

### Subscription Billing
```ruby
# Annual subscription split into monthly payments
monthly_payment = Splittable.division(value: 120.01, quantity: 12)
# => [10.01, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00]
# Total: $120.00 ✅
```

## ⚠️ Error Handling

```ruby
# Invalid quantity (must be positive)
Splittable.division(value: 100, quantity: 0)
# => ArgumentError: quantity should be positive

# Empty installments array
Splittable.normalize(value: 100, installments: [])
# => ArgumentError: installments should be a non-empty array

# Nil installments
Splittable.normalize(value: 100, installments: nil)
# => ArgumentError: installments should be a non-empty array
```

## 🛠️ Development

### Setup
```bash
git clone https://github.com/m4rcelotoledo/splittable.git
cd splittable
bundle install
```

### Running Tests
```bash
# Run all tests
bundle exec rspec

# Run with coverage
bundle exec rspec --format documentation

# Run specific test file
bundle exec rspec spec/splittable_spec.rb
```

### Code Quality
```bash
# Run RuboCop
bundle exec rubocop

# Auto-fix RuboCop issues
bundle exec rubocop -a
```

### Interactive Console
```bash
bundle exec bin/console
```

### Project Structure
```
lib/
├── splittable.rb           # Main module with public methods
├── splittable/
│   ├── version.rb         # Gem version
│   ├── division.rb        # Division logic
│   └── normalize.rb       # Normalization logic
spec/
├── spec_helper.rb         # Test configuration
└── splittable_spec.rb     # Test cases
```

## 📦 Release Process

### Automatic Release
1. Update version in `lib/splittable/version.rb`
2. Update `CHANGELOG.md` with relevant changes
3. Merge to `master` branch
4. GitHub Actions will automatically publish to RubyGems

### Manual Release
```bash
# Update version and changelog first
bundle exec rake release
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/m4rcelotoledo/splittable/blob/master/CONTRIBUTING.md.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📚 Code of Conduct

This project follows the [Contributor Covenant](https://github.com/m4rcelotoledo/splittable/blob/master/CODE_OF_CONDUCT.md) code of conduct.
