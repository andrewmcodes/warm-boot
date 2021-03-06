lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "warm/boot/version"

Gem::Specification.new do |spec|
  spec.name          = "warm-boot"
  spec.license       = "MIT"
  spec.version       = Warm::Boot::VERSION
  spec.authors       = ["Andrew Mason"]
  spec.email         = ["masonam96@outlook.com"]

  spec.summary       = "Bootstrap a new rails app"
  spec.description   = "Rich cli experience to generate a new rails app"
  spec.homepage      = "https://github.com/andrewmcodes/warm-boot"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency "tty-box", "~> 0.3.0"
  # spec.add_dependency "tty-color", "~> 0.4"
  spec.add_dependency "tty-command", "~> 0.8.0"
  # spec.add_dependency "tty-config", "~> 0.3.0"
  # spec.add_dependency "tty-cursor", "~> 0.6"
  # spec.add_dependency "tty-editor", "~> 0.5.0"
  # spec.add_dependency "tty-file", "~> 0.7.0"
  # spec.add_dependency "tty-font", "~> 0.2.0"
  # spec.add_dependency "tty-markdown", "~> 0.5.0"
  # spec.add_dependency "tty-pager", "~> 0.12.0"
  # spec.add_dependency "tty-pie", "~> 0.1.0"
  # spec.add_dependency "tty-platform", "~> 0.2.0"
  # spec.add_dependency "tty-progressbar", "~> 0.16.0"
  spec.add_dependency "tty-prompt", "~> 0.18.0"
  # spec.add_dependency "tty-screen", "~> 0.6"
  spec.add_dependency "tty-spinner", "~> 0.9.0"
  # spec.add_dependency "tty-table", "~> 0.10.0"
  # spec.add_dependency "tty-tree", "~> 0.2.0"
  # spec.add_dependency "tty-which", "~> 0.4"
  # spec.add_dependency "pastel", "~> 0.7.2"
  spec.add_dependency "thor", "~> 0.20.0"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.61.0"
end
