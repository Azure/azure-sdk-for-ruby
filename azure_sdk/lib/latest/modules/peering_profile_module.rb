# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_peering'

module Azure::Profiles::Latest
  module Peering
    module Mgmt
      LegacyPeerings = Azure::Peering::Mgmt::V2019_08_01_preview::LegacyPeerings
      Operations = Azure::Peering::Mgmt::V2019_08_01_preview::Operations
      PeerAsns = Azure::Peering::Mgmt::V2019_08_01_preview::PeerAsns
      PeeringLocations = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringLocations
      Peerings = Azure::Peering::Mgmt::V2019_08_01_preview::Peerings
      PeeringServiceLocations = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringServiceLocations
      PeeringServicePrefixes = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringServicePrefixes
      Prefixes = Azure::Peering::Mgmt::V2019_08_01_preview::Prefixes
      PeeringServiceProviders = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringServiceProviders
      PeeringServices = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringServices

      module Models
        PeeringBandwidthOffer = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringBandwidthOffer
        CheckServiceProviderAvailabilityInput = Azure::Peering::Mgmt::V2019_08_01_preview::Models::CheckServiceProviderAvailabilityInput
        PeeringLocationPropertiesDirect = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationPropertiesDirect
        BgpSession = Azure::Peering::Mgmt::V2019_08_01_preview::Models::BgpSession
        ExchangePeeringFacility = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ExchangePeeringFacility
        SubResource = Azure::Peering::Mgmt::V2019_08_01_preview::Models::SubResource
        PeeringLocationPropertiesExchange = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationPropertiesExchange
        ExchangeConnection = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ExchangeConnection
        DirectConnection = Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectConnection
        PeeringPropertiesDirect = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringPropertiesDirect
        PeeringListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringListResult
        PeeringPropertiesExchange = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringPropertiesExchange
        Operation = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Operation
        ContactInfo = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ContactInfo
        PeeringLocationListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationListResult
        PeerAsnListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeerAsnListResult
        ResourceTags = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ResourceTags
        PeeringSku = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringSku
        Resource = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Resource
        OperationDisplayInfo = Azure::Peering::Mgmt::V2019_08_01_preview::Models::OperationDisplayInfo
        PeeringServiceLocationListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceLocationListResult
        PeeringServiceProviderListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceProviderListResult
        DirectPeeringFacility = Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectPeeringFacility
        ErrorResponse = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ErrorResponse
        OperationListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::OperationListResult
        PeeringServicePrefixListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefixListResult
        PeeringServiceListResult = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceListResult
        Peering = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Peering
        PeerAsn = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeerAsn
        PeeringLocation = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocation
        PeeringServiceLocation = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceLocation
        PeeringServicePrefix = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix
        PeeringServiceProvider = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceProvider
        PeeringService = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringService
        Name = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Name
        Tier = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Tier
        Family = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Family
        Size = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Size
        Kind = Azure::Peering::Mgmt::V2019_08_01_preview::Models::Kind
        SessionAddressProvider = Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionAddressProvider
        ConnectionState = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ConnectionState
        SessionStateV4 = Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionStateV4
        SessionStateV6 = Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionStateV6
        DirectPeeringType = Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectPeeringType
        ProvisioningState = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ProvisioningState
        ValidationState = Azure::Peering::Mgmt::V2019_08_01_preview::Models::ValidationState
        PrefixValidationState = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PrefixValidationState
        LearnedType = Azure::Peering::Mgmt::V2019_08_01_preview::Models::LearnedType
      end

      class PeeringManagementClass
        attr_reader :legacy_peerings, :operations, :peer_asns, :peering_locations, :peerings, :peering_service_locations, :peering_service_prefixes, :prefixes, :peering_service_providers, :peering_services, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Peering::Mgmt::V2019_08_01_preview::PeeringClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @legacy_peerings = @client_0.legacy_peerings
          @operations = @client_0.operations
          @peer_asns = @client_0.peer_asns
          @peering_locations = @client_0.peering_locations
          @peerings = @client_0.peerings
          @peering_service_locations = @client_0.peering_service_locations
          @peering_service_prefixes = @client_0.peering_service_prefixes
          @prefixes = @client_0.prefixes
          @peering_service_providers = @client_0.peering_service_providers
          @peering_services = @client_0.peering_services

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Peering/Mgmt"
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
          def peering_bandwidth_offer
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringBandwidthOffer
          end
          def check_service_provider_availability_input
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::CheckServiceProviderAvailabilityInput
          end
          def peering_location_properties_direct
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationPropertiesDirect
          end
          def bgp_session
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::BgpSession
          end
          def exchange_peering_facility
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ExchangePeeringFacility
          end
          def sub_resource
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::SubResource
          end
          def peering_location_properties_exchange
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationPropertiesExchange
          end
          def exchange_connection
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ExchangeConnection
          end
          def direct_connection
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectConnection
          end
          def peering_properties_direct
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringPropertiesDirect
          end
          def peering_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringListResult
          end
          def peering_properties_exchange
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringPropertiesExchange
          end
          def operation
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Operation
          end
          def contact_info
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ContactInfo
          end
          def peering_location_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocationListResult
          end
          def peer_asn_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeerAsnListResult
          end
          def resource_tags
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ResourceTags
          end
          def peering_sku
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringSku
          end
          def resource
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Resource
          end
          def operation_display_info
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::OperationDisplayInfo
          end
          def peering_service_location_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceLocationListResult
          end
          def peering_service_provider_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceProviderListResult
          end
          def direct_peering_facility
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectPeeringFacility
          end
          def error_response
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ErrorResponse
          end
          def operation_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::OperationListResult
          end
          def peering_service_prefix_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefixListResult
          end
          def peering_service_list_result
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceListResult
          end
          def peering
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Peering
          end
          def peer_asn
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeerAsn
          end
          def peering_location
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringLocation
          end
          def peering_service_location
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceLocation
          end
          def peering_service_prefix
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix
          end
          def peering_service_provider
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServiceProvider
          end
          def peering_service
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringService
          end
          def name
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Name
          end
          def tier
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Tier
          end
          def family
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Family
          end
          def size
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Size
          end
          def kind
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::Kind
          end
          def session_address_provider
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionAddressProvider
          end
          def connection_state
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ConnectionState
          end
          def session_state_v4
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionStateV4
          end
          def session_state_v6
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::SessionStateV6
          end
          def direct_peering_type
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::DirectPeeringType
          end
          def provisioning_state
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ProvisioningState
          end
          def validation_state
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::ValidationState
          end
          def prefix_validation_state
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::PrefixValidationState
          end
          def learned_type
            Azure::Peering::Mgmt::V2019_08_01_preview::Models::LearnedType
          end
        end
      end
    end
  end
end
