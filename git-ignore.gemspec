# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitignore/version'

Gem::Specification.new do |spec|
  spec.name          = "git-ignore"
  spec.version       = GitIgnore::VERSION
  spec.authors       = ["ArchimedesPi"]
  spec.email         = ["archimedespi3141@gmail.com"]
  spec.summary       = %q{Lets you simply `git ignore` files.}
  spec.description   = %q{Ever wanted to simply `git ignore` a file? Here's your gem.}
  spec.homepage      = "http://archimedespi.github.io/git-ignore"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
