//
//  PixelFontStyle+AnyPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFontStyle {

    var pixelFont: AnyPixelFont {
        switch self {
        case let .solid(pixelFont): pixelFont
        default: .empty
        }
    }

    func pixelFont(theme: PixelTheme) -> AnyPixelFont {
        switch self {
        case let .solid(pixelFont): pixelFont
        case let .themed(pixelFonts): pixelFonts[theme] ?? .empty
        default: .empty
        }
    }

    func pixelFont(isFocused: Bool, theme: PixelTheme) -> AnyPixelFont {
        switch self {
        case let .solid(pixelFont):
            return pixelFont
        case let .themed(pixelFonts):
            return pixelFonts[theme] ?? .empty
        case let .conditional(activeFontStyle, inactiveFontStyle, condition):
            let isActive: Bool = switch condition {
            case .focus: isFocused
            case .custom(let isActive): isActive
            }
            return isActive
            ? activeFontStyle.pixelFont(isFocused: isFocused, theme: theme)
            : inactiveFontStyle.pixelFont(isFocused: isFocused, theme: theme)
        }
    }
}
