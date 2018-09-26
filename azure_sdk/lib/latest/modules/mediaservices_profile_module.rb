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
      Operations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Operations
      StreamingPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingPolicies
      Locations = Azure::MediaServices::Mgmt::V2018_06_01_preview::Locations
      LiveEvents = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveEvents
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingLocators
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_06_01_preview::StreamingEndpoints
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::LiveOutputs

      module Models
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
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
        JobCollection = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreview
        JobOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutput
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventPreviewAccessControl
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenKey
        TransformOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::IPAccessControl
        MediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::SubscriptionMediaService
        Asset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Asset
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        Operation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
        Filters = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
        AacAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
        CopyVideo = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
        Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
        Audio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
        JpgFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
        PngFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
        CopyAudio = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
        VideoLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
        ImageFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
        H264Video = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
        JpgLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
        JpgImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
        Mp4Format = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
        PngLayer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
        PngImage = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
        StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
        H264Layer = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
        VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
        TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
        Transform = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
        JobInputClip = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
        JobInputs = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
        JobInputHttp = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
        BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
        StreamingPolicy = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
        LiveOutput = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
        VideoOverlay = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
        LiveEvent = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
        JobInputAsset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
        Job = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
        StretchMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
        StreamingLocator = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
        ApiError = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
        Rotation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
        Priority = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
        JobRetry = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
        OnErrorType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
        EntropyMode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
        H264Complexity = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
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
      end

      class MediaServicesManagementClass
        attr_reader :mediaservices, :assets, :content_key_policies, :transforms, :jobs, :operations, :streaming_policies, :locations, :live_events, :streaming_locators, :streaming_endpoints, :live_outputs, :configurable, :base_url, :options, :model_classes

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
          @operations = @client_0.operations
          @streaming_policies = @client_0.streaming_policies
          @locations = @client_0.locations
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
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventActionInput
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobCollection
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorDetail
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncoding
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CrossSiteAccessPolicies
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
          def transform_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransformOutput
          end
          def streaming_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyPlayReadyConfiguration
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
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyOpenRestriction
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownRestriction
          end
          def asset_container_sas
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerSas
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRsaTokenKey
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyUnknownConfiguration
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyWidevineConfiguration
          end
          def content_key_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayConfiguration
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyTokenRestriction
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Filters
          end
          def aac_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudio
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicy
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def copy_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyVideo
          end
          def video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Video
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Audio
          end
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgFormat
          end
          def png_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngFormat
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioOverlay
          end
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::CopyAudio
          end
          def video_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoLayer
          end
          def image_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ImageFormat
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Video
          end
          def jpg_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgLayer
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JpgImage
          end
          def mp4_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Mp4Format
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AudioAnalyzerPreset
          end
          def png_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngLayer
          end
          def png_image
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::PngImage
          end
          def standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StandardEncoderPreset
          end
          def h264_layer
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Layer
          end
          def video_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoAnalyzerPreset
          end
          def transport_stream_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TransportStreamFormat
          end
          def transform
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Transform
          end
          def multi_bitrate_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::MultiBitrateFormat
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputClip
          end
          def job_inputs
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputs
          end
          def job_input_http
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputHttp
          end
          def built_in_standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::BuiltInStandardEncoderPreset
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobOutputAsset
          end
          def streaming_policy
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicy
          end
          def live_output
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutput
          end
          def video_overlay
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::VideoOverlay
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEvent
          end
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingEndpoint
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetContainerPermission
          end
          def job_input_asset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobInputAsset
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyRestrictionTokenType
          end
          def job
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Job
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AacAudioProfile
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StretchMode
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::AssetStorageEncryptionFormat
          end
          def streaming_locator
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocator
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264VideoProfile
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ApiError
          end
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StorageAccountType
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceParity
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::DeinterlaceMode
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Rotation
          end
          def encoder_named_preset
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncoderNamedPreset
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::ContentKeyPolicyPlayReadyContentType
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::Priority
          end
          def job_retry
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobRetry
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::OnErrorType
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EntropyMode
          end
          def h264_complexity
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::H264Complexity
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyCompareOperation
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::EncryptionScheme
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::TrackPropertyType
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCode
          end
          def job_error_category
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::JobErrorCategory
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventInputProtocol
          end
          def live_event_encoding_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventEncodingType
          end
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveOutputResourceState
          end
          def streaming_locator_content_key_type
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingLocatorContentKeyType
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::StreamingPolicyStreamingProtocol
          end
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_06_01_preview::Models::LiveEventResourceState
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
        end
      end
    end
  end
end
