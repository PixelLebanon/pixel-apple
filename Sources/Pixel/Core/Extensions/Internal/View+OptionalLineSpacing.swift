//
//  View+OptionalLineSpacing.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 17/01/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

extension View {

    @ViewBuilder
    func lineSpacing(_ lineSpacing: CGFloat?) -> some View {
        if let lineSpacing {
            self.lineSpacing(lineSpacing)
        } else {
            self
        }
    }
}
