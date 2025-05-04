//
//  SatoshiPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct SatoshiPixelFont: PixelFont {

    public let italic: Bool
    public let kerning: CGFloat
    public let size: CGFloat
    public let style: Font.TextStyle
    public let weight: Font.Weight

    public init(
        italic: Bool = false,
        kerning: CGFloat = 0,
        size: CGFloat,
        style: Font.TextStyle,
        weight: Font.Weight = .regular
    ) {
        self.italic = italic
        self.kerning = kerning
        self.size = size
        self.style = style
        self.weight = weight
    }

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    private var name: String {
        switch weight {
        case .light: italic ? Satoshi.lightItalic.name : Satoshi.light.name
        case .regular: italic ? Satoshi.regularItalic.name : Satoshi.regular.name
        case .medium: italic ? Satoshi.mediumItalic.name : Satoshi.medium.name
        case .bold: italic ? Satoshi.boldItalic.name : Satoshi.bold.name
        case .black: italic ? Satoshi.blackItalic.name : Satoshi.black.name
        default: italic ? Satoshi.regularItalic.name : Satoshi.regular.name
        }
    }

    public func italic(_ italic: Bool) -> Self {
        .init(italic: italic, kerning: kerning, size: size, style: style, weight: weight)
    }

    public func weight(_ weight: Font.Weight) -> Self {
        .init(italic: italic, kerning: kerning, size: size, style: style, weight: weight)
    }
}
