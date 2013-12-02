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
require 'azure/virtual_network_management/serialization'

module Azure
  module VirtualNetworkManagement
    # VirtualNetworkManagementService
    class VirtualNetworkManagementService < BaseManagementService
      def initialize
        super()
      end

      # Public: Gets a list of virtual network services available under the
      # current subscription.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157185.aspx
      #
      # Returns an array of
      # Azure::VirtualNetworkServiceManagement::VirtualNetwork objects
      def list_virtual_networks
        request_path = '/services/networking/virtualnetwork'
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.virtual_network_from_xml(response)
      end

      def set_network_configuration(*args)
        if args.length == 1
          set_virtual_network_using_xml(args[0])
        elsif args.length == 4 || args.length == 3
          args[3] ||= { subnet: [], dns: [] }
          set_virtual_network(args[0], args[1], args[2], args[3])
        else
          raise 'Wrong number of arguments'
        end
      end

      private

      # Private: Configures virtual network.
      #
      # ==== Attributes
      #
      # * +vnet+              - String. The name of the virtual network.
      # * +affinity_group+    - String. The name of the affinity group.
      # * +address_space+     - Array. Contains a collection of Classless
      #   Inter-Domain Routing (CIDR) identifiers that specify the address
      #   space that you will use for your local network site
      # * +options+           - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:subnets+            - Array. A hash of the name/value pairs.
      #   Contains the name, IPv4 address and Cidr of the DNS server.
      # (optional)
      # * +dns_servers+         - Array. A hash of the name/value pairs.
      #   Contains the name and IPv4 address of the DNS server. (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157181.aspx
      #
      # Returns None
      def set_virtual_network(vnet,
                              affinity_group,
                              address_space,
                              options = {
                                subnet: [],
                                dns: []
                              })
        request_path = '/services/networking/media'
        body = Serialization.virtual_network_to_xml(vnet,
                                                    affinity_group,
                                                    address_space,
                                                    options)
        request = ManagementHttpRequest.new(:put, request_path, body)
        request.headers['Content-Type'] = 'text/plain'
        Loggerx.info "Creating virtual network #{vnet}."
        request.call
      end

      def set_virtual_network_using_xml(file)
        request_path = '/services/networking/media'
        if file !~ /(xml)$/
          raise 'File expects a .xml extension.'
        elsif !File.exist?(file)
          raise "Could not read from file '#{file}'."
        else
          body = File.read(file)
        end
        request = ManagementHttpRequest.new(:put, request_path, body)
        request.headers['Content-Type'] = 'text/plain'
        Loggerx.info 'Creating virtual network.'
        request.call
      end
    end
  end
end
