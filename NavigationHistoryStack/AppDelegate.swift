//
//  AppDelegate.swift
//  NavigationHistoryStack
//
//  Created by Guye Raphael, I233 on 26.07.21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        applyBackButtonTitleTransparency()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
    /// Reference : https://sarunw.com/posts/what-should-you-know-about-navigation-history-stack-in-ios14/#:~:text=With%20iOS%2014%2C%20if%20you,bring%20up%20the%20history%20stack.
    private func applyBackButtonTitleTransparency() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()

        appearance.backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }

}

