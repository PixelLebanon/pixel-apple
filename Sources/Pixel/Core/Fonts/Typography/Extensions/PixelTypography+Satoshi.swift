//
//  PixelTypography+Satoshi.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import Foundation

// swiftlint:disable no_magic_numbers

private extension SatoshiPixelFont {

    static let dino1: Self = .init(size: 50, style: .largeTitle)
    static let dino2: Self = .init(size: 44, style: .largeTitle)
    static let dino3: Self = .init(size: 40, style: .title)

    static let big1: Self = .init(size: 32, style: .title)
    static let big2: Self = .init(size: 28, style: .title2)
    static let big3: Self = .init(size: 25, style: .title2)
    static let big4: Self = .init(size: 22, style: .title2)

    static let medium1: Self = .init(size: 20, style: .title3)
    static let medium2: Self = .init(size: 18, style: .headline)
    static let medium3: Self = .init(size: 16, style: .body)
    static let medium4: Self = .init(size: 14, style: .body)

    static let small1: Self = .init(size: 13, style: .subheadline)
    static let small2: Self = .init(size: 12, style: .footnote)
    static let small3: Self = .init(size: 11, style: .caption)
}

// swiftlint:enable no_magic_numbers

public extension PixelTypography {

    static let satoshi: Self = .init(
        dino1: SatoshiPixelFont.dino1.eraseToAnyPixelFont(),
        dino2: SatoshiPixelFont.dino2.eraseToAnyPixelFont(),
        dino3: SatoshiPixelFont.dino3.eraseToAnyPixelFont(),
        big1: SatoshiPixelFont.big1.eraseToAnyPixelFont(),
        big2: SatoshiPixelFont.big2.eraseToAnyPixelFont(),
        big3: SatoshiPixelFont.big3.eraseToAnyPixelFont(),
        big4: SatoshiPixelFont.big4.eraseToAnyPixelFont(),
        medium1: SatoshiPixelFont.medium1.eraseToAnyPixelFont(),
        medium2: SatoshiPixelFont.medium2.eraseToAnyPixelFont(),
        medium3: SatoshiPixelFont.medium3.eraseToAnyPixelFont(),
        medium4: SatoshiPixelFont.medium4.eraseToAnyPixelFont(),
        small1: SatoshiPixelFont.small1.eraseToAnyPixelFont(),
        small2: SatoshiPixelFont.small2.eraseToAnyPixelFont(),
        small3: SatoshiPixelFont.small3.eraseToAnyPixelFont()
    )
}
