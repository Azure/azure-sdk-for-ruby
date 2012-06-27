require "date"

Gem::Specification.new do |s|
  s.name    = "azure"
  s.version = "0.1.1"
  s.date    = Date.today.iso8601

  s.authors     = ["AppFog","Microsoft"]
  s.email       = "azure@microsoft.com"
  s.description = "Services and ruby SDKs to access the Windows Azure platform."
  s.summary     = "Implementation of several Windows Azure SDKs in ruby."
  s.homepage    = "http://azure.com"
  s.files       = `git ls-files | grep -v "^examples/"`.split("\n")

  s.add_runtime_dependency("uuid",       "~> 2.0")
  s.add_runtime_dependency("ratom",      "~> 0.6")
  s.add_runtime_dependency("nokogiri",   "~> 1.5")
  s.add_runtime_dependency("mime-types", "~> 1.0")

  s.add_development_dependency("rake")
  s.add_development_dependency("minitest", "~> 3.0")
  s.add_development_dependency("em-minitest-spec")
end
