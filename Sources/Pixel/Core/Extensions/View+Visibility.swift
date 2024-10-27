//
//  View+Visibility.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

enum Visibility {

    case show
    case hidden
    case remove
}

extension View {

    func visibility(_ visibility: Visibility) -> some View {
        self.environment(\.visibility, visibility)
    }

    @ViewBuilder
    func visibility(is visibility: Visibility) -> some View {
        if case .show = visibility {
            self
        } else if case .hidden = visibility {
            self.hidden()
        }
    }
}
