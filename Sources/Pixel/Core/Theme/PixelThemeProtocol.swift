//
//  PixelThemeProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type to define the requirements of a theme in the Pixel design system.
///
/// `PixelThemeProtocol` is designed to help provide a standardized way to represent different themes in pixel
/// components and apps. A theme includes a set of color roles from `PixelColorScheme` and font roles from
/// `PixelTypography`.
///
/// Although not enforced, it is recommended to define custom theme implementations as enums as demonstrated:
///
/// ```swift
/// enum MyTheme: PixelThemeProtocol {
///
///     case light, dark
///
///     static let defaultValue: Self = .light
///
///     var colorScheme: any MyColorScheme.Type {
///         switch self {
///         case .light: MyLightColorScheme.self
///         case .dark: MyDarkColorScheme.self
///         }
///     }
///
///     var typography: any MyTypography.Type {
///         switch self {
///         case .light: MyFontTypography.self
///         case .dark: MyFontTypography.self
///         }
///     }
/// }
/// ```
public protocol PixelThemeProtocol: CaseIterable, Hashable {

    /// Default theme value.
    static var defaultValue: Self { get }

    /// Pixel color scheme matched to the theme.
    var colorScheme: any PixelColorScheme.Type { get }

    /// Pixel typography matched to the theme.
    var typography: any PixelTypography.Type { get }
}
