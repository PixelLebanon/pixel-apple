//
//  PixelThemeManager+PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 02/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelThemeManager where Theme == PixelTheme {

    /// A method unique to the `PixelTheme` implementation to update the current active theme value and save the new
    /// value in `UserDefaults`.
    ///
    /// - Parameter theme: The new `PixelTheme` value to be set and persisted.
    func update(theme: Theme) {
        self.theme = theme

        Task { @PixelUserDefaultsActor in
            UserDefaults.standard.pixelTheme = theme
        }
    }
}
