//
//  PixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelText: View {

    private struct ContentView: View {

        @Environment(\.font) private var font: Font?
        @Environment(\.textColor) private var textColor: Color
        @Environment(\.kerning) private var kerning: CGFloat
        @Environment(\.lineLimit) private var lineLimit: Int?
        @Environment(\.multilineTextAlignment) private var multiLineTextAlignment: TextAlignment
        @Environment(\.textCase) private var textCase: Text.Case?
        @Environment(\.visibility) private var visibility: Visibility

        let text: String

        var body: some View {
            Text(text)
                .font(font)
                .foregroundStyle(textColor)
                .kerning(kerning)
                .lineLimit(lineLimit)
                .multilineTextAlignment(multiLineTextAlignment)
                .textCase(textCase)
                .visibility(is: visibility)
        }
    }

    @Environment(\.isFocused) private var isFocused: Bool

    private let configuration: Configuration

    public init(
        alignment: TextAlignment? = nil,
        colorStyle: PixelColorStyle? = nil,
        fontStyle: PixelFontStyle? = nil,
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

//    private var theme: Theme {
//        themeManager.theme
//    }

    private var pixelFont: AnyPixelFont {
        configuration.fontStyle.pixelFont(isFocused: isFocused, theme: .light)
    }

    public var body: some View {
        ContentView(text: text)
            .font(font)
            .kerning(kerning)
            .lineLimit(lineLimit)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
            .textColor(textColor)
            .visibility(visibility)
    }

    private var text: String {
        configuration.text
    }

    private var font: Font {
        pixelFont.font
    }

    private var textColor: Color {
        configuration.colorStyle.color(isFocused: isFocused, theme: .light)
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

    private var visibility: Visibility {
        pixelFont == .empty ? .remove : .show
    }
}

private extension EnvironmentValues {

    @Entry var kerning: CGFloat = 0
    @Entry var textColor: Color = .clear
}

extension EnvironmentValues {

    @Entry var visibility: Visibility = .show
}

private extension View {

    func textColor(_ textColor: Color) -> some View {
        self.environment(\.textColor, textColor)
    }
}

//#Preview("Implicit") {
//    PixelText(text: "Hello World")
//        .environment(PixelThemeManager<PixelTheme>())
//}

//#Preview("Explicit") {
//    PixelText(
//        configuration: .init(
//            alignment: .center,
//            colorStyle: .solid(Pixel.Dark.onBackground),
//            fontStyle: .solid(PixelFont.superDino1),
//            text: "Hello World"
//        )
//    )
//    .environment(PixelThemeManager<PixelTheme>())
//}
