# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'BCA/version'

class Gem::Specification
  def check_allowed_push_host
    # Prevent pushing this gem to RubyGems.org.
    # To allow pushes either set the 'allowed_push_host'
    # to allow pushing to a single host or delete this section
    # to allow pushing to any host.
    if respond_to?(:metadata)
      metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
    else
      raise 'RubyGems 2.0 or newer is required to protect against ' \
        'public gem pushes.'
    end
  end
end

Gem::Specification.new do |spec|
  spec.name          = 'BCA'
  spec.version       = BCA::VERSION
  spec.authors       = ['Sirius Dely']
  spec.email         = ['siriusdely@icloud.com']

  spec.summary       = 'Write a short summary, because Rubygems requires one.'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/siriusdely/BCA'
  spec.license       = 'MIT'

  spec.check_allowed_push_host

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'curb', '~> 0.9'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'nokogiri', '~> 1.6.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
end
