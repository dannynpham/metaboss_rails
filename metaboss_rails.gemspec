# frozen_string_literal: true

require_relative "lib/metaboss_rails/version"

Gem::Specification.new do |spec|
  spec.name = "metaboss_rails"
  spec.version = MetabossRails::VERSION
  spec.authors = ["Danny Pham"]
  spec.email = ["dannynpham11@gmail.com"]

  spec.summary = "Rails gem for Metaboss"
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/dannynpham/metaboss_rails.git"
  spec.required_ruby_version = ">= 3.0.1p64"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dannynpham/metaboss_rails.git"
  spec.metadata["changelog_uri"] = "https://github.com/dannynpham/metaboss_rails.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 2.2.31"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
