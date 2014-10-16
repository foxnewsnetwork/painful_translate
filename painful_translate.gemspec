# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'painful_translate/version'

Gem::Specification.new do |spec|
  spec.name          = "painful_translate"
  spec.version       = PainfulTranslate::VERSION
  spec.authors       = ["Thomas Chen"]
  spec.email         = ["foxnewsnetwork@gmail.com"]
  spec.summary       = %q{A capybara (selenium automation) based wrapper over google translate... for those of us too damn cheap to sign up for paid google API}
  spec.description   = %q{A capybara (selenium automation) based wrapper over google translate... for those of us too damn cheap to sign up for paid google API}
  spec.homepage      = "http://github.com/foxnewsnetwork/painful_translate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "> 3"

  spec.add_dependency "capybara", "~> 2.4"
  spec.add_dependency 'selenium-webdriver', "~> 2.41.0"
  spec.add_dependency "activesupport", ">= 3"
end
