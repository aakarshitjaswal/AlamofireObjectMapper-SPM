// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper-SPM",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AlamofireObjectMapper-SPM",
            targets: ["AlamofireObjectMapper-SPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
                   .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "3.5.1"))],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AlamofireObjectMapper-SPM",
            dependencies: [.product(name: "ObjectMapper", package: "ObjectMapper"),
                           .product(name: "Alamofire", package: "Alamofire")]
        ),
        .testTarget(
            name: "AlamofireObjectMapper-SPMTests",
            dependencies: ["AlamofireObjectMapper-SPM"]),
    ],
    swiftLanguageVersions: [.v5]
)
