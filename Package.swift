// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"]),
    ],
    dependencies: [
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa", .upToNextMajor(from: "10.8.0"))
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: [
                .product(name: "Realm", package: "Realm"),
                .product(name: "RealmSwift", package: "Realm")
            ],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
