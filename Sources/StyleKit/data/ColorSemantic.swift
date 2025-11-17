//
//  Bg.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//

import Foundation

/// A structure to hold the specific color token for each of the three themes.
public struct SemanticColor: Sendable {
    public let catagory: String // Background, Text etc...
    public let collection: String // Default, Neutral etc ...
    public let name: String // default, hover etc...
    public let sdsLight: ColorToken
    public let sdsDark: ColorToken
    public let brandBLight: ColorToken
}

extension SemanticColor {
    public var fullName: String {
        "Color.\(catagory).\(collection).\(name)"
    }
    public var colorAsset: XCColorsAsset {
        XCColorsAsset(light: sdsLight.color, dark: sdsDark.color)
    }
    
    public func write(to folder: URL) {
        let jsonURL = folder
            .appendingPathComponent("\(fullName).colorset")
            .appendingPathComponent("Contents.json")
        try? self.colorAsset.jsonString().write(to: jsonURL, createIntermediateDirectories: true)
    }
}

/// Defines the semantic color palette of the application, mapping abstract style names
/// to concrete color tokens for different themes.
public enum ColorSemantic {
    
    // MARK: - Background
    public enum Background {
        static let catagory = "Background"
        
        public enum Default {
            static let collection = "Default"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.White._1000,
                sdsDark: ColorPrimitive.Gray._900,
                brandBLight: ColorPrimitive.White._1000
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Gray._100,
                sdsDark: ColorPrimitive.Gray._700,
                brandBLight: ColorPrimitive.Gray._100
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Gray._100,
                sdsDark: ColorPrimitive.Gray._800,
                brandBLight: ColorPrimitive.Gray._100
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Gray._200,
                sdsDark: ColorPrimitive.Gray._900,
                brandBLight: ColorPrimitive.Gray._200
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Gray._300,
                sdsDark: ColorPrimitive.Gray._600,
                brandBLight: ColorPrimitive.Gray._300
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.Gray._700,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            static let collection = "Neutral"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._500,
                brandBLight: ColorPrimitive.Slate._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Slate._300,
                sdsDark: ColorPrimitive.Slate._900,
                brandBLight: ColorPrimitive.Slate._300
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Slate._400,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._400
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Slate._200,
                sdsDark: ColorPrimitive.Slate._900,
                brandBLight: ColorPrimitive.Slate._200
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Slate._300,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._300
            )
        }
        
        public enum Brand {
            static let collection = "Brand"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.BrandB._800
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Brand._200,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._200
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Brand._300,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._300
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Brand._200,
                sdsDark: ColorPrimitive.Brand._800,
                brandBLight: ColorPrimitive.Brand._200
            )
        }
        
        public enum Positive {
            static let collection = "Positive"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._700,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._800,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Green._200,
                sdsDark: ColorPrimitive.Green._800,
                brandBLight: ColorPrimitive.Green._200
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Green._300,
                sdsDark: ColorPrimitive.Green._900,
                brandBLight: ColorPrimitive.Green._300
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._900,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Green._200,
                sdsDark: ColorPrimitive.Green._1000,
                brandBLight: ColorPrimitive.Green._200
            )
        }
        
        public enum Warning {
            static let collection = "Warning"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Yellow._400,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._400
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Yellow._500,
                sdsDark: ColorPrimitive.Yellow._500,
                brandBLight: ColorPrimitive.Yellow._500
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Yellow._200,
                sdsDark: ColorPrimitive.Yellow._800,
                brandBLight: ColorPrimitive.Yellow._200
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Yellow._300,
                sdsDark: ColorPrimitive.Yellow._900,
                brandBLight: ColorPrimitive.Yellow._300
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Yellow._100,
                sdsDark: ColorPrimitive.Yellow._900,
                brandBLight: ColorPrimitive.Yellow._100
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Yellow._200,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._200
            )
        }
        
        public enum Danger {
            static let collection = "Danger"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._600,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let hover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "hover",
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._700,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Red._200,
                sdsDark: ColorPrimitive.Red._800,
                brandBLight: ColorPrimitive.Red._200
            )
            public static let secondaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondaryHover",
                sdsLight: ColorPrimitive.Red._300,
                sdsDark: ColorPrimitive.Red._900,
                brandBLight: ColorPrimitive.Red._300
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._900,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let tertiaryHover = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiaryHover",
                sdsLight: ColorPrimitive.Red._200,
                sdsDark: ColorPrimitive.Red._1000,
                brandBLight: ColorPrimitive.Red._200
            )
        }
        
        public enum Disabled {
            static let collection = "Disabled"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._300,
                sdsDark: ColorPrimitive.Brand._700,
                brandBLight: ColorPrimitive.Brand._300
            )
        }
        
        public enum Utilities {
            static let collection = "Utilities"
            
            public static let scrim = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "scrim",
                sdsLight: ColorPrimitive.White._600,
                sdsDark: ColorPrimitive.Black._600,
                brandBLight: ColorPrimitive.White._600
            )
            public static let blanket = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "blanket",
                sdsLight: ColorPrimitive.Black._500,
                sdsDark: ColorPrimitive.Black._500,
                brandBLight: ColorPrimitive.Black._500
            )
            public static let overlay = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "overlay",
                sdsLight: ColorPrimitive.Black._400,
                sdsDark: ColorPrimitive.Black._400,
                brandBLight: ColorPrimitive.Black._400
            )
            public static let measurement = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "measurement",
                sdsLight: ColorPrimitive.Pink._200,
                sdsDark: ColorPrimitive.Pink._800,
                brandBLight: ColorPrimitive.Pink._200
            )
        }
    }
    
    // MARK: - Text
    public enum Text {
        static let catagory = "Text"
        
        public enum Default {
            static let collection = "Default"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Gray._900,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Gray._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.White._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.White._400,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            static let collection = "Neutral"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._200,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._300,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let onNeutral = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutral",
                sdsLight: ColorPrimitive.Slate._100,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._100
            )
            public static let onNeutralSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutralSecondary",
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let onNeutralTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutralTertiary",
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._800
            )
        }
        
        public enum Brand {
            static let collection = "Brand"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
            public static let onBrand = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrand",
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._900,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let onBrandSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrandSecondary",
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let onBrandTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrandTertiary",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
        }
        
        public enum Positive {
            static let collection = "Positive"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let onPositive = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositive",
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let onPositiveSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositiveSecondary",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let onPositiveTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositiveTertiary",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
        }
        
        public enum Warning {
            static let collection = "Warning"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
            public static let onWarning = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarning",
                sdsLight: ColorPrimitive.Yellow._1000,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._1000
            )
            public static let onWarningSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarningSecondary",
                sdsLight: ColorPrimitive.Yellow._800,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._800
            )
            public static let onWarningTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarningTertiary",
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._900
            )
        }
        
        public enum Danger {
            static let collection = "Danger"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let onDanger = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDanger",
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let onDangerSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDangerSecondary",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let onDangerTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDangerTertiary",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
        }
        
        public enum Disabled {
            static let collection = "Disabled"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._400
            )
            public static let onDisabled = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDisabled",
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            static let collection = "Utilities"
            
            public static let textOnOverlay = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "textOnOverlay",
                sdsLight: ColorPrimitive.Black._1000,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Black._1000
            )
            public static let textOnMeasurement = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "textOnMeasurement",
                sdsLight: ColorPrimitive.Pink._800,
                sdsDark: ColorPrimitive.Pink._200,
                brandBLight: ColorPrimitive.Pink._800
            )
        }
    }
    
    // MARK: - Border
    public enum Border {
        static let catagory = "Border"
        
        public enum Default {
            static let collection = "Default"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Gray._300,
                sdsDark: ColorPrimitive.Gray._600,
                brandBLight: ColorPrimitive.Gray._300
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.Gray._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Gray._700,
                sdsDark: ColorPrimitive.Gray._400,
                brandBLight: ColorPrimitive.Gray._700
            )
        }
        
        public enum Neutral {
            static let collection = "Neutral"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._500,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Slate._400,
                sdsDark: ColorPrimitive.Slate._600,
                brandBLight: ColorPrimitive.Slate._400
            )
        }
        
        public enum Brand {
            static let collection = "Brand"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
        }
        
        public enum Positive {
            static let collection = "Positive"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
        }
        
        public enum Warning {
            static let collection = "Warning"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
        }
        
        public enum Danger {
            static let collection = "Danger"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
        }
        
        public enum Disabled {
            static let collection = "Disabled"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._600,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            static let collection = "Utilities"
            
            public static let measurement = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "measurement",
                sdsLight: ColorPrimitive.Pink._400,
                sdsDark: ColorPrimitive.Pink._600,
                brandBLight: ColorPrimitive.Pink._400
            )
            public static let swatch = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "swatch",
                sdsLight: ColorPrimitive.White._200,
                sdsDark: ColorPrimitive.Black._200,
                brandBLight: ColorPrimitive.White._200
            )
        }
    }
    
    // MARK: - Icon
    public enum Icon {
        static let catagory = "Icon"
        
        public enum Default {
            static let collection = "Default"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Gray._900,
                sdsDark: ColorPrimitive.White._1000,
                brandBLight: ColorPrimitive.Gray._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Gray._500,
                sdsDark: ColorPrimitive.White._500,
                brandBLight: ColorPrimitive.Gray._500
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Gray._400,
                sdsDark: ColorPrimitive.White._400,
                brandBLight: ColorPrimitive.Gray._400
            )
        }
        
        public enum Neutral {
            static let collection = "Neutral"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._200,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Slate._700,
                sdsDark: ColorPrimitive.Slate._300,
                brandBLight: ColorPrimitive.Slate._700
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Slate._600,
                sdsDark: ColorPrimitive.Slate._400,
                brandBLight: ColorPrimitive.Slate._600
            )
            public static let onNeutral = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutral",
                sdsLight: ColorPrimitive.Slate._100,
                sdsDark: ColorPrimitive.Slate._1000,
                brandBLight: ColorPrimitive.Slate._100
            )
            public static let onNeutralSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutralSecondary",
                sdsLight: ColorPrimitive.Slate._900,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._900
            )
            public static let onNeutralTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onNeutralTertiary",
                sdsLight: ColorPrimitive.Slate._800,
                sdsDark: ColorPrimitive.Slate._100,
                brandBLight: ColorPrimitive.Slate._800
            )
        }
        
        public enum Brand {
            static let collection = "Brand"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Brand._600,
                sdsDark: ColorPrimitive.Brand._300,
                brandBLight: ColorPrimitive.Brand._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Brand._500,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._500
            )
            public static let onBrand = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrand",
                sdsLight: ColorPrimitive.Brand._100,
                sdsDark: ColorPrimitive.Brand._900,
                brandBLight: ColorPrimitive.Brand._100
            )
            public static let onBrandSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrandSecondary",
                sdsLight: ColorPrimitive.Brand._900,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._900
            )
            public static let onBrandTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onBrandTertiary",
                sdsLight: ColorPrimitive.Brand._800,
                sdsDark: ColorPrimitive.Brand._100,
                brandBLight: ColorPrimitive.Brand._800
            )
        }
        
        public enum Positive {
            static let collection = "Positive"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._200,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Green._600,
                sdsDark: ColorPrimitive.Green._400,
                brandBLight: ColorPrimitive.Green._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Green._500,
                sdsDark: ColorPrimitive.Green._600,
                brandBLight: ColorPrimitive.Green._500
            )
            public static let onPositive = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositive",
                sdsLight: ColorPrimitive.Green._100,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._100
            )
            public static let onPositiveSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositiveSecondary",
                sdsLight: ColorPrimitive.Green._800,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._800
            )
            public static let onPositiveTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onPositiveTertiary",
                sdsLight: ColorPrimitive.Green._900,
                sdsDark: ColorPrimitive.Green._100,
                brandBLight: ColorPrimitive.Green._900
            )
        }
        
        public enum Warning {
            static let collection = "Warning"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._200,
                brandBLight: ColorPrimitive.Yellow._900
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Yellow._700,
                sdsDark: ColorPrimitive.Yellow._400,
                brandBLight: ColorPrimitive.Yellow._700
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Yellow._600,
                sdsDark: ColorPrimitive.Yellow._600,
                brandBLight: ColorPrimitive.Yellow._600
            )
            public static let onWarning = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarning",
                sdsLight: ColorPrimitive.Yellow._1000,
                sdsDark: ColorPrimitive.Yellow._1000,
                brandBLight: ColorPrimitive.Yellow._1000
            )
            public static let onWarningSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarningSecondary",
                sdsLight: ColorPrimitive.Yellow._800,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._800
            )
            public static let onWarningTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onWarningTertiary",
                sdsLight: ColorPrimitive.Yellow._900,
                sdsDark: ColorPrimitive.Yellow._100,
                brandBLight: ColorPrimitive.Yellow._900
            )
        }
        
        public enum Danger {
            static let collection = "Danger"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._200,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let secondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "secondary",
                sdsLight: ColorPrimitive.Red._600,
                sdsDark: ColorPrimitive.Red._400,
                brandBLight: ColorPrimitive.Red._600
            )
            public static let tertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "tertiary",
                sdsLight: ColorPrimitive.Red._500,
                sdsDark: ColorPrimitive.Red._500,
                brandBLight: ColorPrimitive.Red._500
            )
            public static let onDanger = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDanger",
                sdsLight: ColorPrimitive.Red._100,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._100
            )
            public static let onDangerSecondary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDangerSecondary",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
            public static let onDangerTertiary = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDangerTertiary",
                sdsLight: ColorPrimitive.Red._700,
                sdsDark: ColorPrimitive.Red._100,
                brandBLight: ColorPrimitive.Red._700
            )
        }
        
        public enum Disabled {
            static let collection = "Disabled"
            
            public static let `default` = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "default",
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._500,
                brandBLight: ColorPrimitive.Brand._400
            )
            public static let onDisabled = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "onDisabled",
                sdsLight: ColorPrimitive.Brand._400,
                sdsDark: ColorPrimitive.Brand._400,
                brandBLight: ColorPrimitive.Brand._400
            )
        }
        
        public enum Utilities {
            static let collection = "Utilities"
            
            public static let icon = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "icon",
                sdsLight: ColorPrimitive.Pink._600,
                sdsDark: ColorPrimitive.Pink._400,
                brandBLight: ColorPrimitive.Pink._600
            )
            public static let iconOnMeasurement = SemanticColor(
                catagory: catagory,
                collection: collection,
                name: "iconOnMeasurement",
                sdsLight: ColorPrimitive.Pink._800,
                sdsDark: ColorPrimitive.Pink._200,
                brandBLight: ColorPrimitive.Pink._800
            )
        }
    }
}
