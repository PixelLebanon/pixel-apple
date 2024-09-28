//
//  PixelColorStyle+Color.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelColorStyle {

    /// A computed property to retrieve the SwiftUI color concrete value of a `solid` color style. Any other color
    /// style will default to `Color.clear`.
    var color: Color {
        switch self {
        case let .solid(pixelColor): pixelColor.color
        default: .clear
        }
    }

    /// A method to retrieve the SwiftUI color concrete value of a `solid` or `themed` color style. Any other color
    /// style will default to `Color.clear`.
    func color(theme: Theme) -> Color {
        switch self {
        case let .solid(pixelColor): pixelColor.color
        case let .themed(pixelColors): pixelColors[theme]?.color ?? .clear
        default: .clear
        }
    }

    /// A method to retrieve the SwiftUI color concrete value of any color style.
    func color(isFocused: Bool, theme: Theme) -> Color {
        switch self {
        case let .solid(pixelColor):
            return pixelColor.color
        case let .themed(pixelColors):
            return pixelColors[theme]?.color ?? .clear
        case let .conditional(activeColorStyle, inactiveColorStyle, condition):
            let isActive: Bool = switch condition {
            case .focus: isFocused
            case .custom(let isActive): isActive
            }
            return isActive
            ? activeColorStyle.color(isFocused: isFocused, theme: theme)
            : inactiveColorStyle.color(isFocused: isFocused, theme: theme)
        }
    }
}
