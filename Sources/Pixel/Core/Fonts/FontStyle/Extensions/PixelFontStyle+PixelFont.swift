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
        case .solid(let pixelFont): pixelFont
        default: PixelFont.empty
        }
    }

    /// A method to retrieve the `FontProtocol` concrete value of a `solid` or `themed` font style. Any other
    /// font style will default to `PixelFont.empty`.
    func pixelFont(theme: Theme) -> any PixelFontProtocol {
        switch self {
        case .solid(let pixelFont): pixelFont
        case .themed(let pixelFonts): pixelFonts[theme] ?? PixelFont.empty
        default: PixelFont.empty
        }
    }

    /// A method to retrieve the `FontProtocol` concrete value of any font style.
    func pixelFont(isFocused: Bool, theme: Theme) -> any PixelFontProtocol {
        switch self {
        case .solid(let pixelFont):
            return pixelFont
        case .themed(let pixelFonts):
            return pixelFonts[theme] ?? PixelFont.empty
        case .conditional(let activeFontStyle, let inactiveFontStyle, let condition):
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
