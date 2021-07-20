//
//  VerifyCodeViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import Amplify
import AmplifyPlugins

class VerifyCodeViewController: UIViewController, UITextFieldDelegate {

    var emailAddress = ""
    @IBOutlet weak var verifyCode: UITextField!
    var status : VerifyStatus = .signup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyCode.delegate = self
    }
    @IBAction func verify(_ sender: Any) {
        confirmSignUp(for: emailAddress, with: verifyCode.text!)
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                print("Confirm signUp succeeded")
                self.showABAlert(title: NSLocalizedString("confirm.signup.success.title" , comment: ""),message: NSLocalizedString("confirm.signup.success.message", comment: "") ,
                                 actions: [UIAlertAction(title: "OK", style: .default, handler: { (action) in
                                    self.dismiss(animated: true)
                                   {}
                })])
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
                if error.errorDescription.contains("not found") {
                    self.showOKAlert(title: NSLocalizedString("confirm.signup.error.title" , comment: ""),message: NSLocalizedString("confirm.signup.error.Email", comment: "") )
                }else{
                    self.showOKAlert(title: NSLocalizedString("confirm.signup.error.title" , comment: ""),message: NSLocalizedString("confirm.signup.error.code", comment: "") )
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

enum VerifyStatus {
    case signup, email, password
}
