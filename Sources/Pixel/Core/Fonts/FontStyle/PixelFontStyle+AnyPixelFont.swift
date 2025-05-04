//
//  PixelFontStyle+AnyPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFontStyle {

    func callAsFunction() -> AnyPixelFont? {
        switch self {
        case let .solid(pixelFont): pixelFont
        default: nil
        }
    }

    func callAsFunction(theme: AnyPixelTheme) -> AnyPixelFont? {
        switch self {
        case let .solid(pixelFont): pixelFont
        case let .themed(pixelFonts): pixelFonts[theme]
        default: nil
        }
    }

    func callAsFunction(isFocused: Bool, theme: AnyPixelTheme) -> AnyPixelFont? {
        switch self {
        case let .solid(pixelFont): return pixelFont
        case let .themed(pixelFonts): return pixelFonts[theme]
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
