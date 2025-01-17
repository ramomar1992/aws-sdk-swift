// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the [AWS Savings Plans User Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).
public protocol SavingsplansClientProtocol {
    /// Creates a Savings Plan.
    func createSavingsPlan(input: CreateSavingsPlanInput) async throws -> CreateSavingsPlanOutputResponse
    /// Deletes the queued purchase for the specified Savings Plan.
    func deleteQueuedSavingsPlan(input: DeleteQueuedSavingsPlanInput) async throws -> DeleteQueuedSavingsPlanOutputResponse
    /// Describes the specified Savings Plans rates.
    func describeSavingsPlanRates(input: DescribeSavingsPlanRatesInput) async throws -> DescribeSavingsPlanRatesOutputResponse
    /// Describes the specified Savings Plans.
    func describeSavingsPlans(input: DescribeSavingsPlansInput) async throws -> DescribeSavingsPlansOutputResponse
    /// Describes the specified Savings Plans offering rates.
    func describeSavingsPlansOfferingRates(input: DescribeSavingsPlansOfferingRatesInput) async throws -> DescribeSavingsPlansOfferingRatesOutputResponse
    /// Describes the specified Savings Plans offerings.
    func describeSavingsPlansOfferings(input: DescribeSavingsPlansOfferingsInput) async throws -> DescribeSavingsPlansOfferingsOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds the specified tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public protocol SavingsplansClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SavingsplansClientTypes {}
