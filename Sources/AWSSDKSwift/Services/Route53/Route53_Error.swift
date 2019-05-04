// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Route53
public enum Route53ErrorType: AWSErrorType {
    case concurrentModification(message: String?)
    case conflictingDomainExists(message: String?)
    case conflictingTypes(message: String?)
    case delegationSetAlreadyCreated(message: String?)
    case delegationSetAlreadyReusable(message: String?)
    case delegationSetInUse(message: String?)
    case delegationSetNotAvailable(message: String?)
    case delegationSetNotReusable(message: String?)
    case healthCheckAlreadyExists(message: String?)
    case healthCheckInUse(message: String?)
    case healthCheckVersionMismatch(message: String?)
    case hostedZoneAlreadyExists(message: String?)
    case hostedZoneNotEmpty(message: String?)
    case hostedZoneNotFound(message: String?)
    case hostedZoneNotPrivate(message: String?)
    case incompatibleVersion(message: String?)
    case insufficientCloudWatchLogsResourcePolicy(message: String?)
    case invalidArgument(message: String?)
    case invalidChangeBatch(message: String?)
    case invalidDomainName(message: String?)
    case invalidInput(message: String?)
    case invalidPaginationToken(message: String?)
    case invalidTrafficPolicyDocument(message: String?)
    case invalidVPCId(message: String?)
    case lastVPCAssociation(message: String?)
    case limitsExceeded(message: String?)
    case noSuchChange(message: String?)
    case noSuchCloudWatchLogsLogGroup(message: String?)
    case noSuchDelegationSet(message: String?)
    case noSuchGeoLocation(message: String?)
    case noSuchHealthCheck(message: String?)
    case noSuchHostedZone(message: String?)
    case noSuchQueryLoggingConfig(message: String?)
    case noSuchTrafficPolicy(message: String?)
    case noSuchTrafficPolicyInstance(message: String?)
    case notAuthorizedException(message: String?)
    case priorRequestNotComplete(message: String?)
    case publicZoneVPCAssociation(message: String?)
    case queryLoggingConfigAlreadyExists(message: String?)
    case throttlingException(message: String?)
    case tooManyHealthChecks(message: String?)
    case tooManyHostedZones(message: String?)
    case tooManyTrafficPolicies(message: String?)
    case tooManyTrafficPolicyInstances(message: String?)
    case tooManyTrafficPolicyVersionsForCurrentPolicy(message: String?)
    case tooManyVPCAssociationAuthorizations(message: String?)
    case trafficPolicyAlreadyExists(message: String?)
    case trafficPolicyInUse(message: String?)
    case trafficPolicyInstanceAlreadyExists(message: String?)
    case vPCAssociationAuthorizationNotFound(message: String?)
    case vPCAssociationNotFound(message: String?)
}

extension Route53ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModification":
            self = .concurrentModification(message: message)
        case "ConflictingDomainExists":
            self = .conflictingDomainExists(message: message)
        case "ConflictingTypes":
            self = .conflictingTypes(message: message)
        case "DelegationSetAlreadyCreated":
            self = .delegationSetAlreadyCreated(message: message)
        case "DelegationSetAlreadyReusable":
            self = .delegationSetAlreadyReusable(message: message)
        case "DelegationSetInUse":
            self = .delegationSetInUse(message: message)
        case "DelegationSetNotAvailable":
            self = .delegationSetNotAvailable(message: message)
        case "DelegationSetNotReusable":
            self = .delegationSetNotReusable(message: message)
        case "HealthCheckAlreadyExists":
            self = .healthCheckAlreadyExists(message: message)
        case "HealthCheckInUse":
            self = .healthCheckInUse(message: message)
        case "HealthCheckVersionMismatch":
            self = .healthCheckVersionMismatch(message: message)
        case "HostedZoneAlreadyExists":
            self = .hostedZoneAlreadyExists(message: message)
        case "HostedZoneNotEmpty":
            self = .hostedZoneNotEmpty(message: message)
        case "HostedZoneNotFound":
            self = .hostedZoneNotFound(message: message)
        case "HostedZoneNotPrivate":
            self = .hostedZoneNotPrivate(message: message)
        case "IncompatibleVersion":
            self = .incompatibleVersion(message: message)
        case "InsufficientCloudWatchLogsResourcePolicy":
            self = .insufficientCloudWatchLogsResourcePolicy(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "InvalidChangeBatch":
            self = .invalidChangeBatch(message: message)
        case "InvalidDomainName":
            self = .invalidDomainName(message: message)
        case "InvalidInput":
            self = .invalidInput(message: message)
        case "InvalidPaginationToken":
            self = .invalidPaginationToken(message: message)
        case "InvalidTrafficPolicyDocument":
            self = .invalidTrafficPolicyDocument(message: message)
        case "InvalidVPCId":
            self = .invalidVPCId(message: message)
        case "LastVPCAssociation":
            self = .lastVPCAssociation(message: message)
        case "LimitsExceeded":
            self = .limitsExceeded(message: message)
        case "NoSuchChange":
            self = .noSuchChange(message: message)
        case "NoSuchCloudWatchLogsLogGroup":
            self = .noSuchCloudWatchLogsLogGroup(message: message)
        case "NoSuchDelegationSet":
            self = .noSuchDelegationSet(message: message)
        case "NoSuchGeoLocation":
            self = .noSuchGeoLocation(message: message)
        case "NoSuchHealthCheck":
            self = .noSuchHealthCheck(message: message)
        case "NoSuchHostedZone":
            self = .noSuchHostedZone(message: message)
        case "NoSuchQueryLoggingConfig":
            self = .noSuchQueryLoggingConfig(message: message)
        case "NoSuchTrafficPolicy":
            self = .noSuchTrafficPolicy(message: message)
        case "NoSuchTrafficPolicyInstance":
            self = .noSuchTrafficPolicyInstance(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "PriorRequestNotComplete":
            self = .priorRequestNotComplete(message: message)
        case "PublicZoneVPCAssociation":
            self = .publicZoneVPCAssociation(message: message)
        case "QueryLoggingConfigAlreadyExists":
            self = .queryLoggingConfigAlreadyExists(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "TooManyHealthChecks":
            self = .tooManyHealthChecks(message: message)
        case "TooManyHostedZones":
            self = .tooManyHostedZones(message: message)
        case "TooManyTrafficPolicies":
            self = .tooManyTrafficPolicies(message: message)
        case "TooManyTrafficPolicyInstances":
            self = .tooManyTrafficPolicyInstances(message: message)
        case "TooManyTrafficPolicyVersionsForCurrentPolicy":
            self = .tooManyTrafficPolicyVersionsForCurrentPolicy(message: message)
        case "TooManyVPCAssociationAuthorizations":
            self = .tooManyVPCAssociationAuthorizations(message: message)
        case "TrafficPolicyAlreadyExists":
            self = .trafficPolicyAlreadyExists(message: message)
        case "TrafficPolicyInUse":
            self = .trafficPolicyInUse(message: message)
        case "TrafficPolicyInstanceAlreadyExists":
            self = .trafficPolicyInstanceAlreadyExists(message: message)
        case "VPCAssociationAuthorizationNotFound":
            self = .vPCAssociationAuthorizationNotFound(message: message)
        case "VPCAssociationNotFound":
            self = .vPCAssociationNotFound(message: message)
        default:
            return nil
        }
    }
}