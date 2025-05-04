//
//  Satoshi.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import Foundation

struct Satoshi {

    static let light: Self = .init(name: "Satoshi-Light")
    static let lightItalic: Self = .init(name: "Satoshi-LightItalic")
    static let regular: Self = .init(name: "Satoshi-Regular")
    static let regularItalic: Self = .init(name: "Satoshi-RegularItalic")
    static let medium: Self = .init(name: "Satoshi-Medium")
    static let mediumItalic: Self = .init(name: "Satoshi-MediumItalic")
    static let bold: Self = .init(name: "Satoshi-Bold")
    static let boldItalic: Self = .init(name: "Satoshi-BoldItalic")
    static let black: Self = .init(name: "Satoshi-Black")
    static let blackItalic: Self = .init(name: "Satoshi-BlackItalic")

    let name: String

    private init(name: String) {
        self.name = name

        do {
            try registerFont(path: .folder + name)
        } catch {
            fatalError("Failed to register font: \(name) with error: \(error)")
        }
    }
}

private extension String {

    static let folder: Self = "Satoshi/"
}
