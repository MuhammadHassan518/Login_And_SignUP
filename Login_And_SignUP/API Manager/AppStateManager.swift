//
//  AppStateManager.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 24/03/2022.
//

import Foundation
import UIKit
//import RealmSwift

class AppStateManager: NSObject {
    static let sharedInstance = AppStateManager()

    func loginUser(user:Login) {
        try! Global.APP_REALM?.write(){
            AppStateManager.sharedInstance.loggedInUser = user
            UserDefaults.standard.set(user.accessToken, forKey: "accessToken")
            //Global.APP_REALM?.add(user, update: true)
            Global.APP_REALM?.add(user, update: .all)
        }
        SceneDelegate.shared.changeRootViewController()
    }
    
    
    
}
