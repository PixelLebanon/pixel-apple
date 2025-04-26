//
//  PixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelText: View {

    @Environment(\.isFocused) private var _isFocused: Bool
    @Environment(\.lineLimit) private var _lineLimit: Int?
    @Environment(\.lineSpacing) private var _lineSpacing: CGFloat
    @Environment(\.multilineTextAlignment) private var _multilineTextAlignment: TextAlignment
    @Environment(\.textCase) private var _textCase: Text.Case?

    @Environment(\.pixelTextConfiguration) private var _configuration: Self.Configuration?
    @Environment(\.pixelColorStyle) private var _colorStyle: PixelColorStyle?
    @Environment(\.pixelFontStyle) private var _fontStyle: PixelFontStyle?

    @Environment(\.pixelTheme) private var _theme: AnyPixelTheme

    let text: String

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .kerning(kerning)
            .lineLimit(lineLimit)
            .lineSpacing(lineSpacing)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
            .visibility(visibility)
    }

    private var pixelFont: AnyPixelFont {
        _configuration?.fontStyle(isFocused: _isFocused, theme: _theme)
        ?? _fontStyle?(isFocused: _isFocused, theme: _theme)
        ?? _theme.typography.big3
    }

    private var font: Font {
        pixelFont.font
    }

    private var foregroundStyle: Color {
        _configuration?.colorStyle(isFocused: _isFocused, theme: _theme)
        ?? _colorStyle?(isFocused: _isFocused, theme: _theme)
        ?? _theme.colorScheme.onBackground
    }

    private var kerning: CGFloat {
        pixelFont.kerning
    }

    private var lineLimit: Int? {
        if let _configuration {
            _configuration.lineLimit
        } else {
            _lineLimit
        }
    }

    private var lineSpacing: CGFloat? {
        if let _configuration {
            _configuration.lineSpacing
        } else {
            _lineSpacing
        }
    }

    private var multilineTextAlignment: TextAlignment {
        _configuration?.alignment ?? _multilineTextAlignment
    }

    private var textCase: Text.Case? {
        if let _configuration {
            _configuration.textCase
        } else {
            _textCase
        }
    }

    private var visibility: Visibility {
        pixelFont == .empty ? .remove : .default
    }
}

#Preview("Implicit") {
    PixelText("Hello World!")
}

#Preview("Explicit") {
    PixelText("Hello World!")
        .configure(
            .init(
                alignment: .center,
                colorStyle: .solid(.lightColorScheme.onBackground),
                fontStyle: .solid(.satoshiTypography.superDino1),
                lineLimit: nil,
                lineSpacing: nil,
                textCase: nil
            )
        )
}
