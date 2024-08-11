// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: .module,
    platforms: [.iOS(.v16)],
    products: [
        .pixelProduct
    ],
    dependencies: [],
    targets: [
        .pixelTarget,
        .pixelTestTarget,

        .pixelCoreTarget
    ]
)

private extension Package.Dependency {
}

private extension Product {

    static let pixelProduct: Product = .library(name: .pixel, targets: [.pixel])
}

private extension String {

    // MARK: Module
    static let module: String = "Pixel"

    // MARK: Submodules
    static let pixel: String = "Pixel"
    static let pixelCore: String = "PixelCore"

    // MARK: Packages

    // MARK: Plugins
    static let swiftLint: String = "SwiftLint"
    static let swiftLintPlugin: String = "SwiftLintBuildToolPlugin"

    var testTarget: String { "\(self)Tests" }
}

private extension SupportedPlatform {

    static let iOS: SupportedPlatform = .iOS(.v17)
}

private extension Target {

    static let pixelTarget: Target = target(name: .pixel)
    static let pixelTestTarget: Target = testTarget(name: .pixel.testTarget, dependencies: [.pixelDependency])
}

private extension Target.Dependency {

    // MARK: Submodules
    static let pixelDependency: Target.Dependency = byName(name: .pixel)
    static let pixelCoreDependency: Target.Dependency = byName(name: .pixelCore)

    // MARK: Packages
}

private extension Target.PluginUsage {
}
