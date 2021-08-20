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
      checksum: "e988e92159aa98c1637992393e465dc9ab8c90c4c1f80ceee96e0c4456ffdaf5",
      dependencies: []
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "15a6317a7ad5813db1958ba19cb9a089c53bedf9b02b36eb59d58e3661839f4c",
      dependencies: [ZENCheckoutAPI]
    ),
  ]
)
