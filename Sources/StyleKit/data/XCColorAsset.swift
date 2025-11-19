//
//  File.swift
//  
//
//  Created by chenyungui on 2024/3/20.
//

import Foundation

struct XCColorComponent: Codable {
    let alpha: String
    let blue: String
    let green: String
    let red: String
    
    init(color: AppColor) {
        let (r, g, b, a) = color.rgbaComponents
        self.alpha = "\(Int(a * 255))"
        self.red = "\(Int(r * 255))"
        self.green = "\(Int(g * 255))"
        self.blue = "\(Int(b * 255))"
    }
}

struct XCColor: Codable {
    var colorSpace: String = "srgb"
    let components: XCColorComponent
    
    enum CodingKeys: String, CodingKey {
        case colorSpace = "color-space"
        case components
    }
    
    init(color: AppColor) {
        self.components = XCColorComponent(color: color)
    }
}

struct XCAppearance: Codable {
    var appearance: String = "luminosity"
    var value: String = "dark"
}

struct XCColorItem: Codable {
    let color: XCColor
    var idiom: String
    let appearances: [XCAppearance]?
    
    init(lightColor: AppColor) {
        self.color = XCColor(color: lightColor)
        self.appearances = nil
        self.idiom = "universal"
    }
    
    init(darkColor: AppColor) {
        self.color = XCColor(color: darkColor)
        self.appearances = [XCAppearance()]
        self.idiom = "universal"
    }
}

public struct XCColorsAsset: Codable {
    let colors: [XCColorItem]
    var info = XCColorInfo()
    
    public init(light: AppColor, dark: AppColor) {
        let light = XCColorItem(lightColor: light)
        let dark = XCColorItem(darkColor: dark)
        self.colors = [light, dark]
    }
}

struct XCColorInfo: Codable {
    var author: String = "xcode"
    var version: Int = 1
}
