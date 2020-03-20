# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_support'

module Azure::Profiles::Latest
  module Support
    module Mgmt
      Operations = Azure::Support::Mgmt::V2020_04_01::Operations
      Services = Azure::Support::Mgmt::V2020_04_01::Services
      ProblemClassifications = Azure::Support::Mgmt::V2020_04_01::ProblemClassifications
      SupportTickets = Azure::Support::Mgmt::V2020_04_01::SupportTickets
      Communications = Azure::Support::Mgmt::V2020_04_01::Communications

      module Models
        TechnicalTicketDetails = Azure::Support::Mgmt::V2020_04_01::Models::TechnicalTicketDetails
        OperationDisplay = Azure::Support::Mgmt::V2020_04_01::Models::OperationDisplay
        QuotaChangeRequest = Azure::Support::Mgmt::V2020_04_01::Models::QuotaChangeRequest
        OperationsListResult = Azure::Support::Mgmt::V2020_04_01::Models::OperationsListResult
        QuotaTicketDetails = Azure::Support::Mgmt::V2020_04_01::Models::QuotaTicketDetails
        ServicesListResult = Azure::Support::Mgmt::V2020_04_01::Models::ServicesListResult
        SupportTicketDetails = Azure::Support::Mgmt::V2020_04_01::Models::SupportTicketDetails
        ProblemClassificationsListResult = Azure::Support::Mgmt::V2020_04_01::Models::ProblemClassificationsListResult
        SupportTicketsListResult = Azure::Support::Mgmt::V2020_04_01::Models::SupportTicketsListResult
        CheckNameAvailabilityOutput = Azure::Support::Mgmt::V2020_04_01::Models::CheckNameAvailabilityOutput
        CommunicationDetails = Azure::Support::Mgmt::V2020_04_01::Models::CommunicationDetails
        ServiceLevelAgreement = Azure::Support::Mgmt::V2020_04_01::Models::ServiceLevelAgreement
        CommunicationsListResult = Azure::Support::Mgmt::V2020_04_01::Models::CommunicationsListResult
        Operation = Azure::Support::Mgmt::V2020_04_01::Models::Operation
        ServiceErrorDetail = Azure::Support::Mgmt::V2020_04_01::Models::ServiceErrorDetail
        ProblemClassification = Azure::Support::Mgmt::V2020_04_01::Models::ProblemClassification
        ServiceError = Azure::Support::Mgmt::V2020_04_01::Models::ServiceError
        ContactProfile = Azure::Support::Mgmt::V2020_04_01::Models::ContactProfile
        ExceptionResponse = Azure::Support::Mgmt::V2020_04_01::Models::ExceptionResponse
        Service = Azure::Support::Mgmt::V2020_04_01::Models::Service
        UpdateContactProfile = Azure::Support::Mgmt::V2020_04_01::Models::UpdateContactProfile
        SupportEngineer = Azure::Support::Mgmt::V2020_04_01::Models::SupportEngineer
        UpdateSupportTicket = Azure::Support::Mgmt::V2020_04_01::Models::UpdateSupportTicket
        CheckNameAvailabilityInput = Azure::Support::Mgmt::V2020_04_01::Models::CheckNameAvailabilityInput
        Type = Azure::Support::Mgmt::V2020_04_01::Models::Type
        SeverityLevel = Azure::Support::Mgmt::V2020_04_01::Models::SeverityLevel
        PreferredContactMethod = Azure::Support::Mgmt::V2020_04_01::Models::PreferredContactMethod
        CommunicationType = Azure::Support::Mgmt::V2020_04_01::Models::CommunicationType
        CommunicationDirection = Azure::Support::Mgmt::V2020_04_01::Models::CommunicationDirection
        Status = Azure::Support::Mgmt::V2020_04_01::Models::Status
      end

      class SupportManagementClass
        attr_reader :operations, :services, :problem_classifications, :support_tickets, :communications, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Support::Mgmt::V2020_04_01::MicrosoftSupport.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @services = @client_0.services
          @problem_classifications = @client_0.problem_classifications
          @support_tickets = @client_0.support_tickets
          @communications = @client_0.communications

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Support/Mgmt"
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
          def technical_ticket_details
            Azure::Support::Mgmt::V2020_04_01::Models::TechnicalTicketDetails
          end
          def operation_display
            Azure::Support::Mgmt::V2020_04_01::Models::OperationDisplay
          end
          def quota_change_request
            Azure::Support::Mgmt::V2020_04_01::Models::QuotaChangeRequest
          end
          def operations_list_result
            Azure::Support::Mgmt::V2020_04_01::Models::OperationsListResult
          end
          def quota_ticket_details
            Azure::Support::Mgmt::V2020_04_01::Models::QuotaTicketDetails
          end
          def services_list_result
            Azure::Support::Mgmt::V2020_04_01::Models::ServicesListResult
          end
          def support_ticket_details
            Azure::Support::Mgmt::V2020_04_01::Models::SupportTicketDetails
          end
          def problem_classifications_list_result
            Azure::Support::Mgmt::V2020_04_01::Models::ProblemClassificationsListResult
          end
          def support_tickets_list_result
            Azure::Support::Mgmt::V2020_04_01::Models::SupportTicketsListResult
          end
          def check_name_availability_output
            Azure::Support::Mgmt::V2020_04_01::Models::CheckNameAvailabilityOutput
          end
          def communication_details
            Azure::Support::Mgmt::V2020_04_01::Models::CommunicationDetails
          end
          def service_level_agreement
            Azure::Support::Mgmt::V2020_04_01::Models::ServiceLevelAgreement
          end
          def communications_list_result
            Azure::Support::Mgmt::V2020_04_01::Models::CommunicationsListResult
          end
          def operation
            Azure::Support::Mgmt::V2020_04_01::Models::Operation
          end
          def service_error_detail
            Azure::Support::Mgmt::V2020_04_01::Models::ServiceErrorDetail
          end
          def problem_classification
            Azure::Support::Mgmt::V2020_04_01::Models::ProblemClassification
          end
          def service_error
            Azure::Support::Mgmt::V2020_04_01::Models::ServiceError
          end
          def contact_profile
            Azure::Support::Mgmt::V2020_04_01::Models::ContactProfile
          end
          def exception_response
            Azure::Support::Mgmt::V2020_04_01::Models::ExceptionResponse
          end
          def service
            Azure::Support::Mgmt::V2020_04_01::Models::Service
          end
          def update_contact_profile
            Azure::Support::Mgmt::V2020_04_01::Models::UpdateContactProfile
          end
          def support_engineer
            Azure::Support::Mgmt::V2020_04_01::Models::SupportEngineer
          end
          def update_support_ticket
            Azure::Support::Mgmt::V2020_04_01::Models::UpdateSupportTicket
          end
          def check_name_availability_input
            Azure::Support::Mgmt::V2020_04_01::Models::CheckNameAvailabilityInput
          end
          def type
            Azure::Support::Mgmt::V2020_04_01::Models::Type
          end
          def severity_level
            Azure::Support::Mgmt::V2020_04_01::Models::SeverityLevel
          end
          def preferred_contact_method
            Azure::Support::Mgmt::V2020_04_01::Models::PreferredContactMethod
          end
          def communication_type
            Azure::Support::Mgmt::V2020_04_01::Models::CommunicationType
          end
          def communication_direction
            Azure::Support::Mgmt::V2020_04_01::Models::CommunicationDirection
          end
          def status
            Azure::Support::Mgmt::V2020_04_01::Models::Status
          end
        end
      end
    end
  end
end
