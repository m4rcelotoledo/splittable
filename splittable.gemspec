# frozen_string_literal: true

require_relative 'lib/splittable/version'

Gem::Specification.new do |spec|
  spec.name          = 'splittable'
  spec.version       = Splittable::VERSION
  spec.authors       = ['Arthur Brandão', 'Marcelo Toledo']
  spec.email         = ['arthur_aebc@hotmail.com', 'marcelotoledo5000@gmail.com']

  spec.license       = 'MIT'

  spec.summary       = 'Split monetary values into equal installments with precise cent rounding.'
  spec.description   = 'Splittable solves the common problem of dividing monetary values where ' \
                       'the sum of rounded installments doesn\'t equal the original total. ' \
                       'It ensures precise financial calculations by truncating values to the ' \
                       'specified precision and attributing any difference to the first installment. ' \
                       'Perfect for e-commerce payments, invoice distribution, and subscription billing.'
  spec.homepage      = 'https://github.com/m4rcelotoledo/splittable'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.4.6')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/m4rcelotoledo/splittable/tree/master'
  spec.metadata['changelog_uri'] = 'https://github.com/m4rcelotoledo/splittable/blob/master/CHANGELOG.md'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/m4rcelotoledo/splittable/issues'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Runtime dependencies
  spec.add_dependency 'bigdecimal', '~> 3.0'
end
