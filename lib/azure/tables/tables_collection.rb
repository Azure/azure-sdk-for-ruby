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
require "azure/tables"

module Azure
  module Tables

    class TablesCollection < Array

      # Public: Create an Azure::Tables::TablesCollection instance.
      #
      # query - A Hash with the query options passed to the server to get the tables.
      #
      # Returns the instance.
      def initialize(query = {}, service = Azure::Tables)
        @query = query
        @service = service
      end

      # Public: Creates an Azure::Tables::TablesCollection from entries feed.
      #
      # entries - An array of xml entries.
      # query   - A Hash with the query options passed to the server to get the tables.
      #
      # Returns an instance of Azure::Tables::EntitiesCollection.
      def self.from_entries(entries, query = {}, service = Azure::Tables)
        collection = self.new(query, service)

        entries.each do |entry|
          collection << Table.from_entry(entry)
        end

        collection
      end

      # Public: Set continuation tokens for this collection
      def continuation_token(next_table_name)
        @next_table_name = next_table_name
      end

      # Public: Indicates if the collection is a paginated result.
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd135718
      #
      # Returs boolean.
      def paginated?
        @next_table_name ? true : false
      end

      # Public: Returns continuation results if exists.
      #
      # Returns an instance of Azure::Tables::TablesCollection
      def next
        return nil if !paginated?

        query = @query.merge({
          "NextTableName" => @next_table_name
        })

        @service.all(query)
      end

    end
  end
end
