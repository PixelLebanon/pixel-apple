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

    public init(_ color: Color) {
        self.color = color
    }

    init(_ resource: ColorResource) {
        self.color = .init(resource)
    }

    public var uiColor: UIColor {
        .init(color)
    }
}
