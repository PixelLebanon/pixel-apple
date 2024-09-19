//
//  PixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A view displaying a SwiftUI styled text from the Pixel Design System.
///
/// The view can be initialized either explicitly or implicity depending on the app usecase and it must contain a
/// `PixelThemeManager` in its environment heirarchy.
public struct PixelTextView<Theme: PixelThemeProtocol>: View {

    /// The current theme manager of the view.
    @Environment(PixelThemeManager.self) private var themeManager: PixelThemeManager<Theme>

    /// The current focused value of the view.
    @Environment(\.isFocused) private var isFocused: Bool

    /// The configuration object observing the view's current styling properties.
    private let configuration: Configuration

    /// Initialize the view implicitly.
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

    /// Initialize the view explicitly.
    public init(configuration: Configuration) {
        self.configuration = configuration
    }

    /// The current active theme.
    private var theme: Theme {
        themeManager.theme
    }

    /// The pixel font resolved from the font style.
    private var pixelFont: any PixelFontProtocol {
        configuration.fontStyle.pixelFont(isFocused: isFocused, theme: theme)
    }

    /// The visible content of the view.
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

    /// The text's content to display.
    private var text: String {
        configuration.text
    }

    /// The text's font from the pixel font.
    private var font: Font {
        pixelFont.font
    }

    /// The text's color resolved from the color style.
    private var foregroundStyle: Color {
        configuration.colorStyle.color(isFocused: isFocused, theme: theme)
    }

    /// The text's letter spacing from the pixel font.
    private var kerning: CGFloat {
        pixelFont.kerning
    }

    /// The text's maximum number of lines.
    private var lineLimit: Int? {
        configuration.lineLimit
    }

    /// The text's alignment.
    private var multilineTextAlignment: TextAlignment {
        configuration.alignment
    }

    /// The text's case transformation from the pixel font.
    private var textCase: Text.Case? {
        pixelFont.textCase
    }

    /// The condition to determine the view's visibility based on whether the pixel font is empty.
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
