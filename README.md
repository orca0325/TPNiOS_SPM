# TopOn - iOS Core SDK

The official TopOn iOS Core Mediation SDK, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNiOS_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNiOS` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNiOS_SPM.git",
        exact: "x.x.x"
    )
]
```

## 内部 fork 说明

本 fork 仅用于 `LDAggregationAdSDK` 固定第三方二进制，避免上游重写历史或替换同一版本的压缩包。

- 二进制来源：官方 `AnyThinkiOS-6.5.86.zip`，sha256 `b70483b27e407cb688d508bf0b0aaa86548d2c4e28bccf432773864cf009fd0c`，下载于 2026-11-19。
- 原始 zip 放在 `Binaries/`, `Package.swift` 使用 `binaryTarget(path:)` 引用 zip（SwiftPM 构建时自动解压），构建不依赖任何远程 OSS。
- 已发布的 tag 不得删除或移动；升级请新增 tag。
