// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/MrMage/GRDB.swift/releases/download/3.3.0/GRDB.xcframework.zip",
            checksum: "31bac3b98cad32946d37fe2831b60e5ac5b9440111fc2642e509c30347bea558"
        ),
        .target(name: "_GRDBDummy")
    ]
)
