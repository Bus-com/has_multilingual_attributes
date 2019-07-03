# -*- encoding: utf-8 -*-
require File.expand_path('../lib/has_multilingual_attributes/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'has_multilingual_attributes'
  gem.summary       = "Access ActiveRecord model attributes regardless of the current locale."
  gem.description   = "If your model Item has both the description_fr and a description_en attributes, you can access your item's description in the current locale using 'item.description'."

  gem.homepage      = 'https://github.com/cawel/has_multilingual_attributes'
  gem.version       = HasMultilingualAttributes::VERSION
  gem.date          = '2013-09-13'
  gem.authors       = ["François Beausoleil", "Martin Carel", "Hugo Frappier"]
  gem.email         = 'francois@teksol.info'
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'

  gem.add_dependency "i18n", "~> 1.6.0"
  gem.add_development_dependency "activerecord", "> 5.0"
end
