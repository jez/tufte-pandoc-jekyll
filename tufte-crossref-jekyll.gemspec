# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "tufte-crossref-jekyll"
  spec.version       = "0.12.0"
  spec.authors       = ["Pedro P. Palazzo"]
  spec.email         = ["pedro.palazzo@gmail.com"]

  spec.summary       = %q{A Jekyll theme based on jez/tufte-pandoc-jekyll}
  spec.homepage      = "https://github.com/p3palazzo/tufte-crossref-jekyll"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll-pandoc", "~> 2.0"

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
