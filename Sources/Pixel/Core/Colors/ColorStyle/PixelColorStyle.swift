//
//  PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public enum PixelColorStyle {

    public enum Condition {

        case focus
        case custom(Bool)
    }

    case solid(PixelColor)
    case themed(pixelColors: [PixelTheme: PixelColor])
    indirect case conditional(activeColorStyle: Self, inactiveColorStyle: Self, condition: Condition)
}
