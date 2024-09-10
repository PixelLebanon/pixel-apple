//
//  View+Visibility.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

enum Visibility {

    case hidden
    case remove
}

extension View {

    @ViewBuilder
    func visibility(_ visibility: Visibility, condition: Bool) -> some View {
        if condition {
            if visibility == .hidden {
                self.hidden()
            }
        } else {
            self
        }
    }
}
