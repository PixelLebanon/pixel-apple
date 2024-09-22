//
//  PixelColorStyle+ImplicitStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension PixelColorStyle {

    /// Returns a themed `PixelColorStyle` to replace all `nil` values of each `Theme` case in `pixelColors` with the
    /// component's default `PixelColor`.
    private static func implicitThemed(component: Pixel.Component, pixelColors: [Theme: PixelColor] = [:]) -> Self {
        .themed(
            pixelColors: Theme.allCases.reduce(into: [:]) { partialResult, theme in
                partialResult[theme] = pixelColors[theme] ?? component.defaultPixelColor(theme: theme)
            }
        )
    }

    /// Returns a themed `PixelColorStyle` with each `Theme` case containing the component's default `PixelColor`.
    static func defaultImplicitStyle(of component: Pixel.Component) -> Self {
        implicitThemed(component: component)
    }

    /// Returns a `PixelColorStyle` that replaces all empty values with component's default theme `PixelColor` value.
    func implicitStyle(of component: Pixel.Component) -> Self {
        switch self {
        case .solid: self
        case let .themed(pixelColors): .implicitThemed(component: component, pixelColors: pixelColors)
        case let .conditional(activeColorStyle, inactiveColorStyle, condition):
            .conditional(
                activeColorStyle: activeColorStyle.implicitStyle(of: component),
                inactiveColorStyle: inactiveColorStyle.implicitStyle(of: component),
                condition: condition
            )
        }
    }
}
