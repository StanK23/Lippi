//
//  AppDelegate.swift
//  Lippi
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        let storyboard = grabStoryboard()
        self.window?.rootViewController = storyboard.instantiateInitialViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func grabStoryboard() -> UIStoryboard {
        // determine screen size
        let screenHeight = UIScreen.main.bounds.size.height
        var storyboard: UIStoryboard! = nil
        
        switch (screenHeight)
            {
            // iPhone 4s
            case 480.0:
                storyboard = UIStoryboard(name: "Storyboard4S", bundle: nil)
            // iPhone 5s
            case 568.0:
                storyboard = UIStoryboard(name: "Storyboard5S", bundle: nil)
            // iPhone 6
            case 667.0:
                storyboard = UIStoryboard(name: "Storyboard6", bundle: nil)
            // iPhone 6 Plus
            case 736.0:
                storyboard = UIStoryboard(name: "Storyboard6Plus", bundle: nil)
            default:
            //iPad
                storyboard = UIStoryboard(name: "Main", bundle: nil)
            }
            return storyboard
            }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

