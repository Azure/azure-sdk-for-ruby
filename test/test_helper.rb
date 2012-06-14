require "minitest/autorun"

begin
  require "purdytest"
rescue LoadError
  # Oh well, no colorized tests for you. You can always use minitest/pride if
  # you want :P
end

Dir["./test/support/**/*.rb"].each { |dep| require dep }
