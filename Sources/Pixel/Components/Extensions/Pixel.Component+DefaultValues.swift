//
//  Pixel.Component+DefaultValues.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension Pixel.Component {

    func defaultPixelColor<T: PixelThemeProtocol>(theme: T) -> PixelColor {
        switch self {
        case .text: theme.colorScheme.onBackground
        }
    }

    func defaultPixelFont<T: PixelThemeProtocol>(theme: T) -> any PixelFontProtocol {
        switch self {
        case .text: theme.typography.big3
        }
    }
}
