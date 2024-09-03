//
//  PixelTextConfiguration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Observation
import SwiftUI

@Observable
public final class PixelTextConfiguration<FontProtocol: PixelFontProtocol, Theme: PixelThemeProtocol> {

    static var empty: PixelTextConfiguration<FontProtocol, Theme> {
        .init(alignment: .center, colorStyle: .solid(.init(.clear)), fontStyle: .solid(.empty), text: "")
    }

    var alignment: TextAlignment
    var colorStyle: PixelColorStyle<Theme>
    var fontStyle: PixelFontStyle<FontProtocol, Theme>
    var lineLimit: Int?
    var text: String

    public init(
        alignment: TextAlignment,
        colorStyle: PixelColorStyle<Theme>,
        fontStyle: PixelFontStyle<FontProtocol, Theme>,
        lineLimit: Int? = nil,
        text: String
    ) {
        self.alignment = alignment
        self.colorStyle = colorStyle
        self.fontStyle = fontStyle
        self.lineLimit = lineLimit
        self.text = text
    }

    func update(to configuration: PixelTextConfiguration<FontProtocol, Theme>) {
        self.alignment = configuration.alignment
        self.colorStyle = configuration.colorStyle
        self.fontStyle = configuration.fontStyle
        self.lineLimit = configuration.lineLimit
        self.text = configuration.text
    }
}
