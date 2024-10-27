//
//  PixelThemeProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

public protocol PixelThemeProtocol: CaseIterable {

    var colorScheme: PixelColorScheme { get }
    var typography: PixelTypography { get }
}
