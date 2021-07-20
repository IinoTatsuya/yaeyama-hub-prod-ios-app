//
//  TopViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import Foundation

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signup(_ sender: Any) {
        let nextScene = getSceneByViewController(from: "SignIn", className: "Sup") as! SupViewController
        self.present(nextScene, animated: true)
    }
    
    @IBAction func signin(_ sender: Any) {
        let nextScene = getSceneByViewController(from: "SignIn", className: "SignIn") as! SignInViewController
        self.present(nextScene, animated: true)
    }
    
}

@IBDesignable class CustomButton: UIButton {

    // 角丸の半径(0で四角形)
    @IBInspectable var cornerRadius: CGFloat = 10.0

    // 枠
    @IBInspectable var borderColor: UIColor = UIColor.clear
    @IBInspectable var borderWidth: CGFloat = 1.0

    override func draw(_ rect: CGRect) {
        // 角丸
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = (cornerRadius > 0)

        // 枠線
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth

        super.draw(rect)
    }
}

extension UIViewController {

    /// Storyboard idには正確に存在するUIViewController型名を指定すること
    func getSceneByViewController(from boardName: String!, className: String!) -> UIViewController {
        return _getSceneByViewController(from: boardName, className: className)
    }
    
    func loadNib(_ named:String) -> UIView {
        let view = Bundle.main.loadNibNamed(named, owner: self, options: nil)?.first as! UIView
        return view
    }
    
    func showOKAlert(title: String, message: String = "", completion: (()-> Void)? = nil) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            debugPrint("\(title): \(message)") // DEBUG
            self.present(alertController, animated: true, completion: completion)
        }
    }
    
    func showOKAlert(title: String, key: String, completion: (()-> Void)? = nil) {
        let msg = NSLocalizedString(key, comment: "")
        self.showOKAlert(title: title, message: msg, completion: completion)
    }
    
    func showABAlert(title: String, message: String = "", actions: [UIAlertAction], completion: (()-> Void)? = nil) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            actions.forEach { (alert) in
                alertController.addAction(alert)
            }
            self.present(alertController, animated: true, completion: completion)
            
        }
    }
}

extension UITableViewCell {
    func getSceneByViewController(from boardName: String!, className: String!) -> UIViewController {
        return _getSceneByViewController(from: boardName, className: className)
    }
}
 
/// Storyboard idには正確に存在するUIViewController型名を指定すること
private func _getSceneByViewController(from boardName: String!, className: String!) -> UIViewController {
    return UIStoryboard(name: boardName, bundle: nil).instantiateViewController(identifier: className)
    
}
