//
//  SFProPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct SFProPixelFont: PixelFont {

    public static let empty: Self = .init(name: "", size: 0, style: .body, textCase: nil)

    public let kerning: CGFloat = 0
    public let name: String
    public let size: CGFloat
    public let style: Font.TextStyle
    public let textCase: Text.Case?

    public var font: Font {
        .custom(name, size: size, relativeTo: style)
    }

    public var uiFont: UIFont {
        // swiftlint:disable:next force_unwrapping
        .init(name: name, size: size)!
    }
}
