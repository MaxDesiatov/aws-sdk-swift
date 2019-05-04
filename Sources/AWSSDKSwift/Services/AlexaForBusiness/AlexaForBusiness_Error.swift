// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AlexaForBusiness
public enum AlexaForBusinessErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case concurrentModificationException(message: String?)
    case deviceNotRegisteredException(message: String?)
    case invalidCertificateAuthorityException(message: String?)
    case invalidDeviceException(message: String?)
    case invalidUserStatusException(message: String?)
    case limitExceededException(message: String?)
    case nameInUseException(message: String?)
    case notFoundException(message: String?)
    case resourceInUseException(message: String?)
    case unauthorizedException(message: String?)
}

extension AlexaForBusinessErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DeviceNotRegisteredException":
            self = .deviceNotRegisteredException(message: message)
        case "InvalidCertificateAuthorityException":
            self = .invalidCertificateAuthorityException(message: message)
        case "InvalidDeviceException":
            self = .invalidDeviceException(message: message)
        case "InvalidUserStatusException":
            self = .invalidUserStatusException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NameInUseException":
            self = .nameInUseException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}