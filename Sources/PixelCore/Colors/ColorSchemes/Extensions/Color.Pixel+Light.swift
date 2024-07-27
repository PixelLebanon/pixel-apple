//
//  Color.Pixel+Light.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Color.Pixel {

    enum Light: PixelColorScheme {

        public static let primary: Color = .init(.Light.primary)
        public static let onPrimary: Color = .init(.Light.onPrimary)

        public static let secondary: Color = .init(.Light.secondary)
        public static let onSecondary: Color = .init(.Light.onSecondary)

        public static let accent: Color = .init(.Light.accent)
        public static let onAccent: Color = .init(.Light.onAccent)

        public static let neutral: Color = .init(.Light.neutral)
        public static let onNeutral: Color = .init(.Light.onNeutral)

        public static let background100: Color = .init(.Light.background100)
        public static let background200: Color = .init(.Light.background200)
        public static let background300: Color = .init(.Light.background300)
        public static let onBackground: Color = .init(.Light.onBackground)

        public static let info: Color = .init(.Light.info)
        public static let onInfo: Color = .init(.Light.onInfo)
        public static let error: Color = .init(.Light.error)
        public static let onError: Color = .init(.Light.onError)
        public static let warning: Color = .init(.Light.warning)
        public static let onWarning: Color = .init(.Light.onWarning)
        public static let success: Color = .init(.Light.success)
        public static let onSuccess: Color = .init(.Light.onSuccess)
    }

    // MARK: Shortcuts
    static let lightPrimary: Color = Light.primary
    static let lightOnPrimary: Color = Light.onPrimary

    static let lightSecondary: Color = Light.secondary
    static let lightOnSecondary: Color = Light.onSecondary

    static let lightAccent: Color = Light.accent
    static let lightOnAccent: Color = Light.onAccent

    static let lightNeutral: Color = Light.neutral
    static let lightOnNeutral: Color = Light.onNeutral

    static let lightBackground100: Color = Light.background100
    static let lightBackground200: Color = Light.background200
    static let lightBackground300: Color = Light.background300
    static let lightOnBackground: Color = Light.onBackground

    static let lightInfo: Color = Light.info
    static let lightOnInfo: Color = Light.onInfo
    static let lightError: Color = Light.error
    static let lightOnError: Color = Light.onError
    static let lightWarning: Color = Light.warning
    static let lightOnWarning: Color = Light.onWarning
    static let lightSuccess: Color = Light.success
    static let lightOnSuccess: Color = Light.onSuccess
}
