// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud. As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIs to download or copy your entitled data sets to Amazon Simple Storage Service (Amazon S3) for use across a variety of AWS analytics and machine learning services. As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide. A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set. A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object, Redshift datashare, API Gateway API, AWS Lake Formation data permission, or Amazon S3 data access. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.
public protocol DataExchangeClientProtocol {
    /// This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    /// This operation creates a data set.
    func createDataSet(input: CreateDataSetInput) async throws -> CreateDataSetOutputResponse
    /// This operation creates an event action.
    func createEventAction(input: CreateEventActionInput) async throws -> CreateEventActionOutputResponse
    /// This operation creates a job.
    func createJob(input: CreateJobInput) async throws -> CreateJobOutputResponse
    /// This operation creates a revision for a data set.
    func createRevision(input: CreateRevisionInput) async throws -> CreateRevisionOutputResponse
    /// This operation deletes an asset.
    func deleteAsset(input: DeleteAssetInput) async throws -> DeleteAssetOutputResponse
    /// This operation deletes a data set.
    func deleteDataSet(input: DeleteDataSetInput) async throws -> DeleteDataSetOutputResponse
    /// This operation deletes the event action.
    func deleteEventAction(input: DeleteEventActionInput) async throws -> DeleteEventActionOutputResponse
    /// This operation deletes a revision.
    func deleteRevision(input: DeleteRevisionInput) async throws -> DeleteRevisionOutputResponse
    /// This operation returns information about an asset.
    func getAsset(input: GetAssetInput) async throws -> GetAssetOutputResponse
    /// This operation returns information about a data set.
    func getDataSet(input: GetDataSetInput) async throws -> GetDataSetOutputResponse
    /// This operation retrieves information about an event action.
    func getEventAction(input: GetEventActionInput) async throws -> GetEventActionOutputResponse
    /// This operation returns information about a job.
    func getJob(input: GetJobInput) async throws -> GetJobOutputResponse
    /// This operation returns information about a revision.
    func getRevision(input: GetRevisionInput) async throws -> GetRevisionOutputResponse
    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    func listDataSetRevisions(input: ListDataSetRevisionsInput) async throws -> ListDataSetRevisionsOutputResponse
    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    func listDataSets(input: ListDataSetsInput) async throws -> ListDataSetsOutputResponse
    /// This operation lists your event actions.
    func listEventActions(input: ListEventActionsInput) async throws -> ListEventActionsOutputResponse
    /// This operation lists your jobs sorted by CreatedAt in descending order.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    /// This operation lists a revision's assets sorted alphabetically in descending order.
    func listRevisionAssets(input: ListRevisionAssetsInput) async throws -> ListRevisionAssetsOutputResponse
    /// This operation lists the tags on the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// This operation revokes subscribers' access to a revision.
    func revokeRevision(input: RevokeRevisionInput) async throws -> RevokeRevisionOutputResponse
    /// This operation invokes an API Gateway API asset. The request is proxied to the provider’s API Gateway API.
    func sendApiAsset(input: SendApiAssetInput) async throws -> SendApiAssetOutputResponse
    /// This operation starts a job.
    func startJob(input: StartJobInput) async throws -> StartJobOutputResponse
    /// This operation tags a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// This operation removes one or more tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// This operation updates an asset.
    func updateAsset(input: UpdateAssetInput) async throws -> UpdateAssetOutputResponse
    /// This operation updates a data set.
    func updateDataSet(input: UpdateDataSetInput) async throws -> UpdateDataSetOutputResponse
    /// This operation updates the event action.
    func updateEventAction(input: UpdateEventActionInput) async throws -> UpdateEventActionOutputResponse
    /// This operation updates a revision.
    func updateRevision(input: UpdateRevisionInput) async throws -> UpdateRevisionOutputResponse
}

public protocol DataExchangeClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum DataExchangeClientTypes {}
