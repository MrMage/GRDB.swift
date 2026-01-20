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
            url: "https://github.com/MrMage/GRDB.swift/releases/download/3.3.1/GRDB.xcframework.zip",
            checksum: "d708ea0143a031785f087fdd7d06725afbb79eaff584ae3a459fe30292397554"
        ),
        .target(name: "_GRDBDummy")
    ]
)
