//
//  SignInViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import Amplify
import AmplifyPlugins

class SignInViewController: UIViewController {

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
    
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signin(_ sender: Any) {
        signIn(email: mail.text!, password: pass.text!)
    }
    
    func signIn(email: String, password: String) {
        Amplify.Auth.signIn(username: email, password: password) { result in
            switch result {
            case .success:
                print("Sign in succeeded")
                _ = Amplify.Auth.fetchAuthSession { result in
                    switch result {
                    case .success(let session):
                        print("Is user signed in - \(session.isSignedIn)")
                        if session.isSignedIn {
                            // TODO: DEBUG
                            DispatchQueue.main.async {
                                let scene = self.getSceneByViewController(from: "Home", className: "HomeTabViewController")
                                self.indicater.dismissMe { (b) in
                                    let window = self.view.window
                                    window?.rootViewController = scene
                                    window?.makeKeyAndVisible()
                                }
                            }
                        } else {
                            DispatchQueue.main.async {
                                Amplify.Auth.resendSignUpCode(for: email) { result in
                                switch result {
                                case .success(let deliveryDetails):
                                    //二段階認証がまだ出来ていない
                                    print("メールを再送します")
                                    print("Resend code send to - \(deliveryDetails)")
                                    self.showABAlert(title: NSLocalizedString("signin.check.verify.title"  , comment: ""),message: NSLocalizedString("signin.check.verify.message", comment: "")
                                        , actions: [UIAlertAction(title: "OK", style: .default, handler: { (action) in
                                            self.openVerifyCodeView()
                                    })])
                                case .failure(let error):
                                    print("メールを再送できませんでした")
                                    //既に認証済
                                    print("Resend code failed with error \(error)")
                                }
                            }
                        }
                    }
                    case .failure(let error):
                        print("Fetch session failed with error \(error)")
                        self.showOKAlert(title: NSLocalizedString("signin.error.title" , comment: ""),message: NSLocalizedString("signin.error.message", comment: "") )
                    }
                }
            case .failure(let error):
                print("Sign in failed \(error)")
                self.showOKAlert(title: NSLocalizedString("signin.error.title" , comment: ""),message: NSLocalizedString("signin.error.message", comment: "") )
            }
        }
    }
    
    func openVerifyCodeView () {
        let baseVC = self
        let storyboard = UIStoryboard(name: "SignIn", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VerifyCodeViewController") as! VerifyCodeViewController
        let next = vc
        next.status = .signup
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
