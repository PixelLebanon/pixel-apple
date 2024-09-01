//
//  PixelColorStyle+UIColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension PixelColorStyle {

    var uiColor: UIColor {
        switch self {
        case .solid(let pixelColor): pixelColor.uiColor
        default: .clear
        }
    }

    func uiColor(theme: Theme) -> UIColor {
        switch self {
        case .solid(let pixelColor): pixelColor.uiColor
        case .themed(let pixelColors): pixelColors[theme]?.uiColor ?? .clear
        default: .clear
        }
    }

    func uiColor(isFocused: Bool, theme: Theme) -> UIColor {
        switch self {
        case .solid(let pixelColor):
            return pixelColor.uiColor
        case .themed(let pixelColors):
            return pixelColors[theme]?.uiColor ?? .clear
        case .conditional(let activeColorStyle, let inactiveColorStyle, let condition):
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

