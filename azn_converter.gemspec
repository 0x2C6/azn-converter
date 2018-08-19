
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "azn_converter/version"

Gem::Specification.new do |spec|
  spec.name          = "azn_converter"
  spec.version       = AZNConverter::VERSION
  spec.authors       = ["Farhad"]
  spec.email         = ["farhad9801@gmail.com"]

  spec.summary       = %q{Convert currency to AZN}
  spec.description   = %q{Convert any Integer to current or spesific currency}
  spec.homepage      = "https://github.com/0x2C6/azn-converter"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "humanize", "~> 1.8"
end
