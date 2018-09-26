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
      Operations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Operations
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingLocators
      Locations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Locations
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveOutputs
      LiveEvents = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveEvents
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingEndpoints

      module Models
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
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
        JobCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
        JobOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutput
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreviewAccessControl
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
        TransformOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
        MediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
        Asset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        Operation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
        Filters = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
        Audio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
        Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
        ImageFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
        AacAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
        PngFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
        CopyAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
        CopyVideo = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
        VideoLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
        H264Layer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
        JpgFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
        JpgLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
        JpgImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
        PngLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
        PngImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
        BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
        VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
        H264Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
        TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
        VideoOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
        JobInputClip = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
        Mp4Format = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
        JobInputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
        JobInputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
        StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
        StreamingPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
        StreamingLocator = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
        LiveEvent = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
        Transform = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        JobInputHttp = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        Job = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
        StretchMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
        LiveOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
        EntropyMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
        ApiError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
        Rotation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
        OnErrorType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
        Priority = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
        H264Complexity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
        JobRetry = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
        StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
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
      end

      class MediaServicesManagementClass
        attr_reader :mediaservices, :assets, :content_key_policies, :transforms, :jobs, :streaming_policies, :operations, :streaming_locators, :locations, :live_outputs, :live_events, :streaming_endpoints, :configurable, :base_url, :options, :model_classes

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
          @operations = @client_0.operations
          @streaming_locators = @client_0.streaming_locators
          @locations = @client_0.locations
          @live_outputs = @client_0.live_outputs
          @live_events = @client_0.live_events
          @streaming_endpoints = @client_0.streaming_endpoints

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
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
          end
          def streaming_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
          end
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
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
          def transform_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
          end
          def asset_container_sas
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
          end
          def live_event_preview
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
          end
          def media_service
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
          end
          def subscription_media_service
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
          end
          def ipaccess_control
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
          end
          def asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
          end
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
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
          def png_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
          end
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
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
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
          end
          def jpg_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
          end
          def multi_bitrate_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
          end
          def png_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
          end
          def png_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
          end
          def built_in_standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
          end
          def video_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
          end
          def transport_stream_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
          end
          def video_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
          end
          def mp4_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
          end
          def job_inputs
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
          end
          def job_input_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
          end
          def standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
          end
          def streaming_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
          end
          def streaming_locator
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
          end
          def transform
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
          end
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def job_input_http
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def job
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
          end
          def live_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
          end
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
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
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
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
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
          end
          def stream_options_flag
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamOptionsFlag
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
        end
      end
    end
  end
end
