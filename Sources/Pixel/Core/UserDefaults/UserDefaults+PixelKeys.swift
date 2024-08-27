//
//  UserDefaults+PixelKeys.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

extension UserDefaults {

    private static let decoder: JSONDecoder = .init()
    private static let enconder: JSONEncoder = .init()

    var pixelTheme: PixelTheme? {
        get {
            guard let data: Data = UserDefaults.standard.data(forKey: PixelKeys.theme) else { return nil }

            do {
                let pixelTheme: PixelTheme = try Self.decoder.decode(PixelTheme.self, from: data)
                return pixelTheme
            } catch {
                print("UserDefaults+PixelKeys: Could not decode PixelTheme, returning default value.")
                return .defaultValue
            }
        }
        set {
            do {
                let data: Data = try Self.enconder.encode(newValue)
                UserDefaults.standard.set(data, forKey: PixelKeys.theme)
            } catch {
                print("UserDefaults+PixelKeys: Could not encode PixelTheme, failed to save new value.")
            }
        }
    }
}
