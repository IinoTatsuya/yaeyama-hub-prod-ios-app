//
//  SupViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import Amplify
import AmplifyPlugins

class SupViewController: UIViewController, UITextFieldDelegate {

    private var _indicater:ActivityIndicatorViewController?
    private var indicater:ActivityIndicatorViewController {
        if let ind = _indicater {
            return ind
        } else {
            _indicater = getSceneByViewController(from: "InputScreens", className: "ActivityIndicator") as? ActivityIndicatorViewController
            _indicater!.modalPresentationStyle = .fullScreen
            return _indicater!
        }
    }
    
    public static var shared = SupViewController()
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    
    var emailAddress = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        mail.delegate = self
        pass.delegate = self
        confirmPass.delegate = self
        
        mail.textContentType = .password
        mail.keyboardType = .emailAddress
        pass.textContentType = .password
        pass.isSecureTextEntry = true
        confirmPass.textContentType = .password
        confirmPass.isSecureTextEntry = true
    }
    
    @IBAction func signup(_ sender: Any) {
        signUp(email: mail.text!, password: pass.text!)
    }
    
    func signUp(email: String, password: String ) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        emailAddress = email
        Amplify.Auth.signUp(username: email, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                    self.showABAlert(title: "仮登録が完了しました", message: "ご入力いただいたメールアドレス宛に\nno-reply@verificationemail.comから認証コードを送信しました。\n認証コードを画面に入力して登録を完了してください"
                        , actions: [UIAlertAction(title: "OK", style: .default, handler: { (action) in
                            self.openVerifyCodeView()
                    })])
                } else {
                    print("SignUp Complete")
                    self.showABAlert(title: "仮登録が完了しました", message: "ご入力いただいたメールアドレス宛に\nno-reply@verificationemail.comから認証コードを送信しました。\n認証コードを画面に入力して登録を完了してください"
                        , actions: [UIAlertAction(title: "OK", style: .default, handler: { (action) in
                            self.openVerifyCodeView()
                    })])
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
                Amplify.Auth.resendSignUpCode(for: email) { result in
                switch result {
                    case .success(let deliveryDetails):
                        //二段階認証がまだ出来ていない
                        print("メールを再送します")
                        print("Resend code send to - \(deliveryDetails)")
                        self.showABAlert(title: "仮登録が完了しました", message: "ご入力いただいたメールアドレス宛に\nno-reply@verificationemail.comから認証コードを送信しました。\n認証コードを画面に入力して登録を完了してください"
                            , actions: [UIAlertAction(title: "OK", style: .default, handler: { (action) in
                                self.openVerifyCodeView()
                        })])
                    case .failure(let error):
                        print("メールを再送できませんでした")
                        //既に認証済、存在する
                        self.showOKAlert(title: "登録に失敗しました", key: "このメールアドレスは既に登録されています")
                        print("Resend code failed with error \(error)")
                    }
                }
            }
        }
    }
    
    func openVerifyCodeView () {
        let baseVC = self
        let storyboard = UIStoryboard(name: "SignIn", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VerifyCode") as! VerifyCodeViewController
        let next = vc
        next.status = .signup
        next.emailAddress = mail.text!
        DispatchQueue.main.async {
            self.present(self.indicater, animated: true)
        }
        DispatchQueue.main.async {
            self.indicater.dismissMe { (b) in
                next.modalPresentationStyle = .fullScreen
                self.dismiss(animated: true) {
                baseVC.present(next,animated: true)
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
