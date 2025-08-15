// swift-tools-version:5.0
//
//  Package.swift
//
//  AFNetworking v3 SPM support (local fork)
//
import PackageDescription

let package = Package(
    name: "AFNetworking",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "AFNetworking",
            targets: ["AFNetworking"]
        ),
        .library(
            name: "UIKit_AFNetworking",
            targets: ["UIKit_AFNetworking"]
        )
    ],
    targets: [
        .target(
            name: "AFNetworking",
            path: "AFNetworking",
            publicHeadersPath: ""
        ),
        .target(
            name: "UIKit_AFNetworking",
            dependencies: ["AFNetworking"],
            path: "UIKit+AFNetworking",
            publicHeadersPath: ""
        )
    ]
)


