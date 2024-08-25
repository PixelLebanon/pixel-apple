//
//  Image.Pixel+Logo.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Image.Pixel {

    /// A nested enum to group shortcuts of image resources in the image assets Logo folder to acess the images in a
    /// SwiftUI context.
    ///
    /// Each image is of type `Image` to allow instant resolution to a SwiftUI image concrete value.
    enum Logo {

        /// The shortcut to the square-shaped image of the Pixel logo.
        public static let square: Image = .init(.Logo.square)
        /// The shortcut to the round-shaped image of the Pixel logo.
        public static let round: Image = .init(.Logo.round)
        /// The shortcut to the circle-shaped image of the Pixel logo.
        public static let circle: Image = .init(.Logo.circle)
    }
}
