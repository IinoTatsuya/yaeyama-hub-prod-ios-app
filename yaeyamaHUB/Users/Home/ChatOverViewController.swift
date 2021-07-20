//
//  ChatOverViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/07.
//

import UIKit

class ChatOverViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TalkCell", bundle: nil), forCellReuseIdentifier: "TalkCell")
        tableView.tableFooterView = UIView(frame: .zero)  //空セルのセパレータ削除

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "TalkCell") as? TalkCell
        cell?.name.text = "八重山HUB"
        cell?.icon.image = UIImage(systemName: "Person")
 
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "GoChat", sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
    }
    
}
