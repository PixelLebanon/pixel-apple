//
//  Pixel+Light.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension Pixel {

    enum Light: PixelColorScheme {
        
        public static let primary: PixelColor = .init(.Light.primary)
        public static let onPrimary: PixelColor = .init(.Light.onPrimary)

        public static let secondary: PixelColor = .init(.Light.secondary)
        public static let onSecondary: PixelColor = .init(.Light.onSecondary)

        public static let accent: PixelColor = .init(.Light.accent)
        public static let onAccent: PixelColor = .init(.Light.onAccent)

        public static let neutral: PixelColor = .init(.Light.neutral)
        public static let onNeutral: PixelColor = .init(.Light.onNeutral)

        public static let background100: PixelColor = .init(.Light.background100)
        public static let background200: PixelColor = .init(.Light.background200)
        public static let background300: PixelColor = .init(.Light.background300)
        public static let onBackground: PixelColor = .init(.Light.onBackground)

        public static let info: PixelColor = .init(.Light.info)
        public static let onInfo: PixelColor = .init(.Light.onInfo)
        public static let error: PixelColor = .init(.Light.error)
        public static let onError: PixelColor = .init(.Light.onError)
        public static let warning: PixelColor = .init(.Light.warning)
        public static let onWarning: PixelColor = .init(.Light.onWarning)
        public static let success: PixelColor = .init(.Light.success)
        public static let onSuccess: PixelColor = .init(.Light.onSuccess)
    }
}
