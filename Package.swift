// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ElementaryCombine",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "ElementaryCombine",
            targets: ["ElementaryCombine"])
    ],
    dependencies: [
        .package(url: "https://github.com/mkj-is/Elementary.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "ElementaryCombine",
            dependencies: ["Elementary"]),
        .testTarget(
            name: "ElementaryCombineTests",
            dependencies: ["ElementaryCombine"])
    ]
)
