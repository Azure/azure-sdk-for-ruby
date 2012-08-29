require "date"

Gem::Specification.new do |s|
  s.name    = "azure"
  s.version = "0.1.0"

  s.authors     = ["Microsoft"]
  s.email       = "azure@microsoft.com"
  s.description = "Services and ruby SDKs to access the Windows Azure platform."
  s.summary     = "Implementation of several Windows Azure SDKs in ruby."
  s.homepage    = "http://azure.com"
  s.license     = 'Apache License, Version 2.0'
  s.files       = `git ls-files`.split("\n")

  s.required_ruby_version = '>= 1.8.7'

  s.add_runtime_dependency("nokogiri",   "~> 1.5")
  s.add_runtime_dependency("mime-types", "~> 1.0")
  s.add_runtime_dependency "libxml-ruby" 

  s.add_development_dependency("rake")
  s.add_development_dependency("minitest", "~> 3.0")
  s.add_development_dependency("yard")
  s.add_development_dependency("yard-tomdoc")
end
