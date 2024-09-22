//
//  PixelFontStyle+PixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFontStyle {

    /// A computed property to retrieve the `FontProtocol` concrete value of a `solid` font style. Any other font style
    /// will default to `PixelFont.empty`.
    var pixelFont: any PixelFontProtocol {
        switch self {
        case let .solid(pixelFont): pixelFont
        default: PixelFont.empty
        }
    }

    /// A method to retrieve the `FontProtocol` concrete value of a `solid` or `themed` font style. Any other
    /// font style will default to `PixelFont.empty`.
    func pixelFont(theme: Theme) -> any PixelFontProtocol {
        switch self {
        case let .solid(pixelFont): pixelFont
        case let .themed(pixelFonts): pixelFonts[theme] ?? PixelFont.empty
        default: PixelFont.empty
        }
    }

    /// A method to retrieve the `FontProtocol` concrete value of any font style.
    func pixelFont(isFocused: Bool, theme: Theme) -> any PixelFontProtocol {
        switch self {
        case let .solid(pixelFont):
            return pixelFont
        case let .themed(pixelFonts):
            return pixelFonts[theme] ?? PixelFont.empty
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
