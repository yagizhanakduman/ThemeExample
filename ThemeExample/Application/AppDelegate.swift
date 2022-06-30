//
//  AppDelegate.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        setupNavigationAppearance()
        return true
    }
    
    private func setupRootViewController() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: MainViewController())
        window.makeKeyAndVisible()
        self.window = window
    }
    
    private func setupNavigationAppearance() {
        UINavigationBar.appearance().barTintColor = .backgroundSecondary
        UIBarButtonItem.appearance().tintColor = .objectHighlighted
        if #available(iOS 15, *) {
            /// Set as default
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.shadowColor = UIColor.clear
            appearance.backgroundColor = .backgroundSecondary
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: .objectWhite ?? UIColor.white]
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        } else {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: .objectWhite ?? UIColor.white]
            UINavigationBar.appearance().backgroundColor = .backgroundSecondary
        }
    }

}

