//
//  HomeTabCTLViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import UIKit

class HomeCTLTabViewController:  UITabBarController,UIViewControllerTransitioningDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    //    UITabBar.appearance().tintColor = UIConsts.SymbolicColor
        UITabBar.appearance().backgroundColor = UIColor.white
        
        assert(self.viewControllers!.count == TabItem.allCases.count)
        for (i, vc) in self.viewControllers!.enumerated() {
            vc.title = TabItem.allCases[i].asTitle
        }
    }
    
    public func selectTabItem(_ menu: TabItem) {
        self.selectedIndex = menu.rawValue
    }

    enum TabItem: Int, CaseIterable {
        case timeline = 0
        case chat
        case search
        case settings
        
        var asString: String {
            switch self {
            case .timeline:
                return "timeline"
            case .chat:
                return "chat"
            case .search:
                return "search"
            case .settings:
                return "settings"
            }
        }
        
        var asTitle: String {
            let key = "tabitems.label.\(self.asString)"
            return NSLocalizedString(key, comment: "")
        }
    }
}
