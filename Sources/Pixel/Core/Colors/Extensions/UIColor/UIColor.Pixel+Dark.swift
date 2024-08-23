//
//  UIColor.Pixel+Dark.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension UIColor.Pixel {

    /// A shortcut to the `Pixel.Dark` color scheme implementation to access the set of colors  in a UIKit context.
    ///
    /// Each color is of type `UIColor` to allow instant resolution to a UIKit color concrete value.
    enum Dark {

        /// The shortcut to the primary color of the `Pixel.Dark` color scheme.
        public static let primary: UIColor = Pixel.Dark.primary.uiColor
        /// The shortcut to the onPrimary color of the `Pixel.Dark` color scheme.
        public static let onPrimary: UIColor = Pixel.Dark.onPrimary.uiColor

        /// The shortcut to the secondary color of the `Pixel.Dark` color scheme.
        public static let secondary: UIColor = Pixel.Dark.secondary.uiColor
        /// The shortcut to the onSecondary color of the `Pixel.Dark` color scheme.
        public static let onSecondary: UIColor = Pixel.Dark.onSecondary.uiColor

        /// The shortcut to the accent color of the `Pixel.Dark` color scheme.
        public static let accent: UIColor = Pixel.Dark.accent.uiColor
        /// The shortcut to the onAccent color of the `Pixel.Dark` color scheme.
        public static let onAccent: UIColor = Pixel.Dark.onAccent.uiColor

        /// The shortcut to the neutral color of the `Pixel.Dark` color scheme.
        public static let neutral: UIColor = Pixel.Dark.neutral.uiColor
        /// The shortcut to the onNeutral color of the `Pixel.Dark` color scheme.
        public static let onNeutral: UIColor = Pixel.Dark.onNeutral.uiColor

        /// The shortcut to the background100 color of the `Pixel.Dark` color scheme.
        public static let background100: UIColor = Pixel.Dark.background100.uiColor
        /// The shortcut to the background200 color of the `Pixel.Dark` color scheme.
        public static let background200: UIColor = Pixel.Dark.background200.uiColor
        /// The shortcut to the background300 color of the `Pixel.Dark` color scheme.
        public static let background300: UIColor = Pixel.Dark.background300.uiColor
        /// The shortcut to the onBackground color of the `Pixel.Dark` color scheme.
        public static let onBackground: UIColor = Pixel.Dark.onBackground.uiColor

        /// The shortcut to the info color of the `Pixel.Dark` color scheme.
        public static let info: UIColor = Pixel.Dark.info.uiColor
        /// The shortcut to the onInfo color of the `Pixel.Dark` color scheme.
        public static let onInfo: UIColor = Pixel.Dark.onInfo.uiColor
        /// The shortcut to the error color of the `Pixel.Dark` color scheme.
        public static let error: UIColor = Pixel.Dark.error.uiColor
        /// The shortcut to the onError color of the `Pixel.Dark` color scheme.
        public static let onError: UIColor = Pixel.Dark.onError.uiColor
        /// The shortcut to the warning color of the `Pixel.Dark` color scheme.
        public static let warning: UIColor = Pixel.Dark.warning.uiColor
        /// The shortcut to the onWarning color of the `Pixel.Dark` color scheme.
        public static let onWarning: UIColor = Pixel.Dark.onWarning.uiColor
        /// The shortcut to the success color of the `Pixel.Dark` color scheme.
        public static let success: UIColor = Pixel.Dark.success.uiColor
        /// The shortcut to the onSuccess color of the `Pixel.Dark` color scheme.
        public static let onSuccess: UIColor = Pixel.Dark.onSuccess.uiColor
    }
}
