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
      checksum: "3c18966c39cdf45da3152abc3e268413a354acee33bcafb5141bd694c0bec8bc"
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "44722687bb300b73166e4e14cb7ce6a2672b847000e153ad3221346c396916c0"
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
