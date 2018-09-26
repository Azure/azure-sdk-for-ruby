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
      Operations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Operations
      Transforms = Azure::MediaServices::Mgmt::V2018_06_01_preview::Transforms
      Locations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Locations
      StreamingPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingPolicies
      Jobs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Jobs
      LiveEvents = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveEvents
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingLocators
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingEndpoints
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveOutputs

      module Models
        EnabledProtocols = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EnabledProtocols
        ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyCollection
        ODataError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ODataError
        Preset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Preset
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
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        JobCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
        JobOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutput
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreviewAccessControl
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
        TransformOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
        MediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
        Operation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
        Asset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
        Filters = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
        Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
        ImageFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
        AacAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
        JpgFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
        PngFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
        CopyVideo = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
        VideoLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
        H264Layer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
        H264Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
        JpgImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
        Audio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
        Mp4Format = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
        PngImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
        CopyAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
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
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
        JobInputClip = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
        LiveEvent = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
        StretchMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
        ApiError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
        EntropyMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
        Job = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        Rotation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
        Priority = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
        OnErrorType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
        H264Complexity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
        JobRetry = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
        StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
        StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointResourceState
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
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
      end

      class MediaServicesManagementClass
        attr_reader :mediaservices, :assets, :content_key_policies, :operations, :transforms, :locations, :streaming_policies, :jobs, :live_events, :streaming_locators, :streaming_endpoints, :live_outputs, :configurable, :base_url, :options, :model_classes

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
          @operations = @client_0.operations
          @transforms = @client_0.transforms
          @locations = @client_0.locations
          @streaming_policies = @client_0.streaming_policies
          @jobs = @client_0.jobs
          @live_events = @client_0.live_events
          @streaming_locators = @client_0.streaming_locators
          @streaming_endpoints = @client_0.streaming_endpoints
          @live_outputs = @client_0.live_outputs

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
          def operation_display
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
          end
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
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
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
          end
          def transform_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
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
          def operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
          end
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_restriction_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
          end
          def content_key_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
          end
          def video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
          end
          def image_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
          end
          def aac_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
          end
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
          end
          def png_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
          end
          def copy_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
          end
          def video_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
          end
          def h264_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
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
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
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
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
          end
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
          end
          def job
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
          end
          def h264_complexity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
          end
          def encoder_named_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
          end
          def streaming_locator_content_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
          end
          def job_error_category
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
          end
          def job_retry
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
          end
          def live_event_encoding_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
          end
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
          end
          def stream_options_flag
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
          end
          def streaming_endpoint_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpointResourceState
          end
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
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
        end
      end
    end
  end
end
