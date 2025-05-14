//
//  PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public struct PixelTypography: Hashable, Sendable {

    public let dino1: AnyPixelFont
    public let dino2: AnyPixelFont
    public let dino3: AnyPixelFont

    public let big1: AnyPixelFont
    public let big2: AnyPixelFont
    public let big3: AnyPixelFont
    public let big4: AnyPixelFont

    public let medium1: AnyPixelFont
    public let medium2: AnyPixelFont
    public let medium3: AnyPixelFont
    public let medium4: AnyPixelFont

    public let small1: AnyPixelFont
    public let small2: AnyPixelFont
    public let small3: AnyPixelFont

    public init(
        dino1: AnyPixelFont,
        dino2: AnyPixelFont,
        dino3: AnyPixelFont,
        big1: AnyPixelFont,
        big2: AnyPixelFont,
        big3: AnyPixelFont,
        big4: AnyPixelFont,
        medium1: AnyPixelFont,
        medium2: AnyPixelFont,
        medium3: AnyPixelFont,
        medium4: AnyPixelFont,
        small1: AnyPixelFont,
        small2: AnyPixelFont,
        small3: AnyPixelFont
    ) {
        self.dino1 = dino1
        self.dino2 = dino2
        self.dino3 = dino3
        self.big1 = big1
        self.big2 = big2
        self.big3 = big3
        self.big4 = big4
        self.medium1 = medium1
        self.medium2 = medium2
        self.medium3 = medium3
        self.medium4 = medium4
        self.small1 = small1
        self.small2 = small2
        self.small3 = small3
    }
}
