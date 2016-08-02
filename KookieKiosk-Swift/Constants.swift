//
//  Constants.swift
//  KookieKiosk-Swift
//
//  Created by Barbara Reichart on 14/07/14.
//  Copyright (c) 2014 Barbara Reichart. All rights reserved.
//

enum ZPosition: Int {
    case background, stockItemsBackground, stockItemsForeground, HUDBackground, HUDForeground
}

enum State: Int {
  case empty, stocking, stocked, selling
}

let TimeScale: Float = 0.1

