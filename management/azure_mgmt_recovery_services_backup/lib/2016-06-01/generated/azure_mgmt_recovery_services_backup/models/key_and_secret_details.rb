# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # BEK stands for Bitlocker Encryption Key.
    # KEK stands for Key Encryption Key. KEK is the encryption key used to
    # protect the Secret for the BEK
    # If the VM is encrypted, then the service stores the following details :
    # 1. Secret(BEK) - Url + Backup Data + vaultID.
    # 2. Key(KEK) - Url + Backup Data + vaultID.
    # It is possible for the BEK and KEK to have different vaultIDs.
    #
    class KeyAndSecretDetails

      include MsRestAzure

      # @return [KEKDetails] The Key Encryption Key (KEK) is the encryption key
      # for the Bitlocker Encryption Key (BEK).
      attr_accessor :kek_details

      # @return [BEKDetails] BEK is Bitlocker Encryption Key.
      attr_accessor :bek_details


      #
      # Mapper for KeyAndSecretDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyAndSecretDetails',
          type: {
            name: 'Composite',
            class_name: 'KeyAndSecretDetails',
            model_properties: {
              kek_details: {
                required: false,
                serialized_name: 'kekDetails',
                type: {
                  name: 'Composite',
                  class_name: 'KEKDetails'
                }
              },
              bek_details: {
                required: false,
                serialized_name: 'bekDetails',
                type: {
                  name: 'Composite',
                  class_name: 'BEKDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
