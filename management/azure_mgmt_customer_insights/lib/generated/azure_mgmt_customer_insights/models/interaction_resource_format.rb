# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The interaction resource format.
    #
    class InteractionResourceFormat < ProxyResource

      include MsRestAzure

      # @return [Hash{String => Array<String>}] The attributes for the Type.
      attr_accessor :attributes

      # @return [Hash{String => String}] Localized descriptions for the
      # property.
      attr_accessor :description

      # @return [Hash{String => String}] Localized display names for the
      # property.
      attr_accessor :display_name

      # @return [Hash{String => Hash{String => String}}] Any custom localized
      # attributes for the Type.
      attr_accessor :localized_attributes

      # @return [String] Small Image associated with the Property or
      # EntityType.
      attr_accessor :small_image

      # @return [String] Medium Image associated with the Property or
      # EntityType.
      attr_accessor :medium_image

      # @return [String] Large Image associated with the Property or
      # EntityType.
      attr_accessor :large_image

      # @return [String] The api entity set name. This becomes the odata entity
      # set name for the entity Type being refered in this object.
      attr_accessor :api_entity_set_name

      # @return [EntityTypes] Type of entity. Possible values include: 'None',
      # 'Profile', 'Interaction', 'Relationship'
      attr_accessor :entity_type

      # @return [Array<PropertyDefinition>] The properties of the Profile.
      attr_accessor :fields

      # @return [Integer] The instance count.
      attr_accessor :instances_count

      # @return [DateTime] The last changed time for the type definition.
      attr_accessor :last_changed_utc

      # @return [ProvisioningStates] Provisioning state. Possible values
      # include: 'Provisioning', 'Succeeded', 'Expiring', 'Deleting',
      # 'HumanIntervention', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The schema org link. This helps ACI identify and
      # suggest semantic models.
      attr_accessor :schema_item_type_link

      # @return [String] The hub name.
      attr_accessor :tenant_id

      # @return [String] The timestamp property name. Represents the time when
      # the interaction or profile update happened.
      attr_accessor :timestamp_field_name

      # @return [String] The name of the entity.
      attr_accessor :type_name

      # @return [Array<String>] The id property names. Properties which
      # uniquely identify an interaction instance.
      attr_accessor :id_property_names

      # @return [Array<Participant>] Profiles that participated in the
      # interaction.
      attr_accessor :participant_profiles

      # @return [String] The primary participant property name for an
      # interaction ,This is used to logically represent the agent of the
      # interaction, Specify the participant name here from ParticipantName.
      attr_accessor :primary_participant_profile_property_name

      # @return [Array<DataSourcePrecedence>] This is specific to interactions
      # modeled as activities. Data sources are used to determine where data is
      # stored and also in precedence rules.
      attr_accessor :data_source_precedence_rules

      # @return [String] The data source name
      attr_accessor :interaction_resource_format_name

      # @return [DataSourceType] The data source type. Possible values include:
      # 'Connector', 'LinkInteraction', 'SystemDefault'
      attr_accessor :data_source_type

      # @return [Status] The data source status. Possible values include:
      # 'None', 'Active', 'Deleted'
      attr_accessor :status

      # @return [Integer] The data source ID.
      attr_accessor :interaction_resource_format_id

      # @return [String] The data source reference id.
      attr_accessor :data_source_reference_id

      # @return [Boolean] An interaction can be tagged as an activity only
      # during create. This enables the interaction to be editable and can
      # enable merging of properties from multiple data sources based on
      # precedence, which is defined at a link level.
      attr_accessor :is_activity


      #
      # Mapper for InteractionResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InteractionResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'InteractionResourceFormat',
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
                read_only: true,
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
              },
              attributes: {
                required: false,
                serialized_name: 'properties.attributes',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ArrayElementType',
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
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
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
              localized_attributes: {
                required: false,
                serialized_name: 'properties.localizedAttributes',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'HashElementType',
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
                  }
                }
              },
              small_image: {
                required: false,
                serialized_name: 'properties.smallImage',
                type: {
                  name: 'String'
                }
              },
              medium_image: {
                required: false,
                serialized_name: 'properties.mediumImage',
                type: {
                  name: 'String'
                }
              },
              large_image: {
                required: false,
                serialized_name: 'properties.largeImage',
                type: {
                  name: 'String'
                }
              },
              api_entity_set_name: {
                required: false,
                serialized_name: 'properties.apiEntitySetName',
                type: {
                  name: 'String'
                }
              },
              entity_type: {
                required: false,
                serialized_name: 'properties.entityType',
                type: {
                  name: 'Enum',
                  module: 'EntityTypes'
                }
              },
              fields: {
                required: false,
                serialized_name: 'properties.fields',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PropertyDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PropertyDefinition'
                      }
                  }
                }
              },
              instances_count: {
                required: false,
                serialized_name: 'properties.instancesCount',
                type: {
                  name: 'Number'
                }
              },
              last_changed_utc: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastChangedUtc',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              schema_item_type_link: {
                required: false,
                serialized_name: 'properties.schemaItemTypeLink',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              timestamp_field_name: {
                required: false,
                serialized_name: 'properties.timestampFieldName',
                type: {
                  name: 'String'
                }
              },
              type_name: {
                required: false,
                serialized_name: 'properties.typeName',
                type: {
                  name: 'String'
                }
              },
              id_property_names: {
                required: false,
                serialized_name: 'properties.idPropertyNames',
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
              participant_profiles: {
                required: false,
                serialized_name: 'properties.participantProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ParticipantElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Participant'
                      }
                  }
                }
              },
              primary_participant_profile_property_name: {
                required: false,
                serialized_name: 'properties.primaryParticipantProfilePropertyName',
                type: {
                  name: 'String'
                }
              },
              data_source_precedence_rules: {
                required: false,
                read_only: true,
                serialized_name: 'properties.dataSourcePrecedenceRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DataSourcePrecedenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataSourcePrecedence'
                      }
                  }
                }
              },
              interaction_resource_format_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultDataSource.name',
                type: {
                  name: 'String'
                }
              },
              data_source_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultDataSource.dataSourceType',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultDataSource.status',
                type: {
                  name: 'String'
                }
              },
              interaction_resource_format_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultDataSource.id',
                type: {
                  name: 'Number'
                }
              },
              data_source_reference_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultDataSource.dataSourceReferenceId',
                type: {
                  name: 'String'
                }
              },
              is_activity: {
                required: false,
                serialized_name: 'properties.isActivity',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
