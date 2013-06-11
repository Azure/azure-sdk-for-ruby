#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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
require "azure/service_management/serialization"

module Azure
  module ServiceManagement
    class Location
      attr_accessor :name, :available_services

      # Public: Gets a list of regional data center locations from the server
      #
      # Returns an array of Azure::ServiceManagement::Location objects
      def self.list_locations
        request = ManagementHttpRequest.new(:get, "/locations")
        response = request.call
        Serialization.locations_from_xml(response)
      end
    end   
  end
end