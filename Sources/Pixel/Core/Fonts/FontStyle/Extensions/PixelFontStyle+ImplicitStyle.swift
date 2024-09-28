//
//  PixelFontStyle+ImplicitStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension PixelFontStyle {

    /// Returns a themed `PixelFontStyle` to replace all `nil` values of each `Theme` case in `pixelFonts` with the
    /// component's default `PixelFont`.
    private static func implicitThemed(
        component: Pixel.Component,
        pixelFonts: [Theme: any PixelFontProtocol] = [:]
    ) -> Self {
        .themed(
            pixelFonts: Theme.allCases.reduce(into: [:]) { partialResult, theme in
                partialResult[theme] = pixelFonts[theme] ?? component.defaultPixelFont(theme: theme)
            }
        )
    }

    /// Returns a themed `PixelFontStyle` with each `Theme` case containing the component's default `PixelFont`.
    static func defaultImplicitStyle(of component: Pixel.Component) -> Self {
        implicitThemed(component: component)
    }

    /// Returns a `PixelFontStyle` that replaces all empty values with component's default theme `PixelFont` value.
    func implicitStyle(of component: Pixel.Component) -> Self {
        switch self {
        case .solid: self
        case let .themed(pixelFonts): .implicitThemed(component: component, pixelFonts: pixelFonts)
        case let .conditional(activeFontStyle, inactiveFontStyle, condition):
            .conditional(
                activeFontStyle: activeFontStyle.implicitStyle(of: component),
                inactiveFontStyle: inactiveFontStyle.implicitStyle(of: component),
                condition: condition
            )
        }
    }
}
