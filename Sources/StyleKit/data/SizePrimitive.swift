//
//  SizeCollection.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/16.
//

import CoreGraphics

public protocol SizeCollection: Sendable {
    static var type: SizeCollectionType { get }
    static var tokens: [SizeToken] { get }
}

public enum SizeCollectionType: String, Sendable, CaseIterable {
    case space
    case radius
    case height
    case depth
    case stroke
    case blur
    case icon
    
    public var name: String {
        self.rawValue
    }
}

public struct SizeToken: Sendable {
    public let collection: SizeCollectionType
    public let name: String
    public let value: CGFloat
    
    public init(collection: SizeCollectionType, name: String, value: CGFloat) {
        self.collection = collection
        self.name = name
        self.value = value
    }
}

public enum SizePrimitive {
    
    // MARK: - Space
    public enum Space: SizeCollection {
        public static let type = SizeCollectionType.space
        public static let _0    = SizeToken(collection: type, name: "0", value: 0)
        public static let _050  = SizeToken(collection: type, name: "050", value: 2)
        public static let _100  = SizeToken(collection: type, name: "100", value: 4)
        public static let _150  = SizeToken(collection: type, name: "150", value: 6)
        public static let _200  = SizeToken(collection: type, name: "200", value: 8)
        public static let _300  = SizeToken(collection: type, name: "300", value: 12)
        public static let _400  = SizeToken(collection: type, name: "400", value: 16)
        public static let _600  = SizeToken(collection: type, name: "600", value: 24)
        public static let _800  = SizeToken(collection: type, name: "800", value: 32)
        public static let _1200 = SizeToken(collection: type, name: "1200", value: 48)
        public static let _1600 = SizeToken(collection: type, name: "1600", value: 64)
        public static let _2400 = SizeToken(collection: type, name: "2400", value: 96)
        public static let _4000 = SizeToken(collection: type, name: "4000", value: 160)
        public static let negative100 = SizeToken(collection: type, name: "negative 100", value: -4)
        public static let negative200 = SizeToken(collection: type, name: "negative 200", value: -8)
        public static let negative300 = SizeToken(collection: type, name: "negative 300", value: -12)
        public static let negative400 = SizeToken(collection: type, name: "negative 400", value: -16)
        public static let negative600 = SizeToken(collection: type, name: "negative 600", value: -24)
        
        public static let tokens: [SizeToken] = [
            _0, _050, _100, _150, _200, _300, _400, _600, _800,
            _1200, _1600, _2400, _4000,
            negative100, negative200, negative300, negative400, negative600
        ]
    }
    
    // MARK: - Radius
    public enum Radius: SizeCollection {
        public static let type = SizeCollectionType.radius
        public static let _100 = SizeToken(collection: type, name: "100", value: 4)
        public static let _200 = SizeToken(collection: type, name: "200", value: 8)
        public static let _400 = SizeToken(collection: type, name: "400", value: 16)
        public static let full = SizeToken(collection: type, name: "full", value: 9999)
        
        public static let tokens: [SizeToken] = [
            _100, _200, _400, full
        ]
    }
    
    // MARK: - Depth
    public enum Depth: SizeCollection {
        public static let type = SizeCollectionType.depth
        public static let _0    = SizeToken(collection: type, name: "0", value: 0)
        public static let _025  = SizeToken(collection: type, name: "025", value: 1)
        public static let _100  = SizeToken(collection: type, name: "100", value: 4)
        public static let _200  = SizeToken(collection: type, name: "200", value: 8)
        public static let _400  = SizeToken(collection: type, name: "400", value: 16)
        public static let _800  = SizeToken(collection: type, name: "800", value: 32)
        public static let _1200 = SizeToken(collection: type, name: "1200", value: 48)
        public static let negative025  = SizeToken(collection: type, name: "negative 025", value: -1)
        public static let negative100  = SizeToken(collection: type, name: "negative 100", value: -4)
        public static let negative200  = SizeToken(collection: type, name: "negative 200", value: -8)
        public static let negative400  = SizeToken(collection: type, name: "negative 400", value: -16)
        public static let negative800  = SizeToken(collection: type, name: "negative 800", value: -32)
        public static let negative1200 = SizeToken(collection: type, name: "negative 1200", value: -48)
        
        public static let tokens: [SizeToken] = [
            _0, _025, _100, _200, _400, _800, _1200,
            negative025, negative100, negative200, negative400, negative800, negative1200
        ]
    }
    
    // MARK: - Stroke
    public enum Stroke: SizeCollection {
        public static let type = SizeCollectionType.stroke
        public static let border    = SizeToken(collection: type, name: "border", value: 1)
        public static let focusRing = SizeToken(collection: type, name: "focus ring", value: 2)
        
        public static let tokens: [SizeToken] = [
            border, focusRing
        ]
    }
    
    // MARK: - Blur
    public enum Blur: SizeCollection {
        public static let type = SizeCollectionType.blur
        public static let _100 = SizeToken(collection: type, name: "100", value: 4)
        
        public static let tokens: [SizeToken] = [
            _100
        ]
    }
    
    // MARK: - Icon
    public enum Icon: SizeCollection {
        public static let type = SizeCollectionType.icon
        public static let small  = SizeToken(collection: type, name: "small", value: 24)
        public static let medium = SizeToken(collection: type, name: "medium", value: 32)
        public static let large  = SizeToken(collection: type, name: "large", value: 40)
        
        public static let tokens: [SizeToken] = [
            small, medium, large
        ]
    }
    
    public enum Height: SizeCollection {
        public static let type = SizeCollectionType.height
        public static let _100 = SizeToken(collection: type, name: "100", value: 22)
        public static let _200 = SizeToken(collection: type, name: "100", value: 24)
        
        public static let tokens: [SizeToken] = [
            _100, _200
        ]
    }
    
    // MARK: - 所有集合
    public static let collections: [any SizeCollection.Type] = [
        Space.self, Radius.self, Depth.self,
        Stroke.self, Blur.self, Icon.self
    ]
    
    // MARK: - 通过 SizeCollectionType 获取 SizeCollection
    public static func collection(for type: SizeCollectionType) -> any SizeCollection.Type {
        switch type {
        case .space: return Space.self
        case .radius: return Radius.self
        case .height: return Height.self
        case .depth: return Depth.self
        case .stroke: return Stroke.self
        case .blur: return Blur.self
        case .icon: return Icon.self
        }
    }
    
    // MARK: - 通过 SizeCollectionType 获取尺寸数组
    public static func tokens(for type: SizeCollectionType) -> [SizeToken] {
        return collection(for: type).tokens
    }
}
