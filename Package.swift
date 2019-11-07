// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ElementaryCombine",
    products: [
        .library(
            name: "ElementaryCombine",
            targets: ["ElementaryCombine"]),
    ],
    dependencies: [
        .package(path: "../Elementary"),
    ],
    targets: [
        .target(
            name: "ElementaryCombine",
            dependencies: []),
        .testTarget(
            name: "ElementaryCombineTests",
            dependencies: ["ElementaryCombine"]),
    ]
)
