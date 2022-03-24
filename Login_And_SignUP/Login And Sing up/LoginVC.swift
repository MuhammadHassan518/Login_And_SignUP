//
//  LoginVC.swift
//  Login_And_SignUP
//
//  Created by Muhammad Hassan on 24/03/2022.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func btnLoginclicked(_ sender: Any)
    {
        self.validate(sender: sender as! UIButton)
        
    }
    
    @IBAction func btnSignUpclicked(_ sender: Any)
    {
        
        
    }
    private func validate(sender:UIButton){
        do {
            let _ = try self.txtEmail.validatedText(validationType: ValidatorType.email)
            let _ = try self.txtPassword.validatedText(validationType: ValidatorType.password)
            self.login()
        } catch(let error) {
//            sender.shake()
//            Utility.main.showToast(message: (error as! ValidationError).message)
        }
    }

}

extension LoginVC{
    private func login(){
        let email = self.txtEmail.text!
        let password = self.txtPassword.text!
        
        let params:[String:Any] = ["email":email,
                                   "password":password,
                                   "service_type": "apn",
                                   ]
        APIManager.sharedInstance.usersAPIManager.LoginUser(params: params, success: { (responseObject) in
            guard let user = Mapper<Login>().map(JSON: responseObject["user"] as! [String : Any]) else{return}
            print("responseObject -> \n \(responseObject)")
            AppStateManager.sharedInstance.loginUser(user: user)
        })
        { (error) in
            print(error)
        }
    }
}
