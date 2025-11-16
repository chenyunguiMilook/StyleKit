//
//  Slate.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//
public protocol ColorCollection: Sendable {
    static var type: ColorCollectionType { get }
    static var Colors: [ColorToken] { get }
}

public enum ColorCollectionType: String, Sendable, CaseIterable {
    case slate
    case white
    case brand
    case red
    case yellow
    case green
    case black
    case pink
    case gray
    case brandB = "brand b"
    
    public var name: String {
        self.rawValue
    }
}

public struct ColorToken: Sendable {
    public let collection: ColorCollectionType
    public let name: String
    public let color: AppColor
    
    public init(collection: ColorCollectionType, name: String, rgba: String) {
        self.collection = collection
        self.name = name
        self.color = AppColor(rgba: rgba)
    }
}

public enum ColorPrimitive {
    
    // MARK: - Slate
    public enum Slate: ColorCollection {
        public static let type = ColorCollectionType.slate
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#f3f3f3ff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#e3e3e3ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#cdcdcdff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#b2b2b2ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#949494ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#767676ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#5a5a5aff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#434343ff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#303030ff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#242424ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - White (EFFECT_COLOR)
    public enum White: ColorCollection {
        public static let type = ColorCollectionType.white
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#ffffff0d")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#ffffff1a")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#ffffff33")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#ffffff66")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#ffffffb3")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#ffffffcc")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#ffffffd9")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#ffffffe6")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#fffffff2")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#ffffffff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Brand
    public enum Brand: ColorCollection {
        public static let type = ColorCollectionType.brand
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#f5f5f5ff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#e6e6e6ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#d9d9d9ff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#b3b3b3ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#757575ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#444444ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#383838ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#2c2c2cff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#1e1e1eff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#111111ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Red
    public enum Red: ColorCollection {
        public static let type = ColorCollectionType.red
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#fee9e7ff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#fdd3d0ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#fcb3adff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#f4776aff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#ec221fff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#c00f0cff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#900b09ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#690807ff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#4d0b0aff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#300603ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Yellow
    public enum Yellow: ColorCollection {
        public static let type = ColorCollectionType.yellow
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#fffbebff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#fff1c2ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#ffe8a3ff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#e8b931ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#e5a000ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#bf6a02ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#975102ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#682d03ff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#522504ff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#401b01ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Green
    public enum Green: ColorCollection {
        public static let type = ColorCollectionType.green
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#ebffeeff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#cff7d3ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#aff4c6ff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#85e0a3ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#14ae5cff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#009951ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#008043ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#02542dff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#024023ff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#062d1bff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Black (EFFECT_COLOR)
    public enum Black: ColorCollection {
        public static let type = ColorCollectionType.black
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#0c0c0d0d")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#0c0c0d1a")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#0c0c0d33")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#0c0c0d66")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#0c0c0db3")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#0c0c0dcc")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#0c0c0dd9")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#0c0c0de6")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#0c0c0df2")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#0c0c0dff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Pink
    public enum Pink: ColorCollection {
        public static let type = ColorCollectionType.pink
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#fcf1fdff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#fae1faff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#f5c0efff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#f19edcff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#ea3fb8ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#d732a8ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#ba2a92ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#8a226fff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#57184aff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#3f1536ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Gray
    public enum Gray: ColorCollection {
        public static let type = ColorCollectionType.gray
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#f5f5f5ff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#e6e6e6ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#d9d9d9ff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#b3b3b3ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#757575ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#444444ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#383838ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#2c2c2cff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#1e1e1eff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#111111ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - Brand B
    public enum BrandB: ColorCollection {
        public static let type = ColorCollectionType.brandB
        public static let _100  = ColorToken(collection: type, name: "100", rgba: "#f5f5f5ff")
        public static let _200  = ColorToken(collection: type, name: "200", rgba: "#e6e6e6ff")
        public static let _300  = ColorToken(collection: type, name: "300", rgba: "#d9d9d9ff")
        public static let _400  = ColorToken(collection: type, name: "400", rgba: "#b3b3b3ff")
        public static let _500  = ColorToken(collection: type, name: "500", rgba: "#757575ff")
        public static let _600  = ColorToken(collection: type, name: "600", rgba: "#444444ff")
        public static let _700  = ColorToken(collection: type, name: "700", rgba: "#383838ff")
        public static let _800  = ColorToken(collection: type, name: "800", rgba: "#770000ff")
        public static let _900  = ColorToken(collection: type, name: "900", rgba: "#1e1e1eff")
        public static let _1000 = ColorToken(collection: type, name: "1000", rgba: "#111111ff")
        
        public static let Colors: [ColorToken] = [
            _100, _200, _300, _400, _500, _600, _700, _800, _900, _1000
        ]
    }

    // MARK: - 所有家族
    public static let Families: [any ColorCollection.Type] = [
        Slate.self, White.self, Brand.self, Red.self,
        Yellow.self, Green.self, Black.self, Pink.self,
        Gray.self, BrandB.self
    ]
    
    // MARK: - 通过 ColorCollectionType 获取 ColorCollection
    public static func collection(for type: ColorCollectionType) -> any ColorCollection.Type {
        switch type {
        case .slate: return Slate.self
        case .white: return White.self
        case .brand: return Brand.self
        case .red: return Red.self
        case .yellow: return Yellow.self
        case .green: return Green.self
        case .black: return Black.self
        case .pink: return Pink.self
        case .gray: return Gray.self
        case .brandB: return BrandB.self
        }
    }
    
    // MARK: - 通过 ColorCollectionType 获取颜色数组
    public static func colors(for type: ColorCollectionType) -> [ColorToken] {
        return collection(for: type).Colors
    }
}
