# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Base class for validate operation response.
    #
    class ValidateOperationResponse

      include MsRestAzure

      # @return [Array<ErrorDetail>] Gets the validation result
      attr_accessor :validation_results


      #
      # Mapper for ValidateOperationResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateOperationResponse',
          type: {
            name: 'Composite',
            class_name: 'ValidateOperationResponse',
            model_properties: {
              validation_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validationResults',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorDetailElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorDetail'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
