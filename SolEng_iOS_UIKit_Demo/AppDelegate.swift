//
//  AppDelegate.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/09.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//

import UIKit
import SendBirdUIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        initSendBird()
        
        // 푸시 등록
        initializeRemoteNotification()
        
        return true
    }
    
    func initSendBird() {

        let APP_ID = "521FF53A-352D-4802-A285-F176C21BB825" // The ID of the Sendbird application which UIKit sample app uses.
        SBUMain.initialize(applicationId: APP_ID)

        // Case 1: USER_ID only
        SBUGlobals.CurrentUser = SBUUser(userId: "Yongjun02")
        // Case 2: Specify all fields
        //SBUGlobals.CurrentUser = SBUUser(userId: {USER_ID}, nickname:{(opt)NICKNAME} profileUrl:{(opt)PROFILE_URL})
        //SBUGlobals.CurrentUser = SBUUser(userId: "yongyong")
        //SBUGlobals.AccessToken = "ac8a337f000967d7559477b0d733af5699048606"

        // Theme
        // 1 - global dark theme
        //SBUTheme.set(theme: .dark)

        // 2 - globar light theme
        //SBUTheme.set(theme: .light)

        // Output all logs
        SBUMain.setLogLevel(.all)
        // Output only specific logs
        // SBUMain.setLogLevel([.error, .info])
        

    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        application.applicationIconBadgeNumber = 0
    }
    
    func initializeRemoteNotification() {
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        center.requestAuthorization(options: [.sound, .alert]) { granted, error in
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        SBUMain.registerPush(deviceToken: deviceToken) { (success) in
            print(success)
        }
    }
}

