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
    # Model object.
    #
    #
    class ValidateOperationsResponse

      include MsRestAzure

      # @return [ValidateOperationResponse]
      attr_accessor :validate_operation_response


      #
      # Mapper for ValidateOperationsResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateOperationsResponse',
          type: {
            name: 'Composite',
            class_name: 'ValidateOperationsResponse',
            model_properties: {
              validate_operation_response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validateOperationResponse',
                type: {
                  name: 'Composite',
                  class_name: 'ValidateOperationResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end
