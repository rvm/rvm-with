lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rvm/with/version'
require 'yaml'

Gem::Specification.new do |spec|
  spec.name        = 'rvm-with'
  spec.version     = ::RVM::With::VERSION
  spec.authors     = ['Michal Papis']
  spec.email       = ['mpapis@gmail.com']
  spec.homepage    = 'https://github.com/mpapis/rvm-with'
  spec.summary     =
  spec.description = 'RVM Interactive scripting wrapper'

  spec.add_dependency 'session', '~> 3.0'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'

  spec.files        = YAML.load_file('Manifest.yml')
  spec.test_files   = Dir.glob('spec/**/*.rb')
end
