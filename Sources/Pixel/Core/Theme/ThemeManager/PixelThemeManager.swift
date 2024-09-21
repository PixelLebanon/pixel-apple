//
//  PixelThemeManager.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 02/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation
import Observation

/// A generic type that manages the current theme of the app. It accepts any theme conforming to `PixelThemeProtocol`
/// to stay within the Pixel design system.
///
/// If you want to add additional behavior when updating the `theme` property value, it is recommended to extend the
/// class with the `PixelThemeProtocol` implementation relevant to your usage, as shown:
///
/// ```swift
/// extension PixelThemeManager where Theme == MyTheme {
///
///     func update(theme: Theme) {
///         self.theme = theme
///
///         // Handle additional behavior
///     }
/// }
/// ```
@Observable
public final class PixelThemeManager<Theme: PixelThemeProtocol> {

    /// The current active theme.
    public var theme: Theme

    /// Initializes the type with a `PixelThemeProtocol`, defaults to `PixelThemeProtocol.defaultValue`.
    public init(theme: Theme = .defaultValue) {
        self.theme = theme
    }
}
