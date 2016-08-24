//
//  AppDelegate.swift
//  Lippi
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit
import Fabric
import Answers

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), forBarMetrics: .Default)
        let storyboard = grabStoryboard()
        self.window?.rootViewController = storyboard.instantiateInitialViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func grabStoryboard() -> UIStoryboard {
        // determine screen size
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        var storyboard: UIStoryboard! = nil

        switch (screenHeight)
            {
            // iPhone 4s
            case 480:
                storyboard = UIStoryboard(name: "Storyboard3.5Inch", bundle: nil)
            // iPhone 5s
            case 568:
                storyboard = UIStoryboard(name: "Storyboard4Inch", bundle: nil)
            // iPhone 6
            case 667:
                storyboard = UIStoryboard(name: "Main", bundle: nil)
            // iPhone 6 Plus
            case 736:
                storyboard = UIStoryboard(name: "Main", bundle: nil)
            default:
            //iPad
                storyboard = UIStoryboard(name: "Main", bundle: nil)
            }
            return storyboard
            }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }


}

