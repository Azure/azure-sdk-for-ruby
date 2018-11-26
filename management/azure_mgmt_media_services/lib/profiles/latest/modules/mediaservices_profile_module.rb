# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::MediaServices::Profiles::Latest
  module Mgmt
    AccountFilters = Azure::MediaServices::Mgmt::V2018_07_01::AccountFilters
    Operations = Azure::MediaServices::Mgmt::V2018_07_01::Operations
    Mediaservices = Azure::MediaServices::Mgmt::V2018_07_01::Mediaservices
    Locations = Azure::MediaServices::Mgmt::V2018_07_01::Locations
    Assets = Azure::MediaServices::Mgmt::V2018_07_01::Assets
    AssetFilters = Azure::MediaServices::Mgmt::V2018_07_01::AssetFilters
    ContentKeyPolicies = Azure::MediaServices::Mgmt::V2018_07_01::ContentKeyPolicies
    Transforms = Azure::MediaServices::Mgmt::V2018_07_01::Transforms
    Jobs = Azure::MediaServices::Mgmt::V2018_07_01::Jobs
    StreamingPolicies = Azure::MediaServices::Mgmt::V2018_07_01::StreamingPolicies
    StreamingLocators = Azure::MediaServices::Mgmt::V2018_07_01::StreamingLocators
    LiveEvents = Azure::MediaServices::Mgmt::V2018_07_01::LiveEvents
    LiveOutputs = Azure::MediaServices::Mgmt::V2018_07_01::LiveOutputs
    StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_07_01::StreamingEndpoints

    module Models
      Rotation = Azure::MediaServices::Mgmt::V2018_07_01::Models::Rotation
      H264Complexity = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Complexity
      EntropyMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::EntropyMode
      InsightsType = Azure::MediaServices::Mgmt::V2018_07_01::Models::InsightsType
      EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::EncoderNamedPreset
      Priority = Azure::MediaServices::Mgmt::V2018_07_01::Models::Priority
      OnErrorType = Azure::MediaServices::Mgmt::V2018_07_01::Models::OnErrorType
      JobErrorCategory = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCategory
      JobErrorCode = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCode
      JobState = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobState
      JobRetry = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobRetry
      TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCompareOperation
      TrackPropertyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyType
      StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyStreamingProtocol
      StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKeyType
      LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputResourceState
      EncryptionScheme = Azure::MediaServices::Mgmt::V2018_07_01::Models::EncryptionScheme
      LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncodingType
      LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputProtocol
      StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamOptionsFlag
      LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventResourceState
      StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointResourceState
      Codec = Azure::MediaServices::Mgmt::V2018_07_01::Models::Codec
      PresentationTimeRange = Azure::MediaServices::Mgmt::V2018_07_01::Models::PresentationTimeRange
      ContentKeyPolicyProperties = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyProperties
      FirstQuality = Azure::MediaServices::Mgmt::V2018_07_01::Models::FirstQuality
      FilterTrackSelection = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackSelection
      StreamingPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyFairPlayConfiguration
      ODataError = Azure::MediaServices::Mgmt::V2018_07_01::Models::ODataError
      ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyCollection
      AccountFilterCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilterCollection
      Format = Azure::MediaServices::Mgmt::V2018_07_01::Models::Format
      Preset = Azure::MediaServices::Mgmt::V2018_07_01::Models::Preset
      Resource = Azure::MediaServices::Mgmt::V2018_07_01::Models::Resource
      FilterTrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCondition
      Provider = Azure::MediaServices::Mgmt::V2018_07_01::Models::Provider
      StreamingPath = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPath
      MetricDimension = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricDimension
      StreamingLocatorContentKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKey
      ServiceSpecification = Azure::MediaServices::Mgmt::V2018_07_01::Models::ServiceSpecification
      ListContentKeysResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContentKeysResponse
      Operation = Azure::MediaServices::Mgmt::V2018_07_01::Models::Operation
      Overlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::Overlay
      EntityNameAvailabilityCheckOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::EntityNameAvailabilityCheckOutput
      CommonEncryptionCbcs = Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCbcs
      SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::SyncStorageKeysInput
      CommonEncryptionCenc = Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCenc
      ApiError = Azure::MediaServices::Mgmt::V2018_07_01::Models::ApiError
      OperationCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationCollection
      LiveOutputListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputListResult
      CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::CheckNameAvailabilityInput
      LiveEventEndpoint = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEndpoint
      AssetContainerSas = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerSas
      OperationDisplay = Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationDisplay
      StorageEncryptedAssetDecryptionData = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageEncryptedAssetDecryptionData
      Metric = Azure::MediaServices::Mgmt::V2018_07_01::Models::Metric
      ListStreamingLocatorsResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListStreamingLocatorsResponse
      MetricProperties = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricProperties
      StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyPlayReadyConfiguration
      ListContainerSasInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContainerSasInput
      StorageAccount = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccount
      ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
      JobInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInput
      StreamingPolicyContentKeys = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKeys
      Hls = Azure::MediaServices::Mgmt::V2018_07_01::Models::Hls
      ContentKeyPolicyPlayReadyPlayRight = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyPlayRight
      Location = Azure::MediaServices::Mgmt::V2018_07_01::Models::Location
      ContentKeyPolicyPlayReadyLicense = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicense
      NoEncryption = Azure::MediaServices::Mgmt::V2018_07_01::Models::NoEncryption
      DefaultKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::DefaultKey
      ContentKeyPolicyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyConfiguration
      EnabledProtocols = Azure::MediaServices::Mgmt::V2018_07_01::Models::EnabledProtocols
      TrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCondition
      CencDrmConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::CencDrmConfiguration
      TransformCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformCollection
      CbcsDrmConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::CbcsDrmConfiguration
      JobError = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobError
      Deinterlace = Azure::MediaServices::Mgmt::V2018_07_01::Models::Deinterlace
      StreamingPolicyCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyCollection
      StreamingLocatorCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorCollection
      IPRange = Azure::MediaServices::Mgmt::V2018_07_01::Models::IPRange
      MediaServiceCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaServiceCollection
      Rectangle = Azure::MediaServices::Mgmt::V2018_07_01::Models::Rectangle
      Filters = Azure::MediaServices::Mgmt::V2018_07_01::Models::Filters
      Layer = Azure::MediaServices::Mgmt::V2018_07_01::Models::Layer
      StreamingPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyWidevineConfiguration
      AssetFileEncryptionMetadata = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFileEncryptionMetadata
      StreamingEndpointListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointListResult
      StreamingEntityScaleUnit = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEntityScaleUnit
      StreamingPolicyContentKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKey
      AssetFilterCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilterCollection
      StreamingEndpointAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointAccessControl
      AkamaiAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiAccessControl
      ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenKey
      ContentKeyPolicyRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestriction
      AkamaiSignatureHeaderAuthenticationKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiSignatureHeaderAuthenticationKey
      OutputFile = Azure::MediaServices::Mgmt::V2018_07_01::Models::OutputFile
      JobErrorDetail = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorDetail
      ListPathsResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListPathsResponse
      LiveEventListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventListResult
      LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventActionInput
      AssetCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetCollection
      SubscriptionMediaServiceCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaServiceCollection
      CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_07_01::Models::CrossSiteAccessPolicies
      LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncoding
      JobCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobCollection
      ContentKeyPolicyTokenClaim = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenClaim
      LiveEventPreview = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreview
      ContentKeyPolicyOption = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOption
      LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreviewAccessControl
      EnvelopeEncryption = Azure::MediaServices::Mgmt::V2018_07_01::Models::EnvelopeEncryption
      LiveEventInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInput
      ContentKeyPolicyPlayReadyContentKeyLocation = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
      LiveEventInputAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputAccessControl
      JobOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutput
      IPAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::IPAccessControl
      TrackSelection = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackSelection
      TransformOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformOutput
      AssetStreamingLocator = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStreamingLocator
      TrackedResource = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackedResource
      AccountFilter = Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilter
      MediaService = Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaService
      ProxyResource = Azure::MediaServices::Mgmt::V2018_07_01::Models::ProxyResource
      Asset = Azure::MediaServices::Mgmt::V2018_07_01::Models::Asset
      SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaService
      ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
      AssetFilter = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilter
      ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOpenRestriction
      ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
      ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicySymmetricTokenKey
      ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownRestriction
      ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyX509CertificateTokenKey
      ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRsaTokenKey
      ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyClearKeyConfiguration
      ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenRestriction
      ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyWidevineConfiguration
      ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownConfiguration
      ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayConfiguration
      ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyConfiguration
      Audio = Azure::MediaServices::Mgmt::V2018_07_01::Models::Audio
      ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicy
      AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioAnalyzerPreset
      AacAudio = Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudio
      CopyVideo = Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyVideo
      AudioOverlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioOverlay
      Image = Azure::MediaServices::Mgmt::V2018_07_01::Models::Image
      Video = Azure::MediaServices::Mgmt::V2018_07_01::Models::Video
      JpgFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgFormat
      ImageFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::ImageFormat
      CopyAudio = Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyAudio
      PngFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngFormat
      H264Layer = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Layer
      VideoLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoLayer
      JpgLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgLayer
      H264Video = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Video
      MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::MultiBitrateFormat
      JpgImage = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgImage
      PngLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngLayer
      Mp4Format = Azure::MediaServices::Mgmt::V2018_07_01::Models::Mp4Format
      BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::BuiltInStandardEncoderPreset
      PngImage = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngImage
      VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoAnalyzerPreset
      StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::StandardEncoderPreset
      VideoOverlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoOverlay
      TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransportStreamFormat
      JobInputClip = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputClip
      Transform = Azure::MediaServices::Mgmt::V2018_07_01::Models::Transform
      JobInputAsset = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputAsset
      JobInputs = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputs
      JobOutputAsset = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutputAsset
      JobInputHttp = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputHttp
      StreamingPolicy = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicy
      Job = Azure::MediaServices::Mgmt::V2018_07_01::Models::Job
      LiveOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutput
      StreamingLocator = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocator
      StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpoint
      LiveEvent = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEvent
      FilterTrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCompareOperation
      FilterTrackPropertyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyType
      MetricAggregationType = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricAggregationType
      MetricUnit = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricUnit
      AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStorageEncryptionFormat
      StorageAccountType = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccountType
      ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
      AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerPermission
      ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentType
      ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicenseType
      ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
      ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenType
      StretchMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::StretchMode
      AacAudioProfile = Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudioProfile
      DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceMode
      DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceParity
      H264VideoProfile = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264VideoProfile
    end

    #
    # MediaServicesManagementClass
    #
    class MediaServicesManagementClass
      attr_reader :account_filters, :operations, :mediaservices, :locations, :assets, :asset_filters, :content_key_policies, :transforms, :jobs, :streaming_policies, :streaming_locators, :live_events, :live_outputs, :streaming_endpoints, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::MediaServices::Mgmt::V2018_07_01::AzureMediaServices.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @account_filters = @client_0.account_filters
        @operations = @client_0.operations
        @mediaservices = @client_0.mediaservices
        @locations = @client_0.locations
        @assets = @client_0.assets
        @asset_filters = @client_0.asset_filters
        @content_key_policies = @client_0.content_key_policies
        @transforms = @client_0.transforms
        @jobs = @client_0.jobs
        @streaming_policies = @client_0.streaming_policies
        @streaming_locators = @client_0.streaming_locators
        @live_events = @client_0.live_events
        @live_outputs = @client_0.live_outputs
        @streaming_endpoints = @client_0.streaming_endpoints

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MediaServices/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def rotation
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Rotation
      end
      def h264_complexity
        Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Complexity
      end
      def entropy_mode
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EntropyMode
      end
      def insights_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::InsightsType
      end
      def encoder_named_preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EncoderNamedPreset
      end
      def priority
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Priority
      end
      def on_error_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::OnErrorType
      end
      def job_error_category
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCategory
      end
      def job_error_code
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCode
      end
      def job_state
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobState
      end
      def job_retry
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobRetry
      end
      def track_property_compare_operation
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCompareOperation
      end
      def track_property_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyType
      end
      def streaming_policy_streaming_protocol
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyStreamingProtocol
      end
      def streaming_locator_content_key_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKeyType
      end
      def live_output_resource_state
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputResourceState
      end
      def encryption_scheme
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EncryptionScheme
      end
      def live_event_encoding_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncodingType
      end
      def live_event_input_protocol
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputProtocol
      end
      def stream_options_flag
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamOptionsFlag
      end
      def live_event_resource_state
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventResourceState
      end
      def streaming_endpoint_resource_state
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointResourceState
      end
      def codec
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Codec
      end
      def presentation_time_range
        Azure::MediaServices::Mgmt::V2018_07_01::Models::PresentationTimeRange
      end
      def content_key_policy_properties
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyProperties
      end
      def first_quality
        Azure::MediaServices::Mgmt::V2018_07_01::Models::FirstQuality
      end
      def filter_track_selection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackSelection
      end
      def streaming_policy_fair_play_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyFairPlayConfiguration
      end
      def odata_error
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ODataError
      end
      def content_key_policy_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyCollection
      end
      def account_filter_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilterCollection
      end
      def format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Format
      end
      def preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Preset
      end
      def resource
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Resource
      end
      def filter_track_property_condition
        Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCondition
      end
      def provider
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Provider
      end
      def streaming_path
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPath
      end
      def metric_dimension
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricDimension
      end
      def streaming_locator_content_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKey
      end
      def service_specification
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ServiceSpecification
      end
      def list_content_keys_response
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContentKeysResponse
      end
      def operation
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Operation
      end
      def overlay
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Overlay
      end
      def entity_name_availability_check_output
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EntityNameAvailabilityCheckOutput
      end
      def common_encryption_cbcs
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCbcs
      end
      def sync_storage_keys_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::SyncStorageKeysInput
      end
      def common_encryption_cenc
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCenc
      end
      def api_error
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ApiError
      end
      def operation_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationCollection
      end
      def live_output_list_result
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputListResult
      end
      def check_name_availability_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CheckNameAvailabilityInput
      end
      def live_event_endpoint
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEndpoint
      end
      def asset_container_sas
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerSas
      end
      def operation_display
        Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationDisplay
      end
      def storage_encrypted_asset_decryption_data
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageEncryptedAssetDecryptionData
      end
      def metric
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Metric
      end
      def list_streaming_locators_response
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ListStreamingLocatorsResponse
      end
      def metric_properties
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricProperties
      end
      def streaming_policy_play_ready_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyPlayReadyConfiguration
      end
      def list_container_sas_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContainerSasInput
      end
      def storage_account
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccount
      end
      def content_key_policy_play_ready_explicit_analog_television_restriction
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
      end
      def job_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInput
      end
      def streaming_policy_content_keys
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKeys
      end
      def hls
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Hls
      end
      def content_key_policy_play_ready_play_right
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyPlayRight
      end
      def location
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Location
      end
      def content_key_policy_play_ready_license
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicense
      end
      def no_encryption
        Azure::MediaServices::Mgmt::V2018_07_01::Models::NoEncryption
      end
      def default_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::DefaultKey
      end
      def content_key_policy_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyConfiguration
      end
      def enabled_protocols
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EnabledProtocols
      end
      def track_property_condition
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCondition
      end
      def cenc_drm_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CencDrmConfiguration
      end
      def transform_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformCollection
      end
      def cbcs_drm_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CbcsDrmConfiguration
      end
      def job_error
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobError
      end
      def deinterlace
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Deinterlace
      end
      def streaming_policy_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyCollection
      end
      def streaming_locator_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorCollection
      end
      def iprange
        Azure::MediaServices::Mgmt::V2018_07_01::Models::IPRange
      end
      def media_service_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaServiceCollection
      end
      def rectangle
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Rectangle
      end
      def filters
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Filters
      end
      def layer
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Layer
      end
      def streaming_policy_widevine_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyWidevineConfiguration
      end
      def asset_file_encryption_metadata
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFileEncryptionMetadata
      end
      def streaming_endpoint_list_result
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointListResult
      end
      def streaming_entity_scale_unit
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEntityScaleUnit
      end
      def streaming_policy_content_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKey
      end
      def asset_filter_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilterCollection
      end
      def streaming_endpoint_access_control
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointAccessControl
      end
      def akamai_access_control
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiAccessControl
      end
      def content_key_policy_restriction_token_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenKey
      end
      def content_key_policy_restriction
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestriction
      end
      def akamai_signature_header_authentication_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiSignatureHeaderAuthenticationKey
      end
      def output_file
        Azure::MediaServices::Mgmt::V2018_07_01::Models::OutputFile
      end
      def job_error_detail
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorDetail
      end
      def list_paths_response
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ListPathsResponse
      end
      def live_event_list_result
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventListResult
      end
      def live_event_action_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventActionInput
      end
      def asset_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetCollection
      end
      def subscription_media_service_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaServiceCollection
      end
      def cross_site_access_policies
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CrossSiteAccessPolicies
      end
      def live_event_encoding
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncoding
      end
      def job_collection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobCollection
      end
      def content_key_policy_token_claim
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenClaim
      end
      def live_event_preview
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreview
      end
      def content_key_policy_option
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOption
      end
      def live_event_preview_access_control
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreviewAccessControl
      end
      def envelope_encryption
        Azure::MediaServices::Mgmt::V2018_07_01::Models::EnvelopeEncryption
      end
      def live_event_input
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInput
      end
      def content_key_policy_play_ready_content_key_location
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
      end
      def live_event_input_access_control
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputAccessControl
      end
      def job_output
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutput
      end
      def ipaccess_control
        Azure::MediaServices::Mgmt::V2018_07_01::Models::IPAccessControl
      end
      def track_selection
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackSelection
      end
      def transform_output
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformOutput
      end
      def asset_streaming_locator
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStreamingLocator
      end
      def tracked_resource
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackedResource
      end
      def account_filter
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilter
      end
      def media_service
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaService
      end
      def proxy_resource
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ProxyResource
      end
      def asset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Asset
      end
      def subscription_media_service
        Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaService
      end
      def content_key_policy_play_ready_content_encryption_key_from_header
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
      end
      def asset_filter
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilter
      end
      def content_key_policy_open_restriction
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOpenRestriction
      end
      def content_key_policy_play_ready_content_encryption_key_from_key_identifier
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
      end
      def content_key_policy_symmetric_token_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicySymmetricTokenKey
      end
      def content_key_policy_unknown_restriction
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownRestriction
      end
      def content_key_policy_x509_certificate_token_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyX509CertificateTokenKey
      end
      def content_key_policy_rsa_token_key
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRsaTokenKey
      end
      def content_key_policy_clear_key_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyClearKeyConfiguration
      end
      def content_key_policy_token_restriction
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenRestriction
      end
      def content_key_policy_widevine_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyWidevineConfiguration
      end
      def content_key_policy_unknown_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownConfiguration
      end
      def content_key_policy_fair_play_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayConfiguration
      end
      def content_key_policy_play_ready_configuration
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyConfiguration
      end
      def audio
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Audio
      end
      def content_key_policy
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicy
      end
      def audio_analyzer_preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioAnalyzerPreset
      end
      def aac_audio
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudio
      end
      def copy_video
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyVideo
      end
      def audio_overlay
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioOverlay
      end
      def image
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Image
      end
      def video
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Video
      end
      def jpg_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgFormat
      end
      def image_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ImageFormat
      end
      def copy_audio
        Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyAudio
      end
      def png_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::PngFormat
      end
      def h264_layer
        Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Layer
      end
      def video_layer
        Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoLayer
      end
      def jpg_layer
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgLayer
      end
      def h264_video
        Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Video
      end
      def multi_bitrate_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MultiBitrateFormat
      end
      def jpg_image
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgImage
      end
      def png_layer
        Azure::MediaServices::Mgmt::V2018_07_01::Models::PngLayer
      end
      def mp4_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Mp4Format
      end
      def built_in_standard_encoder_preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::BuiltInStandardEncoderPreset
      end
      def png_image
        Azure::MediaServices::Mgmt::V2018_07_01::Models::PngImage
      end
      def video_analyzer_preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoAnalyzerPreset
      end
      def standard_encoder_preset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StandardEncoderPreset
      end
      def video_overlay
        Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoOverlay
      end
      def transport_stream_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::TransportStreamFormat
      end
      def job_input_clip
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputClip
      end
      def transform
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Transform
      end
      def job_input_asset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputAsset
      end
      def job_inputs
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputs
      end
      def job_output_asset
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutputAsset
      end
      def job_input_http
        Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputHttp
      end
      def streaming_policy
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicy
      end
      def job
        Azure::MediaServices::Mgmt::V2018_07_01::Models::Job
      end
      def live_output
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutput
      end
      def streaming_locator
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocator
      end
      def streaming_endpoint
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpoint
      end
      def live_event
        Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEvent
      end
      def filter_track_property_compare_operation
        Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCompareOperation
      end
      def filter_track_property_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyType
      end
      def metric_aggregation_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricAggregationType
      end
      def metric_unit
        Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricUnit
      end
      def asset_storage_encryption_format
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStorageEncryptionFormat
      end
      def storage_account_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccountType
      end
      def content_key_policy_play_ready_unknown_output_passing_option
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
      end
      def asset_container_permission
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerPermission
      end
      def content_key_policy_play_ready_content_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentType
      end
      def content_key_policy_play_ready_license_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicenseType
      end
      def content_key_policy_fair_play_rental_and_lease_key_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
      end
      def content_key_policy_restriction_token_type
        Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenType
      end
      def stretch_mode
        Azure::MediaServices::Mgmt::V2018_07_01::Models::StretchMode
      end
      def aac_audio_profile
        Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudioProfile
      end
      def deinterlace_mode
        Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceMode
      end
      def deinterlace_parity
        Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceParity
      end
      def h264_video_profile
        Azure::MediaServices::Mgmt::V2018_07_01::Models::H264VideoProfile
      end
    end
  end
end
