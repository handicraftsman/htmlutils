# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'htmlutils/version'

Gem::Specification.new do |spec|
  spec.name          = "htmlutils"
  spec.version       = HtmlUtils::VERSION
  spec.authors       = ["Nickolay"]
  spec.email         = ["nickolay02@inbox.ru"]

  spec.summary       = %q{Some utils for writing shorter HTML (ERB) code}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/handicraftsman/htmlutils"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
