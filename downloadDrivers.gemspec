# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'downloadDrivers/version'

Gem::Specification.new do |spec|
  spec.name          = "downloadDrivers"
  spec.version       = DownloadDrivers::VERSION
  spec.authors       = ["jose.cabrera"]
  spec.email         = ["joseignaciocabrerabustamante@gmail.com"]

  spec.summary       = "Download Selenium Firefox and Chrome Drivers for Ruby Support"
  spec.description   = "Currently to use cucumber with selenium is needed to download 
                        the needed drivers for the different browsers (Chrome, Firefox).
                        The purpose of this gem is download these drivers in ruby/bin, 
                        detecting the O.S. used that could be Windows or Linux"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
