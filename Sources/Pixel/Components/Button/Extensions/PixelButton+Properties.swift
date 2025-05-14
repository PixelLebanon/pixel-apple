//
//  PixelButton+Properties.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 14/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelButton {

    private init(text: String, icon: Icon?, shape: Shape, size: Size, style: Style, width: Width) {
        self.text = text
        self.icon = icon
        self.shape = shape
        self.size = size
        self.style = style
        self.width = width
    }

    func icon(_ icon: Icon?) -> Self {
        .init(text: text, icon: icon, shape: shape, size: size, style: style, width: width)
    }

    func shape(_ shape: Shape) -> Self {
        .init(text: text, icon: icon, shape: shape, size: size, style: style, width: width)
    }

    func size(_ size: Size) -> Self {
        .init(text: text, icon: icon, shape: shape, size: size, style: style, width: width)
    }

    func style(_ style: Style) -> Self {
        .init(text: text, icon: icon, shape: shape, size: size, style: style, width: width)
    }

    func width(_ width: Width) -> Self {
        .init(text: text, icon: icon, shape: shape, size: size, style: style, width: width)
    }
}
