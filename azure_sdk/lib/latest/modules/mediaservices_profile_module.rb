# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::Profiles::Latest
  module MediaServices
    module Mgmt
      Mediaservices = Azure::MediaServices::Mgmt::V2018_06_01_preview::Mediaservices
      Assets = Azure::MediaServices::Mgmt::V2018_06_01_preview::Assets
      ContentKeyPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::ContentKeyPolicies
      Transforms = Azure::MediaServices::Mgmt::V2018_06_01_preview::Transforms
      Jobs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Jobs
      StreamingPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingPolicies
      Locations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Locations
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingLocators
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveOutputs
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingEndpoints
      LiveEvents = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveEvents
      Operations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Operations

      module Models
        Codec = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Codec
        LiveOutputListResult = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputListResult
        CbcsDrmConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CbcsDrmConfiguration
        LiveEventEndpoint = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEndpoint
        IPRange = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPRange
        AssetStorageEncryptionKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionKey
        AssetCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetCollection
        ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
        StreamingPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyWidevineConfiguration
        JobInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInput
        ContentKeyPolicyPlayReadyPlayRight = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyPlayRight
        LiveEventInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInput
        ContentKeyPolicyPlayReadyLicense = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicense
        ListPathsResponse = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListPathsResponse
        StreamingPolicyContentKeys = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyContentKeys
        ContentKeyPolicyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyConfiguration
        ListContentKeysResponse = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListContentKeysResponse
        DefaultKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DefaultKey
        StreamingPath = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPath
        TrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCondition
        StreamingLocatorContentKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKey
        TransformCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformCollection
        StreamingPolicyCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyCollection
        Hls = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Hls
        Deinterlace = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Deinterlace
        JobError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobError
        Rectangle = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rectangle
        ContentKeyPolicyProperties = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyProperties
        Layer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Layer
        SubscriptionMediaServiceCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaServiceCollection
        CommonEncryptionCbcs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CommonEncryptionCbcs
        StreamingPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyFairPlayConfiguration
        CommonEncryptionCenc = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CommonEncryptionCenc
        ContentKeyPolicyPlayReadyContentKeyLocation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentKeyLocation
        ContentKeyPolicyTokenClaim = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenClaim
        StreamingEndpointListResult = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointListResult
        StreamingPolicyContentKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyContentKey
        StreamingEntityScaleUnit = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEntityScaleUnit
        TrackSelection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackSelection
        OutputFile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OutputFile
        StreamingLocatorCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorCollection
        StreamingEndpointAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointAccessControl
        ContentKeyPolicyOption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOption
        AkamaiAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AkamaiAccessControl
        MediaServiceCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaServiceCollection
        AkamaiSignatureHeaderAuthenticationKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AkamaiSignatureHeaderAuthenticationKey
        ListContainerSasInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListContainerSasInput
        LiveEventListResult = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventListResult
        ContentKeyPolicyRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestriction
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
        JobCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
        JobOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutput
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreviewAccessControl
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
        MediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
        Asset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
        Operation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
        TransformOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
        Filters = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
        Audio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
        AacAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
        ImageFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
        JpgFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
        CopyAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
        VideoLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
        Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
        H264Layer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
        H264Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
        PngFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
        JpgImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
        Mp4Format = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
        PngImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
        CopyVideo = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
        BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
        StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
        TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
        JpgLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
        VideoOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
        Transform = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
        JobInputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
        PngLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
        JobInputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
        JobInputHttp = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
        StreamingPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
        VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
        StreamingLocator = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
        LiveOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
        LiveEvent = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
        JobInputClip = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
        Job = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
        ApiError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
        Rotation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
        H264Complexity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
        StretchMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
        OnErrorType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
        EntropyMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
        JobRetry = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
        Priority = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
        StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
        StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointResourceState
        CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CheckNameAvailabilityInput
        OperationCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationCollection
        JobState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobState
        TrackedResource = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackedResource
        ProxyResource = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ProxyResource
        Resource = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Resource
        StorageAccount = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccount
        Format = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Format
        Location = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Location
        Image = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Image
        Provider = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Provider
        CencDrmConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CencDrmConfiguration
        Overlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Overlay
        EnvelopeEncryption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EnvelopeEncryption
        EntityNameAvailabilityCheckOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntityNameAvailabilityCheckOutput
        NoEncryption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::NoEncryption
        SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SyncStorageKeysInput
        EnabledProtocols = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EnabledProtocols
        ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyCollection
        ODataError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ODataError
        Preset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Preset
      end

      class MediaServicesManagementClass
        attr_reader :mediaservices, :assets, :content_key_policies, :transforms, :jobs, :streaming_policies, :locations, :streaming_locators, :live_outputs, :streaming_endpoints, :live_events, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MediaServices::Mgmt::V2018_06_01_preview::AzureMediaServices.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @mediaservices = @client_0.mediaservices
          @assets = @client_0.assets
          @content_key_policies = @client_0.content_key_policies
          @transforms = @client_0.transforms
          @jobs = @client_0.jobs
          @streaming_policies = @client_0.streaming_policies
          @locations = @client_0.locations
          @streaming_locators = @client_0.streaming_locators
          @live_outputs = @client_0.live_outputs
          @streaming_endpoints = @client_0.streaming_endpoints
          @live_events = @client_0.live_events
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MediaServices/Mgmt"
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
          def codec
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Codec
          end
          def live_output_list_result
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputListResult
          end
          def cbcs_drm_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CbcsDrmConfiguration
          end
          def live_event_endpoint
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEndpoint
          end
          def iprange
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPRange
          end
          def asset_storage_encryption_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionKey
          end
          def asset_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetCollection
          end
          def content_key_policy_play_ready_explicit_analog_television_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
          end
          def streaming_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyWidevineConfiguration
          end
          def job_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInput
          end
          def content_key_policy_play_ready_play_right
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyPlayRight
          end
          def live_event_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInput
          end
          def content_key_policy_play_ready_license
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicense
          end
          def list_paths_response
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListPathsResponse
          end
          def streaming_policy_content_keys
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyContentKeys
          end
          def content_key_policy_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyConfiguration
          end
          def list_content_keys_response
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListContentKeysResponse
          end
          def default_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DefaultKey
          end
          def streaming_path
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPath
          end
          def track_property_condition
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCondition
          end
          def streaming_locator_content_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKey
          end
          def transform_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformCollection
          end
          def streaming_policy_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyCollection
          end
          def hls
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Hls
          end
          def deinterlace
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Deinterlace
          end
          def job_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobError
          end
          def rectangle
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rectangle
          end
          def content_key_policy_properties
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyProperties
          end
          def layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Layer
          end
          def subscription_media_service_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaServiceCollection
          end
          def common_encryption_cbcs
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CommonEncryptionCbcs
          end
          def streaming_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyFairPlayConfiguration
          end
          def common_encryption_cenc
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CommonEncryptionCenc
          end
          def content_key_policy_play_ready_content_key_location
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentKeyLocation
          end
          def content_key_policy_token_claim
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenClaim
          end
          def streaming_endpoint_list_result
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointListResult
          end
          def streaming_policy_content_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyContentKey
          end
          def streaming_entity_scale_unit
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEntityScaleUnit
          end
          def track_selection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackSelection
          end
          def output_file
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OutputFile
          end
          def streaming_locator_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorCollection
          end
          def streaming_endpoint_access_control
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointAccessControl
          end
          def content_key_policy_option
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOption
          end
          def akamai_access_control
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AkamaiAccessControl
          end
          def media_service_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaServiceCollection
          end
          def akamai_signature_header_authentication_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AkamaiSignatureHeaderAuthenticationKey
          end
          def list_container_sas_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ListContainerSasInput
          end
          def live_event_list_result
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventListResult
          end
          def content_key_policy_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestriction
          end
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
          end
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
          end
          def streaming_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
          end
          def live_event_preview
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
          end
          def job_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutput
          end
          def live_event_preview_access_control
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreviewAccessControl
          end
          def content_key_policy_restriction_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
          end
          def asset_container_sas
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
          end
          def ipaccess_control
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
          end
          def media_service
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
          end
          def subscription_media_service
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
          end
          def asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
          end
          def operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
          end
          def transform_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
          end
          def content_key_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
          end
          def aac_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
          end
          def image_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
          end
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
          end
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
          end
          def video_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
          end
          def video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
          end
          def h264_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
          end
          def png_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
          end
          def multi_bitrate_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
          end
          def mp4_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
          end
          def png_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
          end
          def copy_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
          end
          def built_in_standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
          end
          def standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
          end
          def transport_stream_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
          end
          def jpg_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
          end
          def video_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
          end
          def transform
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
          end
          def job_inputs
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
          end
          def png_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
          end
          def job_input_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
          end
          def job_input_http
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
          end
          def streaming_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
          end
          def video_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
          end
          def streaming_locator
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
          end
          def live_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
          end
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
          end
          def job
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
          end
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
          end
          def h264_complexity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
          end
          def job_error_category
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
          end
          def encoder_named_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
          end
          def job_retry
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
          end
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
          end
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
          end
          def streaming_locator_content_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
          end
          def live_event_encoding_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
          end
          def stream_options_flag
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
          end
          def streaming_endpoint_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointResourceState
          end
          def check_name_availability_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CheckNameAvailabilityInput
          end
          def operation_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationCollection
          end
          def job_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobState
          end
          def tracked_resource
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackedResource
          end
          def proxy_resource
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ProxyResource
          end
          def resource
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def storage_account
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccount
          end
          def format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Format
          end
          def location
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Location
          end
          def image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Image
          end
          def provider
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Provider
          end
          def cenc_drm_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CencDrmConfiguration
          end
          def overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Overlay
          end
          def envelope_encryption
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EnvelopeEncryption
          end
          def entity_name_availability_check_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntityNameAvailabilityCheckOutput
          end
          def no_encryption
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::NoEncryption
          end
          def sync_storage_keys_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SyncStorageKeysInput
          end
          def enabled_protocols
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EnabledProtocols
          end
          def content_key_policy_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyCollection
          end
          def odata_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ODataError
          end
          def preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Preset
          end
        end
      end
    end
  end
end
