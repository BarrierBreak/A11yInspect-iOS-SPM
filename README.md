# A11yInspect Accessibility Framework

On-device accessibility scanner for iOS apps (UIKit and SwiftUI), distributed as a
binary Swift package. Requires iOS 18.5 or later.

## Installation

In Xcode: **File > Add Package Dependencies…** and enter:

    https://github.com/BarrierBreak/A11yInspect-iOS-SPM

Pick version `1.0.0` or later and add the **A11yInspect_Accessibility_Framework** library to your app target.

For Swift packages:

```swift
dependencies: [
    .package(url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM", from: "1.0.0")
],
targets: [
    .target(
        name: "MyApp",
        dependencies: [.product(name: "A11yInspect_Accessibility_Framework", package: "A11yInspect-iOS-SPM")]
    )
]
```

Then in your code:

```swift
import A11yInspect_Accessibility_Framework
```

## Notes

- Scan results are stored in a SQLite database the framework creates at runtime
  (`Documents/AccessibilityDB.sqlite`); nothing needs to be added to your app.
- Optional source-analysis results are read from your app bundle if present:
  `a11y_source_index.json` and `source_lint_findings.json`.
