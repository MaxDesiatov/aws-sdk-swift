// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoT1ClickDevicesService {

    public struct UnclaimDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct Device: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .body(locationName: "deviceId"), required: false, type: .string), 
            AWSShapeMember(label: "Attributes", location: .body(locationName: "attributes"), required: false, type: .structure), 
            AWSShapeMember(label: "Type", location: .body(locationName: "type"), required: false, type: .string)
        ]
        /// The unique identifier of the device.
        public let deviceId: String?
        /// The user specified attributes associated with the device for an event.
        public let attributes: Attributes?
        /// The device type, such as "button".
        public let `type`: String?

        public init(deviceId: String? = nil, attributes: Attributes? = nil, type: String? = nil) {
            self.deviceId = deviceId
            self.attributes = attributes
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case attributes = "attributes"
            case `type` = "type"
        }
    }

    public struct DeviceEvent: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StdEvent", location: .body(locationName: "stdEvent"), required: false, type: .string), 
            AWSShapeMember(label: "Device", location: .body(locationName: "device"), required: false, type: .structure)
        ]
        /// A serialized JSON object representing the device-type specific event.
        public let stdEvent: String?
        /// An object representing the device associated with the event.
        public let device: Device?

        public init(stdEvent: String? = nil, device: Device? = nil) {
            self.stdEvent = stdEvent
            self.device = device
        }

        private enum CodingKeys: String, CodingKey {
            case stdEvent = "stdEvent"
            case device = "device"
        }
    }

    public struct DeviceDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", location: .body(locationName: "type"), required: false, type: .string), 
            AWSShapeMember(label: "Enabled", location: .body(locationName: "enabled"), required: false, type: .boolean), 
            AWSShapeMember(label: "Attributes", location: .body(locationName: "attributes"), required: false, type: .map), 
            AWSShapeMember(label: "DeviceId", location: .body(locationName: "deviceId"), required: false, type: .string), 
            AWSShapeMember(label: "RemainingLife", location: .body(locationName: "remainingLife"), required: false, type: .double)
        ]
        /// The type of the device, such as "button".
        public let `type`: String?
        /// A Boolean value indicating whether or not the device is enabled.
        public let enabled: Bool?
        /// An array of zero or more elements of DeviceAttribute objects
        ///  providing user specified device attributes.
        public let attributes: [String: String]?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// A value between 0 and 1 inclusive, representing the fraction of life remaining for
        ///  the device.
        public let remainingLife: Double?

        public init(type: String? = nil, enabled: Bool? = nil, attributes: [String: String]? = nil, deviceId: String? = nil, remainingLife: Double? = nil) {
            self.`type` = `type`
            self.enabled = enabled
            self.attributes = attributes
            self.deviceId = deviceId
            self.remainingLife = remainingLife
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "type"
            case enabled = "enabled"
            case attributes = "attributes"
            case deviceId = "deviceId"
            case remainingLife = "remainingLife"
        }
    }

    public struct InvokeDeviceMethodRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "DeviceMethodParameters", location: .body(locationName: "deviceMethodParameters"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceMethod", location: .body(locationName: "deviceMethod"), required: false, type: .structure)
        ]
        public let deviceId: String
        /// A JSON encoded string containing the device method request parameters.
        public let deviceMethodParameters: String?
        /// The device method to invoke.
        public let deviceMethod: DeviceMethod?

        public init(deviceId: String, deviceMethodParameters: String? = nil, deviceMethod: DeviceMethod? = nil) {
            self.deviceId = deviceId
            self.deviceMethodParameters = deviceMethodParameters
            self.deviceMethod = deviceMethod
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case deviceMethodParameters = "deviceMethodParameters"
            case deviceMethod = "deviceMethod"
        }
    }

    public struct ClaimDevicesByClaimCodeRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClaimCode", location: .uri(locationName: "claimCode"), required: true, type: .string)
        ]
        public let claimCode: String

        public init(claimCode: String) {
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
        }
    }

    public struct DeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        /// The device's final claim state.
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct DeviceEventsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Events", location: .body(locationName: "events"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// An array of zero or more elements describing the event(s) associated with the
        ///  device.
        public let events: [DeviceEvent]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

    public struct InvokeDeviceMethodResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceMethodResponse", location: .body(locationName: "deviceMethodResponse"), required: false, type: .string)
        ]
        /// A JSON encoded string containing the device method response.
        public let deviceMethodResponse: String?

        public init(deviceMethodResponse: String? = nil) {
            self.deviceMethodResponse = deviceMethodResponse
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethodResponse = "deviceMethodResponse"
        }
    }

    public struct ListDevicesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Devices", location: .body(locationName: "devices"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// A list of devices.
        public let devices: [DeviceDescription]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(devices: [DeviceDescription]? = nil, nextToken: String? = nil) {
            self.devices = devices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
            case nextToken = "nextToken"
        }
    }

    public struct ClaimDevicesByClaimCodeResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Total", location: .body(locationName: "total"), required: false, type: .integer), 
            AWSShapeMember(label: "ClaimCode", location: .body(locationName: "claimCode"), required: false, type: .string)
        ]
        /// The total number of devices associated with the claim code that has been processed
        ///  in the claim request.
        public let total: Int32?
        /// The claim code provided by the device manufacturer.
        public let claimCode: String?

        public init(total: Int32? = nil, claimCode: String? = nil) {
            self.total = total
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case total = "total"
            case claimCode = "claimCode"
        }
    }

    public struct FinalizeDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct GetDeviceMethodsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct Attributes: AWSShape {

    }

    public struct ListDeviceEventsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "FromTimeStamp", location: .querystring(locationName: "fromTimeStamp"), required: true, type: .timestamp), 
            AWSShapeMember(label: "ToTimeStamp", location: .querystring(locationName: "toTimeStamp"), required: true, type: .timestamp)
        ]
        public let nextToken: String?
        public let deviceId: String
        public let maxResults: Int32?
        public let fromTimeStamp: TimeStamp
        public let toTimeStamp: TimeStamp

        public init(nextToken: String? = nil, deviceId: String, maxResults: Int32? = nil, fromTimeStamp: TimeStamp, toTimeStamp: TimeStamp) {
            self.nextToken = nextToken
            self.deviceId = deviceId
            self.maxResults = maxResults
            self.fromTimeStamp = fromTimeStamp
            self.toTimeStamp = toTimeStamp
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case deviceId = "deviceId"
            case maxResults = "maxResults"
            case fromTimeStamp = "fromTimeStamp"
            case toTimeStamp = "toTimeStamp"
        }
    }

    public struct ListDevicesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "DeviceType", location: .querystring(locationName: "deviceType"), required: false, type: .string)
        ]
        public let nextToken: String?
        public let maxResults: Int32?
        public let deviceType: String?

        public init(nextToken: String? = nil, maxResults: Int32? = nil, deviceType: String? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.deviceType = deviceType
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case maxResults = "maxResults"
            case deviceType = "deviceType"
        }
    }

    public struct DeviceMethod: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MethodName", location: .body(locationName: "methodName"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceType", location: .body(locationName: "deviceType"), required: false, type: .string)
        ]
        /// The name of the method applicable to the deviceType.
        public let methodName: String?
        /// The type of the device, such as "button".
        public let deviceType: String?

        public init(methodName: String? = nil, deviceType: String? = nil) {
            self.methodName = methodName
            self.deviceType = deviceType
        }

        private enum CodingKeys: String, CodingKey {
            case methodName = "methodName"
            case deviceType = "deviceType"
        }
    }

    public struct InitiateDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct Empty: AWSShape {

    }

    public struct DescribeDeviceResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceDescription", location: .body(locationName: "deviceDescription"), required: false, type: .structure)
        ]
        /// Device details.
        public let deviceDescription: DeviceDescription?

        public init(deviceDescription: DeviceDescription? = nil) {
            self.deviceDescription = deviceDescription
        }

        private enum CodingKeys: String, CodingKey {
            case deviceDescription = "deviceDescription"
        }
    }

    public struct DescribeDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct UpdateDeviceStateResponse: AWSShape {

    }

    public struct UpdateDeviceStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "Enabled", location: .body(locationName: "enabled"), required: false, type: .boolean)
        ]
        public let deviceId: String
        /// If true, the device is enabled. If false, the device is
        ///  disabled.
        public let enabled: Bool?

        public init(deviceId: String, enabled: Bool? = nil) {
            self.deviceId = deviceId
            self.enabled = enabled
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case enabled = "enabled"
        }
    }

    public struct GetDeviceMethodsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceMethods", location: .body(locationName: "deviceMethods"), required: false, type: .list)
        ]
        /// List of available device APIs.
        public let deviceMethods: [DeviceMethod]?

        public init(deviceMethods: [DeviceMethod]? = nil) {
            self.deviceMethods = deviceMethods
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethods = "deviceMethods"
        }
    }

    public struct FinalizeDeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct InitiateDeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct UnclaimDeviceResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct ListDeviceEventsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Events", location: .body(locationName: "events"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        public let events: [DeviceEvent]?
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

}