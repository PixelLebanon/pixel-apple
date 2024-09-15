//
//  Pixel.Component+DefaultValues.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension Pixel.Component {

    /// A method to retrieve the default `PixelColor` associated with the component for the given theme.
    func defaultPixelColor<T: PixelThemeProtocol>(theme: T) -> PixelColor {
        switch self {
        case .text: theme.colorScheme.onBackground
        }
    }

    /// A method to retrieve the default `PixelFontProtocol` associated with the component for the given theme.
    func defaultPixelFont<T: PixelThemeProtocol>(theme: T) -> any PixelFontProtocol {
        switch self {
        case .text: theme.typography.big3
        }
    }
}
