//
//  Insets.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/23.
//

#if canImport(UIKit)
import UIKit
public typealias AppEdgeInsets = UIEdgeInsets

#elseif canImport(AppKit)
import AppKit
public typealias AppEdgeInsets = NSEdgeInsets

#endif

public extension AppEdgeInsets {
    
    enum Button {
        static let icon = AppEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        static let label = AppEdgeInsets(top: 0, left: 2, bottom: 0, right: 2)
    }
    
    enum Input {
        static let `default` = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
        static let textEnumPicker = AppEdgeInsets(top: 4, left: 12, bottom: 4, right: 12)
        static let iconEnumPicker = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }
    
    enum Tag {
        static let `default` = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }
}
