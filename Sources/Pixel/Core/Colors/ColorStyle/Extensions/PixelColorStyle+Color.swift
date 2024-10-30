//
//  PixelColorStyle+Color.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelColorStyle {

    func callAsFunction() -> Color {
        switch self {
        case let .solid(pixelColor): pixelColor.color
        default: .clear
        }
    }

    func callAsFunction(theme: PixelTheme) -> Color {
        switch self {
        case let .solid(pixelColor): pixelColor.color
        case let .themed(pixelColors): pixelColors[theme]?.color ?? .clear
        default: .clear
        }
    }

    func callAsFunction(isFocused: Bool, theme: PixelTheme) -> Color {
        switch self {
        case let .solid(pixelColor): return pixelColor.color
        case let .themed(pixelColors): return pixelColors[theme]?.color ?? .clear
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
