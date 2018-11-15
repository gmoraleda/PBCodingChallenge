// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PBCodingChallenge",
  dependencies: [
    .package(url: "https://github.com/gmoraleda/ListUtils", from: "1.0.6")
  ],
  targets: [
    .target(
      name: "PBCodingChallenge",
      dependencies: ["ListUtils"]),
    ]
)
