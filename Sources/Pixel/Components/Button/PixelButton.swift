//
//  PixelButton.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/04/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelButton: View {

    public var body: some View {
        VStack(spacing: 20) {
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

            PixelText("Test")
                .configure(
                    .init(
                        alignment: .center,
                        colorStyle: .solid(.lightColorScheme.onBackground),
                        fontStyle: .solid(.satoshiTypography.big1),
                        lineLimit: nil,
                        lineSpacing: nil,
                        textCase: nil
                    )
                )

            PixelText("Test")
                .configure(
                    .init(
                        alignment: .center,
                        colorStyle: .solid(.lightColorScheme.onBackground),
                        fontStyle: .solid(.satoshiTypography.medium1),
                        lineLimit: nil,
                        lineSpacing: nil,
                        textCase: nil
                    )
                )
        }
    }
}

#Preview {
    PixelButton()
}
