//
//  PixelTheme.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelTheme: PixelThemeProtocol {

    case light, dark

    public static let defaultValue: Self = .init(UITraitCollection.current.userInterfaceStyle)

    public var colorScheme: any PixelColorScheme.Type {
        switch self {
        case .light: Color.Pixel.Light.self
        case .dark: Color.Pixel.Dark.self
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
