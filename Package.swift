// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tpack",
    dependencies: [
        .package(url: "https://github.com/misha-artemiev/systemify.git", branch: "release"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "tpack", dependencies: [
                .product(name: "Systemify", package: "systemify")
            ]),
    ]
)
