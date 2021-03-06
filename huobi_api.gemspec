
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "huobi_api/version"

Gem::Specification.new do |spec|
  spec.name          = "huobi_api"
  spec.version       = HuobiApi::VERSION
  spec.authors       = ["Timothy Sherratt"]
  spec.email         = ["tim@wrkbr.com"]
  spec.license       = "MIT"

  spec.summary       = %q{Ruby wrapper for Huobi Pro API}
  spec.description   = %q{A ruby wrapper for the Huobi Pro API}
  spec.homepage      = "https://github.com/tpsherratt/huobi_api"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack", ">= 1.5"
  spec.add_dependency "openssl", ">= 2.0"

  spec.add_development_dependency "bundler", ">= 1.15"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec", ">= 3.0"
end
