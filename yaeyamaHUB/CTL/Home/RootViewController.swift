//
//  RootViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import UIKit

protocol SwipeBackable {
      func setSwipeBack()
}
extension SwipeBackable where Self: UIViewController {
  func setSwipeBack() {
      let target = self.navigationController?.value(forKey: "_cachedInteractionController")
      let recognizer = UIPanGestureRecognizer(target: target, action: Selector(("handleNavigationTransition:")))
      self.view.addGestureRecognizer(recognizer)
  }
}

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openPost(_ sender: Any) {
        DispatchQueue.main.async {
            let baseVC = self
            let storyboard = UIStoryboard(name: "HomeCTL", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Post") as! PostViewController
            let next = vc
            next.modalPresentationStyle = .fullScreen
            baseVC.present(next,animated: true)
        }
    }
    

}
