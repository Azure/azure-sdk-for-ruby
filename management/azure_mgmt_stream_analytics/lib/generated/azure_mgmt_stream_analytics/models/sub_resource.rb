# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Class which represents any Azure subresource.
    #
    class SubResource

      include MsRestAzure
      include MsRest::JSONable

      # @return [String] the id of the subresource.
      attr_accessor :id

      # @return [String] the name of the subresource.
      attr_accessor :name

      # @return [String] the type of the subresource.
      attr_accessor :type

      def self.mapper
        {
          required: false,
          serialized_name: 'SubResource',
          type: {
            name: 'Composite',
            class_name: 'SubResource',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                read_only: true,
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
