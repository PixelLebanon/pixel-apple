//
//  PixelFont+PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 21/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A private constant shortcut for the SFPro bold font weight name
private let boldFont: String = SFPro.bold.name
/// A private constant shortcut for the SFPro medium font weight name
private let mediumFont: String = SFPro.medium.name
/// A private constant shortcut for the SFPro regular font weight name
private let regularFont: String = SFPro.regular.name
/// A private constant shortcut for the SFPro light font weight name
private let lightFont: String = SFPro.light.name

/// A `PixelTypography` implementation defining the set of fonts optimized to use the custom font `PixelFont` in the
/// Pixel design system.
///
/// Each font is represented as `PixelFont` to allow the implementation to be used across multiple UI framework
/// environments.
extension PixelFont: PixelTypography {

    /// The`PixelFont` large Super Dino font.
    public static let superDino1: Self = .init(name: boldFont, size: 50, style: .largeTitle, textCase: nil)
    /// The `PixelFont` medium Super Dino font.
    public static let superDino2: Self = .init(name: mediumFont, size: 44, style: .largeTitle, textCase: nil)
    /// The `PixelFont` small Super Dino font.
    public static let superDino3: Self = .init(name: regularFont, size: 40, style: .largeTitle, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Super Dino font.
    public static let superDino4: Self = .init(name: lightFont, size: 40, style: .largeTitle, textCase: nil)
    /// The `PixelFont` all-caps Super Dino font.
    public static let capsSuperDino: Self = .init(name: boldFont, size: 36, style: .largeTitle, textCase: .uppercase)

    /// The`PixelFont` large Dino font.
    public static let dino1: Self = .init(name: boldFont, size: 36, style: .largeTitle, textCase: nil)
    /// The `PixelFont` medium Dino font.
    public static let dino2: Self = .init(name: mediumFont, size: 32, style: .largeTitle, textCase: nil)
    /// The `PixelFont` small Dino font.
    public static let dino3: Self = .init(name: regularFont, size: 30, style: .title, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Dino font.
    public static let dino4: Self = .init(name: lightFont, size: 30, style: .title, textCase: nil)
    /// The `PixelFont` all-caps Dino font.
    public static let capsDino: Self = .init(name: boldFont, size: 28, style: .title, textCase: .uppercase)

    /// The`PixelFont` large Big font.
    public static let big1: Self = .init(name: boldFont, size: 28, style: .title, textCase: nil)
    /// The `PixelFont` medium Big font.
    public static let big2: Self = .init(name: mediumFont, size: 24, style: .title2, textCase: nil)
    /// The `PixelFont` small Big font.
    public static let big3: Self = .init(name: regularFont, size: 22, style: .title2, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Big font.
    public static let big4: Self = .init(name: lightFont, size: 22, style: .title2, textCase: nil)
    /// The `PixelFont` all-caps Big font.
    public static let capsBig: Self = .init(name: boldFont, size: 20, style: .title3, textCase: .uppercase)

    /// The`PixelFont` large Medium font.
    public static let medium1: Self = .init(name: boldFont, size: 20, style: .title3, textCase: nil)
    /// The `PixelFont` medium Medium font.
    public static let medium2: Self = .init(name: mediumFont, size: 18, style: .headline, textCase: nil)
    /// The `PixelFont` small Mediumfont.
    public static let medium3: Self = .init(name: regularFont, size: 16, style: .body, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Medium font.
    public static let medium4: Self = .init(name: lightFont, size: 16, style: .body, textCase: nil)
    /// The `PixelFont` all-caps Medium font.
    public static let capsMedium: Self = .init(name: boldFont, size: 14, style: .subheadline, textCase: .uppercase)

    /// The`PixelFont` large Small font.
    public static let small1: Self = .init(name: boldFont, size: 14, style: .subheadline, textCase: nil)
    /// The `PixelFont` medium Small font.
    public static let small2: Self = .init(name: mediumFont, size: 13, style: .footnote, textCase: nil)
    /// The `PixelFont` small Small font.
    public static let small3: Self = .init(name: regularFont, size: 12, style: .caption, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Smallfont.
    public static let small4: Self = .init(name: lightFont, size: 12, style: .caption, textCase: nil)
    /// The `PixelFont` all-caps Small font.
    public static let capsSmall: Self = .init(name: boldFont, size: 11, style: .caption2, textCase: .uppercase)

    /// The`PixelFont` large Super Small font.
    public static let superSmall1: Self = .init(name: boldFont, size: 11, style: .caption2, textCase: nil)
    /// The `PixelFont` medium Super Small font.
    public static let superSmall2: Self = .init(name: mediumFont, size: 10, style: .caption2, textCase: nil)
    /// The `PixelFont` small Super Small font.
    public static let superSmall3: Self = .init(name: regularFont, size: 10, style: .caption2, textCase: nil)
    /// The `PixelFont` slightly smaller or lighter font weight Super Small font.
    public static let superSmall4: Self = .init(name: lightFont, size: 10, style: .caption2, textCase: nil)
    /// The `PixelFont` all-caps Super Small font.
    public static let capsSuperSmall: Self = .init(name: boldFont, size: 9, style: .caption2, textCase: .uppercase)
}
