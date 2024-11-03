//
//  PixelText+Modifiers.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 29/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelText {

    private init(
        text: String,
        alignment: TextAlignment?,
        colorStyle: PixelColorStyle?,
        fontStyle: PixelFontStyle?,
        lineLimit: Int?,
        configuration: Configuration?
    ) {
        self.text = text
        self._alignment = alignment
        self._colorStyle = colorStyle
        self._fontStyle = fontStyle
        self._lineLimit = lineLimit
        self._configuration = configuration
    }

    func alignment(_ alignment: TextAlignment) -> Self {
        .init(
            text: text,
            alignment: alignment,
            colorStyle: _colorStyle,
            fontStyle: _fontStyle,
            lineLimit: _lineLimit,
            configuration: _configuration
        )
    }

    func colorStyle(_ colorStyle: PixelColorStyle) -> Self {
        .init(
            text: text,
            alignment: _alignment,
            colorStyle: colorStyle,
            fontStyle: _fontStyle,
            lineLimit: _lineLimit,
            configuration: _configuration
        )
    }

    func fontStyle(_ fontStyle: PixelFontStyle) -> Self {
        .init(
            text: text,
            alignment: _alignment,
            colorStyle: _colorStyle,
            fontStyle: fontStyle,
            lineLimit: _lineLimit,
            configuration: _configuration
        )
    }

    func lineLimit(_ lineLimit: Int) -> Self {
        .init(
            text: text,
            alignment: _alignment,
            colorStyle: _colorStyle,
            fontStyle: _fontStyle,
            lineLimit: lineLimit,
            configuration: _configuration
        )
    }

    func configuration(_ configuration: Configuration) -> Self {
        .init(
            text: text,
            alignment: _alignment,
            colorStyle: _colorStyle,
            fontStyle: _fontStyle,
            lineLimit: _lineLimit,
            configuration: configuration
        )
    }
}
