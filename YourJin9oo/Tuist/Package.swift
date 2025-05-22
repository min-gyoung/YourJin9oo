// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

let packageSettings = PackageSettings(
      productTypes: [
        "Moya" : .framework,
        "ComposableArchitecture": .framework
      ]
    )
#endif

let package = Package(
    name: "YourJin9oo",
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", exact: "1.17.0"),
        .package(url: "https://github.com/Moya/Moya", exact: "15.0.0")
    ]
)
