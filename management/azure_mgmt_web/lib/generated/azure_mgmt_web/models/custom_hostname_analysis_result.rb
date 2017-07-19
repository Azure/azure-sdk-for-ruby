# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Custom domain analysis.
    #
    class CustomHostnameAnalysisResult < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] <code>true</code> if hostname is already verified;
      # otherwise, <code>false</code>.
      attr_accessor :is_hostname_already_verified

      # @return [DnsVerificationTestResult] DNS verification test result.
      # Possible values include: 'Passed', 'Failed', 'Skipped'
      attr_accessor :custom_domain_verification_test

      # @return [ErrorEntity] Raw failure information if DNS verification
      # fails.
      attr_accessor :custom_domain_verification_failure_info

      # @return [Boolean] <code>true</code> if there is a conflict on a scale
      # unit; otherwise, <code>false</code>.
      attr_accessor :has_conflict_on_scale_unit

      # @return [Boolean] <code>true</code> if htere is a conflict across
      # subscriptions; otherwise, <code>false</code>.
      attr_accessor :has_conflict_across_subscription

      # @return [String] Name of the conflicting app on scale unit if it's
      # within the same subscription.
      attr_accessor :conflicting_app_resource_id

      # @return [Array<String>] CName records controller can see for this
      # hostname.
      attr_accessor :c_name_records

      # @return [Array<String>] TXT records controller can see for this
      # hostname.
      attr_accessor :txt_records

      # @return [Array<String>] A records controller can see for this hostname.
      attr_accessor :a_records

      # @return [Array<String>] Alternate CName records controller can see for
      # this hostname.
      attr_accessor :alternate_cname_records

      # @return [Array<String>] Alternate TXT records controller can see for
      # this hostname.
      attr_accessor :alternate_txt_records


      #
      # Mapper for CustomHostnameAnalysisResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomHostnameAnalysisResult',
          type: {
            name: 'Composite',
            class_name: 'CustomHostnameAnalysisResult',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_hostname_already_verified: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isHostnameAlreadyVerified',
                type: {
                  name: 'Boolean'
                }
              },
              custom_domain_verification_test: {
                required: false,
                read_only: true,
                serialized_name: 'properties.customDomainVerificationTest',
                type: {
                  name: 'Enum',
                  module: 'DnsVerificationTestResult'
                }
              },
              custom_domain_verification_failure_info: {
                required: false,
                read_only: true,
                serialized_name: 'properties.customDomainVerificationFailureInfo',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorEntity'
                }
              },
              has_conflict_on_scale_unit: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hasConflictOnScaleUnit',
                type: {
                  name: 'Boolean'
                }
              },
              has_conflict_across_subscription: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hasConflictAcrossSubscription',
                type: {
                  name: 'Boolean'
                }
              },
              conflicting_app_resource_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.conflictingAppResourceId',
                type: {
                  name: 'String'
                }
              },
              c_name_records: {
                required: false,
                serialized_name: 'properties.cNameRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              txt_records: {
                required: false,
                serialized_name: 'properties.txtRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              a_records: {
                required: false,
                serialized_name: 'properties.aRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              alternate_cname_records: {
                required: false,
                serialized_name: 'properties.alternateCNameRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              alternate_txt_records: {
                required: false,
                serialized_name: 'properties.alternateTxtRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
