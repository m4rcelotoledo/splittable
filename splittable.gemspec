# frozen_string_literal: true

require_relative 'lib/splittable/version'

Gem::Specification.new do |spec|
  spec.name          = 'splittable'
  spec.version       = Splittable::VERSION
  spec.authors       = ['Arthur Brandão', 'Marcelo Toledo']
  spec.email         = ['arthur_aebc@hotmail.com', 'marcelotoledo5000@gmail.com']

  spec.license       = 'MIT'

  spec.summary       = 'Calculate division and normalize parcels to use just cents.'
  spec.description   = 'This gem solves the problem of several decimal places in divisions
                        where the result must be presented in cents, that is converting the
                        division result to only two decimal places and the difference is
                        attributed to the first plot.'
  spec.homepage      = 'https://github.com/m4rcelotoledo/splittable'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.4.6')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/m4rcelotoledo/splittable'
  spec.metadata['changelog_uri'] = 'https://github.com/m4rcelotoledo/splittable/blob/master/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
