// swift-tools-version:5.10

import PackageDescription

let package = Package(
        name: "SectionsTableView",
        platforms: [
            .iOS(.v14),
        ],
        products: [
            .library(
                    name: "SectionsTableView",
                    targets: ["SectionsTableView"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/sunimp/UIExtensions.Swift.git", .upToNextMajor(from: "1.2.1")),
            .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.54.0"),
        ],
        targets: [
            .target(
                    name: "SectionsTableView",
                    dependencies: [
                        "SnapKit",
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            )
        ]
)
