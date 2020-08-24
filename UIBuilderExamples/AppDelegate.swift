//
//  AppDelegate.swift
//  UIBuilderExamples
//
//  Created by Tal Ben Asuli MAC  on 24/08/2020.
//  Copyright © 2020 UIBuider. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        NotificationCenter.default.post(name: .NSExtensionHostDidBecomeActive, object: nil)
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

