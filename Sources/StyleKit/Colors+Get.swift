//
//  Colors+Get.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/19.
//

import Foundation

public enum ContentLevel {
    case `default`
    case secondary
    case tertiary
}

public enum Style {
    case `default`
    case neutral
    case brand
    case positive
    case warning
    case danger
}

public func getBackgroundColor(style: Style, level: ContentLevel, hover: Bool) -> AppColor {
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

public func getTextColor(style: Style, level: ContentLevel) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default: return Colors.Text.Default.default
        case .secondary: return Colors.Text.Default.secondary
        case .tertiary: return Colors.Text.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default: return Colors.Text.Neutral.default
        case .secondary: return Colors.Text.Neutral.secondary
        case .tertiary: return Colors.Text.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default: return Colors.Text.Brand.default
        case .secondary: return Colors.Text.Brand.secondary
        case .tertiary: return Colors.Text.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default: return Colors.Text.Positive.default
        case .secondary: return Colors.Text.Positive.secondary
        case .tertiary: return Colors.Text.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default: return Colors.Text.Warning.default
        case .secondary: return Colors.Text.Warning.secondary
        case .tertiary: return Colors.Text.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default: return Colors.Text.Danger.default
        case .secondary: return Colors.Text.Danger.secondary
        case .tertiary: return Colors.Text.Danger.tertiary
        }
    }
}

public func getBorderColor(style: Style, level: ContentLevel) -> AppColor {
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

public func getIconColor(style: Style, level: ContentLevel) -> AppColor {
    switch style {
    case .default:
        switch level {
        case .default: return Colors.Icon.Default.default
        case .secondary: return Colors.Icon.Default.secondary
        case .tertiary: return Colors.Icon.Default.tertiary
        }
    case .neutral:
        switch level {
        case .default: return Colors.Icon.Neutral.default
        case .secondary: return Colors.Icon.Neutral.secondary
        case .tertiary: return Colors.Icon.Neutral.tertiary
        }
    case .brand:
        switch level {
        case .default: return Colors.Icon.Brand.default
        case .secondary: return Colors.Icon.Brand.secondary
        case .tertiary: return Colors.Icon.Brand.tertiary
        }
    case .positive:
        switch level {
        case .default: return Colors.Icon.Positive.default
        case .secondary: return Colors.Icon.Positive.secondary
        case .tertiary: return Colors.Icon.Positive.tertiary
        }
    case .warning:
        switch level {
        case .default: return Colors.Icon.Warning.default
        case .secondary: return Colors.Icon.Warning.secondary
        case .tertiary: return Colors.Icon.Warning.tertiary
        }
    case .danger:
        switch level {
        case .default: return Colors.Icon.Danger.default
        case .secondary: return Colors.Icon.Danger.secondary
        case .tertiary: return Colors.Icon.Danger.tertiary
        }
    }
}
