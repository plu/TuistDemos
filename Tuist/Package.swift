// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        productTypes: [:]
    )
#endif

let package = Package(
    name: "TuistDemos",
    dependencies: [
        .package(url: "https://github.com/awslabs/aws-sdk-swift", from: "1.0.50"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "11.2.0"),
        .package(url: "https://github.com/swift-server/swift-openapi-vapor", from: "1.0.1"),
        .package(url: "https://github.com/vapor/jwt-kit", from: "5.1.0")
    ]
)
