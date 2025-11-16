//
//  Bg.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//

import Foundation

/// A structure to hold the specific color token for each of the three themes.
public struct SemanticColor: Sendable {
    public let sdsLight: ColorToken
    public let sdsDark: ColorToken
    public let brandBLight: ColorToken
}

/// Defines the semantic color palette of the application, mapping abstract style names
/// to concrete color tokens for different themes.
public enum ColorSemantic {
    
    // MARK: - Background
    public enum Background {
        
        public enum Default {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.White._1000,
                sdsDark: ColorPrimitive.Gray._900,
                brandBLight: ColorPrimitive.White._1000
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Gray._100,
                sdsDark: ColorPrimitive.Gray._700,
                brandBLight: ColorPrimitive.Gray._100
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._100,
                sdsDark: ColorPrimitive.Gray._800,
                brandBLight: ColorPrimitive.Gray._100
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Gray._200,
                sdsDark: ColorPrimitive.Gray._900,
                brandBLight: ColorPrimitive.Gray._200
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._300,
                sdsDark: ColorPrimitive.Gray._600,
                brandBLight: ColorPrimitive.Gray._300
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.Gray._700,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._500,
                brandBLight: ColorPrimitive.Slate._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._300,
                sdsDark: ColorPrimitive.Slate._900,
                brandBLight: ColorPrimitive.Slate._300
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Slate._400,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._400
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._200,
                sdsDark: ColorPrimitive.Slate._900,
                brandBLight: ColorPrimitive.Slate._200
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Slate._300,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._300
            )
        }
        
        public enum Brand {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.BrandB._800
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._200,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._200
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Brand._300,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._300
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Brand._200,
                sdsDark: ColorPrimitive.Brand._800,
                brandBLight: ColorPrimitive.Brand._200
            )
        }
        
        public enum Positive {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._700,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._800,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._200,
                sdsDark: ColorPrimitive.Green._800,
                brandBLight: ColorPrimitive.Green._200
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Green._300,
                sdsDark: ColorPrimitive.Green._900,
                brandBLight: ColorPrimitive.Green._300
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._900,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Green._200,
                sdsDark: ColorPrimitive.Green._1000,
                brandBLight: ColorPrimitive.Green._200
            )
        }
        
        public enum Warning {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._400,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._400
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._500,
                sdsDark: ColorPrimitive.Yellow._500,
                brandBLight: ColorPrimitive.Yellow._500
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._200,
                sdsDark: ColorPrimitive.Yellow._800,
                brandBLight: ColorPrimitive.Yellow._200
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._300,
                sdsDark: ColorPrimitive.Yellow._900,
                brandBLight: ColorPrimitive.Yellow._300
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._100,
                sdsDark: ColorPrimitive.Yellow._900,
                brandBLight: ColorPrimitive.Yellow._100
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._200,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._200
            )
        }
        
        public enum Danger {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._600,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let hover = SemanticColor(
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._700,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._200,
                sdsDark: ColorPrimitive.Red._800,
                brandBLight: ColorPrimitive.Red._200
            )
            public static let secondaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Red._300,
                sdsDark: ColorPrimitive.Red._900,
                brandBLight: ColorPrimitive.Red._300
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._900,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let tertiaryHover = SemanticColor(
                sdsLight: ColorPrimitive.Red._200,
                sdsDark: ColorPrimitive.Red._1000,
                brandBLight: ColorPrimitive.Red._200
            )
        }
        
        public enum Disabled {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._300,
                sdsDark: ColorPrimitive.Brand._700,
                brandBLight: ColorPrimitive.Brand._300
            )
        }
        
        public enum Utilities {
            // Note: Mapping opacity percentages to the closest available primitive.
            // Scrim (80%): White._600 (#ffffffcc) and Black._600 (#0c0c0dcc)
            public static let scrim = SemanticColor(
                sdsLight: ColorPrimitive.White._600,
                sdsDark: ColorPrimitive.Black._600,
                brandBLight: ColorPrimitive.White._600
            )
            // Blanket (70%): Black._500 (#0c0c0db3)
            public static let blanket = SemanticColor(
                sdsLight: ColorPrimitive.Black._500,
                sdsDark: ColorPrimitive.Black._500,
                brandBLight: ColorPrimitive.Black._500
            )
            // Overlay (50%): Black._400 (#0c0c0d66) is the closest primitive.
            public static let overlay = SemanticColor(
                sdsLight: ColorPrimitive.Black._400,
                sdsDark: ColorPrimitive.Black._400,
                brandBLight: ColorPrimitive.Black._400
            )
            public static let measurement = SemanticColor(
                sdsLight: ColorPrimitive.Pink._200,
                sdsDark: ColorPrimitive.Pink._800,
                brandBLight: ColorPrimitive.Pink._200
            )
        }
    }
    
    // MARK: - Text
    public enum Text {
        public enum Default {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Gray._900,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Gray._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.White._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.White._400,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._200,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._300,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let onNeutral = SemanticColor(
                sdsLight: ColorPrimitive.Slate._100,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._100
            )
            public static let onNeutralSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let onNeutralTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._800
            )
        }
        
        public enum Brand {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
            public static let onBrand = SemanticColor(
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._900,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let onBrandSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let onBrandTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
        }
        
        public enum Positive {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let onPositive = SemanticColor(
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let onPositiveSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let onPositiveTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
        }
        
        public enum Warning {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
            public static let onWarning = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._1000,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._1000
            )
            public static let onWarningSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._800,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._800
            )
            public static let onWarningTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._900
            )
        }
        
        public enum Danger {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let onDanger = SemanticColor(
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let onDangerSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let onDangerTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
        }
        
        public enum Disabled {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._400
            )
            public static let onDisabled = SemanticColor(
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            public static let textOnOverlay = SemanticColor(
                sdsLight: ColorPrimitive.Black._1000,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Black._1000
            )
            public static let textOnMeasurement = SemanticColor(
                sdsLight: ColorPrimitive.Pink._800,
                sdsDark: ColorPrimitive.Pink._200,
                brandBLight: ColorPrimitive.Pink._800
            )
        }
    }

    // MARK: - Border
    public enum Border {
        
        public enum Default {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Gray._300,
                sdsDark: ColorPrimitive.Gray._600,
                brandBLight: ColorPrimitive.Gray._300
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.Gray._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._700,
                sdsDark: ColorPrimitive.Gray._400,
                brandBLight: ColorPrimitive.Gray._700
            )
        }
        
        public enum Neutral {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._500,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._400,
                sdsDark: ColorPrimitive.Slate._600,
                brandBLight: ColorPrimitive.Slate._400
            )
        }
        
        public enum Brand {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
        }
        
        public enum Positive {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
        }
        
        public enum Warning {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
        }
        
        public enum Danger {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
        }
        
        public enum Disabled {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            public static let measurement = SemanticColor(
                sdsLight: ColorPrimitive.Pink._400,
                sdsDark: ColorPrimitive.Pink._600,
                brandBLight: ColorPrimitive.Pink._400
            )
            // Note: Mapping opacity percentages to the closest available primitive.
            // Swatch (24%): White._200 (#ffffff1a) and Black._200 (#0c0c0d1a)
            public static let swatch = SemanticColor(
                sdsLight: ColorPrimitive.White._200,
                sdsDark: ColorPrimitive.Black._200,
                brandBLight: ColorPrimitive.White._200
            )
        }
    }

    // MARK: - Icon
    public enum Icon {
        
        public enum Default {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Gray._900,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Gray._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.White._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.White._400,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._200,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._300,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let onNeutral = SemanticColor(
                sdsLight: ColorPrimitive.Slate._100,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._100
            )
            public static let onNeutralSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let onNeutralTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._800
            )
        }
        
        public enum Brand {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
            public static let onBrand = SemanticColor(
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._900,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let onBrandSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let onBrandTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
        }
        
        public enum Positive {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let onPositive = SemanticColor(
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let onPositiveSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let onPositiveTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Green._900,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._900
            )
        }
        
        public enum Warning {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
            public static let onWarning = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._1000,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._1000
            )
            public static let onWarningSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._800,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._800
            )
            public static let onWarningTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._900
            )
        }
        
        public enum Danger {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let onDanger = SemanticColor(
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let onDangerSecondary = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let onDangerTertiary = SemanticColor(
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
        }
        
        public enum Disabled {
            public static let `default` = SemanticColor(
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._400
            )
            public static let onDisabled = SemanticColor(
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            public static let icon = SemanticColor(
                sdsLight: ColorPrimitive.Pink._600,
                sdsDark: ColorPrimitive.Pink._400,
                brandBLight: ColorPrimitive.Pink._600
            )
            public static let iconOnMeasurement = SemanticColor(
                sdsLight: ColorPrimitive.Pink._800,
                sdsDark: ColorPrimitive.Pink._200,
                brandBLight: ColorPrimitive.Pink._800
            )
        }
    }
}
