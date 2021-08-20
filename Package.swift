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
      checksum: "19b292bca55a0ab9f8fca00989b77dab5b91cf7443d191e46fde776892f80259",
      dependencies: []
    ),
    .binaryTarget(
      name: "ZENCheckout",
      url: "https://github.com/marcinpodeszwazen/testspm/releases/download/0.0.1/ZENCheckout.xcframework.zip",
      checksum: "41a2ea97926e90b3ef6738baaea8cfc966bd6cde9a4c605f1b61e0482e48cab5",
      dependencies: ["ZENCheckoutAPI"]
    ),
  ]
)
