//
//  PixelFontStyle+PixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFontStyle {

    var pixelFont: FontProtocol {
        switch self {
        case .solid(let pixelFont): pixelFont
        default: .empty
        }
    }

    func pixelFont(theme: Theme) -> FontProtocol {
        switch self {
        case .solid(let pixelFont): pixelFont
        case .themed(let pixelFonts, let theme): pixelFonts[theme] ?? .empty
        default: .empty
        }
    }

    func pixelFont(isFocused: Bool, theme: Theme) -> FontProtocol {
        switch self {
        case .solid(let pixelFont):
            return pixelFont
        case .themed(let pixelFonts, let theme):
            return pixelFonts[theme] ?? .empty
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
