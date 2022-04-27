//
//  loginModel.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 25/03/2022.
//

import Foundation
import ObjectMapper


public class Login: Mappable
{
    var name: String?
    var email: String?
    var password: Int?

    required init?(map: Map) {}

    mutating func mapping(map: Map) {
        name    <- map["name"]
        surname <- map["surname"]
        age     <- map["age"]
    }
    }

