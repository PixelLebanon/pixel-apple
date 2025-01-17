//
//  SatoshiPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct SatoshiPixelFont: PixelFont {

    public let kerning: CGFloat = 0
    public let name: String
    public let size: CGFloat
    public let style: Font.TextStyle

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    public var uiFont: UIFont? {
        .init(name: name, size: size)
    }
}
