//
//  AppDelegate.swift
//  Firing Periodic Tasks
//
//  Created by Vandad Nahavandipoor on 7/6/14.
//  Copyright (c) 2014 Pixolity Ltd. All rights reserved.
//
//  These example codes are written for O'Reilly's iOS 8 Swift Programming Cookbook
//  If you use these solutions in your apps, you can give attribution to
//  Vandad Nahavandipoor for his work. Feel free to visit my blog
//  at http://vandadnp.wordpress.com for daily tips and tricks in Swift
//  and Objective-C and various other programming languages.
//  
//  You can purchase "iOS 8 Swift Programming Cookbook" from
//  the following URL:
//  http://shop.oreilly.com/product/0636920034254.do
//
//  If you have any questions, you can contact me directly
//  at vandad.np@gmail.com
//  Similarly, if you find an error in these sample codes, simply
//  report them to O'Reilly at the following URL:
//  http://www.oreilly.com/catalog/errata.csp?isbn=0636920034254

/* 1 */
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var paintingTimer: NSTimer?
  var window: UIWindow?
  
  func paint(paramTimer: NSTimer){
    println("Painting")
  }
  
  func startPainting(){
    stopPainting()
    println("Starting painting...")
    paintingTimer = NSTimer.scheduledTimerWithTimeInterval(1.0,
      target: self,
      selector: "paint:",
      userInfo: nil,
      repeats: true)
  }
  
  func stopPainting(){
    if let timer = paintingTimer{
      timer.invalidate()
      paintingTimer = nil
    }
  }
  
  func application(application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
    return true
  }

  func applicationWillResignActive(application: UIApplication) {
    stopPainting()
  }

  func applicationDidBecomeActive(application: UIApplication) {
    startPainting()
  }

}