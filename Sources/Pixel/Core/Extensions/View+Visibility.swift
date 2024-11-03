//
//  View+Visibility.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

enum Visibility {

    case `default`
    case hidden
    case remove
}

extension View {

    @ViewBuilder
    func visibility(_ visibility: Visibility) -> some View {
        if case .default = visibility {
            self
        } else if case .hidden = visibility {
            self.hidden()
        }
    }
}
