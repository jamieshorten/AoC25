// swift-tools-version: 6.2
import PackageDescription

let dependencies: [Target.Dependency] = [
  .product(name: "Algorithms", package: "swift-algorithms"),
  .product(name: "Collections", package: "swift-collections"),
  .product(name: "ArgumentParser", package: "swift-argument-parser"),
]

let package = Package(
  name: "AdventOfCode",
  platforms: [.macOS(.v26), .iOS(.v26), .watchOS(.v26), .tvOS(.v26)],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-algorithms",
      .upToNextMajor(from: "1.2.0")),
    .package(
      url: "https://github.com/apple/swift-collections",
            .upToNextMajor(from: "1.3.0")),
    .package(
      url: "https://github.com/apple/swift-argument-parser",
      .upToNextMajor(from: "1.5.0")),
    .package(
      url: "https://github.com/swiftlang/swift-format",
      .upToNextMajor(from: "600.0.0"))
  ],
  targets: [
    .executableTarget(
      name: "AdventOfCode",
      dependencies: dependencies,
      resources: [.copy("Data")]
    ),
    .testTarget(
      name: "AdventOfCodeTests",
      dependencies: ["AdventOfCode"] + dependencies
    )
  ],
  swiftLanguageModes: [.v6]
)
