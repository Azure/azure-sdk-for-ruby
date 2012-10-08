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
require "test_helper"
require 'azure/storage/blob/blob_service'
require 'azure/storage/blob/serialization'

describe Azure::Storage::Blob::BlobService do
  subject { Azure::Storage::Blob::BlobService.new }
  
  need_tests_for "list_containers"
  need_tests_for "create_container"
  need_tests_for "delete_container"
  need_tests_for "get_container_properties"
  need_tests_for "get_container_metadata"
  need_tests_for "get_container_acl"
  need_tests_for "set_container_acl"
  need_tests_for "set_container_metadata"
  need_tests_for "list_blobs"
  need_tests_for "create_page_blob"
  need_tests_for "create_blob_pages"
  need_tests_for "clear_blob_pages"
  need_tests_for "create_block_blob"
  need_tests_for "create_blob_block"
  need_tests_for "commit_blob_blocks"
  need_tests_for "list_blob_blocks"
  need_tests_for "get_blob_properties"
  need_tests_for "get_blob_metadata"
  need_tests_for "list_page_blob_ranges"
  need_tests_for "set_blob_properties"
  need_tests_for "set_blob_metadata"
  need_tests_for "get_blob"
  need_tests_for "delete_blob"
  need_tests_for "create_blob_snapshot"
  need_tests_for "copy_blob"
  need_tests_for "acquire_lease"
  need_tests_for "renew_lease"
  need_tests_for "release_lease"
  need_tests_for "break_lease"
  need_tests_for "containers_uri"
  need_tests_for "container_uri"
  need_tests_for "blob_uri"
end