//
//  PixelTypography+SFPro.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 21/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

// swiftlint:disable no_magic_numbers

private extension SFProPixelFont {

    private static let boldFont: String = SFPro.bold.name
    private static let mediumFont: String = SFPro.medium.name
    private static let regularFont: String = SFPro.regular.name
    private static let lightFont: String = SFPro.light.name

    static let superDino1: Self = .init(name: boldFont, size: 50, style: .largeTitle, textCase: nil)
    static let superDino2: Self = .init(name: mediumFont, size: 44, style: .largeTitle, textCase: nil)
    static let superDino3: Self = .init(name: regularFont, size: 40, style: .largeTitle, textCase: nil)
    static let superDino4: Self = .init(name: lightFont, size: 40, style: .largeTitle, textCase: nil)
    static let capsSuperDino: Self = .init(name: boldFont, size: 36, style: .largeTitle, textCase: .uppercase)

    static let dino1: Self = .init(name: boldFont, size: 36, style: .largeTitle, textCase: nil)
    static let dino2: Self = .init(name: mediumFont, size: 32, style: .largeTitle, textCase: nil)
    static let dino3: Self = .init(name: regularFont, size: 30, style: .title, textCase: nil)
    static let dino4: Self = .init(name: lightFont, size: 30, style: .title, textCase: nil)
    static let capsDino: Self = .init(name: boldFont, size: 28, style: .title, textCase: .uppercase)

    static let big1: Self = .init(name: boldFont, size: 28, style: .title, textCase: nil)
    static let big2: Self = .init(name: mediumFont, size: 24, style: .title2, textCase: nil)
    static let big3: Self = .init(name: regularFont, size: 22, style: .title2, textCase: nil)
    static let big4: Self = .init(name: lightFont, size: 22, style: .title2, textCase: nil)
    static let capsBig: Self = .init(name: boldFont, size: 20, style: .title3, textCase: .uppercase)

    static let medium1: Self = .init(name: boldFont, size: 20, style: .title3, textCase: nil)
    static let medium2: Self = .init(name: mediumFont, size: 18, style: .headline, textCase: nil)
    static let medium3: Self = .init(name: regularFont, size: 16, style: .body, textCase: nil)
    static let medium4: Self = .init(name: lightFont, size: 16, style: .body, textCase: nil)
    static let capsMedium: Self = .init(name: boldFont, size: 14, style: .subheadline, textCase: .uppercase)

    static let small1: Self = .init(name: boldFont, size: 14, style: .subheadline, textCase: nil)
    static let small2: Self = .init(name: mediumFont, size: 13, style: .footnote, textCase: nil)
    static let small3: Self = .init(name: regularFont, size: 12, style: .caption, textCase: nil)
    static let small4: Self = .init(name: lightFont, size: 12, style: .caption, textCase: nil)
    static let capsSmall: Self = .init(name: boldFont, size: 11, style: .caption2, textCase: .uppercase)

    static let superSmall1: Self = .init(name: boldFont, size: 11, style: .caption2, textCase: nil)
    static let superSmall2: Self = .init(name: mediumFont, size: 10, style: .caption2, textCase: nil)
    static let superSmall3: Self = .init(name: regularFont, size: 10, style: .caption2, textCase: nil)
    static let superSmall4: Self = .init(name: lightFont, size: 10, style: .caption2, textCase: nil)
    static let capsSuperSmall: Self = .init(name: boldFont, size: 9, style: .caption2, textCase: .uppercase)
}

// swiftlint:enable no_magic_numbers

public extension PixelTypography {

    static let sfPro: Self = .init(
        superDino1: SFProPixelFont.superDino1.eraseToAnyPixelFont(),
        superDino2: SFProPixelFont.superDino2.eraseToAnyPixelFont(),
        superDino3: SFProPixelFont.superDino3.eraseToAnyPixelFont(),
        superDino4: SFProPixelFont.superDino4.eraseToAnyPixelFont(),
        capsSuperDino: SFProPixelFont.capsSuperDino.eraseToAnyPixelFont(),
        dino1: SFProPixelFont.dino1.eraseToAnyPixelFont(),
        dino2: SFProPixelFont.dino2.eraseToAnyPixelFont(),
        dino3: SFProPixelFont.dino3.eraseToAnyPixelFont(),
        dino4: SFProPixelFont.superDino1.eraseToAnyPixelFont(),
        capsDino: SFProPixelFont.capsDino.eraseToAnyPixelFont(),
        big1: SFProPixelFont.big1.eraseToAnyPixelFont(),
        big2: SFProPixelFont.big2.eraseToAnyPixelFont(),
        big3: SFProPixelFont.big3.eraseToAnyPixelFont(),
        big4: SFProPixelFont.big4.eraseToAnyPixelFont(),
        capsBig: SFProPixelFont.capsBig.eraseToAnyPixelFont(),
        medium1: SFProPixelFont.medium1.eraseToAnyPixelFont(),
        medium2: SFProPixelFont.medium2.eraseToAnyPixelFont(),
        medium3: SFProPixelFont.medium3.eraseToAnyPixelFont(),
        medium4: SFProPixelFont.medium4.eraseToAnyPixelFont(),
        capsMedium: SFProPixelFont.capsMedium.eraseToAnyPixelFont(),
        small1: SFProPixelFont.small1.eraseToAnyPixelFont(),
        small2: SFProPixelFont.small2.eraseToAnyPixelFont(),
        small3: SFProPixelFont.small3.eraseToAnyPixelFont(),
        small4: SFProPixelFont.small4.eraseToAnyPixelFont(),
        capsSmall: SFProPixelFont.capsSmall.eraseToAnyPixelFont(),
        superSmall1: SFProPixelFont.superSmall1.eraseToAnyPixelFont(),
        superSmall2: SFProPixelFont.superSmall2.eraseToAnyPixelFont(),
        superSmall3: SFProPixelFont.superSmall3.eraseToAnyPixelFont(),
        superSmall4: SFProPixelFont.superSmall4.eraseToAnyPixelFont(),
        capsSuperSmall: SFProPixelFont.capsSuperSmall.eraseToAnyPixelFont()
    )
}
