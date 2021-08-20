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
      name: "ZENCheckoutAPI",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckoutAPI.xcframework.zip",
      checksum: "f62376471fd412090ad95de30edc6905280518b829c9a6e5ffdee7042e1d2378"
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "10b672fef3446530e4c1b110a7534302c3a640b2f001cec21b12b472f1214d14"
    ),
  ]
)
