// swift-tools-version:5.3
import PackageDescription

extension Target {
  static func binaryTarget(
    name: String, 
    url: String,
    checksum: String,
    dependencies: [Dependency]
  ) -> Target {
    var target = Target.binaryTarget(
      name: name,
      url: url,
      checksum: checksum
    )
    target.dependencies = dependencies
    return target
}

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
      checksum: "02f688848be2bc4ed6d869e2d5378ede85d4058efce9bc0ad97da87a7990a435",
      dependencies: []
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "4b2ae42e2d86e3c0a39a6f967897f55cdb8e164eccf04f17b935483cc08ec816",
      dependencies: [
        .target(name: "ZENCheckoutAPI")
      ]
    ),
  ]
)
