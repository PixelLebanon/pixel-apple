//
//  PixelTextConfiguration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import PixelCore
import SwiftUI

public struct PixelTextConfiguration<PixelFont: PixelFontProtocol, Theme: PixelThemeProtocol> {

    let alignment: TextAlignment
    let colorStyle: PixelColorStyle<Theme>
    let fontStyle: PixelFontStyle<PixelFont, Theme>
    let lineLimit: Int?

    public init(alignment: TextAlignment,
                colorStyle: PixelColorStyle<Theme>,
                fontStyle: PixelFontStyle<PixelFont, Theme>,
                lineLimit: Int? = nil) {
        self.alignment = alignment
        self.colorStyle = colorStyle
        self.fontStyle = fontStyle
        self.lineLimit = lineLimit
    }
}