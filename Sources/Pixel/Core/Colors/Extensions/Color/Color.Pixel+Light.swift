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

        public static let primary: Color = Pixel.Light.primary.color
        public static let onPrimary: Color = Pixel.Light.onPrimary.color

        public static let secondary: Color = Pixel.Light.secondary.color
        public static let onSecondary: Color = Pixel.Light.onSecondary.color

        public static let accent: Color = Pixel.Light.accent.color
        public static let onAccent: Color = Pixel.Light.onAccent.color

        public static let neutral: Color = Pixel.Light.neutral.color
        public static let onNeutral: Color = Pixel.Light.onNeutral.color

        public static let background100: Color = Pixel.Light.background100.color
        public static let background200: Color = Pixel.Light.background200.color
        public static let background300: Color = Pixel.Light.background300.color
        public static let onBackground: Color = Pixel.Light.onBackground.color

        public static let info: Color = Pixel.Light.info.color
        public static let onInfo: Color = Pixel.Light.onInfo.color
        public static let error: Color = Pixel.Light.error.color
        public static let onError: Color = Pixel.Light.onError.color
        public static let warning: Color = Pixel.Light.warning.color
        public static let onWarning: Color = Pixel.Light.onWarning.color
        public static let success: Color = Pixel.Light.success.color
        public static let onSuccess: Color = Pixel.Light.onSuccess.color
    }
}
