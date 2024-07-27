//
//  PixelTheme.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 17/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public enum PixelTheme: PixelThemeProtocol {

    case light
    case dark
    indirect case auto(light: Self, dark: Self)
}
