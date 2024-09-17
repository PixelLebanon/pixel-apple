//
//  UIPixelTextView.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 03/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import SwiftUI

/// A view displaying a UIKit styled text from the Pixel Design System.
///
/// The view can be initialized either explicitly or implicitly depending on the app usecase.
public class UIPixelTextView<Theme: PixelThemeProtocol>: UIView {

    /// The UIView hosting the `PixelTextView` by wrapping it around a `UIHostingConfiguration`.
    private lazy var view: UIView = {
        let view: UIView = UIHostingConfiguration {
            PixelTextView(configuration: configuration)
                .environment(themeManager)
        }
        .makeContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    /// The configuration object observing the view's current styling properties.
    public let configuration: PixelTextView<Theme>.Configuration

    /// The theme manager of the view.
    private let themeManager: PixelThemeManager<Theme>

    /// Initialize the view implicitly.
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

    /// Initialize the view explicitly.
    public init(
        configuration: PixelTextView<Theme>.Configuration,
        themeManager: PixelThemeManager<Theme>
    ) {
        self.configuration = configuration
        self.themeManager = themeManager

        super.init(frame: .zero)

        setup()
    }

    /// Required initializer for `NSCoder`. Not implemented.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Create the view heirarchy and call all helper functions to set up the view.
    private func setup() {
        addSubview(view)

        layout()
    }

    /// Layout the view by bounding it to the edges of the parent `UIView` frame.
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
