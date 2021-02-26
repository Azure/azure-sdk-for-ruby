# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::MediaServices::Profiles::Latest
  module Mgmt
    AccountFilters = Azure::MediaServices::Mgmt::V2020_05_01::AccountFilters
    Operations = Azure::MediaServices::Mgmt::V2020_05_01::Operations
    Mediaservices = Azure::MediaServices::Mgmt::V2020_05_01::Mediaservices
    PrivateLinkResources = Azure::MediaServices::Mgmt::V2020_05_01::PrivateLinkResources
    PrivateEndpointConnections = Azure::MediaServices::Mgmt::V2020_05_01::PrivateEndpointConnections
    Locations = Azure::MediaServices::Mgmt::V2020_05_01::Locations
    Assets = Azure::MediaServices::Mgmt::V2020_05_01::Assets
    AssetFilters = Azure::MediaServices::Mgmt::V2020_05_01::AssetFilters
    ContentKeyPolicies = Azure::MediaServices::Mgmt::V2020_05_01::ContentKeyPolicies
    Transforms = Azure::MediaServices::Mgmt::V2020_05_01::Transforms
    Jobs = Azure::MediaServices::Mgmt::V2020_05_01::Jobs
    StreamingPolicies = Azure::MediaServices::Mgmt::V2020_05_01::StreamingPolicies
    StreamingLocators = Azure::MediaServices::Mgmt::V2020_05_01::StreamingLocators
    LiveEvents = Azure::MediaServices::Mgmt::V2020_05_01::LiveEvents
    LiveOutputs = Azure::MediaServices::Mgmt::V2020_05_01::LiveOutputs
    StreamingEndpoints = Azure::MediaServices::Mgmt::V2020_05_01::StreamingEndpoints

    module Models
      StreamingPath = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPath
      PresentationTimeRange = Azure::MediaServices::Mgmt::V2020_05_01::Models::PresentationTimeRange
      StreamingLocatorContentKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorContentKey
      FirstQuality = Azure::MediaServices::Mgmt::V2020_05_01::Models::FirstQuality
      CommonEncryptionCenc = Azure::MediaServices::Mgmt::V2020_05_01::Models::CommonEncryptionCenc
      SystemData = Azure::MediaServices::Mgmt::V2020_05_01::Models::SystemData
      CommonEncryptionCbcs = Azure::MediaServices::Mgmt::V2020_05_01::Models::CommonEncryptionCbcs
      AccountFilterCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountFilterCollection
      JobError = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobError
      ApiError = Azure::MediaServices::Mgmt::V2020_05_01::Models::ApiError
      JobErrorDetail = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorDetail
      IPRange = Azure::MediaServices::Mgmt::V2020_05_01::Models::IPRange
      FilterTrackPropertyCondition = Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyCondition
      ClipTime = Azure::MediaServices::Mgmt::V2020_05_01::Models::ClipTime
      FilterTrackSelection = Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackSelection
      OperationDisplay = Azure::MediaServices::Mgmt::V2020_05_01::Models::OperationDisplay
      MetricDimension = Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricDimension
      MetricSpecification = Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricSpecification
      LiveEventInputAccessControl = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputAccessControl
      ServiceSpecification = Azure::MediaServices::Mgmt::V2020_05_01::Models::ServiceSpecification
      ODataError = Azure::MediaServices::Mgmt::V2020_05_01::Models::ODataError
      Operation = Azure::MediaServices::Mgmt::V2020_05_01::Models::Operation
      LiveEventInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInput
      EntityNameAvailabilityCheckOutput = Azure::MediaServices::Mgmt::V2020_05_01::Models::EntityNameAvailabilityCheckOutput
      IPAccessControl = Azure::MediaServices::Mgmt::V2020_05_01::Models::IPAccessControl
      SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::SyncStorageKeysInput
      NoEncryption = Azure::MediaServices::Mgmt::V2020_05_01::Models::NoEncryption
      AccountEncryption = Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountEncryption
      ContentKeyPolicyFairPlayOfflineRentalConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayOfflineRentalConfiguration
      JobInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInput
      EnvelopeEncryption = Azure::MediaServices::Mgmt::V2020_05_01::Models::EnvelopeEncryption
      EdgeUsageDataEventHub = Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgeUsageDataEventHub
      ContentKeyPolicyOption = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyOption
      EdgePolicies = Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgePolicies
      ContentKeyPolicyProperties = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyProperties
      MediaServiceCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaServiceCollection
      StreamingPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyFairPlayConfiguration
      PrivateLinkServiceConnectionState = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionState
      ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyCollection
      ListContentKeysResponse = Azure::MediaServices::Mgmt::V2020_05_01::Models::ListContentKeysResponse
      Preset = Azure::MediaServices::Mgmt::V2020_05_01::Models::Preset
      TransformOutput = Azure::MediaServices::Mgmt::V2020_05_01::Models::TransformOutput
      Codec = Azure::MediaServices::Mgmt::V2020_05_01::Models::Codec
      AssetContainerSas = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetContainerSas
      StreamingPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyWidevineConfiguration
      StorageEncryptedAssetDecryptionData = Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageEncryptedAssetDecryptionData
      StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyPlayReadyConfiguration
      ListStreamingLocatorsResponse = Azure::MediaServices::Mgmt::V2020_05_01::Models::ListStreamingLocatorsResponse
      Layer = Azure::MediaServices::Mgmt::V2020_05_01::Models::Layer
      StreamingPolicyCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyCollection
      StreamingPolicyContentKeys = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyContentKeys
      ListContainerSasInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::ListContainerSasInput
      StreamingPolicyContentKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyContentKey
      ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
      DefaultKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::DefaultKey
      StreamingLocatorCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorCollection
      TrackSelection = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackSelection
      ContentKeyPolicyPlayReadyPlayRight = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyPlayRight
      TrackDescriptor = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackDescriptor
      ContentKeyPolicyPlayReadyLicense = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyLicense
      TrackPropertyCondition = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyCondition
      LiveOutputListResult = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutputListResult
      JobCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobCollection
      ContentKeyPolicyConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyConfiguration
      TransformCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::TransformCollection
      Resource = Azure::MediaServices::Mgmt::V2020_05_01::Models::Resource
      InputDefinition = Azure::MediaServices::Mgmt::V2020_05_01::Models::InputDefinition
      LogSpecification = Azure::MediaServices::Mgmt::V2020_05_01::Models::LogSpecification
      CbcsDrmConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::CbcsDrmConfiguration
      Location = Azure::MediaServices::Mgmt::V2020_05_01::Models::Location
      CencDrmConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::CencDrmConfiguration
      KeyVaultProperties = Azure::MediaServices::Mgmt::V2020_05_01::Models::KeyVaultProperties
      EnabledProtocols = Azure::MediaServices::Mgmt::V2020_05_01::Models::EnabledProtocols
      ListEdgePoliciesInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::ListEdgePoliciesInput
      JobOutput = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobOutput
      OperationCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::OperationCollection
      PrivateEndpoint = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpoint
      Overlay = Azure::MediaServices::Mgmt::V2020_05_01::Models::Overlay
      PrivateLinkResourceListResult = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkResourceListResult
      StreamingEndpointListResult = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointListResult
      AssetStreamingLocator = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetStreamingLocator
      StreamingEntityScaleUnit = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEntityScaleUnit
      AssetCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetCollection
      StreamingEndpointAccessControl = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointAccessControl
      ContentKeyPolicyPlayReadyContentKeyLocation = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
      Format = Azure::MediaServices::Mgmt::V2020_05_01::Models::Format
      ContentKeyPolicyTokenClaim = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyTokenClaim
      AkamaiAccessControl = Azure::MediaServices::Mgmt::V2020_05_01::Models::AkamaiAccessControl
      LiveEventEndpoint = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEndpoint
      AkamaiSignatureHeaderAuthenticationKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::AkamaiSignatureHeaderAuthenticationKey
      Provider = Azure::MediaServices::Mgmt::V2020_05_01::Models::Provider
      LiveEventListResult = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventListResult
      StorageAccount = Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAccount
      LiveEventActionInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventActionInput
      EdgeUsageDataCollectionPolicy = Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgeUsageDataCollectionPolicy
      Deinterlace = Azure::MediaServices::Mgmt::V2020_05_01::Models::Deinterlace
      PrivateEndpointConnectionListResult = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnectionListResult
      Rectangle = Azure::MediaServices::Mgmt::V2020_05_01::Models::Rectangle
      ListPathsResponse = Azure::MediaServices::Mgmt::V2020_05_01::Models::ListPathsResponse
      Filters = Azure::MediaServices::Mgmt::V2020_05_01::Models::Filters
      Hls = Azure::MediaServices::Mgmt::V2020_05_01::Models::Hls
      CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2020_05_01::Models::CrossSiteAccessPolicies
      ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestrictionTokenKey
      LiveEventTranscription = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventTranscription
      MediaServiceIdentity = Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaServiceIdentity
      LiveEventOutputTranscriptionTrack = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventOutputTranscriptionTrack
      AssetFileEncryptionMetadata = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFileEncryptionMetadata
      LiveEventInputTrackSelection = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputTrackSelection
      ContentKeyPolicyRestriction = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestriction
      LiveEventEncoding = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEncoding
      CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2020_05_01::Models::CheckNameAvailabilityInput
      OutputFile = Azure::MediaServices::Mgmt::V2020_05_01::Models::OutputFile
      Properties = Azure::MediaServices::Mgmt::V2020_05_01::Models::Properties
      LiveEventPreview = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventPreview
      AssetFilterCollection = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFilterCollection
      LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventPreviewAccessControl
      AccountFilter = Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountFilter
      TrackedResource = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackedResource
      AzureEntityResource = Azure::MediaServices::Mgmt::V2020_05_01::Models::AzureEntityResource
      ProxyResource = Azure::MediaServices::Mgmt::V2020_05_01::Models::ProxyResource
      MediaService = Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaService
      PrivateEndpointConnection = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnection
      PrivateLinkResource = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkResource
      Asset = Azure::MediaServices::Mgmt::V2020_05_01::Models::Asset
      AssetFilter = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFilter
      ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
      ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
      ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyOpenRestriction
      ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyUnknownRestriction
      ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicySymmetricTokenKey
      ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRsaTokenKey
      ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyX509CertificateTokenKey
      ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyTokenRestriction
      ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyClearKeyConfiguration
      ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyUnknownConfiguration
      ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyWidevineConfiguration
      ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyConfiguration
      ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayConfiguration
      ContentKeyPolicy = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicy
      Audio = Azure::MediaServices::Mgmt::V2020_05_01::Models::Audio
      AacAudio = Azure::MediaServices::Mgmt::V2020_05_01::Models::AacAudio
      H265VideoLayer = Azure::MediaServices::Mgmt::V2020_05_01::Models::H265VideoLayer
      H265Layer = Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Layer
      Video = Azure::MediaServices::Mgmt::V2020_05_01::Models::Video
      H265Video = Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Video
      AudioTrackDescriptor = Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioTrackDescriptor
      SelectAudioTrackByAttribute = Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectAudioTrackByAttribute
      SelectAudioTrackById = Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectAudioTrackById
      FromAllInputFile = Azure::MediaServices::Mgmt::V2020_05_01::Models::FromAllInputFile
      FromEachInputFile = Azure::MediaServices::Mgmt::V2020_05_01::Models::FromEachInputFile
      InputFile = Azure::MediaServices::Mgmt::V2020_05_01::Models::InputFile
      FaceDetectorPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::FaceDetectorPreset
      AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioAnalyzerPreset
      AudioOverlay = Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioOverlay
      CopyVideo = Azure::MediaServices::Mgmt::V2020_05_01::Models::CopyVideo
      Image = Azure::MediaServices::Mgmt::V2020_05_01::Models::Image
      ImageFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::ImageFormat
      JpgFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgFormat
      PngFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::PngFormat
      CopyAudio = Azure::MediaServices::Mgmt::V2020_05_01::Models::CopyAudio
      VideoLayer = Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoLayer
      H264Layer = Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Layer
      H264Video = Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Video
      JpgLayer = Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgLayer
      JpgImage = Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgImage
      MultiBitrateFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::MultiBitrateFormat
      Mp4Format = Azure::MediaServices::Mgmt::V2020_05_01::Models::Mp4Format
      PngLayer = Azure::MediaServices::Mgmt::V2020_05_01::Models::PngLayer
      PngImage = Azure::MediaServices::Mgmt::V2020_05_01::Models::PngImage
      BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::BuiltInStandardEncoderPreset
      StandardEncoderPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::StandardEncoderPreset
      VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoAnalyzerPreset
      TransportStreamFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::TransportStreamFormat
      VideoOverlay = Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoOverlay
      VideoTrackDescriptor = Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoTrackDescriptor
      SelectVideoTrackByAttribute = Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectVideoTrackByAttribute
      SelectVideoTrackById = Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectVideoTrackById
      Transform = Azure::MediaServices::Mgmt::V2020_05_01::Models::Transform
      JobInputClip = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputClip
      AbsoluteClipTime = Azure::MediaServices::Mgmt::V2020_05_01::Models::AbsoluteClipTime
      UtcClipTime = Azure::MediaServices::Mgmt::V2020_05_01::Models::UtcClipTime
      JobInputs = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputs
      JobInputAsset = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputAsset
      JobInputHttp = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputHttp
      JobOutputAsset = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobOutputAsset
      JobInputSequence = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputSequence
      Job = Azure::MediaServices::Mgmt::V2020_05_01::Models::Job
      StreamingPolicy = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicy
      StreamingLocator = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocator
      LiveOutput = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutput
      LiveEvent = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEvent
      StreamingEndpoint = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpoint
      FilterTrackPropertyType = Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyType
      FilterTrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyCompareOperation
      CreatedByType = Azure::MediaServices::Mgmt::V2020_05_01::Models::CreatedByType
      MetricUnit = Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricUnit
      MetricAggregationType = Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricAggregationType
      StorageAccountType = Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAccountType
      StorageAuthentication = Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAuthentication
      AccountEncryptionKeyType = Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountEncryptionKeyType
      ManagedIdentityType = Azure::MediaServices::Mgmt::V2020_05_01::Models::ManagedIdentityType
      PrivateEndpointConnectionProvisioningState = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnectionProvisioningState
      PrivateEndpointServiceConnectionStatus = Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointServiceConnectionStatus
      AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetStorageEncryptionFormat
      AssetContainerPermission = Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetContainerPermission
      ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
      ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyLicenseType
      ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentType
      ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestrictionTokenType
      ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
      AacAudioProfile = Azure::MediaServices::Mgmt::V2020_05_01::Models::AacAudioProfile
      H265VideoProfile = Azure::MediaServices::Mgmt::V2020_05_01::Models::H265VideoProfile
      StretchMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::StretchMode
      VideoSyncMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoSyncMode
      H265Complexity = Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Complexity
      ChannelMapping = Azure::MediaServices::Mgmt::V2020_05_01::Models::ChannelMapping
      TrackAttribute = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackAttribute
      AttributeFilter = Azure::MediaServices::Mgmt::V2020_05_01::Models::AttributeFilter
      AnalysisResolution = Azure::MediaServices::Mgmt::V2020_05_01::Models::AnalysisResolution
      FaceRedactorMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::FaceRedactorMode
      BlurType = Azure::MediaServices::Mgmt::V2020_05_01::Models::BlurType
      AudioAnalysisMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioAnalysisMode
      DeinterlaceParity = Azure::MediaServices::Mgmt::V2020_05_01::Models::DeinterlaceParity
      DeinterlaceMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::DeinterlaceMode
      Rotation = Azure::MediaServices::Mgmt::V2020_05_01::Models::Rotation
      H264VideoProfile = Azure::MediaServices::Mgmt::V2020_05_01::Models::H264VideoProfile
      EntropyMode = Azure::MediaServices::Mgmt::V2020_05_01::Models::EntropyMode
      H264Complexity = Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Complexity
      EncoderNamedPreset = Azure::MediaServices::Mgmt::V2020_05_01::Models::EncoderNamedPreset
      InsightsType = Azure::MediaServices::Mgmt::V2020_05_01::Models::InsightsType
      OnErrorType = Azure::MediaServices::Mgmt::V2020_05_01::Models::OnErrorType
      Priority = Azure::MediaServices::Mgmt::V2020_05_01::Models::Priority
      JobErrorCode = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorCode
      JobErrorCategory = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorCategory
      JobRetry = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobRetry
      JobState = Azure::MediaServices::Mgmt::V2020_05_01::Models::JobState
      TrackPropertyType = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyType
      TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyCompareOperation
      StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorContentKeyType
      StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyStreamingProtocol
      EncryptionScheme = Azure::MediaServices::Mgmt::V2020_05_01::Models::EncryptionScheme
      LiveOutputResourceState = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutputResourceState
      LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputProtocol
      LiveEventEncodingType = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEncodingType
      LiveEventResourceState = Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventResourceState
      StreamOptionsFlag = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamOptionsFlag
      StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointResourceState
    end

    #
    # MediaServicesManagementClass
    #
    class MediaServicesManagementClass
      attr_reader :account_filters, :operations, :mediaservices, :private_link_resources, :private_endpoint_connections, :locations, :assets, :asset_filters, :content_key_policies, :transforms, :jobs, :streaming_policies, :streaming_locators, :live_events, :live_outputs, :streaming_endpoints, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::MediaServices::Mgmt::V2020_05_01::AzureMediaServices.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @account_filters = @client_0.account_filters
        @operations = @client_0.operations
        @mediaservices = @client_0.mediaservices
        @private_link_resources = @client_0.private_link_resources
        @private_endpoint_connections = @client_0.private_endpoint_connections
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
      def streaming_path
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPath
      end
      def presentation_time_range
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PresentationTimeRange
      end
      def streaming_locator_content_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorContentKey
      end
      def first_quality
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FirstQuality
      end
      def common_encryption_cenc
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CommonEncryptionCenc
      end
      def system_data
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SystemData
      end
      def common_encryption_cbcs
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CommonEncryptionCbcs
      end
      def account_filter_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountFilterCollection
      end
      def job_error
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobError
      end
      def api_error
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ApiError
      end
      def job_error_detail
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorDetail
      end
      def iprange
        Azure::MediaServices::Mgmt::V2020_05_01::Models::IPRange
      end
      def filter_track_property_condition
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyCondition
      end
      def clip_time
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ClipTime
      end
      def filter_track_selection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackSelection
      end
      def operation_display
        Azure::MediaServices::Mgmt::V2020_05_01::Models::OperationDisplay
      end
      def metric_dimension
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricDimension
      end
      def metric_specification
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricSpecification
      end
      def live_event_input_access_control
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputAccessControl
      end
      def service_specification
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ServiceSpecification
      end
      def odata_error
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ODataError
      end
      def operation
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Operation
      end
      def live_event_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInput
      end
      def entity_name_availability_check_output
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EntityNameAvailabilityCheckOutput
      end
      def ipaccess_control
        Azure::MediaServices::Mgmt::V2020_05_01::Models::IPAccessControl
      end
      def sync_storage_keys_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SyncStorageKeysInput
      end
      def no_encryption
        Azure::MediaServices::Mgmt::V2020_05_01::Models::NoEncryption
      end
      def account_encryption
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountEncryption
      end
      def content_key_policy_fair_play_offline_rental_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayOfflineRentalConfiguration
      end
      def job_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInput
      end
      def envelope_encryption
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EnvelopeEncryption
      end
      def edge_usage_data_event_hub
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgeUsageDataEventHub
      end
      def content_key_policy_option
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyOption
      end
      def edge_policies
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgePolicies
      end
      def content_key_policy_properties
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyProperties
      end
      def media_service_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaServiceCollection
      end
      def streaming_policy_fair_play_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyFairPlayConfiguration
      end
      def private_link_service_connection_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionState
      end
      def content_key_policy_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyCollection
      end
      def list_content_keys_response
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ListContentKeysResponse
      end
      def preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Preset
      end
      def transform_output
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TransformOutput
      end
      def codec
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Codec
      end
      def asset_container_sas
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetContainerSas
      end
      def streaming_policy_widevine_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyWidevineConfiguration
      end
      def storage_encrypted_asset_decryption_data
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageEncryptedAssetDecryptionData
      end
      def streaming_policy_play_ready_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyPlayReadyConfiguration
      end
      def list_streaming_locators_response
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ListStreamingLocatorsResponse
      end
      def layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Layer
      end
      def streaming_policy_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyCollection
      end
      def streaming_policy_content_keys
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyContentKeys
      end
      def list_container_sas_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ListContainerSasInput
      end
      def streaming_policy_content_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyContentKey
      end
      def content_key_policy_play_ready_explicit_analog_television_restriction
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
      end
      def default_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::DefaultKey
      end
      def streaming_locator_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorCollection
      end
      def track_selection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackSelection
      end
      def content_key_policy_play_ready_play_right
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyPlayRight
      end
      def track_descriptor
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackDescriptor
      end
      def content_key_policy_play_ready_license
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyLicense
      end
      def track_property_condition
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyCondition
      end
      def live_output_list_result
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutputListResult
      end
      def job_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobCollection
      end
      def content_key_policy_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyConfiguration
      end
      def transform_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TransformCollection
      end
      def resource
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Resource
      end
      def input_definition
        Azure::MediaServices::Mgmt::V2020_05_01::Models::InputDefinition
      end
      def log_specification
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LogSpecification
      end
      def cbcs_drm_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CbcsDrmConfiguration
      end
      def location
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Location
      end
      def cenc_drm_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CencDrmConfiguration
      end
      def key_vault_properties
        Azure::MediaServices::Mgmt::V2020_05_01::Models::KeyVaultProperties
      end
      def enabled_protocols
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EnabledProtocols
      end
      def list_edge_policies_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ListEdgePoliciesInput
      end
      def job_output
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobOutput
      end
      def operation_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::OperationCollection
      end
      def private_endpoint
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpoint
      end
      def overlay
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Overlay
      end
      def private_link_resource_list_result
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkResourceListResult
      end
      def streaming_endpoint_list_result
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointListResult
      end
      def asset_streaming_locator
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetStreamingLocator
      end
      def streaming_entity_scale_unit
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEntityScaleUnit
      end
      def asset_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetCollection
      end
      def streaming_endpoint_access_control
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointAccessControl
      end
      def content_key_policy_play_ready_content_key_location
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
      end
      def format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Format
      end
      def content_key_policy_token_claim
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyTokenClaim
      end
      def akamai_access_control
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AkamaiAccessControl
      end
      def live_event_endpoint
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEndpoint
      end
      def akamai_signature_header_authentication_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AkamaiSignatureHeaderAuthenticationKey
      end
      def provider
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Provider
      end
      def live_event_list_result
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventListResult
      end
      def storage_account
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAccount
      end
      def live_event_action_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventActionInput
      end
      def edge_usage_data_collection_policy
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EdgeUsageDataCollectionPolicy
      end
      def deinterlace
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Deinterlace
      end
      def private_endpoint_connection_list_result
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnectionListResult
      end
      def rectangle
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Rectangle
      end
      def list_paths_response
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ListPathsResponse
      end
      def filters
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Filters
      end
      def hls
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Hls
      end
      def cross_site_access_policies
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CrossSiteAccessPolicies
      end
      def content_key_policy_restriction_token_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestrictionTokenKey
      end
      def live_event_transcription
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventTranscription
      end
      def media_service_identity
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaServiceIdentity
      end
      def live_event_output_transcription_track
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventOutputTranscriptionTrack
      end
      def asset_file_encryption_metadata
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFileEncryptionMetadata
      end
      def live_event_input_track_selection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputTrackSelection
      end
      def content_key_policy_restriction
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestriction
      end
      def live_event_encoding
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEncoding
      end
      def check_name_availability_input
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CheckNameAvailabilityInput
      end
      def output_file
        Azure::MediaServices::Mgmt::V2020_05_01::Models::OutputFile
      end
      def properties
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Properties
      end
      def live_event_preview
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventPreview
      end
      def asset_filter_collection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFilterCollection
      end
      def live_event_preview_access_control
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventPreviewAccessControl
      end
      def account_filter
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountFilter
      end
      def tracked_resource
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ProxyResource
      end
      def media_service
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MediaService
      end
      def private_endpoint_connection
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnection
      end
      def private_link_resource
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateLinkResource
      end
      def asset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Asset
      end
      def asset_filter
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetFilter
      end
      def content_key_policy_play_ready_content_encryption_key_from_header
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
      end
      def content_key_policy_play_ready_content_encryption_key_from_key_identifier
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
      end
      def content_key_policy_open_restriction
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyOpenRestriction
      end
      def content_key_policy_unknown_restriction
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyUnknownRestriction
      end
      def content_key_policy_symmetric_token_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicySymmetricTokenKey
      end
      def content_key_policy_rsa_token_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRsaTokenKey
      end
      def content_key_policy_x509_certificate_token_key
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyX509CertificateTokenKey
      end
      def content_key_policy_token_restriction
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyTokenRestriction
      end
      def content_key_policy_clear_key_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyClearKeyConfiguration
      end
      def content_key_policy_unknown_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyUnknownConfiguration
      end
      def content_key_policy_widevine_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyWidevineConfiguration
      end
      def content_key_policy_play_ready_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyConfiguration
      end
      def content_key_policy_fair_play_configuration
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayConfiguration
      end
      def content_key_policy
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicy
      end
      def audio
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Audio
      end
      def aac_audio
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AacAudio
      end
      def h265_video_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H265VideoLayer
      end
      def h265_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Layer
      end
      def video
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Video
      end
      def h265_video
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Video
      end
      def audio_track_descriptor
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioTrackDescriptor
      end
      def select_audio_track_by_attribute
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectAudioTrackByAttribute
      end
      def select_audio_track_by_id
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectAudioTrackById
      end
      def from_all_input_file
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FromAllInputFile
      end
      def from_each_input_file
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FromEachInputFile
      end
      def input_file
        Azure::MediaServices::Mgmt::V2020_05_01::Models::InputFile
      end
      def face_detector_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FaceDetectorPreset
      end
      def audio_analyzer_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioAnalyzerPreset
      end
      def audio_overlay
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioOverlay
      end
      def copy_video
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CopyVideo
      end
      def image
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Image
      end
      def image_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ImageFormat
      end
      def jpg_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgFormat
      end
      def png_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PngFormat
      end
      def copy_audio
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CopyAudio
      end
      def video_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoLayer
      end
      def h264_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Layer
      end
      def h264_video
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Video
      end
      def jpg_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgLayer
      end
      def jpg_image
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JpgImage
      end
      def multi_bitrate_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MultiBitrateFormat
      end
      def mp4_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Mp4Format
      end
      def png_layer
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PngLayer
      end
      def png_image
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PngImage
      end
      def built_in_standard_encoder_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::BuiltInStandardEncoderPreset
      end
      def standard_encoder_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StandardEncoderPreset
      end
      def video_analyzer_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoAnalyzerPreset
      end
      def transport_stream_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TransportStreamFormat
      end
      def video_overlay
        Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoOverlay
      end
      def video_track_descriptor
        Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoTrackDescriptor
      end
      def select_video_track_by_attribute
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectVideoTrackByAttribute
      end
      def select_video_track_by_id
        Azure::MediaServices::Mgmt::V2020_05_01::Models::SelectVideoTrackById
      end
      def transform
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Transform
      end
      def job_input_clip
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputClip
      end
      def absolute_clip_time
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AbsoluteClipTime
      end
      def utc_clip_time
        Azure::MediaServices::Mgmt::V2020_05_01::Models::UtcClipTime
      end
      def job_inputs
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputs
      end
      def job_input_asset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputAsset
      end
      def job_input_http
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputHttp
      end
      def job_output_asset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobOutputAsset
      end
      def job_input_sequence
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobInputSequence
      end
      def job
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Job
      end
      def streaming_policy
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicy
      end
      def streaming_locator
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocator
      end
      def live_output
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutput
      end
      def live_event
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEvent
      end
      def streaming_endpoint
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpoint
      end
      def filter_track_property_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyType
      end
      def filter_track_property_compare_operation
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FilterTrackPropertyCompareOperation
      end
      def created_by_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::CreatedByType
      end
      def metric_unit
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricUnit
      end
      def metric_aggregation_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::MetricAggregationType
      end
      def storage_account_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAccountType
      end
      def storage_authentication
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StorageAuthentication
      end
      def account_encryption_key_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AccountEncryptionKeyType
      end
      def managed_identity_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ManagedIdentityType
      end
      def private_endpoint_connection_provisioning_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointConnectionProvisioningState
      end
      def private_endpoint_service_connection_status
        Azure::MediaServices::Mgmt::V2020_05_01::Models::PrivateEndpointServiceConnectionStatus
      end
      def asset_storage_encryption_format
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetStorageEncryptionFormat
      end
      def asset_container_permission
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AssetContainerPermission
      end
      def content_key_policy_play_ready_unknown_output_passing_option
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
      end
      def content_key_policy_play_ready_license_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyLicenseType
      end
      def content_key_policy_play_ready_content_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyPlayReadyContentType
      end
      def content_key_policy_restriction_token_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyRestrictionTokenType
      end
      def content_key_policy_fair_play_rental_and_lease_key_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
      end
      def aac_audio_profile
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AacAudioProfile
      end
      def h265_video_profile
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H265VideoProfile
      end
      def stretch_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StretchMode
      end
      def video_sync_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::VideoSyncMode
      end
      def h265_complexity
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H265Complexity
      end
      def channel_mapping
        Azure::MediaServices::Mgmt::V2020_05_01::Models::ChannelMapping
      end
      def track_attribute
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackAttribute
      end
      def attribute_filter
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AttributeFilter
      end
      def analysis_resolution
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AnalysisResolution
      end
      def face_redactor_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::FaceRedactorMode
      end
      def blur_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::BlurType
      end
      def audio_analysis_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::AudioAnalysisMode
      end
      def deinterlace_parity
        Azure::MediaServices::Mgmt::V2020_05_01::Models::DeinterlaceParity
      end
      def deinterlace_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::DeinterlaceMode
      end
      def rotation
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Rotation
      end
      def h264_video_profile
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H264VideoProfile
      end
      def entropy_mode
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EntropyMode
      end
      def h264_complexity
        Azure::MediaServices::Mgmt::V2020_05_01::Models::H264Complexity
      end
      def encoder_named_preset
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EncoderNamedPreset
      end
      def insights_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::InsightsType
      end
      def on_error_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::OnErrorType
      end
      def priority
        Azure::MediaServices::Mgmt::V2020_05_01::Models::Priority
      end
      def job_error_code
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorCode
      end
      def job_error_category
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobErrorCategory
      end
      def job_retry
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobRetry
      end
      def job_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::JobState
      end
      def track_property_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyType
      end
      def track_property_compare_operation
        Azure::MediaServices::Mgmt::V2020_05_01::Models::TrackPropertyCompareOperation
      end
      def streaming_locator_content_key_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingLocatorContentKeyType
      end
      def streaming_policy_streaming_protocol
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingPolicyStreamingProtocol
      end
      def encryption_scheme
        Azure::MediaServices::Mgmt::V2020_05_01::Models::EncryptionScheme
      end
      def live_output_resource_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveOutputResourceState
      end
      def live_event_input_protocol
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventInputProtocol
      end
      def live_event_encoding_type
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventEncodingType
      end
      def live_event_resource_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::LiveEventResourceState
      end
      def stream_options_flag
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamOptionsFlag
      end
      def streaming_endpoint_resource_state
        Azure::MediaServices::Mgmt::V2020_05_01::Models::StreamingEndpointResourceState
      end
    end
  end
end
