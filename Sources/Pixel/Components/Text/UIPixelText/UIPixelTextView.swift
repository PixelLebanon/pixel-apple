//
//  UIPixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 03/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SnapKit
import SwiftUI

public class UIPixelTextView<FontProtocol: PixelFontProtocol, Theme: PixelThemeProtocol>: UIView {

    private lazy var view: UIView = {
        let view: UIView = UIHostingConfiguration {
            PixelTextView(configuration: configuration)
        }
        .makeContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let configuration: PixelTextConfiguration<FontProtocol, Theme>

    public convenience init(
        alignment: TextAlignment,
        colorStyle: PixelColorStyle<Theme>,
        fontStyle: PixelFontStyle<FontProtocol, Theme>,
        lineLimit: Int? = nil,
        text: String
    ) {
        self.init(
            configuration: .init(
                alignment: alignment,
                colorStyle: colorStyle.adjustedColorStyle,
                fontStyle: fontStyle,
                lineLimit: lineLimit,
                text: text
            )
        )
    }

    public init(configuration: PixelTextConfiguration<FontProtocol, Theme>) {
        self.configuration = configuration

        super.init(frame: .zero)

        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func update(configuration: PixelTextConfiguration<FontProtocol, Theme>) {
        self.configuration.update(to: configuration)
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

private extension PixelColorStyle {

    var adjustedColorStyle: PixelColorStyle<Theme> {
        switch self {
        case .solid: self
        case .themed(let colors):
            .themed(
                colors: Theme.allCases.reduce(into: [:]) { partialResult, element in
                    partialResult[element] = colors[element] ?? element.colorScheme.onBackground
                }
            )
        case .conditional(let activeColorStyle, let inactiveColorStyle, let condition):
            .conditional(
                activeColorStyle: activeColorStyle.adjustedColorStyle,
                inactiveColorStyle: inactiveColorStyle.adjustedColorStyle,
                condition: condition
            )
        }
    }
}
