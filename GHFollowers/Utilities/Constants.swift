//
//  Constants.swift
//  GHFollowers
//
//  Created by Sean Allen on 1/22/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import UIKit

enum SFSymbols {
    static let location                 = UIImage(named: "mappin.and.ellipse")
    static let repos                    = UIImage(named: "folder")
    static let gists                    = UIImage(named: "text.alignleft")
    static let followers                = UIImage(named: "heart")
    static let following                = UIImage(named: "person.2")
}


enum Images {
    static let placeholder              = UIImage(named: .avatarPlaceholder)
    static let ghLogo                   = UIImage(resource: .ghLogo)
    static let emptystatelogo           = UIImage(resource: .emptystatelogo)
}


enum ScreenSize {
    static let width                    = UIScreen.main.bounds.size.width
    static let height                   = UIScreen.main.bounds.size.height
    static let maxLength                = max(ScreenSize.width, ScreenSize.height)
    static let minLength                = min(ScreenSize.width, ScreenSize.height)
}


enum DeviceTypes {
    static let idiom                    = UIDevice.current.userInterfaceIdiom
    static let nativeScale              = UIScreen.main.nativeScale
    static let scale                    = UIScreen.main.scale

    static let isiPhoneSE               = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed          = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard    = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed      = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX                = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr       = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                   = idiom == .pad && ScreenSize.maxLength >= 1024.0

    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
