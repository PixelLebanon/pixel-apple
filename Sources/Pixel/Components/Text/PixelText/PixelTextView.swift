//
//  PixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelTextView<Theme: PixelThemeProtocol>: View {

    @Environment(PixelThemeManager.self) private var themeManager: PixelThemeManager<Theme>

    @Environment(\.isFocused) private var isFocused: Bool

    private let configuration: Configuration

    public init(
        alignment: TextAlignment? = nil,
        colorStyle: PixelColorStyle<Theme>? = nil,
        fontStyle: PixelFontStyle<Theme>? = nil,
        lineLimit: Int? = nil,
        text: String
    ) {
        self.configuration = .init(
            alignment: alignment,
            colorStyle: colorStyle,
            fontStyle: fontStyle,
            lineLimit: lineLimit,
            text: text
        )
    }

    public init(configuration: Configuration) {
        self.configuration = configuration
    }

    private var pixelFont: any PixelFontProtocol {
        configuration.fontStyle.pixelFont(isFocused: isFocused, theme: theme)
    }

    private var theme: Theme {
        themeManager.theme
    }

    public var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .kerning(kerning)
            .lineLimit(lineLimit)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
            .visibility(.remove, condition: visibilityCondition)
    }

    private var text: String {
        configuration.text
    }

    private var font: Font {
        pixelFont.font
    }

    private var foregroundStyle: Color {
        configuration.colorStyle.color(isFocused: isFocused, theme: theme)
    }

    private var kerning: CGFloat {
        pixelFont.kerning
    }

    private var lineLimit: Int? {
        configuration.lineLimit
    }

    private var multilineTextAlignment: TextAlignment {
        configuration.alignment
    }

    private var textCase: Text.Case? {
        pixelFont.textCase
    }

    private var visibilityCondition: Bool {
        (pixelFont as? PixelFont) == PixelFont.empty
    }
}

#Preview("Implicit") {
    PixelText(text: "Hello World")
        .environment(PixelThemeManager<PixelTheme>())
}

#Preview("Explicit") {
    PixelText(
        configuration: .init(
            alignment: .center,
            colorStyle: .solid(Pixel.Dark.onBackground),
            fontStyle: .solid(PixelFont.superDino1),
            text: "Hello World"
        )
    )
    .environment(PixelThemeManager<PixelTheme>())
}
