//
//  AnyPixelFont.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/10/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

private struct AnyPixelFontBox: Hashable, Sendable {

    static func == (lhs: Self, rhs: Self) -> Bool {
        guard type(of: lhs.base) == type(of: rhs.base),
              let lhsHashable: AnyHashable = lhs.base as? AnyHashable,
              let rhsHashable: AnyHashable = rhs.base as? AnyHashable else { return false }

        return lhsHashable == rhsHashable
    }

    let base: any PixelFont

    func hash(into hasher: inout Hasher) {
        hasher.combine(base)
    }

    func italic(_ isActive: Bool) -> Self {
        .init(base: base.italic(isActive))
    }

    func weight(_ weight: Font.Weight) -> Self {
        .init(base: base.weight(weight))
    }
}

public struct AnyPixelFont: PixelFont {

    private let box: AnyPixelFontBox

    public init<F: PixelFont>(_ font: F) {
        self.box = AnyPixelFontBox(base: font)
    }

    private init(_ box: AnyPixelFontBox) {
        self.box = box
    }

    public var kerning: CGFloat {
        box.base.kerning
    }

    public var size: CGFloat {
        box.base.size
    }

    public var style: Font.TextStyle {
        box.base.style
    }

    public var weight: Font.Weight {
        box.base.weight
    }

    public var isItalic: Bool {
        box.base.isItalic
    }

    public var font: Font {
        box.base.font
    }

    public func italic(_ italic: Bool = true) -> Self {
        .init(box.italic(italic))
    }

    public func weight(_ weight: Font.Weight) -> Self {
        .init(box.weight(weight))
    }
}
