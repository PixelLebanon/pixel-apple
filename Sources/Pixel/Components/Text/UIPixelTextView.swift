//
//  UIPixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 03/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

public class UIPixelText: UIView {

    private lazy var view: UIView = {
        let view: UIView = UIHostingConfiguration {
//            if let text: String = configuration.text {
//                PixelText(text)
//                    .configuration(configuration)
//            }
        }
        .makeContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    public let configuration: PixelText.Configuration

    private let theme: PixelTheme

//    public init(
//        alignment: TextAlignment? = nil,
//        colorStyle: PixelColorStyle? = nil,
//        fontStyle: PixelFontStyle? = nil,
//        lineLimit: Int? = nil,
//        text: String,
//        theme: PixelTheme
//    ) {
//        self.configuration = .init(
//            alignment: alignment,
//            colorStyle: colorStyle,
//            fontStyle: fontStyle,
//            lineLimit: lineLimit,
//            text: text
//        )
//        self.themeManager = themeManager
//
//        super.init(frame: .zero)
//
//        setup()
//    }

    public init(
        configuration: PixelText.Configuration,
        theme: PixelTheme
    ) {
        self.configuration = configuration
        self.theme = theme

        super.init(frame: .zero)

        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        addSubview(view)

        layout()
    }

    private func layout() {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.topAnchor),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
}

#Preview("Implicit") {
    EmptyView()
}

#Preview("Explicit") {
    UIPixelText(
        configuration: .init(
//            text: "Hello World",
            alignment: .center,
            colorStyle: .solid(PixelColorScheme.light.onBackground),
            fontStyle: .solid(PixelTypography.sfPro.superDino1)
        ),
        theme: .light
    )
}
