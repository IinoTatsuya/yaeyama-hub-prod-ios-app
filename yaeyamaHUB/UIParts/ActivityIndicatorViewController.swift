//
//  ActivityIndicatorViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {

    @IBOutlet var indicator: UIActivityIndicatorView!
    private var _isAppear: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _isAppear = true
        if !indicator.isAnimating {
            indicator.startAnimating()
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if indicator.isAnimating {
            indicator.stopAnimating()
        }
        _isAppear = false
    }
    
    public func dismissMe(completion:((Bool)->())?=nil) {
        DispatchQueue.main.async {
            if self.isAppear() {
                self.dismiss(animated: true) {
                    self.indicator.stopAnimating()
                    self._isAppear = false
                }
            }
            // completionは∀
            if let c = completion { c(self._isAppear) }
        }
    }
    
    public func isAppear() -> Bool {
        return _isAppear
    }

}
