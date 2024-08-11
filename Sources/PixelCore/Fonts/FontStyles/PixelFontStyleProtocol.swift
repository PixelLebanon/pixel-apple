//
//  PixelFontStyleProtocol.swift
//  PixelCore
//
//  Created by Khaled Chehabeddine on 27/07/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

public protocol PixelFontStyleProtocol {

    associatedtype FontProtocol: PixelFontProtocol

    var pixelFont: FontProtocol { get }
}
