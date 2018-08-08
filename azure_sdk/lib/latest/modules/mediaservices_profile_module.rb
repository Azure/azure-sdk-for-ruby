# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::Profiles::Latest
  module MediaServices
    module Mgmt
      Operations = Azure::MediaServices::Mgmt::V2018_03_30_preview::Operations
      Mediaservices = Azure::MediaServices::Mgmt::V2018_03_30_preview::Mediaservices
      Assets = Azure::MediaServices::Mgmt::V2018_03_30_preview::Assets
      ContentKeyPolicies = Azure::MediaServices::Mgmt::V2018_03_30_preview::ContentKeyPolicies
      Transforms = Azure::MediaServices::Mgmt::V2018_03_30_preview::Transforms
      Jobs = Azure::MediaServices::Mgmt::V2018_03_30_preview::Jobs
      StreamingPolicies = Azure::MediaServices::Mgmt::V2018_03_30_preview::StreamingPolicies
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_03_30_preview::StreamingLocators
      LiveEvents = Azure::MediaServices::Mgmt::V2018_03_30_preview::LiveEvents
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_03_30_preview::LiveOutputs
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_03_30_preview::StreamingEndpoints
      Locations = Azure::MediaServices::Mgmt::V2018_03_30_preview::Locations

      module Models
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StorageAccountType
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OperationDisplay
        Operation = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Operation
        Job = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Job
        ApiError = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ApiError
        CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CheckNameAvailabilityInput
        Overlay = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Overlay
        NoEncryption = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::NoEncryption
        CommonEncryptionCbcs = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CommonEncryptionCbcs
        EntityNameAvailabilityCheckOutput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EntityNameAvailabilityCheckOutput
        CommonEncryptionCenc = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CommonEncryptionCenc
        SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SyncStorageKeysInput
        EnvelopeEncryption = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EnvelopeEncryption
        ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyCollection
        Preset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Preset
        MediaServiceCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MediaServiceCollection
        Codec = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Codec
        SubscriptionMediaServiceCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SubscriptionMediaServiceCollection
        JobError = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobError
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorDetail
        LiveEventEndpoint = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEndpoint
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetContainerSas
        CencDrmConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CencDrmConfiguration
        ListContainerSasInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListContainerSasInput
        ContentKeyPolicyPlayReadyContentKeyLocation = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentKeyLocation
        CbcsDrmConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CbcsDrmConfiguration
        IPRange = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::IPRange
        ContentKeyPolicyPlayReadyPlayRight = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyPlayRight
        LiveEventInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventInput
        ContentKeyPolicyPlayReadyLicense = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyLicense
        StreamingPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyWidevineConfiguration
        StreamingPolicyCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyCollection
        ContentKeyPolicyConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyConfiguration
        ListPathsResponse = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListPathsResponse
        StreamingPolicyContentKeys = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyContentKeys
        ListContentKeysResponse = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListContentKeysResponse
        DefaultKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DefaultKey
        StreamingPath = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPath
        TrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyCondition
        Deinterlace = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Deinterlace
        TransformCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransformCollection
        Rectangle = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Rectangle
        LiveOutputListResult = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutputListResult
        ContentKeyPolicyProperties = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyProperties
        Layer = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Layer
        StreamingLocatorContentKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorContentKey
        ODataError = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ODataError
        StreamingLocatorUserDefinedContentKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorUserDefinedContentKey
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::IPAccessControl
        AssetStorageEncryptionKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetStorageEncryptionKey
        StreamingLocatorCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorCollection
        ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
        ContentKeyPolicyTokenClaim = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyTokenClaim
        StreamingEndpointListResult = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointListResult
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyPlayReadyConfiguration
        OutputFile = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OutputFile
        StreamingPolicyContentKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyContentKey
        StreamingEntityScaleUnit = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEntityScaleUnit
        JobCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobCollection
        StreamingEndpointAccessControl = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointAccessControl
        ContentKeyPolicyOption = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyOption
        AkamaiAccessControl = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AkamaiAccessControl
        AkamaiSignatureHeaderAuthenticationKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AkamaiSignatureHeaderAuthenticationKey
        AssetCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetCollection
        LiveEventListResult = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventListResult
        ContentKeyPolicyRestriction = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestriction
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventActionInput
        TrackSelection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackSelection
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CrossSiteAccessPolicies
        JobOutput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobOutput
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEncoding
        StreamingPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyFairPlayConfiguration
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventPreview
        Hls = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Hls
        TransformOutput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransformOutput
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestrictionTokenKey
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventPreviewAccessControl
        EnabledProtocols = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EnabledProtocols
        JobInput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInput
        MediaService = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SubscriptionMediaService
        Asset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Asset
        OperationCollection = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OperationCollection
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyOpenRestriction
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyUnknownRestriction
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRsaTokenKey
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyX509CertificateTokenKey
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyTokenRestriction
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyClearKeyConfiguration
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyUnknownConfiguration
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyWidevineConfiguration
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyConfiguration
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyFairPlayConfiguration
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicy
        Audio = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Audio
        AacAudio = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AacAudio
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AudioAnalyzerPreset
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AudioOverlay
        CopyVideo = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CopyVideo
        Video = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Video
        ImageFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ImageFormat
        JpgFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgFormat
        PngFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngFormat
        CopyAudio = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CopyAudio
        VideoLayer = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoLayer
        H264Layer = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Layer
        H264Video = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Video
        JpgLayer = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgLayer
        JpgImage = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgImage
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MultiBitrateFormat
        Mp4Format = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Mp4Format
        PngLayer = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngLayer
        BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::BuiltInStandardEncoderPreset
        StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StandardEncoderPreset
        VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoAnalyzerPreset
        TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransportStreamFormat
        VideoOverlay = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoOverlay
        Transform = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Transform
        JobInputClip = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputClip
        JobInputs = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputs
        JobInputAsset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputAsset
        JobInputHttp = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputHttp
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobOutputAsset
        StreamingPolicy = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicy
        StreamingLocator = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocator
        LiveOutput = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutput
        LiveEvent = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEvent
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpoint
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetStorageEncryptionFormat
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetContainerPermission
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyLicenseType
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentType
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestrictionTokenType
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AacAudioProfile
        StretchMode = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StretchMode
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DeinterlaceParity
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DeinterlaceMode
        Rotation = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Rotation
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264VideoProfile
        EntropyMode = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EntropyMode
        H264Complexity = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Complexity
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EncoderNamedPreset
        OnErrorType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OnErrorType
        Priority = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Priority
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorCode
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorCategory
        JobRetry = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobRetry
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyType
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyCompareOperation
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorContentKeyType
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyStreamingProtocol
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EncryptionScheme
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutputResourceState
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventInputProtocol
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEncodingType
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventResourceState
        StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamOptionsFlag
        StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointResourceState
        ProxyResource = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ProxyResource
        TrackedResource = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackedResource
        PngImage = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngImage
        Resource = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Resource
        StorageAccount = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StorageAccount
        Format = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Format
        Location = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Location
        Image = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Image
        Provider = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Provider
        JobState = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobState
        Filters = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Filters
      end

      class MediaServicesManagementClass
        attr_reader :operations, :mediaservices, :assets, :content_key_policies, :transforms, :jobs, :streaming_policies, :streaming_locators, :live_events, :live_outputs, :streaming_endpoints, :locations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MediaServices::Mgmt::V2018_03_30_preview::AzureMediaServices.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @mediaservices = @client_0.mediaservices
          @assets = @client_0.assets
          @content_key_policies = @client_0.content_key_policies
          @transforms = @client_0.transforms
          @jobs = @client_0.jobs
          @streaming_policies = @client_0.streaming_policies
          @streaming_locators = @client_0.streaming_locators
          @live_events = @client_0.live_events
          @live_outputs = @client_0.live_outputs
          @streaming_endpoints = @client_0.streaming_endpoints
          @locations = @client_0.locations

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
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StorageAccountType
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OperationDisplay
          end
          def operation
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Operation
          end
          def job
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Job
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ApiError
          end
          def check_name_availability_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CheckNameAvailabilityInput
          end
          def overlay
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Overlay
          end
          def no_encryption
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::NoEncryption
          end
          def common_encryption_cbcs
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CommonEncryptionCbcs
          end
          def entity_name_availability_check_output
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EntityNameAvailabilityCheckOutput
          end
          def common_encryption_cenc
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CommonEncryptionCenc
          end
          def sync_storage_keys_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SyncStorageKeysInput
          end
          def envelope_encryption
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EnvelopeEncryption
          end
          def content_key_policy_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyCollection
          end
          def preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Preset
          end
          def media_service_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MediaServiceCollection
          end
          def codec
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Codec
          end
          def subscription_media_service_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SubscriptionMediaServiceCollection
          end
          def job_error
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobError
          end
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorDetail
          end
          def live_event_endpoint
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEndpoint
          end
          def asset_container_sas
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetContainerSas
          end
          def cenc_drm_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CencDrmConfiguration
          end
          def list_container_sas_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListContainerSasInput
          end
          def content_key_policy_play_ready_content_key_location
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentKeyLocation
          end
          def cbcs_drm_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CbcsDrmConfiguration
          end
          def iprange
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::IPRange
          end
          def content_key_policy_play_ready_play_right
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyPlayRight
          end
          def live_event_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventInput
          end
          def content_key_policy_play_ready_license
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyLicense
          end
          def streaming_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyWidevineConfiguration
          end
          def streaming_policy_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyCollection
          end
          def content_key_policy_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyConfiguration
          end
          def list_paths_response
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListPathsResponse
          end
          def streaming_policy_content_keys
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyContentKeys
          end
          def list_content_keys_response
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ListContentKeysResponse
          end
          def default_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DefaultKey
          end
          def streaming_path
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPath
          end
          def track_property_condition
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyCondition
          end
          def deinterlace
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Deinterlace
          end
          def transform_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransformCollection
          end
          def rectangle
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Rectangle
          end
          def live_output_list_result
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutputListResult
          end
          def content_key_policy_properties
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyProperties
          end
          def layer
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Layer
          end
          def streaming_locator_content_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorContentKey
          end
          def odata_error
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ODataError
          end
          def streaming_locator_user_defined_content_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorUserDefinedContentKey
          end
          def ipaccess_control
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::IPAccessControl
          end
          def asset_storage_encryption_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetStorageEncryptionKey
          end
          def streaming_locator_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorCollection
          end
          def content_key_policy_play_ready_explicit_analog_television_restriction
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
          end
          def content_key_policy_token_claim
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyTokenClaim
          end
          def streaming_endpoint_list_result
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointListResult
          end
          def streaming_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyPlayReadyConfiguration
          end
          def output_file
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OutputFile
          end
          def streaming_policy_content_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyContentKey
          end
          def streaming_entity_scale_unit
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEntityScaleUnit
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobCollection
          end
          def streaming_endpoint_access_control
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointAccessControl
          end
          def content_key_policy_option
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyOption
          end
          def akamai_access_control
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AkamaiAccessControl
          end
          def akamai_signature_header_authentication_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AkamaiSignatureHeaderAuthenticationKey
          end
          def asset_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetCollection
          end
          def live_event_list_result
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventListResult
          end
          def content_key_policy_restriction
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestriction
          end
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventActionInput
          end
          def track_selection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackSelection
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CrossSiteAccessPolicies
          end
          def job_output
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobOutput
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEncoding
          end
          def streaming_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyFairPlayConfiguration
          end
          def live_event_preview
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventPreview
          end
          def hls
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Hls
          end
          def transform_output
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransformOutput
          end
          def content_key_policy_restriction_token_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestrictionTokenKey
          end
          def live_event_preview_access_control
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventPreviewAccessControl
          end
          def enabled_protocols
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EnabledProtocols
          end
          def job_input
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInput
          end
          def media_service
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MediaService
          end
          def subscription_media_service
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::SubscriptionMediaService
          end
          def asset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Asset
          end
          def operation_collection
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OperationCollection
          end
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyOpenRestriction
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyUnknownRestriction
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRsaTokenKey
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyTokenRestriction
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyUnknownConfiguration
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyWidevineConfiguration
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def content_key_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyFairPlayConfiguration
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicy
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Audio
          end
          def aac_audio
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AacAudio
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AudioAnalyzerPreset
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AudioOverlay
          end
          def copy_video
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CopyVideo
          end
          def video
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Video
          end
          def image_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ImageFormat
          end
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgFormat
          end
          def png_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngFormat
          end
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::CopyAudio
          end
          def video_layer
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoLayer
          end
          def h264_layer
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Layer
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Video
          end
          def jpg_layer
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgLayer
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JpgImage
          end
          def multi_bitrate_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::MultiBitrateFormat
          end
          def mp4_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Mp4Format
          end
          def png_layer
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngLayer
          end
          def built_in_standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::BuiltInStandardEncoderPreset
          end
          def standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StandardEncoderPreset
          end
          def video_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoAnalyzerPreset
          end
          def transport_stream_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TransportStreamFormat
          end
          def video_overlay
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::VideoOverlay
          end
          def transform
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Transform
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputClip
          end
          def job_inputs
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputs
          end
          def job_input_asset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputAsset
          end
          def job_input_http
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobInputHttp
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobOutputAsset
          end
          def streaming_policy
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicy
          end
          def streaming_locator
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocator
          end
          def live_output
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutput
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEvent
          end
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpoint
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetStorageEncryptionFormat
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AssetContainerPermission
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyPlayReadyContentType
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyRestrictionTokenType
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::AacAudioProfile
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StretchMode
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DeinterlaceParity
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::DeinterlaceMode
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Rotation
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264VideoProfile
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EntropyMode
          end
          def h264_complexity
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::H264Complexity
          end
          def encoder_named_preset
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EncoderNamedPreset
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::OnErrorType
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Priority
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorCode
          end
          def job_error_category
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobErrorCategory
          end
          def job_retry
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobRetry
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyType
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackPropertyCompareOperation
          end
          def streaming_locator_content_key_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingLocatorContentKeyType
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyStreamingProtocol
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::EncryptionScheme
          end
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveOutputResourceState
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventInputProtocol
          end
          def live_event_encoding_type
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventEncodingType
          end
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::LiveEventResourceState
          end
          def stream_options_flag
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamOptionsFlag
          end
          def streaming_endpoint_resource_state
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingEndpointResourceState
          end
          def proxy_resource
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::ProxyResource
          end
          def tracked_resource
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::TrackedResource
          end
          def png_image
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::PngImage
          end
          def resource
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Resource
          end
          def storage_account
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StorageAccount
          end
          def format
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Format
          end
          def location
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Location
          end
          def image
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Image
          end
          def provider
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Provider
          end
          def job_state
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::JobState
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::Filters
          end
        end
      end
    end
  end
end
