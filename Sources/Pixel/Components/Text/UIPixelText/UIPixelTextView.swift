//
//  UIPixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 03/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SnapKit
import SwiftUI

public class UIPixelTextView<Theme: PixelThemeProtocol>: UIView {

    private lazy var view: UIView = {
        let view: UIView = UIHostingConfiguration {
            PixelTextView(configuration: configuration)
                .environment(themeManager)
        }
        .makeContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    public let configuration: PixelTextView<Theme>.Configuration

    private let themeManager: PixelThemeManager<Theme>

    public init(
        alignment: TextAlignment? = nil,
        colorStyle: PixelColorStyle<Theme>? = nil,
        fontStyle: PixelFontStyle<Theme>? = nil,
        lineLimit: Int? = nil,
        text: String,
        themeManager: PixelThemeManager<Theme>
    ) {
        self.configuration = .init(
            alignment: alignment,
            colorStyle: colorStyle,
            fontStyle: fontStyle,
            lineLimit: lineLimit,
            text: text
        )
        self.themeManager = themeManager

        super.init(frame: .zero)

        setup()
    }

    public init(
        configuration: PixelTextView<Theme>.Configuration,
        themeManager: PixelThemeManager<Theme>
    ) {
        self.configuration = configuration
        self.themeManager = themeManager

        super.init(frame: .zero)

        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        addSubview(view)

        layout()
    }

    private func layout() {
        view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

#Preview("Implicit") {
    UIPixelText(text: "Hello World", themeManager: PixelThemeManager())
}

#Preview("Explicit") {
    UIPixelText(
        configuration: .init(
            alignment: .center,
            colorStyle: .solid(Pixel.Dark.onBackground),
            fontStyle: .solid(PixelFont.superDino1),
            text: "Hello World"
        ),
        themeManager: PixelThemeManager()
    )
}
