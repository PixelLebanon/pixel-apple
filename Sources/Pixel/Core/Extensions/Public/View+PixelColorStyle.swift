//
//  View+PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var backgroundPixelColorStyle: PixelColorStyle?
    @Entry var foregroundPixelColorStyle: PixelColorStyle?
}

public extension View {

    func backgroundPixelColorStyle(_ colorStyle: PixelColorStyle) -> some View {
        self.environment(\.backgroundPixelColorStyle, colorStyle)
    }

    func foregroundPixelColorStyle(_ colorStyle: PixelColorStyle) -> some View {
        self.environment(\.foregroundPixelColorStyle, colorStyle)
    }
}
