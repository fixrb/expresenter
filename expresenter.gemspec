# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                   = "expresenter"
  spec.version                = File.read("VERSION.semver").chomp
  spec.author                 = "Cyril Kato"
  spec.email                  = "contact@cyril.email"
  spec.summary                = "Expectation result presenter."
  spec.description            = spec.summary
  spec.homepage               = "https://github.com/fixrb/expresenter"
  spec.license                = "MIT"
  spec.files                  = Dir["LICENSE.md", "README.md", "lib/**/*"]
  spec.required_ruby_version  = ">= 3.1.0"

  spec.metadata["rubygems_mfa_required"] = "true"
end
