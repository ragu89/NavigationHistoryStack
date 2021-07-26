//
//  SceneDelegate.swift
//  NavigationHistoryStack
//
//  Created by Guye Raphael, I233 on 26.07.21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
            if let windowScene = scene as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                
                let viewController = RootViewController()
                let navigation = UINavigationController(rootViewController: viewController)
                window.rootViewController = navigation
                
                self.window = window
                window.makeKeyAndVisible()
            }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

