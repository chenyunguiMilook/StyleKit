//
//  SymbolStyle.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/17.
//


import UIKit

public struct SymbolStyle: Sendable {
    public var style: UIFont.TextStyle
    public var weight: UIImage.SymbolWeight
    public var scale: UIImage.SymbolScale
    
    public init(
        style: UIFont.TextStyle = .body,
        weight: UIImage.SymbolWeight = .regular,
        scale: UIImage.SymbolScale = .default
    ) {
        self.style = style
        self.weight = weight
        self.scale = scale
    }
}

extension SymbolStyle {
    public static let `default` = SymbolStyle(style: .body, weight: .regular, scale: .default)
    
    public var symbolConfig: UIImage.SymbolConfiguration {
        UIImage.SymbolConfiguration.symbolConfig(
            textStyle: style,
            weight: weight,
            scale: scale
        )
    }
    public var font: UIFont {
        UIFont.preferredFont(forTextStyle: style)
    }
}
