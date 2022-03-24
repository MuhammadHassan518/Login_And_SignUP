//
//  Constant.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 24/03/2022.
//

import Foundation
import UIKit

struct Global{
    static let LOGGED_IN_USER                = AppStateManager.sharedInstance.loggedInUser
    static var APP_MANAGER                   = AppStateManager.sharedInstance
    static var APP_REALM                     = APP_MANAGER.realm
    static var APP_COLOR                     = UIColor(named: "dark-brown-2")
    static var APP_COLOR_LIGHT               = UIColor(red: 44/255, green: 167/255, blue: 207/255, alpha: 1.0)
    static var APP_COLOR_GREY                = UIColor(red:239/255, green:239/255, blue:239/255, alpha:1.0)
}

struct Constants {
    //MARK:- Base URL
    static let BaseURL                     = "https://demos73.branex.com/sougha/admin/public/api/v1/"
    static let WebPageBaseURL              = "https://demos73.branex.com/sougha/admin/public/"
    static let telrType                    = "1"
    
    
    static let APP_DELEGATE                = UIApplication.shared.delegate as! AppDelegate
    //static let SCENE_DELEGATE              = UIApplication.shared.delegate as! SceneDelegate
    static let UIWINDOW                    = UIApplication.shared.delegate!.window!
    static let USER_DEFAULTS               = UserDefaults.standard
    static let DEFAULTS_USER_KEY           = "User"
    static var DeviceToken                 = "No certificates"
    static var ApiMessage                  = ""
    static let serverDateFormat            = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"//"yyyy-MM-dd HH:mm:ss"
    static let PAGINATION_PAGE_SIZE        = 100
    static var Token                       = ""
    static let adminPhone                  = "123456"
    //MARK:- Notification observer names
    static let NotificationCount           = "NotificationCount"
    static let apiKey                      = "AIzaSyDfI1D2jIApe9Rknmby_t8neXIT4-yZieo"
    static let publishableKey              = "pk_test_Q9Q8LheTe0VFThTORIy8uRev"
    static let secretKey                   = "sk_test_yEKtZ2nh7WL35f11GcyfAX6a"
}
