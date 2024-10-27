//
//  PixelColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelColor {

    public let color: Color
    public let uiColor: UIColor

    public init(_ color: Color) {
        self.color = color
        self.uiColor = .init(color)
    }

    init(_ resource: ColorResource) {
        self.color = .init(resource)
        self.uiColor = .init(resource: resource)
    }
}
