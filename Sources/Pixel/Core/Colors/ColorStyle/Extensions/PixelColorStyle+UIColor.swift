//
//  PixelColorStyle+UIColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension PixelColorStyle {

    func callAsFunction() -> UIColor {
        switch self {
        case let .solid(pixelColor): pixelColor.uiColor
        default: .clear
        }
    }

    func callAsFunction(theme: PixelTheme) -> UIColor {
        switch self {
        case let .solid(pixelColor): pixelColor.uiColor
        case let .themed(pixelColors): pixelColors[theme]?.uiColor ?? .clear
        default: .clear
        }
    }

    func callAsFunction(isFocused: Bool, theme: PixelTheme) -> UIColor {
        switch self {
        case let .solid(pixelColor): return pixelColor.uiColor
        case let .themed(pixelColors): return pixelColors[theme]?.uiColor ?? .clear
        case let .conditional(activeColorStyle, inactiveColorStyle, condition):
            let isActive: Bool = switch condition {
            case .focus: isFocused
            case let .custom(isActive): isActive
            }
            return isActive
            ? activeColorStyle(isFocused: isFocused, theme: theme)
            : inactiveColorStyle(isFocused: isFocused, theme: theme)
        }
    }
}
