//
//  PixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelText: View {

    @Environment(\.configuration) private var configuration: Configuration?
    @Environment(\.isFocused) private var isFocused: Bool
    @Environment(\.pixelTheme) private var pixelTheme: PixelTheme

    private let text: String

    public init(_ text: String) {
        self.text = text
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

    private var _pixelFont: AnyPixelFont {
        pixelTheme.typography.big3
    }
    private var pixelFont: AnyPixelFont {
        configuration?.fontStyle.pixelFont(isFocused: isFocused, theme: pixelTheme) ?? _pixelFont
    }

    private var font: Font {
        pixelFont.font
    }

    private var _foregroundStyle: Color {
        pixelTheme.colorScheme.onBackground.color
    }
    private var foregroundStyle: Color {
        configuration?.colorStyle.color(isFocused: isFocused, theme: pixelTheme) ?? _foregroundStyle
    }

    private var kerning: CGFloat {
        pixelFont.kerning
    }

    private var lineLimit: Int? {
        configuration?.lineLimit
    }

    private var multilineTextAlignment: TextAlignment {
        configuration?.alignment ?? .center
    }

    private var textCase: Text.Case? {
        pixelFont.textCase
    }

    private var visibility: Visibility {
        pixelFont == .empty ? .remove : .show
    }
}

private extension EnvironmentValues {

    @Entry var configuration: PixelText.Configuration?
}

public extension View where Self == PixelText {

    func configuration(_ configuration: Self.Configuration) -> some View {
        self.environment(\.configuration, configuration)
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
