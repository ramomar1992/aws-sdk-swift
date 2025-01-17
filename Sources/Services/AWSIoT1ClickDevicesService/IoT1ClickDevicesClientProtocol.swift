// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Describes all of the AWS IoT 1-Click device-related API operations for the service. Also provides sample requests, responses, and errors for the supported web services protocols.
public protocol IoT1ClickDevicesClientProtocol {
    /// Adds device(s) to your account (i.e., claim one or more devices) if and only if you received a claim code with the device(s).
    func claimDevicesByClaimCode(input: ClaimDevicesByClaimCodeInput) async throws -> ClaimDevicesByClaimCodeOutputResponse
    /// Given a device ID, returns a DescribeDeviceResponse object describing the details of the device.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutputResponse
    /// Given a device ID, finalizes the claim request for the associated device. Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
    func finalizeDeviceClaim(input: FinalizeDeviceClaimInput) async throws -> FinalizeDeviceClaimOutputResponse
    /// Given a device ID, returns the invokable methods associated with the device.
    func getDeviceMethods(input: GetDeviceMethodsInput) async throws -> GetDeviceMethodsOutputResponse
    /// Given a device ID, initiates a claim request for the associated device. Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
    func initiateDeviceClaim(input: InitiateDeviceClaimInput) async throws -> InitiateDeviceClaimOutputResponse
    /// Given a device ID, issues a request to invoke a named device method (with possible parameters). See the "Example POST" code snippet below.
    func invokeDeviceMethod(input: InvokeDeviceMethodInput) async throws -> InvokeDeviceMethodOutputResponse
    /// Using a device ID, returns a DeviceEventsResponse object containing an array of events for the device.
    func listDeviceEvents(input: ListDeviceEventsInput) async throws -> ListDeviceEventsOutputResponse
    /// Lists the 1-Click compatible devices associated with your AWS account.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutputResponse
    /// Lists the tags associated with the specified resource ARN.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds or updates the tags associated with the resource ARN. See [AWS IoT 1-Click Service Limits](https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits) for the maximum number of tags allowed per resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Disassociates a device from your AWS account using its device ID.
    func unclaimDevice(input: UnclaimDeviceInput) async throws -> UnclaimDeviceOutputResponse
    /// Using tag keys, deletes the tags (key/value pairs) associated with the specified resource ARN.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Using a Boolean value (true or false), this operation enables or disables the device given a device ID.
    func updateDeviceState(input: UpdateDeviceStateInput) async throws -> UpdateDeviceStateOutputResponse
}

public protocol IoT1ClickDevicesClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoT1ClickDevicesClientTypes {}
