//
//  Color+Pixel.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Color.Pixel {

    /// A shortcut to the `Pixel.Dark` color scheme implementation to access the set of colors in a SwiftUI context.
    ///
    /// Each color is of type `Color` to allow instant resolution to a SwiftUI color concrete value.
    enum Dark {

        /// The shortcut to the primary color of the `Pixel.Dark` color scheme.
        public static let primary: Color = Pixel.Dark.primary.color
        /// The shortcut to the onPrimary color of the `Pixel.Dark`  color scheme.
        public static let onPrimary: Color = Pixel.Dark.onPrimary.color

        /// The shortcut to the secondary color of the `Pixel.Dark`  color scheme.
        public static let secondary: Color = Pixel.Dark.secondary.color
        /// The shortcut to the onSecondary color of the `Pixel.Dark`  color scheme.
        public static let onSecondary: Color = Pixel.Dark.onSecondary.color

        /// The shortcut to the accent color of the `Pixel.Dark`  color scheme.
        public static let accent: Color = Pixel.Dark.accent.color
        /// The shortcut to the onAccent color of the `Pixel.Dark`  color scheme.
        public static let onAccent: Color = Pixel.Dark.onAccent.color

        /// The shortcut to the neutral color of the `Pixel.Dark`  color scheme.
        public static let neutral: Color = Pixel.Dark.neutral.color
        /// The shortcut to the onNeutral color of the `Pixel.Dark`  color scheme.
        public static let onNeutral: Color = Pixel.Dark.onNeutral.color

        /// The shortcut to the background100 color of the `Pixel.Dark`  color scheme.
        public static let background100: Color = Pixel.Dark.background100.color
        /// The shortcut to the background200 color of the `Pixel.Dark`  color scheme.
        public static let background200: Color = Pixel.Dark.background200.color
        /// The shortcut to the background300 color of the `Pixel.Dark`  color scheme.
        public static let background300: Color = Pixel.Dark.background300.color
        /// The shortcut to the onBackground color of the `Pixel.Dark`  color scheme.
        public static let onBackground: Color = Pixel.Dark.onBackground.color

        /// The shortcut to the info color of the `Pixel.Dark`  color scheme.
        public static let info: Color = Pixel.Dark.info.color
        /// The shortcut to the onInfo color of the `Pixel.Dark`  color scheme.
        public static let onInfo: Color = Pixel.Dark.onInfo.color
        /// The shortcut to the error color of the `Pixel.Dark`  color scheme.
        public static let error: Color = Pixel.Dark.error.color
        /// The shortcut to the onError color of the `Pixel.Dark`  color scheme.
        public static let onError: Color = Pixel.Dark.onError.color
        /// The shortcut to the warning color of the `Pixel.Dark`  color scheme.
        public static let warning: Color = Pixel.Dark.warning.color
        /// The shortcut to the onWarning color of the `Pixel.Dark`  color scheme.
        public static let onWarning: Color = Pixel.Dark.onWarning.color
        /// The shortcut to the success color of the `Pixel.Dark`  color scheme.
        public static let success: Color = Pixel.Dark.success.color
        /// The shortcut to the onSuccess color of the `Pixel.Dark`  color scheme.
        public static let onSuccess: Color = Pixel.Dark.onSuccess.color
    }
}
