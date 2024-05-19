//
//  AppDelegate.swift
//  Arbuz.kz
//
//  Created by Akmaral Ergesh on 20.05.2024.
//

import UIKit
import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create UIWindow
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        // Create SwiftUI view
        let contentView = WelcomeView()
        let hostingController = UIHostingController(rootView: contentView)
        let navigationController = UINavigationController(rootViewController: hostingController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }
}
