//
//  View+PixelTheme.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 28/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelTheme: AnyPixelTheme = PixelTheme.light.eraseToAnyPixelTheme()
}

public extension View {

    func pixelTheme(_ theme: AnyPixelTheme) -> some View {
        self.environment(\.pixelTheme, theme)
    }
}
