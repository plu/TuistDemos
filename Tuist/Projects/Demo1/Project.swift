import ProjectDescription

let project = Project(
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
                //.external(name: "FirebaseCore"),
                .external(name: "FirebaseCrashlytics")
            ]
        )
    ]
)
