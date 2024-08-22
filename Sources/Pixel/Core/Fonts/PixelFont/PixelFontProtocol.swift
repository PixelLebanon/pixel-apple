//
//  PixelFontProtocol.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public protocol PixelFontProtocol {

    static var empty: Self { get }

    var isCaps: Bool { get }
    var letterSpacing: CGFloat { get }
    var name: String { get }
    var size: CGFloat { get }
    var style: Font.TextStyle { get }

    var font: Font { get }
    var uiFont: UIFont { get }
}
