//
//  PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelTheme: PixelThemeProtocol {

    case light, dark

    public static var defaultValue: Self {
        UserDefaults.standard.pixelTheme ?? .init(UITraitCollection.current.userInterfaceStyle)
    }

    public var colorScheme: any PixelColorScheme.Type {
        switch self {
        case .light: Pixel.Light.self
        case .dark: Pixel.Dark.self
        }
    }

    public var typography: any PixelTypography.Type {
        switch self {
        case .light: PixelFont.self
        case .dark: PixelFont.self
        }
    }
}

private extension PixelTheme {

    init(_ userInterfaceStyle: UIUserInterfaceStyle) {
        switch userInterfaceStyle {
        case .light: self = .light
        case .dark: self = .dark
        default: self = .light
        }
    }
}
