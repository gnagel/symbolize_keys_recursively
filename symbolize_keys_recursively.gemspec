# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "symbolize_keys_recursively"

Gem::Specification.new do |gem|
  gem.name          = "symbolize_keys_recursively"
  gem.version       = '1.1'
  gem.authors       = ["Glenn Nagel"]
  gem.email         = ["glenn@mercury-wireless.com"]
  gem.homepage      = "https://github.com/gnagel/symbolize_keys_recursively"
  gem.summary       = %q{Recursively symbolize keys for Hashes and Arrays}
  gem.description   = %q{}
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib", "tasks"]
end
