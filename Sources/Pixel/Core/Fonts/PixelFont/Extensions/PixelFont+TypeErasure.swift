//
//  PixelFont+TypeErasure.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 31/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public extension PixelFont {

    var eraseToAnyPixelFont: AnyPixelFont {
        .init(self)
    }
}
