//
//  SceneDelegate.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/16.
//

import UIKit
import SwiftUI
import Amplify
import AmplifyPlugins
import AWSMobileClient
import AWSPluginsCore

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        _ = Amplify.Auth.fetchAuthSession { result in
            switch result {
            case .success(let session):
                print("Is user signed in - \(session.isSignedIn)")
                if session.isSignedIn {
                    Amplify.Auth.fetchUserAttributes() { result in
                        switch result {
                        case .success(let attributes):
                            if let email = attributes.filter({ $0.key.rawValue == "email"}).first?.value {
                                user.email = email
                            }
                            //カスタム属性取得
                            if let custom = attributes.filter({ $0.key.rawValue == "custom:type"}).first?.value {
                             user.env = custom
                                if custom == "CTL" {
                                    // TODO: DEBUG
                                    DispatchQueue.main.async {
                                        let topScene = UIStoryboard(name: "HomeCTL", bundle: nil).instantiateViewController(identifier: "HomeCTLTabViewController") as! HomeCTLTabViewController
                                        // Use a UIHostingController as window root view controller.
                                        if let windowScene = scene as? UIWindowScene {
                                            let window = UIWindow(windowScene: windowScene)
                                            window.rootViewController = topScene // UIHostingController(rootView: swiftUI)
                                            self.window = window
                                            window.makeKeyAndVisible()
                                        }
                                    }
                                } else {
                                }
                            } else {
                                // TODO: DEBUG
                                DispatchQueue.main.async {
                                    let topScene = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "HomeTabViewController") as! HomeTabViewController
                                    // Use a UIHostingController as window root view controller.
                                    if let windowScene = scene as? UIWindowScene {
                                        let window = UIWindow(windowScene: windowScene)
                                        window.rootViewController = topScene // UIHostingController(rootView: swiftUI)
                                        self.window = window
                                        window.makeKeyAndVisible()
                                    }
                                }
                            }
                        case .failure(let error):
                            print("Fetching user attributes failed with error \(error)")
                         
                        }
                    }
                    
                    // idトークン アクセストークン取得
                    Amplify.Auth.fetchAuthSession { result in
                        do {
                            let session = try result.get()

                            // Get user sub or identity id
                            if let identityProvider = session as? AuthCognitoIdentityProvider {
                                let usersub = try identityProvider.getUserSub().get()
                                let identityId = try identityProvider.getIdentityId().get()
                               // print("User sub - \(usersub) and identity id \(identityId)")
                                user.id = usersub
                            }

                            // Get aws credentials
                            if let awsCredentialsProvider = session as? AuthAWSCredentialsProvider {
                                let credentials = try awsCredentialsProvider.getAWSCredentials().get()
                               // print("Access key - \(credentials.accessKey) ")
                            }

                            // Get cognito user pool token
                            if let cognitoTokenProvider = session as? AuthCognitoTokensProvider {
                                let tokens = try cognitoTokenProvider.getCognitoTokens().get()
                            //    print("Id token - \(tokens.idToken) ")
                            //    print("Access token -  \(tokens.accessToken)")
                                 user.idToken = tokens.idToken
                                 user.refreshToken = tokens.refreshToken
                            }

                        } catch {
                            print("Fetch auth session failed with error - \(error)")
                        }
                    }
                } else {
                    DispatchQueue.main.async {
                        let topScene = UIStoryboard(name: "SignIn", bundle: nil).instantiateViewController(identifier: "Top") as! TopViewController
                        // Use a UIHostingController as window root view controller.
                        if let windowScene = scene as? UIWindowScene {
                            let window = UIWindow(windowScene: windowScene)
                            window.rootViewController = topScene // UIHostingController(rootView: swiftUI)
                            self.window = window
                            window.makeKeyAndVisible()
                        }
                    }
            }
            case .failure(let error):
                print("Fetch session failed with error \(error)")
            }
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func switchViewController(viewController: UIViewController) {
        UIView.transition(with: self.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            let oldState: Bool = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            self.window?.rootViewController = viewController
            UIView.setAnimationsEnabled(oldState)
        }, completion: nil)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

