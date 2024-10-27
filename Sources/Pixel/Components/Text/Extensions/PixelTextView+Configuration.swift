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

        /// The text's alignment, defaults to `TextAlignment.center`.
        public var alignment: TextAlignment
        /// The text's color based on the color style.
        public var colorStyle: PixelColorStyle<Theme>
        /// The text's font based on the font style.
        public var fontStyle: PixelFontStyle<Theme>
        /// The text's maximum number of lines. Use `nil` for unlimited lines.
        public var lineLimit: Int?
        /// The text's content to be displayed in the view.
        public var text: String

        /// Initialize the type explicitly.
        ///
        /// Explicit initializations enforce all properties to be passed as parameters. They will never be overridden
        /// by default values of the Pixel Design System. This initialization is recommended for apps with existing
        /// design interfaces or high demand over the UI layer.
        public init(
            alignment: TextAlignment,
            colorStyle: PixelColorStyle<Theme>,
            fontStyle: PixelFontStyle<Theme>,
            lineLimit: Int?,
            text: String
        ) {
            self.alignment = alignment
            self.colorStyle = colorStyle
            self.fontStyle = fontStyle
            self.lineLimit = lineLimit
            self.text = text
        }

        /// Initialize the type implicitly.
        ///
        /// Implicit initializations only enforce required properties to be passed. Other properties are optional and
        /// default to `nil` as parameters. This initialization is recommended for apps with little to no design
        /// interfaces or low demand over the UI layer.
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
    }
}
