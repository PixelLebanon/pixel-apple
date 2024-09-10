// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: .module,
    platforms: [.iOS],
    products: [
        .pixelProduct
    ],
    dependencies: [
        .snapKitPackageDependency
    ],
    targets: [
        .pixelTarget,
        .pixelTestTarget
    ]
)

private extension Package.Dependency {

    static let snapKitPackageDependency: Package.Dependency = package(
        url: "https://github.com/SnapKit/SnapKit.git",
        exact: "5.7.1"
    )
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
    static let snapKit: Self = "SnapKit"

    // MARK: Plugins
    static let swiftLint: Self = "SwiftLint"
    static let swiftLintPlugin: Self = "SwiftLintBuildToolPlugin"

    var testTarget: Self { "\(self)Tests" }
}

private extension SupportedPlatform {

    static let iOS: Self = .iOS(.v17)
}

private extension Target {

    static let pixelTarget: Target = target(name: .pixel, dependencies: [.snapKitDependency])
    static let pixelTestTarget: Target = testTarget(name: .pixel.testTarget, dependencies: [.pixelDependency])
}

private extension Target.Dependency {

    // MARK: Submodules
    static let pixelDependency: Self = byName(name: .pixel)

    // MARK: Packages
    static let snapKitDependency: Self = byName(name: .snapKit)
}

private extension Target.PluginUsage {
}
