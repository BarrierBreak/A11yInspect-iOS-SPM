// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "A11yInspect",
    platforms: [
        .iOS("18.5")
    ],
    products: [
        .library(
            name: "A11yInspect_Accessibility_Framework",
            targets: ["A11yInspect_Accessibility_Framework"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "A11yInspect_Accessibility_Framework",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.0.0/A11yInspect_Accessibility_Framework.xcframework.zip",
            checksum: "429305e0ee01f0daa8480eace885e53a9ce29bbcbe7e8e4201fd4c81f785b63f"
        )
    ]
)
