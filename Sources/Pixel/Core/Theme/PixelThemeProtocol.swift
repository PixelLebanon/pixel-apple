//
//  PixelThemeProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelThemeProtocol: Hashable, Sendable {

    var colorScheme: PixelColorScheme { get }
    var typography: PixelTypography { get }
}
