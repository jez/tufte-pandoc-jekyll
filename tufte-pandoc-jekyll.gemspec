# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "tufte-pandoc-jekyll"
  spec.version       = "0.13.0"
  spec.authors       = ["Jake Zimmerman"]
  spec.email         = ["zimmerman.jake@gmail.com"]

  spec.summary       = %q{A Jekyll theme based on jez/tufte-pandoc-css}
  spec.homepage      = "https://github.com/jez/tufte-pandoc-jekyll"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll-pandoc", "~> 2.0"

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
