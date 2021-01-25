//
//  AppDelegate.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        AppRouter.shared.start()
        return true
    }
}
