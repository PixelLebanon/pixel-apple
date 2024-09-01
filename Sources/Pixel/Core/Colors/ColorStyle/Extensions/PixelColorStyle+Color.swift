//
//  PixelColorStyle+Color.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelColorStyle {

    var color: Color {
        switch self {
        case .solid(let pixelColor): pixelColor.color
        default: .clear
        }
    }

    func color(theme: Theme) -> Color {
        switch self {
        case .solid(let pixelColor): pixelColor.color
        case .themed(let pixelColors): pixelColors[theme]?.color ?? .clear
        default: .clear
        }
    }

    func color(isFocused: Bool, theme: Theme) -> Color {
        switch self {
        case .solid(let pixelColor):
            return pixelColor.color
        case .themed(let pixelColors):
            return pixelColors[theme]?.color ?? .clear
        case .conditional(let activeColorStyle, let inactiveColorStyle, let condition):
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
