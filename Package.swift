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
            url: "https://github.com/MrMage/GRDB.swift/releases/download/3.3.2/GRDB.xcframework.zip",
            checksum: "9a706d32929f4264f8dcd3774e06b2554167476602116355b7a71264acbd5ba2"
        ),
        .target(name: "_GRDBDummy")
    ]
)
