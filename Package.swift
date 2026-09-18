// swift-tools-version:5.9

import PackageDescription

let AdjustVersion: Version = "5.5.0"

let package = Package(
    name: "com.adjust.sdk",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "com.adjust.sdk",
            targets: ["com.adjust.sdk"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apache/cordova-ios.git", branch: "master"),
        .package(url: "https://github.com/adjust/ios_sdk.git", exact: AdjustVersion)
    ],
    targets: [
        .target(
            name: "com.adjust.sdk",
            dependencies: [
                .product(name: "Cordova", package: "cordova-ios"),
                .product(name: "AdjustGoogleOdm", package: "ios_sdk")
            ],
            path: "src/ios",
            publicHeadersPath: "."
        )
    ]
)