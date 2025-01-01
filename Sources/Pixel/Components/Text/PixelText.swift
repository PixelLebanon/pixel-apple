//
//  PixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelText: View {

    @Environment(\.isFocused) private var isFocused: Bool
    @Environment(\.pixelTextProperties) private var properties: PixelTextProperties?
    @Environment(\.pixelTheme) private var theme: AnyPixelTheme

    let text: String

    let _alignment: TextAlignment?
    let _colorStyle: PixelColorStyle?
    let _fontStyle: PixelFontStyle?
    let _lineLimit: Int?
    let _lineSpacing: CGFloat?

    public init(_ text: String) {
        self.text = text
        self._alignment = nil
        self._colorStyle = nil
        self._fontStyle = nil
        self._lineLimit = nil
        self._lineSpacing = nil
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
        properties?.fontStyle(isFocused: isFocused, theme: theme)
        ?? _fontStyle?(isFocused: isFocused, theme: theme)
        ?? theme.typography.big3
    }

    private var font: Font {
        pixelFont.font
    }

    private var foregroundStyle: Color {
        properties?.colorStyle(isFocused: isFocused, theme: theme).color
        ?? _colorStyle?(isFocused: isFocused, theme: theme).color
        ?? theme.colorScheme.onBackground.color
    }

    private var kerning: CGFloat {
        pixelFont.kerning
    }

    private var lineLimit: Int? {
        if let properties {
            properties.lineLimit
        } else {
            _lineLimit
        }
    }

    private var lineSpacing: CGFloat? {
        if let properties {
            properties.lineSpacing
        } else {
            _lineSpacing
        }
    }

    private var multilineTextAlignment: TextAlignment {
        properties?.alignment ?? _alignment ?? .center
    }

    private var textCase: Text.Case? {
        pixelFont.textCase
    }

    private var visibility: Visibility {
        pixelFont == .empty ? .remove : .default
    }
}

private extension View {

    @ViewBuilder
    func lineSpacing(_ lineSpacing: CGFloat?) -> some View {
        if let lineSpacing {
            self.lineSpacing(lineSpacing)
        } else {
            self
        }
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
                fontStyle: .solid(.sfProTypography.superDino1),
                lineLimit: nil,
                lineSpacing: nil
            )
        )
}
