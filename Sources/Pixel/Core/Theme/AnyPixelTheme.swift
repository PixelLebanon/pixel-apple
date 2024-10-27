//
//  AnyPixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public struct AnyPixelTheme: PixelThemeProtocol {

    public static var allCases: [AnyPixelTheme] = []

    private let _colorScheme: PixelColorScheme
    private let _typography: PixelTypography

    init<T: PixelThemeProtocol>(_ theme: T) {
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
