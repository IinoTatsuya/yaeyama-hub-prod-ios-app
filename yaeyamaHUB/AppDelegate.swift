//
//  AppDelegate.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        do {
              try Amplify.add(plugin: AWSCognitoAuthPlugin())
              try Amplify.add(plugin: AWSAPIPlugin())
              try Amplify.add(plugin: AWSS3StoragePlugin())
              try Amplify.configure()
              print("Amplify configured with API plugin")
          } catch {
              print("Failed to initialize Amplify with \(error)")
          }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

