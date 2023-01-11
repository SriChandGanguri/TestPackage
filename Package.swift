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
//        .package(url: "https://github.com/Alamofire/Alamofire", "5.4.0"..."5.6.4"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.10.0"),

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
                .target(name: "TestFramework", condition: .when(platforms: [.iOS])),
//                .product(name: "Alamofire", package: "Alamofire")
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
            ],
            path: "TestPackageWrapper"
        ),
        .binaryTarget(
            name: "TestFramework",
            path: "./TestPackage/TestFramework.xcframework")
    ]
)
