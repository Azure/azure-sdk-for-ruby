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
require "backports"

module Azure; end

require "azure/core"
require "azure/blob/blob_service"
require "azure/queue/queue_service"
require "azure/service_bus/service_bus_service"
require "azure/table/table_service"
require "azure/table/batch"
require "azure/table/query"

# add some aliases for convenience 
Azure::BlobService = Azure::Blob::BlobService
Azure::QueueService = Azure::Queue::QueueService
Azure::TableService = Azure::Table::TableService
Azure::ServiceBusService = Azure::ServiceBus::ServiceBusService