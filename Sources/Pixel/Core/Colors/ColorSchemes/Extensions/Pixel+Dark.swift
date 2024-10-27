//
//  Pixel+Dark.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

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

    static let dark: Self = .init(
        primary: .init(.Dark.primary),
        onPrimary: .init(.Dark.onPrimary),
        secondary: .init(.Dark.secondary),
        onSecondary: .init(.Dark.onSecondary),
        accent: .init(.Dark.accent),
        onAccent: .init(.Dark.onAccent),
        neutral: .init(.Dark.neutral),
        onNeutral: .init(.Dark.onNeutral),
        background100: .init(.Dark.background100),
        background200: .init(.Dark.background200),
        background300: .init(.Dark.background300),
        onBackground: .init(.Dark.onBackground),
        info: .init(.Dark.info),
        onInfo: .init(.Dark.onInfo),
        error: .init(.Dark.error),
        onError: .init(.Dark.onError),
        warning: .init(.Dark.warning),
        onWarning: .init(.Dark.onWarning),
        success: .init(.Dark.success),
        onSuccess: .init(.Dark.onSuccess)
    )

    static let empty: Self = .init(
        primary: .empty,
        onPrimary: .empty,
        secondary: .empty,
        onSecondary: .empty,
        accent: .empty,
        onAccent: .empty,
        neutral: .empty,
        onNeutral: .empty,
        background100: .empty,
        background200: .empty,
        background300: .empty,
        onBackground: .empty,
        info: .empty,
        onInfo: .empty,
        error: .empty,
        onError: .empty,
        warning: .empty,
        onWarning: .empty,
        success: .empty,
        onSuccess: .empty
    )
}
