//
//  PixelFontStyle+ImplicitStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension PixelFontStyle {

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

    static func defaultImplicitStyle(of component: Pixel.Component) -> Self {
        implicitThemed(component: component)
    }

    func implicitStyle(of component: Pixel.Component) -> Self {
        switch self {
        case .solid: self
        case .themed(let pixelFonts): .implicitThemed(component: component, pixelFonts: pixelFonts)
        case .conditional(let activeFontStyle, let inactiveFontStyle, let condition):
            .conditional(
                activeFontStyle: activeFontStyle.implicitStyle(of: component),
                inactiveFontStyle: inactiveFontStyle.implicitStyle(of: component),
                condition: condition
            )
        }
    }
}
