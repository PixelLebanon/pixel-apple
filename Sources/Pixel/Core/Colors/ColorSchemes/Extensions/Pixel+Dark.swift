//
//  Pixel+Dark.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension Pixel {

    /// A `PixelColorScheme` implementation defining the set of color optimized for dark-themed user interfaces.
    ///
    /// Each color is represented as a `PixelColor` to allow the implementation to be used across multiple UI framework
    /// environments.
    enum Dark: PixelColorScheme {

        /// The dark-themed primary color used for prominent UI elements like buttons, links, or selected states.
        public static let primary: PixelColor = .init(.Dark.primary)
        /// The dark-themed color used for text or icons displayed on top of the primary color.
        public static let onPrimary: PixelColor = .init(.Dark.onPrimary)

        /// The dark-themed secondary color used for less prominent UI elements that complement the primary color.
        public static let secondary: PixelColor = .init(.Dark.secondary)
        /// The dark-themed color used for text or icons displayed on top of the secondary color.
        public static let onSecondary: PixelColor = .init(.Dark.onSecondary)

        /// The dark-themed accent color used for highlighting important UI elements.
        public static let accent: PixelColor = .init(.Dark.accent)
        /// The dark-themed color used for text or icons displayed on top of the accent color.
        public static let onAccent: PixelColor = .init(.Dark.onAccent)

        /// The dark-themed neutral color used for minimal visual impact UI elements.
        public static let neutral: PixelColor = .init(.Dark.neutral)
        /// The dark-themed color used for text or icons displayed on top of the neutral color.
        public static let onNeutral: PixelColor = .init(.Dark.onNeutral)

        /// The dark-themed lightest background color for backgrounds.
        public static let background100: PixelColor = .init(.Dark.background100)
        /// The dark-themed medium-light background color for surfaces like cards or sheets.
        public static let background200: PixelColor = .init(.Dark.background200)
        /// The dark-themed medium background color for more contrast surfaces that need more emphasis.
        public static let background300: PixelColor = .init(.Dark.background300)
        /// The dark-themed  color used for text or icons displayed on top of the background colors.
        public static let onBackground: PixelColor = .init(.Dark.onBackground)

        /// The dark-themed color used to indicate informational messages or states.
        public static let info: PixelColor = .init(.Dark.info)
        /// The dark-themed color used for text or icons displayed on top of the info color.
        public static let onInfo: PixelColor = .init(.Dark.onInfo)
        /// The dark-themed color used to indicate critical or error messages or states.
        public static let error: PixelColor = .init(.Dark.error)
        /// The dark-themed color used for text or icons displayed on top of the error color.
        public static let onError: PixelColor = .init(.Dark.onError)
        /// The dark-themed color used to indicate cautionary or warning messages or states.
        public static let warning: PixelColor = .init(.Dark.warning)
        /// The dark-themed color used for text or icons displayed on top of the warning color.
        public static let onWarning: PixelColor = .init(.Dark.onWarning)
        /// The dark-themed color used to indicate successful messages or states.
        public static let success: PixelColor = .init(.Dark.success)
        /// The dark-themed color used for text or icons displayed on top of the success color.
        public static let onSuccess: PixelColor = .init(.Dark.onSuccess)
    }
}
