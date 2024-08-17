//
//  PixelThemeManager.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation
import PixelCore

public class PixelThemeManager<Theme: PixelThemeProtocol>: ObservableObject {

    @Published public var theme: Theme = .defaultValue
}
