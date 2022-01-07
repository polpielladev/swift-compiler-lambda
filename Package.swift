// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CompilerLambda",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "CompilerLambda", targets: ["CompilerLambda"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from:"0.3.0"))
    ],
    targets: [
        .executableTarget(
            name: "CompilerLambda",
            dependencies: [.product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")]),
        .testTarget(
            name: "CompilerLambdaTests",
            dependencies: ["CompilerLambda"]),
    ]
)
