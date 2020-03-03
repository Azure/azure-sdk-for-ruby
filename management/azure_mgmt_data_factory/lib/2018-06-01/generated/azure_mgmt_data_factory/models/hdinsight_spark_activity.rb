# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # HDInsight Spark activity.
    #
    class HDInsightSparkActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "HDInsightSpark"
      end

      attr_accessor :type

      # @return The root path in 'sparkJobLinkedService' for all the job’s
      # files. Type: string (or Expression with resultType string).
      attr_accessor :root_path

      # @return The relative path to the root folder of the code/package to be
      # executed. Type: string (or Expression with resultType string).
      attr_accessor :entry_file_path

      # @return The user-specified arguments to HDInsightSparkActivity.
      attr_accessor :arguments

      # @return [HDInsightActivityDebugInfoOption] Debug info option. Possible
      # values include: 'None', 'Always', 'Failure'
      attr_accessor :get_debug_info

      # @return [LinkedServiceReference] The storage linked service for
      # uploading the entry file and dependencies, and for receiving logs.
      attr_accessor :spark_job_linked_service

      # @return [String] The application's Java/Spark main class.
      attr_accessor :class_name

      # @return The user to impersonate that will execute the job. Type: string
      # (or Expression with resultType string).
      attr_accessor :proxy_user

      # @return Spark configuration property.
      attr_accessor :spark_config


      #
      # Mapper for HDInsightSparkActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HDInsightSpark',
          type: {
            name: 'Composite',
            class_name: 'HDInsightSparkActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              root_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.rootPath',
                type: {
                  name: 'Object'
                }
              },
              entry_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.entryFilePath',
                type: {
                  name: 'Object'
                }
              },
              arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.arguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              get_debug_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.getDebugInfo',
                type: {
                  name: 'String'
                }
              },
              spark_job_linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sparkJobLinkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              class_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.className',
                type: {
                  name: 'String'
                }
              },
              proxy_user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.proxyUser',
                type: {
                  name: 'Object'
                }
              },
              spark_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sparkConfig',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
