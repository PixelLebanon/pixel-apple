//
//  PixelTextView+Configuration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 07/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Observation
import SwiftUI

public extension PixelText {

    /// A configuration type to customize the appearance and behavior of a `PixelTextView`.
    ///
    /// The class observes changes made to its properties and easily reflects them onto the UI in both SwiftUI and
    /// UIKit contexts. Moreover, it provides explicit and implicit intializations depending on the level of control
    /// needed over the app's UI layer.
    @Observable
    final class Configuration {

        public var alignment: TextAlignment
        public var colorStyle: PixelColorStyle
        public var fontStyle: PixelFontStyle
        public var lineLimit: Int?
        public var text: String

        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle,
            fontStyle: PixelFontStyle,
            lineLimit: Int?,
            text: String
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
            self.text = text
        }

        init(
            alignment: TextAlignment? = nil,
            colorStyle: PixelColorStyle? = nil,
            fontStyle: PixelFontStyle? = nil,
            lineLimit: Int? = nil,
            text: String
        ) {
            self.alignment = alignment ?? .center
            self.colorStyle = colorStyle ?? .solid(.empty)
            self.fontStyle = fontStyle ?? .solid(.empty)
            self.lineLimit = lineLimit
            self.text = text
        }
    }
}
