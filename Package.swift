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
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.1.1/A11yInspect_Accessibility_Framework.xcframework.zip",
            checksum: "15765e3a9fa5c8ac7a33aad3478427f19955e87b185b9c800955f4390280ecf9"
        ),
        .binaryTarget(
            name: "A11yInspectTestCases",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.1.1/A11yInspectTestCases.xcframework.zip",
            checksum: "997e54975a414d12b94116f6b416d1cb33add5d6a77857e8ce22b9c1b7416bff"
        )
    ]
)
