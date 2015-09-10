# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'headroom/version'

Gem::Specification.new do |spec|
  spec.name          = "headroom"
  spec.version       = Headroom::VERSION
  spec.authors       = ["Perish"]
  spec.email         = ["golovesx@gmail.com"]

  spec.summary       = %q{headroom.js and animate.css packaged for the Rails assest pipeline}
  spec.description   = %q{headroom.js is a lightweight, high-performance JS widget (with no dependencies!) that allows you to react to the user's scroll. animate.css is a bunch of cool, fun, and cross-browser animations for you to use in your projects.  }
  spec.homepage      = "https://github.com/Perish/headroom.git"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
