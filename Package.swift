// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TestPackage",
    products: [
        .library(
            name: "TestPackage",
            targets: ["TestPackageTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", "5.4.0"..."5.6.4"),
    ],
    targets: [
        .target(
            name: "TestPackageTarget",
            dependencies: [.target(name: "TestPackageWrapper", condition: .when(platforms: [.iOS]))],
            path: "TestPackageTarget"
        ),
        .target(
            name: "TestPackageWrapper",
            dependencies: [
                .target(name: "MyStaticLibrary", condition: .when(platforms: [.iOS])),
//                .product(name: "Alamofire", package: "Alamofire")
                .product(name: "Alamofire", package: "Alamofire"),
            ],
            path: "TestPackageWrapper"
        ),
        .binaryTarget(
            name: "MyStaticLibrary",
            path: "./TestPackage/MyStaticLibrary.xcframework")
    ]
)
