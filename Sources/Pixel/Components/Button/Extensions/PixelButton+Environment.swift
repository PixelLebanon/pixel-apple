//
//  PixelButton+Environment.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 12/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension EnvironmentValues {

    @Entry var pixelButtonConfiguration: PixelButton.Configuration?
}

public extension PixelButton {

    func configure(_ configuration: Configuration) -> some View {
        self.environment(\.pixelButtonConfiguration, configuration)
    }
}
