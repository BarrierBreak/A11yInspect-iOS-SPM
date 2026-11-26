# A11yInspect Accessibility Framework

On-device accessibility scanner for iOS apps (UIKit and SwiftUI), distributed as a
binary Swift package. Requires iOS 18.5 or later.

The package has two libraries:

| Library | Use it for |
|---|---|
| `A11yInspect_Accessibility_Framework` | The in-app overlay: a floating scan button and results popup. Add it to your **app** target. |
| `A11yInspectTestCases` | Running accessibility scans from XCTest. Add it to your **unit test** target. |

## Installation

In Xcode: **File > Add Package Dependencies…** and enter:

    https://github.com/BarrierBreak/A11yInspect-iOS-SPM

Pick version `1.2.0` or later, then add **A11yInspect_Accessibility_Framework** to your app target and/or
**A11yInspectTestCases** to your test target.

For Swift packages:

```swift
dependencies: [
    .package(url: "https://github.com/BarrierBreak/A11yInspect-iOS-SPM", from: "1.2.0")
],
targets: [
    .target(
        name: "MyApp",
        dependencies: [.product(name: "A11yInspect_Accessibility_Framework", package: "A11yInspect-iOS-SPM")]
    ),
    .testTarget(
        name: "MyAppTests",
        dependencies: [.product(name: "A11yInspectTestCases", package: "A11yInspect-iOS-SPM")]
    )
]
```

Then in your code:

```swift
import A11yInspect_Accessibility_Framework   // app
import A11yInspectTestCases                 // tests
```

## Notes

- Each library stores scan results in its own SQLite database, created at runtime in the
  app's Documents folder (`AccessibilityDB.sqlite` and `A11yInspectTestCases.sqlite`);
  nothing needs to be added to your app.
- Optional source-analysis results are read from your app bundle if present:
  `a11y_source_index.json` and `source_lint_findings.json`.
- Show the floating scan button from one library only. Both libraries hook
  `UIViewController.viewDidAppear` for it, so enabling both buttons in the same process
  makes them interfere.
