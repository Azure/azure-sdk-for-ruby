# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_operations_management'

module Azure::Profiles::V2019_07_01
  module OperationsManagement
    module Mgmt
      Solutions = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Solutions
      ManagementAssociations = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::ManagementAssociations
      ManagementConfigurations = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::ManagementConfigurations
      Operations = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Operations

      module Models
        Solution = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::Solution
        SolutionPropertiesList = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPropertiesList
        Operation = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::Operation
        ManagementAssociation = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociation
        SolutionProperties = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionProperties
        ManagementAssociationPropertiesList = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociationPropertiesList
        ArmTemplateParameter = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ArmTemplateParameter
        ManagementConfiguration = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfiguration
        SolutionPlan = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPlan
        ManagementConfigurationPropertiesList = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfigurationPropertiesList
        OperationListResult = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::OperationListResult
        SolutionPatch = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPatch
        ManagementConfigurationProperties = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfigurationProperties
        CodeMessageErrorError = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::CodeMessageErrorError
        ManagementAssociationProperties = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociationProperties
        CodeMessageError = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::CodeMessageError
        OperationDisplay = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::OperationDisplay
      end

      class OperationsManagementManagementClass
        attr_reader :solutions, :management_associations, :management_configurations, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::OperationsManagement::Mgmt::V2015_11_01_preview::OperationsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @solutions = @client_0.solutions
          @management_associations = @client_0.management_associations
          @management_configurations = @client_0.management_configurations
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/OperationsManagement/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def solution
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::Solution
          end
          def solution_properties_list
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPropertiesList
          end
          def operation
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::Operation
          end
          def management_association
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociation
          end
          def solution_properties
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionProperties
          end
          def management_association_properties_list
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociationPropertiesList
          end
          def arm_template_parameter
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ArmTemplateParameter
          end
          def management_configuration
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfiguration
          end
          def solution_plan
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPlan
          end
          def management_configuration_properties_list
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfigurationPropertiesList
          end
          def operation_list_result
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::OperationListResult
          end
          def solution_patch
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::SolutionPatch
          end
          def management_configuration_properties
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementConfigurationProperties
          end
          def code_message_error_error
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::CodeMessageErrorError
          end
          def management_association_properties
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::ManagementAssociationProperties
          end
          def code_message_error
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::CodeMessageError
          end
          def operation_display
            Azure::OperationsManagement::Mgmt::V2015_11_01_preview::Models::OperationDisplay
          end
        end
      end
    end
  end
end
