//
//  PixelText+Configuration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelText {

    struct Configuration {

        public let alignment: TextAlignment
        public let colorStyle: PixelColorStyle
        public let fontStyle: PixelFontStyle
        public let lineLimit: Int?
        public let lineSpacing: CGFloat?
        public let textCase: Text.Case?

        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle,
            fontStyle: PixelFontStyle,
            lineLimit: Int?,
            lineSpacing: CGFloat?,
            textCase: Text.Case?
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
            self.lineSpacing = lineSpacing
            self.textCase = textCase
        }
    }
}
