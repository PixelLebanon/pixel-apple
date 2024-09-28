//
//  PixelColorStyle+UIColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension PixelColorStyle {

    /// A computed property to retrieve the UIKit color concrete value of a `solid` color style. Any other color style
    /// will default to `UIColor.clear`.
    var uiColor: UIColor {
        switch self {
        case let .solid(pixelColor): pixelColor.uiColor
        default: .clear
        }
    }

    /// A method to retrieve the UIKit color concrete value of a `solid` or `themed` color style. Any other color style
    /// will default to `UIColor.clear`.
    func uiColor(theme: Theme) -> UIColor {
        switch self {
        case let .solid(pixelColor): pixelColor.uiColor
        case let .themed(pixelColors): pixelColors[theme]?.uiColor ?? .clear
        default: .clear
        }
    }

    /// A method to retrieve the UIKit color concrete value of any color style.
    func uiColor(isFocused: Bool, theme: Theme) -> UIColor {
        switch self {
        case let .solid(pixelColor):
            return pixelColor.uiColor
        case let .themed(pixelColors):
            return pixelColors[theme]?.uiColor ?? .clear
        case let .conditional(activeColorStyle, inactiveColorStyle, condition):
            let isActive: Bool = switch condition {
            case .focus: isFocused
            case .custom(let isActive): isActive
            }
            return isActive
            ? activeColorStyle.uiColor(isFocused: isFocused, theme: theme)
            : inactiveColorStyle.uiColor(isFocused: isFocused, theme: theme)
        }
    }
}
