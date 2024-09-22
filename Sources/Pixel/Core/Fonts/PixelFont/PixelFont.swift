//
//  PixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A `PixelFontProtocol` implementation defining the standard font used across the Pixel design system.
public struct PixelFont: PixelFontProtocol {

    /// The definition of an empty `PixelFont` instance.
    public static let empty: Self = .init(name: "", size: 0, style: .body, textCase: nil)

    /// A float defining the spacing between characters in `PixelFont` and is always 0.
    public let kerning: CGFloat = 0
    /// A string defining the `PixelFont` name to be used.
    public let name: String
    /// A float defining the `PixelFont` size.
    public let size: CGFloat
    /// A type defining the `PixelFont` font style to adapt to dynamic type settings set in the settings app.
    public let style: Font.TextStyle
    /// An optional type defining the `PixelFont` text case style.
    public let textCase: Text.Case?

    /// A SwiftUI `PixelFont` font concrete value.
    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    /// A UIKit `PixelFont` font concrete value.
    public var uiFont: UIFont {
        // swiftlint:disable:next force_unwrapping
        .init(name: name, size: size)!
    }
}
