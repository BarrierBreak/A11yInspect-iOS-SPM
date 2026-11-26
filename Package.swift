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
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.1.0/A11yInspect_Accessibility_Framework.xcframework.zip",
            checksum: "3edcdfeda5370130f3887c053fd6f78e41101f839ab3448bf8aaae355014378e"
        ),
        .binaryTarget(
            name: "A11yInspectTestCases",
            url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM/releases/download/1.1.0/A11yInspectTestCases.xcframework.zip",
            checksum: "436442c72494fed9f201b433c2112db068786fa948d5292d353ab977e677d9bf"
        )
    ]
)
