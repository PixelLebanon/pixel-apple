//
//  PixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public protocol PixelFont: Hashable, Sendable {

    var kerning: CGFloat { get }
    var size: CGFloat { get }
    var style: Font.TextStyle { get }
    var weight: Font.Weight { get }

    var isItalic: Bool { get }

    var font: Font { get }

    func italic(_ isActive: Bool) -> Self
    func weight(_ weight: Font.Weight) -> Self
}
