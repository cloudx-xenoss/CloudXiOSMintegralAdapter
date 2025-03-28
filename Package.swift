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
            name: "CloudXDemoAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMintegralAdapter/releases/download/1.0.0/CloudXMintegralAdapter.xcframework.zip",
            checksum: "226a782f3e17808ff1598b28d346e3a28f44ecb0738daf8f5dbe1fa069f08b0c"
        )
    ]
)
