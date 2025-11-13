//
//  UIImage.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/17.
//

#if canImport(UIKit)
import UIKit

extension UIImage.SymbolConfiguration {
    
    public static var defaultBody: UIImage.SymbolConfiguration {
        Self.symbolConfig(textStyle: .body, weight: .regular, scale: .default)
    }
    
    public static func symbolConfig(
        textStyle: UIFont.TextStyle = .body,
        weight: UIImage.SymbolWeight = .regular,
        scale: UIImage.SymbolScale = .medium
    ) -> UIImage.SymbolConfiguration {
        UIImage.SymbolConfiguration(font: .preferredFont(forTextStyle: textStyle))
            .applying(UIImage.SymbolConfiguration(weight: weight))
            .applying(UIImage.SymbolConfiguration(scale: scale))
    }
}

extension UIImage {
    
    public static func image(named name: String, style: SymbolStyle, bundle: Bundle? = nil) -> UIImage? {
        if let image = UIImage(systemName: name, withConfiguration: style.symbolConfig) {
            return image
        } else if let image = UIImage(named: name, in: bundle, with: style.symbolConfig) {
            return image
        } else {
            return nil
        }
    }
}

#endif
