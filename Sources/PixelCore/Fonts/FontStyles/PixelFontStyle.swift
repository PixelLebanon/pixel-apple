//
//  PixelFontStyle.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public enum PixelFontStyle<Theme: PixelThemeProtocol, Typography: PixelTypography>: PixelFontStyleProtocol {

    case solid(Typography.FontProtocol)
    case themed(pixelFonts: [Theme: Typography.FontProtocol], theme: Theme)
    indirect case conditional(activeFontStyle: Self, inactiveFontStyle: Self, isActive: Bool)

    public var pixelFont: Typography.FontProtocol {
        switch self {
        case .solid(let pixelFont):
            return pixelFont
        case .themed(let pixelFonts, let theme):
            return pixelFonts[theme] ?? .empty
        case .conditional(let activeFontStyle, let inactiveFontStyle, let isActive):
            return isActive ? activeFontStyle.pixelFont : inactiveFontStyle.pixelFont
        }
    }
}
