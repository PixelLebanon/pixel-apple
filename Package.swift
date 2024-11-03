// swift-tools-version: 6.0

@preconcurrency import PackageDescription

let package: Package = .init(
    name: .name,
    platforms: [.iOS(.v17)],
    products: [.pixel],
    dependencies: [.swiftLint],
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

    // MARK: Package Name
    static let name: Self = "Pixel"

    // MARK: Modules
    static let pixel: Self = "Pixel"

    // MARK: Packages

    // MARK: Plugins
    static let swiftLint: Self = "SwiftLintBuildToolPlugin"
    static let swiftLintPackage: Self = "SwiftLint"

    var test: Self {
        "\(self)Tests"
    }
}

private extension Target {

    static let pixel: Target = target(name: .pixel, plugins: [.swiftLint])
    static let pixelTest: Target = testTarget(name: .pixel.test, dependencies: [.pixel], plugins: [.swiftLint])
}

private extension Target.Dependency {

    // MARK: Modules
    static let pixel: Self = byName(name: .pixel)

    // MARK: Packages
}

private extension Target.PluginUsage {

    static let swiftLint: Self = plugin(name: .swiftLint, package: .swiftLintPackage)
}
