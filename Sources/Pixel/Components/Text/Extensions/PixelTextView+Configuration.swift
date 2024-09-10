//
//  PixelTextView+Configuration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 07/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Observation
import SwiftUI

public extension PixelTextView {

    @Observable
    final class Configuration {

        public var alignment: TextAlignment
        public var colorStyle: PixelColorStyle<Theme>
        public var fontStyle: PixelFontStyle<Theme>
        public var lineLimit: Int?
        public var text: String

        init(
            alignment: TextAlignment? = nil,
            colorStyle: PixelColorStyle<Theme>? = nil,
            fontStyle: PixelFontStyle<Theme>? = nil,
            lineLimit: Int? = nil,
            text: String
        ) {
            self.alignment = alignment ?? .center
            self.colorStyle = colorStyle?.implicitStyle(of: .text) ?? .defaultImplicitStyle(of: .text)
            self.fontStyle = fontStyle?.implicitStyle(of: .text) ?? .defaultImplicitStyle(of: .text)
            self.lineLimit = lineLimit
            self.text = text
        }

        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle<Theme>,
            fontStyle: PixelFontStyle<Theme>,
            lineLimit: Int? = nil,
            text: String
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
            self.text = text
        }
    }
}
