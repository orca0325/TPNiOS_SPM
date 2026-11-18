// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNiOS",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNiOS",
            targets: ["AnyThinkSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkiOS/6.5.85/AnyThinkiOS-6.5.85.zip",
            checksum: "ec0178d190d1eeb271f31bebd073dc26b6e699cf7ae90a9c83a0cbec160ff555"
        )
    ]
)