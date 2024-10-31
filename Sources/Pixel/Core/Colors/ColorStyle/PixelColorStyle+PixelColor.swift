//
//  PixelColorStyle+PixelColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelColorStyle {

    func callAsFunction() -> PixelColor {
        switch self {
        case let .solid(pixelColor): pixelColor
        default: .empty
        }
    }

    func callAsFunction(theme: AnyPixelTheme) -> PixelColor {
        switch self {
        case let .solid(pixelColor): pixelColor
        case let .themed(pixelColors): pixelColors[theme] ?? .empty
        default: .empty
        }
    }

    func callAsFunction(isFocused: Bool, theme: AnyPixelTheme) -> PixelColor {
        switch self {
        case let .solid(pixelColor): return pixelColor
        case let .themed(pixelColors): return pixelColors[theme] ?? .empty
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
