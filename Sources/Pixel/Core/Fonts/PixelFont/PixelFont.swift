//
//  PixelFont.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelFont: PixelFontProtocol {

    public static let empty: Self = .init(isCaps: false, name: "", size: 0, style: .body)

    public let isCaps: Bool
    public let letterSpacing: CGFloat = 0
    public let name: String
    public let size: CGFloat
    public let style: Font.TextStyle

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    public var uiFont: UIFont {
        .init(name: name, size: size)!
    }
}
