# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # A response.
    #
    class Response

      include MsRestAzure

      # @return A list of all the headers attached to the response.
      attr_accessor :headers

      # @return [Integer] The status code of the response.
      attr_accessor :status_code

      # @return [ContentLink] Details on the location of the body content.
      attr_accessor :body_link


      #
      # Mapper for Response class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Response',
          type: {
            name: 'Composite',
            class_name: 'Response',
            model_properties: {
              headers: {
                required: false,
                serialized_name: 'headers',
                type: {
                  name: 'Object'
                }
              },
              status_code: {
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'Number'
                }
              },
              body_link: {
                required: false,
                serialized_name: 'bodyLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              }
            }
          }
        }
      end
    end
  end
end