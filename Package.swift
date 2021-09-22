// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0")),
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [
                .byName(name: "FloatingPanel"),
                .product(name: "RxRelay", package: "RxSwift"),
                .product(name: "RxSwift", package: "RxSwift"),
            ]),
        .binaryTarget(name: "FloatingPanel", path: "FloatingPanel.xcframework"),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"]),
    ]
)
