//
//  ExtensionTextField.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 24/03/2022.
//

import Foundation
import UIKit
extension UITextField
{
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = VaildatorFactory.validatorFor(type: validationType)
        return try validator.validated(self.text!)
    }
    
}
