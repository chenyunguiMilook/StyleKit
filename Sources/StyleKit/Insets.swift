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

extension AppEdgeInsets {
    
    public enum Button {
        public static let icon = AppEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        public static let label = AppEdgeInsets(top: 0, left: 2, bottom: 0, right: 2)
    }
    
    public enum Input {
        public static let `default` = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
        public static let textEnumPicker = AppEdgeInsets(top: 4, left: 12, bottom: 4, right: 12)
        public static let iconEnumPicker = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }
    
    public enum Label {
        public static let `default` = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }

    public enum Tag {
        public static let `default` = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }
    
    public enum Panel {
        public static let layoutMargin = AppEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        public static let title = AppEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
    }
}
