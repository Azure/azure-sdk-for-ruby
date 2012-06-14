require "ostruct"

module Stubs
  def double(messages={})
    OpenStruct.new(messages)
  end
end

class MiniTest::Mock
  def stub(name, value=nil)
    metaclass = class << self; self; end
    metaclass.send :define_method, name do |*args|
      value
    end
  end

  alias_method :expect_without_stub_support, :expect

  def expect(name, *args)
    metaclass = class << self; self; end
    metaclass.send :undef_method, name if respond_to?(name)
    expect_without_stub_support(name, *args)
  end
end

class MiniTest::Unit::TestCase
  include Stubs
end
