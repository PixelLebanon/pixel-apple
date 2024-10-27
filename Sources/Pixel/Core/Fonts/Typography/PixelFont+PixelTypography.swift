//
//  PixelFont+PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 21/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

// swiftlint:disable no_magic_numbers

private extension PixelFont {

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
        superDino1: .init(PixelFont.superDino1),
        superDino2: .init(PixelFont.superDino2),
        superDino3: .init(PixelFont.superDino3),
        superDino4: .init(PixelFont.superDino4),
        capsSuperDino: .init(PixelFont.capsSuperDino),
        dino1: .init(PixelFont.dino1),
        dino2: .init(PixelFont.dino2),
        dino3: .init(PixelFont.dino3),
        dino4: .init(PixelFont.superDino1),
        capsDino: .init(PixelFont.capsDino),
        big1: .init(PixelFont.big1),
        big2: .init(PixelFont.big2),
        big3: .init(PixelFont.big3),
        big4: .init(PixelFont.big4),
        capsBig: .init(PixelFont.capsBig),
        medium1: .init(PixelFont.medium1),
        medium2: .init(PixelFont.medium2),
        medium3: .init(PixelFont.medium3),
        medium4: .init(PixelFont.medium4),
        capsMedium: .init(PixelFont.capsMedium),
        small1: .init(PixelFont.small1),
        small2: .init(PixelFont.small2),
        small3: .init(PixelFont.small3),
        small4: .init(PixelFont.small4),
        capsSmall: .init(PixelFont.capsSmall),
        superSmall1: .init(PixelFont.superSmall1),
        superSmall2: .init(PixelFont.superSmall2),
        superSmall3: .init(PixelFont.superSmall3),
        superSmall4: .init(PixelFont.superSmall4),
        capsSuperSmall: .init(PixelFont.capsSuperSmall)
    )

    static let empty: Self = .init(
        superDino1: .empty,
        superDino2: .empty,
        superDino3: .empty,
        superDino4: .empty,
        capsSuperDino: .empty,
        dino1: .empty,
        dino2: .empty,
        dino3: .empty,
        dino4: .empty,
        capsDino: .empty,
        big1: .empty,
        big2: .empty,
        big3: .empty,
        big4: .empty,
        capsBig: .empty,
        medium1: .empty,
        medium2: .empty,
        medium3: .empty,
        medium4: .empty,
        capsMedium: .empty,
        small1: .empty,
        small2: .empty,
        small3: .empty,
        small4: .empty,
        capsSmall: .empty,
        superSmall1: .empty,
        superSmall2: .empty,
        superSmall3: .empty,
        superSmall4: .empty,
        capsSuperSmall: .empty
    )
}
