//
//  PixelButton+Modifiers.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 16/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelButton {

    private init(
        text: String,
        icon: Icon?,
        shape: Shape,
        size: Size,
        style: Style,
        weight: Font.Weight,
        width: Width,
        isItalic: Bool
    ) {
        self.text = text
        self.icon = icon
        self.shape = shape
        self.size = size
        self.style = style
        self.weight = weight
        self.width = width
        self.isItalic = isItalic
    }

    func icon(_ icon: Icon?) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func shape(_ shape: Shape) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func size(_ size: Size) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func style(_ style: Style) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func weight(_ weight: Font.Weight) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func width(_ width: Width) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isItalic
        )
    }

    func italic(_ isActive: Bool) -> Self {
        .init(
            text: text,
            icon: icon,
            shape: shape,
            size: size,
            style: style,
            weight: weight,
            width: width,
            isItalic: isActive
        )
    }
}
