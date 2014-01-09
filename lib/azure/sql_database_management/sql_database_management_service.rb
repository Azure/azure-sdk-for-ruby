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
require 'azure/sql_database_management/serialization'

module Azure
  module SqlDatabaseManagement
    class SqlDatabaseManagementService < BaseManagementService

      def initialize
        super()
      end

      # Public: Gets a list of database servers available under the
      # current subscription.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715269.aspx
      #
      # Returns an array of Azure::SqlDatabaseManagement::SqlDatabase objects
      def list_servers
        request_path = '/servers'
        request = SqlManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.databases_from_xml(response)
      end

      # Public: Create a new database server in Windows Azure.
      #
      # ==== Attributes
      #
      # * +login+          - String. The administrator login name.
      # * +password+       - String. The administrator login password.
      # * +:location+      - String. The location where the database server will be created.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715274.aspx
      #
      # Returns Azure::SqlDatabaseManagement::SqlDatabase object
      def create_server(login, password, location)
        body = Serialization.database_to_xml(login, password, location)
        request_path = '/servers'
        request = SqlManagementHttpRequest.new(:post, request_path, body)
        response = request.call
        sql_server = Serialization.server_name_from_xml(response, login, location)
        Loggerx.info "SQL database server #{sql_server.name} is created." if sql_server
        sql_server
      end

      # Public: Deletes the specified database server of given
      # subscription id from Windows Azure.
      #
      # ==== Attributes
      #
      # * +name+       - String. Database server name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715285.aspx
      #
      # Returns:  None
      def delete_server(name)
        if get_sql_server(name)
          request_path = "/servers/#{name}"
          request = SqlManagementHttpRequest.new(:delete, request_path)
          request.call
          Loggerx.info "Deleted database server #{name}."
        end
      end

      # Public: Sets the administrative password of a SQL Database server
      # for a subscription.
      #
      # ==== Attributes
      #
      # * +name+           - String. Database server name.
      # * +password+       - String. Database server new password.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715272.aspx
      #
      # Returns:  None
      def reset_password(name, password)
        if get_sql_server(name)
          body = Serialization.reset_password_to_xml(password)
          request_path = "/servers/#{name}?op=ResetPassword"
          request = SqlManagementHttpRequest.new(:post, request_path, body)
          request.call
          Loggerx.info "Password for server #{name} changed successfully."
        end
      end

      # Public: The Set Server Firewall Rule operation for the given
      # subscription adds a new server-level firewall or updates an
      # existing server-level firewall rule for a SQL Database server.
      #
      # ==== Attributes
      #
      # * +server_name+    - String. Database server name.
      # * +rule_name+      - String. Database server new password.
      #
      #  ==== Options
      #
      # Accepted key/value pairs are:
      # * +:start_ip_address+     - String. Start of the IP Range
      # * +:end_ip_address+       - String. End of the IP Range
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715280.aspx
      #
      # Returns:  None
      def set_sql_server_firewall_rule(server_name, rule_name, options = {})
        unless server_name.class == String && rule_name.class == String
          raise "Missing parameter server_name or rule_name."
        end
        if get_sql_server(server_name)
          if options[:start_ip_address] || options[:end_ip_address]
            body = Serialization.firewall_rule_to_xml(options)
            request_path = "/servers/#{server_name}/firewallrules/#{rule_name}"
            method = :put
          else
            request_path = "/servers/#{server_name}/firewallrules/#{rule_name}?op=AutoDetectClientIP"
            method = :post
          end
          request = SqlManagementHttpRequest.new(method, request_path, body)
          request.headers['x-ms-version'] = '1.0'
          request.uri = URI.parse(Azure.config.sql_database_management_endpoint + Azure.config.subscription_id + request_path)
          # Management certificate authentication Endpoint throws errors for this operation. Need to re-visit
          # this once the Azure API is working.

          request.call
          Loggerx.info "Added server-level firewall rule #{rule_name}."
        end
      end

      # Public: Gets a list of server-level firewall rules set for
      # SQL database server.
      #
      # ==== Attributes
      #
      # * +server_name+    - String. Database server name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715278.aspx
      #
      # Returns an array of firewall
      def list_sql_server_firewall_rules(server_name)
        if get_sql_server(server_name)
          request_path = "/servers/#{server_name}/firewallrules"
          request = SqlManagementHttpRequest.new(:get, request_path)
          response = request.call
          Serialization.database_firewall_from_xml(response)
        end
      end

      # Public: Deletes a server-level firewall rule from a SQL Database server.
      #
      # ==== Attributes
      #
      # * +name+            - String. SQL database server name.
      # * +rule_name+       - String. SQL database server firewall rule name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg715277.aspx
      #
      # Returns:  None
      def delete_sql_server_firewall_rule(server_name, rule_name)
        if !list_sql_server_firewall_rules(server_name).collect{|x| x[:rule]}.include?(rule_name)
          error = "The specified firewall rule #{rule_name} does not exist."
          raise error
        elsif get_sql_server(server_name)
          request_path = "/servers/#{server_name}/firewallrules/#{rule_name}"
          request = SqlManagementHttpRequest.new(:delete, request_path)
          request.call
          Loggerx.info "Deleted server-level firewall rule #{rule_name}."
        end
      end

      private

      def get_sql_server(server_name)
        if server_name.empty?
          error = Azure::Error::Error.new("DatabaseServerNotFound", 40645,  "Servername cannot be empty or null.")
        else
          sql_server = list_servers.collect(&:name).include?(server_name)
          if sql_server
            return sql_server
          else
            error = Azure::Error::Error.new("DatabaseServerNotFound", 40647,  "Subscription #{Azure.config.subscription_id} does not have server #{server_name}.")
          end
        end
        raise error if error
      end

    end
  end
end
