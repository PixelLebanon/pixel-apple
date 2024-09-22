//
//  PixelColorScheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type that defines a color scheme used in the Pixel design system.
///
/// `PixelColorScheme` standardizes the roles of colors, allowing Pixel to easily adapt to custom themes defined by
/// clients when dealing with contrast-sensitive content.
///
/// Conforming to this protocol would help improve color accessibility and consistency throughout your app.
public protocol PixelColorScheme {

    /// The primary color used for prominent UI elements like buttons, links, or selected states.
    static var primary: PixelColor { get }
    /// The color used for text or icons displayed on top of the `primary` color.
    static var onPrimary: PixelColor { get }

    /// The secondary color used for less prominent UI elements that complement the primary color.
    static var secondary: PixelColor { get }
    /// The color used for text or icons displayed on top of the `secondary` color.
    static var onSecondary: PixelColor { get }

    /// The accent color used for highlighting important UI elements.
    static var accent: PixelColor { get }
    /// The color used for text or icons displayed on top of the `accent` color.
    static var onAccent: PixelColor { get }

    /// The neutral color used for minimal visual impact UI elements.
    static var neutral: PixelColor { get }
    /// The color used for text or icons displayed on top of the `neutral` color.
    static var onNeutral: PixelColor { get }

    /// The lightest background color for backgrounds.
    static var background100: PixelColor { get }
    /// The medium-light background color for surfaces like cards or sheets.
    static var background200: PixelColor { get }
    /// The medium background color for more contrast surfaces that need more emphasis.
    static var background300: PixelColor { get }
    /// The color used for text or icons displayed on top of the background colors.
    static var onBackground: PixelColor { get }

    /// The color used to indicate informational messages or states.
    static var info: PixelColor { get }
    /// The color used for text or icons displayed on top of the `info` color.
    static var onInfo: PixelColor { get }
    /// The color used to indicate critical or error messages or states.
    static var error: PixelColor { get }
    /// The color used for text or icons displayed on top of the `error` color.
    static var onError: PixelColor { get }
    /// The color used to indicate cautionary or warning  messages or states.
    static var warning: PixelColor { get }
    /// The color used for text or icons displayed on top of the `warning` color.
    static var onWarning: PixelColor { get }
    /// The color used to indicate successful messages or states.
    static var success: PixelColor { get }
    /// The color used for text or icons displayed on top of the `success` color.
    static var onSuccess: PixelColor { get }
}
