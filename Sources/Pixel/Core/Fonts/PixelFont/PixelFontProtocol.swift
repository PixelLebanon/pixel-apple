//
//  PixelFontProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public protocol PixelFontProtocol: Equatable {

    static var empty: Self { get }

    var kerning: CGFloat { get }
    var name: String { get }
    var size: CGFloat { get }
    var style: Font.TextStyle { get }
    var textCase: Text.Case? { get }

    var font: Font { get }
    var uiFont: UIFont { get }
}
