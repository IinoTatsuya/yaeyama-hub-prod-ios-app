//
//  PostViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import UIKit
import Amplify
import AmplifyPlugins
import AWSPluginsCore

class PostViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var imagePreview: UIImageView!
    
    var studentId = UUID().uuidString
    var id: Int = 0
    
    var imageFlag = false
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAttributes()
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func send(_ sender: Any) {
        // キーボード閉じる
        //self.textField.resignFirstResponder()
        let dt = Date()
        let dateFormatter = DateFormatter()
        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
 
        if imageFlag {
            let dataString = imagePreview.image!
            let data = dataString.pngData()!
            //let data = photo
            Amplify.Storage.uploadData(key: "timeline/\(String(posts.count + 1))", data: data,
                progressListener: { progress in
                    print("Progress: \(progress)")
                }, resultListener: { (event) in
                    switch event {
                    case .success(let data):
                        print("Completed: \(data)")
                        DispatchQueue.main.async {
                            self.dismiss(animated: true, completion: nil)
                        }
                    case .failure(let storageError):
                        print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                }
            })
            let post = Timeline(id: String(posts.count + 1), description: self.textField.text!, created: dateFormatter.string(from: dt), imageBool: self.imageFlag, imageURL: "https://d37ycchc13r54.cloudfront.net/public/timeline/\(String(posts.count + 1))")
             // mutateで新規メッセージを作成
              Amplify.API.mutate(request: .create(post)) { event in
                  switch event {
                  case .success(let result):
                      switch result {
                      case .success(let message):
                          print("Successfully created the message: \(message)")
                         if !self.imageFlag {
                         DispatchQueue.main.async {
                             self.dismiss(animated: true, completion: nil)
                         }
                         }
                      case .failure(let graphQLError):
                          // サーバーからのエラーの場合はこっち
                          print("Failed to create graphql \(graphQLError)")
                      }
                  case .failure(let apiError):
                      // 通信まわりなどのErrorになった場合はこっち
                      print("Failed to create a message", apiError)
                  }
              }
        } else {
            let post = Timeline(id: String(posts.count + 1), description: self.textField.text!, created: dateFormatter.string(from: dt), imageBool: self.imageFlag, imageURL: "")
             // mutateで新規メッセージを作成
              Amplify.API.mutate(request: .create(post)) { event in
                  switch event {
                  case .success(let result):
                      switch result {
                      case .success(let message):
                          print("Successfully created the message: \(message)")
                         if !self.imageFlag {
                         DispatchQueue.main.async {
                             self.dismiss(animated: true, completion: nil)
                         }
                         }
                      case .failure(let graphQLError):
                          // サーバーからのエラーの場合はこっち
                          print("Failed to create graphql \(graphQLError)")
                      }
                  case .failure(let apiError):
                      // 通信まわりなどのErrorになった場合はこっち
                      print("Failed to create a message", apiError)
                  }
              }
        }
    }
    
    @IBAction func addImage(_ sender: Any) {
        activeCamera()
    }
    
    func fetchAttributes() {
       Amplify.Auth.fetchAuthSession { result in
           do {
               let session = try result.get()
               // Get user sub or identity id
               if let identityProvider = session as? AuthCognitoIdentityProvider {
                   let usersub = try identityProvider.getUserSub().get()
                   self.studentId = usersub
                    print(self.studentId)
               }
           } catch {
               print("Fetch auth session failed with error - \(error)")
           }
       }
   }
    
    func activeCamera(isDeletable: Bool?=nil,
                                 deleteAction:((UIAlertAction) -> Void)?=nil) {
        let alert: UIAlertController = UIAlertController(title: "", message: "選択してください", preferredStyle: .actionSheet)
        let cameraAction: UIAlertAction = UIAlertAction(title: "カメラで撮影", style: .default, handler:{ [weak self]
                (action: UIAlertAction!) -> Void in
            guard let this = self else { return }
            let sourceType:UIImagePickerController.SourceType = UIImagePickerController.SourceType.camera
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera){
                let cameraPicker = UIImagePickerController()
                cameraPicker.sourceType = sourceType
                cameraPicker.delegate = this
                this.present(cameraPicker, animated: true, completion: nil)
            }
        })

        let galleryAction: UIAlertAction = UIAlertAction(title: "アルバムから選択", style: .default, handler:{ [weak self]
            (action: UIAlertAction!) -> Void in
            guard let this = self else { return }
            let sourceType:UIImagePickerController.SourceType = UIImagePickerController.SourceType.photoLibrary
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
                let libraryPicker = UIImagePickerController()
                libraryPicker.sourceType = sourceType
                libraryPicker.delegate = this
                this.present(libraryPicker, animated: true, completion: nil)
            }
        })

        let deleteAction = UIAlertAction(title: "写真を削除", style: .default, handler: deleteAction)
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler:{
            (action: UIAlertAction!) -> Void in
            print("キャンセル")
        })
        alert.addAction(cancelAction)
        alert.addAction(cameraAction)
        alert.addAction(galleryAction)
        if isDeletable == true {
            alert.addAction(deleteAction)
        }
        present(alert, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imageFlag = true
            picker.dismiss(animated: true, completion: nil)
            imagePreview.image = image
        }
    }
    
    @IBAction func signOut(_ sender: UIButton) {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                print("Successfully signed out")
                DispatchQueue.main.async {
                    guard let window = UIApplication.shared.keyWindow else { return }
                    let storyboard: UIStoryboard = UIStoryboard(name: "SignIn", bundle: nil)
                    let vc = storyboard.instantiateViewController(withIdentifier: "TopViewController") as! TopViewController
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
