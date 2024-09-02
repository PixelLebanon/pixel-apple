//
//  PixelThemeManager.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 02/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation
import Observation

@Observable
public final class PixelThemeManager<Theme: PixelThemeProtocol> {

    public var theme: Theme = .defaultValue
}
