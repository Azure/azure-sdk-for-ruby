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

module Azure
  module BaseManagement
    module Serialization
      module ClassMethods

        def locations_from_xml(locationXML)
          location_objs = []
          xml = locationXML.css('Locations Location')
          xml.each do |meta_node|
            loc = Location.new
            loc.name = xml_content(meta_node, 'Name')
            loc.available_services = meta_node.css('AvailableServices').children.to_ary.join(", ")
            location_objs << loc
          end
          location_objs
        end
      end

      extend ClassMethods

      def self.included( other )
        other.extend( ClassMethods )
      end
    end
  end
end
