require 'bundler/gem_tasks'
require 'rake/testtask'
require 'fern/form/version'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task release: :build do
  `gem push pkg/fern-form-#{Fern::Form::VERSION}.gem`
end

task default: :test
