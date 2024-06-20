// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "html2md",
  platforms: [
    .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)
  ],
  products: [
    .library(
      name: "html2md",
      targets: ["html2md"]
    )
  ],
  dependencies: [],
  targets: [
    .target(
      name: "html2md",
      dependencies: [],
      path: ".",
      exclude: ["tests/", "cli/", "cmake/", "docs/", "js/", "python/", "scripts/"],
      sources: [
        "src/html2md.cpp",
        "src/table.cpp"
      ],
      publicHeadersPath: "spm-headers"
    )
  ],
  cxxLanguageStandard: .gnucxx11
)
