//
//  PixelButton.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/04/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelButton: View {

    public enum Icon {

        case left(_ resource: ImageResource)
        case right(_ resource: ImageResource)
        case both(left: ImageResource, right: ImageResource)
    }

    public enum Shape {

        case square
        case round
        case capsule
    }

    public enum Size {

        case small
        case medium
        case big
    }

    public enum State {

        case active
        case disabled
    }

    public enum Style {

        case fill
        case soft
        case outline
    }

    public enum Width {

        case hug
        case fill
    }

    public struct Configuration {
    }

    let text: String

    let icon: Self.Icon?
    let shape: Self.Shape
    let size: Self.Size
    let state: Self.State
    let style: Self.Style
    let width: Self.Width

    public init(_ text: String) {
        self.text = text
        self.icon = nil
        self.shape = .round
        self.size = .medium
        self.state = .active
        self.style = .fill
        self.width = .hug
    }

//    init(text: String, icon: Self.Icon?) {
//        self.text = text
//        self._icon = icon
//    }

    public var body: some View {
        PixelText("Test")
            .configure(
                .init(
                    alignment: .center,
                    colorStyle: .solid(.lightColorScheme.onBackground),
                    fontStyle: .solid(.satoshiTypography.dino1),
                    lineLimit: nil,
                    lineSpacing: nil,
                    textCase: nil
                )
            )
    }
}

#Preview {
    PixelButton("Hello World")
}
