// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "ZENCheckout",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "ZENCheckoutAPI",
      targets: ["ZENCheckoutAPI"]
    ),
    .library(
      name: "ZENCheckout",
      targets: ["ZENCheckout"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .binaryTarget(
      name: "ZENCheckoutAPIBinary",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckoutAPI.xcframework.zip",
      checksum: "3b63fab75bf0cb0888bdb52f7a86f67dac5fb314c757a23e5e5069c84343423e"
    ),
    .binaryTarget(
      name: "ZENCheckoutBinary",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "8a3b08ee4f4f28feb52b49c0709438f116cddb502a6647192ac5acd27a88638a"
    ),
    .target(
      name: "ZENCheckoutAPI",
      dependencies: ["ZENCheckoutAPIBinary"]
    ),
    .target(
      name: "ZENCheckout",
      dependencies: ["ZENCheckoutBinary", "ZENCheckoutAPI"]
    ),
  ]
)
