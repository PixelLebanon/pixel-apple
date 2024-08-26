//
//  Pixel+Light.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension Pixel {

    /// A `PixelColorScheme` implementation defining the set of color optimized for light-themed user interfaces.
    ///
    /// Each color is represented as a `PixelColor` to allow the implementation to be used across multiple UI framework
    /// environments.
    enum Light: PixelColorScheme {

        /// The light-themed primary color used for prominent UI elements like buttons, links, or selected states.
        public static let primary: PixelColor = .init(.Light.primary)
        /// The light-themed color used for text or icons displayed on top of the primary color.
        public static let onPrimary: PixelColor = .init(.Light.onPrimary)

        /// The light-themed secondary color used for less prominent UI elements that complement the primary color.
        public static let secondary: PixelColor = .init(.Light.secondary)
        /// The light-themed color used for text or icons displayed on top of the secondary color.
        public static let onSecondary: PixelColor = .init(.Light.onSecondary)

        /// The light-themed accent color used for highlighting important UI elements.
        public static let accent: PixelColor = .init(.Light.accent)
        /// The light-themed color used for text or icons displayed on top of the accent color.
        public static let onAccent: PixelColor = .init(.Light.onAccent)

        /// The light-themed neutral color used for minimal visual impact UI elements.
        public static let neutral: PixelColor = .init(.Light.neutral)
        /// The light-themed color used for text or icons displayed on top of the neutral color.
        public static let onNeutral: PixelColor = .init(.Light.onNeutral)

        /// The light-themed lightest background color for backgrounds.
        public static let background100: PixelColor = .init(.Light.background100)
        /// The light-themed medium-light background color for surfaces like cards or sheets.
        public static let background200: PixelColor = .init(.Light.background200)
        /// The light-themed medium background color for more contrast surfaces that need more emphasis.
        public static let background300: PixelColor = .init(.Light.background300)
        /// The light-themed  color used for text or icons displayed on top of the background colors.
        public static let onBackground: PixelColor = .init(.Light.onBackground)

        /// The light-themed color used to indicate informational messages or states.
        public static let info: PixelColor = .init(.Light.info)
        /// The light-themed color used for text or icons displayed on top of the info color.
        public static let onInfo: PixelColor = .init(.Light.onInfo)
        /// The light-themed color used to indicate critical or error messages or states.
        public static let error: PixelColor = .init(.Light.error)
        /// The light-themed color used for text or icons displayed on top of the error color.
        public static let onError: PixelColor = .init(.Light.onError)
        /// The light-themed color used to indicate cautionary or warning messages or states.
        public static let warning: PixelColor = .init(.Light.warning)
        /// The light-themed color used for text or icons displayed on top of the warning color.
        public static let onWarning: PixelColor = .init(.Light.onWarning)
        /// The light-themed color used to indicate successful messages or states.
        public static let success: PixelColor = .init(.Light.success)
        /// The light-themed color used for text or icons displayed on top of the success color.
        public static let onSuccess: PixelColor = .init(.Light.onSuccess)
    }
}
