//
//  AppDelegate.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?  = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        switchViewIfNeed()
            window?.makeKeyAndVisible()
        return true
    
    }
    
    func switchViewIfNeed() {
        window?.rootViewController = DotaRouter.createModule()
    }

    

}

