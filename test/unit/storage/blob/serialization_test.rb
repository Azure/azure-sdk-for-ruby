#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require 'azure/storage/blob/serialization'

describe Azure::Storage::Blob::Serialization do
  subject { Azure::Storage::Blob::Serialization }

  need_tests_for "container_enumeration_results_from_xml"
  need_tests_for "container_from_xml"
  need_tests_for "container_from_headers"
  need_tests_for "container_properties_from_xml"
  need_tests_for "container_properties_from_headers"
  need_tests_for "visibility_from_headers"
  need_tests_for "blob_enumeration_results_from_xml"
  need_tests_for "blob_from_xml"
  need_tests_for "blob_from_headers"
  need_tests_for "blob_properties_from_xml"
  need_tests_for "blob_properties_from_headers"
  need_tests_for "block_list_to_xml"
  need_tests_for "block_list_from_xml"
  need_tests_for "add_block"
end