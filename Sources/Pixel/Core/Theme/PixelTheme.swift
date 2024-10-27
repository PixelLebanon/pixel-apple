//
//  PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public enum PixelTheme: CaseIterable, Codable {

    case light
    case dark

    public var colorScheme: PixelColorScheme {
        switch self {
        case .light: .light
        case .dark: .dark
        }
    }

    public var typography: PixelTypography {
        .sfPro
    }
}
