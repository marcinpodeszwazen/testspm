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
      targets: ["ZENCheckoutAPITarget"]
    ),
    .library(
      name: "ZENCheckout",
      targets: ["ZENCheckoutTarget"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .binaryTarget(
      name: "ZENCheckoutAPI",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckoutAPI.xcframework.zip",
      checksum: "89d2aa7a56ccd8319b5cc3b9baaed7fbd138da9f2098bbede0f48bfa65d1d899"
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "87e95544d6ad9423f01056bfd2c8164b1c9842fcfbcc70b0e370dafe55f0aec0"
    ),
    .target(
      name: "ZENCheckoutAPITarget",
      dependencies: ["ZENCheckoutAPI"]
    ),
    .target(
      name: "ZENCheckoutTarget",
      dependencies: ["ZENCheckout", "ZENCheckoutAPITarget"]
    ),
  ]
)
