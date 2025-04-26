//
//  PixelColorScheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelColorScheme: Hashable, Sendable {

    public let primary: Color
    public let onPrimary: Color

    public let secondary: Color
    public let onSecondary: Color

    public let accent: Color
    public let onAccent: Color

    public let neutral: Color
    public let onNeutral: Color

    public let background100: Color
    public let background200: Color
    public let background300: Color
    public let onBackground: Color

    public let info: Color
    public let onInfo: Color
    public let error: Color
    public let onError: Color
    public let warning: Color
    public let onWarning: Color
    public let success: Color
    public let onSuccess: Color

    public init(
        primary: Color,
        onPrimary: Color,
        secondary: Color,
        onSecondary: Color,
        accent: Color,
        onAccent: Color,
        neutral: Color,
        onNeutral: Color,
        background100: Color,
        background200: Color,
        background300: Color,
        onBackground: Color,
        info: Color,
        onInfo: Color,
        error: Color,
        onError: Color,
        warning: Color,
        onWarning: Color,
        success: Color,
        onSuccess: Color
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
