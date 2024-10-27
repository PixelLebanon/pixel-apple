//
//  PixelFontStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public enum PixelFontStyle {

    public enum Condition {

        case focus
        case custom(Bool)
    }

    case solid(AnyPixelFont)
    case themed(pixelFonts: [PixelTheme: AnyPixelFont])
    indirect case conditional(activeFontStyle: Self, inactiveFontStyle: Self, condition: Condition)
}
