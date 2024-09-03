//
//  PixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelTextView<FontProtocol: PixelFontProtocol, Theme: PixelThemeProtocol>: View {

    @Environment(PixelThemeManager.self) private var themeManager: PixelThemeManager<Theme>

    @Environment(\.isFocused) private var isFocused: Bool

    @Bindable var configuration: PixelTextConfiguration<FontProtocol, Theme>

    public init(
        alignment: TextAlignment = .center,
        colorStyle: PixelColorStyle<Theme>,
        fontStyle: PixelFontStyle<FontProtocol, Theme>,
        lineLimit: Int? = nil,
        text: String
    ) {
        self.configuration = .init(
            alignment: alignment,
            colorStyle: colorStyle.adjustedColorStyle,
            fontStyle: fontStyle,
            lineLimit: lineLimit,
            text: text
        )
    }

    public init(configuration: PixelTextConfiguration<FontProtocol, Theme>) {
        self.configuration = configuration
    }

    public var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .kerning(kerning)
            .lineLimit(lineLimit)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
    }

    private var text: String {
        configuration.text
    }

    private var font: Font {
        configuration.fontStyle.pixelFont.font
    }

    private var foregroundStyle: Color {
        configuration.colorStyle.color(isFocused: isFocused, theme: themeManager.theme)
    }

    private var kerning: CGFloat {
        configuration.fontStyle.pixelFont.kerning
    }

    private var lineLimit: Int? {
        configuration.lineLimit
    }

    private var multilineTextAlignment: TextAlignment {
        configuration.alignment
    }

    private var textCase: Text.Case? {
        configuration.fontStyle.pixelFont.textCase
    }
}

private extension PixelColorStyle {

    var adjustedColorStyle: PixelColorStyle<Theme> {
        switch self {
        case .solid: self
        case .themed(let colors):
            .themed(
                colors: Theme.allCases.reduce(into: [:]) { partialResult, element in
                    partialResult[element] = colors[element] ?? element.colorScheme.onBackground
                }
            )
        case .conditional(let activeColorStyle, let inactiveColorStyle, let condition):
            .conditional(
                activeColorStyle: activeColorStyle.adjustedColorStyle,
                inactiveColorStyle: inactiveColorStyle.adjustedColorStyle,
                condition: condition
            )
        }
    }
}

#Preview("Automatic") {
    PixelText(
        alignment: .center,
        colorStyle: .themed(colors: [:]),
        fontStyle: .solid(.superDino1),
        text: "Hello World"
    )
    .environment(PixelThemeManager<PixelTheme>())
}

#Preview("Manual") {
    PixelText(
        configuration: .init(
            alignment: .center,
            colorStyle: .solid(Pixel.Dark.onBackground),
            fontStyle: .solid(.superDino1),
            text: "Hello World"
        )
    )
    .environment(PixelThemeManager<PixelTheme>())
}
