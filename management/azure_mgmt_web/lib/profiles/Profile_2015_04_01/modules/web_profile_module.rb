# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_web'


module Azure::Profiles::WebModule::Management::Profile_2015_04_01
  module Web
    Domains = Azure::ARM::Web::Api_2015_04_01::Domains
    TopLevelDomains = Azure::ARM::Web::Api_2015_04_01::TopLevelDomains

    module Models
      DomainRecommendationSearchParameters = Azure::ARM::Web::Api_2015_04_01::Models::DomainRecommendationSearchParameters
      Address = Azure::ARM::Web::Api_2015_04_01::Models::Address
      NameIdentifier = Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifier
      HostName = Azure::ARM::Web::Api_2015_04_01::Models::HostName
      NameIdentifierCollection = Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifierCollection
      DomainPurchaseConsent = Azure::ARM::Web::Api_2015_04_01::Models::DomainPurchaseConsent
      DomainAvailablilityCheckResult = Azure::ARM::Web::Api_2015_04_01::Models::DomainAvailablilityCheckResult
      TopLevelDomainCollection = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainCollection
      DomainControlCenterSsoRequest = Azure::ARM::Web::Api_2015_04_01::Models::DomainControlCenterSsoRequest
      Resource = Azure::ARM::Web::Api_2015_04_01::Models::Resource
      DomainOwnershipIdentifierCollection = Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifierCollection
      ProxyOnlyResource = Azure::ARM::Web::Api_2015_04_01::Models::ProxyOnlyResource
      DomainCollection = Azure::ARM::Web::Api_2015_04_01::Models::DomainCollection
      TldLegalAgreement = Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreement
      Contact = Azure::ARM::Web::Api_2015_04_01::Models::Contact
      TldLegalAgreementCollection = Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreementCollection
      TopLevelDomainAgreementOption = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainAgreementOption
      Domain = Azure::ARM::Web::Api_2015_04_01::Models::Domain
      DomainOwnershipIdentifier = Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifier
      TopLevelDomain = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomain
      DomainStatus = Azure::ARM::Web::Api_2015_04_01::Models::DomainStatus
      ProvisioningState = Azure::ARM::Web::Api_2015_04_01::Models::ProvisioningState
      AzureResourceType = Azure::ARM::Web::Api_2015_04_01::Models::AzureResourceType
      CustomHostNameDnsRecordType = Azure::ARM::Web::Api_2015_04_01::Models::CustomHostNameDnsRecordType
      HostNameType = Azure::ARM::Web::Api_2015_04_01::Models::HostNameType
      DnsType = Azure::ARM::Web::Api_2015_04_01::Models::DnsType
      DomainType = Azure::ARM::Web::Api_2015_04_01::Models::DomainType
    end

    #
    # Web
    #
    class WebClass
      attr_accessor :domains, :top_level_domains, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Web::Api_2015_04_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.domains = Azure::ARM::Web::Api_2015_04_01::Domains.new(client)
        self.top_level_domains = Azure::ARM::Web::Api_2015_04_01::TopLevelDomains.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-04-01'
            client = Azure::ARM::Web::Api_2015_04_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def domain_recommendation_search_parameters
          Azure::ARM::Web::Api_2015_04_01::Models::DomainRecommendationSearchParameters
        end
        def address
          Azure::ARM::Web::Api_2015_04_01::Models::Address
        end
        def name_identifier
          Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifier
        end
        def host_name
          Azure::ARM::Web::Api_2015_04_01::Models::HostName
        end
        def name_identifier_collection
          Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifierCollection
        end
        def domain_purchase_consent
          Azure::ARM::Web::Api_2015_04_01::Models::DomainPurchaseConsent
        end
        def domain_availablility_check_result
          Azure::ARM::Web::Api_2015_04_01::Models::DomainAvailablilityCheckResult
        end
        def top_level_domain_collection
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainCollection
        end
        def domain_control_center_sso_request
          Azure::ARM::Web::Api_2015_04_01::Models::DomainControlCenterSsoRequest
        end
        def resource
          Azure::ARM::Web::Api_2015_04_01::Models::Resource
        end
        def domain_ownership_identifier_collection
          Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifierCollection
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2015_04_01::Models::ProxyOnlyResource
        end
        def domain_collection
          Azure::ARM::Web::Api_2015_04_01::Models::DomainCollection
        end
        def tld_legal_agreement
          Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreement
        end
        def contact
          Azure::ARM::Web::Api_2015_04_01::Models::Contact
        end
        def tld_legal_agreement_collection
          Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreementCollection
        end
        def top_level_domain_agreement_option
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainAgreementOption
        end
        def domain
          Azure::ARM::Web::Api_2015_04_01::Models::Domain
        end
        def domain_ownership_identifier
          Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifier
        end
        def top_level_domain
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomain
        end
        def domain_status
          Azure::ARM::Web::Api_2015_04_01::Models::DomainStatus
        end
        def provisioning_state
          Azure::ARM::Web::Api_2015_04_01::Models::ProvisioningState
        end
        def azure_resource_type
          Azure::ARM::Web::Api_2015_04_01::Models::AzureResourceType
        end
        def custom_host_name_dns_record_type
          Azure::ARM::Web::Api_2015_04_01::Models::CustomHostNameDnsRecordType
        end
        def host_name_type
          Azure::ARM::Web::Api_2015_04_01::Models::HostNameType
        end
        def dns_type
          Azure::ARM::Web::Api_2015_04_01::Models::DnsType
        end
        def domain_type
          Azure::ARM::Web::Api_2015_04_01::Models::DomainType
        end
      end
    end
  end
end
