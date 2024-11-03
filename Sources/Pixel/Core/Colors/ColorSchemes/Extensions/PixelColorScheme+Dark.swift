//
//  PixelColorScheme+Dark.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelColorScheme {

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
}
