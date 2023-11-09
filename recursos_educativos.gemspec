# frozen_string_literal: true

require_relative "lib/recursos_educativos/version"

Gem::Specification.new do |spec|
  spec.name = "recursos_educativos"
  spec.version = RecursosEducativos::VERSION
  spec.authors = ["VictorCanovasDelPino"]
  spec.email = ["alu0101221953@ull.edu.es"]

  spec.summary = "Gema para la creación de recursos educativos"
  spec.homepage = "https://github.com/ULL-ESIT-LPP-2324/07-gema-victorcanovas-alu0101221953.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-2324/07-gema-victorcanovas-alu0101221953.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler" 
  spec.add_development_dependency "guard-test" 
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
