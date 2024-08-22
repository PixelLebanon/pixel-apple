//
//  PixelColor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A representation of a color that adapts to a SwiftUI and UIKit context.
///
/// Pixel components depend on `PixelColor` to enable UI framework environment usecases when resolving a color to a
/// concrete value.
public struct PixelColor {

    /// A SwiftUI color concrete value.
    public let color: Color

    /// Initialize a `PixelColor` with a `Color`.
    public init(_ color: Color) {
        self.color = color
    }

    /// Initialize a `PixelColor` with a `ColorResource`.
    init(_ resource: ColorResource) {
        self.color = .init(resource)
    }

    /// A UIKit color concrete value.
    public var uiColor: UIColor {
        .init(color)
    }
}
