//
//  SizePrimitive+.swift
//  StyleKit
//
//  Created by chenyungui on 2025/11/19.
//

import Foundation

// 辅助扩展：处理字符串格式化
fileprivate extension String {
    // 将 "focus ring" 转换为 "focusRing", "negative 100" 转换为 "negative100"
    var toCamelCase: String {
        let components = self.components(separatedBy: " ")
        guard components.count > 1 else { return self }
        
        let first = components[0]
        let rest = components.dropFirst().map { $0.prefix(1).uppercased() + $0.dropFirst() }
        return ([first] + rest).joined()
    }
    
    // 首字母大写：space -> Space
    var firstUppercased: String {
        prefix(1).uppercased() + dropFirst()
    }
}

extension SizePrimitive {
    public static func generateCode() -> String {
        var output = """
        // MARK: - Generated Size Accessors
        public enum Sizes {
        """
        
        // 遍历 SizePrimitive 中定义的所有集合 (Space, Radius, etc.)
        for collectionType in collections {
            // 获取集合的枚举名称，例如 "Space" (通过 type 枚举值获取并大写首字母)
            // collectionType.type 返回的是 SizeCollectionType.space
            let categoryName = collectionType.type.rawValue.firstUppercased
            
            output += "\n    public enum \(categoryName) {"
            
            // 遍历集合中的所有 Token
            for token in collectionType.tokens {
                // 将 token.name 转换为合法的 Swift 变量名
                // 1. 如果是数字开头 (e.g. "100") -> "_100"
                // 2. 如果包含空格 (e.g. "focus ring") -> "focusRing"
                // 3. 正常单词 (e.g. "small") -> "small"
                var identifier = token.name.toCamelCase
                
                if identifier.first?.isNumber == true {
                    identifier = "_\(identifier)"
                }
                
                // 处理可能的 Swift 关键字 (虽然目前的数据中没有，但作为保险)
                if identifier == "default" { identifier = "`default`" }
                
                // 生成代码行: public static let _0: CGFloat = SizePrimitive.Space._0.value
                output += "\n        public static let \(identifier): CGFloat = SizePrimitive.\(categoryName).\(identifier).value"
            }
            
            output += "\n    }"
        }
        
        output += "\n}"
        return output
    }
}
