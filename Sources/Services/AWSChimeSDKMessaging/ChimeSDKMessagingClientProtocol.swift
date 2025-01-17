// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// The Amazon Chime SDK Messaging APIs in this section allow software developers to send and receive messages in custom messaging applications. These APIs depend on the frameworks provided by the Amazon Chime SDK Identity APIs. For more information about the messaging APIs, see [Amazon Chime SDK messaging](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html).
public protocol ChimeSDKMessagingClientProtocol {
    /// Associates a channel flow with a channel. Once associated, all messages to that channel go through channel flow processors. To stop processing, use the DisassociateChannelFlow API. Only administrators or channel moderators can associate a channel flow. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func associateChannelFlow(input: AssociateChannelFlowInput) async throws -> AssociateChannelFlowOutputResponse
    /// Adds a specified number of users and bots to a channel.
    func batchCreateChannelMembership(input: BatchCreateChannelMembershipInput) async throws -> BatchCreateChannelMembershipOutputResponse
    /// Calls back Chime SDK Messaging with a processing response message. This should be invoked from the processor Lambda. This is a developer API. You can return one of the following processing responses:
    ///
    /// * Update message content or metadata
    ///
    /// * Deny a message
    ///
    /// * Make no changes to the message
    func channelFlowCallback(input: ChannelFlowCallbackInput) async throws -> ChannelFlowCallbackOutputResponse
    /// Creates a channel to which you can add users and send messages. Restriction: You can't change a channel's privacy. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// Permanently bans a member from a channel. Moderators can't add banned members to a channel. To undo a ban, you first have to DeleteChannelBan, and then CreateChannelMembership. Bans are cleaned up when you delete users or channels. If you ban a user who is already part of a channel, that user is automatically kicked from the channel. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func createChannelBan(input: CreateChannelBanInput) async throws -> CreateChannelBanOutputResponse
    /// Creates a channel flow, a container for processors. Processors are AWS Lambda functions that perform actions on chat messages, such as stripping out profanity. You can associate channel flows with channels, and the processors in the channel flow then take action on all messages sent to that channel. This is a developer API. Channel flows process the following items:
    ///
    /// * New and updated messages
    ///
    /// * Persistent and non-persistent messages
    ///
    /// * The Standard message type
    ///
    ///
    /// Channel flows don't process Control or System messages. For more information about the message types provided by Chime SDK Messaging, refer to [Message types](https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types) in the Amazon Chime developer guide.
    func createChannelFlow(input: CreateChannelFlowInput) async throws -> CreateChannelFlowOutputResponse
    /// Adds a member to a channel. The InvitedBy field in ChannelMembership is derived from the request header. A channel member can:
    ///
    /// * List messages
    ///
    /// * Send messages
    ///
    /// * Receive messages
    ///
    /// * Edit their own messages
    ///
    /// * Leave the channel
    ///
    ///
    /// Privacy settings impact this action as follows:
    ///
    /// * Public Channels: You do not need to be a member to list messages, but you must be a member to send messages.
    ///
    /// * Private Channels: You must be a member to list or send messages.
    ///
    ///
    /// The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUserArn or AppInstanceBot that makes the API call as the value in the header.
    func createChannelMembership(input: CreateChannelMembershipInput) async throws -> CreateChannelMembershipOutputResponse
    /// Creates a new ChannelModerator. A channel moderator can:
    ///
    /// * Add and remove other members of the channel.
    ///
    /// * Add and remove other moderators of the channel.
    ///
    /// * Add and remove user bans for the channel.
    ///
    /// * Redact messages in the channel.
    ///
    /// * List messages in the channel.
    ///
    ///
    /// The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBotof the user that makes the API call as the value in the header.
    func createChannelModerator(input: CreateChannelModeratorInput) async throws -> CreateChannelModeratorOutputResponse
    /// Immediately makes a channel and its memberships inaccessible and marks them for deletion. This is an irreversible process. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUserArn or AppInstanceBot that makes the API call as the value in the header.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// Removes a member from a channel's ban list. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func deleteChannelBan(input: DeleteChannelBanInput) async throws -> DeleteChannelBanOutputResponse
    /// Deletes a channel flow, an irreversible process. This is a developer API. This API works only when the channel flow is not associated with any channel. To get a list of all channels that a channel flow is associated with, use the ListChannelsAssociatedWithChannelFlow API. Use the DisassociateChannelFlow API to disassociate a channel flow from all channels.
    func deleteChannelFlow(input: DeleteChannelFlowInput) async throws -> DeleteChannelFlowOutputResponse
    /// Removes a member from a channel. The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    func deleteChannelMembership(input: DeleteChannelMembershipInput) async throws -> DeleteChannelMembershipOutputResponse
    /// Deletes a channel message. Only admins can perform this action. Deletion makes messages inaccessible immediately. A background process deletes any revisions created by UpdateChannelMessage. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func deleteChannelMessage(input: DeleteChannelMessageInput) async throws -> DeleteChannelMessageOutputResponse
    /// Deletes a channel moderator. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func deleteChannelModerator(input: DeleteChannelModeratorInput) async throws -> DeleteChannelModeratorOutputResponse
    /// Deletes the streaming configurations for an AppInstance. For more information, see [Streaming messaging data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html) in the Amazon Chime SDK Developer Guide.
    func deleteMessagingStreamingConfigurations(input: DeleteMessagingStreamingConfigurationsInput) async throws -> DeleteMessagingStreamingConfigurationsOutputResponse
    /// Returns the full details of a channel in an Amazon Chime AppInstance. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    /// Returns the full details of a channel ban. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func describeChannelBan(input: DescribeChannelBanInput) async throws -> DescribeChannelBanOutputResponse
    /// Returns the full details of a channel flow in an Amazon Chime AppInstance. This is a developer API.
    func describeChannelFlow(input: DescribeChannelFlowInput) async throws -> DescribeChannelFlowOutputResponse
    /// Returns the full details of a user's channel membership. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func describeChannelMembership(input: DescribeChannelMembershipInput) async throws -> DescribeChannelMembershipOutputResponse
    /// Returns the details of a channel based on the membership of the specified AppInstanceUser or AppInstanceBot. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func describeChannelMembershipForAppInstanceUser(input: DescribeChannelMembershipForAppInstanceUserInput) async throws -> DescribeChannelMembershipForAppInstanceUserOutputResponse
    /// Returns the full details of a channel moderated by the specified AppInstanceUser or AppInstanceBot. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func describeChannelModeratedByAppInstanceUser(input: DescribeChannelModeratedByAppInstanceUserInput) async throws -> DescribeChannelModeratedByAppInstanceUserOutputResponse
    /// Returns the full details of a single ChannelModerator. The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    func describeChannelModerator(input: DescribeChannelModeratorInput) async throws -> DescribeChannelModeratorOutputResponse
    /// Disassociates a channel flow from all its channels. Once disassociated, all messages to that channel stop going through the channel flow processor. Only administrators or channel moderators can disassociate a channel flow. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func disassociateChannelFlow(input: DisassociateChannelFlowInput) async throws -> DisassociateChannelFlowOutputResponse
    /// Gets the membership preferences of an AppInstanceUser or AppInstanceBot for the specified channel. A user or a bot must be a member of the channel and own the membership to be able to retrieve membership preferences. Users or bots in the AppInstanceAdmin and channel moderator roles can't retrieve preferences for other users or bots. Banned users or bots can't retrieve membership preferences for the channel from which they are banned. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func getChannelMembershipPreferences(input: GetChannelMembershipPreferencesInput) async throws -> GetChannelMembershipPreferencesOutputResponse
    /// Gets the full details of a channel message. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func getChannelMessage(input: GetChannelMessageInput) async throws -> GetChannelMessageOutputResponse
    /// Gets message status for a specified messageId. Use this API to determine the intermediate status of messages going through channel flow processing. The API provides an alternative to retrieving message status if the event was not received because a client wasn't connected to a websocket. Messages can have any one of these statuses. SENT Message processed successfully PENDING Ongoing processing FAILED Processing failed DENIED Messasge denied by the processor
    ///
    /// * This API does not return statuses for denied messages, because we don't store them once the processor denies them.
    ///
    /// * Only the message sender can invoke this API.
    ///
    /// * The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func getChannelMessageStatus(input: GetChannelMessageStatusInput) async throws -> GetChannelMessageStatusOutputResponse
    /// The details of the endpoint for the messaging session.
    func getMessagingSessionEndpoint(input: GetMessagingSessionEndpointInput) async throws -> GetMessagingSessionEndpointOutputResponse
    /// Retrieves the data streaming configuration for an AppInstance. For more information, see [Streaming messaging data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html) in the Amazon Chime SDK Developer Guide.
    func getMessagingStreamingConfigurations(input: GetMessagingStreamingConfigurationsInput) async throws -> GetMessagingStreamingConfigurationsOutputResponse
    /// Lists all the users and bots banned from a particular channel. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannelBans(input: ListChannelBansInput) async throws -> ListChannelBansOutputResponse
    /// Returns a paginated lists of all the channel flows created under a single Chime. This is a developer API.
    func listChannelFlows(input: ListChannelFlowsInput) async throws -> ListChannelFlowsOutputResponse
    /// Lists all channel memberships in a channel. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header. If you want to list the channels to which a specific app instance user belongs, see the [ListChannelMembershipsForAppInstanceUser](https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html) API.
    func listChannelMemberships(input: ListChannelMembershipsInput) async throws -> ListChannelMembershipsOutputResponse
    /// Lists all channels that anr AppInstanceUser or AppInstanceBot is a part of. Only an AppInstanceAdmin can call the API with a user ARN that is not their own. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannelMembershipsForAppInstanceUser(input: ListChannelMembershipsForAppInstanceUserInput) async throws -> ListChannelMembershipsForAppInstanceUserOutputResponse
    /// List all the messages in a channel. Returns a paginated list of ChannelMessages. By default, sorted by creation timestamp in descending order. Redacted messages appear in the results as empty, since they are only redacted, not deleted. Deleted messages do not appear in the results. This action always returns the latest version of an edited message. Also, the x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannelMessages(input: ListChannelMessagesInput) async throws -> ListChannelMessagesOutputResponse
    /// Lists all the moderators for a channel. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannelModerators(input: ListChannelModeratorsInput) async throws -> ListChannelModeratorsOutputResponse
    /// Lists all Channels created under a single Chime App as a paginated list. You can specify filters to narrow results. Functionality & restrictions
    ///
    /// * Use privacy = PUBLIC to retrieve all public channels in the account.
    ///
    /// * Only an AppInstanceAdmin can set privacy = PRIVATE to list the private channels in an account.
    ///
    ///
    /// The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// Lists all channels associated with a specified channel flow. You can associate a channel flow with multiple channels, but you can only associate a channel with one channel flow. This is a developer API.
    func listChannelsAssociatedWithChannelFlow(input: ListChannelsAssociatedWithChannelFlowInput) async throws -> ListChannelsAssociatedWithChannelFlowOutputResponse
    /// A list of the channels moderated by an AppInstanceUser. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func listChannelsModeratedByAppInstanceUser(input: ListChannelsModeratedByAppInstanceUserInput) async throws -> ListChannelsModeratedByAppInstanceUserOutputResponse
    /// Lists all the SubChannels in an elastic channel when given a channel ID. Available only to the app instance admins and channel moderators of elastic channels.
    func listSubChannels(input: ListSubChannelsInput) async throws -> ListSubChannelsOutputResponse
    /// Lists the tags applied to an Amazon Chime SDK messaging resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Sets the number of days before the channel is automatically deleted.
    ///
    /// * A background process deletes expired channels within 6 hours of expiration. Actual deletion times may vary.
    ///
    /// * Expired channels that have not yet been deleted appear as active, and you can update their expiration settings. The system honors the new settings.
    ///
    /// * The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func putChannelExpirationSettings(input: PutChannelExpirationSettingsInput) async throws -> PutChannelExpirationSettingsOutputResponse
    /// Sets the membership preferences of an AppInstanceUser or AppIntanceBot for the specified channel. The user or bot must be a member of the channel. Only the user or bot who owns the membership can set preferences. Users or bots in the AppInstanceAdmin and channel moderator roles can't set preferences for other users or users. Banned users or bots can't set membership preferences for the channel from which they are banned. The x-amz-chime-bearer request header is mandatory. Use the ARN of an AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func putChannelMembershipPreferences(input: PutChannelMembershipPreferencesInput) async throws -> PutChannelMembershipPreferencesOutputResponse
    /// Sets the data streaming configuration for an AppInstance. For more information, see [Streaming messaging data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html) in the Amazon Chime SDK Developer Guide.
    func putMessagingStreamingConfigurations(input: PutMessagingStreamingConfigurationsInput) async throws -> PutMessagingStreamingConfigurationsOutputResponse
    /// Redacts message content, but not metadata. The message exists in the back end, but the action returns null content, and the state shows as redacted. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func redactChannelMessage(input: RedactChannelMessageInput) async throws -> RedactChannelMessageOutputResponse
    /// Allows the ChimeBearer to search channels by channel members. Users or bots can search across the channels that they belong to. Users in the AppInstanceAdmin role can search across all channels. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func searchChannels(input: SearchChannelsInput) async throws -> SearchChannelsOutputResponse
    /// Sends a message to a particular channel that the member is a part of. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header. Also, STANDARD messages can contain 4KB of data and the 1KB of metadata. CONTROL messages can contain 30 bytes of data and no metadata.
    func sendChannelMessage(input: SendChannelMessageInput) async throws -> SendChannelMessageOutputResponse
    /// Applies the specified tags to the specified Amazon Chime SDK messaging resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified Amazon Chime SDK messaging resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Update a channel's attributes. Restriction: You can't change a channel's privacy. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    /// Updates channel flow attributes. This is a developer API.
    func updateChannelFlow(input: UpdateChannelFlowInput) async throws -> UpdateChannelFlowOutputResponse
    /// Updates the content of a message. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func updateChannelMessage(input: UpdateChannelMessageInput) async throws -> UpdateChannelMessageOutputResponse
    /// The details of the time when a user last read messages in a channel. The x-amz-chime-bearer request header is mandatory. Use the ARN of the AppInstanceUser or AppInstanceBot that makes the API call as the value in the header.
    func updateChannelReadMarker(input: UpdateChannelReadMarkerInput) async throws -> UpdateChannelReadMarkerOutputResponse
}

public protocol ChimeSDKMessagingClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ChimeSDKMessagingClientTypes {}
