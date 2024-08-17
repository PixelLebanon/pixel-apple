//
//  PixelThemeProtocol.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 26/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelThemeProtocol: CaseIterable, Hashable {

    static var defaultValue: Self { get }

    var colorScheme: PixelColorScheme.Type { get }
}
