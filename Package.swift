// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftWebVTT",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "WebVTT",
            targets: ["WebVTT"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WebVTT",
            dependencies: [],
            path: "SwiftWebVTT",
            resources: [
                .process("Resources/references_named.json"),
                .process("Resources/references_substitutes.json")
            ]
        ),
        .testTarget(
            name: "WebVTTTests",
            dependencies: ["WebVTT"],
            path: "SwiftWebVTTTests",
            resources: []
        )
    ]
)
