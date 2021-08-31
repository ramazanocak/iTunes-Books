//
//  AppDelegate.swift
//  iTunes-Books
//
//  Created by Ramazan Ocak on 26.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let homeVC = HomeVC(nibName: "HomeVC", bundle: nil)
        let nvc = UINavigationController(rootViewController: homeVC)
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = nvc
        window!.makeKeyAndVisible()
        
        return true
    }
}
