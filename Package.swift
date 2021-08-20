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
      checksum: "0639c8949ea649e5d59ec38c376e13792d6a4ddff91ab68cf7ddb64e2da986d5"
    ),
    .binaryTarget(
      name: "ZENCheckoutBinary",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "dd355d026c3d4340ac1e9e38d0880aa31da4a8c59c940f0b50a1ac9ad542f260"
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
