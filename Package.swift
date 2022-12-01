// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .watchOS(.v3),
        .tvOS(.v10),
    ],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", exact: "5.0.0-rc.3"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", .upToNextMinor(from: "3.5.1")),
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
                "Alamofire",
                "ObjectMapper",
            ],
            path: "AlamofireObjectMapper"),
        .testTarget(
            name: "AlamofireObjectMapperTests",
            dependencies: ["AlamofireObjectMapper"],
            path: "AlamofireObjectMapperTests"),
    ]
)
