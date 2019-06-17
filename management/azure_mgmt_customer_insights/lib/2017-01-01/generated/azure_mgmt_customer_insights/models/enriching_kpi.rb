# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The enriching KPI definition.
    #
    class EnrichingKpi < KpiDefinition

      include MsRestAzure


      #
      # Mapper for EnrichingKpi class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EnrichingKpi',
          type: {
            name: 'Composite',
            class_name: 'EnrichingKpi',
            model_properties: {
              entity_type: {
                required: true,
                serialized_name: 'entityType',
                type: {
                  name: 'Enum',
                  module: 'EntityTypes'
                }
              },
              entity_type_name: {
                required: true,
                serialized_name: 'entityTypeName',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              kpi_name: {
                required: false,
                read_only: true,
                serialized_name: 'kpiName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
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
              description: {
                required: false,
                serialized_name: 'description',
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
              calculation_window: {
                required: true,
                serialized_name: 'calculationWindow',
                type: {
                  name: 'Enum',
                  module: 'CalculationWindowTypes'
                }
              },
              calculation_window_field_name: {
                required: false,
                serialized_name: 'calculationWindowFieldName',
                type: {
                  name: 'String'
                }
              },
              function: {
                required: true,
                serialized_name: 'function',
                type: {
                  name: 'Enum',
                  module: 'KpiFunctions'
                }
              },
              expression: {
                required: true,
                serialized_name: 'expression',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              filter: {
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'String'
                }
              },
              group_by: {
                required: false,
                serialized_name: 'groupBy',
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
              group_by_metadata: {
                required: false,
                read_only: true,
                serialized_name: 'groupByMetadata',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KpiGroupByMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiGroupByMetadata'
                      }
                  }
                }
              },
              participant_profiles_metadata: {
                required: false,
                read_only: true,
                serialized_name: 'participantProfilesMetadata',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KpiParticipantProfilesMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiParticipantProfilesMetadata'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              thres_holds: {
                required: false,
                serialized_name: 'thresHolds',
                type: {
                  name: 'Composite',
                  class_name: 'KpiThresholds'
                }
              },
              aliases: {
                required: false,
                serialized_name: 'aliases',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KpiAliasElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiAlias'
                      }
                  }
                }
              },
              extracts: {
                required: false,
                serialized_name: 'extracts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KpiExtractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiExtract'
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
