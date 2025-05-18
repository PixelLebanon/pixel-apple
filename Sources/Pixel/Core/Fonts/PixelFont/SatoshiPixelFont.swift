//
//  SatoshiPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct SatoshiPixelFont: PixelFont {

    public let kerning: CGFloat
    public let size: CGFloat
    public let style: Font.TextStyle
    public let weight: Font.Weight

    public let isItalic: Bool

    public init(
        kerning: CGFloat = 0,
        size: CGFloat,
        style: Font.TextStyle,
        weight: Font.Weight = .regular,
        isItalic: Bool = false
    ) {
        self.kerning = kerning
        self.size = size
        self.style = style
        self.weight = weight
        self.isItalic = isItalic
    }

    // swiftlint:disable void_function_in_ternary

    private var name: String {
        switch weight {
        case .light: isItalic ? Satoshi.lightItalic() : Satoshi.light()
        case .regular: isItalic ? Satoshi.regularItalic() : Satoshi.regular()
        case .medium: isItalic ? Satoshi.mediumItalic() : Satoshi.medium()
        case .bold: isItalic ? Satoshi.boldItalic() : Satoshi.bold()
        case .black: isItalic ? Satoshi.blackItalic() : Satoshi.black()
        default: isItalic ? Satoshi.regularItalic() : Satoshi.regular()
        }
    }

    // swiftlint:enable void_function_in_ternary

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    public func italic(_ isActive: Bool) -> Self {
        .init(kerning: kerning, size: size, style: style, weight: weight, isItalic: isActive)
    }

    public func weight(_ weight: Font.Weight) -> Self {
        .init(kerning: kerning, size: size, style: style, weight: weight, isItalic: isItalic)
    }
}
