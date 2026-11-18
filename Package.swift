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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkiOS/6.5.86/AnyThinkiOS-6.5.86.zip",
            checksum: "b70483b27e407cb688d508bf0b0aaa86548d2c4e28bccf432773864cf009fd0c"
        )
    ]
)