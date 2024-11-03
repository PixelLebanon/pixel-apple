//
//  PixelFontStyle+AnyPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFontStyle {

    func callAsFunction() -> AnyPixelFont {
        switch self {
        case let .solid(pixelFont): pixelFont
        default: .empty
        }
    }

    func callAsFunction(theme: AnyPixelTheme) -> AnyPixelFont {
        switch self {
        case let .solid(pixelFont): pixelFont
        case let .themed(pixelFonts): pixelFonts[theme] ?? .empty
        default: .empty
        }
    }

    func callAsFunction(isFocused: Bool, theme: AnyPixelTheme) -> AnyPixelFont {
        switch self {
        case let .solid(pixelFont): return pixelFont
        case let .themed(pixelFonts): return pixelFonts[theme] ?? .empty
        case let .conditional(activeFontStyle, inactiveFontStyle, condition):
            let isActive: Bool = switch condition {
            case .focus: isFocused
            case let .custom(isActive): isActive
            }
            return isActive
            ? activeFontStyle(isFocused: isFocused, theme: theme)
            : inactiveFontStyle(isFocused: isFocused, theme: theme)
        }
    }
}
