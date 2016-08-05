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
require "test_helper"
require "azure/core/auth/signer"

describe Azure::Core::Auth::Signer do
  subject { Azure::Core::Auth::Signer.new "YWNjZXNzLWtleQ==" }

  it "decodes the base64 encoded access_key" do
    subject.access_key.must_equal "access-key"
  end

  describe "sign" do
    it "creates a signature for the body, as a base64 encoded string, which represents a HMAC hash using the access_key" do
      subject.sign("body").must_equal "iuUxVhs1E7PeSNx/90ViyJNO24160qYpoWeCcOsnMoM="
    end
  end
end
