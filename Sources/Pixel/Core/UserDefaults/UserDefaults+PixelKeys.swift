//
//  UserDefaults+PixelKeys.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 27/08/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

@PixelUserDefaultsActor
public extension UserDefaults {

    /// A private default JSON decoder to decode data stored in `UserDefaults`.
    private static let decoder: JSONDecoder = .init()
    /// A private default JSON encoder to encode `PixelTheme` values into `Data` and store them in `UserDefaults`.
    private static let enconder: JSONEncoder = .init()

    /// A computed property to retrieve and store the user's `PixelTheme` value from `UserDefaults`. The data is stored
    /// in the key `Pixel.Key.theme`.
    ///
    /// If no data is available in the key, returns `nil`.
    ///
    /// If decoding the data stored in the key fails, returns the default value of `PixelTheme`.
    ///
    /// If encoding the new value fails, it ignores saving it to `UserDefaults` and the stored value is unchanged.
    var pixelTheme: PixelTheme? {
        get {
            guard let data: Data = UserDefaults.standard.data(forKey: Pixel.Key.theme) else { return nil }

            do {
                return try Self.decoder.decode(PixelTheme.self, from: data)
            } catch {
                print("UserDefaults+PixelKeys: Could not decode PixelTheme, returning nil.")
                return nil
            }
        }
        set {
            do {
                let data: Data = try Self.enconder.encode(newValue)
                UserDefaults.standard.set(data, forKey: Pixel.Key.theme)
            } catch {
                print("UserDefaults+PixelKeys: Could not encode PixelTheme, failed to save new value.")
            }
        }
    }
}
