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
        // 二进制随仓库 tag 一起固定，构建不再依赖官方 OSS 地址。
        .binaryTarget(
            name: "AnyThinkSDK",
            path: "Binaries/AnyThinkiOS-6.5.86.zip"
        )
    ]
)
