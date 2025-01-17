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
    static let regular: Self = .init(name: "Satoshi-Regular")
    static let medium: Self = .init(name: "Satoshi-Medium")
    static let bold: Self = .init(name: "Satoshi-Bold")
    static let black: Self = .init(name: "Satoshi-Black")

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
