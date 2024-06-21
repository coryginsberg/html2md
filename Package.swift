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
        "src/"
      ],
      publicHeadersPath: "spm-headers/",
      cSettings: [
        .define("O2", .when(configuration: .debug)),
        .define("O3", .when(configuration: .release))
      ],
      cxxSettings: [
        .define("O2", .when(configuration: .debug)),
        .define("O3", .when(configuration: .release))
      ]
    )
  ],
  cxxLanguageStandard: .gnucxx11
)
