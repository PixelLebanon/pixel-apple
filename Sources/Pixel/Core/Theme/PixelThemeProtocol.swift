//
//  PixelThemeProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelThemeProtocol: CaseIterable, Hashable {

    /// Default theme value.
    static var defaultValue: Self { get }

    var colorScheme: any PixelColorScheme.Type { get }

    var typography: any PixelTypography.Type { get }
}
