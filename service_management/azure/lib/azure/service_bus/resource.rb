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
require 'azure/service_bus/resource'
require 'azure/service_bus/interval'

module Azure
  module ServiceBus
    class Resource
      # Public: Initialize the resource (either queue, topic, rule or subscription).
      #
      # name        - A String with the name of the resource.
      # description - The resource description Hash
      def initialize(name, description = {})
        @name = name
        @description = description
        yield self if block_given?
      end

      # Get the Resource's ID.
      #
      # Returns a URI.
      attr_accessor :id
      alias_method :url, :id

      # Get the Resource's name.
      #
      # Returns a String.
      attr_accessor :name
      alias_method :title, :name

      # Public: Get the published time
      #
      # Returns a Time
      attr_accessor :published

      # Public: Get the updated time
      #
      # Returns a Time
      attr_accessor :updated

      # Public: Get the author name
      #
      # Returns a String
      attr_accessor :author_name

      # Public: Resource description
      #
      # Returns a Hash
      attr_accessor :description

      def get_props
        desc = description.dup
        props = []
        ordered_props.each { |prop_name|
          if desc[prop_name]
            props.push [prop_name, desc[prop_name]]
            desc.delete prop_name
          end
        }
        desc.each { |k,v|
          props.push [k, v]
        }
        props
      end

      private

      def to_interval(s)
        s ? Interval.parse(s) : s
      end

      def to_time(s)
        s ? Time.parse(s) : s
      end

      def to_i(s)
        s ? s.to_i : s
      end

      def to_bool(s)
        s ? (s || "").downcase == 'true' : s
      end

      def _set(name, value)
        if value
          description[name] = value.to_s
        else
          description.delete name
        end
      end
      
      def ordered_props
        []
      end
    end
  end
end