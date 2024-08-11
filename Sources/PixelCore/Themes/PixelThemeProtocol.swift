//
//  PixelThemeProtocol.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 26/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelThemeProtocol: Hashable {

    static var light: Self { get }
    static var dark: Self { get }
    static var auto: Self { get }
}
