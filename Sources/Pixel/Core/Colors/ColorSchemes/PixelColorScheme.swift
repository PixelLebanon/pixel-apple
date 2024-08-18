//
//  PixelColorScheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelColorScheme {

    static var primary: PixelColor { get }
    static var onPrimary: PixelColor { get }

    static var secondary: PixelColor { get }
    static var onSecondary: PixelColor { get }

    static var accent: PixelColor { get }
    static var onAccent: PixelColor { get }

    static var neutral: PixelColor { get }
    static var onNeutral: PixelColor { get }

    static var background100: PixelColor { get }
    static var background200: PixelColor { get }
    static var background300: PixelColor { get }
    static var onBackground: PixelColor { get }

    static var info: PixelColor { get }
    static var onInfo: PixelColor { get }
    static var error: PixelColor { get }
    static var onError: PixelColor { get }
    static var warning: PixelColor { get }
    static var onWarning: PixelColor { get }
    static var success: PixelColor { get }
    static var onSuccess: PixelColor { get }
}
