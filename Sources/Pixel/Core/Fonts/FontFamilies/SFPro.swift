//
//  SFPro.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/05/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A type that provides access to the various font weights of the SF Pro Text font family.
///
/// Upon initialization, each font weight is automatically registered so it can instantly be used in the module.
struct SFPro {

    /// The ultralight weight of the SF Pro Text font.
    static let ultralight: Self = .init(name: "SF-Pro-Text-Ultralight")
    /// The thin weight of the SF Pro Text font.
    static let thin: Self = .init(name: "SF-Pro-Text-Thin")
    /// The light weight of the SF Pro Text font.
    static let light: Self = .init(name: "SF-Pro-Text-Light")
    /// The regular weight of the SF Pro Text font.
    static let regular: Self = .init(name: "SF-Pro-Text-Regular")
    /// The medium weight of the SF Pro Text font.
    static let medium: Self = .init(name: "SF-Pro-Text-Medium")
    /// The semibold weight of the SF Pro Text font.
    static let semibold: Self = .init(name: "SF-Pro-Text-Semibold")
    /// The bold weight of the SF Pro Text font.
    static let bold: Self = .init(name: "SF-Pro-Text-Bold")
    /// The heavy weight of the SF Pro Text font.
    static let heavy: Self = .init(name: "SF-Pro-Text-Heavy")
    /// The black weight of the SF Pro Text font.
    static let black: Self = .init(name: "SF-Pro-Text-Black")

    /// The font file name attached to the type's font weight.
    let name: String

    /// Initializes and registers a new font with the given name so it can instantly be used in the module.
    ///
    /// - Parameter name: The name of the font's file that must also match its Postscript name.
    ///
    /// - Note: The fonts must be included in the application's bundle within the "SF Pro" directory for the
    /// `registerFont` function to load and register them.
    private init(name: String) {
        self.name = name

        do {
            try registerFont(path: .sfProFolder + name)
        } catch {
            fatalError("Failed to register font: \(name) with error: \(error)")
        }
    }
}

private extension String {

    /// The directory in the bundle where the SF Pro Text fonts are stored.
    static let sfProFolder: Self = "SF Pro/"
}
