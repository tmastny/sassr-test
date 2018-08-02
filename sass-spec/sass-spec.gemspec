# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sass_spec/version'

Gem::Specification.new do |spec|
  spec.name          = "sass-spec"
  spec.version       = SassSpec::VERSION
  spec.authors       = [ "Michael Mifsud <xzyfer@gmail.com>",
                         "Marcel Greter <marcel.greter@ocbnet.ch>",
                         "Marcin Cieślak <saper@saper.info>",
                         "Hampton Catlin <hcatlin@gmail.com>",
                         "Aaron Leung <aaron.leung@moovweb.com>"]
  spec.email         = ["xzyfer@gmail.com"]
  spec.summary       = %q{Test suite for Sass Implementations.}
  spec.description   = %q{Test suite for testing compatibility with the Sass Stylesheet language.}
  spec.homepage      = "https://github.com/sass/sass-spec"
  spec.license       = "MIT"

  spec.bindir = "."
  spec.executables << "sass-spec.rb"

  spec.files         = `git ls-files -z`.split("\x0").select {|f| f !~ /Gemfile/}
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5.8"
  spec.add_dependency "command_line_reporter", '~> 3.0'
  spec.add_dependency "ruby-terminfo", '~> 0.1.1'
  spec.add_dependency "diffy", '~> 3.1'

  spec.add_development_dependency "sass", "~> 3.5"
  spec.add_development_dependency "bundler", "~> 1.7"
end
