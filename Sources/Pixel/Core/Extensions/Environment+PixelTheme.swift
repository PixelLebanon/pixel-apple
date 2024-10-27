//
//  Environment+PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 28/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension EnvironmentValues {

    @Entry var pixelTheme: PixelTheme = .light
}

public extension View {

    func pixelTheme(_ pixelTheme: PixelTheme) -> some View {
        self.environment(\.pixelTheme, pixelTheme)
    }
}
