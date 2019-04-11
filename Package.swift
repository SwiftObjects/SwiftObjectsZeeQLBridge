// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SwiftObjectsZeeQLBridge",
    products: [
        .library(
            name: "SwiftObjectsZeeQLBridge",
            targets: ["SwiftObjectsZeeQLBridge"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftObjects/SwiftObjects.git",
                 from: "0.6.1"),
        .package(url: "https://github.com/ZeeQL/ZeeQL3.git",
                 from: "0.7.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftObjectsZeeQLBridge",
            dependencies: [ "SwiftObjects", "ZeeQL"])
    ]
)
