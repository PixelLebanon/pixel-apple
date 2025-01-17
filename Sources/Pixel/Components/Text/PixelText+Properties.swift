//
//  PixelText+Properties.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelTextProperties: PixelTextProperties?
}

public extension PixelText {

    func configure(_ properties: PixelTextProperties) -> some View {
        self.environment(\.pixelTextProperties, properties)
    }
}
