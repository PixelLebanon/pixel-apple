// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: .module,
    platforms: [.iOS(.v17)],
    products: [
        .pixel
    ],
    dependencies: [
        // MARK: Plugins
        .swiftLint
    ],
    targets: [
        .pixel,
        .pixelTest
    ]
)

private extension Package.Dependency {

    static let swiftLint: Package.Dependency = package(url: "https://github.com/realm/SwiftLint.git", exact: "0.57.0")
}

private extension Product {

    static let pixel: Product = .library(name: .pixel, targets: [.pixel])
}

private extension String {

    // MARK: Module
    static let module: Self = "Pixel"

    // MARK: Submodules
    static let pixel: Self = "Pixel"

    // MARK: Packages

    // MARK: Plugins
    static let swiftLint: Self = "SwiftLintBuildToolPlugin"
    static let swiftLintPackage: Self = "SwiftLint"

    var test: Self { "\(self)Tests" }
}

private extension Target {

    static let pixel: Target = target(name: .pixel, plugins: [.swiftLint])
    static let pixelTest: Target = testTarget(name: .pixel.test, dependencies: [.pixel], plugins: [.swiftLint])
}

private extension Target.Dependency {

    // MARK: Submodules
    static let pixel: Self = byName(name: .pixel)

    // MARK: Packages
}

private extension Target.PluginUsage {

    static let swiftLint: Self = plugin(name: .swiftLint, package: .swiftLintPackage)
}
