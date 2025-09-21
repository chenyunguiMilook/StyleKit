//
//  AppTheme.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/16.
//


import UIKit

public enum Styles {
    
    public enum Color {
        public static let background = UIColor(resource: .background)
        // control colors
        public static let controlBg = UIColor(resource: .controlBg)
        public static let controlBorder = UIColor(resource: .controlBorder)
        public static let controlBorderActive = UIColor.systemBlue
        public static let controlSeparator = UIColor(resource: .controlSeparator)
        public static let controlActive = UIColor(resource: .controlActive)
        public static let controlHover = UIColor(resource: .controlHover)
        public static let pickerBg = UIColor(resource: .pickerBg)
        public static let iconLabel = UIColor(resource: .iconLabel)
        public static let iconNormal = UIColor(resource: .iconNormal)
        public static let iconActive = UIColor(resource: .iconActive)
        public static let primaryLabel = UIColor(resource: .primaryLabel)
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
    
    public enum Insets {
        public static let textInputer = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    }
    
    public enum Size {
        public static let controlHeight: CGFloat = 22
        public static let controlBorderWidth: CGFloat = 1
    }
    
    public enum Font {
        public static let inputer: UIFont = UIFont.systemFont(ofSize: 12, weight: .regular)
    }
    
    public static let color = Color.self
    public static let radius = Radius.self
    public static let spacing = Spacing.self
    public static let insets = Insets.self
    public static let size = Size.self
    public static let font = Font.self
}
