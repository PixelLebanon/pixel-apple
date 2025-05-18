//
//  PixelButton+Properties.swift
//  Pixel
//
//  Created by Khaled Chehabeddine on 14/05/2025.
//  Copyright © 2025 Pixel. All rights reserved.
//

import SwiftUI

public extension PixelButton {

    enum Icon {

        public enum SystemLocation {

            case leading(_ systemName: String, weight: Font.Weight? = nil)
            case trailing(_ systemName: String, weight: Font.Weight? = nil)
            case both(
                leading: String,
                leadingWeight: Font.Weight? = nil,
                trailing: String,
                trailingWeight: Font.Weight? = nil
            )
        }

        public enum CustomLocation {

            case leading(_ resource: ImageResource)
            case trailing(_ resource: ImageResource)
            case both(leading: ImageResource, trailing: ImageResource)
        }

        case system(_ location: SystemLocation)
        case custom(_ location: CustomLocation)
    }

    enum Shape {

        case square
        case round
        case capsule
    }

    enum Size {

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

        // TODO: Make this property more dynamic (no magic numbers)
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

        func pixelFontStyle(theme: AnyPixelTheme, isItalic: Bool, weight: Font.Weight) -> PixelFontStyle {
            switch self {
            case .small: .solid(theme.typography.small1.italic(isItalic).weight(weight))
            case .medium: .solid(theme.typography.medium2.italic(isItalic).weight(weight))
            case .big: .solid(theme.typography.big4.italic(isItalic).weight(weight))
            }
        }
    }

    enum Style {

        case fill
        case soft
        case outline
    }

    enum Width {

        case hug
        case fill
    }
}
