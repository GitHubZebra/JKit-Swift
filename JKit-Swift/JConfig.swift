//
//  JConfig.swift
//  JKitDemo
//
//  Created by Zebra on 2017/7/20.
//  Copyright © 2017年 Zebra. All rights reserved.
//

import UIKit

/// 当前系统版本
public let version = (UIDevice.current.systemVersion as NSString).floatValue

/// UIScreen.main.bounds
public let JScreenBounds = UIScreen.main.bounds

/// UIScreen.main.bounds.size
public let JScreenSize   = JScreenBounds.size

/// UIScreen.main.bounds.size.width
public let JScreenWidth  = JScreenSize.width

/// UIScreen.main.bounds.size.height
public let JScreenHeight = JScreenSize.height

/// UIApplication.shared.delegate!
public let JDelegate = UIApplication.shared.delegate!

/// UIApplication.shared.delegate!.window!!
public let JWindow = JDelegate.window!!

/// UIApplication.shared.keyWindow!
public let JKeyWindow = UIApplication.shared.keyWindow!

public func JFont ( _ size: CGFloat ) -> UIFont { return UIFont.systemFont(ofSize: size) }

public func JBoldFont ( _ size: CGFloat ) -> UIFont { return UIFont.boldSystemFont(ofSize: size) }



		
