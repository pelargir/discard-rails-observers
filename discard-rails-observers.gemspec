
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "discard/rails/observers/version"

Gem::Specification.new do |spec|
  spec.name          = "discard-rails-observers"
  spec.version       = Discard::Rails::Observers::VERSION
  spec.authors       = ["Matthew Bass"]
  spec.email         = ["pelargir@gmail.com"]

  spec.summary       = %q{Adds discard callbacks to Rails observers.}
  spec.homepage      = "https://github.com/pelargir/discard-rails-observers"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "discard", "~> 1.1"
  spec.add_development_dependency "rails-observers", "~> 0.1"
end
