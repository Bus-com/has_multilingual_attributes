# -*- encoding: utf-8 -*-
require File.expand_path('../lib/has_multilingual_attributes/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'has_multilingual_attributes'
  s.version     = HasMultilingualAttributes::VERSION
  s.date        = '2013-09-13'
  s.summary     = "Access ActiveRecord model attributes regardless of the current locale."
  s.description = "If your model Item has both the description_fr and a description_en attributes, you can access your item's description in the current locale using 'item.description'."
  s.authors     = ["Martin Carel", "Hugo Frappier"]
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/cawel/has_multilingual_attributes'
  s.license     = 'MIT'
end
