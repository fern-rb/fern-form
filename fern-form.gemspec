lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fern/form/version'

Gem::Specification.new do |s|
  s.name        = 'fern-form'
  s.version     = Fern::Form::VERSION
  s.date        = '2017-03-11'
  s.authors     = ['Kyle Kestell', 'Ryan Andersen']
  s.email       = ['kyle@kestell.org', 'itsryanandersen@gmail.com']
  s.summary     = 'Fern Form'
  s.description = 'Form support for Fern.'
  s.homepage    = 'https://github.com/fern-rb/fern-form'
  s.license     = 'MIT'
  s.files       = Dir['lib/**/*']

  s.required_ruby_version = '>= 2.3.0'

  s.add_development_dependency 'minitest', '~> 5.0'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'rubocop', '~> 0.74.0'
  s.add_development_dependency 'fern-api', '~> 0'

  s.add_runtime_dependency 'actionpack', '>= 5.0'
  s.add_runtime_dependency 'activesupport', '>= 5.0'
  s.add_runtime_dependency 'fern-api', '~> 0'
end
