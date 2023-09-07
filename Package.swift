// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OverlayDB",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "OverlayDB",
            targets: ["OverlayDB"]),
        .executable(
            name: "ovdb",
            targets: ["CLI"]
        ),
    ],
    dependencies: [
        // Basic dependencies
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.3"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMajor(from: "0.9.16")),
        .package(url: "https://github.com/shotastage/Shell.swift.git", branch: "main"),

        // Development only dependencies
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.52.3"),
        // .package(url: "https://github.com/realm/SwiftLint.git", from: "0.39.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "OverlayDB"),
        .executableTarget(
            name: "CLI",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "ShellSwift", package: "Shell.swift"),
            ]
        ),
        .testTarget(
            name: "OverlayDBTests",
            dependencies: ["OverlayDB"]),
    ]
)
