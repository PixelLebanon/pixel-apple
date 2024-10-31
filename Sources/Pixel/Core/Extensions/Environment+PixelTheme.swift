//
//  Environment+PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 28/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension EnvironmentValues {

    @Entry var pixelTheme: AnyPixelTheme = PixelTheme.light.eraseToAnyPixelTheme
}

public extension View {

    func pixelTheme(_ pixelTheme: AnyPixelTheme) -> some View {
        self.environment(\.pixelTheme, pixelTheme)
    }
}
