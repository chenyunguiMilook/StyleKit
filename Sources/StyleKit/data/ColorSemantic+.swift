//
//  ColorSematic+.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//

//let textCollections = ColorSemantic.Text.collections
//let firstGroupColors = textCollections[0].colors  // Default 组所有颜色

public protocol SemanticColorCatagory {
    static var collections: [SemanticColorCollection.Type] { get }
}
public protocol SemanticColorCollection {
    static var colors: [SemanticColor] { get }
}

//// MARK: - Background 实现 SemanticColorCatagory
extension ColorSemantic.Background: SemanticColorCatagory {
    public static var collections: [SemanticColorCollection.Type] {
        [
            ColorSemantic.Background.Default.self,
            ColorSemantic.Background.Neutral.self,
            ColorSemantic.Background.Brand.self,
            ColorSemantic.Background.Positive.self,
            ColorSemantic.Background.Warning.self,
            ColorSemantic.Background.Danger.self,
            ColorSemantic.Background.Disabled.self,
            ColorSemantic.Background.Utilities.self
        ]
    }
}

// MARK: - Text 实现 SemanticColorCatagory
extension ColorSemantic.Text: SemanticColorCatagory {
    public static var collections: [SemanticColorCollection.Type] {
        [
            ColorSemantic.Text.Default.self,
            ColorSemantic.Text.Neutral.self,
            ColorSemantic.Text.Brand.self,
            ColorSemantic.Text.Positive.self,
            ColorSemantic.Text.Warning.self,
            ColorSemantic.Text.Danger.self,
            ColorSemantic.Text.Disabled.self,
            ColorSemantic.Text.Utilities.self
        ]
    }
}

// MARK: - Border 实现 SemanticColorCatagory
extension ColorSemantic.Border: SemanticColorCatagory {
    public static var collections: [SemanticColorCollection.Type] {
        [
            ColorSemantic.Border.Default.self,
            ColorSemantic.Border.Neutral.self,
            ColorSemantic.Border.Brand.self,
            ColorSemantic.Border.Positive.self,
            ColorSemantic.Border.Warning.self,
            ColorSemantic.Border.Danger.self,
            ColorSemantic.Border.Disabled.self,
            ColorSemantic.Border.Utilities.self
        ]
    }
}

// MARK: - Icon 实现 SemanticColorCatagory
extension ColorSemantic.Icon: SemanticColorCatagory {
    public static var collections: [SemanticColorCollection.Type] {
        [
            ColorSemantic.Icon.Default.self,
            ColorSemantic.Icon.Neutral.self,
            ColorSemantic.Icon.Brand.self,
            ColorSemantic.Icon.Positive.self,
            ColorSemantic.Icon.Warning.self,
            ColorSemantic.Icon.Danger.self,
            ColorSemantic.Icon.Disabled.self,
            ColorSemantic.Icon.Utilities.self
        ]
    }
}

// MARK: - Background.Default 实现 SemanticColorCollection
extension ColorSemantic.Background.Default: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Default.`default`,
            ColorSemantic.Background.Default.hover,
            ColorSemantic.Background.Default.secondary,
            ColorSemantic.Background.Default.secondaryHover,
            ColorSemantic.Background.Default.tertiary,
            ColorSemantic.Background.Default.tertiaryHover
        ]
    }
}
extension ColorSemantic.Background.Neutral: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Neutral.`default`,
            ColorSemantic.Background.Neutral.hover,
            ColorSemantic.Background.Neutral.secondary,
            ColorSemantic.Background.Neutral.secondaryHover,
            ColorSemantic.Background.Neutral.tertiary,
            ColorSemantic.Background.Neutral.tertiaryHover
        ]
    }
}

extension ColorSemantic.Background.Brand: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Brand.`default`,
            ColorSemantic.Background.Brand.hover,
            ColorSemantic.Background.Brand.secondary,
            ColorSemantic.Background.Brand.secondaryHover,
            ColorSemantic.Background.Brand.tertiary,
            ColorSemantic.Background.Brand.tertiaryHover
        ]
    }
}

extension ColorSemantic.Background.Positive: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Positive.`default`,
            ColorSemantic.Background.Positive.hover,
            ColorSemantic.Background.Positive.secondary,
            ColorSemantic.Background.Positive.secondaryHover,
            ColorSemantic.Background.Positive.tertiary,
            ColorSemantic.Background.Positive.tertiaryHover
        ]
    }
}

extension ColorSemantic.Background.Warning: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Warning.`default`,
            ColorSemantic.Background.Warning.hover,
            ColorSemantic.Background.Warning.secondary,
            ColorSemantic.Background.Warning.secondaryHover,
            ColorSemantic.Background.Warning.tertiary,
            ColorSemantic.Background.Warning.tertiaryHover
        ]
    }
}

extension ColorSemantic.Background.Danger: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Danger.`default`,
            ColorSemantic.Background.Danger.hover,
            ColorSemantic.Background.Danger.secondary,
            ColorSemantic.Background.Danger.secondaryHover,
            ColorSemantic.Background.Danger.tertiary,
            ColorSemantic.Background.Danger.tertiaryHover
        ]
    }
}

extension ColorSemantic.Background.Disabled: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [ColorSemantic.Background.Disabled.`default`]
    }
}

extension ColorSemantic.Background.Utilities: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Background.Utilities.scrim,
            ColorSemantic.Background.Utilities.blanket,
            ColorSemantic.Background.Utilities.overlay,
            ColorSemantic.Background.Utilities.measurement
        ]
    }
}

// MARK: - Text 各 Collection 实现 SemanticColorCollection

extension ColorSemantic.Text.Default: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Default.`default`,
            ColorSemantic.Text.Default.secondary,
            ColorSemantic.Text.Default.tertiary
        ]
    }
}

extension ColorSemantic.Text.Neutral: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Neutral.`default`,
            ColorSemantic.Text.Neutral.secondary,
            ColorSemantic.Text.Neutral.tertiary,
            ColorSemantic.Text.Neutral.onNeutral,
            ColorSemantic.Text.Neutral.onNeutralSecondary,
            ColorSemantic.Text.Neutral.onNeutralTertiary
        ]
    }
}

extension ColorSemantic.Text.Brand: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Brand.`default`,
            ColorSemantic.Text.Brand.secondary,
            ColorSemantic.Text.Brand.tertiary,
            ColorSemantic.Text.Brand.onBrand,
            ColorSemantic.Text.Brand.onBrandSecondary,
            ColorSemantic.Text.Brand.onBrandTertiary
        ]
    }
}

extension ColorSemantic.Text.Positive: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Positive.`default`,
            ColorSemantic.Text.Positive.secondary,
            ColorSemantic.Text.Positive.tertiary,
            ColorSemantic.Text.Positive.onPositive,
            ColorSemantic.Text.Positive.onPositiveSecondary,
            ColorSemantic.Text.Positive.onPositiveTertiary
        ]
    }
}

extension ColorSemantic.Text.Warning: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Warning.`default`,
            ColorSemantic.Text.Warning.secondary,
            ColorSemantic.Text.Warning.tertiary,
            ColorSemantic.Text.Warning.onWarning,
            ColorSemantic.Text.Warning.onWarningSecondary,
            ColorSemantic.Text.Warning.onWarningTertiary
        ]
    }
}

extension ColorSemantic.Text.Danger: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Danger.`default`,
            ColorSemantic.Text.Danger.secondary,
            ColorSemantic.Text.Danger.tertiary,
            ColorSemantic.Text.Danger.onDanger,
            ColorSemantic.Text.Danger.onDangerSecondary,
            ColorSemantic.Text.Danger.onDangerTertiary
        ]
    }
}

extension ColorSemantic.Text.Disabled: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Disabled.`default`,
            ColorSemantic.Text.Disabled.onDisabled
        ]
    }
}

extension ColorSemantic.Text.Utilities: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Text.Utilities.textOnOverlay,
            ColorSemantic.Text.Utilities.textOnMeasurement
        ]
    }
}

// MARK: - Border 各 Collection 实现 SemanticColorCollection

extension ColorSemantic.Border.Default: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Default.`default`,
            ColorSemantic.Border.Default.secondary,
            ColorSemantic.Border.Default.tertiary
        ]
    }
}

extension ColorSemantic.Border.Neutral: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Neutral.`default`,
            ColorSemantic.Border.Neutral.secondary,
            ColorSemantic.Border.Neutral.tertiary
        ]
    }
}

extension ColorSemantic.Border.Brand: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Brand.`default`,
            ColorSemantic.Border.Brand.secondary,
            ColorSemantic.Border.Brand.tertiary
        ]
    }
}

extension ColorSemantic.Border.Positive: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Positive.`default`,
            ColorSemantic.Border.Positive.secondary,
            ColorSemantic.Border.Positive.tertiary
        ]
    }
}

extension ColorSemantic.Border.Warning: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Warning.`default`,
            ColorSemantic.Border.Warning.secondary,
            ColorSemantic.Border.Warning.tertiary
        ]
    }
}

extension ColorSemantic.Border.Danger: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Danger.`default`,
            ColorSemantic.Border.Danger.secondary,
            ColorSemantic.Border.Danger.tertiary
        ]
    }
}

extension ColorSemantic.Border.Disabled: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [ColorSemantic.Border.Disabled.`default`]
    }
}

extension ColorSemantic.Border.Utilities: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Border.Utilities.measurement,
            ColorSemantic.Border.Utilities.swatch
        ]
    }
}

// MARK: - Icon 各 Collection 实现 SemanticColorCollection

extension ColorSemantic.Icon.Default: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Default.`default`,
            ColorSemantic.Icon.Default.secondary,
            ColorSemantic.Icon.Default.tertiary
        ]
    }
}

extension ColorSemantic.Icon.Neutral: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Neutral.`default`,
            ColorSemantic.Icon.Neutral.secondary,
            ColorSemantic.Icon.Neutral.tertiary,
            ColorSemantic.Icon.Neutral.onNeutral,
            ColorSemantic.Icon.Neutral.onNeutralSecondary,
            ColorSemantic.Icon.Neutral.onNeutralTertiary
        ]
    }
}

extension ColorSemantic.Icon.Brand: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Brand.`default`,
            ColorSemantic.Icon.Brand.secondary,
            ColorSemantic.Icon.Brand.tertiary,
            ColorSemantic.Icon.Brand.onBrand,
            ColorSemantic.Icon.Brand.onBrandSecondary,
            ColorSemantic.Icon.Brand.onBrandTertiary
        ]
    }
}

extension ColorSemantic.Icon.Positive: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Positive.`default`,
            ColorSemantic.Icon.Positive.secondary,
            ColorSemantic.Icon.Positive.tertiary,
            ColorSemantic.Icon.Positive.onPositive,
            ColorSemantic.Icon.Positive.onPositiveSecondary,
            ColorSemantic.Icon.Positive.onPositiveTertiary
        ]
    }
}

extension ColorSemantic.Icon.Warning: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Warning.`default`,
            ColorSemantic.Icon.Warning.secondary,
            ColorSemantic.Icon.Warning.tertiary,
            ColorSemantic.Icon.Warning.onWarning,
            ColorSemantic.Icon.Warning.onWarningSecondary,
            ColorSemantic.Icon.Warning.onWarningTertiary
        ]
    }
}

extension ColorSemantic.Icon.Danger: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Danger.`default`,
            ColorSemantic.Icon.Danger.secondary,
            ColorSemantic.Icon.Danger.tertiary,
            ColorSemantic.Icon.Danger.onDanger,
            ColorSemantic.Icon.Danger.onDangerSecondary,
            ColorSemantic.Icon.Danger.onDangerTertiary
        ]
    }
}

extension ColorSemantic.Icon.Disabled: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Disabled.`default`,
            ColorSemantic.Icon.Disabled.onDisabled
        ]
    }
}

extension ColorSemantic.Icon.Utilities: SemanticColorCollection {
    public static var colors: [SemanticColor] {
        [
            ColorSemantic.Icon.Utilities.icon,
            ColorSemantic.Icon.Utilities.iconOnMeasurement
        ]
    }
}
