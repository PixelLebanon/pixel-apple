//
//  View+PixelFontStyle.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelFontStyle: PixelFontStyle?
}

public extension View {

    func pixelFontStyle(_ fontStyle: PixelFontStyle) -> some View {
        self.environment(\.pixelFontStyle, fontStyle)
    }
}
