//
//  AppTheme.swift
//  StyleKit
//
//  Created by chenyungui on 2025/9/16.
//

#if canImport(UIKit)
    import UIKit
    public typealias AppColor = UIColor

#elseif canImport(AppKit) && !targetEnvironment(macCatalyst)
    import AppKit
    public typealias AppColor = NSColor
#endif

public enum Styles {
    
    public enum Color {
        public static let background = AppColor(resource: .background)
        // control colors
        public static let controlBg = AppColor(resource: .controlBg)
        public static let controlBgDisable = AppColor(resource: .controlBgDisable)
        public static let controlBorder = AppColor(resource: .controlBorder)
        public static let controlBorderActive = AppColor.systemBlue
        public static let controlSeparator = AppColor(resource: .controlSeparator)
        public static let controlActive = AppColor(resource: .controlActive)
        public static let controlHover = AppColor(resource: .controlHover)
        public static let pickerBg = AppColor(resource: .pickerBg)
        public static let panelBg = AppColor(resource: .panelBg)
        public static let panelTitle = AppColor(resource: .panelTitle)
        public static let iconLabel = AppColor(resource: .iconLabel)
        public static let iconNormal = AppColor(resource: .iconNormal)
        public static let iconActive = AppColor(resource: .iconActive)
        public static let tagBg = AppColor(resource: .tagBg)
        public static let tagBgHover = AppColor(resource: .tagBgHover)
        public static let tagLabel = AppColor(resource: .tagLabel)
        public static let primaryLabel = AppColor(resource: .primaryLabel)
        public static let primaryLabelDisable = AppColor(resource: .primaryLabelDisable)
        public static let rulerBg = AppColor(resource: .rulerBg)
        public static let rulerMark = AppColor(resource: .rulerMark)
        public static let buttonHighlight = AppColor(resource: .buttonHighlight)
        public static let pixelGridColor = AppColor.systemGray.withAlphaComponent(0.3)
        public static let separator = AppColor(resource: .separator)
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
        public static let textInputer = UIEdgeInsets(top: 2, left: 4, bottom: 2, right: 4)
        public static let panelHeader = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)
    }
    
    public enum Size {
        public static let controlHeight: CGFloat = 22
        public static let controlBorderWidth: CGFloat = 1
        public static let panelHeaderHeight = Styles.insets.panelHeader.top + Styles.insets.panelHeader.bottom + Styles.size.controlHeight
        public static let panelFooterHeight: Double = 12
    }
    
    public enum Font {
        public static let inputer: UIFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        public static let panelTitle = UIFont.systemFont(ofSize: 12, weight: .semibold)
        public static let picker: UIFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        public static let tag: UIFont = UIFont.systemFont(ofSize: 10, weight: .regular)
    }
    
    public static let color = Color.self
    public static let radius = Radius.self
    public static let spacing = Spacing.self
    public static let insets = Insets.self
    public static let size = Size.self
    public static let font = Font.self
}
