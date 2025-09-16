//
//  AppTheme.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/16.
//


import UIKit

public enum Styles {
    
    public enum Color {
        public static let primary = UIColor.white
        
        // adaptive colors
        
        // control colors
        
    }
    
    public enum Radius {
        public static let none: CGFloat = 0.0
        public static let small: CGFloat = 4.0
        public static let medium: CGFloat = 8.0
        public static let large: CGFloat = 12.0
        public static let full: CGFloat = 9999.0 // 用于圆形，例如头像
    }
    
    public enum Spacing {
        static let baseUnit: CGFloat = 8.0 // 基准单位

        public static let none: CGFloat = 0.0
        public static let xSmall: CGFloat = baseUnit / 2 // 4.0
        public static let small: CGFloat = baseUnit      // 8.0
        public static let medium: CGFloat = baseUnit * 2  // 16.0
        public static let large: CGFloat = baseUnit * 3  // 24.0
        public static let xLarge: CGFloat = baseUnit * 4  // 32.0
    }
    
    public enum Font {
        public static let inputer: UIFont = UIFont.systemFont(ofSize: 16)
    }
    
    public static let color = Color.self
    public static let radius = Radius.self
    public static let spacing = Spacing.self
    public static let font = Font.self
}
