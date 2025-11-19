//
//  FontStyle.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//


import Foundation

#if canImport(UIKit)
import UIKit
public typealias PlatformFont = UIFont
#elseif canImport(AppKit)
import AppKit
public typealias PlatformFont = NSFont
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

public struct FontToken: Sendable {
    public let name: String
    public let style: FontStyle
    public let description: String?
    
    public init(name: String, style: FontStyle, description: String? = nil) {
        self.name = name
        self.style = style
        self.description = description
    }
    
    #if canImport(UIKit) || canImport(AppKit)
    public func font() -> PlatformFont {
        #if canImport(UIKit)
        let weight = style.fontWeight.uiFontWeight
        let systemFont = UIFont.systemFont(ofSize: style.fontSize, weight: weight)
        #elseif canImport(AppKit)
        let weight = style.fontWeight.nsFontWeight
        let systemFont = NSFont.systemFont(ofSize: style.fontSize, weight: weight)
        #endif
        
        if style.fontFamily == "Inter" {
            return systemFont
        } else if style.fontFamily == "Roboto Mono" {
            #if canImport(UIKit)
            return UIFont.monospacedSystemFont(ofSize: style.fontSize, weight: weight)
            #elseif canImport(AppKit)
            return NSFont.monospacedSystemFont(ofSize: style.fontSize, weight: weight)
            #endif
        }
        
        return systemFont
    }
    #endif
}

public enum Fonts {
    
    // MARK: - Title
    public static let titleHero = FontToken(
        name: "title hero",
        style: FontStyle(
            fontSize: 72,
            fontFamily: "Inter",
            fontWeight: .bold,
            letterSpacing: -2.16,
            lineHeight: 86.4
        )
    )
    
    public static let titlePage = FontToken(
        name: "title page",
        style: FontStyle(
            fontSize: 48,
            fontFamily: "Inter",
            fontWeight: .bold,
            letterSpacing: -0.96,
            lineHeight: 57.6
        )
    )
    
    // MARK: - Subtitle & Heading
    public static let subtitle = FontToken(
        name: "subtitle",
        style: FontStyle(
            fontSize: 32,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 38.4
        )
    )
    
    public static let heading = FontToken(
        name: "heading",
        style: FontStyle(
            fontSize: 24,
            fontFamily: "Inter",
            fontWeight: .semibold,
            letterSpacing: -0.48,
            lineHeight: 28.8
        )
    )
    
    public static let subheading = FontToken(
        name: "subheading",
        style: FontStyle(
            fontSize: 20,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 24
        )
    )
    
    // MARK: - Body
    public static let bodyBase = FontToken(
        name: "body base",
        style: FontStyle(
            fontSize: 16,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 22.4
        )
    )
    
    public static let bodyStrong = FontToken(
        name: "body strong",
        style: FontStyle(
            fontSize: 16,
            fontFamily: "Inter",
            fontWeight: .semibold,
            lineHeight: 22.4
        )
    )
    
    public static let bodyEmphasis = FontToken(
        name: "body emphasis",
        style: FontStyle(
            fontSize: 16,
            fontFamily: "Inter",
            fontWeight: .regular,
            fontStyle: .italic,
            lineHeight: 22.4
        )
    )
    
    public static let bodyLink = FontToken(
        name: "body link",
        style: FontStyle(
            fontSize: 16,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 22.4,
            textDecoration: .underline
        )
    )
    
    public static let bodySmall = FontToken(
        name: "body small",
        style: FontStyle(
            fontSize: 14,
            fontFamily: "Inter",
            fontWeight: .regular,
            lineHeight: 19.6
        )
    )
    
    public static let bodySmallStrong = FontToken(
        name: "body small strong",
        style: FontStyle(
            fontSize: 14,
            fontFamily: "Inter",
            fontWeight: .semibold,
            lineHeight: 19.6
        )
    )
    
    public static let bodyCode = FontToken(
        name: "body code",
        style: FontStyle(
            fontSize: 16,
            fontFamily: "Roboto Mono",
            fontWeight: .regular,
            lineHeight: 16
        )
    )
    
    // MARK: - Single Line
    public enum SingleLine {
        public static let bodyBase = FontToken(
            name: "single line body base",
            style: FontStyle(
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: .regular,
                lineHeight: 16
            ),
            description: "Used for any text element where you need 100% line height. For example, an input field, a label."
        )
        
        public static let bodySmallStrong = FontToken(
            name: "single line body small strong",
            style: FontStyle(
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: .semibold,
                lineHeight: 14
            )
        )
        
        public static let all: [FontToken] = [
            bodyBase, bodySmallStrong
        ]
    }
    
    // MARK: - All Tokens
    public static let allTokens: [FontToken] = [
        titleHero, titlePage,
        subtitle, heading, subheading,
        bodyBase, bodyStrong, bodyEmphasis, bodyLink,
        bodySmall, bodySmallStrong, bodyCode
    ] + SingleLine.all
    
    // MARK: - Token Lookup
    public static func token(named name: String) -> FontToken? {
        return allTokens.first { $0.name == name }
    }
}
