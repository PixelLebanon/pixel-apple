//
//  PixelButton+Configuration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 12/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelButtonConfiguration: PixelButton.Configuration?
}

public extension PixelButton {

    struct Configuration {

        public struct Text {

            public let weight: Font.Weight

            public let isItalic: Bool

            public init(weight: Font.Weight, isItalic: Bool) {
                self.weight = weight
                self.isItalic = isItalic
            }
        }

        public let backgroundColorStyle: PixelColorStyle
        public let foregroundColorStyle: PixelColorStyle
        public let icon: Icon?
        public let shape: Shape
        public let size: Size
        public let style: Style
        public let text: Text
        public let width: Width

        public init(
            backgroundColorStyle: PixelColorStyle,
            foregroundColorStyle: PixelColorStyle,
            icon: Icon?,
            shape: Shape,
            size: Size,
            style: Style,
            text: Text,
            width: Width
        ) {
            self.backgroundColorStyle = backgroundColorStyle
            self.foregroundColorStyle = foregroundColorStyle
            self.icon = icon
            self.shape = shape
            self.size = size
            self.style = style
            self.text = text
            self.width = width
        }
    }

    func configure(_ configuration: Configuration) -> some View {
        self.environment(\.pixelButtonConfiguration, configuration)
    }
}
