//
//  ChatViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/07.
//

import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient
import AWSPluginsCore

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate & UNUserNotificationCenterDelegate ,UINavigationControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textView: UITextView!
    
    var messages: [Message] = []
    var messagesFlag: [Bool] = []
    var pushFlag = true
    var subscription: GraphQLSubscriptionOperation<Message>?
    var studentId = UUID().uuidString
    
    var text: [String] = []
    
    var newMessage: Message? = nil
    var imageInstant = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        let target = self.navigationController?.value(forKey: "_cachedInteractionController")
          let recognizer = UIPanGestureRecognizer(target: target, action: Selector(("handleNavigationTransition:")))
          self.view.addGestureRecognizer(recognizer)
        
        textView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        textView.layer.borderWidth = 1.0
        tableView.register(UINib(nibName: "ChatCommonCell", bundle: nil), forCellReuseIdentifier: "ChatCommonCell")
        tableView.register(UINib(nibName: "MyCommonCell", bundle: nil), forCellReuseIdentifier: "MyCommonCell")
        tableView.register(UINib(nibName: "MyImageCell", bundle: nil), forCellReuseIdentifier: "MyImageCell")
        tableView.register(UINib(nibName: "ChatImageCell", bundle: nil), forCellReuseIdentifier: "ChatImageCell")
        tableView.dataSource = self
        tableView.delegate = self
        fetchAttributes(completion: {_ in
            self.fetchMessage()
            self.subscribeMessage()
        })
        
        if #available(iOS 10.0, *) {
            // iOS 10
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: { (granted, error) in
                if error != nil {
                    return
                }

                if granted {
                    print("通知許可")

                    let center = UNUserNotificationCenter.current()
                    center.delegate = self

                } else {
                    print("通知拒否")
                }
            })

        } else {
            // iOS 9以下
            let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
        }
    }
    
    @IBAction func send(_ sender: UIButton) {
        // キーボード閉じる
        self.textView.resignFirstResponder()
        
        //現在時刻を取得
        let dt = Date()
        let dateFormatter = DateFormatter()
        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
        
        if textView.text == "" {
            return
        }
        
        let message = Message(username: studentId, content: textView.text!, created: dateFormatter.string(from: dt), imageBool: false, imageIndex: 0, imageURL: "", opponentId: NSLocalizedString("admin sub id", comment: ""), opponentName: "八重山HUB" )
        // mutateで新規メッセージを作成
         Amplify.API.mutate(request: .create(message)) { event in
             switch event {
             case .success(let result):
                 switch result {
                 case .success(let message):
                     print("Successfully created the message: \(message)")
                    self.messagesFlag.append(true)
                    self.pushFlag = false
                 case .failure(let graphQLError):
                     // サーバーからのエラーの場合はこっち
                     print("Failed to create graphql \(graphQLError)")
                 }
             case .failure(let apiError):
                 // 通信まわりなどのErrorになった場合はこっち
                 print("Failed to create a message", apiError)
             }
         }
        self.textView.text = ""
    }
    
    @IBAction func camera(_ sender: UIButton) {
        activeCamera()
    }
    
}
extension ChatViewController {
    
    func dateSort() {
        var dateArray:[Date] = []
        var messageArray:[Message] = []
        for date in messages {
            let formatter = DateFormatter()
            formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
            let formattedDate = formatter.date(from: date.created)
            if let fD = formattedDate {
                dateArray.append(fD)
            }
        }
        
        let dateSorted = dateArray.enumerated().sorted { $0.element < $1.element }
        
        for indexPathRow in 0..<dateArray.count {
            //並べ替えた後のタプルからindex番号(offset)を取り出す
            let originalIndex = dateSorted[indexPathRow]
            messageArray.append(messages[originalIndex.offset])
            if messageArray[indexPathRow].username == studentId {
                messagesFlag.append(true)
            } else {
                messagesFlag.append(false)
            }
        }
       // messages.removeAll()
        messages = messageArray
    }
    
    func fetchMessage() {
       // Amplify SDK経由でqueryオペレーションを実行しMessageの配列を取得
        Amplify.API.query(request: .list(Message.self, where: nil)) { event in
           switch event {
           case .success(let result):
               // GraphQLの場合、Query失敗時のerrorもレスポンスに含まれる
               switch result {
               case .success(let messages):
                    self.messages = messages
                    self.dateSort()
                    DispatchQueue.main.async {
                        // tableViewを更新
                        self.tableView.reloadData()
                        //一番下から始まるようにスワイプ
                        if self.messages.count != 0 {
                            let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
                            self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: false)
                        }
                    }
               case .failure(_): break
                   // サーバーから返されるエラーはこっち
               }
           case .failure(_): break
               // 通信エラー等の場合はこっち
           }
       }
    }
    
    func subscribeMessage() {
            // 新たなメッセージの作成を購読する
            subscription = Amplify.API.subscribe(request: .subscription(of: Message.self, type: .onCreate), valueListener: { (subscriptionEvent) in
                // 購読したイベント内容をチェック
                switch subscriptionEvent {

                // サブスクリプションの接続状態の変更を検知
                case .connection(let subscriptionConnectionState):
                    print("Subscription connect state is \(subscriptionConnectionState)")

                // データの更新を検知
                case .data(let result):
                    switch result {
                    case .success(let createdMessage):
                        DispatchQueue.main.async {
                            //self.newMessage = createdMessage
                            // テーブル更新
                            if self.pushFlag {
                                self.messagesFlag.append(false)
                            }
                            self.messages.append(createdMessage)
                            self.tableView.reloadData()
                            self.pushFlag = true
                             
                            // 最新のメッセージまでスクロール
                            let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
                            self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
                        }
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                    }
                }
            }) { result in
                switch result {
                case .success:
                    print("Subscription has been closed successfully")
                case .failure(let apiError):
                    print("Subscription has terminated with \(apiError)")
                }
            }
        }
}
extension ChatViewController {
    
    func fetchAttributes(completion: @escaping(String) -> Void) {
       Amplify.Auth.fetchAuthSession { result in
           do {
               let session = try result.get()
               // Get user sub or identity id
               if let identityProvider = session as? AuthCognitoIdentityProvider {
                   let usersub = try identityProvider.getUserSub().get()
                   self.studentId = usersub
                completion(self.studentId)
               }
           } catch {
               print("Fetch auth session failed with error - \(error)")
           }
       }
   }
    
}
extension ChatViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if messages[indexPath.row].image {
        if messagesFlag[indexPath.row] {
            if messages[indexPath.row].imageBool {
                let cell = tableView.dequeueReusableCell(withIdentifier: "MyImageCell")  as? MyImageCell
                //選択したセルの色が変わらないように設定
                cell?.backgroundColor = .clear
                let cellBackgroundView = UIView()
                cellBackgroundView.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)
                cell?.selectedBackgroundView = cellBackgroundView
                
                self.view.addSubview(cell!)
                do {
                    let data = try Data(contentsOf: URL(string: messages[indexPath.row].imageURL)!)
                    //student.icon = UIImage(data: data)!
                    cell?.chatImage.image = UIImage(data: data)
                } catch let err {
                    print("Error : \(err.localizedDescription)")
                }
                tableView.tableFooterView = UIView()
                return cell ?? MyImageCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "MyCommonCell")  as? MyCommonCell
                //選択したセルの色が変わらないように設定
                cell?.backgroundColor = .clear
                let cellBackgroundView = UIView()
                cellBackgroundView.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)
                cell?.selectedBackgroundView = cellBackgroundView
                
                cell?.contentsText.translatesAutoresizingMaskIntoConstraints = false
                self.view.addSubview(cell!)
                cell?.contentsText.text = messages[indexPath.row].content
                tableView.tableFooterView = UIView()
                return cell ?? MyCommonCell()
            }
        } else {
            if messages[indexPath.row].imageBool {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ChatImageCell") as? ChatImageCell
                //選択したセルの色が変わらないように設定
                cell?.backgroundColor = .clear
                let cellBackgroundView = UIView()
                cellBackgroundView.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)
                cell?.selectedBackgroundView = cellBackgroundView
                
                self.view.addSubview(cell!)
                do {
                    let data = try Data(contentsOf: URL(string: messages[indexPath.row].imageURL)!)
                    //student.icon = UIImage(data: data)!
                    cell?.chatImage.image = UIImage(data: data)
                } catch let err {
                    print("Error : \(err.localizedDescription)")
                }
                tableView.tableFooterView = UIView()
                return cell ?? ChatImageCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCommonCell")  as? ChatCommonCell
                //選択したセルの色が変わらないように設定
                cell?.backgroundColor = .clear
                let cellBackgroundView = UIView()
                cellBackgroundView.backgroundColor = UIColor.init(red: 105/255, green: 192/255, blue: 248/255, alpha: 0)
                cell?.selectedBackgroundView = cellBackgroundView
                
                cell?.contentsText.translatesAutoresizingMaskIntoConstraints = false
                self.view.addSubview(cell!)
                cell?.contentsText.text = messages[indexPath.row].content
                tableView.tableFooterView = UIView()
                return cell ?? ChatCommonCell()
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            //tableView.estimatedRowHeight
        if messages[indexPath.row].imageBool {
            return 152
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // セル選択時に文字色を変更
            tableView.cellForRow(at: indexPath)?.backgroundColor = .white
        }

}
extension ChatViewController {

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
            //現在時刻を取得
            let dt = Date()
            let dateFormatter = DateFormatter()
            // DateFormatter を使用して書式とロケールを指定する
            dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))

            let message = Message(username: studentId, content: "", created: dateFormatter.string(from: dt), imageBool: true, imageIndex: messages.count, imageURL: "https://deo8s1ilcmg8f.cloudfront.net/public/chat/\(studentId)/\(String(messages.count))", opponentId: NSLocalizedString("admin sub id", comment: ""), opponentName: "八重山HUB")
            // mutateで新規メッセージを作成
             Amplify.API.mutate(request: .create(message)) { event in
                 switch event {
                 case .success(let result):
                     switch result {
                     case .success(let message):
                         print("Successfully created the message: \(message)")
                        self.messagesFlag.append(true)
                        self.pushFlag = false
                        self.imageInstant = image
                        self.uploadData(photo: self.imageInstant)
                     case .failure(let graphQLError):
                         // サーバーからのエラーの場合はこっち
                         print("Failed to create graphql \(graphQLError)")
                     }
                 case .failure(let apiError):
                     // 通信まわりなどのErrorになった場合はこっち
                     print("Failed to create a message", apiError)
                 }
             }
            picker.dismiss(animated: true, completion: nil)
        }
        print("!!!!!")
    }
}
extension ChatViewController {
    func uploadData(photo: UIImage) {
        let dataString = photo
        let data = dataString.pngData()!
        //let data = photo
        Amplify.Storage.uploadData(key: "chat/\(studentId)/\(messages.count-1)", data: data,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { (event) in
                switch event {
                case .success(let data):
                    print("Completed: \(data)")
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        })
    }
}
extension ChatViewController {
    // 入力パーツ以外のどこかをタップしたらKBDを閉じる
    //KBD閉じる処理
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    /*
    // キーボードが表示された時
    @objc private func keyboardWillShow(sender: NSNotification) {
        if textField.isFirstResponder {
            guard let userInfo = sender.userInfo else { return }
            let duration: Float = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! NSNumber).floatValue
            UIView.animate(withDuration: TimeInterval(duration), animations: { () -> Void in
                let transform = CGAffineTransform(translationX: 0, y: -150)
                self.view.transform = transform
            })
        }
    }

    // キーボードが閉じられた時
    @objc private func keyboardWillHide(sender: NSNotification) {
        guard let userInfo = sender.userInfo else { return }
        let duration: Float = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! NSNumber).floatValue
        UIView.animate(withDuration: TimeInterval(duration), animations: { () -> Void in
            self.view.transform = CGAffineTransform.identity
        })
    }*/
}
