//
//  PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type to dynamically resolve pixel colors and update on contexts like themes or conditions to provide fleixbility
/// with styling colors in Pixel or custom views throughout the app.
public enum PixelColorStyle<Theme: PixelThemeProtocol> {

    /// The conditional crtieria to determine what color style to use in the `conditional` color style.
    public enum Condition {

        /// The conditional criteria based on the view's focused state.
        case focus
        /// The conditional criteria based on the custom boolean value.
        case custom(Bool)
    }

    /// A static color style that does not change with theme or condition.
    case solid(PixelColor)
    /// A dynamic color style that varies depending on the current theme only.
    ///
    /// If no `PixelColor` was mapped to a `Theme` value, returns `Color.clear`.
    case themed(colors: [Theme: PixelColor])
    /// A dynamic color style that varies depending on the current theme and condition.
    indirect case conditional(activeColorStyle: Self, inactiveColorStyle: Self, condition: Condition)
}
