//
//  AnyPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct AnyPixelFont: PixelFont {

    public static let empty: Self = .init()

    private let _kerning: CGFloat
    private let _name: String
    private let _size: CGFloat
    private let _style: Font.TextStyle

    private let _font: Font
    private let _uiFont: UIFont?

    public init<F: PixelFont>(_ font: F) {
        self._kerning = font.kerning
        self._name = font.name
        self._size = font.size
        self._style = font.style
        self._font = font.font
        self._uiFont = font.uiFont
    }

    private init() {
        self._kerning = 0
        self._name = ""
        self._size = 0
        self._style = .body
        self._font = .custom("", size: 0)
        self._uiFont = .init(name: "", size: 0)
    }

    public var kerning: CGFloat {
        _kerning
    }

    public var name: String {
        _name
    }

    public var size: CGFloat {
        _size
    }

    public var style: Font.TextStyle {
        _style
    }

    public var font: Font {
        _font
    }

    public var uiFont: UIFont? {
        _uiFont
    }
}
