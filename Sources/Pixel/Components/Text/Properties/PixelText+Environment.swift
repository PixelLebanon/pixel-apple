//
//  PixelText+Environment.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelTextConfiguration: PixelText.Configuration?
}

public extension PixelText {

    func configure(_ configuration: PixelText.Configuration) -> some View {
        self.environment(\.pixelTextConfiguration, configuration)
    }
}
