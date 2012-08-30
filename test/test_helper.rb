require "minitest/autorun"

# Attempt to load purdytest to show colorized test results
begin
  require "purdytest"
rescue LoadError
end

Dir["./test/support/**/*.rb"].each { |dep| require dep }
