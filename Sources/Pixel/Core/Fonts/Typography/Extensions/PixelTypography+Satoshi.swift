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

    private static let blackFontName: String = Satoshi.black.name
    private static let boldFontName: String = Satoshi.bold.name
    private static let mediumFontName: String = Satoshi.medium.name
    private static let regularFontName: String = Satoshi.regular.name
    private static let lightFontName: String = Satoshi.light.name

    static let superDino1: Self = .init(name: blackFontName, size: 50, style: .largeTitle)
    static let superDino2: Self = .init(name: boldFontName, size: 44, style: .largeTitle)
    static let superDino3: Self = .init(name: mediumFontName, size: 40, style: .largeTitle)
    static let superDino4: Self = .init(name: regularFontName, size: 40, style: .largeTitle)
    static let superDino5: Self = .init(name: lightFontName, size: 36, style: .largeTitle)

    static let dino1: Self = .init(name: blackFontName, size: 36, style: .largeTitle)
    static let dino2: Self = .init(name: boldFontName, size: 32, style: .largeTitle)
    static let dino3: Self = .init(name: mediumFontName, size: 30, style: .title)
    static let dino4: Self = .init(name: regularFontName, size: 30, style: .title)
    static let dino5: Self = .init(name: lightFontName, size: 28, style: .title)

    static let big1: Self = .init(name: blackFontName, size: 28, style: .title)
    static let big2: Self = .init(name: boldFontName, size: 24, style: .title2)
    static let big3: Self = .init(name: mediumFontName, size: 22, style: .title2)
    static let big4: Self = .init(name: regularFontName, size: 22, style: .title2)
    static let big5: Self = .init(name: lightFontName, size: 20, style: .title3)

    static let medium1: Self = .init(name: blackFontName, size: 20, style: .title3)
    static let medium2: Self = .init(name: boldFontName, size: 18, style: .headline)
    static let medium3: Self = .init(name: mediumFontName, size: 16, style: .body)
    static let medium4: Self = .init(name: regularFontName, size: 16, style: .body)
    static let medium5: Self = .init(name: lightFontName, size: 14, style: .subheadline)

    static let small1: Self = .init(name: blackFontName, size: 14, style: .subheadline)
    static let small2: Self = .init(name: boldFontName, size: 13, style: .footnote)
    static let small3: Self = .init(name: mediumFontName, size: 12, style: .caption)
    static let small4: Self = .init(name: regularFontName, size: 12, style: .caption)
    static let small5: Self = .init(name: lightFontName, size: 11, style: .caption2)

    static let superSmall1: Self = .init(name: blackFontName, size: 11, style: .caption2)
    static let superSmall2: Self = .init(name: boldFontName, size: 10, style: .caption2)
    static let superSmall3: Self = .init(name: mediumFontName, size: 10, style: .caption2)
    static let superSmall4: Self = .init(name: regularFontName, size: 10, style: .caption2)
    static let superSmall5: Self = .init(name: lightFontName, size: 9, style: .caption2)
}

// swiftlint:enable no_magic_numbers

public extension PixelTypography {

    static let satoshi: Self = .init(
        superDino1: SatoshiPixelFont.superDino1.eraseToAnyPixelFont(),
        superDino2: SatoshiPixelFont.superDino2.eraseToAnyPixelFont(),
        superDino3: SatoshiPixelFont.superDino3.eraseToAnyPixelFont(),
        superDino4: SatoshiPixelFont.superDino4.eraseToAnyPixelFont(),
        superDino5: SatoshiPixelFont.superDino5.eraseToAnyPixelFont(),
        dino1: SatoshiPixelFont.dino1.eraseToAnyPixelFont(),
        dino2: SatoshiPixelFont.dino2.eraseToAnyPixelFont(),
        dino3: SatoshiPixelFont.dino3.eraseToAnyPixelFont(),
        dino4: SatoshiPixelFont.superDino1.eraseToAnyPixelFont(),
        dino5: SatoshiPixelFont.dino5.eraseToAnyPixelFont(),
        big1: SatoshiPixelFont.big1.eraseToAnyPixelFont(),
        big2: SatoshiPixelFont.big2.eraseToAnyPixelFont(),
        big3: SatoshiPixelFont.big3.eraseToAnyPixelFont(),
        big4: SatoshiPixelFont.big4.eraseToAnyPixelFont(),
        big5: SatoshiPixelFont.big5.eraseToAnyPixelFont(),
        medium1: SatoshiPixelFont.medium1.eraseToAnyPixelFont(),
        medium2: SatoshiPixelFont.medium2.eraseToAnyPixelFont(),
        medium3: SatoshiPixelFont.medium3.eraseToAnyPixelFont(),
        medium4: SatoshiPixelFont.medium4.eraseToAnyPixelFont(),
        medium5: SatoshiPixelFont.medium5.eraseToAnyPixelFont(),
        small1: SatoshiPixelFont.small1.eraseToAnyPixelFont(),
        small2: SatoshiPixelFont.small2.eraseToAnyPixelFont(),
        small3: SatoshiPixelFont.small3.eraseToAnyPixelFont(),
        small4: SatoshiPixelFont.small4.eraseToAnyPixelFont(),
        small5: SatoshiPixelFont.small5.eraseToAnyPixelFont(),
        superSmall1: SatoshiPixelFont.superSmall1.eraseToAnyPixelFont(),
        superSmall2: SatoshiPixelFont.superSmall2.eraseToAnyPixelFont(),
        superSmall3: SatoshiPixelFont.superSmall3.eraseToAnyPixelFont(),
        superSmall4: SatoshiPixelFont.superSmall4.eraseToAnyPixelFont(),
        superSmall5: SatoshiPixelFont.superSmall5.eraseToAnyPixelFont()
    )
}
