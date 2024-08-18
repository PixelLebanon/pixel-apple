//
//  Pixel+Dark.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension Pixel {

    enum Dark: PixelColorScheme {

        public static let primary: PixelColor = .init(.Dark.primary)
        public static let onPrimary: PixelColor = .init(.Dark.onPrimary)

        public static let secondary: PixelColor = .init(.Dark.secondary)
        public static let onSecondary: PixelColor = .init(.Dark.onSecondary)

        public static let accent: PixelColor = .init(.Dark.accent)
        public static let onAccent: PixelColor = .init(.Dark.onAccent)

        public static let neutral: PixelColor = .init(.Dark.neutral)
        public static let onNeutral: PixelColor = .init(.Dark.onNeutral)

        public static let background100: PixelColor = .init(.Dark.background100)
        public static let background200: PixelColor = .init(.Dark.background200)
        public static let background300: PixelColor = .init(.Dark.background300)
        public static let onBackground: PixelColor = .init(.Dark.onBackground)

        public static let info: PixelColor = .init(.Dark.info)
        public static let onInfo: PixelColor = .init(.Dark.onInfo)
        public static let error: PixelColor = .init(.Dark.error)
        public static let onError: PixelColor = .init(.Dark.onError)
        public static let warning: PixelColor = .init(.Dark.warning)
        public static let onWarning: PixelColor = .init(.Dark.onWarning)
        public static let success: PixelColor = .init(.Dark.success)
        public static let onSuccess: PixelColor = .init(.Dark.onSuccess)
    }
}
