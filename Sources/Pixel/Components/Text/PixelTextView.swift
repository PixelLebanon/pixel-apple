//
//  PixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import PixelCore
import SwiftUI

public typealias PixelText = PixelTextView<PixelTheme, PixelFont>

public struct PixelTextView<Theme: PixelThemeProtocol, Typography: PixelTypography>: View {

    private let configuration: PixelTextConfiguration<Theme, Typography>
    private let text: String

    public init(configuration: PixelTextConfiguration<Theme, Typography>, text: String) {
        self.configuration = configuration
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .lineLimit(lineLimit)
            .multilineTextAlignment(multilineTextAlignment)
            .textCase(textCase)
            .tracking(tracking)
    }

    private var font: Font {
        configuration.fontStyle.pixelFont.font
    }

    private var foregroundStyle: Color {
        configuration.colorStyle.color
    }

    private var lineLimit: Int? {
        configuration.lineLimit
    }

    private var multilineTextAlignment: TextAlignment {
        configuration.alignment
    }

    private var textCase: Text.Case? {
        configuration.fontStyle.pixelFont.isCaps ? .uppercase : nil
    }

    private var tracking: CGFloat {
        configuration.fontStyle.pixelFont.letterSpacing
    }
}

#Preview {
    PixelText(
        configuration: .init(
            alignment: .center,
            colorStyle: .solid(.Pixel.Dark.onBackground),
            fontStyle: .solid(.superDino1)
        ),
        text: "Hello World"
    )
}
