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
require 'test_helper'

describe Azure::Core::Logger do
  subject { Azure::Core::Logger }
  let(:msg) { "message" }

  after {
    subject.initialize_external_logger(nil)
  }

  describe "Log without external logger" do
    before {
      subject.initialize_external_logger(nil)
    }

    it "#info" do
      out, err = capture_io { subject.info(msg) }
      assert_equal("\e[37m\e[1m" + msg + "\e[0m\e[0m\n", out)
    end

    it "#error_with_exit" do
      out, err = capture_io do
        error = assert_raises(RuntimeError) do
          subject.error_with_exit(msg)
        end
        assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m", error.message)
      end
      assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m\n", out)
    end

    it "#warn" do
      out, err = capture_io do
        warn = subject.warn(msg)
        assert_equal(msg, warn)
      end
      assert_equal("\e[33m" + msg + "\e[0m\n", out)
    end

    it "#error" do
      out, err = capture_io do
        error = subject.error(msg)
        assert_equal(msg, error)
      end
      assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m\n", out)
    end

    it "#exception_message" do
      out, err = capture_io do
        exception = assert_raises(RuntimeError) do
          subject.exception_message(msg)
        end
        assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m", exception.message)
      end
      assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m\n", out)
    end

    it "#success" do
      out, err = capture_io { subject.success(msg) }
      assert_equal("\e[32m" + msg + "\n\e[0m", out)
    end
  end

  describe "Log with external logger" do
    let(:fake_output) { StringIO.new }

    before {
      subject.initialize_external_logger(Logger.new(fake_output))
    }

    it "#info" do
      subject.info(msg)
      assert_match(/INFO -- : #{msg}\n/, fake_output.string)
    end

    it "#error_with_exit" do
      error = assert_raises(RuntimeError) do
        subject.error_with_exit(msg)
      end
      assert_match(/ERROR -- : #{msg}\n/, fake_output.string)
      assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m", error.message)
    end

    it "#warn" do
      warn = subject.warn(msg)
      assert_match(/WARN -- : #{msg}\n/, fake_output.string)
      assert_equal(msg, warn)
    end

    it "#error" do
      error = subject.error(msg)
      assert_match(/ERROR -- : #{msg}\n/, fake_output.string)
      assert_equal(msg, error)
    end

    it "#exception_message" do
      exception = assert_raises(RuntimeError) do
        subject.exception_message(msg)
      end
      assert_match(/WARN -- : #{msg}\n/, fake_output.string)
      assert_equal("\e[31m\e[1m" + msg + "\e[0m\e[0m", exception.message)
    end

    it "#success" do
      subject.success(msg)
      assert_match(/INFO -- : #{msg}\n/, fake_output.string)
    end
  end
end