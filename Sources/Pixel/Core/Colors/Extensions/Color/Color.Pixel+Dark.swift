//
//  Color+Pixel.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Color.Pixel {

    enum Dark {

        public static let primary: Color = PixelColorScheme.dark.primary.color
        public static let onPrimary: Color = PixelColorScheme.dark.onPrimary.color

        public static let secondary: Color = PixelColorScheme.dark.secondary.color
        public static let onSecondary: Color = PixelColorScheme.dark.onSecondary.color

        public static let accent: Color = PixelColorScheme.dark.accent.color
        public static let onAccent: Color = PixelColorScheme.dark.onAccent.color

        public static let neutral: Color = PixelColorScheme.dark.neutral.color
        public static let onNeutral: Color = PixelColorScheme.dark.onNeutral.color

        public static let background100: Color = PixelColorScheme.dark.background100.color
        public static let background200: Color = PixelColorScheme.dark.background200.color
        public static let background300: Color = PixelColorScheme.dark.background300.color
        public static let onBackground: Color = PixelColorScheme.dark.onBackground.color

        public static let info: Color = PixelColorScheme.dark.info.color
        public static let onInfo: Color = PixelColorScheme.dark.onInfo.color
        public static let error: Color = PixelColorScheme.dark.error.color
        public static let onError: Color = PixelColorScheme.dark.onError.color
        public static let warning: Color = PixelColorScheme.dark.warning.color
        public static let onWarning: Color = PixelColorScheme.dark.onWarning.color
        public static let success: Color = PixelColorScheme.dark.success.color
        public static let onSuccess: Color = PixelColorScheme.dark.onSuccess.color
    }
}
