//
//  View+PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelBackgroundColorStyle: PixelColorStyle?
    @Entry var pixelForegroundColorStyle: PixelColorStyle?
}

public extension View {

    func pixelBackgroundColorStyle(_ colorStyle: PixelColorStyle) -> some View {
        self.environment(\.pixelBackgroundColorStyle, colorStyle)
    }

    func pixelForegroundColorStyle(_ colorStyle: PixelColorStyle) -> some View {
        self.environment(\.pixelForegroundColorStyle, colorStyle)
    }
}
