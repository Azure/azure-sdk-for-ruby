#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
def create_block_blob(options={})
  metadata  = options.fetch(:metadata, {})
  filename  = options.fetch(:filename, Fixtures["32px-fulls-black.jpg"].to_path)
  name      = options.fetch(:name, "myblob")
  container = options.fetch(:container, @container)

  Azure::Blobs.create_block_blob(container, name, filename, metadata)
end

def create_page_blob(container)
  Azure::Blobs.create_page_blob(container, "myblob", {:size => 8192})
end
