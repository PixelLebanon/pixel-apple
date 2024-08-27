//
//  PixelKeys.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension Pixel {
    
    /// A local enum namespace to prevent name conflicts with native or third party frameworks and encapsulate Pixel key
    /// definitions in `UserDefaults`.
    enum Key {

        /// The key used to store and retrieve the user's selected theme of type `PixelTheme` from `UserDefaults`.
        static let theme: String = "PixelTheme"
    }
}
