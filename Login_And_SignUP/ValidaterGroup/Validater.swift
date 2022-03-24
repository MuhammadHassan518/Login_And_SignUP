//
//  Validater.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 24/03/2022.
//

import Foundation
class ValidationError: Error {
    var message: String
    
    init(_ message: String) {
        self.message = message
    }
}

protocol ValidatorConvertible {
    func validated(_ value: String) throws -> String
}

enum ValidatorType {
    case email
    case password
    
}

enum VaildatorFactory {
    static func validatorFor(type: ValidatorType) -> ValidatorConvertible {
        switch type {
        case .email: return EmailValidator()
        case .password: return PasswordValidator()
        
        }
    }
}

struct EmailValidator: ValidatorConvertible {
    func validated(_ value: String) throws -> String {
   do {
    if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil { throw ValidationError("Invalid e-mail address") }
        }
        catch
        { throw ValidationError( "Invalid e-mail address") }
        return value
    }
}
struct PasswordValidator: ValidatorConvertible {
    func validated(_ value: String) throws -> String {
        guard value != "" else {throw ValidationError( "Password is Required")}
        guard value.count >= 8 else { throw ValidationError("Password must have at least 8 characters") }
        return value
    }
}
