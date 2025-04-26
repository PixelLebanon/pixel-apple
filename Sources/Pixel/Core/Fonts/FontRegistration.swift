//
//  FontRegistration.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 18/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import CoreGraphics
import CoreText
import UIKit

enum RegistrationError: Error {

    case failedFontRegistration, invalidPath
}

func registerFont(path: String) throws(RegistrationError) {
    guard let asset: NSDataAsset = .init(name: path, bundle: .module) else { throw .invalidPath }
    guard let provider: CGDataProvider = .init(data: asset.data as CFData),
          let font: CGFont = .init(provider),
          CTFontManagerRegisterGraphicsFont(font, nil) == true else { throw .failedFontRegistration }
}
