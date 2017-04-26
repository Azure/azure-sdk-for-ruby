# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of the disk to attach.
    #
    class AttachDiskProperties

      include MsRestAzure

      # @return [String] The resource ID of the Lab virtual machine to which
      # the disk is attached.
      attr_accessor :leased_by_lab_vm_id


      #
      # Mapper for AttachDiskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AttachDiskProperties',
          type: {
            name: 'Composite',
            class_name: 'AttachDiskProperties',
            model_properties: {
              leased_by_lab_vm_id: {
                required: false,
                serialized_name: 'leasedByLabVmId',
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
