//
//  View+Visibility.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 15/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A type defining the different visiblity states for a view.
enum Visibility {

    /// The view is hidden but still takes up space in the layout.
    case hidden
    /// The view is removed from the layout.
    case remove
}

extension View {

    /// Sets the visibility of a view based on the condition.
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
