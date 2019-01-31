# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of a lab's announcement banner
    #
    class LabAnnouncementProperties

      include MsRestAzure

      # @return [String] The plain text title for the lab announcement
      attr_accessor :title

      # @return [String] The markdown text (if any) that this lab displays in
      # the UI. If left empty/null, nothing will be shown.
      attr_accessor :markdown

      # @return [EnableStatus] Is the lab announcement active/enabled at this
      # time?. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :enabled

      # @return [DateTime] The time at which the announcement expires (null for
      # never)
      attr_accessor :expiration_date

      # @return [Boolean] Has this announcement expired?
      attr_accessor :expired

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for LabAnnouncementProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LabAnnouncementProperties',
          type: {
            name: 'Composite',
            class_name: 'LabAnnouncementProperties',
            model_properties: {
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              markdown: {
                client_side_validation: true,
                required: false,
                serialized_name: 'markdown',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              expired: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expired',
                type: {
                  name: 'Boolean'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'uniqueIdentifier',
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
