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
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.2.0/A11yInspect_Accessibility_Framework.xcframework.zip",
            checksum: "5f7a5275f357087cc574731eddb7e20e9078b74488a9ab7c112ab14b84464128"
        ),
        .binaryTarget(
            name: "A11yInspectTestCases",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.2.0/A11yInspectTestCases.xcframework.zip",
            checksum: "d5faa2c35faf7d72bbe1f4ab050d8f7af17f51e118ff1eb7d9db37d42a006747"
        )
    ]
)
