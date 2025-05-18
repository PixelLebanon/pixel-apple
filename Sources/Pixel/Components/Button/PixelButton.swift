//
//  PixelButton.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 26/04/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public struct PixelButton: View {

    @Environment(\.isEnabled) private var _isEnabled: Bool
    @Environment(\.isFocused) private var _isFocused: Bool

    @Environment(\.backgroundPixelColorStyle) private var _backgroundColorStyle: PixelColorStyle?
    @Environment(\.foregroundPixelColorStyle) private var _foregroundColorStyle: PixelColorStyle?

    @Environment(\.pixelButtonConfiguration) private var _configuration: Configuration?

    @Environment(\.pixelTheme) private var _theme: AnyPixelTheme

    let text: String

    let icon: Icon?
    let shape: Shape
    let size: Size
    let style: Style
    let weight: Font.Weight
    let width: Width

    let isItalic: Bool

    public init(_ text: String) {
        self.text = text
        self.icon = nil
        self.shape = .round
        self.size = .medium
        self.style = .fill
        self.weight = .regular
        self.width = .hug
        self.isItalic = false
    }

    public var body: some View {
        HStack(spacing: textSpacing) {
            leadingIcon

            PixelText(text)
                .lineLimit(1)
                .foregroundPixelColorStyle(foregroundPixelColorStyle)
                .pixelFontStyle(pixelFontStyle)

            trailingIcon
        }
        .maxWidth(maxWidth)
        .padding(.horizontal, horizontalSpacing)
        .padding(.vertical, verticalSpacing)
        .background(background)
        .clipShape(clipShape)
    }

    private var backgroundStyle: Color {
        _configuration?.backgroundColorStyle(isFocused: _isFocused, theme: _theme)
        ?? _backgroundColorStyle?(isFocused: _isFocused, theme: _theme)
        ?? _theme.colorScheme.neutral
    }

    private var defaultForegroundStyle: Color {
        _theme.colorScheme.onNeutral
    }

    private var foregroundPixelColorStyle: PixelColorStyle {
        _configuration?.foregroundColorStyle
        ?? _foregroundColorStyle
        ?? .solid(defaultForegroundStyle)
    }

    private var foregroundStyle: Color {
        _configuration?.foregroundColorStyle(isFocused: _isFocused, theme: _theme)
        ?? _foregroundColorStyle?(isFocused: _isFocused, theme: _theme)
        ?? defaultForegroundStyle
    }

    private var pixelFontStyle: PixelFontStyle {
        let weight: Font.Weight = _configuration?.weight ?? weight

        return _configuration?.size.pixelFontStyle(theme: _theme, weight: weight)
        ?? size.pixelFontStyle(theme: _theme, weight: weight)
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

    private var maxWidth: Width {
        _configuration?.width ?? width
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
        let icon: Icon? = _configuration?.icon ?? icon

        switch icon {
        case let .system(location):
            switch location {
            case let .leading(systemName, weight), let .both(systemName, weight, _, _):
                systemIconImage(systemName, weight: weight)
            case .trailing: EmptyView()
            }
        case let .custom(location):
            switch location {
            case let .leading(resource), let .both(resource, _): iconImage(resource)
            case .trailing: EmptyView()
            }
        case .none: EmptyView()
        }
    }

    @ViewBuilder private var trailingIcon: some View {
        let icon: Icon? = _configuration?.icon ?? icon

        switch icon {
        case let .system(location):
            switch location {
            case let .trailing(systemName, weight), let .both(_, _, systemName, weight):
                systemIconImage(systemName, weight: weight)
            case .leading: EmptyView()
            }
        case let .custom(location):
            switch location {
            case let .trailing(resource), let .both(_, resource): iconImage(resource)
            case .leading: EmptyView()
            }
        case .none: EmptyView()
        }
    }

    private func systemIconImage(_ systemName: String, weight: Font.Weight?) -> some View {
        let iconSize: CGFloat = _configuration?.size.iconSize ?? size.iconSize

        return Image(systemName: systemName)
            .renderingMode(.template)
            .resizable()
            .accessibilityHidden(true)
            .fontWeight(weight)
            .foregroundStyle(foregroundStyle)
            .frame(width: iconSize, height: iconSize)
    }

    private func iconImage(_ resource: ImageResource) -> some View {
        let iconSize: CGFloat = _configuration?.size.iconSize ?? size.iconSize

        return Image(resource)
            .renderingMode(.template)
            .resizable()
            .accessibilityHidden(true)
            .foregroundStyle(foregroundStyle)
            .frame(width: iconSize, height: iconSize)
    }
}

private extension View {

    @ViewBuilder
    func maxWidth(_ maxWidth: PixelButton.Width) -> some View {
        switch maxWidth {
        case .hug: self
        case .fill: self.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    VStack(spacing: .Pixel.p10) {
        PixelButton("Button")
            .icon(.system(.leading("heart")))
            .size(.big)

        PixelButton("Button")
            .size(.medium)
            .configure(
                .init(
                    backgroundColorStyle: .solid(PixelTheme.light.colorScheme.neutral),
                    foregroundColorStyle: .solid(PixelTheme.light.colorScheme.onNeutral),
                    icon: .system(.trailing("pencil", weight: .black)),
                    shape: .capsule,
                    size: .big,
                    style: .soft,
                    weight: .black,
                    width: .fill
                )
            )

        PixelButton("Button")
            .size(.small)
            .weight(.black)
    }
}
