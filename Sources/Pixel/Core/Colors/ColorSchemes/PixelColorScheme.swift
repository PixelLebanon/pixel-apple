//
//  PixelColorScheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public struct PixelColorScheme: Codable {

    public let primary: PixelColor
    public let onPrimary: PixelColor

    public let secondary: PixelColor
    public let onSecondary: PixelColor

    public let accent: PixelColor
    public let onAccent: PixelColor

    public let neutral: PixelColor
    public let onNeutral: PixelColor

    public let background100: PixelColor
    public let background200: PixelColor
    public let background300: PixelColor
    public let onBackground: PixelColor

    public let info: PixelColor
    public let onInfo: PixelColor
    public let error: PixelColor
    public let onError: PixelColor
    public let warning: PixelColor
    public let onWarning: PixelColor
    public let success: PixelColor
    public let onSuccess: PixelColor

    public init(
        primary: PixelColor,
        onPrimary: PixelColor,
        secondary: PixelColor,
        onSecondary: PixelColor,
        accent: PixelColor,
        onAccent: PixelColor,
        neutral: PixelColor,
        onNeutral: PixelColor,
        background100: PixelColor,
        background200: PixelColor,
        background300: PixelColor,
        onBackground: PixelColor,
        info: PixelColor,
        onInfo: PixelColor,
        error: PixelColor,
        onError: PixelColor,
        warning: PixelColor,
        onWarning: PixelColor,
        success: PixelColor,
        onSuccess: PixelColor
    ) {
        self.primary = primary
        self.onPrimary = onPrimary
        self.secondary = secondary
        self.onSecondary = onSecondary
        self.accent = accent
        self.onAccent = onAccent
        self.neutral = neutral
        self.onNeutral = onNeutral
        self.background100 = background100
        self.background200 = background200
        self.background300 = background300
        self.onBackground = onBackground
        self.info = info
        self.onInfo = onInfo
        self.error = error
        self.onError = onError
        self.warning = warning
        self.onWarning = onWarning
        self.success = success
        self.onSuccess = onSuccess
    }
}
