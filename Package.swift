// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ObjectMapperAdditions",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "ObjectMapperAdditions",
            targets: ["ObjectMapperAdditions"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "5.4.3"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", from: "4.2.0"),
    ],
    targets: [
        .target(
            name: "ObjectMapperAdditions",
            dependencies: [
                "RealmSwift",
                "ObjectMapper"
            ],
            path: "ObjectMapperAdditions/Classes/",
            swiftSettings: [
                .define("SPM"),
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
let version = Version(6, 0, 2)
