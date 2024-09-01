//
//  PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelColorStyle<Theme: PixelThemeProtocol> {

    public enum Condition {

        case focus, custom(Bool)
    }

    case solid(PixelColor)
    case themed(colors: [Theme: PixelColor])
    indirect case conditional(activeColorStyle: Self, inactiveColorStyle: Self, condition: Condition)
}
