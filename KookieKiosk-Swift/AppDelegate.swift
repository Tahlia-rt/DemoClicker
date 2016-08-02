//
//  AppDelegate.swift
//  KookieKiosk-Swift
//
//  Created by Barbara Reichart on 14/07/14.
//  Copyright (c) 2014 Barbara Reichart. All rights reserved.
//

import UIKit
import SpriteKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    let notificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Sound, .Badge], categories: nil)
    UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
    
    return true
  }
  
  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }
  
  func applicationDidEnterBackground(application: UIApplication) {
    NSNotificationCenter.defaultCenter().postNotificationName("scheduleNotifications", object: nil)
    NSNotificationCenter.defaultCenter().postNotificationName("saveGameData", object: nil)
  }
  
  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }
  
  func applicationDidBecomeActive(application: UIApplication) {
    UIApplication.sharedApplication().cancelAllLocalNotifications()
    UIApplication.sharedApplication().applicationIconBadgeNumber = 0
    
    // preload sound effects to avoid lag on first playing of sound
    SKAction.playSoundFileNamed("hit.wav", waitForCompletion: false)
    SKAction.playSoundFileNamed("coin.wav", waitForCompletion: false)
  }
  
  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }
  
  
}

