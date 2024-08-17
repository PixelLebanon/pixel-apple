//
//  PixelColorStyle.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelColorStyle<Theme: PixelThemeProtocol> {

    public enum ConditionState {

        case focus, custom(Bool)
    }

    case solid(Color)
    case themed(colors: [Theme: Color])
    indirect case conditional(activeColorStyle: Self, inactiveColorStyle: Self, condition: ConditionState)

    public var color: Color {
        switch self {
        case .solid(let color): color
        default: .clear
        }
    }

    public func color(theme: Theme) -> Color {
        switch self {
        case .solid(let color): color
        case .themed(let colors): colors[theme] ?? .clear
        default: .clear
        }
    }

    public func color(isFocused: Bool, theme: Theme) -> Color {
        switch self {
        case .solid(let color):
            return color
        case .themed(let colors):
            return colors[theme] ?? .clear
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
