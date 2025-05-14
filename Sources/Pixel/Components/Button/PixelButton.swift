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

        case leading(_ resource: ImageResource)
        case trailing(_ resource: ImageResource)
        case both(leading: ImageResource, trailing: ImageResource)
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

        var cornerRadius: CGFloat {
            switch self {
            case .small: .Pixel.small
            case .medium: .Pixel.medium
            case .big: .Pixel.big
            }
        }

        // swiftlint:disable no_magic_numbers

        var lineWidth: CGFloat {
            switch self {
            case .small: 1
            case .medium: 2
            case .big: 3
            }
        }

        var iconSize: CGFloat {
            switch self {
            case .small: 13
            case .medium: 18
            case .big: 22
            }
        }

        // swiftlint:enable no_magic_numbers

        var horizontalSpacing: CGFloat {
            switch self {
            case .small: .Pixel.p7
            case .medium: .Pixel.p9
            case .big: .Pixel.p11
            }
        }

        var textSpacing: CGFloat {
            switch self {
            case .small: .Pixel.p4
            case .medium: .Pixel.p5
            case .big: .Pixel.p7
            }
        }

        var verticalSpacing: CGFloat {
            switch self {
            case .small: .Pixel.p4
            case .medium: .Pixel.p5
            case .big: .Pixel.p6
            }
        }
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

        public let backgroundColorStyle: PixelColorStyle
        public let foregroundColorStyle: PixelColorStyle
        public let icon: Icon?
        public let shape: Shape
        public let size: Size
        public let style: Style
        public let width: Width

        public init(
            backgroundColorStyle: PixelColorStyle,
            foregroundColorStyle: PixelColorStyle,
            icon: Icon?,
            shape: Shape,
            size: Size,
            style: Style,
            width: Width
        ) {
            self.backgroundColorStyle = backgroundColorStyle
            self.foregroundColorStyle = foregroundColorStyle
            self.icon = icon
            self.shape = shape
            self.size = size
            self.style = style
            self.width = width
        }
    }

    @Environment(\.isEnabled) private var _isEnabled: Bool
    @Environment(\.isFocused) private var _isFocused: Bool

    @Environment(\.pixelBackgroundColorStyle) private var _backgroundColorStyle: PixelColorStyle?
    @Environment(\.pixelForegroundColorStyle) private var _foregroundColorStyle: PixelColorStyle?
    @Environment(\.pixelButtonConfiguration) private var _configuration: Configuration?

    @Environment(\.pixelTheme) private var _theme: AnyPixelTheme

    let text: String

    let icon: Icon?
    let shape: Shape
    let size: Size
    let style: Style
    let width: Width

    public init(_ text: String) {
        self.text = text
        self.icon = nil
        self.shape = .round
        self.size = .medium
        self.style = .fill
        self.width = .hug
    }

    public var body: some View {
        HStack(spacing: textSpacing) {
            leadingIcon

            PixelText(text)
                .lineLimit(1)

            trailingIcon
        }
        .background(background)
        .clipShape(clipShape)
    }

    private var backgroundStyle: Color {
        _configuration?.backgroundColorStyle(isFocused: _isFocused, theme: _theme)
        ?? _backgroundColorStyle?(isFocused: _isFocused, theme: _theme)
        ?? _theme.colorScheme.neutral
    }

    private var foregroundStyle: Color {
        _configuration?.foregroundColorStyle(isFocused: _isFocused, theme: _theme)
        ?? _foregroundColorStyle?(isFocused: _isFocused, theme: _theme)
        ?? _theme.colorScheme.onNeutral
    }

    private var clipShape: AnyShape {
        let cornerRadius: CGFloat = _configuration?.size.cornerRadius ?? size.cornerRadius
        let shape: Shape = _configuration?.shape ?? shape

        return switch shape {
        case .square: AnyShape(Rectangle())
        case .round: AnyShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .capsule: AnyShape(Capsule())
        }
    }

    private var horizontalSpacing: CGFloat {
        _configuration?.size.horizontalSpacing ?? size.horizontalSpacing
    }

    private var textSpacing: CGFloat {
        _configuration?.size.textSpacing ?? size.textSpacing
    }

    private var verticalSpacing: CGFloat {
        _configuration?.size.verticalSpacing ?? size.verticalSpacing
    }

    @ViewBuilder private var background: some View {
        let lineWidth: CGFloat = _configuration?.size.lineWidth ?? size.lineWidth
        let style: Style = _configuration?.style ?? style

        switch style {
        case .fill, .soft: clipShape.fill(backgroundStyle)
        case .outline: clipShape.stroke(backgroundStyle, lineWidth: lineWidth)
        }
    }

    @ViewBuilder private var leadingIcon: some View {
        let iconSize: CGFloat = _configuration?.size.iconSize ?? size.iconSize

        if case let .leading(resource) = icon {
            Image(resource)
                .renderingMode(.template)
                .resizable()
                .accessibilityLabel(Text(""))
                .foregroundStyle(foregroundStyle)
                .frame(width: iconSize, height: iconSize)
        } else if case let .both(resource, _) = icon {
            Image(resource)
                .renderingMode(.template)
                .resizable()
                .foregroundStyle(foregroundStyle)
                .frame(width: iconSize, height: iconSize)
        }
    }

    @ViewBuilder private var trailingIcon: some View {
        let iconSize: CGFloat = _configuration?.size.iconSize ?? size.iconSize

        if case let .trailing(resource) = icon {
            Image(resource)
                .renderingMode(.template)
                .resizable()
                .foregroundStyle(foregroundStyle)
                .frame(width: iconSize, height: iconSize)
        } else if case let .both(_, resource) = icon {
            Image(resource)
                .renderingMode(.template)
                .resizable()
                .foregroundStyle(foregroundStyle)
                .frame(width: iconSize, height: iconSize)
        }
    }
}

#Preview {
    PixelButton("Hello World")
}
