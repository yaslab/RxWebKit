// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "RxWebKit", targets: ["RxWebKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "RxWebKit",
            dependencies: ["RxSwift", "RxCocoa", "RxRelay"],
            path: "RxWebKit"
        )
    ],
    swiftLanguageVersions: [.v5]
)