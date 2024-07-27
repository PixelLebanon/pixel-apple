//
//  PixelColorStyle.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelColorStyle<Theme: PixelThemeProtocol>: PixelColorStyleProtocol {

    case solid(Color)
    case themed(colors: [Theme: Color], theme: Theme)
    indirect case conditional(activeColorStyle: Self, inactiveColorStyle: Self, isActive: Bool)

    public var color: Color {
        switch self {
        case .solid(let color):
            return color
        case .themed(let colors, let theme):
            return colors[theme] ?? .clear
        case .conditional(let activeColorStyle, let inactiveColorStyle, let isActive):
            return isActive ? activeColorStyle.color : inactiveColorStyle.color
        }
    }
}
