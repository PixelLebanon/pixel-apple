//
//  AnyPixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 31/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public struct AnyPixelTheme: PixelThemeProtocol {

    private let _colorScheme: PixelColorScheme
    private let _typography: PixelTypography

    public init<T: PixelThemeProtocol>(_ theme: T) {
        self._colorScheme = theme.colorScheme
        self._typography = theme.typography
    }

    public var colorScheme: PixelColorScheme {
        _colorScheme
    }

    public var typography: PixelTypography {
        _typography
    }
}
