//
//  View+PixelColorStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelColorStyle: PixelColorStyle?
}

public extension View {

    func pixelColorStyle(_ colorStyle: PixelColorStyle) -> some View {
        self.environment(\.pixelColorStyle, colorStyle)
    }
}
