//
//  PixelTypography.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type that defines the typography used in the Pixel design system.
///
/// `PixelTypography` standardizes the roles of fonts, allowing Pixel to easily adapt to custom themes defined by
/// clients when dealing with text-sensitive content.
///
/// Conforming to this protocol would help improve font accessibility and consistency throughout your app.
public protocol PixelTypography {

    /// The `PixelFontProtocol` implementation associated with this typography.
    associatedtype FontProtocol: PixelFontProtocol

    /// The large Super Dino category font.
    static var superDino1: FontProtocol { get }
    /// The medium Super Dino category font.
    static var superDino2: FontProtocol { get }
    /// The small Super Dino category font.
    static var superDino3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Super Dino category font.
    static var superDino4: FontProtocol { get }
    /// The all-caps Super Dino category font.
    static var capsSuperDino: FontProtocol { get }

    /// The large Dino category font.
    static var dino1: FontProtocol { get }
    /// The medium Dino category font.
    static var dino2: FontProtocol { get }
    /// The small Dino category font.
    static var dino3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Dino category font.
    static var dino4: FontProtocol { get }
    /// The all-caps Dino category font.
    static var capsDino: FontProtocol { get }

    /// The large Big category font.
    static var big1: FontProtocol { get }
    /// The medium Big category font.
    static var big2: FontProtocol { get }
    /// The small Big category font.
    static var big3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Big category font.
    static var big4: FontProtocol { get }
    /// The all-caps Big category font.
    static var capsBig: FontProtocol { get }

    /// The large Medium category font.
    static var medium1: FontProtocol { get }
    /// The medium Medium category font.
    static var medium2: FontProtocol { get }
    /// The small Medium category font.
    static var medium3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Medium category font.
    static var medium4: FontProtocol { get }
    /// The all-caps Medium category font.
    static var capsMedium: FontProtocol { get }

    /// The large Small category font.
    static var small1: FontProtocol { get }
    /// The medium Small category font.
    static var small2: FontProtocol { get }
    /// The small Small category font.
    static var small3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Small category font.
    static var small4: FontProtocol { get }
    /// The all-caps Small category font.
    static var capsSmall: FontProtocol { get }

    /// The large Super Small category font.
    static var superSmall1: FontProtocol { get }
    /// The medium Super Small category font.
    static var superSmall2: FontProtocol { get }
    /// The small Super Small category font.
    static var superSmall3: FontProtocol { get }
    /// The slightly smaller or lighter font weight Super Small category font.
    static var superSmall4: FontProtocol { get }
    /// The all-caps Super Small category font.
    static var capsSuperSmall: FontProtocol { get }
}
