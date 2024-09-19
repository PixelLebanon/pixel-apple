//
//  PixelFontStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type to dynamically resolve pixel fonts and update on contexts like themes or conditions to provide flexibility
/// with styling fonts in Pixel or custom views throughout the app.
public enum PixelFontStyle<Theme: PixelThemeProtocol> {

    /// The conditional crtieria to determine what font style to use in the `conditional` font style.
    public enum Condition {

        /// The conditional criteria based on the view's focused state.
        case focus
        /// The conditional criteria based on the custom boolean value.
        case custom(Bool)
    }

    /// A static font style that does not change with theme or condition.
    case solid(any PixelFontProtocol)
    /// A dynamic font style that varies depending on the current theme only.
    ///
    /// If no `FontProtocol` was mapped to a `Theme` value, returns `FontProtocol.empty`.
    case themed(pixelFonts: [Theme: any PixelFontProtocol])
    /// A dynamic font style that varies depending on the current theme and condition.
    indirect case conditional(activeFontStyle: Self, inactiveFontStyle: Self, condition: Condition)
}
