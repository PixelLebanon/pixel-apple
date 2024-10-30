//
//  PixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelText: View {

    public struct Configuration {

        public let alignment: TextAlignment
        public let colorStyle: PixelColorStyle
        public let fontStyle: PixelFontStyle
        public let lineLimit: Int?

        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle,
            fontStyle: PixelFontStyle,
            lineLimit: Int? = nil
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
        }
    }

    @Environment(\.isFocused) private var isFocused: Bool
    @Environment(\.pixelTheme) private var pixelTheme: PixelTheme

    let text: String

    let _alignment: TextAlignment?
    let _colorStyle: PixelColorStyle?
    let _fontStyle: PixelFontStyle?
    let _lineLimit: Int?

    let _configuration: Configuration?

    public init(_ text: String) {
        self.text = text
        self._alignment = nil
        self._colorStyle = nil
        self._fontStyle = nil
        self._lineLimit = nil
        self._configuration = nil
    }

    public var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .kerning(kerning)
            .lineLimit(lineLimit)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
            .visibility(visibility)
    }

    private var pixelFont: AnyPixelFont {
        _configuration?.fontStyle(isFocused: isFocused, theme: pixelTheme)
        ?? _fontStyle?(isFocused: isFocused, theme: pixelTheme)
        ?? pixelTheme.typography.big3
    }

    private var font: Font {
        pixelFont.font
    }

    private var foregroundStyle: Color {
        _configuration?.colorStyle(isFocused: isFocused, theme: pixelTheme)
        ?? _colorStyle?(isFocused: isFocused, theme: pixelTheme)
        ?? pixelTheme.colorScheme.onBackground.color
    }

    private var kerning: CGFloat {
        pixelFont.kerning
    }

    private var lineLimit: Int? {
        _configuration?.lineLimit ?? _lineLimit
    }

    private var multilineTextAlignment: TextAlignment {
        _configuration?.alignment ?? _alignment ?? .center
    }

    private var textCase: Text.Case? {
        pixelFont.textCase
    }

    private var visibility: Visibility {
        pixelFont == .empty ? .remove : .show
    }
}

#Preview("Implicit") {
    PixelText("Hello World!")
}

#Preview("Explicit") {
    PixelText("Hello World!")
        .configuration(
            .init(
                alignment: .center,
                colorStyle: .solid(PixelColorScheme.light.onBackground),
                fontStyle: .solid(PixelTypography.sfPro.superDino1)
            )
        )
}
