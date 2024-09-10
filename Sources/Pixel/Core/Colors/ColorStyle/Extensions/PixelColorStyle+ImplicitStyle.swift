//
//  PixelColorStyle+ImplicitStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension PixelColorStyle {

    private static func implicitThemed(component: Pixel.Component, pixelColors: [Theme: PixelColor] = [:]) -> Self {
        .themed(
            pixelColors: Theme.allCases.reduce(into: [:]) { partialResult, theme in
                partialResult[theme] = pixelColors[theme] ?? component.defaultPixelColor(theme: theme)
            }
        )
    }

    static func defaultImplicitStyle(of component: Pixel.Component) -> Self {
        implicitThemed(component: component)
    }

    func implicitStyle(of component: Pixel.Component) -> Self {
        switch self {
        case .solid: self
        case .themed(let pixelColors): .implicitThemed(component: component, pixelColors: pixelColors)
        case .conditional(let activeColorStyle, let inactiveColorStyle, let condition):
            .conditional(
                activeColorStyle: activeColorStyle.implicitStyle(of: component),
                inactiveColorStyle: inactiveColorStyle.implicitStyle(of: component),
                condition: condition
            )
        }
    }
}
