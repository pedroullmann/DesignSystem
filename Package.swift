// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DesignSystem",
            targets: [
                "DesignSystem"
            ]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: []
        ),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: [
                "DesignSystem"
            ]
        ),
    ]
)
