//
//  JConfig.swift
//  JKitDemo
//
//  Created by Zebra on 2017/7/20.
//  Copyright © 2017年 Zebra. All rights reserved.
//

import UIKit

/// UIScreen.main.bounds
public let JScreenBounds: CGRect = UIScreen.main.bounds

/// UIScreen.main.bounds.size
public let JScreenSize: CGSize = JScreenBounds.size

/// UIScreen.main.bounds.size.width
public let JScreenWidth: CGFloat  = JScreenSize.width

/// UIScreen.main.bounds.size.height
public let JScreenHeight: CGFloat = JScreenSize.height

/// 当前系统版本
public let JVersion: Float = (UIDevice.current.systemVersion as NSString).floatValue

public let JiPhone4: Bool = (JScreenHeight == 480)
public let JiPhone5: Bool = (JScreenHeight == 568)
public let JiPhone6: Bool = (JScreenHeight == 667)
public let JiPhone6P: Bool = (JScreenHeight == 736)
public let JiPhoneX: Bool = (JScreenHeight >= 812)

public let JiOS8: Bool = (JVersion >= 8 && JVersion < 9)
public let JiOS9: Bool = (JVersion >= 9 && JVersion < 10)
public let JiOS10: Bool = (JVersion >= 10 && JVersion < 11)
public let JiOS11: Bool = (JVersion >= 11 && JVersion < 12)

/// UIApplication.shared.delegate!
public let JDelegate: UIApplicationDelegate = UIApplication.shared.delegate!

/// UIApplication.shared.delegate!.window!!
public let JWindow: UIWindow = JDelegate.window!!

/// UIApplication.shared.keyWindow!
public let JKeyWindow: UIWindow = UIApplication.shared.keyWindow!

public func JFont ( _ size: CGFloat ) -> UIFont { return UIFont.systemFont(ofSize: size) }

public func JBoldFont ( _ size: CGFloat ) -> UIFont { return UIFont.boldSystemFont(ofSize: size) }

/// GCD定时器倒计时⏳
///   - timeInterval: 循环间隔时间
///   - repeatCount: 重复次数
///   - handler: 循环事件, 闭包参数： 1. timer， 2. 剩余执行次数
public func DispatchTimer(timeInterval: Double, repeatCount:Int, handler:@escaping (DispatchSourceTimer?, Int)->())
{
    if repeatCount <= 0 {
        return
    }
    let timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
    var count = repeatCount
    timer.schedule(wallDeadline: .now(), repeating: timeInterval)
    timer.setEventHandler(handler: {
        count -= 1
        DispatchQueue.main.async {
            handler(timer, count)
        }
        if count == 0 {
            timer.cancel()
        }
    })
    timer.resume()
}

/// GCD定时器循环操作
///   - timeInterval: 循环间隔时间
///   - handler: 循环事件
public func DispatchTimer(timeInterval: Double, handler:@escaping (DispatchSourceTimer?)->())
{
    let timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
    timer.schedule(deadline: .now(), repeating: timeInterval)
    timer.setEventHandler {
        DispatchQueue.main.async {
            handler(timer)
        }
    }
    timer.resume()
}

/// GCD延时操作
///   - after: 延迟的时间
///   - handler: 事件
public func DispatchAfter(after: Double, handler:@escaping ()->())
{
    DispatchQueue.main.asyncAfter(deadline: .now() + after) {
        handler()
    }
}



