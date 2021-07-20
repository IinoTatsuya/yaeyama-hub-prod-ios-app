//
//  SettingViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/06.
//

import UIKit
import WebKit
import Amplify

class SettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let text = ["アカウント情報","利用規約","プライバシーポリシー","サインアウト"]
    let image = ["person.fill","doc.text","lock.doc","arrowshape.turn.up.backward"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)  //空セルのセパレータ削除
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    //    let cell = tableView.dequeueReusableCell(withIdentifier: "SettingViewCell", for: indexPath)
        let cell = UITableViewCell(style: .default, reuseIdentifier: "SettingViewCell")

        cell.textLabel?.text = text[indexPath.row]
        cell.imageView?.image = UIImage.init(systemName: image[indexPath.row])
 
        cell.tintColor = UIColor(red: 74/255, green: 85/255, blue: 237/255, alpha: 1)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番目の行が選択されました")
        if indexPath.row == 1 {
            let webvc = WebKitViewController()
            webvc.modalPresentationStyle = .popover // appearance effect
            webvc.url = URL(string: "https://atteyaa.com/policies/terms.html")
            present(webvc, animated: true, completion: nil)
        }
        if indexPath.row == 2 {
            let webvc = WebKitViewController()
            webvc.modalPresentationStyle = .popover // appearance effect
            webvc.url = URL(string: "https://atteyaa.com/policies/privacy_policy.html")
            present(webvc, animated: true, completion: nil)
        }
        if indexPath.row == 3 {
            print("ログアウトします")
            signOutForce()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
        }
    
    func signOutForce() {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                print("Successfully signed out")
                DispatchQueue.main.async {
                    let sceneDelegate = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.delegate as? SceneDelegate
                    guard let window = UIApplication.shared.keyWindow else { return }
                    let storyboard: UIStoryboard = UIStoryboard(name: "SignIn", bundle: nil)
                    let vc = storyboard.instantiateViewController(withIdentifier: "TopViewController") as! TopViewController
                    sceneDelegate?.switchViewController(viewController: vc)
                    if window.rootViewController?.presentedViewController != nil {
                        // モーダルを開いていたら閉じてから差し替え
                        window.rootViewController?.dismiss(animated: false) {
                            window.rootViewController = vc
                        }
                    } else {
                        // モーダルを開いていなければそのまま差し替え
                        window.rootViewController = vc
                    }
                }
            case .failure(let error):
                print("Sign out failed with error \(error)")
            }
        }
    }
}
class SettingViewCell: UITableViewCell {
}
