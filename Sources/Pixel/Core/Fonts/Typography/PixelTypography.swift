//
//  PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public struct PixelTypography: Hashable, Sendable {

    public let superDino1: AnyPixelFont
    public let superDino2: AnyPixelFont
    public let superDino3: AnyPixelFont
    public let superDino4: AnyPixelFont
    public let superDino5: AnyPixelFont

    public let dino1: AnyPixelFont
    public let dino2: AnyPixelFont
    public let dino3: AnyPixelFont
    public let dino4: AnyPixelFont
    public let dino5: AnyPixelFont

    public let big1: AnyPixelFont
    public let big2: AnyPixelFont
    public let big3: AnyPixelFont
    public let big4: AnyPixelFont
    public let big5: AnyPixelFont

    public let medium1: AnyPixelFont
    public let medium2: AnyPixelFont
    public let medium3: AnyPixelFont
    public let medium4: AnyPixelFont
    public let medium5: AnyPixelFont

    public let small1: AnyPixelFont
    public let small2: AnyPixelFont
    public let small3: AnyPixelFont
    public let small4: AnyPixelFont
    public let small5: AnyPixelFont

    public let superSmall1: AnyPixelFont
    public let superSmall2: AnyPixelFont
    public let superSmall3: AnyPixelFont
    public let superSmall4: AnyPixelFont
    public let superSmall5: AnyPixelFont

    public init(
        superDino1: AnyPixelFont,
        superDino2: AnyPixelFont,
        superDino3: AnyPixelFont,
        superDino4: AnyPixelFont,
        superDino5: AnyPixelFont,
        dino1: AnyPixelFont,
        dino2: AnyPixelFont,
        dino3: AnyPixelFont,
        dino4: AnyPixelFont,
        dino5: AnyPixelFont,
        big1: AnyPixelFont,
        big2: AnyPixelFont,
        big3: AnyPixelFont,
        big4: AnyPixelFont,
        big5: AnyPixelFont,
        medium1: AnyPixelFont,
        medium2: AnyPixelFont,
        medium3: AnyPixelFont,
        medium4: AnyPixelFont,
        medium5: AnyPixelFont,
        small1: AnyPixelFont,
        small2: AnyPixelFont,
        small3: AnyPixelFont,
        small4: AnyPixelFont,
        small5: AnyPixelFont,
        superSmall1: AnyPixelFont,
        superSmall2: AnyPixelFont,
        superSmall3: AnyPixelFont,
        superSmall4: AnyPixelFont,
        superSmall5: AnyPixelFont
    ) {
        self.superDino1 = superDino1
        self.superDino2 = superDino2
        self.superDino3 = superDino3
        self.superDino4 = superDino4
        self.superDino5 = superDino5
        self.dino1 = dino1
        self.dino2 = dino2
        self.dino3 = dino3
        self.dino4 = dino4
        self.dino5 = dino5
        self.big1 = big1
        self.big2 = big2
        self.big3 = big3
        self.big4 = big4
        self.big5 = big5
        self.medium1 = medium1
        self.medium2 = medium2
        self.medium3 = medium3
        self.medium4 = medium4
        self.medium5 = medium5
        self.small1 = small1
        self.small2 = small2
        self.small3 = small3
        self.small4 = small4
        self.small5 = small5
        self.superSmall1 = superSmall1
        self.superSmall2 = superSmall2
        self.superSmall3 = superSmall3
        self.superSmall4 = superSmall4
        self.superSmall5 = superSmall5
    }
}
