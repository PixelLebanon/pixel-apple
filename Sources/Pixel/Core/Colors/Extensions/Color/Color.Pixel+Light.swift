//
//  Color.Pixel+Light.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Color.Pixel {

    enum Light {

        public static let primary: Color = PixelColorScheme.light.primary.color
        public static let onPrimary: Color = PixelColorScheme.light.onPrimary.color

        public static let secondary: Color = PixelColorScheme.light.secondary.color
        public static let onSecondary: Color = PixelColorScheme.light.onSecondary.color

        public static let accent: Color = PixelColorScheme.light.accent.color
        public static let onAccent: Color = PixelColorScheme.light.onAccent.color

        public static let neutral: Color = PixelColorScheme.light.neutral.color
        public static let onNeutral: Color = PixelColorScheme.light.onNeutral.color

        public static let background100: Color = PixelColorScheme.light.background100.color
        public static let background200: Color = PixelColorScheme.light.background200.color
        public static let background300: Color = PixelColorScheme.light.background300.color
        public static let onBackground: Color = PixelColorScheme.light.onBackground.color

        public static let info: Color = PixelColorScheme.light.info.color
        public static let onInfo: Color = PixelColorScheme.light.onInfo.color
        public static let error: Color = PixelColorScheme.light.error.color
        public static let onError: Color = PixelColorScheme.light.onError.color
        public static let warning: Color = PixelColorScheme.light.warning.color
        public static let onWarning: Color = PixelColorScheme.light.onWarning.color
        public static let success: Color = PixelColorScheme.light.success.color
        public static let onSuccess: Color = PixelColorScheme.light.onSuccess.color
    }
}
