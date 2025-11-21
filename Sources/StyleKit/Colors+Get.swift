//
//  Colors+Get.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/19.
//

import Foundation

public enum BaseLevel: Sendable {
    case `default`
    case secondary
    case tertiary
}

public enum BaseStyle: Sendable {
    case `default`
    case neutral
    case brand
    case positive
    case warning
    case danger
}

public enum ForegroundType: Sendable {
    case text
    case icon
}

public struct BackgroundColor: Sendable {
    public let style: BaseStyle
    public let level: BaseLevel
    public let hover: Bool
    
    public init(style: BaseStyle, level: BaseLevel, hover: Bool) {
        self.style = style
        self.level = level
        self.hover = hover
    }
}

public struct ForegroundColor: Sendable {
    public let type: ForegroundType
    public let style: BaseStyle
    public let level: BaseLevel
    public let on: Bool
    
    public init(type: ForegroundType, style: BaseStyle, level: BaseLevel, on: Bool) {
        self.type = type
        self.style = style
        self.level = level
        self.on = on
    }
}

public struct BorderColor: Sendable {
    public let style: BaseStyle
    public let level: BaseLevel
    
    public init(style: BaseStyle, level: BaseLevel) {
        self.style = style
        self.level = level
    }
}

// MARK: - color style
public protocol ColorStyle {
    var color: AppColor { get }
}
extension BackgroundColor: ColorStyle {
    public var color: AppColor {
        getBackgroundColor(style: style, level: level, hover: hover)
    }
}
extension ForegroundColor: ColorStyle {
    public var color: AppColor {
        switch type {
        case .text: getTextColor(style: style, level: level, on: on)
        case .icon: getIconColor(style: style, level: level, on: on)
        }
    }
}
extension BorderColor: ColorStyle {
    public var color: AppColor {
        getBorderColor(style: style, level: level)
    }
}

public func getBackgroundColor(style: BaseStyle, level: BaseLevel, hover: Bool) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default:
            return hover ? Colors.Background.Default.hover : Colors.Background.Default.default
        case .secondary:
            return hover ? Colors.Background.Default.secondaryHover : Colors.Background.Default.secondary
        case .tertiary:
            return hover ? Colors.Background.Default.tertiaryHover : Colors.Background.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default:
            return hover ? Colors.Background.Neutral.hover : Colors.Background.Neutral.default
        case .secondary:
            return hover ? Colors.Background.Neutral.secondaryHover : Colors.Background.Neutral.secondary
        case .tertiary:
            return hover ? Colors.Background.Neutral.tertiaryHover : Colors.Background.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default:
            return hover ? Colors.Background.Brand.hover : Colors.Background.Brand.default
        case .secondary:
            return hover ? Colors.Background.Brand.secondaryHover : Colors.Background.Brand.secondary
        case .tertiary:
            return hover ? Colors.Background.Brand.tertiaryHover : Colors.Background.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default:
            return hover ? Colors.Background.Positive.hover : Colors.Background.Positive.default
        case .secondary:
            return hover ? Colors.Background.Positive.secondaryHover : Colors.Background.Positive.secondary
        case .tertiary:
            return hover ? Colors.Background.Positive.tertiaryHover : Colors.Background.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default:
            return hover ? Colors.Background.Warning.hover : Colors.Background.Warning.default
        case .secondary:
            return hover ? Colors.Background.Warning.secondaryHover : Colors.Background.Warning.secondary
        case .tertiary:
            return hover ? Colors.Background.Warning.tertiaryHover : Colors.Background.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default:
            return hover ? Colors.Background.Danger.hover : Colors.Background.Danger.default
        case .secondary:
            return hover ? Colors.Background.Danger.secondaryHover : Colors.Background.Danger.secondary
        case .tertiary:
            return hover ? Colors.Background.Danger.tertiaryHover : Colors.Background.Danger.tertiary
        }
    }
}

public func getTextColor(style: BaseStyle, level: BaseLevel, on: Bool) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default: return Colors.Text.Default.default
        case .secondary: return Colors.Text.Default.secondary
        case .tertiary: return Colors.Text.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default: return on ? Colors.Text.Neutral.onNeutral : Colors.Text.Neutral.default
        case .secondary: return on ? Colors.Text.Neutral.onNeutralSecondary : Colors.Text.Neutral.secondary
        case .tertiary: return on ? Colors.Text.Neutral.onNeutralTertiary : Colors.Text.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default: return on ? Colors.Text.Brand.onBrand : Colors.Text.Brand.default
        case .secondary: return on ? Colors.Text.Brand.onBrandSecondary : Colors.Text.Brand.secondary
        case .tertiary: return on ? Colors.Text.Brand.onBrandTertiary : Colors.Text.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default: return on ? Colors.Text.Positive.onPositive : Colors.Text.Positive.default
        case .secondary: return on ? Colors.Text.Positive.onPositiveSecondary : Colors.Text.Positive.secondary
        case .tertiary: return on ? Colors.Text.Positive.onPositiveTertiary : Colors.Text.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default: return on ? Colors.Text.Warning.onWarning : Colors.Text.Warning.default
        case .secondary: return on ? Colors.Text.Warning.onWarningSecondary : Colors.Text.Warning.secondary
        case .tertiary: return on ? Colors.Text.Warning.onWarningTertiary : Colors.Text.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default: return on ? Colors.Text.Danger.onDanger : Colors.Text.Danger.default
        case .secondary: return on ? Colors.Text.Danger.onDangerSecondary : Colors.Text.Danger.secondary
        case .tertiary: return on ? Colors.Text.Danger.onDangerTertiary : Colors.Text.Danger.tertiary
        }
    }
}

public func getBorderColor(style: BaseStyle, level: BaseLevel) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default: return Colors.Border.Default.default
        case .secondary: return Colors.Border.Default.secondary
        case .tertiary: return Colors.Border.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default: return Colors.Border.Neutral.default
        case .secondary: return Colors.Border.Neutral.secondary
        case .tertiary: return Colors.Border.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default: return Colors.Border.Brand.default
        case .secondary: return Colors.Border.Brand.secondary
        case .tertiary: return Colors.Border.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default: return Colors.Border.Positive.default
        case .secondary: return Colors.Border.Positive.secondary
        case .tertiary: return Colors.Border.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default: return Colors.Border.Warning.default
        case .secondary: return Colors.Border.Warning.secondary
        case .tertiary: return Colors.Border.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default: return Colors.Border.Danger.default
        case .secondary: return Colors.Border.Danger.secondary
        case .tertiary: return Colors.Border.Danger.tertiary
        }
    }
}

public func getIconColor(style: BaseStyle, level: BaseLevel, on: Bool) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default: return Colors.Icon.Default.default
        case .secondary: return Colors.Icon.Default.secondary
        case .tertiary: return Colors.Icon.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default: return on ? Colors.Icon.Neutral.onNeutral : Colors.Icon.Neutral.default
        case .secondary: return on ? Colors.Icon.Neutral.onNeutralSecondary : Colors.Icon.Neutral.secondary
        case .tertiary: return on ? Colors.Icon.Neutral.onNeutralTertiary : Colors.Icon.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default: return on ? Colors.Icon.Brand.onBrand : Colors.Icon.Brand.default
        case .secondary: return on ? Colors.Icon.Brand.onBrandSecondary : Colors.Icon.Brand.secondary
        case .tertiary: return on ? Colors.Icon.Brand.onBrandTertiary : Colors.Icon.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default: return on ? Colors.Icon.Positive.onPositive : Colors.Icon.Positive.default
        case .secondary: return on ? Colors.Icon.Positive.onPositiveSecondary : Colors.Icon.Positive.secondary
        case .tertiary: return on ? Colors.Icon.Positive.onPositiveTertiary : Colors.Icon.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default: return on ? Colors.Icon.Warning.onWarning : Colors.Icon.Warning.default
        case .secondary: return on ? Colors.Icon.Warning.onWarningSecondary : Colors.Icon.Warning.secondary
        case .tertiary: return on ? Colors.Icon.Warning.onWarningTertiary : Colors.Icon.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default: return on ? Colors.Icon.Danger.onDanger : Colors.Icon.Danger.default
        case .secondary: return on ? Colors.Icon.Danger.onDangerSecondary : Colors.Icon.Danger.secondary
        case .tertiary: return on ? Colors.Icon.Danger.onDangerTertiary : Colors.Icon.Danger.tertiary
        }
    }
}
