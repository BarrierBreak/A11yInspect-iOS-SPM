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
        ),
        .library(
            name: "A11yInspectTestCases",
            targets: ["A11yInspectTestCases"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "A11yInspect_Accessibility_Framework",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.2.1/A11yInspect_Accessibility_Framework.xcframework.zip",
            checksum: "034067fe02b7d98f8bbaae639c6ec5db7b4811359243c1c2f3ee87be03e0665e"
        ),
        .binaryTarget(
            name: "A11yInspectTestCases",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.2.1/A11yInspectTestCases.xcframework.zip",
            checksum: "cc107c623aaecb5b9cb1618cb4f994ad934ca699a2f0a2823d399d319835e9bc"
        )
    ]
)
