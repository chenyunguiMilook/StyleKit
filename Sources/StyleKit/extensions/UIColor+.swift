//
//  UIColor+.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/16.
//

import CoreGraphics
import Foundation

extension AppColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(rgba hex: String) {
        var hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hex = hex.replacingOccurrences(of: "#", with: "")
        guard hex.count == 8 else { fatalError("wrong hex format") }
        var rgba: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgba)
        let r = CGFloat((rgba >> 24) & 0xFF) / 255
        let g = CGFloat((rgba >> 16) & 0xFF) / 255
        let b = CGFloat((rgba >>  8) & 0xFF) / 255
        let a = CGFloat(rgba & 0xFF) / 255
        self.init(red: r, green: g, blue: b, alpha: a)
    }
    
    var rgbaComponents: (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        #if canImport(UIKit)
            var (r, g, b, a) = (CGFloat(), CGFloat(), CGFloat(), CGFloat())
            self.getRed(&r, green: &g, blue: &b, alpha: &a)
            return (r, g, b, a)
        #elseif canImport(AppKit)
            if let c = self.usingColorSpace(NSColorSpace.deviceRGB) {
                return (c.redComponent, c.greenComponent, c.blueComponent, c.alphaComponent)
            }
            else {
                return (0, 0, 0, 0)
            }
        #endif
    }
}
