//
//  PixelUserDefaultsActor.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 01/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import Foundation

/// A global actor to serialize access to `UserDefaults` data from the Pixel design system.
@globalActor
public final actor PixelUserDefaultsActor: GlobalActor {

    /// The shared singleton instance of the global actor.
    public static let shared: PixelUserDefaultsActor = .init()
}
