// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: .module,
    platforms: [.iOS(.v17)],
    products: [
        .pixelProduct
    ],
    dependencies: [],
    targets: [
        .pixelTarget,
        .pixelTestTarget
    ]
)

private extension Package.Dependency {
}

private extension Product {

    static let pixelProduct: Product = .library(name: .pixel, targets: [.pixel])
}

private extension String {

    // MARK: Module
    static let module: Self = "Pixel"

    // MARK: Submodules
    static let pixel: Self = "Pixel"

    // MARK: Packages

    // MARK: Plugins
    static let swiftLint: Self = "SwiftLint"
    static let swiftLintPlugin: Self = "SwiftLintBuildToolPlugin"

    var test: Self { "\(self)Tests" }
}

private extension Target {

    static let pixelTarget: Target = target(name: .pixel)
    static let pixelTestTarget: Target = testTarget(name: .pixel.test, dependencies: [.pixelDependency])
}

private extension Target.Dependency {

    // MARK: Submodules
    static let pixelDependency: Self = byName(name: .pixel)

    // MARK: Packages
}

private extension Target.PluginUsage {
}
