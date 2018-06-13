# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # The list storage insights operation response.
    #
    class StorageInsightListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<StorageInsight>] Gets or sets a list of storage insight
      # instances.
      attr_accessor :value

      # @return [String] The link (url) to the next page of results.
      attr_accessor :odata_next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<StorageInsight>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.odatanext_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [StorageInsightListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@odatanext_link).value! unless @next_method.nil?
        unless response.nil?
          @odatanext_link = response.body.odatanext_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for StorageInsightListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageInsightListResult',
          type: {
            name: 'Composite',
            class_name: 'StorageInsightListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StorageInsightElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageInsight'
                      }
                  }
                }
              },
              odata_next_link: {
                required: false,
                serialized_name: '@odata\\.nextLink',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
