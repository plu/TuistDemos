# TuistDemos

## Demo1

```console
$ tuist install
$ tuist generate Demo1Framework --no-open
$ tuist build Demo1Framework
```

All good, it builds.

```console
$ tuist inspect implicit-imports
Loading and constructing the graph
It might take a while if the cache is empty
The following implicit dependencies were found:
 - Demo1Framework implicitly depends on: FirebasePerformance, FirebaseDynamicLinks
 - Consider creating an issue using the following link: https://github.com/tuist/tuist/issues/new/choose
```

But both are listed as external dependencies:

```swift
let demo1 = Project(
    name: "Demo1",
    targets: [
        .target(
            name: "Demo1Framework",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.github.plu.Demo1Framework",
            sources: [
                .glob(.relativeToRoot("Demo1/Framework/Sources/**"))
            ],
            dependencies: [
                .external(name: "FirebaseCore"),
                .external(name: "FirebaseCrashlytics"),
                .external(name: "FirebaseDynamicLinks"),
                .external(name: "FirebasePerformance")
            ]
        )
    ]
)
```
