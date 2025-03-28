// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ORBEmptyCase",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ORBEmptyCase",
            targets: ["ORBEmptyCase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ORBEmptyCase",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ]),
        .testTarget(
            name: "ORBEmptyCaseTests",
            dependencies: ["ORBEmptyCase"]
        ),
    ]
)
