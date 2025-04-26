//
//  PixelColorScheme+Empty.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 31/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelColorScheme {

    static let empty: Self = .init(
        primary: .clear,
        onPrimary: .clear,
        secondary: .clear,
        onSecondary: .clear,
        accent: .clear,
        onAccent: .clear,
        neutral: .clear,
        onNeutral: .clear,
        background100: .clear,
        background200: .clear,
        background300: .clear,
        onBackground: .clear,
        info: .clear,
        onInfo: .clear,
        error: .clear,
        onError: .clear,
        warning: .clear,
        onWarning: .clear,
        success: .clear,
        onSuccess: .clear
    )
}
