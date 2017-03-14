Gem::Specification.new do |spec|
  spec.name          = 'lita-motionai'
  spec.date          = '2017-03-13'
  spec.version       = '0.0.1'
  spec.authors       = ['John Wang']
  spec.email         = ['johncwang@gmail.com']
  spec.description   = 'A Lita handler for Motion AI'
  spec.summary       = 'A Lita handler that uses Motion AI NLP engine'
  spec.homepage      = 'https://github.com/grokify/lita-motion-ai'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  # spec.files         = `git ls-files`.split($RS)
  spec.files         = Dir['lib/**/**/*']
  spec.files        += Dir['[A-Z]*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4.0'
  spec.add_runtime_dependency 'motion-ai', '~> 0'
  spec.add_runtime_dependency 'multi_json', '~> 1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'coveralls', '~> 0'
  spec.add_development_dependency 'pretty_table', '~> 0'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'uuid', '~> 2'
end