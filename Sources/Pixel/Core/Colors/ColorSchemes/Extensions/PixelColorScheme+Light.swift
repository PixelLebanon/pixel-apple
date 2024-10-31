//
//  PixelColorScheme+Light.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 31/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelColorScheme {

    static let light: Self = .init(
        primary: .init(.Light.primary),
        onPrimary: .init(.Light.onPrimary),
        secondary: .init(.Light.secondary),
        onSecondary: .init(.Light.onSecondary),
        accent: .init(.Light.accent),
        onAccent: .init(.Light.onAccent),
        neutral: .init(.Light.neutral),
        onNeutral: .init(.Light.onNeutral),
        background100: .init(.Light.background100),
        background200: .init(.Light.background200),
        background300: .init(.Light.background300),
        onBackground: .init(.Light.onBackground),
        info: .init(.Light.info),
        onInfo: .init(.Light.onInfo),
        error: .init(.Light.error),
        onError: .init(.Light.onError),
        warning: .init(.Light.warning),
        onWarning: .init(.Light.onWarning),
        success: .init(.Light.success),
        onSuccess: .init(.Light.onSuccess)
    )
}
