//
//  PixelThemeManager+PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 02/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelThemeManager where Theme == PixelTheme {

    func update(theme: Theme) {
        self.theme = theme

        Task { @PixelUserDefaultsActor in
            UserDefaults.standard.pixelTheme = theme
        }
    }
}
