// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "SwiftyColor",
  platforms: [
    .iOS(.v8), .tvOS(.v9),
  ],
  products: [
    .library(name: "SwiftyColor", targets: ["SwiftyColor"]),
  ],
  targets: [
    .target(name: "SwiftyColor", dependencies: []),
    .testTarget(name: "SwiftyColorTests", dependencies: ["SwiftyColor"]),
  ]
)
