// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ReactiveCocoa",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "ReactiveCocoa", targets: ["ReactiveCocoa"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "6.1.0")
    ],
    targets: [
        .target(
            name: "ReactiveCocoa",
            dependencies: ["ReactiveSwift"],
            path: "ReactiveCocoa",
            exclude: ["ObjCRuntime", "AppKit", "WatchKit"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)