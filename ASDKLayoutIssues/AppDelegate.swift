//
//  AppDelegate.swift
//  ASDKLayoutIssues
//
//  Created by Schechter, David on 10/19/16.
//  Copyright © 2016 DavidSchechter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,UITabBarControllerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white

        
        let asdkHomeFeedVC: ViewController = ViewController(withTitle: "")
        
        
        
        let asdkHomeFeedNavCtrl: UINavigationController = UINavigationController(rootViewController: asdkHomeFeedVC)
        asdkHomeFeedNavCtrl.tabBarItem = UITabBarItem(title: "Search", image: nil, tag: 0)
        asdkHomeFeedNavCtrl.hidesBarsOnSwipe = false
        
        
        // UITabBarController
        let tabBarController: UITabBarController = UITabBarController()
        tabBarController.viewControllers = [asdkHomeFeedNavCtrl]
        tabBarController.selectedViewController = asdkHomeFeedNavCtrl
        tabBarController.delegate = self
        UITabBar.appearance().tintColor = UIColor.blue
        UITabBar.appearance().backgroundColor = UIColor.red
        self.window!.rootViewController = tabBarController
        window!.makeKeyAndVisible()
        // Nav Bar appearance
        let attributes: [String : AnyObject] = [NSForegroundColorAttributeName: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().barTintColor = UIColor.lightGray
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().frame.size.height = 10
        //        UINavigationBar.appearance().hidden = true
        // iOS8 hides the status bar in landscape orientation, this forces the status bar hidden status to NO
        application.setStatusBarHidden(true, with: .none)
        application.setStatusBarHidden(false, with: .none)
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

