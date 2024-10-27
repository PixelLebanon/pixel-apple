//
//  PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public enum PixelTheme: Codable {

    public struct Model: Codable {

        public let colorScheme: PixelColorScheme
        public let typography: PixelTypography

        public init(colorScheme: PixelColorScheme, typography: PixelTypography) {
            self.colorScheme = colorScheme
            self.typography = typography
        }
    }

    case light(Model = .init(colorScheme: Pixel.Light.self, typography: PixelFont.self))
    case dark(Model = .init(colorScheme: .dark, typography: PixelFont.self))
    case custom(Model)

    public var colorScheme: PixelColorScheme {
        switch self {
        case let .light(model),
             let .dark(model),
             let .custom(model): model.colorScheme
        }
    }

    public var typography: PixelTypography {
        switch self {
        case let .light(model),
             let .dark(model),
             let .custom(model): model.typography
        }
    }
}
