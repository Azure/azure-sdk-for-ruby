#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
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
