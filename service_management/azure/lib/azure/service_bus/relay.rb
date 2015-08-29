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

module Azure
  module ServiceBus
    class Relay < Resource
      # Public: Initialize the relay endpoint.
      #
      # ==== Attributes
      #
      # * +name+      - A String with the name of the relay endpoint.
      # * +options+   - The resource options Hash
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:relay_type+                                  - String. Determines the type of the relay endpoint. This is required.
      # * +:requires_client_authorization+               - Boolean. Determines whether or not clients need to authenticate when making calls.
      # * +:requires_transport_security+                 - Boolean. Determines whether or not the endpoint uses transport security. 
      #
      def initialize(name, options = {})
        normalized_options = {}
        normalized_options["RelayType"] = options[:relay_type].to_s
        normalized_options["RequiresClientAuthorization"] = options[:requires_client_authorization].to_s if options.has_key?(:requires_client_authorization)
        normalized_options["RequiresTransportSecurity"] = options[:requires_transport_security].to_s if options.has_key?(:requires_transport_security)
        super(name, normalized_options)
      end

      # RelayType: String
      #
      # Displays the relay type of the endpoint.
      def relay_type
        description['RelayType']
      end

      def relay_type=(val)
        _set 'RelayType', val
      end
      
      # RequiresClientAuthorization: Boolean
      #
      # Determines whether or not clients need to authenticate when making calls. 
      #
      # Default: true
      def requires_client_authorization
        to_bool description['RequiresClientAuthorization']
      end

      def requires_client_authorization=(val)
        _set 'RequiresClientAuthorization', val
      end

      # RequiresTransportSecurity: Boolean
      #
      # Determines whether or not the endpoint uses transport security. 
      #
      # Default: true
      def requires_transport_security
        to_bool description['RequiresTransportSecurity']
      end

      def requires_transport_security=(val)
        _set 'RequiresTransportSecurity', val
      end

      def ordered_props
        [
          'RelayType',
          'RequiresClientAuthorization',
          'RequiresTransportSecurity'
        ]
      end
    end
  end
end