//
//  UIPixelText.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 03/09/2024.
//  Copyright © 2024 Pixel. All rights reserved.
//

import UIKit

@available(*, unavailable)
public class UIPixelText: UIView {

    private let view: UIView = .init()

    public init() {
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
