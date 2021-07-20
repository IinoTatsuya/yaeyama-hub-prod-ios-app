//
//  TimelineViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient

class TimelineViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var refreshControl:UIRefreshControl!
    let semaphore = DispatchSemaphore(value: 1)
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        self.fetchPost()
      //  })
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "再読み込み中")
        refreshControl.addTarget(self, action: #selector(TimelineViewController.refresh), for: UIControl.Event.valueChanged)
        tableView.addSubview(refreshControl)
        tableView.register(UINib(nibName: "TimelineImageCell", bundle: nil), forCellReuseIdentifier: "TimelineImageCell")
        tableView.register(UINib(nibName: "TimelineTextCell", bundle: nil), forCellReuseIdentifier: "TimelineTextCell")
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
 //       fetchImageIndexList(completion: {
            //self.fetchPost()
   //     })
        tableView.reloadData()
    }


    func fetchImageIndexList (completion: @escaping() -> Void) {
    /*    Amplify.Storage.list { event in
            switch event {
            case let .success(listResult):
                print("Completed")
                listResult.items.forEach { item in
                    print("Key: \(item.key)")
                    imageIndexList.append(Int(item.key)!)
                    let url = URL(string: "https://d1s5vizjobvle5.cloudfront.net/public/\(item.key)")
                    if let url = url {
                        do {
                            let data = try Data(contentsOf: url)
                            //student.icon = UIImage(data: data)!
                            imageList[Int(item.key)!] = UIImage(data: data)!
                            print(item.key)
                            completion()
                        } catch let err {
                            print("Error : \(err.localizedDescription)")
                        }
                    }
                }
            case let .failure(storageError):
                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        }*/
    }
}

extension TimelineViewController {
    //tableview要素
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if posts[indexPath.row].imageBool {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineImageCell")  as? TimelineImageCell
            cell?.postImage.image = nil
            cell?.postDescription.text = posts[indexPath.row].description
           // cell?.name.text = posts[indexPath.row].name
            cell?.name.text = "八重山HUB"
            cell?.createDay.text = "-\(posts[indexPath.row].created)"
                do {
                    let data = try Data(contentsOf: URL(string: posts[indexPath.row].imageURL)!)
                    //student.icon = UIImage(data: data)!
                    cell?.postImage.image = UIImage(data: data)
                } catch let err {
                    print("Error : \(err.localizedDescription)")
                }
            return cell ?? TimelineImageCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineTextCell")  as? TimelineTextCell
            cell?.postDescription.text = posts[indexPath.row].description
           // cell?.name.text = posts[indexPath.row].name
            cell?.name.text = "八重山HUB"
            cell?.createDay.text = "-\(posts[indexPath.row].created)"

            return cell ?? TimelineTextCell()
        }
    }
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            //tableView.estimatedRowHeight
        if posts[indexPath.row].imageBool {
            return UITableView.automaticDimension
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "TimelineToChat", sender: nil)
         
     }
}

extension TimelineViewController {
    
    //データ取得
    func fetchPost() {

       // Amplify SDK経由でqueryオペレーションを実行しMessageの配列を取得
        Amplify.API.query(request: .list(Timeline.self, where: nil)) { event in
           switch event {
           case .success(let result):
               // GraphQLの場合、Query失敗時のerrorもレスポンスに含まれる
               switch result {
               case .success(let post):
                    posts = post
                    self.dateSort()
                    DispatchQueue.main.async {
                        // tableViewを更新
                        self.tableView.reloadData()
                    }
               case .failure(_): break
                   // サーバーから返されるエラーはこっち
               }
           case .failure(_): break
               // 通信エラー等の場合はこっち
           }
       }
    }
    
    //日付順に並べ替え
    func dateSort() {
        var dateArray:[Date] = []
        var postArray:[Timeline] = []
        for date in posts {
            let formatter = DateFormatter()
            formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
            let formattedDate = formatter.date(from: date.created)
            if let fD = formattedDate {
                dateArray.append(fD)
            }
        }
        //新しい投稿が上に来るようにソート
        let dateSorted = dateArray.enumerated().sorted { $0.element > $1.element }
        
        for indexPathRow in 0..<dateArray.count {
            //並べ替えた後のタプルからindex番号(offset)を取り出す
            let originalIndex = dateSorted[indexPathRow]
            postArray.append(posts[originalIndex.offset])
        }
        posts = postArray
    }
}
extension TimelineViewController {
    
    //データ更新ロジック
    @objc func refresh() {
         updateData()
         semaphore.wait()
         semaphore.signal()
         // データ更新関数が終了したら、リフレッシュの表示も終了する
         refreshControl.endRefreshing()
     }
    func updateData () {
        DispatchQueue.global().async {

            self.fetchImageIndexList(completion: {
                self.fetchPost()
            })

            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.semaphore.signal() // 処理が終わった信号を送る
            }
        }
    }
}

var posts:[Timeline] = []
var imageIndexList:[Int] = []
var imageList:[Int:UIImage] = [:]

