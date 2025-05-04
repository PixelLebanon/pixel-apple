//
//  PixelColorStyle+Color.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelColorStyle {

    func callAsFunction() -> Color? {
        switch self {
        case let .solid(color): color
        default: nil
        }
    }

    func callAsFunction(theme: AnyPixelTheme) -> Color? {
        switch self {
        case let .solid(color): color
        case let .themed(colors): colors[theme]
        default: nil
        }
    }

    func callAsFunction(isFocused: Bool, theme: AnyPixelTheme) -> Color? {
        switch self {
        case let .solid(color): return color
        case let .themed(colors): return colors[theme]
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
