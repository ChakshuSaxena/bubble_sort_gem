# frozen_string_literal: true

require_relative "lib/bubble_sort/version"

Gem::Specification.new do |spec|
  spec.name = "bubble_sort"
  spec.version = BubbleSort::VERSION
  spec.authors = ["chakshu saxena"]
  spec.email = ["chakshusaxena.cse@gmail.com"]

  spec.summary = "A Ruby gem for bubble sort algorithm."
  spec.description = "This gem provides an implementation of the bubble sort algorithm in Ruby."
  spec.homepage = "https://github.com/ChakshuSaxena/bubble_sort_gem.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/your_username/bubble_sort"
  spec.metadata["changelog_uri"] = "https://github.com/your_username/bubble_sort/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)}) || f == 'bubble_sort-0.1.0.gem'
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end

