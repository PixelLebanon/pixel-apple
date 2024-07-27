//
//  Font+Pixel.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 27/07/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public extension Font {

    enum Pixel: PixelTypography {

        public static let superDino1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 50, style: .largeTitle)
        public static let superDino2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 44, style: .largeTitle)
        public static let superDino3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 40, style: .largeTitle)
        public static let superDino4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 40, style: .largeTitle)
        public static let capsSuperDino: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 36, style: .largeTitle)

        public static let dino1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 36, style: .largeTitle)
        public static let dino2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 32, style: .largeTitle)
        public static let dino3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 30, style: .title)
        public static let dino4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 30, style: .title)
        public static let capsDino: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 28, style: .title)

        public static let big1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 28, style: .title)
        public static let big2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 24, style: .title2)
        public static let big3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 22, style: .title2)
        public static let big4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 22, style: .title2)
        public static let capsBig: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 20, style: .title3)

        public static let medium1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 20, style: .title3)
        public static let medium2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 18, style: .headline)
        public static let medium3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 16, style: .body)
        public static let medium4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 16, style: .body)
        public static let capsMedium: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 14, style: .subheadline)

        public static let small1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 14, style: .subheadline)
        public static let small2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 13, style: .footnote)
        public static let small3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 12, style: .caption)
        public static let small4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 12, style: .caption)
        public static let capsSmall: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 11, style: .caption2)

        public static let superSmall1: PixelFont = .init(isCaps: false, name: SFPro.bold.name, size: 11, style: .caption2)
        public static let superSmall2: PixelFont = .init(isCaps: false, name: SFPro.medium.name, size: 10, style: .caption2)
        public static let superSmall3: PixelFont = .init(isCaps: false, name: SFPro.regular.name, size: 10, style: .caption2)
        public static let superSmall4: PixelFont = .init(isCaps: false, name: SFPro.light.name, size: 10, style: .caption2)
        public static let capsSuperSmall: PixelFont = .init(isCaps: true, name: SFPro.bold.name, size: 9, style: .caption2)
    }
}
