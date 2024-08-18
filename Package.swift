// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: .module,
    platforms: [.iOS],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .pixelProduct
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // MARK: Local Modules


        // MARK: Packages


        // MARK: Plugins
//        .swiftLintPackageDependency
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .pixelTarget,
        .pixelTestTarget
    ]
)

fileprivate extension Package.Dependency {

//    static let swiftLintPackageDependency: Package.Dependency = package(url: "https://github.com/realm/SwiftLint.git",
//                                                                        from: "0.55.0")
}

fileprivate extension Product {

    static let pixelProduct: Product = .library(name: .pixel,
                                                targets: [.pixel])
}

fileprivate extension String {

    // MARK: Module
    static let module: String = "Pixel"

    // MARK: Local Modules


    // MARK: Submodules
    static let pixel: String = "Pixel"

    // MARK: Packages
    

    // MARK: Plugins
//    static let swiftLint: String = "SwiftLint"
//    static let swiftLintPlugin: String = "SwiftLintBuildToolPlugin"

    var testTarget: String { "\(self)Tests" }
}

fileprivate extension SupportedPlatform {

    static let iOS: SupportedPlatform = .iOS(.v16)
}

fileprivate extension Target {

    static let pixelTarget: Target = target(
        name: .pixel
//        plugins: [.swiftLintPlugin]
    )
    static let pixelTestTarget: Target = testTarget(
        name: .pixel.testTarget,
        dependencies: [.pixelDependency]
//        plugins: [.swiftLintPlugin]
    )
}

fileprivate extension Target.Dependency {

    // MARK: Local Modules


    // MARK: Submodules
    static let pixelDependency: Target.Dependency = byName(name: .pixel)

    // MARK: Packages

}

fileprivate extension Target.PluginUsage {

//    static let swiftLintPlugin: Target.PluginUsage = plugin(name: .swiftLintPlugin,
//                                                            package: .swiftLint)
}
