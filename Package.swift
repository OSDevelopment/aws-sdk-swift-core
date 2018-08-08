// swift-tools-version:4.1
import PackageDescription

let package = Package(
    name: "AWSSDKSwiftCore",
    products: [
        .library(name: "AWSSDKSwiftCore", targets: ["AWSSDKSwiftCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/noppoMan/Prorsum.git", .branch("performance")),
        .package(url: "https://github.com/Yasumoto/HypertextApplicationLanguage.git", .branch("master"))
    ],
    targets: [
        .target(name: "AWSSDKSwiftCore", dependencies: ["Prorsum", "HypertextApplicationLanguage"]),
        .testTarget(name: "AWSSDKSwiftCoreTests", dependencies: ["AWSSDKSwiftCore"])
    ]
)
