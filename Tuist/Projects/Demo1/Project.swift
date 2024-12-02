import ProjectDescription

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
