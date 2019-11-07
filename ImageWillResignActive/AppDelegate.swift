//
//  AppDelegate.swift
//  ImageWillResignActive
//
//  Created by Junior Obici on 13/09/19.
//  Copyright © 2019 Junior Obici. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        let imageView: UIImageView = UIImageView.init(frame: self.window!.bounds)
        imageView.tag = 101
        imageView.image = UIImage(named: "LaunchScreen")
        UIApplication.shared.keyWindow?.subviews.last?.addSubview(imageView)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        if let subviews = UIApplication.shared.keyWindow?.subviews.last?.subviews {
            for view in subviews {
                if view.tag == 101 {
                    view.removeFromSuperview()
                }
            }
        }
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

