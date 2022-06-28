// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XmBindIdSDK",
    platforms: [
           .iOS(.v11),
       ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "XmBindIdSDK",
            targets: ["XmBindIdSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        // .binaryTarget(name: "XmBindIdSDK", url: "@REPOSITORY_URL@/raw/release/@VERSION_NUMBER@/Sources/@FRAMEWORK_FILE_NAME@", checksum: "@FRAMEWORK_CHECKSUM@"),
        .binaryTarget(name: "XmBindIdSDK", path: "Sources/XmBindIdSDK.xcframework")
        //.target(name: "XmBindIdSDK", dependencies: []),
        //.testTarget(name: "XmBindIdSDKTests", dependencies: ["XmBindIdSDK"]),
    ]
)