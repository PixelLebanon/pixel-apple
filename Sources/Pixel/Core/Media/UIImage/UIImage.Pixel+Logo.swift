//
//  UIImage.Pixel+Logo.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 22/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension UIImage.Pixel {

    /// A nested enum to group shortcuts of image resources in the image assets Logo folder to acess the images in a
    /// UIKit context.
    ///
    /// Each image is of type `UIImage` to allow instant resolution to a UIKit image concrete value.
    enum Logo {

        /// The shortcut to the square-shaped image of the Pixel logo.
        public static let square: UIImage = .init(resource: .Logo.square)
        /// The shortcut to the round-shaped image of the Pixel logo.
        public static let round: UIImage = .init(resource: .Logo.round)
        /// The shortcut to the circle-shaped image of the Pixel logo.
        public static let circle: UIImage = .init(resource: .Logo.circle)
    }
}
