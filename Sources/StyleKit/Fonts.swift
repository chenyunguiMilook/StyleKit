//
//  FontStyle.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//


import Foundation

#if canImport(UIKit)
import UIKit
public typealias AppFont = UIFont
#elseif canImport(AppKit)
import AppKit
public typealias AppFont = NSFont
#endif

public struct FontStyle: Sendable {
    public let fontSize: CGFloat
    public let fontFamily: String
    public let fontWeight: FontWeight
    public let fontStyle: FontStyleType
    public let letterSpacing: CGFloat
    public let lineHeight: CGFloat
    public let textDecoration: TextDecoration
    public let textCase: TextCase
    
    public init(
        fontSize: CGFloat,
        fontFamily: String,
        fontWeight: FontWeight,
        fontStyle: FontStyleType = .normal,
        letterSpacing: CGFloat = 0,
        lineHeight: CGFloat,
        textDecoration: TextDecoration = .none,
        textCase: TextCase = .none
    ) {
        self.fontSize = fontSize
        self.fontFamily = fontFamily
        self.fontWeight = fontWeight
        self.fontStyle = fontStyle
        self.letterSpacing = letterSpacing
        self.lineHeight = lineHeight
        self.textDecoration = textDecoration
        self.textCase = textCase
    }
    
    #if canImport(UIKit) || canImport(AppKit)
    public var font: AppFont {
        #if canImport(UIKit)
        let weight = fontWeight.uiFontWeight
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: weight)
        #elseif canImport(AppKit)
        let weight = fontWeight.nsFontWeight
        let systemFont = NSFont.systemFont(ofSize: fontSize, weight: weight)
        #endif
        
        if fontFamily == "Inter" {
            return systemFont
        } else if fontFamily == "Roboto Mono" {
            #if canImport(UIKit)
            return UIFont.monospacedSystemFont(ofSize: fontSize, weight: weight)
            #elseif canImport(AppKit)
            return NSFont.monospacedSystemFont(ofSize: fontSize, weight: weight)
            #endif
        }
        
        return systemFont
    }
    #endif
}

public enum FontWeight: Int, Sendable {
    case regular = 400
    case semibold = 600
    case bold = 700
    
    #if canImport(UIKit)
    public var uiFontWeight: UIFont.Weight {
        switch self {
        case .regular: return .regular
        case .semibold: return .semibold
        case .bold: return .bold
        }
    }
    #elseif canImport(AppKit)
    public var nsFontWeight: NSFont.Weight {
        switch self {
        case .regular: return .regular
        case .semibold: return .semibold
        case .bold: return .bold
        }
    }
    #endif
}

public enum FontStyleType: String, Sendable {
    case normal
    case italic
}

public enum TextDecoration: String, Sendable {
    case none
    case underline
}

public enum TextCase: String, Sendable {
    case none
    case uppercase
    case lowercase
}

public enum Fonts {
    
    // MARK: - Title
    public static let titleHero = FontStyle(
        fontSize: 34,
        fontFamily: "Inter",
        fontWeight: .bold,
        letterSpacing: -2.16,
        lineHeight: 40
    )
    
    public static let titlePage = FontStyle(
            fontSize: 28,
            fontFamily: "Inter",
            fontWeight: .bold,
            letterSpacing: -0.96,
            lineHeight: 32
        )
    
    // MARK: - Subtitle & Heading
    public static let subtitle = FontStyle(
            fontSize: 22,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 24
        )
    
    public static let heading = FontStyle(
            fontSize: 20,
            fontFamily: "Inter",
            fontWeight: .semibold,
            letterSpacing: -0.48,
            lineHeight: 24
        )
    
    public static let subheading = FontStyle(
            fontSize: 18,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 21
        )
    
    // MARK: - Body
    public static let bodyBase = FontStyle(
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 20
        )
    
    public static let bodyStrong = FontStyle(
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: .semibold,
            lineHeight: 20
        )
    
    public static let bodyEmphasis = FontStyle(
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: .regular,
            fontStyle: .italic,
            lineHeight: 20
        )
    
    public static let bodyLink = FontStyle(
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 20,
            textDecoration: .underline
        )
    
    public static let bodySmall = FontStyle(
            fontSize: 12,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 16
        )
    
    public static let bodySmallStrong = FontStyle(
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: .semibold,
            lineHeight: 18
        )
    
    public static let bodyCode = FontStyle(
            fontSize: 13,
            fontFamily: "Roboto Mono",
            fontWeight: .regular,
            lineHeight: 13
        )
    
    // MARK: - Single Line
    public enum SingleLine {
        //"Used for any text element where you need 100% line height. For example, an input field, a label."
        public static let bodyBase = FontStyle(
                fontSize: 13,
                fontFamily: "Inter",
                fontWeight: .regular,
                lineHeight: 13
            )
        //"single line body small strong",
        public static let bodySmallStrong = FontStyle(
                fontSize: 12,
                fontFamily: "Inter",
                fontWeight: .semibold,
                lineHeight: 12
            )
    }
}

