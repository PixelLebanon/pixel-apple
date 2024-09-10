//
//  PixelFontProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A type defining a custom font used in the Pixel design system that adapts to a SwiftUI and UIKit context.
///
/// It provides accessibility; by enforcing a `Font.TextStyle` to provide dynamic font sizing and describes common
/// characteristics of custom fonts like name, size, letterSpacing and whether its should be displayed in uppercase.
///
/// The Pixel design system depends on `PixelFontProtocol` to enable UI framework environment usecases when resolving a
/// font to a concrete value.
public protocol PixelFontProtocol: Equatable {

    /// The definition of an empty font instance for the type.
    static var empty: Self { get }

    /// A float defining how much spacing between characters should be applied to the font.
    var kerning: CGFloat { get }
    /// A string defining the font name to be used.
    var name: String { get }
    /// A float defining the size to be applied to the font.
    var size: CGFloat { get }
    /// A type defining what font style should be applied to the font, allowing it to better adapt to dynamic type
    /// settings set in the settings app.
    var style: Font.TextStyle { get }
    /// An optional type defining what case style should be applied to the font.
    var textCase: Text.Case? { get }

    /// A SwiftUI font concrete value.
    var font: Font { get }
    /// /// A UIKit font concrete value.
    var uiFont: UIFont { get }
}
