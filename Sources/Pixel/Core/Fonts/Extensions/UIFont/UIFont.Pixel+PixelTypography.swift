//
//  UIFont.Pixel+PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 22/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

public extension UIFont.Pixel {

    /// A shortcut to the `PixelFont` typography implementation to access the set of fonts in a UIKit context.
    ///
    /// Each font is of type `Font` to allow instant resolution to a UIKit font concrete value.
    enum PixelFontTypography {

        /// The shortcut to the large Super Dino font of the `PixelFont` typography.
        public static let superDino1: UIFont = PixelFont.superDino1.uiFont
        /// The shortcut to the medium Super Dino font of the `PixelFont` typography.
        public static let superDino2: UIFont = PixelFont.superDino2.uiFont
        /// The shortcut to the small Super Dino font of the `PixelFont` typography.
        public static let superDino3: UIFont = PixelFont.superDino3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Super Dino font of the `PixelFont` typography.
        public static let superDino4: UIFont = PixelFont.superDino4.uiFont
        /// The shortcut to the all-caps Super Dino font of the `PixelFont` typography.
        public static let capsSuperDino: UIFont = PixelFont.capsSuperDino.uiFont

        /// The shortcut to the large Dino font of the `PixelFont` typography.
        public static let dino1: UIFont = PixelFont.dino1.uiFont
        /// The shortcut to the medium Dino font of the `PixelFont` typography.
        public static let dino2: UIFont = PixelFont.dino2.uiFont
        /// The shortcut to the small Dino font of the `PixelFont` typography.
        public static let dino3: UIFont = PixelFont.dino3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Dino font of the `PixelFont` typography.
        public static let dino4: UIFont = PixelFont.dino4.uiFont
        /// The shortcut to the all-caps Dino font of the `PixelFont` typography.
        public static let capsDino: UIFont = PixelFont.capsDino.uiFont

        /// The shortcut to the large Big font of the `PixelFont` typography.
        public static let big1: UIFont = PixelFont.big1.uiFont
        /// The shortcut to the medium Big font of the `PixelFont` typography.
        public static let big2: UIFont = PixelFont.big2.uiFont
        /// The shortcut to the small Big font of the `PixelFont` typography.
        public static let big3: UIFont = PixelFont.big3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Big font of the `PixelFont` typography.
        public static let big4: UIFont = PixelFont.big4.uiFont
        /// The shortcut to the all-caps Big font of the `PixelFont` typography.
        public static let capsBig: UIFont = PixelFont.capsBig.uiFont

        /// The shortcut to the large Medium font of the `PixelFont` typography.
        public static let medium1: UIFont = PixelFont.medium1.uiFont
        /// The shortcut to the medium Medium font of the `PixelFont` typography.
        public static let medium2: UIFont = PixelFont.medium2.uiFont
        /// The shortcut to the small Medium font of the `PixelFont` typography.
        public static let medium3: UIFont = PixelFont.medium3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Medium font of the `PixelFont` typography.
        public static let medium4: UIFont = PixelFont.medium4.uiFont
        /// The shortcut to the all-caps Medium font of the `PixelFont` typography.
        public static let capsMedium: UIFont = PixelFont.capsMedium.uiFont

        /// The shortcut to the large Small font of the `PixelFont` typography.
        public static let small1: UIFont = PixelFont.small1.uiFont
        /// The shortcut to the medium Small font of the `PixelFont` typography.
        public static let small2: UIFont = PixelFont.small2.uiFont
        /// The shortcut to the small Small font of the `PixelFont` typography.
        public static let small3: UIFont = PixelFont.small3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Small font of the `PixelFont` typography.
        public static let small4: UIFont = PixelFont.small4.uiFont
        /// The shortcut to the all-caps Small font of the `PixelFont` typography.
        public static let capsSmall: UIFont = PixelFont.capsSmall.uiFont

        /// The shortcut to the large Super Small font of the `PixelFont` typography.
        public static let superSmall1: UIFont = PixelFont.superSmall1.uiFont
        /// The shortcut to the medium Super Small font of the `PixelFont` typography.
        public static let superSmall2: UIFont = PixelFont.superSmall2.uiFont
        /// The shortcut to the small Super Small font of the `PixelFont` typography.
        public static let superSmall3: UIFont = PixelFont.superSmall3.uiFont
        /// The shortcut to the slightly smaller or lighter font weight Super Small font of the `PixelFont` typography.
        public static let superSmall4: UIFont = PixelFont.superSmall4.uiFont
        /// The shortcut to the all-caps Super Small font of the `PixelFont` typography.
        public static let capsSuperSmall: UIFont = PixelFont.capsSuperSmall.uiFont
    }
}
