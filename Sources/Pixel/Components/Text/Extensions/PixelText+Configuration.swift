//
//  PixelText+Configuration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 07/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Observation
import SwiftUI

public extension PixelText {

    struct Configuration {

        public let alignment: TextAlignment
        public let colorStyle: PixelColorStyle
        public let fontStyle: PixelFontStyle
        public let lineLimit: Int?

        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle,
            fontStyle: PixelFontStyle,
            lineLimit: Int? = nil
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
        }
    }
}
