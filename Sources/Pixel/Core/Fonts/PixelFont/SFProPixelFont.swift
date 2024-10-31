//
//  SFProPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct SFProPixelFont: PixelFont {

    public let kerning: CGFloat = 0
    public let name: String
    public let size: CGFloat
    public let style: Font.TextStyle
    public let textCase: Text.Case?

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    public var uiFont: UIFont? {
        .init(name: name, size: size)
    }
}
