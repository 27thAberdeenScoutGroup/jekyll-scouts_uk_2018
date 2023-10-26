# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-scouts_uk_2018'
  spec.version       = '1.6.0'
  spec.authors       = ['Robert Gauld']
  spec.email         = ['robert@robertgauld.uk']

  spec.summary       = 'A Jekyll theme of the UK Scouts 2018 brand.'
  spec.homepage      = 'https://github.com/27thAberdeenScoutGroup/jekyll-scouts_uk_2018'
  spec.license       = 'BSD-3-Clause'

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|lib|LICENSE|README|_config\.yml)!i) }
  spec.require_paths = ['lib']
  spec.executables   = []

  spec.add_runtime_dependency 'jekyll', '~> 4.2'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.8'
end
