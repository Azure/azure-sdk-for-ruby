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

require 'socket'
require 'azure/sql_database_management/sql_server'
require 'azure/sql_database_management/firewall_rule'
require 'azure/sql_database_management/serialization'
require 'azure/sql_database_management/errors'

module Azure
  module SqlDatabaseManagement
    # Service for managing SQL Azure servers and databases
    class SqlDatabaseManagementService < BaseManagement::BaseManagementService

      # Gets a list of database servers available under the current subscription.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715269.aspx
      #
      # @return Array<Azure::SqlDatabaseManagement::SqlServer>
      def list_servers
        response = client.sql_management_request(:get, servers_path).call
        Serialization.servers_from_xml(response)
      end

      # Create a new sql server in Microsoft Azure.
      #
      # @param login      [String] The administrator login name.
      # @param password   [String] The administrator login password.
      # @param location   [String] The location where the database server will be created.
      # @param version    [String|Integer] The version of the SQL server (default 12.0)
      #
      # @see https://msdn.microsoft.com/en-us/library/azure/dn505699.aspx
      #
      # @return [Azure::SqlDatabaseManagement::SqlServer]
      def create_server(login, password, location, version = 12.0)
        body = Serialization.server_to_xml(login, password, location, version)
        server_names = list_servers.map(&:name)
        created_server = nil

        begin
          response = client.sql_management_request(:post, servers_path, body: body, warn: true).call
          created_server = Serialization.server_name_from_xml(response, login, location, version)
        rescue RuntimeError => ex
          if ex.message =~ /Please retry the request/
            created_server = list_servers.reject{|server| server_names.include?(server.name)}.first
            # sometimes the service returns 500, but it doesn't really mean it.
            #
            # If the operation returns success, the operation is complete and the server is created immediately. If the
            # operation fails because of a user error, a server is not created. If there is a communication error or
            # internal server error, you should check the status of the operation using List Servers.
            #
            raise unless created_server
          else
            raise
          end
        end
        Azure::Loggerx.info "SQL database server #{created_server.name} is created." if created_server
        created_server
      end

      # Deletes the specified database server of given subscription id from Microsoft Azure.
      #
      # @param name     [String] SqlServer name.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715285.aspx
      #
      # @return  [void]
      def delete_server(name)
        ensure_server_exists!(name)
        client.sql_management_request(:delete, servers_path(name)).call
        Azure::Loggerx.info "Deleted database server #{name}."
      end

      # Sets the administrative password of a SQL Database server for a subscription. Will raise
      # Azure::SqlManagement::Error if server does not exist.
      #
      # @param name       [String] SqlServer name.
      # @param password   [String] SqlServer new password.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715272.aspx
      #
      # @return [void]
      def reset_password(name, password)
        ensure_server_exists!(name)
        body = Serialization.reset_password_to_xml(password)
        request_path = servers_path + "#{name}?op=ResetPassword"
        request = client.sql_management_request(:post, request_path, body)
        request.call
        Azure::Loggerx.info "Password for server #{name} changed successfully."
      end

      # Adds a new server-level firewall or updates an existing server-level firewall rule for a SQL Database server.
      #
      # @param server_name    [String] SqlServer server name.
      # @param rule_name      [String] Firewall rule name.
      # @param start_ip       [String] The lowest IP address in the range of the server-level firewall setting.
      #                                IP addresses equal to or greater than this can attempt to connect to the server.
      #                                The lowest possible IP address is 0.0.0.0. (default: first local public ip)
      # @param end_ip         [String] The highest IP address in the range of the server-level firewall setting. IP
      #                                addresses equal to or less than this can attempt to connect to the server. The
      #                                highest possible IP address is 255.255.255.255. (default: first local public ip)
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715280.aspx
      #
      # @return  [void]
      def set_sql_server_firewall_rule(server_name, rule_name, start_ip = public_ipv4, end_ip = public_ipv4)

        if [server_name, rule_name, start_ip, end_ip].any? { |arg| arg.nil? || arg.empty? || !arg.kind_of?(String) }
          raise ArgumentError.new('Missing or empty parameter server_name, rule_name, start_ip or end_ip')
        end

        fw_rule = FirewallRule.new do |rule|
          rule.name = rule_name
          rule.start_ip_address = start_ip
          rule.end_ip_address = end_ip
        end

        body = Serialization.firewall_rule_to_xml(fw_rule)
        method = if list_sql_server_firewall_rules(server_name).any? { |rule| rule.name == rule_name }
                   # the rule exists, so we need to update the rule
                   :put
                 else
                   # the rule doesn't exist, so we need to create the rule
                   :post
                 end
        request_path = servers_path "#{server_name}/firewallrules/#{method == :put ? rule_name : ''}"
        client.sql_management_request(method, request_path, body).call
        Azure::Loggerx.info "Modified server-level firewall rule #{rule_name}."
      end

      # Gets a list of server-level firewall rules set for SQL database servers. Will raise
      # Azure::SqlManagement::Error if server does not exist.
      #
      # @param server_name   [String] Database server name.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715278.aspx
      #
      # @return [Array<Azure::SqlDatabaseManagement::FirewallRule>]
      def list_sql_server_firewall_rules(server_name)
        ensure_server_exists!(server_name)
        response = client.sql_management_request(:get, servers_path("#{server_name}/firewallrules")).call
        Serialization.database_firewall_from_xml(response)
      end

      # Deletes a server-level firewall rule from a SQL Database server. Will raise
      # Azure::SqlManagement::Error if server does not exist.
      #
      # @param server_name  [String] SQL database server name.
      # @param rule_name    [String] SQL database server firewall rule name.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715277.aspx
      #
      # @return  [void]
      def delete_sql_server_firewall_rule(server_name, rule_name)
        ensure_server_exists!(server_name)
        if list_sql_server_firewall_rules(server_name).any? { |rule| rule.name == rule_name }
          request_path = servers_path "#{server_name}/firewallrules/#{rule_name}"
          client.sql_management_request(:delete, request_path).call
          Azure::Loggerx.info "Deleted server-level firewall rule #{rule_name}."
        else
          raise RuleDoesNotExist.new("Firewall rule named #{rule_name} does not exist for server named #{server_name}")
        end
      end

      private

      def servers_path(end_path = '')
        '/servers' + if end_path.start_with?('/')
                       end_path
                     elsif end_path.empty?
                       ''
                     else
                       "/#{end_path}"
                     end
      end

      # Ensures the a database server of a given name exists and raises Azure::SqlManagement::ServerDoesNotExist if it
      # does not exist
      #
      # @param server_name [String] The name of the Azure SQL Server
      # @return [void] Returns true if the server exists
      def ensure_server_exists!(server_name)
        raise ServerDoesNotExist.new("Server named #{server_name} does not exist.") unless server_exists?(server_name)
      end

      def server_exists?(server_name)
        ArgumentError.new('Servername cannot be empty or null.') if server_name.empty?
        list_servers.any? { |server| server.name == server_name }
      end

      def public_ipv4
        @public_ip ||= `curl -s whatismyip.akamai.com`
      end

    end
  end
end

Azure::SqlDatabaseManagementService = Azure::SqlDatabaseManagement::SqlDatabaseManagementService
