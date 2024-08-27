//
//  PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

/// An enum defining the themes currently supported in the Pixel design system by default.
///
/// The enum conforms to `PixelThemeProtocol` to instantly provide Pixel components with default color and font values,
/// and `Codable` to cache the latest theme change in `UserDefaults` and persist past the app instance's lifecycle.
public enum PixelTheme: PixelThemeProtocol, Codable {

    /// The light theme value.
    case light
    /// The dark theme value.
    case dark

    /// The default theme value, determined by the user's pereferences. If not previously set, defaults to the system's
    /// current interface style.
    public static var defaultValue: Self {
        UserDefaults.standard.pixelTheme ?? .init(UITraitCollection.current.userInterfaceStyle)
    }

    /// The color scheme associated with the theme.
    ///
    /// Currently mapped as follows:
    /// - `light`: Returns the color scheme `Pixel.Light`.
    /// - `dark`: Returns the color scheme `Pixel.Dark`.
    public var colorScheme: any PixelColorScheme.Type {
        switch self {
        case .light: Pixel.Light.self
        case .dark: Pixel.Dark.self
        }
    }

    /// The typography associated with the theme.
    ///
    /// Currently mapped as follows:
    /// - `light`: Returns the Pixel font typography `PixelFont`.
    /// - `dark`: Returns the Pixel font typography `PixelFont`.
    public var typography: any PixelTypography.Type {
        switch self {
        case .light: PixelFont.self
        case .dark: PixelFont.self
        }
    }
}

private extension PixelTheme {

    /// Initialize a `PixelTheme` based on the current `UIUserInterfaceStyle` value.
    init(_ userInterfaceStyle: UIUserInterfaceStyle) {
        switch userInterfaceStyle {
        case .light: self = .light
        case .dark: self = .dark
        default: self = .light
        }
    }
}
