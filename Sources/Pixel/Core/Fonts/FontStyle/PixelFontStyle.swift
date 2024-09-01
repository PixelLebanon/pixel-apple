//
//  PixelFontStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public enum PixelFontStyle<FontProtocol: PixelFontProtocol, Theme: PixelThemeProtocol> {

    public enum Condition {

        case focus, custom(Bool)
    }

    case solid(FontProtocol)
    case themed(pixelFonts: [Theme: FontProtocol], theme: Theme)
    indirect case conditional(activeFontStyle: Self, inactiveFontStyle: Self, condition: Condition)
}
