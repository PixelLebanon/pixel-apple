//
//  PixelText+Modifiers.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelText {

    private init(text: String, fontWeight: Font.Weight?, isItalic: Bool) {
        self.text = text
        self.fontWeight = fontWeight
        self.isItalic = isItalic
    }

    func pixelFontWeight(_ weight: Font.Weight?) -> Self {
        .init(text: text, fontWeight: weight, isItalic: isItalic)
    }

    func pixelItalic(_ isActive: Bool = true) -> Self {
        .init(text: text, fontWeight: fontWeight, isItalic: isActive)
    }
}
