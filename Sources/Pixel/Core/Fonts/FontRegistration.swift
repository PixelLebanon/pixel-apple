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

/// Registers a custom font from the specified path in the module's bundle.
///
/// - Parameter path: A `String` representing the name of the font asset to be registered.
///
/// - Note: The font asset's name defined in the assets catalogue usually must match the same name as the font file. If it was
/// installed through the Font Book app, you can use it to find its Postscript name.
/// - Throws: An error of type `RegistrationError` on failure.
func registerFont(path: String) throws {
    enum RegistrationError: Error {

        case failedFontRegistration, invalidPath
    }

    guard let asset: NSDataAsset = .init(name: path, bundle: .module) else { throw RegistrationError.invalidPath }
    guard let provider: CGDataProvider = .init(data: asset.data as NSData),
          let font: CGFont = .init(provider),
          CTFontManagerRegisterGraphicsFont(font, nil) else { throw RegistrationError.failedFontRegistration }
}
