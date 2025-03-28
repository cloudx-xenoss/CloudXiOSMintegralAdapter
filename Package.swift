// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CloudXMintegralAdapter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CloudXMintegralAdapter",
            targets: ["CloudXMintegralAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/cloudx-xenoss/CloudXCoreiOS.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMintegralAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMintegralAdapter/releases/download/1.0.1/CloudXMintegralAdapter.xcframework.zip",
            checksum: "fb48108062d359a3b72099601ef1e5ce6f7a4f1437dfe83848f975d3448758e5"
        )
    ]
)
